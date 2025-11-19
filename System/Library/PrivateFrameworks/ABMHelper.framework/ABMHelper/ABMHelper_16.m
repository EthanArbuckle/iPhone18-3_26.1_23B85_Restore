void sub_23C286F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52, void *a53)
{
  __cxa_guard_abort(&_MergedGlobals_9);
  std::vector<std::string>::~vector[abi:ne200100]((v53 - 128));
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a52, a53);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v53 - 248, *(v53 - 240));
  if ((*(v53 - 185) & 0x80000000) == 0)
  {
    operator delete(__p);
    std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
    _Unwind_Resume(a1);
  }

  operator delete(*(v53 - 208));
  operator delete(__p);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a18);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_31()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_32()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>::~PthreadMutexGuardPolicy, &ctu::Singleton<ctu::XpcJetsamAssertion,ctu::XpcJetsamAssertion,ctu::PthreadMutexGuardPolicy<ctu::XpcJetsamAssertion>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t abm::asString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        a2[23] = 10;
        strcpy(a2, "24hr_Timer");
        return result;
      }

      goto LABEL_8;
    }

    a2[23] = 7;
    strcpy(a2, "Profile");
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        a2[23] = 7;
        strcpy(a2, "ABMtool");
        return result;
      }

LABEL_8:
      a2[23] = 11;
      strcpy(a2, "UnSpecified");
      return result;
    }

    a2[23] = 2;
    strcpy(a2, "UI");
  }

  return result;
}

{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "Last_Used");
  }

  else if (result)
  {
    a2[23] = 11;
    strcpy(a2, "UnSpecified");
  }

  else
  {
    a2[23] = 7;
    strcpy(a2, "Default");
  }

  return result;
}

double INTTrace::createInternal@<D0>(_OWORD *a1@<X8>)
{
  v3 = operator new(0x178uLL);
  INTTrace::INTTrace(v3);
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<INTTrace>::shared_ptr[abi:ne200100]<INTTrace,std::shared_ptr<INTTrace> ctu::SharedSynchronizable<Trace>::make_shared_ptr<INTTrace>(INTTrace*)::{lambda(INTTrace*)#1},0>(&v5, v3);
  result = *&v5;
  *a1 = v5;
  return result;
}

void INTTrace::INTTrace(INTTrace *this)
{
  v17 = 8;
  strcpy(__p, "trace.bb");
  ctu::OsLogContext::OsLogContext(v18, "com.apple.telephony.abm", __p);
  ctu::SharedLoggable<Trace,ctu::OsLogLogger>::SharedLoggable<ctu::OsLogContext>(this + 1, __p, QOS_CLASS_USER_INITIATED);
  ctu::OsLogContext::~OsLogContext(v18);
  *this = &unk_284EF95A8;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *this = &unk_284EFCAA0;
  *(this + 12) = 0;
  *(this + 104) = 0;
  v3 = capabilities::trace::defaultHistorySizeMB(v2);
  v4 = 0x7FFFFFFF;
  if (v3 < 0x7FFFFFFF)
  {
    v4 = v3;
  }

  *(this + 28) = v4;
  v5 = capabilities::trace::defaultFileSizeBytes(v3);
  *(this + 10) = 0u;
  *(this + 15) = v5;
  *(this + 151) = 0;
  *(this + 128) = 0;
  *(this + 11) = 0u;
  *(this + 192) = 0;
  v6 = capabilities::radio::vendor(v5);
  if ((v6 - 1) > 3)
  {
    v7 = 25;
  }

  else
  {
    v7 = dword_23C32D580[v6 - 1];
  }

  v8 = capabilities::radio::dal(v6);
  v9 = v8;
  shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v8);
  if (v9)
  {
    v11 = 1024;
  }

  else
  {
    v11 = 0x4000;
  }

  if ((shouldUseMinBasebandTransportIOReadSize & 1) == 0)
  {
    if (v7 == 17)
    {
      v11 = 0x80000;
    }

    else if (v7 == 21 || v7 == 20)
    {
      v11 = 61440;
    }

    else
    {
      shouldUseMinBasebandTransportIOReadSize = capabilities::radio::dal(shouldUseMinBasebandTransportIOReadSize);
      if ((v7 - 19) > 5)
      {
        v11 = 0x8000;
      }

      else
      {
        v11 = dword_23C32F35C[v7 - 19];
      }
    }
  }

  *(this + 49) = v11;
  count = defaults::bbtrace::transport_read_count(shouldUseMinBasebandTransportIOReadSize);
  *(this + 50) = count;
  *(this + 204) = 0;
  v13 = capabilities::trace::defaultSleepTraceMode(count);
  *(this + 248) = 0u;
  *(this + 52) = v13;
  *(this + 239) = 256;
  *(this + 216) = 0;
  *(this + 19) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 88) = 1;
  *(this + 356) = 0;
  v14 = capabilities::trace::defaultPeakBandwidthMbps(v13);
  v15 = -1;
  if (v14 < 0xFFFFFFFF)
  {
    v15 = v14;
  }

  *(this + 90) = v15;
}

void sub_23C287568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (*(v16 + 351) < 0)
  {
    operator delete(*(v16 + 328));
  }

  if (*(v16 + 327) < 0)
  {
    operator delete(*v20);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19 + 32);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19 + 16);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v19);
  if (*(v16 + 239) < 0)
  {
    operator delete(*(v16 + 216));
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v18);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v17);
  if (*(v16 + 151) < 0)
  {
    operator delete(*(v16 + 128));
  }

  Trace::~Trace(v16);
  _Unwind_Resume(a1);
}

uint64_t INTTrace::init(void *a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v25 = 0;
  v20[0] = &v25;
  v20[1] = a1;
  if ((*(a2 + 23) & 0x80000000) == 0)
  {
    __p = *a2;
    v7 = a1 + 1;
    v8 = a3[1];
    v22 = *a3;
    v23 = v8;
    if (!v8)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  v7 = a1 + 1;
  v8 = a3[1];
  v22 = *a3;
  v23 = v8;
  if (v8)
  {
LABEL_3:
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_4:
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace4initENSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEENS5_8weak_ptrIN3abm19BasebandTracingTaskEEEN8dispatch5groupEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSJ__block_invoke;
  block[3] = &__block_descriptor_tmp_93;
  block[4] = v7;
  block[5] = v20;
  v10 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v10, block);
    v11 = object;
    if (!object)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  dispatch_sync(v10, block);
  v11 = object;
  if (object)
  {
LABEL_8:
    dispatch_release(v11);
  }

LABEL_9:
  if (v23)
  {
    std::__shared_weak_count::__release_weak(v23);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v12 = a1[2];
  if (!v12 || (v13 = a1[1], (v14 = std::__shared_weak_count::lock(v12)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v15 = v14;
  v16 = operator new(8uLL);
  *v16 = a1;
  v17 = a1[3];
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v16;
  v18[1] = v13;
  v18[2] = v15;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>(INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1,std::default_delete<INTTrace::init(std::string,std::weak_ptr<abm::BasebandTracingTask>,dispatch::group)::$_1>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  return v25;
}

void INTTrace::~INTTrace(INTTrace *this)
{
  *this = &unk_284EFCAA0;
  v2 = dispatch_group_create();
  v3 = v2;
  v4 = *(this + 22);
  if (v4)
  {
    v13.gr_passwd = v2;
    if (v2)
    {
      dispatch_retain(v2);
    }

    (*(*v4 + 120))(v4, &v13.gr_passwd);
    if (v13.gr_passwd)
    {
      dispatch_release(v13.gr_passwd);
    }
  }

  v13.gr_name = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  INTTrace::stop_sync(this, &v13);
  if (v3)
  {
    dispatch_release(v3);
  }

  v5 = dispatch_time(0, 1000000000);
  if (!dispatch_group_wait(v3, v5) || (v6 = *(this + 5), !os_log_type_enabled(v6, OS_LOG_TYPE_ERROR)))
  {
    *(this + 104) = 0;
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  *v12 = 0;
  _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Timeout for stopping trace service!", v12, 2u);
  *(this + 104) = 0;
  if (v3)
  {
LABEL_13:
    dispatch_release(v3);
  }

LABEL_14:
  if ((*(this + 351) & 0x80000000) == 0)
  {
    if ((*(this + 327) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_19:
    operator delete(*(this + 38));
    v7 = *(this + 36);
    if (!v7)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  operator delete(*(this + 41));
  if (*(this + 327) < 0)
  {
    goto LABEL_19;
  }

LABEL_16:
  v7 = *(this + 36);
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_20:
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_22:
  v8 = *(this + 34);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 32);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if ((*(this + 239) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  if (*(this + 239) < 0)
  {
LABEL_28:
    operator delete(*(this + 27));
  }

LABEL_29:
  v10 = *(this + 23);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  v11 = *(this + 21);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    if ((*(this + 151) & 0x80000000) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_35;
  }

  if (*(this + 151) < 0)
  {
LABEL_35:
    operator delete(*(this + 16));
  }

LABEL_36:
  Trace::~Trace(this);
}

{
  INTTrace::~INTTrace(this);

  operator delete(v1);
}

void INTTrace::stop_sync(INTTrace *this, group *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Stopping BB Trace", buf, 2u);
  }

  if (!*(this + 31))
  {
    goto LABEL_5;
  }

  v45 = 0;
  LOBYTE(v44) = 0;
  Timestamp::Timestamp(v42);
  v41 = 0;
  LOWORD(v40) = 0;
  LOBYTE(v39) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v42, v43);
  if (v45 < 0)
  {
    operator delete(v44);
    if (!*(this + 33))
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_5:
    if (!*(this + 33))
    {
      goto LABEL_9;
    }
  }

  v38 = 0;
  LOBYTE(v37) = 0;
  Timestamp::Timestamp(v35);
  v34 = 0;
  LOBYTE(v33) = 0;
  v32 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v35, v36);
  if (v38 < 0)
  {
    operator delete(v37);
  }

LABEL_9:
  if ((*(this + 151) & 0x8000000000000000) != 0)
  {
    if (!*(this + 17))
    {
      goto LABEL_24;
    }
  }

  else if (!*(this + 151))
  {
    goto LABEL_24;
  }

  v5 = *(this + 22);
  if (!v5 || !(*(*v5 + 128))(v5))
  {
LABEL_24:
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I Skip the configuration for the trace";
      v10 = v12;
      v11 = 2;
      goto LABEL_26;
    }

    goto LABEL_27;
  }

  gr_name = a2->gr_name;
  v30 = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
  }

  v29 = 4;
  strcpy(v28, "Stop");
  v7 = INTTrace::sendConfig_sync(this, &v30, v28, 0, 0, 1);
  if (v29 < 0)
  {
    operator delete(v28[0]);
  }

  if (gr_name)
  {
    dispatch_release(gr_name);
  }

  v8 = *(this + 5);
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v47 = "Stop";
      v9 = "#I Succeeded sending config: %s";
      v10 = v8;
      v11 = 12;
LABEL_26:
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v47 = "Stop";
    _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to send config: %s", buf, 0xCu);
  }

LABEL_27:
  INTTrace::stopReader_sync(this);
  v13 = *(this + 23);
  *(this + 22) = 0;
  *(this + 23) = 0;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    *(this + 204) = 0;
    if (!*(this + 31))
    {
      goto LABEL_33;
    }
  }

  else
  {
    *(this + 204) = 0;
    if (!*(this + 31))
    {
      goto LABEL_33;
    }
  }

  v27 = 0;
  LOBYTE(v26) = 0;
  Timestamp::Timestamp(v24);
  v23 = 0;
  LOBYTE(v22) = 0;
  v21 = 0;
  LOBYTE(v20) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v24, v25);
  if (v27 < 0)
  {
    operator delete(v26);
  }

LABEL_33:
  if (*(this + 33) && (v19 = 0, LOBYTE(v18) = 0, Timestamp::Timestamp(v16), abm::trace::TraceInfo::push(), std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v16, v17), v19 < 0))
  {
    operator delete(v18);
    v15 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v14 = *MEMORY[0x277D85DE8];
  }
}

void sub_23C288078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (v38)
  {
    dispatch_release(v38);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void INTTrace::reinit(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_23C1C4000, v1, OS_LOG_TYPE_DEFAULT, "#I Not implemented yet: reinit", v2, 2u);
  }
}

void INTTrace::prepare(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = v3;
  v8[1] = a1;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::prepare(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::start(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[1] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::stop(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[1] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::stop(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::abort(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = a1;
  v10[1] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::abort(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::shutdown(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    v5 = *a2;
    if (*a2)
    {
      dispatch_retain(*a2);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x18uLL);
  *v10 = v3;
  v10[1] = a1;
  v10[2] = v5;
  v11 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::shutdown(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v3)
    {
      return;
    }
  }

  else
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
    if (!v3)
    {
      return;
    }
  }

  dispatch_group_leave(v3);

  dispatch_release(v3);
}

void INTTrace::flush(void *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::flush(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void INTTrace::enterLowPower(INTTrace *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
    dispatch_retain(gr_name);
    dispatch_group_enter(gr_name);
  }

  v4 = *(this + 2);
  if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = gr_name;
  v8[1] = this;
  v9 = *(this + 3);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::enterLowPower(dispatch::group)::$_0>(INTTrace::enterLowPower(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::enterLowPower(dispatch::group)::$_0,dispatch_queue_s *::default_delete<INTTrace::enterLowPower(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!gr_name)
    {
      return;
    }
  }

  else
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!gr_name)
    {
      return;
    }
  }

  dispatch_group_leave(gr_name);

  dispatch_release(gr_name);
}

void INTTrace::exitLowPower(INTTrace *this, group *a2)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
    dispatch_retain(gr_name);
    dispatch_group_enter(gr_name);
  }

  v4 = *(this + 2);
  if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = gr_name;
  v8[1] = this;
  v9 = *(this + 3);
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::exitLowPower(dispatch::group)::$_0>(INTTrace::exitLowPower(dispatch::group)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::exitLowPower(dispatch::group)::$_0,dispatch_queue_s *::default_delete<INTTrace::exitLowPower(dispatch::group)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!gr_name)
    {
      return;
    }
  }

  else
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!gr_name)
    {
      return;
    }
  }

  dispatch_group_leave(gr_name);

  dispatch_release(gr_name);
}

uint64_t INTTrace::snapshot(NSObject *a1, NSObject **a2, const __CFDictionary **a3)
{
  isa = a1[5].isa;
  if (os_log_type_enabled(isa, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(group[0]) = 0;
    _os_log_impl(&dword_23C1C4000, isa, OS_LOG_TYPE_DEFAULT, "#I Snapshotting!", group, 2u);
  }

  v25[0] = 0xAAAAAAAAAAAAAAAALL;
  v25[1] = 0xAAAAAAAAAAAAAAAALL;
  ctu::cf::dict_adapter::dict_adapter(v25, *a3);
  memset(&v24, 170, sizeof(v24));
  group[0] = 0;
  group[1] = 0;
  __p.__r_.__value_.__r.__words[0] = 0;
  ctu::cf::MakeCFString::MakeCFString(&v26, "kKeyTraceDumpStateReason");
  ctu::cf::map_adapter::getString();
  MEMORY[0x23EECD8F0](&v26);
  if (__p.__r_.__value_.__s.__data_[7] < 0)
  {
    operator delete(group[0]);
    v7 = *a2;
    if (v7)
    {
LABEL_5:
      dispatch_retain(v7);
      dispatch_group_enter(v7);
      group[0] = v7;
      dispatch_retain(v7);
      if (group[0])
      {
        dispatch_group_enter(group[0]);
      }

      group[1] = a1;
      if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v7 = *a2;
    if (v7)
    {
      goto LABEL_5;
    }
  }

  group[0] = 0;
  group[1] = a1;
  if ((SHIBYTE(v24.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_8:
    __p = v24;
    goto LABEL_12;
  }

LABEL_11:
  std::string::__init_copy_ctor_external(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
LABEL_12:
  v8 = *a3;
  cf = v8;
  if (v8)
  {
    CFRetain(v8);
  }

  v9 = a1[2].isa;
  if (!v9 || (v10 = a1[1].isa, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v12 = v11;
  v13 = operator new(0x30uLL);
  v14 = *&__p.__r_.__value_.__l.__data_;
  *v13 = *group;
  v13[1] = v14;
  v15 = __p.__r_.__value_.__r.__words[2];
  memset(&__p, 0, sizeof(__p));
  v16 = cf;
  *(v13 + 4) = v15;
  *(v13 + 5) = v16;
  group[0] = 0;
  cf = 0;
  v17 = a1[3].isa;
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v18 = operator new(0x18uLL);
  *v18 = v13;
  v18[1] = v10;
  v18[2] = v12;
  dispatch_async_f(v17, v18, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>(INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,dispatch_queue_s *::default_delete<INTTrace::snapshot(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
    v19 = cf;
    if (!cf)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v19 = cf;
  if (cf)
  {
LABEL_20:
    CFRelease(v19);
  }

LABEL_21:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (group[0])
  {
    dispatch_group_leave(group[0]);
    if (group[0])
    {
      dispatch_release(group[0]);
    }
  }

  if (v7)
  {
    dispatch_group_leave(v7);
    dispatch_release(v7);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  return MEMORY[0x23EECD940](v25);
}

void sub_23C288F98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v24)
  {
    dispatch_group_leave(v24);
    dispatch_release(v24);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x23EECD940](&a24);
  _Unwind_Resume(a1);
}

void INTTrace::dumpState(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
    v4 = a1[2];
    if (!v4)
    {
      goto LABEL_14;
    }
  }

  else
  {
    __p = *a3;
    v4 = a1[2];
    if (!v4)
    {
LABEL_14:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  v5 = a1[1];
  v6 = std::__shared_weak_count::lock(v4);
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = operator new(0x20uLL);
  *v8 = a1;
  v9 = (v8 + 1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    *&v9->__r_.__value_.__l.__data_ = *&__p.__r_.__value_.__l.__data_;
    v8[3] = *(&__p.__r_.__value_.__l + 2);
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<INTTrace::dumpState(dispatch::group,std::string)::$_0>(INTTrace::dumpState(dispatch::group,std::string)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<INTTrace::dumpState(dispatch::group,std::string)::$_0,std::default_delete<INTTrace::dumpState(dispatch::group,std::string)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_13:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_13;
  }
}

uint64_t INTTrace::setProperty(void *a1, dispatch_object_t *a2, uint64_t a3, uint64_t a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v8);
    v17 = 0;
    *buf = &v17;
    *&buf[8] = v8;
    dispatch_retain(v8);
    if (*&buf[8])
    {
      dispatch_group_enter(*&buf[8]);
    }

    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v17 = 0;
    *buf = &v17;
    *&buf[8] = 0;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_5:
      *&buf[16] = *a3;
      v20 = *(a3 + 16);
      goto LABEL_8;
    }
  }

  std::string::__init_copy_ctor_external(&buf[16], *a3, *(a3 + 8));
LABEL_8:
  v9 = *a2;
  v21 = a1;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace11setPropertyEN8dispatch5groupERKNSt3__112basic_stringIcNS7_11char_traitsIcEENS7_9allocatorIcEEEESF_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSH__block_invoke;
  block[3] = &__block_descriptor_tmp_98_0;
  block[4] = a1 + 1;
  block[5] = buf;
  v10 = a1[3];
  if (a1[4])
  {
    dispatch_async_and_wait(v10, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  dispatch_sync(v10, block);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
  }

LABEL_16:
  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(*&buf[16]);
  }

  if (*&buf[8])
  {
    dispatch_group_leave(*&buf[8]);
    if (*&buf[8])
    {
      dispatch_release(*&buf[8]);
    }
  }

  if (v17)
  {
    v11 = 1;
    if (!v8)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v12 = a1[5];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    if (*(a3 + 23) >= 0)
    {
      v15 = a3;
    }

    else
    {
      v15 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    *buf = 136315394;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Setting %s to %s failed", buf, 0x16u);
    v11 = v17;
    if (v8)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v11 = 0;
    if (v8)
    {
LABEL_28:
      dispatch_group_leave(v8);
      dispatch_release(v8);
    }
  }

LABEL_29:
  v13 = *MEMORY[0x277D85DE8];
  return v11 & 1;
}

void sub_23C289420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_group_t group, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      v28 = group;
      if (!group)
      {
LABEL_8:
        if (v26)
        {
          dispatch_group_leave(v26);
          dispatch_release(v26);
        }

        _Unwind_Resume(exception_object);
      }

LABEL_7:
      dispatch_group_leave(v28);
      dispatch_release(group);
      goto LABEL_8;
    }
  }

  else if ((a24 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);
  v28 = group;
  if (!group)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

uint64_t INTTrace::getProperty(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 1;
  v4 = a1 + 8;
  v7[0] = &v10;
  v7[1] = a3;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v9 = a1;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8INTTrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke;
  block[3] = &__block_descriptor_tmp_100;
  block[4] = v4;
  block[5] = v7;
  v5 = *(a1 + 24);
  if (*(a1 + 32))
  {
    dispatch_async_and_wait(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v10;
    }
  }

  else
  {
    dispatch_sync(v5, block);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return v10;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  return v10;
}

void INTTrace::initBootSessionPrefs_sync(INTTrace *this)
{
  HIBYTE(v18[2]) = 15;
  strcpy(v18, "Reset_Mode_Boot");
  memset(&__p, 0, sizeof(__p));
  v2 = prop::bbtrace::get(v18, &__p);
  if (v2)
  {
    LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
    v2 = util::convert<int>(&__p, &v17, 0);
    if (v2)
    {
      *(this + 25) = v17.__r_.__value_.__l.__data_;
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    operator delete(v18[0]);
    if (!sys::isBootSessionChanged(v3))
    {
      goto LABEL_11;
    }

LABEL_10:
    if (*(this + 25))
    {
      goto LABEL_11;
    }

    v10 = *(this + 5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_DEFAULT, "#I AP reboot detected, resetting trace properties", &__p, 2u);
    }

    HIBYTE(v18[2]) = 4;
    strcpy(v18, "Mode");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v11 = prop::bbtrace::set(v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
      {
LABEL_49:
        if (v11)
        {
          goto LABEL_55;
        }

        goto LABEL_53;
      }
    }

    else if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_49;
    }

    operator delete(v18[0]);
    if (v11)
    {
      goto LABEL_55;
    }

LABEL_53:
    v12 = *(this + 5);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v12, OS_LOG_TYPE_ERROR, "Failed to reset trace mode for new boot instance", &__p, 2u);
    }

LABEL_55:
    *(this + 24) = 0;
    HIBYTE(v18[2]) = 14;
    strcpy(v18, "TraceOwnership");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v13 = prop::bbtrace::set(v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
      {
LABEL_57:
        if (v13)
        {
          goto LABEL_63;
        }

        goto LABEL_61;
      }
    }

    else if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

    operator delete(v18[0]);
    if (v13)
    {
      goto LABEL_63;
    }

LABEL_61:
    v14 = *(this + 5);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_ERROR, "Failed to reset trace transport owner id for new boot instance", &__p, 2u);
    }

LABEL_63:
    *(this + 38) = 0;
    HIBYTE(v18[2]) = 19;
    strcpy(v18, "Live_Filter_Setting");
    memset(&v17, 0, sizeof(v17));
    std::to_string(&__p, 0);
    v17 = __p;
    v15 = prop::bbtrace::set(v18, &v17);
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
      if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
      {
LABEL_65:
        if (v15)
        {
          goto LABEL_66;
        }

        goto LABEL_69;
      }
    }

    else if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_65;
    }

    operator delete(v18[0]);
    if (v15)
    {
      goto LABEL_66;
    }

LABEL_69:
    v16 = *(this + 5);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Failed to reset trace live filter setting for new boot instance", &__p, 2u);
      *(this + 29) = 0;
      return;
    }

LABEL_66:
    *(this + 29) = 0;
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v18[2]) < 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (sys::isBootSessionChanged(v2))
  {
    goto LABEL_10;
  }

LABEL_11:
  HIBYTE(v18[2]) = 4;
  strcpy(v18, "Mode");
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(v18, &__p))
  {
    v5 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }

LABEL_14:
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
  v4 = util::convert<int>(&__p, &v17, 0);
  v5 = v4;
  if (v4)
  {
    *(this + 24) = v17.__r_.__value_.__l.__data_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_20:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
  {
LABEL_15:
    if (v5)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

LABEL_21:
  operator delete(v18[0]);
  if (v5)
  {
    goto LABEL_24;
  }

LABEL_22:
  v6 = *(this + 5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "Failed to get trace mode from preferences for same boot instance", &__p, 2u);
  }

LABEL_24:
  HIBYTE(v18[2]) = 14;
  strcpy(v18, "TraceOwnership");
  memset(&__p, 0, sizeof(__p));
  if (!prop::bbtrace::get(v18, &__p))
  {
    v8 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

LABEL_27:
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_34;
  }

  LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
  v7 = util::convert<int>(&__p, &v17, 0);
  v8 = v7;
  if (v7)
  {
    *(this + 38) = v17.__r_.__value_.__l.__data_;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

LABEL_33:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
  {
LABEL_28:
    if (v8)
    {
      goto LABEL_37;
    }

    goto LABEL_35;
  }

LABEL_34:
  operator delete(v18[0]);
  if (v8)
  {
    goto LABEL_37;
  }

LABEL_35:
  v9 = *(this + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to get transport owner id from preferences for same boot instance", &__p, 2u);
  }

LABEL_37:
  HIBYTE(v18[2]) = 19;
  strcpy(v18, "Live_Filter_Setting");
  memset(&__p, 0, sizeof(__p));
  if (prop::bbtrace::get(v18, &__p))
  {
    LODWORD(v17.__r_.__value_.__l.__data_) = -1431655766;
    if (util::convert<int>(&__p, &v17, 0))
    {
      *(this + 29) = v17.__r_.__value_.__l.__data_;
    }
  }

  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v18[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_44:
    operator delete(v18[0]);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v18[2]) < 0)
  {
    goto LABEL_44;
  }
}

void sub_23C289B94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::prepare_sync(INTTrace *this)
{
  v277 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(this + 24);
    if (v3 > 8)
    {
      v4 = "Unknown";
    }

    else
    {
      v4 = off_278BB9648[v3];
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v4;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, "#I Preparing BB Trace with mode: %s", &buf, 0xCu);
  }

  if (!*(this + 20) && !*(this + 24))
  {
    memset(v246, 0, sizeof(v246));
    memset(v245, 0, sizeof(v245));
    v24 = *(this + 29);
    if (v24 <= 1)
    {
      if (v24)
      {
        if (v24 != 1)
        {
          goto LABEL_415;
        }

        v25 = 0x7FFFFFFFFFFFFFF7;
        v26 = abm::trace::kScratchFolder[0];
        v27 = strlen(abm::trace::kScratchFolder[0]);
        if (v27 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v28 = v27;
        if (v27 >= 0x17)
        {
          if ((v27 | 7) == 0x17)
          {
            v98 = 25;
          }

          else
          {
            v98 = (v27 | 7) + 1;
          }

          p_buf = operator new(v98);
          buf.__r_.__value_.__r.__words[2] = v98 | 0x8000000000000000;
          buf.__r_.__value_.__r.__words[0] = p_buf;
          buf.__r_.__value_.__l.__size_ = v28;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v27;
          p_buf = &buf;
          if (!v27)
          {
LABEL_186:
            p_buf->__r_.__value_.__s.__data_[v28] = 0;
            size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
            {
              size = buf.__r_.__value_.__l.__size_;
              v102 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
              if (v102 - buf.__r_.__value_.__l.__size_ < 0x19)
              {
                v100 = buf.__r_.__value_.__l.__size_ + 25;
                if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v102)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v101 = buf.__r_.__value_.__r.__words[0];
                if (v102 >= 0x3FFFFFFFFFFFFFF3)
                {
                  v120 = 0;
LABEL_225:
                  v121 = operator new(v25);
                  v122 = v121;
                  if (size)
                  {
                    memmove(v121, v101, size);
                  }

                  qmemcpy((v122 + size), "BBTrace.scratch.filtered/", 25);
                  if (!v120)
                  {
                    operator delete(v101);
                  }

                  buf.__r_.__value_.__r.__words[2] = v25 | 0x8000000000000000;
                  buf.__r_.__value_.__r.__words[0] = v122;
                  buf.__r_.__value_.__l.__size_ = v100;
                  v123 = (v122 + v100);
LABEL_289:
                  *v123 = 0;
                  v269.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                  v149 = buf.__r_.__value_.__r.__words[0];
                  *(v269.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                  v150 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  memset(&buf, 0, sizeof(buf));
                  if (SHIBYTE(v246[2]) < 0)
                  {
                    operator delete(v246[0]);
                    v246[0] = v149;
                    v246[1] = v269.__r_.__value_.__l.__data_;
                    *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                    HIBYTE(v246[2]) = v150;
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    v246[0] = v149;
                    v246[1] = v269.__r_.__value_.__l.__data_;
                    *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                    HIBYTE(v246[2]) = v150;
                  }

                  v151 = *(this + 5);
                  if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                  {
                    v152 = v246;
                    if (SHIBYTE(v246[2]) < 0)
                    {
                      v152 = v246[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                    *(buf.__r_.__value_.__r.__words + 4) = v152;
                    v153 = "#I Live filtering is enabled; primaryScratchPath is %s";
LABEL_352:
                    v179 = v151;
                    v180 = 12;
LABEL_414:
                    _os_log_impl(&dword_23C1C4000, v179, OS_LOG_TYPE_DEFAULT, v153, &buf, v180);
                    goto LABEL_415;
                  }

                  goto LABEL_415;
                }

LABEL_216:
                v118 = 2 * v102;
                if (v100 > 2 * v102)
                {
                  v118 = v100;
                }

                if ((v118 | 7) == 0x17)
                {
                  v119 = 25;
                }

                else
                {
                  v119 = (v118 | 7) + 1;
                }

                if (v118 >= 0x17)
                {
                  v25 = v119;
                }

                else
                {
                  v25 = 23;
                }

                v120 = v102 == 22;
                goto LABEL_225;
              }

              v144 = buf.__r_.__value_.__r.__words[0];
              qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
              v145 = size + 25;
              buf.__r_.__value_.__l.__size_ = size + 25;
            }

            else
            {
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0x17)
              {
                v100 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 25;
                v101 = &buf;
                v102 = 22;
                goto LABEL_216;
              }

              v144 = &buf;
              qmemcpy(&buf + SHIBYTE(buf.__r_.__value_.__r.__words[2]), "BBTrace.scratch.filtered/", 25);
              v145 = size + 25;
              *(&buf.__r_.__value_.__s + 23) = (size + 25) & 0x7F;
            }

            v123 = v144 + v145;
            goto LABEL_289;
          }
        }

        memmove(p_buf, v26, v28);
        goto LABEL_186;
      }

      v88 = 0x7FFFFFFFFFFFFFF7;
      v89 = abm::trace::kScratchFolder[0];
      v90 = strlen(abm::trace::kScratchFolder[0]);
      if (v90 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v91 = v90;
      if (v90 >= 0x17)
      {
        if ((v90 | 7) == 0x17)
        {
          v108 = 25;
        }

        else
        {
          v108 = (v90 | 7) + 1;
        }

        v92 = operator new(v108);
        buf.__r_.__value_.__r.__words[2] = v108 | 0x8000000000000000;
        buf.__r_.__value_.__r.__words[0] = v92;
        buf.__r_.__value_.__l.__size_ = v91;
      }

      else
      {
        *(&buf.__r_.__value_.__s + 23) = v90;
        v92 = &buf;
        if (!v90)
        {
LABEL_202:
          v92->__r_.__value_.__s.__data_[v91] = 0;
          v109 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v109 = buf.__r_.__value_.__l.__size_;
            v112 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v112 - buf.__r_.__value_.__l.__size_ < 0x10)
            {
              v110 = buf.__r_.__value_.__l.__size_ + 16;
              if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v112)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v111 = buf.__r_.__value_.__r.__words[0];
              if (v112 >= 0x3FFFFFFFFFFFFFF3)
              {
                v133 = 0;
LABEL_259:
                v134 = operator new(v88);
                v135 = v134;
                if (v109)
                {
                  memmove(v134, v111, v109);
                }

                *(v135 + v109) = *"BBTrace.scratch/";
                if (!v133)
                {
                  operator delete(v111);
                }

                buf.__r_.__value_.__r.__words[2] = v88 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v135;
                buf.__r_.__value_.__l.__size_ = v110;
                v136 = (v135 + v110);
LABEL_344:
                *v136 = 0;
                v269.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                v176 = buf.__r_.__value_.__r.__words[0];
                *(v269.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                v177 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                memset(&buf, 0, sizeof(buf));
                if (SHIBYTE(v246[2]) < 0)
                {
                  operator delete(v246[0]);
                  v246[0] = v176;
                  v246[1] = v269.__r_.__value_.__l.__data_;
                  *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                  HIBYTE(v246[2]) = v177;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  v246[0] = v176;
                  v246[1] = v269.__r_.__value_.__l.__data_;
                  *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                  HIBYTE(v246[2]) = v177;
                }

                v151 = *(this + 5);
                if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
                {
                  v178 = v246;
                  if (SHIBYTE(v246[2]) < 0)
                  {
                    v178 = v246[0];
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                  *(buf.__r_.__value_.__r.__words + 4) = v178;
                  v153 = "#I Live filtering is disabled; primaryScratchPath is %s";
                  goto LABEL_352;
                }

LABEL_415:
                *(&v269.__r_.__value_.__s + 23) = 18;
                strcpy(&v269, "MaxMemoryFileCount");
                memset(&buf, 0, sizeof(buf));
                if (prop::bbtrace::get(&v269, &buf))
                {
                  util::convert<unsigned int>(&buf, this + 31, 0);
                }

                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v269.__r_.__value_.__l.__data_);
                }

                v269.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA0000;
                *&v269.__r_.__value_.__r.__words[1] = 0u;
                v270 = 0u;
                *v271 = 0u;
                memset(v272, 0, sizeof(v272));
                *&v273 = 0;
                *(&v273 + 1) = 0x1500100000;
                v274 = 0xAAAAAAAA00000015;
                if (SHIBYTE(v246[2]) < 0)
                {
                  std::string::__assign_no_alias<true>(&v272[3], v246[0], v246[1]);
                  if (SHIBYTE(v272[2]) < 0)
                  {
                    v272[1] = 4;
                    v209 = v272[0];
LABEL_425:
                    strcpy(v209, ".acp");
                    LODWORD(v273) = *(this + 28);
                    *(&v273 + 4) = vrev64_s32(*(this + 120));
                    __p.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAA0000;
                    *&__p.__r_.__value_.__r.__words[1] = 0u;
                    v239 = 0u;
                    *v240 = 0u;
                    memset(v241, 0, sizeof(v241));
                    v242 = 0;
                    v243 = 0x1500100000;
                    v244 = 0xAAAAAAAA00000015;
                    if (SHIBYTE(v245[2]) < 0)
                    {
                      std::string::__assign_no_alias<true>(&v241[3], v245[0], v245[1]);
                      if (SHIBYTE(v241[2]) < 0)
                      {
                        v241[1] = 4;
                        v210 = v241[0];
                        goto LABEL_429;
                      }
                    }

                    else
                    {
                      *&v241[3] = *v245;
                      v241[5] = v245[2];
                    }

                    v210 = v241;
                    HIBYTE(v241[2]) = 4;
LABEL_429:
                    strcpy(v210, ".acp");
                    v211 = *(this + 30);
                    v212 = *(this + 31) >> 2;
                    LODWORD(v242) = *(this + 28) / 16;
                    HIDWORD(v242) = v212;
                    LODWORD(v243) = v211;
                    v213 = *(this + 2);
                    if (!v213 || (v214 = *(this + 90), v215 = *(this + 1), (v216 = std::__shared_weak_count::lock(v213)) == 0))
                    {
                      std::__throw_bad_weak_ptr[abi:ne200100]();
                    }

                    v217 = v216;
                    p_shared_weak_owners = &v216->__shared_weak_owners_;
                    atomic_fetch_add_explicit(&v216->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    if (!atomic_fetch_add(&v216->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                    {
                      (v216->__on_zero_shared)(v216);
                      std::__shared_weak_count::__release_weak(v217);
                    }

                    *&v219 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v219 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    *key = v219;
                    v268 = v219;
                    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
                    *(&v268 + 1) = 0;
                    v220 = operator new(0x20uLL);
                    *v220 = &unk_284EFCCC8;
                    v220[1] = this;
                    v220[2] = v215;
                    v220[3] = v217;
                    *(&v268 + 1) = v220;
                    v266 = 0xAAAAAAAAAAAAAAAALL;
                    *&v221 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v221 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v265[0] = v221;
                    v265[1] = v221;
                    LODWORD(v265[0]) = *(this + 90);
                    v222 = operator new(0x20uLL);
                    *v222 = &unk_284EFCCC8;
                    v222[1] = this;
                    v222[2] = v215;
                    v222[3] = v217;
                    atomic_fetch_add_explicit(&v217->__shared_weak_owners_, 1uLL, memory_order_relaxed);
                    v266 = v222;
                    *&v223 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v223 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v261 = v223;
                    v262 = 0xAAAAAAAAAAAAAAAALL;
                    *v260 = v223;
                    *&v260[16] = v223;
                    v257[0] = v223;
                    *&buf.__r_.__value_.__r.__words[1] = v223;
                    buf.__r_.__value_.__r.__words[0] = 0;
                    LOWORD(buf.__r_.__value_.__r.__words[2]) = 0;
                    v249 = 0u;
                    v250 = 0u;
                    v251 = 0u;
                    v252 = 0u;
                    v253 = 0u;
                    v254 = 0u;
                    v255 = 0;
                    v256 = 0x1500100000;
                    LODWORD(v257[0]) = 21;
                    WORD4(v257[0]) = 0;
                    memset(&v257[1], 0, 96);
                    v258 = 0;
                    v259 = 0x1500100000;
                    *v260 = 21;
                    *&v260[12] = 0;
                    *&v260[24] = 0;
                    v263 = 0;
                    v264 = 0xAAAAAAAA00000015;
                    v224 = *(this + 3);
                    if (v224)
                    {
                      dispatch_retain(*(this + 3));
                      v225 = buf.__r_.__value_.__r.__words[0];
                      buf.__r_.__value_.__r.__words[0] = v224;
                      if (v225)
                      {
                        dispatch_release(v225);
                      }
                    }

                    v226 = (*(*this + 136))(this);
                    if (*(v226 + 23) >= 0)
                    {
                      v227 = v226;
                    }

                    else
                    {
                      v227 = *v226;
                    }

                    buf.__r_.__value_.__l.__size_ = v227;
                    TraceFileCollection::Parameters::operator=(&buf.__r_.__value_.__r.__words[2], &v269);
                    TraceFileCollection::Parameters::operator=(v257 + 8, &__p);
                    *&v260[8] = *(this + 29);
                    *&v260[12] = v214 | 0xAAAAAA1900000000;
                    *&v260[24] = v265[0];
                    v228 = v266;
                    if (v266)
                    {
                      if (v266 == (v265 + 8))
                      {
                        v276 = v275;
                        (*(*v266 + 24))();
LABEL_444:
                        std::__function::__value_func<void ()(xpc::dict const&)>::swap[abi:ne200100](v275, &v261);
                        if (v276 == v275)
                        {
                          (*(*v276 + 32))(v276);
                        }

                        else if (v276)
                        {
                          (*(*v276 + 40))();
                        }

                        abm::trace::TraceReader::Config::Config(v247, &buf);
                        abm::trace::TraceReader::create();
                        v229 = *v275;
                        memset(v275, 0, 16);
                        v230 = *(this + 21);
                        *(this + 10) = v229;
                        if (v230 && !atomic_fetch_add(&v230->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v230->__on_zero_shared)(v230);
                          std::__shared_weak_count::__release_weak(v230);
                        }

                        v231 = v275[1];
                        if (v275[1] && !atomic_fetch_add(v275[1] + 1, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v231->__on_zero_shared)(v231);
                          std::__shared_weak_count::__release_weak(v231);
                        }

                        abm::trace::TraceReader::Config::~Config(v247);
                        v232 = *(this + 5);
                        if (*(this + 20))
                        {
                          if (os_log_type_enabled(v232, OS_LOG_TYPE_DEBUG))
                          {
                            LOWORD(v275[0]) = 0;
                            _os_log_debug_impl(&dword_23C1C4000, v232, OS_LOG_TYPE_DEBUG, "#D Created file reader!", v275, 2u);
                            abm::trace::TraceReader::Config::~Config(&buf);
                            v233 = v266;
                            if (v266 == (v265 + 8))
                            {
                              goto LABEL_457;
                            }

LABEL_464:
                            if (v233)
                            {
                              (*(*v233 + 40))(v233);
                            }

                            v234 = *(&v268 + 1);
                            if (*(&v268 + 1) == key)
                            {
LABEL_458:
                              (*(*v234 + 32))(v234);
                              std::__shared_weak_count::__release_weak(v217);
                              if (SHIBYTE(v241[5]) < 0)
                              {
                                goto LABEL_459;
                              }

                              goto LABEL_470;
                            }

LABEL_467:
                            if (v234)
                            {
                              (*(*v234 + 40))(v234);
                            }

                            std::__shared_weak_count::__release_weak(v217);
                            if (SHIBYTE(v241[5]) < 0)
                            {
LABEL_459:
                              operator delete(v241[3]);
                              if (SHIBYTE(v241[2]) < 0)
                              {
                                goto LABEL_460;
                              }

                              goto LABEL_471;
                            }

LABEL_470:
                            if (SHIBYTE(v241[2]) < 0)
                            {
LABEL_460:
                              operator delete(v241[0]);
                              v235 = *(&v239 + 1);
                              if (!*(&v239 + 1))
                              {
LABEL_473:
                                if (SBYTE7(v239) < 0)
                                {
                                  operator delete(__p.__r_.__value_.__l.__size_);
                                  if ((SHIBYTE(v272[5]) & 0x80000000) == 0)
                                  {
LABEL_475:
                                    if ((SHIBYTE(v272[2]) & 0x80000000) == 0)
                                    {
                                      goto LABEL_476;
                                    }

                                    goto LABEL_484;
                                  }
                                }

                                else if ((SHIBYTE(v272[5]) & 0x80000000) == 0)
                                {
                                  goto LABEL_475;
                                }

                                operator delete(v272[3]);
                                if ((SHIBYTE(v272[2]) & 0x80000000) == 0)
                                {
LABEL_476:
                                  v236 = *(&v270 + 1);
                                  if (!*(&v270 + 1))
                                  {
                                    goto LABEL_478;
                                  }

                                  goto LABEL_477;
                                }

LABEL_484:
                                operator delete(v272[0]);
                                v236 = *(&v270 + 1);
                                if (!*(&v270 + 1))
                                {
LABEL_478:
                                  if (SBYTE7(v270) < 0)
                                  {
                                    operator delete(v269.__r_.__value_.__l.__size_);
                                    if ((SHIBYTE(v245[2]) & 0x80000000) == 0)
                                    {
LABEL_480:
                                      if ((SHIBYTE(v246[2]) & 0x80000000) == 0)
                                      {
                                        goto LABEL_10;
                                      }

LABEL_488:
                                      operator delete(v246[0]);
                                      goto LABEL_10;
                                    }
                                  }

                                  else if ((SHIBYTE(v245[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_480;
                                  }

                                  operator delete(v245[0]);
                                  if ((SHIBYTE(v246[2]) & 0x80000000) == 0)
                                  {
                                    goto LABEL_10;
                                  }

                                  goto LABEL_488;
                                }

LABEL_477:
                                v271[0] = v236;
                                operator delete(v236);
                                goto LABEL_478;
                              }

LABEL_472:
                              v240[0] = v235;
                              operator delete(v235);
                              goto LABEL_473;
                            }

LABEL_471:
                            v235 = *(&v239 + 1);
                            if (!*(&v239 + 1))
                            {
                              goto LABEL_473;
                            }

                            goto LABEL_472;
                          }
                        }

                        else if (os_log_type_enabled(v232, OS_LOG_TYPE_ERROR))
                        {
                          LOWORD(v275[0]) = 0;
                          _os_log_error_impl(&dword_23C1C4000, v232, OS_LOG_TYPE_ERROR, "Failed to create file reader", v275, 2u);
                          abm::trace::TraceReader::Config::~Config(&buf);
                          v233 = v266;
                          if (v266 != (v265 + 8))
                          {
                            goto LABEL_464;
                          }

LABEL_457:
                          (*(*v233 + 32))(v233);
                          v234 = *(&v268 + 1);
                          if (*(&v268 + 1) == key)
                          {
                            goto LABEL_458;
                          }

                          goto LABEL_467;
                        }

                        abm::trace::TraceReader::Config::~Config(&buf);
                        v233 = v266;
                        if (v266 != (v265 + 8))
                        {
                          goto LABEL_464;
                        }

                        goto LABEL_457;
                      }

                      v228 = (*(*v266 + 16))();
                    }

                    v276 = v228;
                    goto LABEL_444;
                  }
                }

                else
                {
                  *&v272[3] = *v246;
                  v272[5] = v246[2];
                }

                v209 = v272;
                HIBYTE(v272[2]) = 4;
                goto LABEL_425;
              }

LABEL_250:
              v131 = 2 * v112;
              if (v110 > 2 * v112)
              {
                v131 = v110;
              }

              if ((v131 | 7) == 0x17)
              {
                v132 = 25;
              }

              else
              {
                v132 = (v131 | 7) + 1;
              }

              if (v131 >= 0x17)
              {
                v88 = v132;
              }

              else
              {
                v88 = 23;
              }

              v133 = v112 == 22;
              goto LABEL_259;
            }

            v147 = buf.__r_.__value_.__r.__words[0];
          }

          else
          {
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 7) < 0x10)
            {
              v110 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 16;
              v111 = &buf;
              v112 = 22;
              goto LABEL_250;
            }

            v147 = &buf;
          }

          *(&v147->__r_.__value_.__l.__data_ + v109) = *"BBTrace.scratch/";
          v174 = v109 + 16;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            buf.__r_.__value_.__l.__size_ = v109 + 16;
          }

          else
          {
            *(&buf.__r_.__value_.__s + 23) = v174 & 0x7F;
          }

          v136 = v147 + v174;
          goto LABEL_344;
        }
      }

      memmove(v92, v89, v91);
      goto LABEL_202;
    }

    if (v24 != 2)
    {
      if (v24 != 3)
      {
        goto LABEL_415;
      }

      v39 = 0x7FFFFFFFFFFFFFF7;
      v40 = abm::trace::kScratchFolder[0];
      v41 = strlen(abm::trace::kScratchFolder[0]);
      if (v41 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v42 = v41;
      if (v41 >= 0x17)
      {
        if ((v41 | 7) == 0x17)
        {
          v103 = 25;
        }

        else
        {
          v103 = (v41 | 7) + 1;
        }

        v43 = operator new(v103);
        buf.__r_.__value_.__r.__words[2] = v103 | 0x8000000000000000;
        buf.__r_.__value_.__r.__words[0] = v43;
        buf.__r_.__value_.__l.__size_ = v42;
      }

      else
      {
        *(&buf.__r_.__value_.__s + 23) = v41;
        v43 = &buf;
        if (!v41)
        {
LABEL_194:
          v43->__r_.__value_.__s.__data_[v42] = 0;
          v104 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v104 = buf.__r_.__value_.__l.__size_;
            v107 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v107 - buf.__r_.__value_.__l.__size_ < 0x10)
            {
              v105 = buf.__r_.__value_.__l.__size_ + 16;
              if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v107)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v106 = buf.__r_.__value_.__r.__words[0];
              if (v107 >= 0x3FFFFFFFFFFFFFF3)
              {
                v127 = 0;
                v126 = 0x7FFFFFFFFFFFFFF7;
LABEL_242:
                v128 = operator new(v126);
                v129 = v128;
                if (v104)
                {
                  memmove(v128, v106, v104);
                }

                *(v129 + v104) = *"BBTrace.scratch/";
                if (!v127)
                {
                  operator delete(v106);
                }

                buf.__r_.__value_.__r.__words[2] = v126 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v129;
                buf.__r_.__value_.__l.__size_ = v105;
                v130 = (v129 + v105);
LABEL_302:
                *v130 = 0;
                v269.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                v155 = buf.__r_.__value_.__r.__words[0];
                *(v269.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                v156 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                memset(&buf, 0, sizeof(buf));
                if (SHIBYTE(v246[2]) < 0)
                {
                  operator delete(v246[0]);
                  v246[0] = v155;
                  v246[1] = v269.__r_.__value_.__l.__data_;
                  *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                  HIBYTE(v246[2]) = v156;
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }
                }

                else
                {
                  v246[0] = v155;
                  v246[1] = v269.__r_.__value_.__l.__data_;
                  *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                  HIBYTE(v246[2]) = v156;
                }

                v157 = abm::trace::kScratchFolder[0];
                v158 = strlen(abm::trace::kScratchFolder[0]);
                if (v158 > 0x7FFFFFFFFFFFFFF7)
                {
                  std::string::__throw_length_error[abi:ne200100]();
                }

                v159 = v158;
                if (v158 >= 0x17)
                {
                  if ((v158 | 7) == 0x17)
                  {
                    v161 = 25;
                  }

                  else
                  {
                    v161 = (v158 | 7) + 1;
                  }

                  v160 = operator new(v161);
                  buf.__r_.__value_.__r.__words[2] = v161 | 0x8000000000000000;
                  buf.__r_.__value_.__r.__words[0] = v160;
                  buf.__r_.__value_.__l.__size_ = v159;
                }

                else
                {
                  *(&buf.__r_.__value_.__s + 23) = v158;
                  v160 = &buf;
                  if (!v158)
                  {
LABEL_315:
                    v160->__r_.__value_.__s.__data_[v159] = 0;
                    v162 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                    {
                      v162 = buf.__r_.__value_.__l.__size_;
                      v165 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                      if (v165 - buf.__r_.__value_.__l.__size_ < 0x19)
                      {
                        v163 = buf.__r_.__value_.__l.__size_ + 25;
                        if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v165)
                        {
                          std::string::__throw_length_error[abi:ne200100]();
                        }

                        v164 = buf.__r_.__value_.__r.__words[0];
                        if (v165 >= 0x3FFFFFFFFFFFFFF3)
                        {
                          v168 = 0;
LABEL_330:
                          v169 = operator new(v39);
                          v170 = v169;
                          if (v162)
                          {
                            memmove(v169, v164, v162);
                          }

                          qmemcpy((v170 + v162), "BBTrace.scratch.filtered/", 25);
                          if (!v168)
                          {
                            operator delete(v164);
                          }

                          buf.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
                          buf.__r_.__value_.__r.__words[0] = v170;
                          buf.__r_.__value_.__l.__size_ = v163;
                          v171 = (v170 + v163);
                          goto LABEL_391;
                        }

LABEL_321:
                        v166 = 2 * v165;
                        if (v163 > 2 * v165)
                        {
                          v166 = v163;
                        }

                        if ((v166 | 7) == 0x17)
                        {
                          v167 = 25;
                        }

                        else
                        {
                          v167 = (v166 | 7) + 1;
                        }

                        if (v166 >= 0x17)
                        {
                          v39 = v167;
                        }

                        else
                        {
                          v39 = 23;
                        }

                        v168 = v165 == 22;
                        goto LABEL_330;
                      }

                      v172 = buf.__r_.__value_.__r.__words[0];
                      qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
                      v173 = v162 + 25;
                      buf.__r_.__value_.__l.__size_ = v162 + 25;
                    }

                    else
                    {
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0x17)
                      {
                        v163 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 25;
                        v164 = &buf;
                        v165 = 22;
                        goto LABEL_321;
                      }

                      v172 = &buf;
                      qmemcpy(&buf + SHIBYTE(buf.__r_.__value_.__r.__words[2]), "BBTrace.scratch.filtered/", 25);
                      v173 = v162 + 25;
                      *(&buf.__r_.__value_.__s + 23) = (v162 + 25) & 0x7F;
                    }

                    v171 = v172 + v173;
LABEL_391:
                    *v171 = 0;
                    v269.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                    v200 = buf.__r_.__value_.__r.__words[0];
                    *(v269.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                    v201 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                    memset(&buf, 0, sizeof(buf));
                    if (SHIBYTE(v245[2]) < 0)
                    {
                      operator delete(v245[0]);
                      v245[0] = v200;
                      v245[1] = v269.__r_.__value_.__l.__data_;
                      *(&v245[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                      HIBYTE(v245[2]) = v201;
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                      }
                    }

                    else
                    {
                      v245[0] = v200;
                      v245[1] = v269.__r_.__value_.__l.__data_;
                      *(&v245[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                      HIBYTE(v245[2]) = v201;
                    }

                    v202 = *(this + 5);
                    if (!os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_415;
                    }

                    v203 = v246;
                    if (SHIBYTE(v246[2]) < 0)
                    {
                      v203 = v246[0];
                    }

                    v204 = v245;
                    if (SHIBYTE(v245[2]) < 0)
                    {
                      v204 = v245[0];
                    }

                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                    *(buf.__r_.__value_.__r.__words + 4) = v203;
                    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                    *(&buf.__r_.__value_.__r.__words[1] + 6) = v204;
                    v153 = "#I Streaming Mode is enabled; primaryScratchPath is %s,  secondaryScratchPath is %s";
                    goto LABEL_413;
                  }
                }

                memmove(v160, v157, v159);
                goto LABEL_315;
              }

LABEL_233:
              v124 = 2 * v107;
              if (v105 > 2 * v107)
              {
                v124 = v105;
              }

              if ((v124 | 7) == 0x17)
              {
                v125 = 25;
              }

              else
              {
                v125 = (v124 | 7) + 1;
              }

              if (v124 >= 0x17)
              {
                v126 = v125;
              }

              else
              {
                v126 = 23;
              }

              v127 = v107 == 22;
              goto LABEL_242;
            }

            v146 = buf.__r_.__value_.__r.__words[0];
          }

          else
          {
            if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 7) < 0x10)
            {
              v105 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 16;
              v106 = &buf;
              v107 = 22;
              goto LABEL_233;
            }

            v146 = &buf;
          }

          *(&v146->__r_.__value_.__l.__data_ + v104) = *"BBTrace.scratch/";
          v154 = v104 + 16;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            buf.__r_.__value_.__l.__size_ = v104 + 16;
          }

          else
          {
            *(&buf.__r_.__value_.__s + 23) = v154 & 0x7F;
          }

          v130 = v146 + v154;
          goto LABEL_302;
        }
      }

      memmove(v43, v40, v42);
      goto LABEL_194;
    }

    v93 = 0x7FFFFFFFFFFFFFF7;
    v94 = abm::trace::kScratchFolder[0];
    v95 = strlen(abm::trace::kScratchFolder[0]);
    if (v95 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v96 = v95;
    if (v95 >= 0x17)
    {
      if ((v95 | 7) == 0x17)
      {
        v113 = 25;
      }

      else
      {
        v113 = (v95 | 7) + 1;
      }

      v97 = operator new(v113);
      buf.__r_.__value_.__r.__words[2] = v113 | 0x8000000000000000;
      buf.__r_.__value_.__r.__words[0] = v97;
      buf.__r_.__value_.__l.__size_ = v96;
    }

    else
    {
      *(&buf.__r_.__value_.__s + 23) = v95;
      v97 = &buf;
      if (!v95)
      {
LABEL_210:
        v97->__r_.__value_.__s.__data_[v96] = 0;
        v114 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
        if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
        {
          v114 = buf.__r_.__value_.__l.__size_;
          v117 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v117 - buf.__r_.__value_.__l.__size_ < 0x10)
          {
            v115 = buf.__r_.__value_.__l.__size_ + 16;
            if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v117)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v116 = buf.__r_.__value_.__r.__words[0];
            if (v117 >= 0x3FFFFFFFFFFFFFF3)
            {
              v140 = 0;
              v139 = 0x7FFFFFFFFFFFFFF7;
LABEL_276:
              v141 = operator new(v139);
              v142 = v141;
              if (v114)
              {
                memmove(v141, v116, v114);
              }

              *(v142 + v114) = *"BBTrace.scratch/";
              if (!v140)
              {
                operator delete(v116);
              }

              buf.__r_.__value_.__r.__words[2] = v139 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v142;
              buf.__r_.__value_.__l.__size_ = v115;
              v143 = (v142 + v115);
LABEL_355:
              *v143 = 0;
              v269.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
              v181 = buf.__r_.__value_.__r.__words[0];
              *(v269.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
              v182 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
              memset(&buf, 0, sizeof(buf));
              if (SHIBYTE(v246[2]) < 0)
              {
                operator delete(v246[0]);
                v246[0] = v181;
                v246[1] = v269.__r_.__value_.__l.__data_;
                *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                HIBYTE(v246[2]) = v182;
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }
              }

              else
              {
                v246[0] = v181;
                v246[1] = v269.__r_.__value_.__l.__data_;
                *(&v246[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                HIBYTE(v246[2]) = v182;
              }

              v183 = abm::trace::kScratchFolder[0];
              v184 = strlen(abm::trace::kScratchFolder[0]);
              if (v184 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v185 = v184;
              if (v184 >= 0x17)
              {
                if ((v184 | 7) == 0x17)
                {
                  v187 = 25;
                }

                else
                {
                  v187 = (v184 | 7) + 1;
                }

                v186 = operator new(v187);
                buf.__r_.__value_.__r.__words[2] = v187 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v186;
                buf.__r_.__value_.__l.__size_ = v185;
              }

              else
              {
                *(&buf.__r_.__value_.__s + 23) = v184;
                v186 = &buf;
                if (!v184)
                {
LABEL_368:
                  v186->__r_.__value_.__s.__data_[v185] = 0;
                  v188 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
                  {
                    v188 = buf.__r_.__value_.__l.__size_;
                    v191 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                    if (v191 - buf.__r_.__value_.__l.__size_ < 0x19)
                    {
                      v189 = buf.__r_.__value_.__l.__size_ + 25;
                      if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v191)
                      {
                        std::string::__throw_length_error[abi:ne200100]();
                      }

                      v190 = buf.__r_.__value_.__r.__words[0];
                      if (v191 >= 0x3FFFFFFFFFFFFFF3)
                      {
                        v194 = 0;
LABEL_383:
                        v195 = operator new(v93);
                        v196 = v195;
                        if (v188)
                        {
                          memmove(v195, v190, v188);
                        }

                        qmemcpy((v196 + v188), "BBTrace.scratch.filtered/", 25);
                        if (!v194)
                        {
                          operator delete(v190);
                        }

                        buf.__r_.__value_.__r.__words[2] = v93 | 0x8000000000000000;
                        buf.__r_.__value_.__r.__words[0] = v196;
                        buf.__r_.__value_.__l.__size_ = v189;
                        v197 = (v196 + v189);
                        goto LABEL_403;
                      }

LABEL_374:
                      v192 = 2 * v191;
                      if (v189 > 2 * v191)
                      {
                        v192 = v189;
                      }

                      if ((v192 | 7) == 0x17)
                      {
                        v193 = 25;
                      }

                      else
                      {
                        v193 = (v192 | 7) + 1;
                      }

                      if (v192 >= 0x17)
                      {
                        v93 = v193;
                      }

                      else
                      {
                        v93 = 23;
                      }

                      v194 = v191 == 22;
                      goto LABEL_383;
                    }

                    v198 = buf.__r_.__value_.__r.__words[0];
                    qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
                    v199 = v188 + 25;
                    buf.__r_.__value_.__l.__size_ = v188 + 25;
                  }

                  else
                  {
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0x17)
                    {
                      v189 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 25;
                      v190 = &buf;
                      v191 = 22;
                      goto LABEL_374;
                    }

                    v198 = &buf;
                    qmemcpy(&buf + SHIBYTE(buf.__r_.__value_.__r.__words[2]), "BBTrace.scratch.filtered/", 25);
                    v199 = v188 + 25;
                    *(&buf.__r_.__value_.__s + 23) = (v188 + 25) & 0x7F;
                  }

                  v197 = v198 + v199;
LABEL_403:
                  *v197 = 0;
                  v269.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__l.__size_;
                  v205 = buf.__r_.__value_.__r.__words[0];
                  *(v269.__r_.__value_.__r.__words + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
                  v206 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  memset(&buf, 0, sizeof(buf));
                  if (SHIBYTE(v245[2]) < 0)
                  {
                    operator delete(v245[0]);
                    v245[0] = v205;
                    v245[1] = v269.__r_.__value_.__l.__data_;
                    *(&v245[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                    HIBYTE(v245[2]) = v206;
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }
                  }

                  else
                  {
                    v245[0] = v205;
                    v245[1] = v269.__r_.__value_.__l.__data_;
                    *(&v245[1] + 7) = *(v269.__r_.__value_.__r.__words + 7);
                    HIBYTE(v245[2]) = v206;
                  }

                  v202 = *(this + 5);
                  if (!os_log_type_enabled(v202, OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_415;
                  }

                  v207 = v246;
                  if (SHIBYTE(v246[2]) < 0)
                  {
                    v207 = v246[0];
                  }

                  v208 = v245;
                  if (SHIBYTE(v245[2]) < 0)
                  {
                    v208 = v245[0];
                  }

                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                  *(buf.__r_.__value_.__r.__words + 4) = v207;
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = v208;
                  v153 = "#I Hybrid trace collection is active; primaryScratchPath is %s, secondaryScratchPath is %s";
LABEL_413:
                  v179 = v202;
                  v180 = 22;
                  goto LABEL_414;
                }
              }

              memmove(v186, v183, v185);
              goto LABEL_368;
            }

LABEL_267:
            v137 = 2 * v117;
            if (v115 > 2 * v117)
            {
              v137 = v115;
            }

            if ((v137 | 7) == 0x17)
            {
              v138 = 25;
            }

            else
            {
              v138 = (v137 | 7) + 1;
            }

            if (v137 >= 0x17)
            {
              v139 = v138;
            }

            else
            {
              v139 = 23;
            }

            v140 = v117 == 22;
            goto LABEL_276;
          }

          v148 = buf.__r_.__value_.__r.__words[0];
        }

        else
        {
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) - 7) < 0x10)
          {
            v115 = SHIBYTE(buf.__r_.__value_.__r.__words[2]) + 16;
            v116 = &buf;
            v117 = 22;
            goto LABEL_267;
          }

          v148 = &buf;
        }

        *(&v148->__r_.__value_.__l.__data_ + v114) = *"BBTrace.scratch/";
        v175 = v114 + 16;
        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          buf.__r_.__value_.__l.__size_ = v114 + 16;
        }

        else
        {
          *(&buf.__r_.__value_.__s + 23) = v175 & 0x7F;
        }

        v143 = v148 + v175;
        goto LABEL_355;
      }
    }

    memmove(v97, v94, v96);
    goto LABEL_210;
  }

  v5 = *(this + 5);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_debug_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_DEBUG, "#D Skipped creating new file reader instance", &buf, 2u);
  }

LABEL_10:
  v6 = *(this + 24);
  if (v6 != 7 && v6 != 2)
  {
    if (!v6)
    {
      v7 = 0x7FFFFFFFFFFFFFF7;
      memset(&v269, 170, sizeof(v269));
      v8 = abm::trace::kScratchFolder[0];
      v9 = strlen(abm::trace::kScratchFolder[0]);
      if (v9 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v10 = v9;
      if (v9 >= 0x17)
      {
        if ((v9 | 7) == 0x17)
        {
          v30 = 25;
        }

        else
        {
          v30 = (v9 | 7) + 1;
        }

        v11 = operator new(v30);
        buf.__r_.__value_.__r.__words[2] = v30 | 0x8000000000000000;
        buf.__r_.__value_.__r.__words[0] = v11;
        buf.__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&buf.__r_.__value_.__s + 23) = v9;
        v11 = &buf;
        if (!v9)
        {
          buf.__r_.__value_.__s.__data_[0] = 0;
          v12 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
          {
LABEL_17:
            if (v12 - 7 < 0x10)
            {
              v13 = v12 + 16;
              v14 = &buf;
              v15 = 22;
              goto LABEL_42;
            }

            v38 = &buf;
            goto LABEL_67;
          }

LABEL_39:
          v12 = buf.__r_.__value_.__l.__size_;
          v15 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
          if (v15 - buf.__r_.__value_.__l.__size_ < 0x10)
          {
            v13 = buf.__r_.__value_.__l.__size_ + 16;
            if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 16 - v15)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v14 = buf.__r_.__value_.__r.__words[0];
            if (v15 >= 0x3FFFFFFFFFFFFFF3)
            {
              v34 = 0;
              v33 = 0x7FFFFFFFFFFFFFF7;
LABEL_51:
              v35 = operator new(v33);
              v36 = v35;
              if (v12)
              {
                memmove(v35, v14, v12);
              }

              *(v36 + v12) = *"BBTrace.scratch/";
              if (!v34)
              {
                operator delete(v14);
              }

              buf.__r_.__value_.__r.__words[2] = v33 | 0x8000000000000000;
              buf.__r_.__value_.__r.__words[0] = v36;
              buf.__r_.__value_.__l.__size_ = v13;
              v37 = (v36 + v13);
LABEL_71:
              *v37 = 0;
              v269 = buf;
              v45 = abm::trace::kScratchFolder[0];
              memset(&__p, 170, sizeof(__p));
              v46 = strlen(abm::trace::kScratchFolder[0]);
              if (v46 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v47 = v46;
              if (v46 >= 0x17)
              {
                if ((v46 | 7) == 0x17)
                {
                  v53 = 25;
                }

                else
                {
                  v53 = (v46 | 7) + 1;
                }

                v48 = operator new(v53);
                buf.__r_.__value_.__r.__words[2] = v53 | 0x8000000000000000;
                buf.__r_.__value_.__r.__words[0] = v48;
                buf.__r_.__value_.__l.__size_ = v47;
              }

              else
              {
                *(&buf.__r_.__value_.__s + 23) = v46;
                v48 = &buf;
                if (!v46)
                {
                  buf.__r_.__value_.__s.__data_[0] = 0;
                  v49 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
                  if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
                  {
LABEL_75:
                    if (v49 < 0x17)
                    {
                      v50 = v49 + 25;
                      v51 = &buf;
                      v52 = 22;
                      goto LABEL_85;
                    }

                    v60 = &buf;
                    qmemcpy(&buf + v49, "BBTrace.scratch.filtered/", 25);
                    v61 = v49 + 25;
                    *(&buf.__r_.__value_.__s + 23) = (v49 + 25) & 0x7F;
                    goto LABEL_101;
                  }

LABEL_82:
                  v49 = buf.__r_.__value_.__l.__size_;
                  v52 = (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
                  if (v52 - buf.__r_.__value_.__l.__size_ < 0x19)
                  {
                    v50 = buf.__r_.__value_.__l.__size_ + 25;
                    if (0x7FFFFFFFFFFFFFF7 - (buf.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < buf.__r_.__value_.__l.__size_ + 25 - v52)
                    {
                      std::string::__throw_length_error[abi:ne200100]();
                    }

                    v51 = buf.__r_.__value_.__r.__words[0];
                    if (v52 >= 0x3FFFFFFFFFFFFFF3)
                    {
                      v56 = 0;
LABEL_94:
                      v57 = operator new(v7);
                      v58 = v57;
                      if (v49)
                      {
                        memmove(v57, v51, v49);
                      }

                      qmemcpy((v58 + v49), "BBTrace.scratch.filtered/", 25);
                      if (!v56)
                      {
                        operator delete(v51);
                      }

                      buf.__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
                      buf.__r_.__value_.__r.__words[0] = v58;
                      buf.__r_.__value_.__l.__size_ = v50;
                      v59 = (v58 + v50);
LABEL_102:
                      *v59 = 0;
                      __p = buf;
                      LOBYTE(v275[0]) = 0;
                      pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      v62 = off_280C05A08;
                      if (!off_280C05A08)
                      {
                        SharedData::create_default_global(&buf);
                        v63 = *&buf.__r_.__value_.__l.__data_;
                        *&buf.__r_.__value_.__l.__data_ = 0uLL;
                        v64 = *(&off_280C05A08 + 1);
                        off_280C05A08 = v63;
                        if (v64 && !atomic_fetch_add(&v64->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v64->__on_zero_shared)(v64);
                          std::__shared_weak_count::__release_weak(v64);
                        }

                        v65 = buf.__r_.__value_.__l.__size_;
                        if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                        {
                          (v65->__on_zero_shared)(v65);
                          std::__shared_weak_count::__release_weak(v65);
                        }

                        v62 = off_280C05A08;
                      }

                      *&v265[0] = v62;
                      *(&v265[0] + 1) = *(&off_280C05A08 + 1);
                      if (*(&off_280C05A08 + 1))
                      {
                        atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
                      }

                      pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                      buf.__r_.__value_.__r.__words[0] = operator new(0x38uLL);
                      *&v237[50] = 0;
                      *&v237[52] = 0;
                      *&v237[56] = 0x8000000000000038;
                      *&buf.__r_.__value_.__r.__words[1] = xmmword_23C32DBD0;
                      strcpy(buf.__r_.__value_.__l.__data_, "Firmware version changed since last commcenter launch");
                      strcpy(v237, "ast commcenter l changed since lFirmware version5");
                      os_unfair_lock_lock((v62 + 40));
                      Preferences::getPreference<BOOL>(v62, &buf, v275);
                      os_unfair_lock_unlock((v62 + 40));
                      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                      {
                        operator delete(buf.__r_.__value_.__l.__data_);
                        v66 = *(&v265[0] + 1);
                        if (!*(&v265[0] + 1))
                        {
                          goto LABEL_117;
                        }
                      }

                      else
                      {
                        v66 = *(&v265[0] + 1);
                        if (!*(&v265[0] + 1))
                        {
                          goto LABEL_117;
                        }
                      }

                      if (!atomic_fetch_add(&v66->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v66->__on_zero_shared)(v66);
                        std::__shared_weak_count::__release_weak(v66);
                        if (LOBYTE(v275[0]) == 1)
                        {
                          goto LABEL_118;
                        }

                        goto LABEL_148;
                      }

LABEL_117:
                      if (LOBYTE(v275[0]) == 1)
                      {
LABEL_118:
                        v67 = *(this + 5);
                        if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                        {
                          v68 = &v269;
                          if ((v269.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v68 = v269.__r_.__value_.__r.__words[0];
                          }

                          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                          *(buf.__r_.__value_.__r.__words + 4) = v68;
                          _os_log_impl(&dword_23C1C4000, v67, OS_LOG_TYPE_DEFAULT, "#I Removing scratch folder %s because firmware version change detected", &buf, 0xCu);
                        }

                        if ((*(this + 29) & 0xFFFFFFFE) == 2)
                        {
                          v69 = *(this + 5);
                          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                          {
                            p_p = &__p;
                            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              p_p = __p.__r_.__value_.__r.__words[0];
                            }

                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                            *(buf.__r_.__value_.__r.__words + 4) = p_p;
                            _os_log_impl(&dword_23C1C4000, v69, OS_LOG_TYPE_DEFAULT, "#I Removing filtered scratch folder %s because firmware version change detected", &buf, 0xCu);
                          }
                        }

                        abm::trace::TraceReader::clearFiles(*(this + 20));
                        pthread_mutex_lock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                        v71 = off_280C05A08;
                        if (!off_280C05A08)
                        {
                          SharedData::create_default_global(&buf);
                          v72 = *&buf.__r_.__value_.__l.__data_;
                          *&buf.__r_.__value_.__l.__data_ = 0uLL;
                          v73 = *(&off_280C05A08 + 1);
                          off_280C05A08 = v72;
                          if (v73 && !atomic_fetch_add(&v73->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v73->__on_zero_shared)(v73);
                            std::__shared_weak_count::__release_weak(v73);
                          }

                          v74 = buf.__r_.__value_.__l.__size_;
                          if (buf.__r_.__value_.__l.__size_ && !atomic_fetch_add((buf.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v74->__on_zero_shared)(v74);
                            std::__shared_weak_count::__release_weak(v74);
                          }

                          v71 = off_280C05A08;
                        }

                        *&v265[0] = v71;
                        *(&v265[0] + 1) = *(&off_280C05A08 + 1);
                        if (*(&off_280C05A08 + 1))
                        {
                          atomic_fetch_add_explicit((*(&off_280C05A08 + 1) + 8), 1uLL, memory_order_relaxed);
                        }

                        pthread_mutex_unlock(&ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance);
                        v75 = operator new(0x38uLL);
                        buf.__r_.__value_.__r.__words[0] = v75;
                        *&buf.__r_.__value_.__r.__words[1] = *&v237[48];
                        *v75 = *&v237[32];
                        *(v75 + 1) = *&v237[16];
                        *(v75 + 2) = *v237;
                        strcpy(v75 + 45, "r launch");
                        os_unfair_lock_lock((v71 + 40));
                        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v76 = &buf;
                        }

                        else
                        {
                          v76 = buf.__r_.__value_.__r.__words[0];
                        }

                        ctu::cf::MakeCFString::MakeCFString(key, v76);
                        v275[0] = *MEMORY[0x277CBED10];
                        v77 = v275[0];
                        if (v275[0])
                        {
                          v78 = *MEMORY[0x277CBF030];
                          CFPreferencesSetValue(key[0], v275[0], *(v71 + 8), *(v71 + 16), *MEMORY[0x277CBF030]);
                          CFPreferencesSynchronize(*(v71 + 8), *(v71 + 16), v78);
                          CFRelease(v77);
                        }

                        MEMORY[0x23EECD8F0](key);
                        os_unfair_lock_unlock((v71 + 40));
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(buf.__r_.__value_.__l.__data_);
                        }

                        v79 = *(&v265[0] + 1);
                        if (*(&v265[0] + 1))
                        {
                          if (!atomic_fetch_add((*(&v265[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                          {
                            (v79->__on_zero_shared)(v79);
                            std::__shared_weak_count::__release_weak(v79);
                          }
                        }

                        goto LABEL_159;
                      }

LABEL_148:
                      if ((*(this + 356) & 1) == 0)
                      {
                        v80 = *(this + 5);
                        if (os_log_type_enabled(v80, OS_LOG_TYPE_DEFAULT))
                        {
                          v81 = &v269;
                          if ((v269.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                          {
                            v81 = v269.__r_.__value_.__r.__words[0];
                          }

                          LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                          *(buf.__r_.__value_.__r.__words + 4) = v81;
                          _os_log_impl(&dword_23C1C4000, v80, OS_LOG_TYPE_DEFAULT, "#I Removing scratch folder %s because retain previous trace property is set to false", &buf, 0xCu);
                        }

                        if ((*(this + 29) & 0xFFFFFFFE) == 2)
                        {
                          v82 = *(this + 5);
                          if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
                          {
                            v83 = &__p;
                            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
                            {
                              v83 = __p.__r_.__value_.__r.__words[0];
                            }

                            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                            *(buf.__r_.__value_.__r.__words + 4) = v83;
                            _os_log_impl(&dword_23C1C4000, v82, OS_LOG_TYPE_DEFAULT, "#I Removing filtered scratch folder %s because retain previous trace property is set to false", &buf, 0xCu);
                          }
                        }

                        abm::trace::TraceReader::clearFiles(*(this + 20));
                      }

LABEL_159:
                      started = INTTrace::startReader_sync(this);
                      v85 = *(this + 5);
                      if (started)
                      {
                        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
                        {
                          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                          _os_log_impl(&dword_23C1C4000, v85, OS_LOG_TYPE_DEFAULT, "#I Succeeded opening trace transport", &buf, 2u);
                          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                          {
                            goto LABEL_162;
                          }

LABEL_167:
                          if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
                          {
LABEL_163:
                            operator delete(v269.__r_.__value_.__l.__data_);
                            if ((started & 1) == 0)
                            {
                              goto LABEL_164;
                            }

                            goto LABEL_169;
                          }

                          goto LABEL_168;
                        }
                      }

                      else if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
                      {
                        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                        _os_log_error_impl(&dword_23C1C4000, v85, OS_LOG_TYPE_ERROR, "Failed to open trace transport", &buf, 2u);
                        if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                        {
                          goto LABEL_167;
                        }

LABEL_162:
                        operator delete(__p.__r_.__value_.__l.__data_);
                        if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
                        {
                          goto LABEL_163;
                        }

LABEL_168:
                        if ((started & 1) == 0)
                        {
                          goto LABEL_164;
                        }

                        goto LABEL_169;
                      }

                      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_167;
                      }

                      goto LABEL_162;
                    }

LABEL_85:
                    v54 = 2 * v52;
                    if (v50 > 2 * v52)
                    {
                      v54 = v50;
                    }

                    if ((v54 | 7) == 0x17)
                    {
                      v55 = 25;
                    }

                    else
                    {
                      v55 = (v54 | 7) + 1;
                    }

                    if (v54 >= 0x17)
                    {
                      v7 = v55;
                    }

                    else
                    {
                      v7 = 23;
                    }

                    v56 = v52 == 22;
                    goto LABEL_94;
                  }

                  v60 = buf.__r_.__value_.__r.__words[0];
                  qmemcpy((buf.__r_.__value_.__r.__words[0] + buf.__r_.__value_.__l.__size_), "BBTrace.scratch.filtered/", 25);
                  v61 = v49 + 25;
                  buf.__r_.__value_.__l.__size_ = v49 + 25;
LABEL_101:
                  v59 = v60 + v61;
                  goto LABEL_102;
                }
              }

              memmove(v48, v45, v47);
              v48->__r_.__value_.__s.__data_[v47] = 0;
              v49 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
              if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
              {
                goto LABEL_75;
              }

              goto LABEL_82;
            }

LABEL_42:
            v31 = 2 * v15;
            if (v13 > 2 * v15)
            {
              v31 = v13;
            }

            if ((v31 | 7) == 0x17)
            {
              v32 = 25;
            }

            else
            {
              v32 = (v31 | 7) + 1;
            }

            if (v31 >= 0x17)
            {
              v33 = v32;
            }

            else
            {
              v33 = 23;
            }

            v34 = v15 == 22;
            goto LABEL_51;
          }

          v38 = buf.__r_.__value_.__r.__words[0];
LABEL_67:
          *(&v38->__r_.__value_.__l.__data_ + v12) = *"BBTrace.scratch/";
          v44 = v12 + 16;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            buf.__r_.__value_.__l.__size_ = v12 + 16;
          }

          else
          {
            *(&buf.__r_.__value_.__s + 23) = v44 & 0x7F;
          }

          v37 = v38 + v44;
          goto LABEL_71;
        }
      }

      memmove(v11, v8, v10);
      v11->__r_.__value_.__s.__data_[v10] = 0;
      v12 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
      if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_39;
    }

    v21 = *(this + 5);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      if (v6 > 8)
      {
        v22 = "Unknown";
      }

      else
      {
        v22 = off_278BB95C0[v6];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v22;
      v18 = "#I trace mode (%s)";
      v19 = v21;
      v20 = 12;
      goto LABEL_65;
    }

    goto LABEL_169;
  }

  v16 = INTTrace::startTraceWithUSBBridgeInterface(this);
  v17 = *(this + 5);
  if (v16)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      v18 = "#I Succeeded in starting trace via usb bridge";
      v19 = v17;
      v20 = 2;
LABEL_65:
      _os_log_impl(&dword_23C1C4000, v19, OS_LOG_TYPE_DEFAULT, v18, &buf, v20);
    }

LABEL_169:
    result = 1;
    *(this + 204) = 1;
    goto LABEL_170;
  }

  result = os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR);
  if (result)
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Failed to start trace via usb bridge", &buf, 2u);
LABEL_164:
    result = 0;
    v86 = *MEMORY[0x277D85DE8];
    return result;
  }

LABEL_170:
  v87 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C28C128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (SLOBYTE(STACK[0x257]) < 0)
  {
    operator delete(STACK[0x240]);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::shared_ptr<abm::trace::TraceReader>::operator=[abi:ne200100](uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = *(result + 8);
  *result = v2;
  if (v3)
  {
    if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v4 = result;
      (v3->__on_zero_shared)(v3);
      std::__shared_weak_count::__release_weak(v3);
      return v4;
    }
  }

  return result;
}

uint64_t INTTrace::startReader_sync(INTTrace *this)
{
  if (*(this + 24))
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "#I Trace Mode is not set to Active on AP. Skip starting trace reader";
LABEL_21:
      _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEFAULT, v3, buf, 2u);
      return 1;
    }

    return 1;
  }

  if ((*(this + 104) & 1) == 0)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v3 = "#I Trace is not enabled. Skip starting trace reader";
      goto LABEL_21;
    }

    return 1;
  }

  if (*(this + 20))
  {
    v4 = *(this + 2);
    if (!v4 || (v5 = *(this + 1), (v6 = std::__shared_weak_count::lock(v4)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v7 = v6;
    atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v7);
    }

    *&buf[4] = -1431655936;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    *buf = 17;
    v23 = 0xAAAAAAAAAAAAAA00;
    *&buf[8] = 10;
    v8 = capabilities::radio::dal(v6);
    shouldUseMinBasebandTransportIOReadSize = capabilities::abs::shouldUseMinBasebandTransportIOReadSize(v8);
    capabilities::abs::shouldUseMinBasebandTransportIOReadCount(shouldUseMinBasebandTransportIOReadSize);
    *&v22 = *(this + 196);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN8INTTrace16startReader_syncEv_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_28;
    aBlock[4] = this;
    aBlock[5] = v5;
    v20 = v7;
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v10 = *(this + 20);
    v18 = _Block_copy(aBlock);
    v11 = abm::trace::TraceReader::start();
    if (v18)
    {
      _Block_release(v18);
    }

    if (v11 && (*(this + 192) & 1) == 0 && (v12 = *(this + 11)) != 0 && (dispatch_group_enter(v12), *(this + 192) = 1, v13 = *(this + 5), os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG)))
    {
      *v17 = 0;
      _os_log_debug_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_DEBUG, "#D Holding task group", v17, 2u);
      v14 = v20;
      if (!v20)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = v20;
      if (!v20)
      {
LABEL_18:
        std::__shared_weak_count::__release_weak(v7);
        return v11;
      }
    }

    std::__shared_weak_count::__release_weak(v14);
    goto LABEL_18;
  }

  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_ERROR, "Failed to start Trace reader. Object does not exist", buf, 2u);
  }

  return 0;
}

void sub_23C28C6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
    std::__shared_weak_count::__release_weak(v18);
    _Unwind_Resume(a1);
  }

  std::__shared_weak_count::__release_weak(v18);
  _Unwind_Resume(a1);
}

BOOL INTTrace::startTraceWithUSBBridgeInterface(INTTrace *this)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *(this + 24);
  if (v2 != 2 && v2 != 7)
  {
    v11 = *(this + 5);
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *v24 = 136315138;
      *&v24[4] = trace::toString(v2);
      v13 = "Invalid trace mode (%s) to start trace via USB interface";
LABEL_26:
      v20 = v11;
      v21 = 12;
LABEL_34:
      _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, v13, v24, v21);
      result = 0;
      v23 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_31;
  }

  v4 = (this + 280);
  v5 = *(this + 35);
  if (!v5)
  {
    SoftwareBypassShim::create(v24);
    v6 = *v24;
    *v24 = 0uLL;
    v7 = *(this + 36);
    *v4 = v6;
    if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
      v8 = *&v24[8];
      if (!*&v24[8])
      {
LABEL_11:
        v5 = *v4;
        if (*v4)
        {
          goto LABEL_12;
        }

LABEL_30:
        v14 = *(this + 5);
        result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (!result)
        {
          goto LABEL_31;
        }

        *v24 = 0;
        v13 = "Failed to create bypass control object";
        goto LABEL_33;
      }
    }

    else
    {
      v8 = *&v24[8];
      if (!*&v24[8])
      {
        goto LABEL_11;
      }
    }

    if (atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_11;
    }

    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    v5 = *v4;
    if (!*v4)
    {
      goto LABEL_30;
    }
  }

LABEL_12:
  if (!*(v5 + 3))
  {
    v14 = *(this + 5);
    result = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_31;
    }

    *v24 = 0;
    v13 = "expected to use software bypass, but it is not supported";
LABEL_33:
    v20 = v14;
    v21 = 2;
    goto LABEL_34;
  }

  v9 = *(this + 24);
  if (v9 == 2)
  {
    v10 = 41;
  }

  else
  {
    if (v9 != 7)
    {
      v11 = *(this + 5);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (result)
      {
        v19 = trace::toString(v9);
        *v24 = 136315138;
        *&v24[4] = v19;
        v13 = "Unexpected trace mode: %s";
        goto LABEL_26;
      }

LABEL_31:
      v22 = *MEMORY[0x277D85DE8];
      return result;
    }

    v10 = 32;
  }

  v15 = SoftwareBypassShim::bypassCtl(v5, v10);
  v16 = *(this + 5);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = SoftwareBypassShim::bypassInterfaceMaskAsString(*v4, 41);
    *v24 = 136315394;
    *&v24[4] = v17;
    *&v24[12] = 1024;
    *&v24[14] = v15;
    _os_log_impl(&dword_23C1C4000, v16, OS_LOG_TYPE_DEFAULT, "#I bypassCtl( %s): success: %d", v24, 0x12u);
  }

  result = v15;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void ___ZN8INTTrace16startReader_syncEv_block_invoke(void *a1, _DWORD *a2)
{
  v3 = a1[6];
  if (v3)
  {
    v5 = a1[4];
    v6 = std::__shared_weak_count::lock(v3);
    v49 = v6;
    if (v6)
    {
      if (a1[5])
      {
        if (*a2 == 3)
        {
          v13 = v6;
          v14 = *(v5 + 40);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#E No Logging Traffic detected (Stalled?)", &buf, 2u);
          }

          v6 = v13;
        }

        else if (*a2 == 2)
        {
          v7 = *(v5 + 40);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_DEFAULT, "#E TRACE transport error", &buf, 2u);
          }

          *&v8 = 0xAAAAAAAAAAAAAAAALL;
          *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v46 = v8;
          v47 = v8;
          v44 = v8;
          v45 = v8;
          v42 = v8;
          v43 = v8;
          buf = v8;
          v9 = *MEMORY[0x277CECC38];
          v10 = strlen(*MEMORY[0x277CECC38]);
          if (v10 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v11 = v10;
          if (v10 >= 0x17)
          {
            if ((v10 | 7) == 0x17)
            {
              v15 = 25;
            }

            else
            {
              v15 = (v10 | 7) + 1;
            }

            p_dst = operator new(v15);
            *(&__dst + 1) = v11;
            v40 = v15 | 0x8000000000000000;
            *&__dst = p_dst;
          }

          else
          {
            HIBYTE(v40) = v10;
            p_dst = &__dst;
            if (!v10)
            {
LABEL_20:
              *(p_dst + v11) = 0;
              v16 = *MEMORY[0x277CECD60];
              v17 = strlen(*MEMORY[0x277CECD60]);
              if (v17 > 0x7FFFFFFFFFFFFFF7)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v18 = v17;
              if (v17 >= 0x17)
              {
                if ((v17 | 7) == 0x17)
                {
                  v20 = 25;
                }

                else
                {
                  v20 = (v17 | 7) + 1;
                }

                v19 = operator new(v20);
                *(&v37 + 1) = v18;
                v38 = v20 | 0x8000000000000000;
                *&v37 = v19;
              }

              else
              {
                HIBYTE(v38) = v17;
                v19 = &v37;
                if (!v17)
                {
LABEL_29:
                  v19[v18] = 0;
                  v36[23] = 21;
                  strcpy(v36, "TRACE transport error");
                  Timestamp::Timestamp(v32);
                  Timestamp::asString(v32, 0, 9, __p);
                  v31 = 0;
                  LOBYTE(v30) = 0;
                  ResetInfo::ResetInfo(&buf, &__dst, &v37, v36, __p, 7, &v30);
                  if (v35 < 0)
                  {
                    operator delete(__p[0]);
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v32, v33);
                    if ((SHIBYTE(v38) & 0x80000000) == 0)
                    {
LABEL_31:
                      if ((SHIBYTE(v40) & 0x80000000) == 0)
                      {
                        goto LABEL_32;
                      }

                      goto LABEL_36;
                    }
                  }

                  else
                  {
                    std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v32, v33);
                    if ((SHIBYTE(v38) & 0x80000000) == 0)
                    {
                      goto LABEL_31;
                    }
                  }

                  operator delete(v37);
                  if ((SHIBYTE(v40) & 0x80000000) == 0)
                  {
LABEL_32:
                    if (*(v5 + 352) != 2)
                    {
LABEL_43:
                      if ((SHIBYTE(v47) & 0x80000000) == 0)
                      {
                        goto LABEL_44;
                      }

                      goto LABEL_53;
                    }

LABEL_37:
                    v21 = *(v5 + 40);
                    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                    {
                      LOWORD(__dst) = 0;
                      _os_log_impl(&dword_23C1C4000, v21, OS_LOG_TYPE_DEFAULT, "#I Triggering modem reset for Trace transport error", &__dst, 2u);
                    }

                    ResetInfo::ResetInfo(&v23, &buf);
                    INTTrace::commandResetModem_sync(v5, &v23);
                    if (v29 < 0)
                    {
                      operator delete(v28);
                      if ((v27 & 0x80000000) == 0)
                      {
LABEL_41:
                        if ((v25 & 0x80000000) == 0)
                        {
                          goto LABEL_42;
                        }

                        goto LABEL_51;
                      }
                    }

                    else if ((v27 & 0x80000000) == 0)
                    {
                      goto LABEL_41;
                    }

                    operator delete(v26);
                    if ((v25 & 0x80000000) == 0)
                    {
LABEL_42:
                      if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                      {
                        goto LABEL_43;
                      }

                      goto LABEL_52;
                    }

LABEL_51:
                    operator delete(v24);
                    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_43;
                    }

LABEL_52:
                    operator delete(v23.__r_.__value_.__l.__data_);
                    if ((SHIBYTE(v47) & 0x80000000) == 0)
                    {
LABEL_44:
                      if ((SBYTE7(v45) & 0x80000000) == 0)
                      {
                        goto LABEL_45;
                      }

                      goto LABEL_54;
                    }

LABEL_53:
                    operator delete(*(&v46 + 1));
                    if ((SBYTE7(v45) & 0x80000000) == 0)
                    {
LABEL_45:
                      if ((SHIBYTE(v43) & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_55;
                    }

LABEL_54:
                    operator delete(v44);
                    if ((SHIBYTE(v43) & 0x80000000) == 0)
                    {
LABEL_46:
                      if ((SBYTE7(v42) & 0x80000000) == 0)
                      {
                        goto LABEL_47;
                      }

                      goto LABEL_56;
                    }

LABEL_55:
                    operator delete(*(&v42 + 1));
                    if ((SBYTE7(v42) & 0x80000000) == 0)
                    {
LABEL_47:
                      v6 = v49;
                      if (!v49)
                      {
                        return;
                      }

                      goto LABEL_57;
                    }

LABEL_56:
                    operator delete(buf);
                    v6 = v49;
                    if (!v49)
                    {
                      return;
                    }

                    goto LABEL_57;
                  }

LABEL_36:
                  operator delete(__dst);
                  if (*(v5 + 352) != 2)
                  {
                    goto LABEL_43;
                  }

                  goto LABEL_37;
                }
              }

              memmove(v19, v16, v18);
              goto LABEL_29;
            }
          }

          memmove(p_dst, v9, v11);
          goto LABEL_20;
        }
      }

LABEL_57:
      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v22 = v6;
        (v6->__on_zero_shared)();
        std::__shared_weak_count::__release_weak(v22);
      }
    }
  }
}

void sub_23C28CE40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ResetInfo::~ResetInfo(va);
  ResetInfo::~ResetInfo((v2 - 192));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 80);
  _Unwind_Resume(a1);
}

void sub_23C28CE6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a27, a28);
  if (a44 < 0)
  {
    operator delete(a39);
    if ((*(v44 - 201) & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 80);
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v44 - 201) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(*(v44 - 224));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 80);
  _Unwind_Resume(a1);
}

void INTTrace::commandResetModem_sync(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    dispatch_retain(*(a1 + 88));
    dispatch_group_enter(v4);
  }

  v5 = *(a1 + 80);
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = std::__shared_weak_count::lock(v5);
  v32 = v6;
  if (!v6)
  {
    goto LABEL_18;
  }

  v7 = v6;
  v8 = *(a1 + 72);
  v31 = v8;
  if (!v8)
  {
    goto LABEL_16;
  }

  if (!*(a1 + 248))
  {
    goto LABEL_8;
  }

  v30 = 0;
  LOBYTE(v29) = 0;
  Timestamp::Timestamp(v27);
  v26 = 0;
  LOWORD(v25) = 0;
  LOBYTE(v24) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v27, v28);
  if (v30 < 0)
  {
    operator delete(v29);
    if (!*(a1 + 264))
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_8:
    if (!*(a1 + 264))
    {
      goto LABEL_12;
    }
  }

  v23 = 0;
  LOBYTE(v22) = 0;
  Timestamp::Timestamp(v20);
  v19 = 0;
  LOBYTE(v18) = 0;
  v17 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v20, v21);
  if (v23 < 0)
  {
    operator delete(v22);
  }

LABEL_12:
  ResetInfo::ResetInfo(&v9, a2);
  abm::BasebandTracingTask::commandResetModem(v8, &v9);
  if (v15 < 0)
  {
    operator delete(v14);
    if ((v13 & 0x80000000) == 0)
    {
LABEL_14:
      if ((v11 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      operator delete(v10);
      if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_16:
        if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

      goto LABEL_24;
    }
  }

  else if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(v12);
  if (v11 < 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_24:
  operator delete(v9.__r_.__value_.__l.__data_);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_17:
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

LABEL_18:
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }
}

void sub_23C28D1A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, void *a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a28 < 0)
  {
    operator delete(__p);
    if ((a34 & 0x80000000) == 0)
    {
LABEL_3:
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a35, a36);
      if ((a43 & 0x80000000) == 0)
      {
LABEL_8:
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v44 - 80);
        if (v43)
        {
          dispatch_group_leave(v43);
          dispatch_release(v43);
        }

        _Unwind_Resume(a1);
      }

LABEL_7:
      operator delete(a38);
      goto LABEL_8;
    }
  }

  else if ((a34 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a29);
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a35, a36);
  if ((a43 & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void INTTrace::stopReader_sync(INTTrace *this)
{
  v2 = *(this + 20);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = abm::trace::TraceReader::stop(v2);
  v4 = *(this + 5);
  if (v3)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Succeeded stopping reader.", v5, 2u);
      if (*(this + 192) != 1)
      {
        return;
      }

      goto LABEL_8;
    }

LABEL_7:
    if (*(this + 192) != 1)
    {
      return;
    }

    goto LABEL_8;
  }

  if (!os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    goto LABEL_7;
  }

  *buf = 0;
  _os_log_error_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_ERROR, "Failed to stop reader", buf, 2u);
  if (*(this + 192) != 1)
  {
    return;
  }

LABEL_8:
  dispatch_group_leave(*(this + 11));
  *(this + 192) = 0;
}

void INTTrace::start_sync(INTTrace *this, group *a2)
{
  v121 = *MEMORY[0x277D85DE8];
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 24);
    if (v5 > 8)
    {
      v6 = "Unknown";
    }

    else
    {
      v6 = off_278BB9648[v5];
    }

    *buf = 136315138;
    *&buf[4] = v6;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Starting BB Trace with mode: %s", buf, 0xCu);
  }

  if ((*(this + 204) & 1) == 0 && !INTTrace::prepare_sync(this) && !*(this + 24))
  {
    *&v40 = 0xAAAAAAAAAAAAAAAALL;
    *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v119 = v40;
    v120 = v40;
    v117 = v40;
    v118 = v40;
    *&buf[16] = v40;
    v116 = v40;
    *buf = v40;
    v41 = *MEMORY[0x277CECC38];
    v42 = strlen(*MEMORY[0x277CECC38]);
    if (v42 > 0x7FFFFFFFFFFFFFF7)
    {
      goto LABEL_163;
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

      p_dst = operator new(v45);
      *(&__dst + 1) = v43;
      v114 = v45 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v114) = v42;
      p_dst = &__dst;
      if (!v42)
      {
LABEL_126:
        *(p_dst + v43) = 0;
        v46 = *MEMORY[0x277CECD60];
        v47 = strlen(*MEMORY[0x277CECD60]);
        if (v47 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v48 = v47;
        if (v47 >= 0x17)
        {
          if ((v47 | 7) == 0x17)
          {
            v50 = 25;
          }

          else
          {
            v50 = (v47 | 7) + 1;
          }

          v49 = operator new(v50);
          v112 = v50 | 0x8000000000000000;
          *&v111 = v49;
          *(&v111 + 1) = v48;
        }

        else
        {
          HIBYTE(v112) = v47;
          v49 = &v111;
          if (!v47)
          {
LABEL_135:
            v49[v48] = 0;
            v51 = operator new(0x20uLL);
            v109 = v51;
            v110 = xmmword_23C32CA80;
            strcpy(v51, "Failed to open trace transport");
            Timestamp::Timestamp(v105);
            Timestamp::asString(v105, 0, 9, v107);
            v104 = 0;
            LOBYTE(v103) = 0;
            ResetInfo::ResetInfo(buf, &__dst, &v111, &v109, v107, 7, &v103);
            if (v108 < 0)
            {
              operator delete(v107[0]);
            }

            std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v105, v106);
            operator delete(v51);
            if (SHIBYTE(v112) < 0)
            {
              operator delete(v111);
            }

            if (SHIBYTE(v114) < 0)
            {
              operator delete(__dst);
            }

            ResetInfo::ResetInfo(&v96, buf);
            INTTrace::commandResetModem_sync(this, &v96);
            if (v102 < 0)
            {
              operator delete(v101);
              if ((v100 & 0x80000000) == 0)
              {
LABEL_143:
                if ((v98 & 0x80000000) == 0)
                {
                  goto LABEL_144;
                }

                goto LABEL_152;
              }
            }

            else if ((v100 & 0x80000000) == 0)
            {
              goto LABEL_143;
            }

            operator delete(v99);
            if ((v98 & 0x80000000) == 0)
            {
LABEL_144:
              if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
              {
                goto LABEL_145;
              }

              goto LABEL_153;
            }

LABEL_152:
            operator delete(v97);
            if ((SHIBYTE(v96.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_145:
              if ((SHIBYTE(v120) & 0x80000000) == 0)
              {
                goto LABEL_146;
              }

              goto LABEL_154;
            }

LABEL_153:
            operator delete(v96.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v120) & 0x80000000) == 0)
            {
LABEL_146:
              if ((SBYTE7(v118) & 0x80000000) == 0)
              {
                goto LABEL_147;
              }

              goto LABEL_155;
            }

LABEL_154:
            operator delete(*(&v119 + 1));
            if ((SBYTE7(v118) & 0x80000000) == 0)
            {
LABEL_147:
              if ((SHIBYTE(v116) & 0x80000000) == 0)
              {
                goto LABEL_148;
              }

              goto LABEL_156;
            }

LABEL_155:
            operator delete(v117);
            if ((SHIBYTE(v116) & 0x80000000) == 0)
            {
LABEL_148:
              if ((buf[23] & 0x80000000) != 0)
              {
                goto LABEL_157;
              }

              goto LABEL_116;
            }

LABEL_156:
            operator delete(*&buf[24]);
            if ((buf[23] & 0x80000000) != 0)
            {
LABEL_157:
              operator delete(*buf);
            }

LABEL_116:
            v39 = *MEMORY[0x277D85DE8];
            return;
          }
        }

        memmove(v49, v46, v48);
        goto LABEL_135;
      }
    }

    memmove(p_dst, v41, v43);
    goto LABEL_126;
  }

  if (!*(this + 31))
  {
    goto LABEL_11;
  }

  v95 = 0;
  LOBYTE(v94) = 0;
  Timestamp::Timestamp(v92);
  v91 = 0;
  LOBYTE(v90) = 0;
  v89 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v92, v93);
  if (v95 < 0)
  {
    operator delete(v94);
    if (!*(this + 33))
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
    if (!*(this + 33))
    {
      goto LABEL_15;
    }
  }

  v87 = 0;
  LOBYTE(v86) = 0;
  Timestamp::Timestamp(v84);
  v83 = 0;
  LOBYTE(v82) = 0;
  v81 = 0;
  LOBYTE(v80) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v84, v85);
  if (v87 < 0)
  {
    operator delete(v86);
  }

LABEL_15:
  v7 = *(this + 22);
  if (v7)
  {
    if (((*(*v7 + 128))(v7) & 1) == 0)
    {
      v8 = *(this + 5);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Trace Command Driver has not been started!", buf, 2u);
      }

      goto LABEL_116;
    }

LABEL_76:
    if ((*(this + 151) & 0x8000000000000000) != 0)
    {
      if (*(this + 17))
      {
        goto LABEL_78;
      }
    }

    else if (*(this + 151))
    {
LABEL_78:
      v30 = *(this + 22);
      if (v30 && ((*(*v30 + 128))(v30) & 1) == 0)
      {
        (*(**(this + 22) + 112))(*(this + 22));
      }

      v31 = *(this + 24);
      gr_name = a2->gr_name;
      v71 = gr_name;
      if (gr_name)
      {
        dispatch_retain(gr_name);
      }

      v33 = (this + 128);
      if (*(this + 151) < 0)
      {
        std::string::__init_copy_ctor_external(&v70, *(this + 16), *(this + 17));
      }

      else
      {
        *&v70.__r_.__value_.__l.__data_ = *v33;
        v70.__r_.__value_.__r.__words[2] = *(this + 18);
      }

      v35 = INTTrace::sendConfig_sync(this, &v71, &v70, v31 == 8, 0, 0);
      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (gr_name)
      {
        dispatch_release(gr_name);
      }

      if ((v35 & 1) == 0)
      {
        v36 = *(this + 5);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          if (*(this + 151) < 0)
          {
            v33 = *v33;
          }

          *buf = 136315138;
          *&buf[4] = v33;
          _os_log_error_impl(&dword_23C1C4000, v36, OS_LOG_TYPE_ERROR, "Failed to send config: %s", buf, 0xCu);
        }

        goto LABEL_116;
      }

      if (!*(this + 31))
      {
        goto LABEL_168;
      }

LABEL_94:
      v69 = 0;
      LOBYTE(v68) = 0;
      Timestamp::Timestamp(v66);
      v65 = 0;
      LOBYTE(v64) = 0;
      v63 = 0;
      LOBYTE(v62) = 0;
      abm::trace::TraceInfo::push();
      std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v66, v67);
      if (v69 < 0)
      {
        operator delete(v68);
        if (*(this + 33))
        {
LABEL_97:
          v61 = 0;
          LOBYTE(v60) = 0;
          Timestamp::Timestamp(v58);
          v57 = 0;
          LOBYTE(v56) = 0;
          v55 = 0;
          LOBYTE(v54.gr_gid) = 0;
          abm::trace::TraceInfo::push();
          std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v58, v59);
          if (v61 < 0)
          {
            operator delete(v60);
          }
        }
      }

      else
      {
LABEL_168:
        if (*(this + 33))
        {
          goto LABEL_97;
        }
      }

      v37 = a2->gr_name;
      v54.gr_passwd = v37;
      if (v37)
      {
        dispatch_retain(v37);
      }

      INTTrace::setAnomalyDetectionLevelViaDriver_sync(this, &v54.gr_passwd, *(this + 91));
      if (v37)
      {
        dispatch_release(v37);
      }

      v38 = a2->gr_name;
      v54.gr_name = v38;
      if (v38)
      {
        dispatch_retain(v38);
      }

      INTTrace::setAnomalyDetectionTimeoutViaDriver_sync(this, &v54, *(this + 92));
      if (v38)
      {
        dispatch_release(v38);
      }

      goto LABEL_116;
    }

    v34 = *(this + 5);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23C1C4000, v34, OS_LOG_TYPE_DEFAULT, "#I No config is given. Skip to send the configuration", buf, 2u);
    }

    goto LABEL_94;
  }

  v9 = *(this + 5);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I Creating Trace Command Driver", buf, 2u);
  }

  v10 = pthread_mutex_lock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  v11 = off_280C059B8;
  if (!off_280C059B8)
  {
    CommandDriverFactory::create_default_global(buf, v10);
    v12 = *buf;
    *buf = 0;
    *&buf[8] = 0;
    v13 = *(&off_280C059B8 + 1);
    off_280C059B8 = v12;
    if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    v11 = off_280C059B8;
  }

  *&v111 = v11;
  *(&v111 + 1) = *(&off_280C059B8 + 1);
  if (*(&off_280C059B8 + 1))
  {
    atomic_fetch_add_explicit((*(&off_280C059B8 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance);
  (*(*v11 + 128))(&__dst, v11);
  v15 = __dst;
  __dst = 0uLL;
  v16 = *(this + 23);
  *(this + 11) = v15;
  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  v17 = *(&__dst + 1);
  if (*(&__dst + 1) && !atomic_fetch_add((*(&__dst + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
  }

  v18 = *(&v111 + 1);
  if (*(&v111 + 1) && !atomic_fetch_add((*(&v111 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  if (*(this + 22))
  {
    v19 = *(this + 2);
    if (!v19 || (v20 = *(this + 1), (v21 = std::__shared_weak_count::lock(v19)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v22 = v21;
    p_shared_weak_owners = &v21->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v21->__on_zero_shared)(v21);
      std::__shared_weak_count::__release_weak(v22);
    }

    memset(buf, 170, 16);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1174405120;
    aBlock[2] = ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke;
    aBlock[3] = &__block_descriptor_tmp_18_0;
    aBlock[4] = this;
    aBlock[5] = v20;
    v79 = v22;
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    v24 = _Block_copy(aBlock);
    v25 = *(this + 3);
    if (v25)
    {
      dispatch_retain(*(this + 3));
    }

    *buf = v24;
    *&buf[8] = v25;
    *&__dst = 0xAAAAAAAAAAAAAAAALL;
    *(&__dst + 1) = 0xAAAAAAAAAAAAAAAALL;
    v76[0] = MEMORY[0x277D85DD0];
    v76[1] = 1174405120;
    v76[2] = ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke_19;
    v76[3] = &__block_descriptor_tmp_24_0;
    v76[4] = this;
    v76[5] = v20;
    v77 = v22;
    atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v26 = _Block_copy(v76);
    v27 = *(this + 3);
    if (v27)
    {
      dispatch_retain(*(this + 3));
    }

    *&__dst = v26;
    *(&__dst + 1) = v27;
    v28 = *(this + 22);
    if (v24)
    {
      v74 = _Block_copy(v24);
      object = v25;
      if (!v25)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v74 = 0;
      object = v25;
      if (!v25)
      {
LABEL_52:
        (*(*v28 + 80))(v28, &v74);
        if (object)
        {
          dispatch_release(object);
        }

        if (v74)
        {
          _Block_release(v74);
        }

        v29 = *(this + 22);
        if (v26)
        {
          v72 = _Block_copy(v26);
          v73 = v27;
          if (!v27)
          {
LABEL_59:
            (*(*v29 + 88))(v29, &v72);
            if (v73)
            {
              dispatch_release(v73);
            }

            if (v72)
            {
              _Block_release(v72);
            }

            (*(**(this + 22) + 96))(*(this + 22));
            if (v27)
            {
              dispatch_release(v27);
            }

            if (v26)
            {
              _Block_release(v26);
            }

            if (v77)
            {
              std::__shared_weak_count::__release_weak(v77);
            }

            if (v25)
            {
              dispatch_release(v25);
            }

            if (v24)
            {
              _Block_release(v24);
            }

            if (v79)
            {
              std::__shared_weak_count::__release_weak(v79);
            }

            std::__shared_weak_count::__release_weak(v22);
            goto LABEL_76;
          }
        }

        else
        {
          v72 = 0;
          v73 = v27;
          if (!v27)
          {
            goto LABEL_59;
          }
        }

        dispatch_retain(v27);
        goto LABEL_59;
      }
    }

    dispatch_retain(v25);
    goto LABEL_52;
  }

  v52 = GetOsLogContext()[1];
  if (os_log_type_enabled(v52, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&dword_23C1C4000, v52, OS_LOG_TYPE_FAULT, "Trace command driver must be present!", buf, 2u);
  }

  v53 = GetOsLogContext()[1];
  if (os_log_type_enabled(v53, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315906;
    *&buf[4] = "ABM ASSERT";
    *&buf[12] = 2080;
    *&buf[14] = "fTraceCommandDriver";
    *&buf[22] = 2080;
    *&buf[24] = "/Library/Caches/com.apple.xbs/Sources/AppleBasebandServices_Manager/AppleBasebandManager/ABMHelper/Server/Tasks/Wireless/Trace/INTTrace/INTTrace.cpp";
    LOWORD(v116) = 1024;
    *(&v116 + 2) = 920;
    _os_log_fault_impl(&dword_23C1C4000, v53, OS_LOG_TYPE_FAULT, "%s (%s): File: %s Line: %d", buf, 0x26u);
    __break(1u);
LABEL_163:
    std::string::__throw_length_error[abi:ne200100]();
  }

  __break(1u);
}

void sub_23C28E1E4(_Unwind_Exception *a1)
{
  ResetInfo::~ResetInfo(&STACK[0x248]);
  ResetInfo::~ResetInfo((v1 - 224));
  _Unwind_Resume(a1);
}

void sub_23C28E214(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2FF]) < 0)
  {
    operator delete(STACK[0x2E8]);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&STACK[0x2D0], STACK[0x2D8]);
  operator delete(v1);
  if (SLOBYTE(STACK[0x32F]) < 0)
  {
    operator delete(STACK[0x318]);
  }

  if (*(v2 - 233) < 0)
  {
    operator delete(*(v2 - 256));
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke(void *a1, NSObject **a2)
{
  v49 = *MEMORY[0x277D85DE8];
  v3 = a1[6];
  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = a1[4];
  v6 = std::__shared_weak_count::lock(v3);
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = a1[5];
  if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  else
  {
    v8 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v8);
    if (!v7)
    {
      goto LABEL_42;
    }
  }

  v9 = *(v5 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_DEFAULT, "#I ARI Low Power enter event received", buf, 2u);
  }

  *&buf[8] = 0xAAAAAAAAAAAAAAAALL;
  v46 = 0xAAAAAAAAAAAAAALL;
  *buf = 0xAAAAAAAAAAAAAA00;
  if (!*(v5 + 248))
  {
    goto LABEL_11;
  }

  v44 = 0;
  LOBYTE(v43) = 0;
  Timestamp::Timestamp(v41);
  v40 = 0;
  LOBYTE(v39) = 0;
  v38 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v41, v42);
  if (v44 < 0)
  {
    operator delete(v43);
    if (!*(v5 + 264))
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
    if (!*(v5 + 264))
    {
      goto LABEL_15;
    }
  }

  v36 = 0;
  LOBYTE(v35) = 0;
  Timestamp::Timestamp(v33);
  v32 = 0;
  LOBYTE(v31) = 0;
  v30 = 0;
  LOBYTE(v29) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v33, v34);
  if (v36 < 0)
  {
    operator delete(v35);
  }

LABEL_15:
  *(v5 + 240) = 1;
  v10 = *(v5 + 208);
  if (v10)
  {
    v11 = *(v5 + 239);
    if (v11 < 0)
    {
      if (*(v5 + 224))
      {
        goto LABEL_18;
      }
    }

    else if (*(v5 + 239))
    {
LABEL_18:
      v12 = (v5 + 216);
      v13 = *a2;
      v28 = v13;
      if (v13)
      {
        dispatch_retain(v13);
        LOBYTE(v11) = *(v5 + 239);
      }

      if ((v11 & 0x80) != 0)
      {
        std::string::__init_copy_ctor_external(&v27, *(v5 + 216), *(v5 + 224));
      }

      else
      {
        *&v27.__r_.__value_.__l.__data_ = *v12;
        v27.__r_.__value_.__r.__words[2] = *(v5 + 232);
      }

      *(v5 + 240) = INTTrace::sendConfig_sync(v5, &v28, &v27, v10 == 2, 1u, 0);
      if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v27.__r_.__value_.__l.__data_);
      }

      if (v13)
      {
        dispatch_release(v13);
      }

      if (buf != v12)
      {
        v20 = *(v5 + 239);
        if (SHIBYTE(v46) < 0)
        {
          if (v20 >= 0)
          {
            v21 = (v5 + 216);
          }

          else
          {
            v21 = *(v5 + 216);
          }

          if (v20 >= 0)
          {
            v22 = *(v5 + 239);
          }

          else
          {
            v22 = *(v5 + 224);
          }

          std::string::__assign_no_alias<false>(buf, v21, v22);
        }

        else if ((*(v5 + 239) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(buf, *(v5 + 216), *(v5 + 224));
        }

        else
        {
          *buf = *v12;
          v46 = *(v5 + 232);
        }
      }

      goto LABEL_33;
    }
  }

  v14 = *a2;
  v26 = v14;
  if (v14)
  {
    dispatch_retain(v14);
  }

  v25 = 4;
  strcpy(v24, "Stop");
  *(v5 + 240) = INTTrace::sendConfig_sync(v5, &v26, v24, 0, 1u, 0);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

  if (v14)
  {
    dispatch_release(v14);
  }

  if (SHIBYTE(v46) < 0)
  {
    *&buf[8] = 4;
    v15 = *buf;
  }

  else
  {
    HIBYTE(v46) = 4;
    v15 = buf;
  }

  strcpy(v15, "Stop");
  INTTrace::stopReader_sync(v5);
LABEL_33:
  v16 = *(v5 + 240);
  v17 = *(v5 + 40);
  if (v16)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = buf;
      if (v46 < 0)
      {
        v18 = *buf;
      }

      *v47 = 136315138;
      v48 = v18;
      _os_log_debug_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_DEBUG, "#D Last sleep entry succeeded with config: %s", v47, 0xCu);
      if (SHIBYTE(v46) < 0)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }
  }

  else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v23 = buf;
    if (v46 < 0)
    {
      v23 = *buf;
    }

    *v47 = 136315138;
    v48 = v23;
    _os_log_error_impl(&dword_23C1C4000, v17, OS_LOG_TYPE_ERROR, "Last sleep entry failed with config: %s", v47, 0xCu);
    if (SHIBYTE(v46) < 0)
    {
      goto LABEL_41;
    }

    goto LABEL_42;
  }

  if (SHIBYTE(v46) < 0)
  {
LABEL_41:
    operator delete(*buf);
  }

LABEL_42:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23C28E9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, char a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (v55)
  {
    dispatch_release(v55);
  }

  if (*(v56 - 89) < 0)
  {
    operator delete(*(v56 - 112));
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::sendConfig_sync(uint64_t a1, dispatch_object_t *a2, const std::string::value_type *a3, unsigned int a4, unsigned int a5, int a6)
{
  v84 = *MEMORY[0x277D85DE8];
  v52 = *(a1 + 108);
  v75 = 0;
  v76 = 0;
  v77 = 0;
  v72 = 0;
  v73 = 0;
  buf[23] = 19;
  v74 = 0;
  strcpy(buf, "kKeyTraceConfigPath");
  defaults::bbtrace::get(buf, &v72);
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
    v9 = a3;
    if ((a3[23] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = a3;
    if ((a3[23] & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = *a3;
LABEL_3:
  KTLGetTraceConfigFilename(buf, v9);
  v10 = SHIBYTE(v74);
  v71 = *&buf[16];
  v70 = *buf;
  if (v74 >= 0)
  {
    v11 = HIBYTE(v74);
  }

  else
  {
    v11 = v73;
  }

  memset(v69, 170, sizeof(v69));
  v12 = buf[23];
  if (buf[23] >= 0)
  {
    v13 = HIBYTE(*&buf[16]);
  }

  else
  {
    v13 = *(&v70 + 1);
  }

  v14 = v13 + v11;
  if (v13 + v11 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v51 = a2;
  if (v14 <= 0x16)
  {
    memset(v69, 0, sizeof(v69));
    v16 = v69;
    HIBYTE(v69[2]) = v13 + v11;
    if (!v11)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((v14 | 7) == 0x17)
  {
    v15 = 25;
  }

  else
  {
    v15 = (v14 | 7) + 1;
  }

  v16 = operator new(v15);
  v69[1] = (v13 + v11);
  v69[2] = (v15 | 0x8000000000000000);
  v69[0] = v16;
  if (v11)
  {
LABEL_17:
    if (v10 >= 0)
    {
      v17 = &v72;
    }

    else
    {
      v17 = v72;
    }

    memmove(v16, v17, v11);
  }

LABEL_21:
  if (v13)
  {
    if (v12 >= 0)
    {
      v18 = &v70;
    }

    else
    {
      v18 = v70;
    }

    memmove(&v16[v11], v18, v13);
  }

  v16[v11 + v13] = 0;
  if (ctu::fs::load_file())
  {
    v20 = v75;
    v19 = v76;
    while (v19 != v20)
    {
      v21 = *(v19 - 1);
      if (v21 != 13 && v21 != 10)
      {
        break;
      }

      v76 = --v19;
      v23 = *(a1 + 40);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v23, OS_LOG_TYPE_DEFAULT, "#I Trailing EOL character removed", buf, 2u);
        v20 = v75;
        v19 = v76;
      }
    }

    v26 = *(a1 + 40);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
LABEL_50:
      v31 = *v51;
      if (*v51)
      {
        dispatch_retain(*v51);
        dispatch_group_enter(v31);
      }

      v32 = *(a1 + 16);
      if (!v32 || (v33 = *(a1 + 8), (v34 = std::__shared_weak_count::lock(v32)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v35 = v34;
      atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v36 = *(a1 + 176);
        if (v36)
        {
          goto LABEL_56;
        }
      }

      else
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v35);
        v36 = *(a1 + 176);
        if (v36)
        {
LABEL_56:
          if (a6)
          {
            v37 = dispatch_group_create();
            dispatch_group_enter(v37);
            v36 = *(a1 + 176);
            __p = 0;
            v65 = 0;
            v66 = 0;
            v38 = v75;
            v39 = v76 - v75;
            if (v76 == v75)
            {
              goto LABEL_67;
            }
          }

          else
          {
            v37 = 0;
            __p = 0;
            v65 = 0;
            v66 = 0;
            v38 = v75;
            v39 = v76 - v75;
            if (v76 == v75)
            {
              goto LABEL_67;
            }
          }

          if ((v39 & 0x8000000000000000) != 0)
          {
            std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
          }

          __p = operator new(v39);
          v66 = __p + v39;
          memcpy(__p, v38, v39);
          v65 = __p + v39;
LABEL_67:
          v63 = v37;
          if (v37)
          {
            dispatch_retain(v37);
          }

          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 1174405120;
          aBlock[2] = ___ZN8INTTrace15sendConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbbb_block_invoke;
          aBlock[3] = &__block_descriptor_tmp_27_1;
          aBlock[4] = a1;
          group = v31;
          if (v31)
          {
            dispatch_retain(v31);
            dispatch_group_enter(group);
          }

          v58 = v33;
          v59 = v35;
          atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          if (a3[23] < 0)
          {
            std::string::__init_copy_ctor_external(&v60, *a3, *(a3 + 1));
          }

          else
          {
            v60 = *a3;
          }

          v42 = _Block_copy(aBlock);
          v43 = *(a1 + 24);
          if (v43)
          {
            dispatch_retain(*(a1 + 24));
          }

          v61 = v42;
          object = v43;
          v25 = (*(*v36 + 136))(v36, &__p, &v63, a4, a5, v52, &v61);
          if (object)
          {
            dispatch_release(object);
          }

          if (v61)
          {
            _Block_release(v61);
          }

          if (v63)
          {
            dispatch_release(v63);
          }

          if (__p)
          {
            v65 = __p;
            operator delete(__p);
          }

          if (!a6 || (v44 = dispatch_time(0, 5000000000), !dispatch_group_wait(v37, v44)))
          {
            if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v60.__r_.__value_.__l.__data_);
            }

            if (v59)
            {
              std::__shared_weak_count::__release_weak(v59);
            }

            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            if (v37)
            {
              dispatch_release(v37);
            }

            goto LABEL_110;
          }

          v45 = *(a1 + 40);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            if (a3[23] < 0)
            {
              a3 = *a3;
            }

            *buf = 136315138;
            *&buf[4] = a3;
            _os_log_error_impl(&dword_23C1C4000, v45, OS_LOG_TYPE_ERROR, "Timeout waiting for confirmation while sending %s config", buf, 0xCu);
            if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_93:
              v46 = v59;
              if (!v59)
              {
                goto LABEL_95;
              }

              goto LABEL_94;
            }
          }

          else if ((SHIBYTE(v60.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

          operator delete(v60.__r_.__value_.__l.__data_);
          v46 = v59;
          if (!v59)
          {
LABEL_95:
            if (group)
            {
              dispatch_group_leave(group);
              if (group)
              {
                dispatch_release(group);
              }
            }

            if (v37)
            {
              dispatch_release(v37);
            }

LABEL_100:
            v25 = 0;
LABEL_110:
            std::__shared_weak_count::__release_weak(v35);
            if (v31)
            {
              dispatch_group_leave(v31);
              dispatch_release(v31);
            }

            goto LABEL_112;
          }

LABEL_94:
          std::__shared_weak_count::__release_weak(v46);
          goto LABEL_95;
        }
      }

      v40 = *(a1 + 40);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v40, OS_LOG_TYPE_ERROR, "Trace command driver is not ready!", buf, 2u);
      }

      goto LABEL_100;
    }

    v27 = v19 - v20;
    if ((v19 - v20) > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v27 > 0x16)
    {
      if ((v27 | 7) == 0x17)
      {
        v41 = 25;
      }

      else
      {
        v41 = (v27 | 7) + 1;
      }

      v28 = operator new(v41);
      __dst[1] = (v19 - v20);
      v68 = v41 | 0x8000000000000000;
      __dst[0] = v28;
      if (v19 == v20)
      {
        goto LABEL_44;
      }
    }

    else
    {
      HIBYTE(v68) = v19 - v20;
      v28 = __dst;
      if (v19 == v20)
      {
LABEL_44:
        *(v28 + v27) = 0;
        v29 = __dst;
        if (v68 < 0)
        {
          v29 = __dst[0];
        }

        v30 = v69;
        if (SHIBYTE(v69[2]) < 0)
        {
          v30 = v69[0];
        }

        *buf = 136316162;
        *&buf[4] = v29;
        *&buf[12] = 2080;
        *&buf[14] = v30;
        *&buf[22] = 1024;
        v79 = a4;
        v80 = 1024;
        v81 = a5;
        v82 = 1024;
        v83 = v52;
        _os_log_impl(&dword_23C1C4000, v26, OS_LOG_TYPE_DEFAULT, "#I Sending trace config to BB: %s (%s), background tracing: %d, wait for idle indication: %d, privacy level: %d", buf, 0x28u);
        if (SHIBYTE(v68) < 0)
        {
          operator delete(__dst[0]);
        }

        goto LABEL_50;
      }
    }

    memmove(v28, v20, v19 - v20);
    goto LABEL_44;
  }

  v24 = *(a1 + 40);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v50 = v69;
    if (SHIBYTE(v69[2]) < 0)
    {
      v50 = v69[0];
    }

    *buf = 136315138;
    *&buf[4] = v50;
    _os_log_error_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_ERROR, "Failed to load from %s", buf, 0xCu);
  }

  v25 = 0;
LABEL_112:
  if (SHIBYTE(v69[2]) < 0)
  {
    operator delete(v69[0]);
    if ((SHIBYTE(v71) & 0x80000000) == 0)
    {
LABEL_114:
      if ((SHIBYTE(v74) & 0x80000000) == 0)
      {
        goto LABEL_115;
      }

LABEL_120:
      operator delete(v72);
      v47 = v75;
      if (!v75)
      {
        goto LABEL_117;
      }

      goto LABEL_116;
    }
  }

  else if ((SHIBYTE(v71) & 0x80000000) == 0)
  {
    goto LABEL_114;
  }

  operator delete(v70);
  if (SHIBYTE(v74) < 0)
  {
    goto LABEL_120;
  }

LABEL_115:
  v47 = v75;
  if (v75)
  {
LABEL_116:
    v76 = v47;
    operator delete(v47);
  }

LABEL_117:
  v48 = *MEMORY[0x277D85DE8];
  return v25;
}

void sub_23C28F34C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, dispatch_group_t group, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, dispatch_object_t object, void *__p, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a19)
  {
    std::__shared_weak_count::__release_weak(a19);
    v51 = group;
    if (!group)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v51 = group;
    if (!group)
    {
LABEL_6:
      if (object)
      {
        dispatch_release(object);
        v52 = __p;
        if (!__p)
        {
LABEL_8:
          if (!v48)
          {
            goto LABEL_9;
          }

          goto LABEL_13;
        }
      }

      else
      {
        v52 = __p;
        if (!__p)
        {
          goto LABEL_8;
        }
      }

      operator delete(v52);
      if (!v48)
      {
LABEL_9:
        std::__shared_weak_count::__release_weak(v47);
        if (!v46)
        {
LABEL_15:
          if (a40 < 0)
          {
            operator delete(a35);
          }

          if (a46 < 0)
          {
            operator delete(a41);
          }

          if (*(v49 - 169) < 0)
          {
            operator delete(*(v49 - 192));
          }

          v53 = *(v49 - 168);
          if (v53)
          {
            *(v49 - 160) = v53;
            operator delete(v53);
          }

          _Unwind_Resume(a1);
        }

LABEL_14:
        dispatch_group_leave(v46);
        dispatch_release(v46);
        goto LABEL_15;
      }

LABEL_13:
      dispatch_release(v48);
      std::__shared_weak_count::__release_weak(v47);
      if (!v46)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  dispatch_group_leave(v51);
  dispatch_release(group);
  goto LABEL_6;
}

void ___ZN8INTTrace10start_syncEN8dispatch5groupE_block_invoke_19(void *a1)
{
  v79 = *MEMORY[0x277D85DE8];
  v2 = a1[6];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = a1[4];
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = a1[5];
  if (atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v6 = v4;
    (v4->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v6);
    if (!v5)
    {
      goto LABEL_22;
    }
  }

  if (!*(v3 + 248))
  {
    goto LABEL_9;
  }

  v71 = 0;
  LOBYTE(v70) = 0;
  Timestamp::Timestamp(v68);
  v67 = 0;
  LOBYTE(v66) = 0;
  v65 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v68, v69);
  if (v71 < 0)
  {
    operator delete(v70);
    if (!*(v3 + 264))
    {
      goto LABEL_13;
    }
  }

  else
  {
LABEL_9:
    if (!*(v3 + 264))
    {
      goto LABEL_13;
    }
  }

  v63 = 0;
  LOBYTE(v62) = 0;
  Timestamp::Timestamp(v60);
  v59 = 0;
  LOBYTE(v58) = 0;
  v57 = 0;
  LOBYTE(v56) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v60, v61);
  if (v63 < 0)
  {
    operator delete(v62);
  }

LABEL_13:
  if ((INTTrace::startReader_sync(v3) & 1) == 0)
  {
    v13 = *(v3 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    *buf = 0;
    v24 = "Failed to start trace reader during sleep exit";
    v25 = v13;
    v26 = 2;
    goto LABEL_64;
  }

  if ((*(v3 + 240) & 1) == 0)
  {
    v7 = *(v3 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Detected failure on last LPM entry", buf, 2u);
      if (*(v3 + 352) == 2)
      {
LABEL_17:
        *&v8 = 0xAAAAAAAAAAAAAAAALL;
        *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v77 = v8;
        v78 = v8;
        v75 = v8;
        v76 = v8;
        v73 = v8;
        v74 = v8;
        *buf = v8;
        v9 = *MEMORY[0x277CECC38];
        v10 = strlen(*MEMORY[0x277CECC38]);
        if (v10 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v11 = v10;
        if (v10 >= 0x17)
        {
          if ((v10 | 7) == 0x17)
          {
            v15 = 25;
          }

          else
          {
            v15 = (v10 | 7) + 1;
          }

          p_dst = operator new(v15);
          *(&__dst + 1) = v11;
          v55 = v15 | 0x8000000000000000;
          *&__dst = p_dst;
        }

        else
        {
          HIBYTE(v55) = v10;
          p_dst = &__dst;
          if (!v10)
          {
LABEL_28:
            *(p_dst + v11) = 0;
            v16 = *MEMORY[0x277CECD38];
            v17 = strlen(*MEMORY[0x277CECD38]);
            if (v17 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v18 = v17;
            if (v17 >= 0x17)
            {
              if ((v17 | 7) == 0x17)
              {
                v20 = 25;
              }

              else
              {
                v20 = (v17 | 7) + 1;
              }

              v19 = operator new(v20);
              *(&v52 + 1) = v18;
              v53 = v20 | 0x8000000000000000;
              *&v52 = v19;
            }

            else
            {
              HIBYTE(v53) = v17;
              v19 = &v52;
              if (!v17)
              {
LABEL_37:
                v19[v18] = 0;
                v21 = operator new(0x28uLL);
                v50 = v21;
                v51 = xmmword_23C32D530;
                strcpy(v21, "Detected failure on last LPM entry");
                Timestamp::Timestamp(v46);
                Timestamp::asString(v46, 0, 9, v48);
                v45 = 0;
                LOBYTE(v44) = 0;
                ResetInfo::ResetInfo(buf, &__dst, &v52, &v50, v48, 7, &v44);
                if (v49 < 0)
                {
                  operator delete(v48[0]);
                }

                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v46, v47);
                operator delete(v21);
                if (SHIBYTE(v53) < 0)
                {
                  operator delete(v52);
                  if ((SHIBYTE(v55) & 0x80000000) == 0)
                  {
LABEL_41:
                    v22 = *(v3 + 40);
                    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_42;
                  }
                }

                else if ((SHIBYTE(v55) & 0x80000000) == 0)
                {
                  goto LABEL_41;
                }

                operator delete(__dst);
                v22 = *(v3 + 40);
                if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
LABEL_43:
                  ResetInfo::ResetInfo(&v37, buf);
                  INTTrace::commandResetModem_sync(v3, &v37);
                  if (v43 < 0)
                  {
                    operator delete(v42);
                    if ((v41 & 0x80000000) == 0)
                    {
LABEL_45:
                      if ((v39 & 0x80000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_57;
                    }
                  }

                  else if ((v41 & 0x80000000) == 0)
                  {
                    goto LABEL_45;
                  }

                  operator delete(v40);
                  if ((v39 & 0x80000000) == 0)
                  {
LABEL_46:
                    if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                    {
                      goto LABEL_47;
                    }

                    goto LABEL_58;
                  }

LABEL_57:
                  operator delete(v38);
                  if ((SHIBYTE(v37.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
LABEL_47:
                    if ((SHIBYTE(v78) & 0x80000000) == 0)
                    {
                      goto LABEL_48;
                    }

                    goto LABEL_59;
                  }

LABEL_58:
                  operator delete(v37.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v78) & 0x80000000) == 0)
                  {
LABEL_48:
                    if ((SBYTE7(v76) & 0x80000000) == 0)
                    {
                      goto LABEL_49;
                    }

                    goto LABEL_60;
                  }

LABEL_59:
                  operator delete(*(&v77 + 1));
                  if ((SBYTE7(v76) & 0x80000000) == 0)
                  {
LABEL_49:
                    if ((SHIBYTE(v74) & 0x80000000) == 0)
                    {
                      goto LABEL_50;
                    }

                    goto LABEL_61;
                  }

LABEL_60:
                  operator delete(v75);
                  if ((SHIBYTE(v74) & 0x80000000) == 0)
                  {
LABEL_50:
                    if (SBYTE7(v73) < 0)
                    {
                      goto LABEL_62;
                    }

                    goto LABEL_22;
                  }

LABEL_61:
                  operator delete(*(&v73 + 1));
                  if (SBYTE7(v73) < 0)
                  {
LABEL_62:
                    operator delete(*buf);
                    v23 = *MEMORY[0x277D85DE8];
                    return;
                  }

LABEL_22:
                  v14 = *MEMORY[0x277D85DE8];
                  return;
                }

LABEL_42:
                LOWORD(__dst) = 0;
                _os_log_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_DEFAULT, "#I Triggering modem reset for LPM Entry Failure", &__dst, 2u);
                goto LABEL_43;
              }
            }

            memmove(v19, v16, v18);
            goto LABEL_37;
          }
        }

        memmove(p_dst, v9, v11);
        goto LABEL_28;
      }
    }

    else if (*(v3 + 352) == 2)
    {
      goto LABEL_17;
    }
  }

  v28 = *(v3 + 151);
  if (v28 < 0)
  {
    if (!*(v3 + 136))
    {
      goto LABEL_22;
    }
  }

  else if (!*(v3 + 151))
  {
    goto LABEL_22;
  }

  v29 = *(v3 + 96);
  v30 = *(v3 + 88);
  v36 = v30;
  if (v30)
  {
    dispatch_retain(v30);
    LOBYTE(v28) = *(v3 + 151);
  }

  v31 = (v3 + 128);
  if ((v28 & 0x80) != 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(v3 + 128), *(v3 + 136));
  }

  else
  {
    *&v35.__r_.__value_.__l.__data_ = *v31;
    v35.__r_.__value_.__r.__words[2] = *(v3 + 144);
  }

  v32 = INTTrace::sendConfig_sync(v3, &v36, &v35, v29 == 8, 0, 0);
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (v30)
  {
    dispatch_release(v30);
  }

  v33 = *(v3 + 40);
  if ((v32 & 1) == 0)
  {
    if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_22;
    }

    if (*(v3 + 151) < 0)
    {
      v31 = *v31;
    }

    *buf = 136315138;
    *&buf[4] = v31;
    v24 = "Failed to send config: %s";
    v25 = v33;
    v26 = 12;
LABEL_64:
    _os_log_error_impl(&dword_23C1C4000, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
    v27 = *MEMORY[0x277D85DE8];
    return;
  }

  if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_22;
  }

  if (*(v3 + 151) < 0)
  {
    v31 = *v31;
  }

  *buf = 136315138;
  *&buf[4] = v31;
  _os_log_debug_impl(&dword_23C1C4000, v33, OS_LOG_TYPE_DEBUG, "#D Succeeded sending config: %s", buf, 0xCu);
  v34 = *MEMORY[0x277D85DE8];
}

void sub_23C28FC0C(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t INTTrace::setAnomalyDetectionLevelViaDriver_sync(uint64_t a1, dispatch_object_t *a2, uint64_t a3)
{
  v5 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v5);
  }

  v6 = *(a1 + 176);
  if (!v6 || !(*(*v6 + 128))(v6))
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Unable to set anomaly detection level via trace command driver because it is not ready", buf, 2u);
      v14 = 0;
      if (!v5)
      {
        return v14;
      }
    }

    else
    {
      v14 = 0;
      if (!v5)
      {
        return v14;
      }
    }

LABEL_33:
    dispatch_group_leave(v5);
    dispatch_release(v5);
    return v14;
  }

  v7 = *(a1 + 16);
  if (!v7 || (v8 = *(a1 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  memset(buf, 170, sizeof(buf));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8INTTrace38setAnomalyDetectionLevelViaDriver_syncEN8dispatch5groupEN5trace21AnomalyDetectionLevelE_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_61_2;
  aBlock[4] = a1;
  group = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(group);
  }

  v21 = v8;
  v22 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = *(a1 + 24);
  if (v12)
  {
    dispatch_retain(*(a1 + 24));
  }

  *buf = v11;
  *&buf[8] = v12;
  v13 = *(a1 + 176);
  if (v11)
  {
    v17 = _Block_copy(v11);
    object = v12;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 0;
  object = v12;
  if (v12)
  {
LABEL_15:
    dispatch_retain(v12);
  }

LABEL_16:
  (*(*v13 + 200))(v13, a3, &v17);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v10);
  v14 = 1;
  if (v5)
  {
    goto LABEL_33;
  }

  return v14;
}

void sub_23C290048(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v20 - 64);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v19);
  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t INTTrace::setAnomalyDetectionTimeoutViaDriver_sync(INTTrace *this, group *a2, uint64_t a3)
{
  gr_name = a2->gr_name;
  if (a2->gr_name)
  {
    dispatch_retain(a2->gr_name);
    dispatch_group_enter(gr_name);
  }

  v6 = *(this + 22);
  if (!v6 || !(*(*v6 + 128))(v6))
  {
    v15 = *(this + 5);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_ERROR, "Unable to set anomaly detection debounce timeout via trace command driver because it is not ready", buf, 2u);
      v14 = 0;
      if (!gr_name)
      {
        return v14;
      }
    }

    else
    {
      v14 = 0;
      if (!gr_name)
      {
        return v14;
      }
    }

LABEL_33:
    dispatch_group_leave(gr_name);
    dispatch_release(gr_name);
    return v14;
  }

  v7 = *(this + 2);
  if (!v7 || (v8 = *(this + 1), (v9 = std::__shared_weak_count::lock(v7)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v10 = v9;
  atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v10);
  }

  memset(buf, 170, sizeof(buf));
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1174405120;
  aBlock[2] = ___ZN8INTTrace40setAnomalyDetectionTimeoutViaDriver_syncEN8dispatch5groupEj_block_invoke;
  aBlock[3] = &__block_descriptor_tmp_64_1;
  aBlock[4] = this;
  group = gr_name;
  if (gr_name)
  {
    dispatch_retain(gr_name);
    dispatch_group_enter(group);
  }

  v21 = v8;
  v22 = v10;
  atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v11 = _Block_copy(aBlock);
  v12 = *(this + 3);
  if (v12)
  {
    dispatch_retain(*(this + 3));
  }

  *buf = v11;
  *&buf[8] = v12;
  v13 = *(this + 22);
  if (v11)
  {
    v17 = _Block_copy(v11);
    object = v12;
    if (!v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v17 = 0;
  object = v12;
  if (v12)
  {
LABEL_15:
    dispatch_retain(v12);
  }

LABEL_16:
  (*(*v13 + 208))(v13, a3, &v17);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    _Block_release(v17);
  }

  if (v12)
  {
    dispatch_release(v12);
  }

  if (v11)
  {
    _Block_release(v11);
  }

  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v10);
  v14 = 1;
  if (gr_name)
  {
    goto LABEL_33;
  }

  return v14;
}

void sub_23C290378(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_group_t group, uint64_t a17, std::__shared_weak_count *a18)
{
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(&a9);
  dispatch::callback<void({block_pointer})(ctu::cf::CFSharedRef<__CFError>)>::~callback(v20 - 64);
  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::__shared_weak_count::__release_weak(v19);
  if (v18)
  {
    dispatch_group_leave(v18);
    dispatch_release(v18);
  }

  _Unwind_Resume(a1);
}

uint64_t INTTrace::sendFlushRequest_sync(INTTrace *this)
{
  result = *(this + 22);
  if (result)
  {
    result = (*(*result + 128))(result);
    if (result)
    {
      if (!*(this + 24))
      {
        v3 = *(**(this + 22) + 144);

        return v3();
      }
    }
  }

  return result;
}

void ___ZN8INTTrace15sendConfig_syncEN8dispatch5groupENSt3__112basic_stringIcNS2_11char_traitsIcEENS2_9allocatorIcEEEEbbb_block_invoke(uint64_t a1, uint64_t *a2)
{
  v52 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 56);
  if (!v3)
  {
    goto LABEL_60;
  }

  v5 = *(a1 + 32);
  v6 = std::__shared_weak_count::lock(v3);
  v44 = v6;
  if (!v6)
  {
    goto LABEL_60;
  }

  if (*(a1 + 48))
  {
    v7 = *a2;
    v8 = *(v5 + 40);
    if (v7)
    {
      if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v7;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to send config: %@", &buf, 0xCu);
      }

      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v50 = v9;
      v51 = v9;
      v48 = v9;
      v49 = v9;
      v46 = v9;
      v47 = v9;
      buf = v9;
      v10 = *MEMORY[0x277CECC38];
      v11 = strlen(*MEMORY[0x277CECC38]);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v16 = 25;
        }

        else
        {
          v16 = (v11 | 7) + 1;
        }

        p_dst = operator new(v16);
        *(&__dst + 1) = v12;
        v42 = v16 | 0x8000000000000000;
        *&__dst = p_dst;
      }

      else
      {
        HIBYTE(v42) = v11;
        p_dst = &__dst;
        if (!v11)
        {
LABEL_21:
          *(p_dst + v12) = 0;
          v17 = *MEMORY[0x277CECD38];
          v18 = strlen(*MEMORY[0x277CECD38]);
          if (v18 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v19 = v18;
          if (v18 >= 0x17)
          {
            if ((v18 | 7) == 0x17)
            {
              v21 = 25;
            }

            else
            {
              v21 = (v18 | 7) + 1;
            }

            v20 = operator new(v21);
            *(&v39 + 1) = v19;
            v40 = v21 | 0x8000000000000000;
            *&v39 = v20;
          }

          else
          {
            HIBYTE(v40) = v18;
            v20 = &v39;
            if (!v18)
            {
LABEL_30:
              v20[v19] = 0;
              v38[23] = 21;
              strcpy(v38, "Failed to send config");
              Timestamp::Timestamp(v34);
              Timestamp::asString(v34, 0, 9, __p);
              v33 = 0;
              LOBYTE(v32) = 0;
              ResetInfo::ResetInfo(&buf, &__dst, &v39, v38, __p, 7, &v32);
              if (v37 < 0)
              {
                operator delete(__p[0]);
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34, v35);
                if ((SHIBYTE(v40) & 0x80000000) == 0)
                {
LABEL_32:
                  if ((SHIBYTE(v42) & 0x80000000) == 0)
                  {
                    goto LABEL_33;
                  }

                  goto LABEL_37;
                }
              }

              else
              {
                std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v34, v35);
                if ((SHIBYTE(v40) & 0x80000000) == 0)
                {
                  goto LABEL_32;
                }
              }

              operator delete(v39);
              if ((SHIBYTE(v42) & 0x80000000) == 0)
              {
LABEL_33:
                if ((*(v5 + 352) - 1) > 1)
                {
LABEL_44:
                  if ((SHIBYTE(v51) & 0x80000000) == 0)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_54;
                }

LABEL_38:
                v22 = *(v5 + 40);
                if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(__dst) = 0;
                  _os_log_impl(&dword_23C1C4000, v22, OS_LOG_TYPE_DEFAULT, "#I Triggering modem reset for failure to send config", &__dst, 2u);
                }

                ResetInfo::ResetInfo(&v25, &buf);
                INTTrace::commandResetModem_sync(v5, &v25);
                if (v31 < 0)
                {
                  operator delete(v30);
                  if ((v29 & 0x80000000) == 0)
                  {
LABEL_42:
                    if ((v27 & 0x80000000) == 0)
                    {
                      goto LABEL_43;
                    }

                    goto LABEL_52;
                  }
                }

                else if ((v29 & 0x80000000) == 0)
                {
                  goto LABEL_42;
                }

                operator delete(v28);
                if ((v27 & 0x80000000) == 0)
                {
LABEL_43:
                  if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    goto LABEL_44;
                  }

                  goto LABEL_53;
                }

LABEL_52:
                operator delete(v26);
                if ((SHIBYTE(v25.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  goto LABEL_44;
                }

LABEL_53:
                operator delete(v25.__r_.__value_.__l.__data_);
                if ((SHIBYTE(v51) & 0x80000000) == 0)
                {
LABEL_45:
                  if ((SBYTE7(v49) & 0x80000000) == 0)
                  {
                    goto LABEL_46;
                  }

                  goto LABEL_55;
                }

LABEL_54:
                operator delete(*(&v50 + 1));
                if ((SBYTE7(v49) & 0x80000000) == 0)
                {
LABEL_46:
                  if ((SHIBYTE(v47) & 0x80000000) == 0)
                  {
                    goto LABEL_47;
                  }

                  goto LABEL_56;
                }

LABEL_55:
                operator delete(v48);
                if ((SHIBYTE(v47) & 0x80000000) == 0)
                {
LABEL_47:
                  if ((SBYTE7(v46) & 0x80000000) == 0)
                  {
                    goto LABEL_48;
                  }

                  goto LABEL_57;
                }

LABEL_56:
                operator delete(*(&v46 + 1));
                if ((SBYTE7(v46) & 0x80000000) == 0)
                {
LABEL_48:
                  v6 = v44;
                  if (!v44)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_58;
                }

LABEL_57:
                operator delete(buf);
                v6 = v44;
                if (!v44)
                {
                  goto LABEL_60;
                }

                goto LABEL_58;
              }

LABEL_37:
              operator delete(__dst);
              if ((*(v5 + 352) - 1) > 1)
              {
                goto LABEL_44;
              }

              goto LABEL_38;
            }
          }

          memmove(v20, v17, v19);
          goto LABEL_30;
        }
      }

      memmove(p_dst, v10, v12);
      goto LABEL_21;
    }

    v14 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v15 = (a1 + 64);
      if (*(a1 + 87) < 0)
      {
        v15 = *v15;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEFAULT, "#I Succeeded to send config - %s", &buf, 0xCu);
    }

    v6 = v14;
  }

LABEL_58:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v23 = v6;
    (v6->__on_zero_shared)();
    std::__shared_weak_count::__release_weak(v23);
  }

LABEL_60:
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C290924(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ResetInfo::~ResetInfo(va);
  ResetInfo::~ResetInfo((v2 - 192));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2 - 208);
  _Unwind_Resume(a1);
}

void sub_23C290950(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a27, a28);
  if (a44 < 0)
  {
    operator delete(a39);
    if ((a50 & 0x80000000) == 0)
    {
LABEL_5:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
      _Unwind_Resume(a1);
    }
  }

  else if ((a50 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a45);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v50 - 208);
  _Unwind_Resume(a1);
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 87) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v7 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v7;
  }
}

void sub_23C290A74(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(v1 + 40);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(v1 + 40);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c29_ZTSNSt3__18weak_ptrI5TraceEE64c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(a1 + 40);
    if (v4)
    {

      dispatch_release(v4);
    }
  }
}

void INTTrace::getStateAsDict_sync(uint64_t a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  v8 = MEMORY[0x277D86468];
  if (v6)
  {
    *a3 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    *a3 = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x23EECEE80](v7) == v8)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v9 = xpc_null_create();
LABEL_8:
  *a3 = v9;
LABEL_9:
  xpc_release(v7);
  v10 = *a3;
  if (MEMORY[0x23EECEE80](*a3) == v8)
  {
    if (*(a1 + 104))
    {
      v12 = "true";
    }

    else
    {
      v12 = "false";
    }

    v13 = xpc_string_create(v12);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Enabled", v13);
    v14 = xpc_null_create();
    xpc_release(v13);
    xpc_release(v14);
    v15 = *(a1 + 116);
    if (v15 > 3)
    {
      v16 = "unknown";
    }

    else
    {
      v16 = off_278BB9628[v15];
    }

    v17 = xpc_string_create(v16);
    if (!v17)
    {
      v17 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Live_Filter_Setting", v17);
    v18 = xpc_null_create();
    xpc_release(v17);
    xpc_release(v18);
    v19 = *(a1 + 96);
    if (v19 > 8)
    {
      v20 = "Unknown";
    }

    else
    {
      v20 = off_278BB9648[v19];
    }

    v21 = xpc_string_create(v20);
    if (!v21)
    {
      v21 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Mode", v21);
    v22 = xpc_null_create();
    xpc_release(v21);
    xpc_release(v22);
    v23 = *(a1 + 100);
    if (v23 == 1)
    {
      v24 = &buf.__r_.__value_.__s.__data_[9];
      *(&buf.__r_.__value_.__s + 23) = 9;
      qmemcpy(&buf, "Last_Used", 9);
    }

    else if (v23)
    {
      v24 = &buf.__r_.__value_.__s.__data_[11];
      *(&buf.__r_.__value_.__s + 23) = 11;
      qmemcpy(&buf, "UnSpecified", 11);
    }

    else
    {
      v24 = &buf.__r_.__value_.__s.__data_[7];
      *(&buf.__r_.__value_.__s + 23) = 7;
      qmemcpy(&buf, "Default", 7);
    }

    *v24 = 0;
    v25 = xpc_string_create(&buf);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    xpc_dictionary_set_value(v10, "Reset_Mode_Boot", v25);
    v26 = xpc_null_create();
    xpc_release(v25);
    xpc_release(v26);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    std::to_string(&buf, *(a1 + 152));
    __p = buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v28 = xpc_string_create(p_p);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    v29 = *a3;
    xpc_dictionary_set_value(*a3, "TraceOwnership", v28);
    v30 = xpc_null_create();
    xpc_release(v28);
    xpc_release(v30);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    INTTrace::historyAsString_sync(a1, &buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v32 = xpc_string_create(p_buf);
    if (!v32)
    {
      v32 = xpc_null_create();
    }

    xpc_dictionary_set_value(v29, "History", v32);
    v33 = xpc_null_create();
    xpc_release(v32);
    xpc_release(v33);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      v34 = (a1 + 128);
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v34 = (a1 + 128);
      if ((*(a1 + 151) & 0x80000000) == 0)
      {
        goto LABEL_50;
      }
    }

    v34 = *v34;
LABEL_50:
    v35 = xpc_string_create(v34);
    if (!v35)
    {
      v35 = xpc_null_create();
    }

    xpc_dictionary_set_value(v29, "File", v35);
    v36 = xpc_null_create();
    xpc_release(v35);
    xpc_release(v36);
    v37 = *(a1 + 120);
    memset(&__p, 0, sizeof(__p));
    std::to_string(&buf, v37);
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

    v40 = *a3;
    xpc_dictionary_set_value(*a3, "FileSize", v39);
    v41 = xpc_null_create();
    xpc_release(v39);
    xpc_release(v41);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v42 = *(a1 + 208);
    capabilities::trace::asString();
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v43 = &buf;
    }

    else
    {
      v43 = buf.__r_.__value_.__r.__words[0];
    }

    v44 = xpc_string_create(v43);
    if (!v44)
    {
      v44 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "Enabled_During_Sleep", v44);
    v45 = xpc_null_create();
    xpc_release(v44);
    xpc_release(v45);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
      v46 = (a1 + 216);
      if ((*(a1 + 239) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }
    }

    else
    {
      v46 = (a1 + 216);
      if ((*(a1 + 239) & 0x80000000) == 0)
      {
        goto LABEL_66;
      }
    }

    v46 = *v46;
LABEL_66:
    v47 = xpc_string_create(v46);
    if (!v47)
    {
      v47 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "File_Sleep", v47);
    v48 = xpc_null_create();
    xpc_release(v47);
    xpc_release(v48);
    v49 = *(a1 + 352);
    if (v49 > 2)
    {
      v50 = "Unknown";
    }

    else
    {
      v50 = off_278BB9690[v49];
    }

    v51 = xpc_string_create(v50);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "Error_Handling", v51);
    v52 = xpc_null_create();
    xpc_release(v51);
    xpc_release(v52);
    if (*(a1 + 356))
    {
      v53 = "true";
    }

    else
    {
      v53 = "false";
    }

    v54 = xpc_string_create(v53);
    if (!v54)
    {
      v54 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, "Retain_Previous_Trace", v54);
    v55 = xpc_null_create();
    xpc_release(v54);
    xpc_release(v55);
    if (*(a2 + 23) >= 0)
    {
      v56 = a2;
    }

    else
    {
      v56 = *a2;
    }

    v57 = xpc_string_create(v56);
    if (!v57)
    {
      v57 = xpc_null_create();
    }

    xpc_dictionary_set_value(v40, *MEMORY[0x277CECCC8], v57);
    v58 = xpc_null_create();
    xpc_release(v57);
    xpc_release(v58);
    std::to_string(&buf, *(a1 + 360));
    v97 = buf;
    size = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      size = v97.__r_.__value_.__l.__size_;
      v62 = (v97.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
      if (v62 - v97.__r_.__value_.__l.__size_ < 5)
      {
        v63 = 0x7FFFFFFFFFFFFFF7;
        v60 = v97.__r_.__value_.__l.__size_ + 5;
        if (0x7FFFFFFFFFFFFFF7 - (v97.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v97.__r_.__value_.__l.__size_ + 5 - v62)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v61 = v97.__r_.__value_.__r.__words[0];
        if (v62 >= 0x3FFFFFFFFFFFFFF3)
        {
          v66 = 0;
LABEL_102:
          v67 = operator new(v63);
          v68 = v67;
          if (size)
          {
            memmove(v67, v61, size);
          }

          v69 = v68 + size;
          *(v69 + 4) = 115;
          *v69 = 1885490464;
          if (!v66)
          {
            operator delete(v61);
          }

          v97.__r_.__value_.__l.__size_ = v60;
          v97.__r_.__value_.__r.__words[2] = v63 | 0x8000000000000000;
          v97.__r_.__value_.__r.__words[0] = v68;
          v70 = (v68 + v60);
LABEL_113:
          *v70 = 0;
          __p = v97;
          memset(&v97, 0, sizeof(v97));
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v74 = &__p;
          }

          else
          {
            v74 = __p.__r_.__value_.__r.__words[0];
          }

          v75 = xpc_string_create(v74);
          if (!v75)
          {
            v75 = xpc_null_create();
          }

          v76 = *a3;
          xpc_dictionary_set_value(*a3, "PeakBandwidthMbps", v75);
          v77 = xpc_null_create();
          xpc_release(v75);
          xpc_release(v77);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_120;
            }
          }

          else if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_120;
          }

          operator delete(v97.__r_.__value_.__l.__data_);
LABEL_120:
          v78 = xpc_int64_create(*(a1 + 364));
          if (!v78)
          {
            v78 = xpc_null_create();
          }

          xpc_dictionary_set_value(v76, "AnomalyDetectionLevel", v78);
          v79 = xpc_null_create();
          xpc_release(v78);
          xpc_release(v79);
          v80 = *(a1 + 368);
          memset(&v97, 0, sizeof(v97));
          std::to_string(&buf, v80);
          v97 = buf;
          v81 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v81 = v97.__r_.__value_.__l.__size_;
            v84 = (v97.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v84 - v97.__r_.__value_.__l.__size_ < 2)
            {
              v85 = 0x7FFFFFFFFFFFFFF7;
              v82 = v97.__r_.__value_.__l.__size_ + 2;
              if (0x7FFFFFFFFFFFFFF7 - (v97.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v97.__r_.__value_.__l.__size_ + 2 - v84)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v83 = v97.__r_.__value_.__r.__words[0];
              if (v84 >= 0x3FFFFFFFFFFFFFF3)
              {
                v88 = 0;
LABEL_139:
                v89 = operator new(v85);
                v90 = v89;
                if (v81)
                {
                  memmove(v89, v83, v81);
                }

                *(v90 + v81) = 29472;
                if (!v88)
                {
                  operator delete(v83);
                }

                v97.__r_.__value_.__l.__size_ = v82;
                v97.__r_.__value_.__r.__words[2] = v85 | 0x8000000000000000;
                v97.__r_.__value_.__r.__words[0] = v90;
                v91 = (v90 + v82);
LABEL_149:
                *v91 = 0;
                __p = v97;
                memset(&v97, 0, sizeof(v97));
                if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v94 = &__p;
                }

                else
                {
                  v94 = __p.__r_.__value_.__r.__words[0];
                }

                v95 = xpc_string_create(v94);
                if (!v95)
                {
                  v95 = xpc_null_create();
                }

                xpc_dictionary_set_value(*a3, "AnomalyDetectionTimeout", v95);
                v96 = xpc_null_create();
                xpc_release(v95);
                xpc_release(v96);
                if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__p.__r_.__value_.__l.__data_);
                  if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                  {
                    return;
                  }
                }

                else if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
                {
                  return;
                }

                operator delete(v97.__r_.__value_.__l.__data_);
                return;
              }

LABEL_130:
              v86 = 2 * v84;
              if (v82 > 2 * v84)
              {
                v86 = v82;
              }

              if ((v86 | 7) == 0x17)
              {
                v87 = 25;
              }

              else
              {
                v87 = (v86 | 7) + 1;
              }

              if (v86 >= 0x17)
              {
                v85 = v87;
              }

              else
              {
                v85 = 23;
              }

              v88 = v84 == 22;
              goto LABEL_139;
            }

            v92 = v97.__r_.__value_.__r.__words[0];
            *(v97.__r_.__value_.__r.__words[0] + v97.__r_.__value_.__l.__size_) = 29472;
            v93 = v81 + 2;
            if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) - 21) < 2)
            {
              v82 = SHIBYTE(v97.__r_.__value_.__r.__words[2]) + 2;
              v83 = &v97;
              v84 = 22;
              goto LABEL_130;
            }

            v92 = &v97;
            *(&v97.__r_.__value_.__l.__data_ + SHIBYTE(v97.__r_.__value_.__r.__words[2])) = 29472;
            v93 = v81 + 2;
            if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
LABEL_145:
              *(&v97.__r_.__value_.__s + 23) = v93 & 0x7F;
LABEL_148:
              v91 = v92 + v93;
              goto LABEL_149;
            }
          }

          v97.__r_.__value_.__l.__size_ = v93;
          goto LABEL_148;
        }

LABEL_93:
        v64 = 2 * v62;
        if (v60 > 2 * v62)
        {
          v64 = v60;
        }

        if ((v64 | 7) == 0x17)
        {
          v65 = 25;
        }

        else
        {
          v65 = (v64 | 7) + 1;
        }

        if (v64 >= 0x17)
        {
          v63 = v65;
        }

        else
        {
          v63 = 23;
        }

        v66 = v62 == 22;
        goto LABEL_102;
      }

      v71 = v97.__r_.__value_.__r.__words[0];
    }

    else
    {
      if ((SHIBYTE(v97.__r_.__value_.__r.__words[2]) - 18) < 5)
      {
        v60 = SHIBYTE(v97.__r_.__value_.__r.__words[2]) + 5;
        v61 = &v97;
        v62 = 22;
        goto LABEL_93;
      }

      v71 = &v97;
    }

    v72 = v71 + size;
    v72[4] = 115;
    *v72 = 1885490464;
    v73 = size + 5;
    if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
    {
      v97.__r_.__value_.__l.__size_ = size + 5;
    }

    else
    {
      *(&v97.__r_.__value_.__s + 23) = v73 & 0x7F;
    }

    v70 = v71 + v73;
    goto LABEL_113;
  }

  v11 = *(a1 + 40);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "Failed to create state dump dictionary", &buf, 2u);
  }
}

void sub_23C291674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (v22 < 0)
  {
    operator delete(__p);
    xpc::dict::~dict(v21);
    _Unwind_Resume(a1);
  }

  xpc::dict::~dict(v21);
  _Unwind_Resume(a1);
}

uint64_t INTTrace::historyAsString_sync@<X0>(uint64_t this@<X0>, char *a2@<X8>)
{
  v2 = a2;
  if (!*(this + 112))
  {
    a2[23] = 8;
    strcpy(a2, "Infinite");
    return this;
  }

  v3 = this;
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[7] = v4;
  v22[8] = v4;
  v22[5] = v4;
  v22[6] = v4;
  v22[3] = v4;
  v22[4] = v4;
  v22[1] = v4;
  v22[2] = v4;
  v21 = v4;
  v22[0] = v4;
  *v19 = v4;
  v20 = v4;
  v17 = v4;
  v18 = v4;
  v15 = v4;
  v16 = v4;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  std::to_string(&v24, *(v3 + 112));
  __p = v24;
  if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, p_p, size);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, " MB", 3);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    v8 = BYTE8(v21);
    if ((BYTE8(v21) & 0x10) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v10 = v21;
    if (v21 < *(&v18 + 1))
    {
      *&v21 = *(&v18 + 1);
      v10 = *(&v18 + 1);
    }

    v11 = v18;
    v9 = v10 - v18;
    if ((v10 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_29;
    }

    goto LABEL_17;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v8 = BYTE8(v21);
  if ((BYTE8(v21) & 0x10) != 0)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v8 & 8) == 0)
  {
    v9 = 0;
    v2[23] = 0;
    goto LABEL_25;
  }

  v11 = *(&v16 + 1);
  v9 = *(&v17 + 1) - *(&v16 + 1);
  if (*(&v17 + 1) - *(&v16 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
  {
LABEL_29:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_17:
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
    *(v2 + 1) = v9;
    *(v2 + 2) = v12 | 0x8000000000000000;
    *v2 = v13;
    v2 = v13;
  }

  else
  {
    v2[23] = v9;
    if (!v9)
    {
      goto LABEL_25;
    }
  }

  memmove(v2, v11, v9);
LABEL_25:
  v2[v9] = 0;
  *&v15 = *MEMORY[0x277D82828];
  *(&v15 + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v15 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  *(&v15 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v16);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v22);
}

void sub_23C291B48(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C2918F4);
}

void sub_23C291B54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t INTTrace::dumpState_sync@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v131 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v130[7] = v6;
  v130[8] = v6;
  v130[5] = v6;
  v130[6] = v6;
  v130[3] = v6;
  v130[4] = v6;
  v130[1] = v6;
  v130[2] = v6;
  v129 = v6;
  v130[0] = v6;
  *v127 = v6;
  v128 = v6;
  v125 = v6;
  v126 = v6;
  v123 = v6;
  v124 = v6;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v123);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "\n----- BB Trace Dump State -----\n", 33);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "Trace Enabled                 : ", 32);
  *(v7 + *(*v7 - 24) + 8) |= 1u;
  v8 = *(a1 + 104);
  v9 = MEMORY[0x23EECDF10]();
  v132.__r_.__value_.__s.__data_[0] = 10;
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, &v132, 1);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Live Enabled Setting          : ", 32);
  v12 = *(a1 + 116);
  if (v12 > 3)
  {
    v13 = "unknown";
  }

  else
  {
    v13 = off_278BB9628[v12];
  }

  v14 = strlen(v13);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v13, v14);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, &v132, 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "Mode                          : ", 32);
  v18 = *(a1 + 96);
  if (v18 > 8)
  {
    v19 = "Unknown";
  }

  else
  {
    v19 = off_278BB9648[v18];
  }

  v20 = strlen(v19);
  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, &v132, 1);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Reset Mode On Reboot          : ", 32);
  v24 = *(a1 + 100);
  if (v24 == 1)
  {
    v25 = 9;
    v122 = 9;
    qmemcpy(v121, "Last_Used", 9);
  }

  else if (v24)
  {
    v25 = 11;
    v122 = 11;
    qmemcpy(v121, "UnSpecified", 11);
  }

  else
  {
    v25 = 7;
    v122 = 7;
    qmemcpy(v121, "Default", 7);
  }

  *(v121 + v25) = 0;
  v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v121, v25);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, &v132, 1);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Trace Ownership               : ", 32);
  std::to_string(&v132, *(a1 + 152));
  v120 = v132;
  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v120;
  }

  else
  {
    v29 = v120.__r_.__value_.__r.__words[0];
  }

  if ((v120.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v120.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v120.__r_.__value_.__l.__size_;
  }

  v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, v29, size);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, &v132, 1);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "History (MB)                  : ", 32);
  INTTrace::historyAsString_sync(a1, v118);
  if ((v119 & 0x80u) == 0)
  {
    v34 = v118;
  }

  else
  {
    v34 = v118[0];
  }

  if ((v119 & 0x80u) == 0)
  {
    v35 = v119;
  }

  else
  {
    v35 = v118[1];
  }

  v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v34, v35);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, &v132, 1);
  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "Privacy Level                 : ", 32);
  v39 = *(a1 + 108);
  if (v39 > 3)
  {
    v40 = "Unknown";
  }

  else
  {
    v40 = off_278BB9608[v39];
  }

  v41 = strlen(v40);
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v40, v41);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, &v132, 1);
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "Config File                   : ", 32);
  v45 = *(a1 + 151);
  if (v45 >= 0)
  {
    v46 = a1 + 128;
  }

  else
  {
    v46 = *(a1 + 128);
  }

  if (v45 >= 0)
  {
    v47 = *(a1 + 151);
  }

  else
  {
    v47 = *(a1 + 136);
  }

  v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, &v132, 1);
  v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "Max memory file count         : ", 32);
  v51 = *(a1 + 124);
  if (v51)
  {
    std::to_string(&v132, v51);
    v117 = v132;
  }

  else
  {
    *(&v117.__r_.__value_.__s + 23) = 8;
    strcpy(&v117, "No limit");
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v117;
  }

  else
  {
    v52 = v117.__r_.__value_.__r.__words[0];
  }

  if ((v117.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v117.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v117.__r_.__value_.__l.__size_;
  }

  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, &v132, 1);
  v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "File Size (Bytes)             : ", 32);
  v57 = MEMORY[0x23EECDF40](v56, *(a1 + 120));
  v132.__r_.__value_.__s.__data_[0] = 10;
  v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, &v132, 1);
  v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "Transport Read Size           : ", 32);
  v60 = MEMORY[0x23EECDF40](v59, *(a1 + 196));
  v132.__r_.__value_.__s.__data_[0] = 10;
  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, &v132, 1);
  v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "Transport Read Count          : ", 32);
  v63 = MEMORY[0x23EECDF40](v62, *(a1 + 200));
  v132.__r_.__value_.__s.__data_[0] = 10;
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, &v132, 1);
  v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, "Sleep Trace Mode              : ", 32);
  v66 = *(a1 + 208);
  capabilities::trace::asString();
  if ((v116 & 0x80u) == 0)
  {
    v67 = v115;
  }

  else
  {
    v67 = v115[0];
  }

  if ((v116 & 0x80u) == 0)
  {
    v68 = v116;
  }

  else
  {
    v68 = v115[1];
  }

  v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v67, v68);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, &v132, 1);
  v71 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, "Sleep Config File             : ", 32);
  v72 = *(a1 + 239);
  if (v72 >= 0)
  {
    v73 = a1 + 216;
  }

  else
  {
    v73 = *(a1 + 216);
  }

  if (v72 >= 0)
  {
    v74 = *(a1 + 239);
  }

  else
  {
    v74 = *(a1 + 224);
  }

  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v71, v73, v74);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, &v132, 1);
  v77 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, "Trace Error Handling          : ", 32);
  v78 = *(a1 + 352);
  if (v78 > 2)
  {
    v79 = "Unknown";
  }

  else
  {
    v79 = off_278BB9690[v78];
  }

  v80 = strlen(v79);
  v81 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v77, v79, v80);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v81, &v132, 1);
  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v82, "Retain Previous Trace         : ", 32);
  *(v83 + *(*v83 - 24) + 8) |= 1u;
  v84 = *(a1 + 356);
  v85 = MEMORY[0x23EECDF10]();
  v132.__r_.__value_.__s.__data_[0] = 10;
  v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v85, &v132, 1);
  v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "Peak Bandwidth (Mbps)         : ", 32);
  std::to_string(&v132, *(a1 + 360));
  v114 = v132;
  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = &v114;
  }

  else
  {
    v88 = v114.__r_.__value_.__r.__words[0];
  }

  if ((v114.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = HIBYTE(v114.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v89 = v114.__r_.__value_.__l.__size_;
  }

  v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, v88, v89);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v91 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, &v132, 1);
  v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v91, "Anomaly Detection Level       : ", 32);
  std::to_string(&v132, *(a1 + 364));
  v113 = v132;
  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = &v113;
  }

  else
  {
    v93 = v113.__r_.__value_.__r.__words[0];
  }

  if ((v113.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = HIBYTE(v113.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v94 = v113.__r_.__value_.__l.__size_;
  }

  v95 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, v93, v94);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v95, &v132, 1);
  v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "Anomaly Detection Timeout (s) : ", 32);
  std::to_string(&v132, *(a1 + 368));
  __p = v132;
  if ((v132.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v99 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v99 = __p.__r_.__value_.__l.__size_;
  }

  v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, p_p, v99);
  v132.__r_.__value_.__s.__data_[0] = 10;
  v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, &v132, 1);
  v102 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v101, "Reason                        : ", 32);
  v103 = *(a2 + 23);
  if (v103 >= 0)
  {
    v104 = a2;
  }

  else
  {
    v104 = *a2;
  }

  if (v103 >= 0)
  {
    v105 = *(a2 + 23);
  }

  else
  {
    v105 = *(a2 + 8);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v102, v104, v105);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_83:
      if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_84;
      }

      goto LABEL_100;
    }
  }

  else if ((SHIBYTE(v113.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_83;
  }

  operator delete(v113.__r_.__value_.__l.__data_);
  if ((SHIBYTE(v114.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_84:
    if ((v116 & 0x80000000) == 0)
    {
      goto LABEL_85;
    }

    goto LABEL_101;
  }

LABEL_100:
  operator delete(v114.__r_.__value_.__l.__data_);
  if ((v116 & 0x80000000) == 0)
  {
LABEL_85:
    if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_86;
    }

    goto LABEL_102;
  }

LABEL_101:
  operator delete(v115[0]);
  if ((SHIBYTE(v117.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_86:
    if ((v119 & 0x80000000) == 0)
    {
      goto LABEL_87;
    }

    goto LABEL_103;
  }

LABEL_102:
  operator delete(v117.__r_.__value_.__l.__data_);
  if ((v119 & 0x80000000) == 0)
  {
LABEL_87:
    if ((SHIBYTE(v120.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_88;
    }

LABEL_104:
    operator delete(v120.__r_.__value_.__l.__data_);
    if ((v122 & 0x80000000) == 0)
    {
      goto LABEL_89;
    }

    goto LABEL_105;
  }

LABEL_103:
  operator delete(v118[0]);
  if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_104;
  }

LABEL_88:
  if ((v122 & 0x80000000) == 0)
  {
    goto LABEL_89;
  }

LABEL_105:
  operator delete(v121[0]);
LABEL_89:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v123, "\n---------------------------------\n", 35);
  if ((BYTE8(v129) & 0x10) != 0)
  {
    v107 = v129;
    if (v129 < *(&v126 + 1))
    {
      *&v129 = *(&v126 + 1);
      v107 = *(&v126 + 1);
    }

    v108 = v126;
    v106 = v107 - v126;
    if ((v107 - v126) >= 0x7FFFFFFFFFFFFFF8)
    {
      goto LABEL_115;
    }
  }

  else
  {
    if ((BYTE8(v129) & 8) == 0)
    {
      v106 = 0;
      a3[23] = 0;
      goto LABEL_111;
    }

    v108 = *(&v124 + 1);
    v106 = *(&v125 + 1) - *(&v124 + 1);
    if (*(&v125 + 1) - *(&v124 + 1) >= 0x7FFFFFFFFFFFFFF8uLL)
    {
LABEL_115:
      std::string::__throw_length_error[abi:ne200100]();
    }
  }

  if (v106 >= 0x17)
  {
    if ((v106 | 7) == 0x17)
    {
      v109 = 25;
    }

    else
    {
      v109 = (v106 | 7) + 1;
    }

    v110 = operator new(v109);
    *(a3 + 1) = v106;
    *(a3 + 2) = v109 | 0x8000000000000000;
    *a3 = v110;
    a3 = v110;
    goto LABEL_110;
  }

  a3[23] = v106;
  if (v106)
  {
LABEL_110:
    memmove(a3, v108, v106);
  }

LABEL_111:
  a3[v106] = 0;
  *&v123 = *MEMORY[0x277D82828];
  *(&v123 + *(v123 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v123 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v128) < 0)
  {
    operator delete(v127[1]);
  }

  *(&v123 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v124);
  std::ostream::~ostream();
  return MEMORY[0x23EECE150](v130);
}

void sub_23C2925D4(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C291FA4);
}

void sub_23C2925E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58, char a59)
{
  if (a40 < 0)
  {
    operator delete(__p);
    if ((a46 & 0x80000000) == 0)
    {
LABEL_3:
      if ((a52 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((a46 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a41);
  if ((a52 & 0x80000000) == 0)
  {
LABEL_4:
    if ((a58 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(a47);
  if ((a58 & 0x80000000) == 0)
  {
LABEL_5:
    std::ostringstream::~ostringstream(&a59);
    _Unwind_Resume(a1);
  }

LABEL_9:
  operator delete(a53);
  std::ostringstream::~ostringstream(&a59);
  _Unwind_Resume(a1);
}

double util::to_str<trace::AnomalyDetectionLevel>(std::string *a1, int __val)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::to_string(&v4, __val);
  result = *&v4.__r_.__value_.__l.__data_;
  *a1 = v4;
  return result;
}

void sub_23C292820(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x23C292810);
}

void sub_23C29282C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t INTTrace::setPropEnabled_sync(uint64_t a1, char **a2, char *a3, uint64_t a4)
{
  v23 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(&v21.gr_passwd + 4, 0, 20);
    v22 = 0;
    if (prop::bbtrace::get(a3, &v21.gr_gid))
    {
      v7 = util::convert<int>(&v21.gr_gid, &v21.gr_passwd + 1, 0);
      if (SHIBYTE(v22) < 0)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = 0;
      if (SHIBYTE(v22) < 0)
      {
LABEL_4:
        operator delete(*&v21.gr_gid);
        if ((v7 & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_13:
        gr_passwd_high = HIDWORD(v21.gr_passwd);
        v13 = *(a1 + 104);
        v14 = *(a1 + 40);
        v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
        if (gr_passwd_high == v13)
        {
          if (v15)
          {
            v16 = "disabled";
            if (v13)
            {
              v16 = "enabled";
            }

            v21.gr_gid = 136315138;
            *(&v21.gr_gid + 1) = v16;
            _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I It is already %s", &v21.gr_gid, 0xCu);
          }
        }

        else
        {
          if (v15)
          {
            v21.gr_gid = 67109376;
            *(&v21.gr_gid + 1) = v13;
            LOWORD(v21.gr_mem) = 1024;
            *(&v21.gr_mem + 2) = gr_passwd_high;
            _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Setting enable from %d to %d", &v21.gr_gid, 0xEu);
            gr_passwd_high = HIDWORD(v21.gr_passwd);
          }

          *(a1 + 104) = gr_passwd_high != 0;
          if (gr_passwd_high)
          {
            v17 = *a2;
            v21.gr_name = v17;
            if (v17)
            {
              dispatch_retain(v17);
            }

            INTTrace::start_sync(a1, &v21);
            if (v17)
            {
              dispatch_release(v17);
            }
          }

          else if (*(a1 + 176))
          {
            v18 = *a2;
            v20 = v18;
            if (v18)
            {
              dispatch_retain(v18);
            }

            INTTrace::stop_sync(a1, &v20);
            if (v18)
            {
              dispatch_release(v18);
            }

            v19 = *(a1 + 160);
            if (v19)
            {
              if (*(a1 + 116) != 3)
              {
                abm::trace::TraceReader::clearFiles(v19);
              }

              std::shared_ptr<TraceFileCollection>::reset[abi:ne200100]((a1 + 160));
              *&v21.gr_gid = 0;
              v21.gr_mem = 0;
              std::shared_ptr<abm::trace::TraceReader>::operator=[abi:ne200100](a1 + 160, &v21.gr_gid);
              std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v21.gr_gid);
            }
          }
        }

        goto LABEL_10;
      }
    }

    if ((v7 & 1) == 0)
    {
LABEL_5:
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v21.gr_gid) = 0;
        _os_log_error_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_ERROR, "Failed to get enabled property!", &v21.gr_gid, 2u);
      }

      goto LABEL_10;
    }

    goto LABEL_13;
  }

  v9 = *(a1 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v21.gr_gid) = 0;
    _os_log_error_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_ERROR, "Failed to set enabled property!", &v21.gr_gid, 2u);
  }

  v7 = 0;
LABEL_10:
  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

void sub_23C292B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (v18)
  {
    dispatch_release(v18);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL INTTrace::setPropLiveFilterSetting_sync(uint64_t a1, NSObject **a2, char *a3, uint64_t a4)
{
  v78 = *MEMORY[0x277D85DE8];
  if (prop::bbtrace::set(a3, a4))
  {
    memset(&v75[8], 0, 24);
    if (prop::bbtrace::get(a3, &v75[8]))
    {
      LODWORD(v73.gr_passwd) = -1431655766;
      v7 = util::convert<int>(&v75[8], &v73.gr_passwd, 0);
      v8 = v7;
      if (v7)
      {
        gr_passwd = v73.gr_passwd;
      }

      else
      {
        gr_passwd = 0;
      }

      if ((v75[31] & 0x80000000) != 0)
      {
LABEL_7:
        operator delete(*&v75[8]);
        if ((v8 & 1) == 0)
        {
          goto LABEL_8;
        }

        goto LABEL_15;
      }
    }

    else
    {
      gr_passwd = 0;
      v8 = 0;
      if ((v75[31] & 0x80000000) != 0)
      {
        goto LABEL_7;
      }
    }

    if ((v8 & 1) == 0)
    {
LABEL_8:
      v10 = *(a1 + 40);
      result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (result)
      {
        *&v75[8] = 0;
        v12 = "Failed to get trace live filter enable property!";
LABEL_12:
        _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, v12, &v75[8], 2u);
        result = 0;
        goto LABEL_152;
      }

      goto LABEL_152;
    }

LABEL_15:
    v13 = *(a1 + 116);
    v14 = *(a1 + 40);
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (gr_passwd == v13)
    {
      if (v15)
      {
        if (gr_passwd > 3)
        {
          v16 = "unknown";
        }

        else
        {
          v16 = off_278BB9628[gr_passwd];
        }

        *&v75[8] = 136315394;
        *&v75[12] = v16;
        *&v75[20] = 1024;
        *&v75[22] = gr_passwd;
        _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Live filter setting is already %s (%d)", &v75[8], 0x12u);
        gr_passwd = *(a1 + 116);
      }

      if (gr_passwd == 3)
      {
        v19 = *(a1 + 160);
        if (v19)
        {
          abm::trace::TraceReader::notifyCellularLoggingPortNumber(v19);
          v20 = *(a1 + 40);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            *&v75[8] = 0;
            _os_log_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_DEFAULT, "#I Notifying streaming port number", &v75[8], 2u);
          }
        }
      }

      goto LABEL_151;
    }

    if (!v15)
    {
LABEL_32:
      *(a1 + 116) = gr_passwd;
      if (*(a1 + 104) != 1)
      {
LABEL_151:
        result = 1;
        goto LABEL_152;
      }

      v21 = *a2;
      *v75 = v21;
      if (v21)
      {
        dispatch_retain(v21);
      }

      INTTrace::stop_sync(a1, v75);
      if (v21)
      {
        dispatch_release(v21);
      }

      v22 = (a1 + 160);
      if (*(a1 + 160))
      {
        v23 = *(a1 + 168);
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        if (v23)
        {
          if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v23->__on_zero_shared)(v23);
            std::__shared_weak_count::__release_weak(v23);
          }

          v24 = *(a1 + 168);
          *v22 = 0;
          *(a1 + 168) = 0;
          if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v24->__on_zero_shared)(v24);
            std::__shared_weak_count::__release_weak(v24);
          }
        }

        else
        {
          *v22 = 0;
          *(a1 + 168) = 0;
        }
      }

      if (*(a1 + 248))
      {
        v25 = *(a1 + 256);
        *(a1 + 248) = 0;
        *(a1 + 256) = 0;
        if (v25)
        {
          if (!atomic_fetch_add(&v25->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
          }
        }
      }

      v26 = (a1 + 264);
      if (*(a1 + 264))
      {
        v27 = *(a1 + 272);
        *v26 = 0;
        *(a1 + 272) = 0;
        if (v27)
        {
          if (!atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v27->__on_zero_shared)(v27);
            std::__shared_weak_count::__release_weak(v27);
          }
        }
      }

      v28 = *(a1 + 116);
      if ((v28 - 2) >= 2)
      {
        if (v28 == 1)
        {
          std::string::basic_string[abi:ne200100]<0>(&v73.gr_passwd, abm::trace::kScratchFolder[0]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("BBTrace.scratch.filtered/", &v73.gr_passwd, &v75[8]);
          abm::trace::TraceInfo::create();
        }

        else
        {
          if (v28)
          {
LABEL_147:
            v71 = *a2;
            v73.gr_name = v71;
            if (v71)
            {
              dispatch_retain(v71);
            }

            INTTrace::start_sync(a1, &v73);
            if (v71)
            {
              dispatch_release(v71);
            }

            goto LABEL_151;
          }

          std::string::basic_string[abi:ne200100]<0>(&v73.gr_passwd, abm::trace::kScratchFolder[0]);
          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>("BBTrace.scratch/", &v73.gr_passwd, &v75[8]);
          abm::trace::TraceInfo::create();
        }

        std::shared_ptr<abm::trace::TraceReader>::operator=[abi:ne200100](a1 + 248, &v74);
        std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&v74);
LABEL_143:
        if ((v75[31] & 0x80000000) != 0)
        {
          operator delete(*&v75[8]);
        }

        if (SHIBYTE(v73.gr_mem) < 0)
        {
          operator delete(v73.gr_passwd);
        }

        goto LABEL_147;
      }

      v29 = 0x7FFFFFFFFFFFFFF7;
      v30 = abm::trace::kScratchFolder[0];
      v31 = strlen(abm::trace::kScratchFolder[0]);
      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v32 = v31;
      if (v31 >= 0x17)
      {
        if ((v31 | 7) == 0x17)
        {
          v34 = 25;
        }

        else
        {
          v34 = (v31 | 7) + 1;
        }

        p_gr_passwd = operator new(v34);
        *&v73.gr_gid = v32;
        v73.gr_mem = (v34 | 0x8000000000000000);
        v73.gr_passwd = p_gr_passwd;
      }

      else
      {
        HIBYTE(v73.gr_mem) = v31;
        p_gr_passwd = &v73.gr_passwd;
        if (!v31)
        {
LABEL_68:
          p_gr_passwd[v32] = 0;
          gr_mem_high = SHIBYTE(v73.gr_mem);
          if ((SHIBYTE(v73.gr_mem) & 0x8000000000000000) != 0)
          {
            gr_mem_high = *&v73.gr_gid;
            v38 = (v73.gr_mem & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v38 - *&v73.gr_gid < 0x10)
            {
              v36 = *&v73.gr_gid + 16;
              if (0x7FFFFFFFFFFFFFF7 - (v73.gr_mem & 0x7FFFFFFFFFFFFFFFLL) < *&v73.gr_gid + 16 - v38)
              {
                std::string::__throw_length_error[abi:ne200100]();
              }

              v37 = v73.gr_passwd;
              if (v38 >= 0x3FFFFFFFFFFFFFF3)
              {
                v42 = 0;
                v41 = 0x7FFFFFFFFFFFFFF7;
LABEL_83:
                v43 = operator new(v41);
                v44 = v43;
                if (gr_mem_high)
                {
                  memmove(v43, v37, gr_mem_high);
                }

                *&v44[gr_mem_high] = *"BBTrace.scratch/";
                if (!v42)
                {
                  operator delete(v37);
                }

                *&v73.gr_gid = v36;
                v73.gr_mem = (v41 | 0x8000000000000000);
                v73.gr_passwd = v44;
                v45 = &v44[v36];
LABEL_94:
                *v45 = 0;
                *&v75[8] = *&v73.gr_passwd;
                *&v75[24] = v73.gr_mem;
                memset(&v73.gr_passwd, 0, 24);
                abm::trace::TraceInfo::create();
                v48 = v74;
                v74 = 0uLL;
                v49 = *(a1 + 256);
                *(a1 + 248) = v48;
                if (v49 && !atomic_fetch_add(&v49->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v49->__on_zero_shared)(v49);
                  std::__shared_weak_count::__release_weak(v49);
                }

                v50 = *(&v74 + 1);
                if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v50->__on_zero_shared)(v50);
                  std::__shared_weak_count::__release_weak(v50);
                }

                if ((v75[31] & 0x80000000) != 0)
                {
                  operator delete(*&v75[8]);
                  if ((SHIBYTE(v73.gr_mem) & 0x80000000) == 0)
                  {
LABEL_102:
                    v51 = abm::trace::kScratchFolder[0];
                    v52 = strlen(abm::trace::kScratchFolder[0]);
                    if (v52 <= 0x7FFFFFFFFFFFFFF7)
                    {
                      goto LABEL_103;
                    }

                    goto LABEL_116;
                  }
                }

                else if ((SHIBYTE(v73.gr_mem) & 0x80000000) == 0)
                {
                  goto LABEL_102;
                }

                operator delete(v73.gr_passwd);
                v51 = abm::trace::kScratchFolder[0];
                v52 = strlen(abm::trace::kScratchFolder[0]);
                if (v52 <= 0x7FFFFFFFFFFFFFF7)
                {
LABEL_103:
                  v53 = v52;
                  if (v52 >= 0x17)
                  {
                    if ((v52 | 7) == 0x17)
                    {
                      v55 = 25;
                    }

                    else
                    {
                      v55 = (v52 | 7) + 1;
                    }

                    v54 = operator new(v55);
                    *&v73.gr_gid = v53;
                    v73.gr_mem = (v55 | 0x8000000000000000);
                    v73.gr_passwd = v54;
                  }

                  else
                  {
                    HIBYTE(v73.gr_mem) = v52;
                    v54 = &v73.gr_passwd;
                    if (!v52)
                    {
LABEL_111:
                      v54[v53] = 0;
                      v56 = SHIBYTE(v73.gr_mem);
                      if ((SHIBYTE(v73.gr_mem) & 0x8000000000000000) != 0)
                      {
                        v56 = *&v73.gr_gid;
                        v59 = (v73.gr_mem & 0x7FFFFFFFFFFFFFFFLL) - 1;
                        if (v59 - *&v73.gr_gid < 0x19)
                        {
                          v57 = *&v73.gr_gid + 25;
                          if (0x7FFFFFFFFFFFFFF7 - (v73.gr_mem & 0x7FFFFFFFFFFFFFFFLL) < *&v73.gr_gid + 25 - v59)
                          {
                            std::string::__throw_length_error[abi:ne200100]();
                          }

                          v58 = v73.gr_passwd;
                          if (v59 >= 0x3FFFFFFFFFFFFFF3)
                          {
                            v62 = 0;
LABEL_129:
                            v63 = operator new(v29);
                            v64 = v63;
                            if (v56)
                            {
                              memmove(v63, v58, v56);
                            }

                            qmemcpy(&v64[v56], "BBTrace.scratch.filtered/", 25);
                            if (!v62)
                            {
                              operator delete(v58);
                            }

                            *&v73.gr_gid = v57;
                            v73.gr_mem = (v29 | 0x8000000000000000);
                            v73.gr_passwd = v64;
                            v65 = &v64[v57];
                            goto LABEL_137;
                          }

LABEL_120:
                          v60 = 2 * v59;
                          if (v57 > 2 * v59)
                          {
                            v60 = v57;
                          }

                          if ((v60 | 7) == 0x17)
                          {
                            v61 = 25;
                          }

                          else
                          {
                            v61 = (v60 | 7) + 1;
                          }

                          if (v60 >= 0x17)
                          {
                            v29 = v61;
                          }

                          else
                          {
                            v29 = 23;
                          }

                          v62 = v59 == 22;
                          goto LABEL_129;
                        }

                        v66 = v73.gr_passwd;
                        qmemcpy(&v73.gr_passwd[*&v73.gr_gid], "BBTrace.scratch.filtered/", 25);
                        v67 = v56 + 25;
                        *&v73.gr_gid = v56 + 25;
                      }

                      else
                      {
                        if (SHIBYTE(v73.gr_mem) < 0x17)
                        {
                          v57 = SHIBYTE(v73.gr_mem) + 25;
                          v58 = &v73.gr_passwd;
                          v59 = 22;
                          goto LABEL_120;
                        }

                        v66 = &v73.gr_passwd;
                        qmemcpy(&v73.gr_passwd + SHIBYTE(v73.gr_mem), "BBTrace.scratch.filtered/", 25);
                        v67 = v56 + 25;
                        HIBYTE(v73.gr_mem) = (v56 + 25) & 0x7F;
                      }

                      v65 = &v66[v67];
LABEL_137:
                      *v65 = 0;
                      *&v75[8] = *&v73.gr_passwd;
                      *&v75[24] = v73.gr_mem;
                      memset(&v73.gr_passwd, 0, 24);
                      abm::trace::TraceInfo::create();
                      v68 = v74;
                      v74 = 0uLL;
                      v69 = *(a1 + 272);
                      *v26 = v68;
                      if (v69 && !atomic_fetch_add(&v69->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v69->__on_zero_shared)(v69);
                        std::__shared_weak_count::__release_weak(v69);
                      }

                      v70 = *(&v74 + 1);
                      if (*(&v74 + 1) && !atomic_fetch_add((*(&v74 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
                      {
                        (v70->__on_zero_shared)(v70);
                        std::__shared_weak_count::__release_weak(v70);
                      }

                      goto LABEL_143;
                    }
                  }

                  memmove(v54, v51, v53);
                  goto LABEL_111;
                }

LABEL_116:
                std::string::__throw_length_error[abi:ne200100]();
              }

LABEL_74:
              v39 = 2 * v38;
              if (v36 > 2 * v38)
              {
                v39 = v36;
              }

              if ((v39 | 7) == 0x17)
              {
                v40 = 25;
              }

              else
              {
                v40 = (v39 | 7) + 1;
              }

              if (v39 >= 0x17)
              {
                v41 = v40;
              }

              else
              {
                v41 = 23;
              }

              v42 = v38 == 22;
              goto LABEL_83;
            }

            v46 = v73.gr_passwd;
          }

          else
          {
            if ((SHIBYTE(v73.gr_mem) - 7) < 0x10)
            {
              v36 = SHIBYTE(v73.gr_mem) + 16;
              v37 = &v73.gr_passwd;
              v38 = 22;
              goto LABEL_74;
            }

            v46 = &v73.gr_passwd;
          }

          *&v46[gr_mem_high] = *"BBTrace.scratch/";
          v47 = gr_mem_high + 16;
          if (SHIBYTE(v73.gr_mem) < 0)
          {
            *&v73.gr_gid = gr_mem_high + 16;
          }

          else
          {
            HIBYTE(v73.gr_mem) = v47 & 0x7F;
          }

          v45 = &v46[v47];
          goto LABEL_94;
        }
      }

      memmove(p_gr_passwd, v30, v32);
      goto LABEL_68;
    }

    if (v13 > 3)
    {
      v17 = "unknown";
      if (gr_passwd > 3)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v17 = off_278BB9628[v13];
      if (gr_passwd > 3)
      {
LABEL_22:
        v18 = "unknown";
LABEL_31:
        *&v75[8] = 136315906;
        *&v75[12] = v17;
        *&v75[20] = 1024;
        *&v75[22] = v13;
        *&v75[26] = 2080;
        *&v75[28] = v18;
        v76 = 1024;
        v77 = gr_passwd;
        _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_DEFAULT, "#I Setting trace live filter setting from %s (%d) to %s (%d)", &v75[8], 0x22u);
        goto LABEL_32;
      }
    }

    v18 = off_278BB9628[gr_passwd];
    goto LABEL_31;
  }

  v10 = *(a1 + 40);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *&v75[8] = 0;
    v12 = "Failed to set trace live filter enable property!";
    goto LABEL_12;
  }

LABEL_152:
  v72 = *MEMORY[0x277D85DE8];
  return result;
}