__n128 ___ZNK3ctu20SharedSynchronizableI5TraceE20execute_wrapped_syncIZN8DALTrace11getPropertyERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERSB_E3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSG__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3[23] < 0)
  {
    v4 = *v3;
    if (strcasecmp(*v3, "Enabled"))
    {
      if (strcasecmp(v4, "History"))
      {
        if (strcasecmp(v4, "Mode"))
        {
          if (strcasecmp(v4, "Reset_Mode_Boot"))
          {
            if (strcasecmp(v4, "TraceOwnership"))
            {
              if (strcasecmp(v4, "State"))
              {
                if (strcasecmp(v4, "Log_Mode"))
                {
                  if (strcasecmp(v4, "Log_Level"))
                  {
                    if (strcasecmp(v4, "Sleep_Log_Mode"))
                    {
                      if (strcasecmp(v4, "Sleep_Log_Level"))
                      {
                        if (strcasecmp(v4, "FileSize"))
                        {
                          if (strcasecmp(v4, "MaxMemoryFileCount"))
                          {
                            if (strcasecmp(v4, "Error_Handling"))
                            {
                              if (strcasecmp(v4, "PeakBandwidthMbps"))
                              {
                                if (strcasecmp(v4, "Retain_Previous_Trace"))
                                {
                                  goto LABEL_17;
                                }

LABEL_37:
                                util::to_str<BOOL>(*(v2 + 296), &buf);
                                goto LABEL_61;
                              }

LABEL_59:
                              util::to_str<unsigned int>(*(v2 + 320), &buf);
                              goto LABEL_61;
                            }

LABEL_58:
                            util::to_str<BOOL>(*(v2 + 264), &buf);
                            goto LABEL_61;
                          }

LABEL_57:
                          util::to_str<unsigned int>(*(v2 + 116), &buf);
                          goto LABEL_61;
                        }

LABEL_56:
                        util::to_str<unsigned int>(*(v2 + 112), &buf);
                        goto LABEL_61;
                      }

LABEL_55:
                      v21 = trace::toLogLevel(v2 + 240);
                      util::to_str<BOOL>(v21, &buf);
                      goto LABEL_61;
                    }

LABEL_54:
                    util::to_str<BOOL>(*(v2 + 232), &buf);
                    goto LABEL_61;
                  }

LABEL_53:
                  v20 = trace::toLogLevel(v2 + 208);
                  util::to_str<BOOL>(v20, &buf);
                  goto LABEL_61;
                }

                goto LABEL_47;
              }

LABEL_43:
              v25 = 14;
              strcpy(__p, "Get dump state");
              DALTrace::dumpState_sync(v2, __p, &buf);
              v13 = *(v1 + 24);
              if (*(v13 + 23) < 0)
              {
                operator delete(*v13);
              }

              result.n128_u64[0] = buf.__r_.__value_.__r.__words[0];
              *v13 = buf;
              if (v25 < 0)
              {
                operator delete(__p[0]);
                v14 = *MEMORY[0x277D85DE8];
                return result;
              }

              goto LABEL_51;
            }

            goto LABEL_42;
          }

          goto LABEL_41;
        }

        goto LABEL_40;
      }

      goto LABEL_39;
    }

LABEL_38:
    v8 = *(v2 + 104);
    __p[0] = 0;
    *(__p + 7) = 0;
    std::to_string(&buf, v8);
LABEL_48:
    __p[0] = buf.__r_.__value_.__l.__size_;
    v16 = buf.__r_.__value_.__r.__words[0];
    *(__p + 7) = *(&buf.__r_.__value_.__r.__words[1] + 7);
    v17 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    v18 = *(v1 + 24);
    if (*(v18 + 23) < 0)
    {
      operator delete(*v18);
    }

    *v18 = v16;
    *(v18 + 8) = __p[0];
    *(v18 + 15) = *(__p + 7);
    *(v18 + 23) = v17;
    goto LABEL_51;
  }

  if (!strcasecmp(*(v1 + 8), "Enabled"))
  {
    goto LABEL_38;
  }

  if (!strcasecmp(v3, "History"))
  {
LABEL_39:
    v9 = *(v2 + 108);
    __p[0] = 0;
    *(__p + 7) = 0;
    std::to_string(&buf, v9);
    goto LABEL_48;
  }

  if (!strcasecmp(v3, "Mode"))
  {
LABEL_40:
    v10 = *(v2 + 96);
    __p[0] = 0;
    *(__p + 7) = 0;
    std::to_string(&buf, v10);
    goto LABEL_48;
  }

  if (!strcasecmp(v3, "Reset_Mode_Boot"))
  {
LABEL_41:
    v11 = *(v2 + 100);
    __p[0] = 0;
    *(__p + 7) = 0;
    std::to_string(&buf, v11);
    goto LABEL_48;
  }

  if (!strcasecmp(v3, "TraceOwnership"))
  {
LABEL_42:
    v12 = *(v2 + 120);
    __p[0] = 0;
    *(__p + 7) = 0;
    std::to_string(&buf, v12);
    goto LABEL_48;
  }

  if (!strcasecmp(v3, "State"))
  {
    goto LABEL_43;
  }

  if (!strcasecmp(v3, "Log_Mode"))
  {
LABEL_47:
    v15 = *(v2 + 200);
    __p[0] = 0;
    *(__p + 7) = 0;
    std::to_string(&buf, v15);
    goto LABEL_48;
  }

  if (!strcasecmp(v3, "Log_Level"))
  {
    goto LABEL_53;
  }

  if (!strcasecmp(v3, "Sleep_Log_Mode"))
  {
    goto LABEL_54;
  }

  if (!strcasecmp(v3, "Sleep_Log_Level"))
  {
    goto LABEL_55;
  }

  if (!strcasecmp(v3, "FileSize"))
  {
    goto LABEL_56;
  }

  if (!strcasecmp(v3, "MaxMemoryFileCount"))
  {
    goto LABEL_57;
  }

  if (!strcasecmp(v3, "Error_Handling"))
  {
    goto LABEL_58;
  }

  if (!strcasecmp(v3, "PeakBandwidthMbps"))
  {
    goto LABEL_59;
  }

  v4 = v3;
  if (!strcasecmp(v3, "Retain_Previous_Trace"))
  {
    goto LABEL_37;
  }

LABEL_17:
  if (strcasecmp(v4, "TraceFlushTimerInterval"))
  {
    **(v1 + 16) = 0;
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      if (v3[23] < 0)
      {
        v3 = *v3;
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v3;
      _os_log_error_impl(&dword_23C1C4000, v5, OS_LOG_TYPE_ERROR, "Key not handled: %s", &buf, 0xCu);
      v7 = *MEMORY[0x277D85DE8];
      return result;
    }

LABEL_51:
    v19 = *MEMORY[0x277D85DE8];
    return result;
  }

  util::to_str<unsigned int>(*(v2 + 328), &buf);
LABEL_61:
  v22 = *(v1 + 24);
  if (*(v22 + 23) < 0)
  {
    operator delete(*v22);
  }

  result = *&buf.__r_.__value_.__l.__data_;
  *(v22 + 16) = *(&buf.__r_.__value_.__l + 2);
  *v22 = result;
  v23 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C24938C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a2)
  {
    __cxa_begin_catch(exception_object);
    __cxa_end_catch();
    if (*(*(v15 + 24) + 23) < 0)
    {
      JUMPOUT(0x23C24927CLL);
    }

    JUMPOUT(0x23C249284);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::~__func(uint64_t result)
{
  *result = &unk_284EFB638;
  if (*(result + 24))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 24));
    return v1;
  }

  return result;
}

void std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::~__func(std::__shared_weak_count **a1)
{
  *a1 = &unk_284EFB638;
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

char *std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::__clone(uint64_t a1)
{
  result = operator new(0x20uLL);
  *result = &unk_284EFB638;
  *(result + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(result + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::__clone(uint64_t result, uint64_t a2)
{
  *a2 = &unk_284EFB638;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::destroy_deallocate(std::__shared_weak_count **a1)
{
  if (a1[3])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[3]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::operator()(void *a1, xpc_object_t *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *a2;
        if (v8)
        {
          xpc_retain(v8);
          v9 = v5[2];
          if (!v9)
          {
LABEL_20:
            std::__throw_bad_weak_ptr[abi:ne200100]();
          }
        }

        else
        {
          v8 = xpc_null_create();
          v9 = v5[2];
          if (!v9)
          {
            goto LABEL_20;
          }
        }

        v10 = v5[1];
        v11 = std::__shared_weak_count::lock(v9);
        if (!v11)
        {
          goto LABEL_20;
        }

        v12 = v11;
        v13 = operator new(0x10uLL);
        *v13 = v5;
        v13[1] = v8;
        if (v8)
        {
          xpc_retain(v8);
        }

        else
        {
          v13[1] = xpc_null_create();
        }

        v14 = v5[3];
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = operator new(0x18uLL);
        *v15 = v13;
        v15[1] = v10;
        v15[2] = v12;
        dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>(DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},dispatch_queue_s *::default_delete<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v12->__on_zero_shared)(v12);
          std::__shared_weak_count::__release_weak(v12);
        }

        xpc_release(v8);
      }

      if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v7->__on_zero_shared)(v7);

        std::__shared_weak_count::__release_weak(v7);
      }
    }
  }
}

uint64_t std::__function::__func<DALTrace::createTraceReader_sync(void)::$_0,std::allocator<DALTrace::createTraceReader_sync(void)::$_0>,void ()(xpc::dict const&)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN8DALTrace22createTraceReader_syncEvE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN8DALTrace22createTraceReader_syncEvE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN8DALTrace22createTraceReader_syncEvE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN8DALTrace22createTraceReader_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<Trace>::execute_wrapped<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>(DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},dispatch_queue_s *::default_delete<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v12 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[2].~__shared_weak_count;
  if (!v3)
  {
    goto LABEL_9;
  }

  v4 = std::__shared_weak_count::lock(v3);
  object[2] = v4;
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v4;
  on_zero_shared_weak = v2[1].__on_zero_shared_weak;
  object[1] = on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    shared_owners = v1->__shared_owners_;
    object[0] = shared_owners;
    if (shared_owners)
    {
      xpc_retain(shared_owners);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    abm::BasebandTracingTask::commandReportStatsAWD(on_zero_shared_weak, object);
    xpc_release(object[0]);
    object[0] = 0;
  }

  if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_9:
    v8 = v12;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  (v5->__on_zero_shared)(v5);
  std::__shared_weak_count::__release_weak(v5);
  v8 = v12;
  if (v12)
  {
LABEL_10:
    xpc_release(v8[1]);
    operator delete(v8);
  }

LABEL_11:
  v9 = a1;
  if (a1)
  {
    v10 = a1[2];
    if (v10)
    {
      if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v10->__on_zero_shared)(v10);
        std::__shared_weak_count::__release_weak(v10);
        v9 = a1;
      }
    }

    operator delete(v9);
  }
}

void sub_23C2499D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, xpc_object_t *a11, xpc_object_t object, char a13)
{
  xpc_release(object);
  object = 0;
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a13);
  std::unique_ptr<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},std::default_delete<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

xpc_object_t **std::unique_ptr<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1},std::default_delete<DALTrace::createTraceReader_sync(void)::$_0::operator() const(xpc::dict const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](xpc_object_t **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    xpc_release(v1[1]);
    operator delete(v1);
    return v2;
  }

  return result;
}

uint64_t std::function<void ()(xpc::dict const&)>::~function(uint64_t a1)
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

uint64_t *std::unique_ptr<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0,std::default_delete<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 40);
    if (v3)
    {
      dispatch_release(v3);
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      _Block_release(v4);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    if (*v2)
    {
      dispatch_group_leave(*v2);
      if (*v2)
      {
        dispatch_release(*v2);
      }
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *dispatch::detail::group_notify<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>(dispatch_group_s *,dispatch_queue_s *,DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v14 = a1;
  v2 = a1[1];
  v23 = 0;
  v24 = 0;
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_23;
  }

  v24 = std::__shared_weak_count::lock(v3);
  if (!v24)
  {
    return std::unique_ptr<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0,std::default_delete<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>>::~unique_ptr[abi:ne200100](&v14);
  }

  v23 = a1[2];
  if (!v23)
  {
    goto LABEL_23;
  }

  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEFAULT, "#I Closing Transport", buf, 2u);
  }

  DALTrace::stopTraceReader_sync(v2);
  v5 = *(v2 + 176);
  if (v5)
  {
    *(v2 + 176) = 0;
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  *(v2 + 168) = 0;
  v6 = *(v2 + 192);
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!*(v2 + 152))
    {
      goto LABEL_14;
    }
  }

  else if (!*(v2 + 152))
  {
    goto LABEL_14;
  }

  v22 = 0;
  LOBYTE(v21) = 0;
  Timestamp::Timestamp(v19);
  v18 = 0;
  LOBYTE(v17) = 0;
  v16 = 0;
  LOBYTE(__p) = 0;
  abm::trace::TraceInfo::push();
  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(v19, v20);
  if (v22 < 0)
  {
    operator delete(v21);
  }

LABEL_14:
  v7 = a1[4];
  if (v7 && a1[5])
  {
    v8 = _Block_copy(v7);
    v9 = v8;
    v10 = a1[5];
    *buf = MEMORY[0x277D85DD0];
    v26 = 1174405120;
    v27 = ___ZNK8dispatch8callbackIU13block_pointerFvvEEclIJEEEvDpT__block_invoke;
    v28 = &__block_descriptor_tmp_194;
    if (v8)
    {
      v29 = _Block_copy(v8);
      dispatch_async(v10, buf);
      v11 = v29;
      if (!v29)
      {
LABEL_21:
        if (v9)
        {
          _Block_release(v9);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v29 = 0;
      dispatch_async(v10, buf);
      v11 = v29;
      if (!v29)
      {
        goto LABEL_21;
      }
    }

    _Block_release(v11);
    goto LABEL_21;
  }

LABEL_23:
  v12 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  return std::unique_ptr<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0,std::default_delete<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>>::~unique_ptr[abi:ne200100](&v14);
}

void sub_23C249E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, void *a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  std::__tree<std::__value_type<Timestamp::TimeDomain,timeval>,std::__map_value_compare<Timestamp::TimeDomain,std::__value_type<Timestamp::TimeDomain,timeval>,std::less<Timestamp::TimeDomain>,true>,std::allocator<std::__value_type<Timestamp::TimeDomain,timeval>>>::destroy(&a23, a24);
  if (a31 < 0)
  {
    operator delete(a26);
    std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v31 - 96);
    std::unique_ptr<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0,std::default_delete<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
    _Unwind_Resume(a1);
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v31 - 96);
  std::unique_ptr<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0,std::default_delete<DALTrace::stop_sync(dispatch::group,dispatch::callback<void({block_pointer})(void)>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void *__copy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void __destroy_helper_block_e8_32c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void ___ZNK8dispatch8callbackIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEclIJS5_EEEvDpT__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  cf = v1;
  if (v1)
  {
    CFRetain(v1);
  }

  (*(v2 + 16))(v2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_23C249F60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::cf::CFSharedRef<__CFError>::~CFSharedRef(va);
  _Unwind_Resume(a1);
}

CFTypeRef __copy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  if (!v4)
  {
    result = *(a2 + 40);
    *(a1 + 32) = 0;
    *(a1 + 40) = result;
    if (!result)
    {
      return result;
    }

    return CFRetain(result);
  }

  v5 = _Block_copy(v4);
  result = *(a2 + 40);
  *(a1 + 32) = v5;
  *(a1 + 40) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __destroy_helper_block_e8_32c76_ZTSN8dispatch5blockIU13block_pointerFvN3ctu2cf11CFSharedRefI9__CFErrorEEEEE40c38_ZTSN3ctu2cf11CFSharedRefI9__CFErrorEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }
}

uint64_t __cxx_global_var_init_145()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_146()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<SharedData>::~PthreadMutexGuardPolicy, &ctu::Singleton<SharedData,SharedData,ctu::PthreadMutexGuardPolicy<SharedData>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t __cxx_global_var_init_147()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<CommandDriverFactory>::~PthreadMutexGuardPolicy, &ctu::Singleton<CommandDriverFactory,CommandDriverFactory,ctu::PthreadMutexGuardPolicy<CommandDriverFactory>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t support::fs::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    a2[23] = 9;
    strcpy(a2, "_wireless");
  }

  else if (result)
  {
    a2[23] = 0;
    *a2 = 0;
  }

  else
  {
    a2[23] = 6;
    strcpy(a2, "mobile");
  }

  return result;
}

uint64_t support::fs::updateOwner(const char *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__dst.st_blksize = v6;
  *__dst.st_qspare = v6;
  __dst.st_birthtimespec = v6;
  *&__dst.st_size = v6;
  __dst.st_mtimespec = v6;
  __dst.st_ctimespec = v6;
  *&__dst.st_uid = v6;
  __dst.st_atimespec = v6;
  *&__dst.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__dst))
  {
    v16 = v5[23] >= 0 ? v5 : *v5;
    v17 = opendir(v16);
    if (v17)
    {
      v18 = v17;
      v19 = readdir(v17);
      closedir(v18);
      if (v19)
      {
        v58 = 0;
        v59 = 0;
        v60 = 0;
        support::fs::readDir(v5, &v58);
        v20 = v58;
        v54 = v59;
        if (v58 == v59)
        {
          updated = 0;
          if (v58)
          {
            goto LABEL_108;
          }

          return updated;
        }

        v21 = (v58 + 24);
        while (1)
        {
          memset(&v57, 170, sizeof(v57));
          if (*(v21 - 1) < 0)
          {
            std::string::__init_copy_ctor_external(&v57, *(v21 - 3), *(v21 - 2));
          }

          else
          {
            v23 = *(v21 - 3);
            v57.__r_.__value_.__r.__words[2] = *(v21 - 1);
            *&v57.__r_.__value_.__l.__data_ = v23;
          }

          memset(&__p, 170, sizeof(__p));
          v24 = v5[23];
          if (v24 >= 0)
          {
            v25 = *(v5 + 23);
          }

          else
          {
            v25 = *(v5 + 1);
          }

          v26 = v25 + 1;
          if (v25 + 1 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v26 < 0x17)
          {
            memset(&__dst, 0, 24);
            p_dst = &__dst;
            HIBYTE(__dst.st_gid) = v25 + 1;
            if (!v25)
            {
              goto LABEL_48;
            }
          }

          else
          {
            if ((v26 | 7) == 0x17)
            {
              v27 = 25;
            }

            else
            {
              v27 = (v26 | 7) + 1;
            }

            p_dst = operator new(v27);
            __dst.st_ino = v25 + 1;
            *&__dst.st_uid = v27 | 0x8000000000000000;
            *&__dst.st_dev = p_dst;
          }

          v29 = *v5;
          if (v24 >= 0)
          {
            v30 = v5;
          }

          else
          {
            v30 = *v5;
          }

          memmove(p_dst, v30, v25);
LABEL_48:
          *&p_dst[v25] = 47;
          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v31 = &v57;
          }

          else
          {
            v31 = v57.__r_.__value_.__r.__words[0];
          }

          if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v57.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v57.__r_.__value_.__l.__size_;
          }

          v33 = std::string::append(&__dst, v31, size);
          v34 = *&v33->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v34;
          v33->__r_.__value_.__l.__size_ = 0;
          v33->__r_.__value_.__r.__words[2] = 0;
          v33->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(__dst.st_gid) < 0)
          {
            operator delete(*&__dst.st_dev);
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
LABEL_56:
              if (v35 == 1)
              {
                if (v57.__r_.__value_.__s.__data_[0] == 46)
                {
                  goto LABEL_72;
                }
              }

              else if (v35 == 2 && LOWORD(v57.__r_.__value_.__l.__data_) == 11822)
              {
                goto LABEL_72;
              }

              goto LABEL_68;
            }
          }

          else
          {
            v35 = HIBYTE(v57.__r_.__value_.__r.__words[2]);
            if ((*(&v57.__r_.__value_.__s + 23) & 0x80) == 0)
            {
              goto LABEL_56;
            }
          }

          if (v57.__r_.__value_.__l.__size_ == 1)
          {
            if (*v57.__r_.__value_.__l.__data_ == 46)
            {
              goto LABEL_72;
            }
          }

          else if (v57.__r_.__value_.__l.__size_ == 2 && *v57.__r_.__value_.__l.__data_ == 11822)
          {
            goto LABEL_72;
          }

LABEL_68:
          v36.tv_sec = 0xAAAAAAAAAAAAAAAALL;
          v36.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
          *&__dst.st_blksize = v36;
          *__dst.st_qspare = v36;
          __dst.st_birthtimespec = v36;
          *&__dst.st_size = v36;
          __dst.st_mtimespec = v36;
          __dst.st_ctimespec = v36;
          *&__dst.st_uid = v36;
          __dst.st_atimespec = v36;
          *&__dst.st_dev = v36;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (stat(p_p, &__dst) || ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v47 = &__p) : (v47 = __p.__r_.__value_.__r.__words[0]), (v48 = opendir(v47), (v49 = v48) == 0) || (v50 = readdir(v48), closedir(v49), !v50)))
          {
LABEL_72:
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v38 = &__p;
            }

            else
            {
              v38 = __p.__r_.__value_.__r.__words[0];
            }

            v39 = strlen(v38);
            if (v39 > 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v40 = v39;
            if (v39 >= 0x17)
            {
              if ((v39 | 7) == 0x17)
              {
                v42 = 25;
              }

              else
              {
                v42 = (v39 | 7) + 1;
              }

              v41 = operator new(v42);
              __dst.st_ino = v40;
              *&__dst.st_uid = v42 | 0x8000000000000000;
              *&__dst.st_dev = v41;
            }

            else
            {
              HIBYTE(__dst.st_gid) = v39;
              v41 = &__dst;
              if (!v39)
              {
LABEL_84:
                v41[v40] = 0;
                st_gid_high = SHIBYTE(__dst.st_gid);
                v44 = *&__dst.st_dev;
                if ((__dst.st_gid & 0x80000000) == 0)
                {
                  v45 = &__dst;
                }

                else
                {
                  v45 = *&__dst.st_dev;
                }

                updated = chown(v45, a2, a3) == 0;
                if (st_gid_high < 0)
                {
                  v46 = v44;
LABEL_89:
                  operator delete(v46);
                  goto LABEL_90;
                }

                goto LABEL_90;
              }
            }

            memmove(v41, v38, v40);
            goto LABEL_84;
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v55, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v55 = __p;
          }

          updated = support::fs::updateOwner(&v55, a2, a3);
          if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
          {
            v46 = v55.__r_.__value_.__r.__words[0];
            goto LABEL_89;
          }

LABEL_90:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
            if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
            {
LABEL_94:
              operator delete(v57.__r_.__value_.__l.__data_);
            }
          }

          else if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
          {
            goto LABEL_94;
          }

          if (v21 == v54)
          {
            v22 = 0;
          }

          else
          {
            v22 = updated;
          }

          v21 += 3;
          if ((v22 & 1) == 0)
          {
            v20 = v58;
            if (!v58)
            {
              return updated;
            }

LABEL_108:
            v51 = v59;
            v15 = v20;
            if (v59 != v20)
            {
              do
              {
                v52 = *(v51 - 1);
                v51 -= 3;
                if (v52 < 0)
                {
                  operator delete(*v51);
                }
              }

              while (v51 != v20);
              v15 = v58;
            }

            v59 = v20;
LABEL_115:
            operator delete(v15);
            return updated;
          }
        }
      }
    }
  }

  if (v5[23] < 0)
  {
    v5 = *v5;
  }

  v7 = strlen(v5);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
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
    __dst.st_ino = v8;
    *&__dst.st_uid = v10 | 0x8000000000000000;
    *&__dst.st_dev = v9;
    goto LABEL_14;
  }

  HIBYTE(__dst.st_gid) = v7;
  v9 = &__dst;
  if (v7)
  {
LABEL_14:
    memmove(v9, v5, v8);
  }

  *(v9 + v8) = 0;
  v11 = SHIBYTE(__dst.st_gid);
  v12 = *&__dst.st_dev;
  if ((__dst.st_gid & 0x80000000) == 0)
  {
    v13 = &__dst;
  }

  else
  {
    v13 = *&__dst.st_dev;
  }

  updated = chown(v13, a2, a3) == 0;
  if (v11 < 0)
  {
    v15 = v12;
    goto LABEL_115;
  }

  return updated;
}

DIR *support::fs::isDir(const char *a1)
{
  v1 = a1;
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v7.st_blksize = v2;
  *v7.st_qspare = v2;
  v7.st_birthtimespec = v2;
  *&v7.st_size = v2;
  v7.st_mtimespec = v2;
  v7.st_ctimespec = v2;
  *&v7.st_uid = v2;
  v7.st_atimespec = v2;
  *&v7.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v7))
  {
    return 0;
  }

  if (v1[23] >= 0)
  {
    v4 = v1;
  }

  else
  {
    v4 = *v1;
  }

  result = opendir(v4);
  if (result)
  {
    v5 = result;
    v6 = readdir(result);
    closedir(v5);
    return (v6 != 0);
  }

  return result;
}

BOOL support::fs::chown(const char *a1, uid_t a2, gid_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chown(a1, a2, a3) == 0;
}

DIR *support::fs::readDir(const char *a1, uint64_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = opendir(a1);
  if (result)
  {
    v4 = result;
    v5 = readdir(result);
    if (v5)
    {
      v6 = v5;
      do
      {
        memset(__dst, 170, sizeof(__dst));
        d_namlen = v6->d_namlen;
        if (d_namlen >= 0x17)
        {
          if ((d_namlen | 7) == 0x17)
          {
            v11 = 25;
          }

          else
          {
            v11 = (d_namlen | 7) + 1;
          }

          v8 = operator new(v11);
          *&__dst[8] = d_namlen;
          *&__dst[16] = v11 | 0x8000000000000000;
          *__dst = v8;
        }

        else
        {
          __dst[23] = v6->d_namlen;
          v8 = __dst;
          if (!d_namlen)
          {
            __dst[d_namlen] = 0;
            v9 = *(a2 + 8);
            if (v9 < *(a2 + 16))
            {
              goto LABEL_10;
            }

            goto LABEL_17;
          }
        }

        memmove(v8, v6->d_name, d_namlen);
        v8[d_namlen] = 0;
        v9 = *(a2 + 8);
        if (v9 < *(a2 + 16))
        {
LABEL_10:
          if ((__dst[23] & 0x80000000) != 0)
          {
            std::string::__init_copy_ctor_external(v9, *__dst, *&__dst[8]);
          }

          else
          {
            v10 = *__dst;
            v9->__r_.__value_.__r.__words[2] = *&__dst[16];
            *&v9->__r_.__value_.__l.__data_ = v10;
          }

          *(a2 + 8) = v9 + 1;
          *(a2 + 8) = v9 + 1;
          if ((__dst[23] & 0x80000000) == 0)
          {
            goto LABEL_6;
          }

LABEL_21:
          operator delete(*__dst);
          goto LABEL_6;
        }

LABEL_17:
        *(a2 + 8) = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a2, __dst);
        if ((__dst[23] & 0x80000000) != 0)
        {
          goto LABEL_21;
        }

LABEL_6:
        v6 = readdir(v4);
      }

      while (v6);
    }

    return closedir(v4);
  }

  return result;
}

void sub_23C24A954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  *(v15 + 8) = v16;
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t support::fs::getUidGid(int a1, uid_t *a2, gid_t *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(__p, 170, sizeof(__p));
  if (a1 == 1)
  {
    HIBYTE(__p[2]) = 9;
    strcpy(__p, "_wireless");
    v5 = getpwnam(__p);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_6;
  }

  if (a1)
  {
    goto LABEL_12;
  }

  HIBYTE(__p[2]) = 6;
  strcpy(__p, "mobile");
  v5 = getpwnam(__p);
  if (!v5)
  {
LABEL_6:
    if ((atomic_load_explicit(&qword_280C05D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D60))
    {
      qword_280C05D68 = 0;
      qword_280C05D70 = 0;
      __cxa_guard_release(&qword_280C05D60);
    }

    if (_MergedGlobals_4 != -1)
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_1);
    }

    v7 = qword_280C05D70;
    if (os_log_type_enabled(qword_280C05D70, OS_LOG_TYPE_ERROR))
    {
      v9 = __p;
      if (SHIBYTE(__p[2]) < 0)
      {
        v9 = __p[0];
      }

      *buf = 136315138;
      v12 = v9;
      _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, "Getting uid and gid: failed to get passwd for %s", buf, 0xCu);
      if ((HIBYTE(__p[2]) & 0x80) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    if ((HIBYTE(__p[2]) & 0x80) != 0)
    {
LABEL_11:
      operator delete(__p[0]);
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

LABEL_4:
  *a2 = v5->pw_uid;
  *a3 = v5->pw_gid;
  result = 1;
LABEL_13:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL support::fs::writeToCompletion(support::fs *this, char *__buf, size_t __nbyte)
{
  v4 = this;
  do
  {
    v5 = __nbyte;
    if (!__nbyte)
    {
      break;
    }

    v6 = write(v4, __buf, __nbyte);
    __nbyte = v5 - v6;
    __buf += v6;
  }

  while ((v6 & 0x8000000000000000) == 0);
  return v5 == 0;
}

BOOL support::fs::writeToCompletion(FILE *__stream, __sFILE *__ptr, size_t __nitems)
{
  while (1)
  {
    v5 = __nitems;
    if (!__nitems)
    {
      break;
    }

    v6 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __nitems = v5 - v6;
    __ptr = (__ptr + v6);
    if (!v6)
    {
      return v5 == 0;
    }
  }

  fflush(__stream);
  return 1;
}

uint64_t support::fs::openFile(const char *a1, int a2, uint64_t a3)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return open(a1, a2, a3);
}

BOOL support::fs::closeFile(support::fs *this)
{
  v1 = this;
  do
  {
    v2 = close(v1);
  }

  while (v2 && *__error() == 4);
  return v2 == 0;
}

BOOL support::fs::copyFile(const char *a1, const char *a2, int a3)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a1[23] >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  v7 = strlen(v6);
  if (v7 > 0x7FFFFFFFFFFFFFF7)
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
    *&__dst[8] = v8;
    *&__dst[16] = v10 | 0x8000000000000000;
    *__dst = v9;
    goto LABEL_12;
  }

  __dst[23] = v7;
  v9 = __dst;
  if (v7)
  {
LABEL_12:
    memmove(v9, v6, v8);
  }

  v9[v8] = 0;
  if (__dst[23] >= 0)
  {
    v11 = __dst;
  }

  else
  {
    v11 = *__dst;
  }

  v12 = open(v11, 0, 420);
  v13 = v12;
  if ((__dst[23] & 0x80000000) == 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_26:
    if ((atomic_load_explicit(&qword_280C05D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D60))
    {
      qword_280C05D68 = 0;
      qword_280C05D70 = 0;
      __cxa_guard_release(&qword_280C05D60);
    }

    if (_MergedGlobals_4 == -1)
    {
      v18 = qword_280C05D70;
      if (!os_log_type_enabled(qword_280C05D70, OS_LOG_TYPE_ERROR))
      {
LABEL_29:
        v19 = 0;
        goto LABEL_60;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_1);
      v18 = qword_280C05D70;
      if (!os_log_type_enabled(qword_280C05D70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_29;
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

    *__dst = 136315138;
    *&__dst[4] = v31;
    _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "Failed to open the source file %s", __dst, 0xCu);
    goto LABEL_29;
  }

  operator delete(*__dst);
  if (v13 < 0)
  {
    goto LABEL_26;
  }

LABEL_18:
  if (a2[23] >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  v15 = strlen(v14);
  if (v15 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (v15 | 7) + 1;
    }

    v17 = operator new(v20);
    *&__dst[8] = v16;
    *&__dst[16] = v20 | 0x8000000000000000;
    *__dst = v17;
    goto LABEL_34;
  }

  __dst[23] = v15;
  v17 = __dst;
  if (v15)
  {
LABEL_34:
    memmove(v17, v14, v16);
  }

  v17[v16] = 0;
  if (__dst[23] >= 0)
  {
    v21 = __dst;
  }

  else
  {
    v21 = *__dst;
  }

  v22 = open(v21, 1541, 420);
  v23 = v22;
  if ((__dst[23] & 0x80000000) != 0)
  {
    operator delete(*__dst);
    if ((v23 & 0x80000000) == 0)
    {
      goto LABEL_40;
    }
  }

  else if ((v22 & 0x80000000) == 0)
  {
LABEL_40:
    memset(__dst, 170, sizeof(__dst));
    v24 = read(v13, __dst, 0x400uLL);
    if (v24 < 1)
    {
LABEL_46:
      v19 = v24 == 0;
      if (!v24 && a3)
      {
        *&v27 = 0xAAAAAAAAAAAAAAAALL;
        *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[112] = v27;
        *&__dst[128] = v27;
        *&__dst[80] = v27;
        *&__dst[96] = v27;
        *&__dst[48] = v27;
        *&__dst[64] = v27;
        *&__dst[16] = v27;
        *&__dst[32] = v27;
        *__dst = v27;
        if (fstat(v13, __dst))
        {
          v19 = 0;
        }

        else
        {
          v19 = fchmod(v23, *&__dst[4]) == 0;
        }
      }
    }

    else
    {
      v25 = __dst;
      do
      {
        while (!v24)
        {
          memset(__dst, 170, sizeof(__dst));
          v24 = read(v13, __dst, 0x400uLL);
          v25 = __dst;
          if (v24 <= 0)
          {
            goto LABEL_46;
          }
        }

        v26 = write(v23, v25, v24);
        v24 -= v26;
        v25 += v26;
      }

      while ((v26 & 0x8000000000000000) == 0);
      v19 = 0;
    }

      ;
    }

    goto LABEL_58;
  }

  if ((atomic_load_explicit(&qword_280C05D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D60))
  {
    qword_280C05D68 = 0;
    qword_280C05D70 = 0;
    __cxa_guard_release(&qword_280C05D60);
  }

  if (_MergedGlobals_4 != -1)
  {
    dispatch_once(&_MergedGlobals_4, &__block_literal_global_1);
    v28 = qword_280C05D70;
    if (!os_log_type_enabled(qword_280C05D70, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_54;
    }

LABEL_67:
    if (a2[23] >= 0)
    {
      v32 = a2;
    }

    else
    {
      v32 = *a2;
    }

    *__dst = 136315138;
    *&__dst[4] = v32;
    _os_log_error_impl(&dword_23C1C4000, v28, OS_LOG_TYPE_ERROR, "Failed to open the destination file %s", __dst, 0xCu);
    goto LABEL_54;
  }

  v28 = qword_280C05D70;
  if (os_log_type_enabled(qword_280C05D70, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_67;
  }

LABEL_54:
  v19 = 0;
LABEL_58:
    ;
  }

LABEL_60:
  v29 = *MEMORY[0x277D85DE8];
  return v19;
}

void sub_23C24B160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::loadFile(uint64_t *a1, char **a2)
{
  v19[89] = *MEMORY[0x277D85DE8];
  memset(v19, 170, 0x240uLL);
  std::ifstream::basic_ifstream(v19, a1);
  if (v19[17] && (std::istream::tellg(), std::istream::seekg(), std::istream::tellg(), v4 = v19[88], std::istream::seekg(), v4) && !*(&v19[4] + *(v19[0] - 24)))
  {
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v4 - v10;
    if (v4 <= v10)
    {
      if (v4 < v10)
      {
        a2[1] = &v9[v4];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v4 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v4)
        {
          v14 = v4;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v4 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v4];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    v18 = *a2;
    std::istream::read();
    v5 = v19[1] == v4;
    if (!std::filebuf::close())
    {
      std::ios_base::clear((v19 + *(v19[0] - 24)), *(&v19[4] + *(v19[0] - 24)) | 4);
    }
  }

  else
  {
    v5 = 0;
  }

  v19[0] = *MEMORY[0x277D82808];
  *(v19 + *(v19[0] - 24)) = *(MEMORY[0x277D82808] + 24);
  MEMORY[0x23EECDE40](&v19[2]);
  std::istream::~istream();
  MEMORY[0x23EECE150](&v19[53]);
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t *std::ifstream::basic_ifstream(uint64_t *a1, uint64_t *a2)
{
  a1[59] = 0;
  v4 = MEMORY[0x277D82858] + 64;
  a1[53] = MEMORY[0x277D82858] + 64;
  v5 = *(MEMORY[0x277D82808] + 16);
  v6 = *(MEMORY[0x277D82808] + 8);
  *a1 = v6;
  *(a1 + *(v6 - 24)) = v5;
  a1[1] = 0;
  v7 = (a1 + *(*a1 - 24));
  std::ios_base::init(v7, a1 + 2);
  v8 = MEMORY[0x277D82858] + 24;
  v7[1].__vftable = 0;
  v7[1].__fmtflags_ = -1;
  *a1 = v8;
  a1[53] = v4;
  MEMORY[0x23EECDE30](a1 + 2);
  if (*(a2 + 23) < 0)
  {
    v9 = *a2;
  }

  if (!std::filebuf::open())
  {
    std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 4);
  }

  return a1;
}

void sub_23C24B608(_Unwind_Exception *a1)
{
  std::istream::~istream();
  MEMORY[0x23EECE150](v1);
  _Unwind_Resume(a1);
}

BOOL support::fs::getFileSize(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 136);
  if (v2)
  {
    std::istream::tellg();
    std::istream::seekg();
    std::istream::tellg();
    *a2 = v6;
    std::istream::seekg();
  }

  result = v2 != 0;
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v9[89] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a1 + 8);
  }

  if (v2)
  {
    memset(v9, 170, 0x240uLL);
    std::ifstream::basic_ifstream(v9, a1);
    v5 = v9[17] != 0;
    if (v9[17])
    {
      std::istream::tellg();
      std::istream::seekg();
      std::istream::tellg();
      *a2 = v9[88];
      std::istream::seekg();
      if (!std::filebuf::close())
      {
        std::ios_base::clear((v9 + *(v9[0] - 24)), *(&v9[4] + *(v9[0] - 24)) | 4);
      }
    }

    v9[0] = *MEMORY[0x277D82808];
    *(v9 + *(v9[0] - 24)) = *(MEMORY[0x277D82808] + 24);
    MEMORY[0x23EECDE40](&v9[2]);
    std::istream::~istream();
    MEMORY[0x23EECE150](&v9[53]);
    v6 = *MEMORY[0x277D85DE8];
  }

  else
  {
    v5 = 0;
    v8 = *MEMORY[0x277D85DE8];
  }

  return v5;
}

void *std::ifstream::~ifstream(void *a1)
{
  v2 = MEMORY[0x277D82808];
  v3 = *MEMORY[0x277D82808];
  *a1 = *MEMORY[0x277D82808];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  MEMORY[0x23EECDE40](a1 + 2);
  std::istream::~istream();
  MEMORY[0x23EECE150](a1 + 53);
  return a1;
}

uint64_t support::fs::loadFile(const char *a1, char **a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v3 = fopen(a1, "rb");
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  if (fseek(v3, 0, 2) || (v6 = MEMORY[0x23EECE830](v4), v6 == -1))
  {
    v5 = 0;
  }

  else
  {
    v7 = v6;
    v9 = *a2;
    v8 = a2[1];
    v10 = v8 - *a2;
    v11 = v7 - v10;
    if (v7 <= v10)
    {
      if (v7 < v10)
      {
        a2[1] = &v9[v7];
      }
    }

    else
    {
      v12 = a2[2];
      if (v12 - v8 >= v11)
      {
        v17 = &v8[v11];
        bzero(v8, v7 - v10);
        a2[1] = v17;
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
        }

        v13 = v12 - v9;
        v14 = 2 * v13;
        if (2 * v13 <= v7)
        {
          v14 = v7;
        }

        if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v15 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v16 = operator new(v15);
        bzero(&v16[v10], v7 - v10);
        memcpy(v16, v9, v10);
        *a2 = v16;
        a2[1] = &v16[v7];
        a2[2] = &v16[v15];
        if (v9)
        {
          operator delete(v9);
        }
      }
    }

    rewind(v4);
    v18 = *a2;
    v5 = 1;
    fread(v18, v7, 1uLL, v4);
  }

  fclose(v4);
  return v5;
}

BOOL support::fs::fileExists(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return stat(a1, &v3) == 0;
}

void support::fs::createUniqueFilename(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *&v3 = 0xAAAAAAAAAAAAAAAALL;
  *(&v3 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v30.__start_.__cntrl_ = v3;
  *&v30.__traits_.__col_ = v3;
  *&v30.__loop_count_ = v3;
  *&v30.__traits_.__loc_.__locale_ = v3;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](&v30, "^([/_\\-[:alnum:]]*)(.*)", 0);
  memset(&v29, 170, sizeof(v29));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v29, *a1, *(a1 + 8));
  }

  else
  {
    v29 = *a1;
  }

  for (i = 1; ; ++i)
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v31.st_blksize = v5;
    *v31.st_qspare = v5;
    v31.st_birthtimespec = v5;
    *&v31.st_size = v5;
    v31.st_mtimespec = v5;
    v31.st_ctimespec = v5;
    *&v31.st_uid = v5;
    v31.st_atimespec = v5;
    *&v31.st_dev = v5;
    if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = &v29;
    }

    else
    {
      v6 = v29.__r_.__value_.__r.__words[0];
    }

    if (stat(v6, &v31))
    {
      *a2 = v29;
      goto LABEL_54;
    }

    if (!std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(a1, &v30, 0))
    {
      break;
    }

    memset(&v31, 170, 24);
    std::to_string(&v27, i);
    v7 = std::string::insert(&v27, 0, "$1-", 3uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v28.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
    *&v28.__r_.__value_.__l.__data_ = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    size = SHIBYTE(v28.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
    {
      if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) - 21) >= 2)
      {
        v20 = &v28;
        *(&v28.__r_.__value_.__l.__data_ + SHIBYTE(v28.__r_.__value_.__r.__words[2])) = 12836;
        v21 = size + 2;
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          goto LABEL_35;
        }

        goto LABEL_33;
      }

      v10 = SHIBYTE(v28.__r_.__value_.__r.__words[2]) + 2;
      v11 = &v28;
      v12 = 22;
LABEL_18:
      v13 = 2 * v12;
      if (v10 > 2 * v12)
      {
        v13 = v10;
      }

      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      if (v13 >= 0x17)
      {
        v15 = v14;
      }

      else
      {
        v15 = 23;
      }

      v16 = v12 == 22;
      goto LABEL_27;
    }

    size = v28.__r_.__value_.__l.__size_;
    v12 = (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v12 - v28.__r_.__value_.__l.__size_ >= 2)
    {
      v20 = v28.__r_.__value_.__r.__words[0];
      *(v28.__r_.__value_.__r.__words[0] + v28.__r_.__value_.__l.__size_) = 12836;
      v21 = size + 2;
      if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
      {
LABEL_35:
        v28.__r_.__value_.__l.__size_ = v21;
        goto LABEL_36;
      }

LABEL_33:
      *(&v28.__r_.__value_.__s + 23) = v21 & 0x7F;
LABEL_36:
      v19 = v20 + v21;
      goto LABEL_37;
    }

    v10 = v28.__r_.__value_.__l.__size_ + 2;
    if (0x7FFFFFFFFFFFFFF7 - (v28.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) < v28.__r_.__value_.__l.__size_ + 2 - v12)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v28.__r_.__value_.__r.__words[0];
    if (v12 <= 0x3FFFFFFFFFFFFFF2)
    {
      goto LABEL_18;
    }

    v16 = 0;
    v15 = 0x7FFFFFFFFFFFFFF7;
LABEL_27:
    v17 = operator new(v15);
    v18 = v17;
    if (size)
    {
      memmove(v17, v11, size);
    }

    *(v18 + size) = 12836;
    if (!v16)
    {
      operator delete(v11);
    }

    v28.__r_.__value_.__l.__size_ = v10;
    v28.__r_.__value_.__r.__words[2] = v15 | 0x8000000000000000;
    v28.__r_.__value_.__r.__words[0] = v18;
    v19 = (v18 + v10);
LABEL_37:
    *v19 = 0;
    *&v31.st_dev = *&v28.__r_.__value_.__l.__data_;
    *&v31.st_uid = *(&v28.__r_.__value_.__l + 2);
    memset(&v28, 0, sizeof(v28));
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    memset(&v28, 0, sizeof(v28));
    v22 = *(a1 + 23);
    if ((v22 & 0x80u) == 0)
    {
      v23 = a1;
    }

    else
    {
      v23 = *a1;
    }

    if ((v22 & 0x80u) != 0)
    {
      v22 = *(a1 + 8);
    }

    if ((v31.st_gid & 0x80000000) == 0)
    {
      v24 = &v31;
    }

    else
    {
      v24 = *&v31.st_dev;
    }

    std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(&v28, v23, &v23[v22], &v30, v24, 0);
    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
      v29 = v28;
      if ((SHIBYTE(v31.st_gid) & 0x80000000) == 0)
      {
        continue;
      }
    }

    else
    {
      v29 = v28;
      if ((SHIBYTE(v31.st_gid) & 0x80000000) == 0)
      {
        continue;
      }
    }

    operator delete(*&v31.st_dev);
  }

  *(a2 + 23) = 0;
  *a2 = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

LABEL_54:
  cntrl = v30.__start_.__cntrl_;
  if (v30.__start_.__cntrl_ && !atomic_fetch_add(&v30.__start_.__cntrl_->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (cntrl->__on_zero_shared)(cntrl);
    std::__shared_weak_count::__release_weak(cntrl);
  }

  std::locale::~locale(&v30.__traits_.__loc_);
}

void sub_23C24BD7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(va);
  _Unwind_Resume(a1);
}

void sub_23C24BD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::locale a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  if (a21 < 0)
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

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a30);
  _Unwind_Resume(a1);
}

void support::fs::createUniquePath(const char *a1@<X0>, std::string *a2@<X8>)
{
  v2 = a1;
  v29 = *MEMORY[0x277D85DE8];
  v4.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v4.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&__src.st_blksize = v4;
  *__src.st_qspare = v4;
  __src.st_birthtimespec = v4;
  *&__src.st_size = v4;
  __src.st_mtimespec = v4;
  __src.st_ctimespec = v4;
  *&__src.st_uid = v4;
  __src.st_atimespec = v4;
  *&__src.st_dev = v4;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &__src))
  {
    v5.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v5.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    v27 = v5;
    v28 = v5;
    v25 = v5;
    v26 = v5;
    v23 = v5;
    v24 = v5;
    *__src.st_qspare = v5;
    v22 = v5;
    *&__src.st_size = v5;
    *&__src.st_blksize = v5;
    __src.st_ctimespec = v5;
    __src.st_birthtimespec = v5;
    __src.st_atimespec = v5;
    __src.st_mtimespec = v5;
    *&__src.st_dev = v5;
    *&__src.st_uid = v5;
    snprintf(&__src, 0x100uLL, "-%u", 1);
    memset(a2, 170, sizeof(std::string));
    v6 = strlen(&__src);
    if (v6 > 0x7FFFFFFFFFFFFFF7)
    {
LABEL_33:
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = v6;
    v8 = 2;
    while (v7 < 0x17)
    {
      HIBYTE(__dst.st_gid) = v7;
      p_dst = &__dst;
      if (v7)
      {
        goto LABEL_16;
      }

LABEL_17:
      *(&p_dst->st_dev + v7) = 0;
      v12 = v2[23];
      if (v12 >= 0)
      {
        v13 = v2;
      }

      else
      {
        v13 = *v2;
      }

      if (v12 >= 0)
      {
        v14 = *(v2 + 23);
      }

      else
      {
        v14 = *(v2 + 1);
      }

      v15 = std::string::insert(&__dst, 0, v13, v14);
      v16 = *&v15->__r_.__value_.__l.__data_;
      a2->__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&a2->__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(__dst.st_gid) < 0)
      {
        operator delete(*&__dst.st_dev);
      }

      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&__dst.st_blksize = v17;
      *__dst.st_qspare = v17;
      __dst.st_birthtimespec = v17;
      *&__dst.st_size = v17;
      __dst.st_mtimespec = v17;
      __dst.st_ctimespec = v17;
      *&__dst.st_uid = v17;
      __dst.st_atimespec = v17;
      *&__dst.st_dev = v17;
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = a2;
      }

      else
      {
        v18 = a2->__r_.__value_.__r.__words[0];
      }

      if (stat(v18, &__dst))
      {
        goto LABEL_32;
      }

      if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(a2->__r_.__value_.__l.__data_);
      }

      v9.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v9.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      v27 = v9;
      v28 = v9;
      v25 = v9;
      v26 = v9;
      v23 = v9;
      v24 = v9;
      *__src.st_qspare = v9;
      v22 = v9;
      *&__src.st_size = v9;
      *&__src.st_blksize = v9;
      __src.st_ctimespec = v9;
      __src.st_birthtimespec = v9;
      __src.st_atimespec = v9;
      __src.st_mtimespec = v9;
      *&__src.st_dev = v9;
      *&__src.st_uid = v9;
      snprintf(&__src, 0x100uLL, "-%u", v8);
      memset(a2, 170, sizeof(std::string));
      v7 = strlen(&__src);
      ++v8;
      if (v7 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_33;
      }
    }

    if ((v7 | 7) == 0x17)
    {
      v11 = 25;
    }

    else
    {
      v11 = (v7 | 7) + 1;
    }

    p_dst = operator new(v11);
    __dst.st_ino = v7;
    *&__dst.st_uid = v11 | 0x8000000000000000;
    *&__dst.st_dev = p_dst;
LABEL_16:
    memcpy(p_dst, &__src, v7);
    goto LABEL_17;
  }

  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external(a2, *v2, *(v2 + 1));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *v2;
    a2->__r_.__value_.__r.__words[2] = *(v2 + 2);
  }

LABEL_32:
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23C24C0AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

BOOL support::fs::createDir(const char *a1, mode_t a2, int a3)
{
  v5 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v30.st_blksize = v6;
  *v30.st_qspare = v6;
  v30.st_birthtimespec = v6;
  *&v30.st_size = v6;
  v30.st_mtimespec = v6;
  v30.st_ctimespec = v6;
  *&v30.st_uid = v6;
  v30.st_atimespec = v6;
  *&v30.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (!stat(a1, &v30))
  {
    return 1;
  }

  if (!a3)
  {
    if (v5[23] >= 0)
    {
      v21 = v5;
    }

    else
    {
      v21 = *v5;
    }

    return mkdir(v21, a2) == 0;
  }

  v28[1] = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0x1AAAAAAAAAAAAAALL;
  v28[0] = 0xAAAAAAAAAAAA002FLL;
  memset(&__p[32], 170, 24);
  ctu::tokenize();
  memset(__p, 0, 24);
  if (v5[23] >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *v5;
  }

  if (*v7 == 47)
  {
    *__p = *v28;
    *&__p[16] = v29;
  }

  v8 = *&__p[32];
  if (*&__p[40] != *&__p[32])
  {
    v9 = 0;
    v10 = 1;
    while (1)
    {
      if (v10 != 1)
      {
        if (v29 >= 0)
        {
          v11 = v28;
        }

        else
        {
          v11 = v28[0];
        }

        if (v29 >= 0)
        {
          v12 = HIBYTE(v29);
        }

        else
        {
          v12 = v28[1];
        }

        std::string::append(__p, v11, v12);
        v8 = *&__p[32];
      }

      v13 = v8 + 24 * v9;
      v14 = *(v13 + 23);
      v15 = v14 >= 0 ? v13 : *v13;
      v16 = v14 >= 0 ? *(v13 + 23) : *(v13 + 8);
      std::string::append(__p, v15, v16);
      v17.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v17.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v30.st_blksize = v17;
      *v30.st_qspare = v17;
      v30.st_birthtimespec = v17;
      *&v30.st_size = v17;
      v30.st_mtimespec = v17;
      v30.st_ctimespec = v17;
      *&v30.st_uid = v17;
      v30.st_atimespec = v17;
      *&v30.st_dev = v17;
      v18 = __p[23] >= 0 ? __p : *__p;
      if (stat(v18, &v30))
      {
        v19 = __p[23] >= 0 ? __p : *__p;
        if (mkdir(v19, a2))
        {
          break;
        }
      }

      v9 = v10;
      v8 = *&__p[32];
      ++v10;
      if (0xAAAAAAAAAAAAAAABLL * ((*&__p[40] - *&__p[32]) >> 3) <= v9)
      {
        goto LABEL_42;
      }
    }

    v20 = 0;
    if ((__p[23] & 0x80000000) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

LABEL_42:
  v20 = 1;
  if ((__p[23] & 0x80000000) != 0)
  {
LABEL_43:
    operator delete(*__p);
  }

LABEL_44:
  v22 = *&__p[32];
  if (*&__p[32])
  {
    v23 = *&__p[40];
    v24 = *&__p[32];
    if (*&__p[40] != *&__p[32])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = *&__p[32];
    }

    *&__p[40] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  return v20;
}

void sub_23C24C370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void **a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    std::vector<std::string>::~vector[abi:ne200100](&a16);
    if ((a24 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a19);
  _Unwind_Resume(a1);
}

BOOL support::fs::rename(const std::__fs::filesystem::path *a1, const std::__fs::filesystem::path *a2, std::error_code *a3)
{
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if ((a2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a2 = a2->__pn_.__r_.__value_.__r.__words[0];
  }

  rename(a1, a2, a3);
  return v3 == 0;
}

BOOL support::fs::chmod(const char *a1, mode_t a2)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  return chmod(a1, a2) == 0;
}

BOOL support::fs::removeDir(const char *a1)
{
  v1 = a1;
  v58[2] = *MEMORY[0x277D85DE8];
  v2.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v2.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v57.st_blksize = v2;
  *v57.st_qspare = v2;
  v57.st_birthtimespec = v2;
  *&v57.st_size = v2;
  v57.st_mtimespec = v2;
  v57.st_ctimespec = v2;
  *&v57.st_uid = v2;
  v57.st_atimespec = v2;
  *&v57.st_dev = v2;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v57))
  {
    v3 = 1;
    goto LABEL_112;
  }

  v54 = 0;
  v55 = 0;
  v56 = 0;
  support::fs::readDir(v1, &v54);
  v5 = 0;
  while (1)
  {
    v6 = v5;
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v55 - v54) >> 3);
    v3 = v7 <= v5;
    if (v7 <= v5)
    {
      break;
    }

    v8 = v54 + 24 * v5;
    memset(&__p, 170, sizeof(__p));
    if (v8[23] < 0)
    {
      std::string::__init_copy_ctor_external(&__p, *v8, *(v8 + 1));
    }

    else
    {
      v9 = *v8;
      __p.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&__p.__r_.__value_.__l.__data_ = v9;
    }

    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      if (__p.__r_.__value_.__l.__size_ == 1)
      {
        if (*__p.__r_.__value_.__l.__data_ == 46)
        {
          goto LABEL_61;
        }
      }

      else if (__p.__r_.__value_.__l.__size_ == 2 && *__p.__r_.__value_.__l.__data_ == 11822)
      {
        goto LABEL_61;
      }
    }

    else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 1)
    {
      if (__p.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_61;
      }
    }

    else if (HIBYTE(__p.__r_.__value_.__r.__words[2]) == 2 && LOWORD(__p.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_61;
    }

    v11 = SHIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    if (v11 >= 0)
    {
      size = HIBYTE(v1->__pn_.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v1->__pn_.__r_.__value_.__l.__size_;
    }

    v13 = size + 1;
    if (size + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v13 < 0x17)
    {
      memset(&v57, 0, 24);
      v15 = &v57;
      HIBYTE(v57.st_gid) = size + 1;
      if (!size)
      {
        goto LABEL_38;
      }
    }

    else
    {
      if ((v13 | 7) == 0x17)
      {
        v14 = 25;
      }

      else
      {
        v14 = (v13 | 7) + 1;
      }

      v15 = operator new(v14);
      v57.st_ino = size + 1;
      *&v57.st_uid = v14 | 0x8000000000000000;
      *&v57.st_dev = v15;
    }

    v16 = v1->__pn_.__r_.__value_.__r.__words[0];
    if (v11 >= 0)
    {
      v17 = v1;
    }

    else
    {
      v17 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    memmove(v15, v17, size);
LABEL_38:
    *&v15[size] = 47;
    if ((v10 & 0x80000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((v10 & 0x80000000) == 0)
    {
      v19 = v10;
    }

    else
    {
      v19 = __p.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v57, p_p, v19);
    v21 = v20->__r_.__value_.__r.__words[0];
    v58[0] = v20->__r_.__value_.__l.__size_;
    *(v58 + 7) = *(&v20->__r_.__value_.__r.__words[1] + 7);
    v22 = HIBYTE(v20->__r_.__value_.__r.__words[2]);
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p.__r_.__value_.__r.__words[0] = v21;
    __p.__r_.__value_.__l.__size_ = v58[0];
    *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v58 + 7);
    *(&__p.__r_.__value_.__s + 23) = v22;
    if (SHIBYTE(v57.st_gid) < 0)
    {
      operator delete(*&v57.st_dev);
      v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v21 = __p.__r_.__value_.__r.__words[0];
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v57.st_blksize = v23;
    *v57.st_qspare = v23;
    v57.st_birthtimespec = v23;
    *&v57.st_size = v23;
    v57.st_mtimespec = v23;
    v57.st_ctimespec = v23;
    *&v57.st_uid = v23;
    v57.st_atimespec = v23;
    if (v22 >= 0)
    {
      v24 = &__p;
    }

    else
    {
      v24 = v21;
    }

    *&v57.st_dev = v23;
    if (!stat(v24, &v57))
    {
      v29 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v30 = opendir(v29);
      v31 = v30;
      if (v30)
      {
        v32 = readdir(v30);
        closedir(v31);
        if (v32)
        {
          v33 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
          {
            v33 = __p.__r_.__value_.__l.__size_;
            v35 = __p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
            v36 = (__p.__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
            if (v36 != __p.__r_.__value_.__l.__size_)
            {
              v34 = __p.__r_.__value_.__r.__words[0];
              goto LABEL_89;
            }

            if (v35 == 0x7FFFFFFFFFFFFFF7)
            {
              std::string::__throw_length_error[abi:ne200100]();
            }

            v34 = __p.__r_.__value_.__r.__words[0];
            if (v36 > 0x3FFFFFFFFFFFFFF2)
            {
              v40 = 0;
              v39 = 0x7FFFFFFFFFFFFFF7;
            }

            else
            {
LABEL_74:
              v37 = 2 * v36;
              if (v35 > 2 * v36)
              {
                v37 = v35;
              }

              if ((v37 | 7) == 0x17)
              {
                v38 = 25;
              }

              else
              {
                v38 = (v37 | 7) + 1;
              }

              if (v37 >= 0x17)
              {
                v39 = v38;
              }

              else
              {
                v39 = 23;
              }

              v40 = v36 == 22;
            }

            v41 = operator new(v39);
            v42 = v41;
            if (v36)
            {
              memmove(v41, v34, v36);
            }

            *(v42 + v36) = 47;
            if (!v40)
            {
              operator delete(v34);
            }

            __p.__r_.__value_.__l.__size_ = v35;
            __p.__r_.__value_.__r.__words[2] = v39 | 0x8000000000000000;
            __p.__r_.__value_.__r.__words[0] = v42;
            v43 = (v42 + v35);
          }

          else
          {
            v34 = &__p;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) == 22)
            {
              v35 = 23;
              v36 = 22;
              goto LABEL_74;
            }

LABEL_89:
            v34->__r_.__value_.__s.__data_[v33] = 47;
            v44 = v33 + 1;
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              __p.__r_.__value_.__l.__size_ = v44;
            }

            else
            {
              *(&__p.__r_.__value_.__s + 23) = v44 & 0x7F;
            }

            v43 = v34 + v44;
          }

          *v43 = 0;
          v28 = support::fs::removeDir(&__p);
          if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            goto LABEL_7;
          }

          goto LABEL_6;
        }
      }
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v26 = &__p;
    }

    else
    {
      v26 = __p.__r_.__value_.__r.__words[0];
    }

    if (!remove(v26, v25))
    {
LABEL_61:
      v28 = 1;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v27 = &__p;
    }

    else
    {
      v27 = __p.__r_.__value_.__r.__words[0];
    }

    v28 = unlink(v27) == 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

LABEL_6:
    operator delete(__p.__r_.__value_.__l.__data_);
LABEL_7:
    v5 = v6 + 1;
    if ((v28 & 1) == 0)
    {
      goto LABEL_104;
    }
  }

  if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = v1;
  }

  else
  {
    v45 = v1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (remove(v45, v4))
  {
    if ((v1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v46 = v1;
    }

    else
    {
      v46 = v1->__pn_.__r_.__value_.__r.__words[0];
    }

    unlink(v46);
  }

LABEL_104:
  v47 = v54;
  if (v54)
  {
    v48 = v55;
    v49 = v54;
    if (v55 != v54)
    {
      do
      {
        v50 = *(v48 - 1);
        v48 -= 3;
        if (v50 < 0)
        {
          operator delete(*v48);
        }
      }

      while (v48 != v47);
      v49 = v54;
    }

    v55 = v47;
    operator delete(v49);
  }

LABEL_112:
  v51 = *MEMORY[0x277D85DE8];
  return v3;
}

void sub_23C24C95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((a14 & 0x80000000) == 0)
  {
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

BOOL support::fs::removeFile(const std::__fs::filesystem::path *a1, std::error_code *a2)
{
  v2 = a1;
  if ((a1->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    a1 = a1->__pn_.__r_.__value_.__r.__words[0];
  }

  if (!remove(a1, a2))
  {
    return 1;
  }

  if ((v2->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = v2->__pn_.__r_.__value_.__r.__words[0];
  }

  return unlink(v3) == 0;
}

uint64_t support::fs::removeDirContents(const char *a1, unint64_t a2)
{
  v3 = a1;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  support::fs::readDir(a1, &v59);
  v54 = time(0);
  v5 = v59;
  v4 = v60;
  if (v59 == v60)
  {
    v49 = 1;
    if (v59)
    {
      goto LABEL_108;
    }

    return v49 & 1;
  }

  v6 = a2;
  v55 = 1;
  while (1)
  {
    memset(&v58, 170, sizeof(v58));
    if (*(v5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v58, *v5, v5[1]);
    }

    else
    {
      v7 = *v5;
      v58.__r_.__value_.__r.__words[2] = v5[2];
      *&v58.__r_.__value_.__l.__data_ = v7;
    }

    v8 = SHIBYTE(v58.__r_.__value_.__r.__words[2]);
    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
    {
      break;
    }

    if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) == 1)
    {
      if (v58.__r_.__value_.__s.__data_[0] == 46)
      {
        goto LABEL_98;
      }
    }

    else if (HIBYTE(v58.__r_.__value_.__r.__words[2]) == 2 && LOWORD(v58.__r_.__value_.__l.__data_) == 11822)
    {
      goto LABEL_98;
    }

LABEL_19:
    memset(__p, 170, 24);
    v9 = v3[23];
    if (v9 >= 0)
    {
      v10 = *(v3 + 23);
    }

    else
    {
      v10 = *(v3 + 1);
    }

    v11 = v10 + 1;
    if (v10 + 1 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v11 < 0x17)
    {
      memset(&v62, 0, 24);
      v16 = &v62;
      HIBYTE(v62.st_gid) = v10 + 1;
      if (!v10)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v3;
      v13 = v4;
      v14 = a2;
      if ((v11 | 7) == 0x17)
      {
        v15 = 25;
      }

      else
      {
        v15 = (v11 | 7) + 1;
      }

      v16 = operator new(v15);
      v62.st_ino = v10 + 1;
      *&v62.st_uid = v15 | 0x8000000000000000;
      *&v62.st_dev = v16;
      a2 = v14;
      v4 = v13;
      v3 = v12;
    }

    v17 = *v3;
    if (v9 >= 0)
    {
      v18 = v3;
    }

    else
    {
      v18 = *v3;
    }

    memmove(v16, v18, v10);
LABEL_33:
    *&v16[v10] = 47;
    if ((v8 & 0x80000000) == 0)
    {
      v19 = &v58;
    }

    else
    {
      v19 = v58.__r_.__value_.__r.__words[0];
    }

    if ((v8 & 0x80000000) == 0)
    {
      size = v8;
    }

    else
    {
      size = v58.__r_.__value_.__l.__size_;
    }

    v21 = std::string::append(&v62, v19, size);
    v22 = *&v21->__r_.__value_.__l.__data_;
    __p[2] = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v62.st_gid) < 0)
    {
      operator delete(*&v62.st_dev);
      if (!a2)
      {
        goto LABEL_50;
      }
    }

    else if (!a2)
    {
      goto LABEL_50;
    }

    v23.tv_sec = 0xAAAAAAAAAAAAAAAALL;
    v23.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
    *&v62.st_blksize = v23;
    *v62.st_qspare = v23;
    v62.st_birthtimespec = v23;
    *&v62.st_size = v23;
    v62.st_mtimespec = v23;
    v62.st_ctimespec = v23;
    v62.st_atimespec = v23;
    *&v62.st_dev = v23;
    *&v62.st_uid = v23;
    if (SHIBYTE(__p[2]) >= 0)
    {
      v24 = __p;
    }

    else
    {
      v24 = __p[0];
    }

    if (!stat(v24, &v62) && difftime(v54, v62.st_ctimespec.tv_sec) >= v6)
    {
LABEL_50:
      v27.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v27.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v62.st_blksize = v27;
      *v62.st_qspare = v27;
      v62.st_birthtimespec = v27;
      *&v62.st_size = v27;
      v62.st_mtimespec = v27;
      v62.st_ctimespec = v27;
      v62.st_atimespec = v27;
      *&v62.st_dev = v27;
      *&v62.st_uid = v27;
      if (SHIBYTE(__p[2]) >= 0)
      {
        v28 = __p;
      }

      else
      {
        v28 = __p[0];
      }

      if (stat(v28, &v62) || (SHIBYTE(__p[2]) >= 0 ? (v32 = __p) : (v32 = __p[0]), (v33 = opendir(v32), (v34 = v33) == 0) || (v35 = readdir(v33), closedir(v34), !v35)))
      {
        if (SHIBYTE(__p[2]) >= 0)
        {
          v30 = __p;
        }

        else
        {
          v30 = __p[0];
        }

        if (!remove(v30, v29) || (SHIBYTE(__p[2]) >= 0 ? (v31 = __p) : (v31 = __p[0]), !unlink(v31)))
        {
LABEL_92:
          v26 = 0;
          v55 = 1;
          v25 = 1;
          if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        goto LABEL_62;
      }

      v36 = v3[23];
      if (v36 >= 0)
      {
        v37 = *(v3 + 23);
      }

      else
      {
        v37 = *(v3 + 1);
      }

      v38 = v37 + 1;
      if (v37 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 < 0x17)
      {
        memset(&v56, 0, sizeof(v56));
        v41 = &v56;
        *(&v56.__r_.__value_.__s + 23) = v37 + 1;
        if (v37)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v39 = a2;
        if ((v38 | 7) == 0x17)
        {
          v40 = 25;
        }

        else
        {
          v40 = (v38 | 7) + 1;
        }

        v41 = operator new(v40);
        v56.__r_.__value_.__l.__size_ = v37 + 1;
        v56.__r_.__value_.__r.__words[2] = v40 | 0x8000000000000000;
        v56.__r_.__value_.__r.__words[0] = v41;
        a2 = v39;
LABEL_79:
        v42 = *v3;
        if (v36 >= 0)
        {
          v43 = v3;
        }

        else
        {
          v43 = *v3;
        }

        memmove(v41, v43, v37);
      }

      *&v41[v37] = 47;
      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v44 = &v58;
      }

      else
      {
        v44 = v58.__r_.__value_.__r.__words[0];
      }

      if ((v58.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v58.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v58.__r_.__value_.__l.__size_;
      }

      v46 = std::string::append(&v56, v44, v45);
      v47 = *&v46->__r_.__value_.__l.__data_;
      *&v62.st_uid = *(&v46->__r_.__value_.__l + 2);
      *&v62.st_dev = v47;
      v46->__r_.__value_.__l.__size_ = 0;
      v46->__r_.__value_.__r.__words[2] = 0;
      v46->__r_.__value_.__r.__words[0] = 0;
      v48 = support::fs::removeDir(&v62);
      if (SHIBYTE(v62.st_gid) < 0)
      {
        operator delete(*&v62.st_dev);
        if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_91;
        }
      }

      else if ((SHIBYTE(v56.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_91:
        if (v48)
        {
          goto LABEL_92;
        }

LABEL_62:
        v55 = 0;
        v25 = 0;
        v26 = 2;
        if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
        {
          goto LABEL_94;
        }

        goto LABEL_93;
      }

      operator delete(v56.__r_.__value_.__l.__data_);
      if (v48)
      {
        goto LABEL_92;
      }

      goto LABEL_62;
    }

    v25 = 0;
    v26 = 3;
    if ((SHIBYTE(__p[2]) & 0x80000000) == 0)
    {
      goto LABEL_94;
    }

LABEL_93:
    operator delete(__p[0]);
LABEL_94:
    if (v25)
    {
      goto LABEL_98;
    }

    if ((SHIBYTE(v58.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_96;
    }

LABEL_99:
    operator delete(v58.__r_.__value_.__l.__data_);
    if (v26 != 3)
    {
      goto LABEL_100;
    }

LABEL_3:
    v5 += 3;
    if (v5 == v4)
    {
      goto LABEL_105;
    }
  }

  if (v58.__r_.__value_.__l.__size_ == 1)
  {
    if (*v58.__r_.__value_.__l.__data_ == 46)
    {
      goto LABEL_98;
    }

    goto LABEL_19;
  }

  if (v58.__r_.__value_.__l.__size_ != 2 || *v58.__r_.__value_.__l.__data_ != 11822)
  {
    goto LABEL_19;
  }

LABEL_98:
  v26 = 0;
  if (SHIBYTE(v58.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_99;
  }

LABEL_96:
  if (v26 == 3)
  {
    goto LABEL_3;
  }

LABEL_100:
  if (!v26)
  {
    goto LABEL_3;
  }

LABEL_105:
  v5 = v59;
  v49 = v55;
  if (!v59)
  {
    return v49 & 1;
  }

LABEL_108:
  v50 = v60;
  v51 = v5;
  if (v60 != v5)
  {
    do
    {
      v52 = *(v50 - 1);
      v50 -= 3;
      if (v52 < 0)
      {
        operator delete(*v50);
      }
    }

    while (v50 != v5);
    v51 = v59;
  }

  v60 = v5;
  operator delete(v51);
  return v49 & 1;
}

void sub_23C24CFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, void **a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a31);
  _Unwind_Resume(a1);
}

void support::fs::moveDirUnique(const char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a1;
  v6.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v6.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v16.st_blksize = v6;
  *v16.st_qspare = v6;
  v16.st_birthtimespec = v6;
  *&v16.st_size = v6;
  v16.st_mtimespec = v6;
  v16.st_ctimespec = v6;
  *&v16.st_uid = v6;
  v16.st_atimespec = v6;
  *&v16.st_dev = v6;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v16))
  {
    goto LABEL_4;
  }

  v7 = (v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? v4 : v4->__pn_.__r_.__value_.__r.__words[0];
  v8 = opendir(v7);
  if (!v8)
  {
    goto LABEL_4;
  }

  v9 = v8;
  v10 = readdir(v8);
  closedir(v9);
  if (!v10)
  {
    goto LABEL_4;
  }

  memset(a3, 170, 24);
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  support::fs::createUniquePath(&__p, a3);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if ((v4->__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v12 = v4;
  }

  else
  {
    v12 = v4->__pn_.__r_.__value_.__r.__words[0];
  }

  if (*(a3 + 23) >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *a3;
  }

  rename(v12, v13, v11);
  if (v14)
  {
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

LABEL_4:
    *(a3 + 23) = 0;
    *a3 = 0;
  }
}

void sub_23C24D1BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getFileName(std::string *a1@<X8>)
{
  memset(__p, 170, sizeof(__p));
  ctu::tokenize();
  if (*(__p[1] - 1) < 0)
  {
    std::string::__init_copy_ctor_external(a1, *(__p[1] - 3), *(__p[1] - 2));
  }

  else
  {
    v2 = *(__p[1] - 24);
    a1->__r_.__value_.__r.__words[2] = *(__p[1] - 1);
    *&a1->__r_.__value_.__l.__data_ = v2;
  }

  if (__p[0])
  {
    v3 = __p[1];
    v4 = __p[0];
    if (__p[1] != __p[0])
    {
      do
      {
        v5 = *(v3 - 1);
        v3 -= 3;
        if (v5 < 0)
        {
          operator delete(*v3);
        }
      }

      while (v3 != __p[0]);
      v4 = __p[0];
    }

    operator delete(v4);
  }
}

void sub_23C24D290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::vector<std::string>::~vector[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t support::fs::lockDir(const char *a1)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = open(a1, 0);
  if ((v1 & 0x80000000) != 0)
  {
    return v1;
  }

  v5 = 1;
  v3[0] = 0;
  v3[1] = 0;
  v4 = getpid();
  if ((fcntl(v1, 9, v3) & 0x80000000) == 0)
  {
    return v1;
  }

  close(v1);
  return 0xFFFFFFFFLL;
}

BOOL support::fs::unlockDir(support::fs *this)
{
  v1 = this;
  v6 = 2;
  v4[0] = 0;
  v4[1] = 0;
  v5 = getpid();
  v2 = fcntl(v1, 9, v4) == 0;
  close(v1);
  return v2;
}

uint64_t support::fs::getFilteredFiles(const char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = *MEMORY[0x277D85DE8];
  *__error() = 0;
  if (a1[23] < 0)
  {
    v7 = opendir(*a1);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_69:
    if ((atomic_load_explicit(&qword_280C05D60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280C05D60))
    {
      qword_280C05D68 = 0;
      qword_280C05D70 = 0;
      __cxa_guard_release(&qword_280C05D60);
    }

    if (_MergedGlobals_4 == -1)
    {
      v36 = qword_280C05D70;
      if (!os_log_type_enabled(qword_280C05D70, OS_LOG_TYPE_ERROR))
      {
LABEL_72:
        v37 = 0;
        goto LABEL_75;
      }
    }

    else
    {
      dispatch_once(&_MergedGlobals_4, &__block_literal_global_1);
      v36 = qword_280C05D70;
      if (!os_log_type_enabled(qword_280C05D70, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_72;
      }
    }

    if (a1[23] < 0)
    {
      a1 = *a1;
    }

    v40 = __error();
    v41 = strerror(*v40);
    v48.st_dev = 136315394;
    *&v48.st_mode = a1;
    WORD2(v48.st_ino) = 2080;
    *(&v48.st_ino + 6) = v41;
    _os_log_error_impl(&dword_23C1C4000, v36, OS_LOG_TYPE_ERROR, "Failed to open base directory %s (%s)", &v48, 0x16u);
    goto LABEL_72;
  }

  v7 = opendir(a1);
  if (!v7)
  {
    goto LABEL_69;
  }

LABEL_3:
  v8 = v7;
  v9 = readdir(v7);
  if (v9)
  {
    v10 = v9;
    v42 = 0;
    while (1)
    {
      memset(__dst, 170, sizeof(__dst));
      v11 = strlen(v10->d_name);
      if (v11 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        if ((v11 | 7) == 0x17)
        {
          v15 = 25;
        }

        else
        {
          v15 = (v11 | 7) + 1;
        }

        v13 = operator new(v15);
        *&__dst[8] = v12;
        *&__dst[16] = v15 | 0x8000000000000000;
        *__dst = v13;
      }

      else
      {
        __dst[23] = v11;
        v13 = __dst;
        if (!v11)
        {
          __dst[0] = 0;
          v14 = __dst[23];
          if ((__dst[23] & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }

          goto LABEL_18;
        }
      }

      memmove(v13, v10->d_name, v12);
      v13[v12] = 0;
      v14 = __dst[23];
      if ((__dst[23] & 0x8000000000000000) == 0)
      {
LABEL_9:
        if (v14 == 1)
        {
          if (__dst[0] == 46)
          {
            goto LABEL_64;
          }
        }

        else if (v14 == 2 && *__dst == 11822)
        {
          goto LABEL_64;
        }

        goto LABEL_25;
      }

LABEL_18:
      if (*&__dst[8] == 1)
      {
        if (**__dst == 46)
        {
          goto LABEL_64;
        }
      }

      else if (*&__dst[8] == 2 && **__dst == 11822)
      {
        goto LABEL_64;
      }

LABEL_25:
      if (a4)
      {
        goto LABEL_55;
      }

      v16 = v8;
      v17 = a3;
      v18 = a4;
      v19.tv_sec = 0xAAAAAAAAAAAAAAAALL;
      v19.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
      *&v48.st_blksize = v19;
      *v48.st_qspare = v19;
      v48.st_birthtimespec = v19;
      *&v48.st_size = v19;
      v48.st_ctimespec = v19;
      v48.st_atimespec = v19;
      v48.st_mtimespec = v19;
      *&v48.st_dev = v19;
      *&v48.st_uid = v19;
      v20 = a1[23];
      v21 = a1;
      if (v20 >= 0)
      {
        v22 = *(a1 + 23);
      }

      else
      {
        v22 = *(a1 + 1);
      }

      v23 = v22 + 1;
      if (v22 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v23 < 0x17)
      {
        memset(&v44, 0, sizeof(v44));
        v25 = &v44;
        *(&v44.__r_.__value_.__s + 23) = v22 + 1;
        if (!v22)
        {
          a4 = v18;
          a1 = v21;
          goto LABEL_40;
        }
      }

      else
      {
        if ((v23 | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (v23 | 7) + 1;
        }

        v25 = operator new(v24);
        v44.__r_.__value_.__l.__size_ = v22 + 1;
        v44.__r_.__value_.__r.__words[2] = v24 | 0x8000000000000000;
        v44.__r_.__value_.__r.__words[0] = v25;
      }

      a1 = v21;
      v26 = *v21;
      if (v20 >= 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = *v21;
      }

      memmove(v25, v27, v22);
      a4 = v18;
LABEL_40:
      *&v25[v22] = 47;
      if ((v14 & 0x80000000) == 0)
      {
        v28 = __dst;
      }

      else
      {
        v28 = *__dst;
      }

      if ((v14 & 0x80000000) == 0)
      {
        v29 = v14;
      }

      else
      {
        v29 = *&__dst[8];
      }

      v30 = std::string::append(&v44, v28, v29);
      a3 = v17;
      v31 = *&v30->__r_.__value_.__l.__data_;
      v46 = v30->__r_.__value_.__r.__words[2];
      *__p = v31;
      v30->__r_.__value_.__l.__size_ = 0;
      v30->__r_.__value_.__r.__words[2] = 0;
      v30->__r_.__value_.__r.__words[0] = 0;
      if (v46 >= 0)
      {
        v32 = __p;
      }

      else
      {
        v32 = __p[0];
      }

      lstat(v32, &v48);
      v8 = v16;
      if (SHIBYTE(v46) < 0)
      {
        operator delete(__p[0]);
        if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
LABEL_51:
          if ((v48.st_mode & 0xF000) != 0xA000)
          {
            goto LABEL_55;
          }

          goto LABEL_64;
        }
      }

      else if ((SHIBYTE(v44.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_51;
      }

      operator delete(v44.__r_.__value_.__l.__data_);
      if ((v48.st_mode & 0xF000) != 0xA000)
      {
LABEL_55:
        if (std::regex_match[abi:ne200100]<std::char_traits<char>,std::allocator<char>,char,std::regex_traits<char>>(__dst, a2, 0))
        {
          v33 = *(a3 + 8);
          if (v33 >= *(a3 + 16))
          {
            v35 = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(a3, __dst);
          }

          else
          {
            if ((__dst[23] & 0x80000000) != 0)
            {
              std::string::__init_copy_ctor_external(*(a3 + 8), *__dst, *&__dst[8]);
            }

            else
            {
              v34 = *__dst;
              *(v33 + 16) = *&__dst[16];
              *v33 = v34;
            }

            v35 = (v33 + 24);
            *(a3 + 8) = v33 + 24;
          }

          *(a3 + 8) = v35;
          v42 = 1;
        }
      }

LABEL_64:
      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      v10 = readdir(v8);
      if (!v10)
      {
        goto LABEL_74;
      }
    }
  }

  v42 = 0;
LABEL_74:
  closedir(v8);
  v37 = v42;
LABEL_75:
  v38 = *MEMORY[0x277D85DE8];
  return v37 & 1;
}

void sub_23C24D878(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  *(v29 + 8) = v30;
  if (a29 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getBasePath(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (!*(a1 + 23))
    {
      *a2 = *a1;
      *(a2 + 16) = *(a1 + 16);
      return;
    }

LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    memset(&__p, 170, sizeof(__p));
    v3 = a1;
    support::fs::getFileName(&__p);
    v4 = *(v3 + 1);
    if ((v3[23] & 0x80u) == 0)
    {
      v5 = v3[23];
    }

    else
    {
      v3 = *v3;
      v5 = v4;
    }

    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v9 = &v3[v5];
    if (v5)
    {
      v10 = size == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v18 = &v3[v5];
    }

    else
    {
      v16 = p_p->__r_.__value_.__s.__data_[0];
      v14 = &p_p->__r_.__value_.__s.__data_[1];
      v15 = v16;
      v17 = v3;
      v18 = &v3[v5];
LABEL_36:
      while (2)
      {
        v19 = v17 + 1;
        while (*v17 != v15)
        {
          ++v17;
          ++v19;
          if (v17 == v9)
          {
            goto LABEL_20;
          }
        }

        v20 = size - 1;
        v21 = v14;
        while (v20)
        {
          if (v19 == v9)
          {
            goto LABEL_20;
          }

          v23 = *v19++;
          v22 = v23;
          v24 = *v21++;
          --v20;
          if (v22 != v24)
          {
            if (++v17 != v9)
            {
              goto LABEL_36;
            }

            goto LABEL_20;
          }
        }

        v18 = v17++;
        if (v17 != v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_20:
    v11 = v18 != v9 || size == 0;
    if (!v11 || v18 - v3 == -1)
    {
      goto LABEL_34;
    }

    if (v5 >= v18 - v3)
    {
      v12 = v18 - v3;
    }

    else
    {
      v12 = v5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v12 >= 0x17)
    {
      if ((v12 | 7) == 0x17)
      {
        v25 = 25;
      }

      else
      {
        v25 = (v12 | 7) + 1;
      }

      v13 = operator new(v25);
      *(&v27 + 1) = v12;
      v28 = v25 | 0x8000000000000000;
      *&v27 = v13;
    }

    else
    {
      HIBYTE(v28) = v12;
      v13 = &v27;
      if (!v12)
      {
        LOBYTE(v27) = 0;
        if ((*(a2 + 23) & 0x80000000) == 0)
        {
LABEL_33:
          *a2 = v27;
          *(a2 + 16) = v28;
          v7 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
LABEL_34:
          if (v7 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return;
        }

LABEL_53:
        operator delete(*a2);
        goto LABEL_33;
      }
    }

    memmove(v13, v3, v12);
    *(v13 + v12) = 0;
    if ((*(a2 + 23) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_53;
  }

  if (*(a1 + 8))
  {
    goto LABEL_6;
  }

  v26 = *a1;

  std::string::__init_copy_ctor_external(a2, v26, 0);
}

void sub_23C24DD84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void support::fs::getLastNumberDir(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v79, 170, sizeof(v79));
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v79, *a1, *(a1 + 8));
  }

  else
  {
    v79 = *a1;
  }

  v4 = v79.__r_.__value_.__r.__words[0];
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v79;
  }

  else
  {
    v5 = v79.__r_.__value_.__r.__words[0];
  }

  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v79.__r_.__value_.__l.__size_;
  }

  v7 = size + 1;
  do
  {
    v8 = v7 - 1;
    if (v7 == 1)
    {
      goto LABEL_20;
    }

    v9 = v5->__r_.__value_.__s.__data_[v7-- - 2];
  }

  while (v9 == 47);
  if (v8)
  {
    v10 = v8 - 1;
    if ((*(&v79.__r_.__value_.__s + 23) & 0x80) != 0)
    {
      if (v79.__r_.__value_.__l.__size_ > v10)
      {
        v79.__r_.__value_.__l.__size_ = v8;
        goto LABEL_19;
      }
    }

    else if (v10 < HIBYTE(v79.__r_.__value_.__r.__words[2]))
    {
      *(&v79.__r_.__value_.__s + 23) = v8;
      v4 = &v79;
LABEL_19:
      v4->__r_.__value_.__s.__data_[v8] = 0;
      goto LABEL_20;
    }

    std::string::__throw_out_of_range[abi:ne200100]();
  }

LABEL_20:
  memset(&v78, 170, sizeof(v78));
  support::fs::getBasePath(&v79, &v78);
  v11 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v11 = v79.__r_.__value_.__l.__size_;
  }

  if (!v11)
  {
    goto LABEL_35;
  }

  v12 = HIBYTE(v78.__r_.__value_.__r.__words[2]);
  if ((v78.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v78.__r_.__value_.__l.__size_;
  }

  if (!v12)
  {
LABEL_35:
    if ((*(a1 + 23) & 0x80000000) == 0)
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
      if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_151;
      }

      goto LABEL_37;
    }

    std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    goto LABEL_150;
  }

  memset(&v77, 170, sizeof(v77));
  support::fs::getFileName(&v77);
  v13 = 0x7FFFFFFFFFFFFFF7;
  memset(v76, 170, sizeof(v76));
  v14 = SHIBYTE(v77.__r_.__value_.__r.__words[2]);
  if ((v77.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v15 = HIBYTE(v77.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v15 = v77.__r_.__value_.__l.__size_;
  }

  v16 = v15 + 13;
  if (v15 + 13 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v16 < 0x17)
  {
    memset(v76, 0, sizeof(v76));
    v18 = v76;
    HIBYTE(v76[2]) = v15 + 13;
    if (!v15)
    {
      goto LABEL_45;
    }
  }

  else
  {
    if ((v16 | 7) == 0x17)
    {
      v17 = 25;
    }

    else
    {
      v17 = (v16 | 7) + 1;
    }

    v18 = operator new(v17);
    v76[1] = (v15 + 13);
    v76[2] = (v17 | 0x8000000000000000);
    v76[0] = v18;
  }

  if (v14 >= 0)
  {
    v19 = &v77;
  }

  else
  {
    v19 = v77.__r_.__value_.__r.__words[0];
  }

  memmove(v18, v19, v15);
LABEL_45:
  strcpy(v18 + v15, "-[[:alnum:]]*");
  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v74[32] = v20;
  v75 = v20;
  *v74 = v20;
  *&v74[16] = v20;
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v74, v76, 0);
  v71 = 0;
  v72 = 0;
  v73 = 0;
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v70, v78.__r_.__value_.__l.__data_, v78.__r_.__value_.__l.__size_);
  }

  else
  {
    v70 = v78;
  }

  std::locale::locale(&v64, v74);
  v65 = *&v74[8];
  v66 = *&v74[24];
  v67 = *&v74[40];
  v68 = v75;
  if (v75)
  {
    atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
  }

  v69 = *(&v75 + 1);
  if (!support::fs::getFilteredFiles(&v70, &v64, &v71, 0))
  {
    v24 = v68;
    if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v24->__on_zero_shared)(v24);
      std::__shared_weak_count::__release_weak(v24);
    }

    std::locale::~locale(&v64);
    if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v70.__r_.__value_.__l.__data_);
    }

    goto LABEL_85;
  }

  v21 = v71;
  v22 = v72;
  v23 = v68;
  if (v68 && !atomic_fetch_add(&v68->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

  std::locale::~locale(&v64);
  if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v70.__r_.__value_.__l.__data_);
    if (v21 == v22)
    {
      goto LABEL_85;
    }
  }

  else if (v21 == v22)
  {
LABEL_85:
    if (*(a1 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(a2, *a1, *(a1 + 8));
    }

    else
    {
      *&a2->__r_.__value_.__l.__data_ = *a1;
      a2->__r_.__value_.__r.__words[2] = *(a1 + 16);
    }

    goto LABEL_138;
  }

  v25 = v71;
  v26 = v72;
  if (v71 != v72)
  {
    v27 = 0;
    while (1)
    {
      memset(__p, 170, 24);
      ctu::tokenize();
      memset(&v62, 170, sizeof(v62));
      if (*(__p[1] - 1) < 0)
      {
        std::string::__init_copy_ctor_external(&v62, *(__p[1] - 3), *(__p[1] - 2));
      }

      else
      {
        v29 = *(__p[1] - 24);
        v62.__r_.__value_.__r.__words[2] = *(__p[1] - 1);
        *&v62.__r_.__value_.__l.__data_ = v29;
      }

      if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = &v62;
      }

      else
      {
        v30 = v62.__r_.__value_.__r.__words[0];
      }

      v31 = strtol(v30, 0, 0);
      if (v27 <= v31)
      {
        v27 = v31;
      }

      if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v62.__r_.__value_.__l.__data_);
        v32 = __p[0];
        if (__p[0])
        {
LABEL_80:
          v33 = __p[1];
          v28 = v32;
          if (__p[1] != v32)
          {
            do
            {
              v34 = *(v33 - 1);
              v33 -= 3;
              if (v34 < 0)
              {
                operator delete(*v33);
              }
            }

            while (v33 != v32);
            v28 = __p[0];
          }

          __p[1] = v32;
          operator delete(v28);
        }
      }

      else
      {
        v32 = __p[0];
        if (__p[0])
        {
          goto LABEL_80;
        }
      }

      v25 += 3;
      if (v25 == v26)
      {
        goto LABEL_89;
      }
    }
  }

  v27 = 0;
LABEL_89:
  v35 = SHIBYTE(v79.__r_.__value_.__r.__words[2]);
  if ((v79.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = HIBYTE(v79.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v36 = v79.__r_.__value_.__l.__size_;
  }

  v37 = v36 + 1;
  if (v36 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v37 < 0x17)
  {
    memset(&v62, 0, sizeof(v62));
    v39 = &v62;
    *(&v62.__r_.__value_.__s + 23) = v36 + 1;
    if (!v36)
    {
      goto LABEL_103;
    }
  }

  else
  {
    if ((v37 | 7) == 0x17)
    {
      v38 = 25;
    }

    else
    {
      v38 = (v37 | 7) + 1;
    }

    v39 = operator new(v38);
    v62.__r_.__value_.__l.__size_ = v36 + 1;
    v62.__r_.__value_.__r.__words[2] = v38 | 0x8000000000000000;
    v62.__r_.__value_.__r.__words[0] = v39;
  }

  if (v35 >= 0)
  {
    v40 = &v79;
  }

  else
  {
    v40 = v79.__r_.__value_.__r.__words[0];
  }

  memmove(v39, v40, v36);
LABEL_103:
  *&v39[v36] = 45;
  std::to_string(&v61, v27);
  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v61;
  }

  else
  {
    v41 = v61.__r_.__value_.__r.__words[0];
  }

  if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v42 = HIBYTE(v61.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v42 = v61.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v62, v41, v42);
  v44 = *&v43->__r_.__value_.__l.__data_;
  __p[2] = v43->__r_.__value_.__r.__words[2];
  *__p = v44;
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  v45 = SHIBYTE(__p[2]);
  if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
  {
    v45 = __p[1];
    v48 = __p[2] & 0x7FFFFFFFFFFFFFFFLL;
    v47 = (__p[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v47 == __p[1])
    {
      if (v48 == 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v46 = __p[0];
      if (v47 > 0x3FFFFFFFFFFFFFF2)
      {
        v51 = 0;
LABEL_124:
        v52 = operator new(v13);
        v53 = v52;
        if (v47)
        {
          memmove(v52, v46, v47);
        }

        v53[v47] = 47;
        if (!v51)
        {
          operator delete(v46);
        }

        __p[1] = v48;
        __p[2] = (v13 | 0x8000000000000000);
        __p[0] = v53;
        v54 = &v53[v48];
        goto LABEL_134;
      }

LABEL_115:
      v49 = 2 * v47;
      if (v48 > 2 * v47)
      {
        v49 = v48;
      }

      if ((v49 | 7) == 0x17)
      {
        v50 = 25;
      }

      else
      {
        v50 = (v49 | 7) + 1;
      }

      if (v49 >= 0x17)
      {
        v13 = v50;
      }

      else
      {
        v13 = 23;
      }

      v51 = v47 == 22;
      goto LABEL_124;
    }

    v46 = __p[0];
  }

  else
  {
    v46 = __p;
    if (SHIBYTE(__p[2]) == 22)
    {
      v47 = 22;
      v48 = 23;
      goto LABEL_115;
    }
  }

  *(v45 + v46) = 47;
  v55 = v45 + 1;
  if (SHIBYTE(__p[2]) < 0)
  {
    __p[1] = v55;
  }

  else
  {
    HIBYTE(__p[2]) = v55 & 0x7F;
  }

  v54 = &v55[v46];
LABEL_134:
  *v54 = 0;
  *&a2->__r_.__value_.__l.__data_ = *__p;
  a2->__r_.__value_.__r.__words[2] = __p[2];
  memset(__p, 0, 24);
  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

LABEL_138:
  v56 = v71;
  if (v71)
  {
    v57 = v72;
    v58 = v71;
    if (v72 != v71)
    {
      do
      {
        v59 = *(v57 - 1);
        v57 -= 3;
        if (v59 < 0)
        {
          operator delete(*v57);
        }
      }

      while (v57 != v56);
      v58 = v71;
    }

    v72 = v56;
    operator delete(v58);
  }

  v60 = v75;
  if (!v75 || atomic_fetch_add((v75 + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    std::locale::~locale(v74);
    if ((SHIBYTE(v76[2]) & 0x80000000) == 0)
    {
      goto LABEL_149;
    }

    goto LABEL_154;
  }

  (v60->__on_zero_shared)(v60);
  std::__shared_weak_count::__release_weak(v60);
  std::locale::~locale(v74);
  if (SHIBYTE(v76[2]) < 0)
  {
LABEL_154:
    operator delete(v76[0]);
    if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_155;
    }

LABEL_150:
    if ((SHIBYTE(v78.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_151;
    }

LABEL_37:
    operator delete(v78.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v79.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_38:
    operator delete(v79.__r_.__value_.__l.__data_);
    return;
  }

LABEL_149:
  if ((SHIBYTE(v77.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_150;
  }

LABEL_155:
  operator delete(v77.__r_.__value_.__l.__data_);
  if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_151:
  if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }
}

void sub_23C24E5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void **a41, uint64_t a42, uint64_t a43, std::locale a44)
{
  if (v44 < 0)
  {
    operator delete(__p);
    if (a15 < 0)
    {
LABEL_5:
      operator delete(a10);
      if ((a21 & 0x80000000) == 0)
      {
LABEL_9:
        std::vector<std::string>::~vector[abi:ne200100](&a41);
        std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a44);
        if (*(v45 - 161) < 0)
        {
          operator delete(*(v45 - 184));
          if ((*(v45 - 137) & 0x80000000) == 0)
          {
            goto LABEL_11;
          }
        }

        else if ((*(v45 - 137) & 0x80000000) == 0)
        {
LABEL_11:
          if (*(v45 - 113) < 0)
          {
            goto LABEL_12;
          }

          goto LABEL_16;
        }

        operator delete(*(v45 - 160));
        if (*(v45 - 113) < 0)
        {
LABEL_12:
          operator delete(*(v45 - 136));
          if ((*(v45 - 89) & 0x80000000) == 0)
          {
            goto LABEL_13;
          }

          goto LABEL_17;
        }

LABEL_16:
        if ((*(v45 - 89) & 0x80000000) == 0)
        {
LABEL_13:
          _Unwind_Resume(a1);
        }

LABEL_17:
        operator delete(*(v45 - 112));
        _Unwind_Resume(a1);
      }

LABEL_8:
      operator delete(a16);
      goto LABEL_9;
    }
  }

  else if (a15 < 0)
  {
    goto LABEL_5;
  }

  if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_9;
  }

  goto LABEL_8;
}

BOOL support::fs::getPartitionInfo(uint64_t a1, void *a2, void *a3, unint64_t *a4)
{
  if ((*(a1 + 23) & 0x80000000) == 0)
  {
    if (*(a1 + 23))
    {
      memset(&v11, 0, sizeof(v11));
      v7 = statvfs(a1, &v11);
      result = v7 == 0;
      if (v7)
      {
        return result;
      }

LABEL_7:
      *a4 = v11.f_frsize;
      f_bavail = v11.f_bavail;
      *a2 = v11.f_blocks;
      *a3 = f_bavail;
      return result;
    }

    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  memset(&v11, 0, sizeof(v11));
  v9 = statvfs(*a1, &v11);
  result = v9 == 0;
  if (!v9)
  {
    goto LABEL_7;
  }

  return result;
}

void *support::fs::readCurrentLine@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::istream::tellg();
  v4 = v11;
  if (v11 >= 2)
  {
    do
    {
      std::istream::seekg();
      if (std::istream::peek() == 10)
      {
        break;
      }
    }

    while (v4-- > 1);
  }

  std::istream::seekg();
  std::ios_base::getloc((a1 + *(*a1 - 24)));
  v6 = std::locale::use_facet(v10, MEMORY[0x277D82680]);
  v7 = (v6->__vftable[2].~facet_0)(v6, 10);
  std::locale::~locale(v10);
  result = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a2, v7);
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C24E940(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__darwin_time_t support::fs::getFileCreationTime(const char *a1)
{
  v1.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v1.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&v3.st_blksize = v1;
  *v3.st_qspare = v1;
  v3.st_birthtimespec = v1;
  *&v3.st_size = v1;
  v3.st_mtimespec = v1;
  v3.st_ctimespec = v1;
  *&v3.st_uid = v1;
  v3.st_atimespec = v1;
  *&v3.st_dev = v1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  if (stat(a1, &v3))
  {
    return 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    return v3.st_birthtimespec.tv_sec;
  }
}

void ___ZN7support2fsL16sGetOsLogContextEv_block_invoke()
{
  ctu::OsLogContext::OsLogContext(v0, "com.apple.telephony.abm", "supports.fs");
  ctu::OsLogContext::operator=();
  ctu::OsLogContext::~OsLogContext(v0);
}

std::string *std::regex_replace[abi:ne200100]<std::back_insert_iterator<std::string>,std::__wrap_iter<char const*>,std::regex_traits<char>,char>(std::string *a1, char *a2, char *a3, const std::regex_iterator<std::__wrap_iter<const char *>, char>::regex_type *a4, char *a5, unsigned __int32 a6)
{
  v6 = a6;
  v9 = a2;
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v37.__flags_ + 1) = -1431655766;
  *&v37.__match_.__prefix_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&v37.__match_.__unmatched_.matched = 0xAAAAAAAAAAAAAAAALL;
  *&v37.__match_.__suffix_.matched = v11;
  v37.__begin_.__i_ = a2;
  v37.__end_.__i_ = a3;
  v37.__pregex_ = a4;
  v37.__flags_ = a6;
  memset(&v37.__match_.__prefix_, 0, 17);
  memset(&v37.__match_.__suffix_, 0, 17);
  v37.__match_.__ready_ = 0;
  v37.__match_.__position_start_.__i_ = 0;
  memset(&v37.__match_, 0, 41);
  v39[6] = 0xAAAAAAAAAAAAAA00;
  v39[3] = 0xAAAAAAAAAAAAAAAALL;
  v40 = v11;
  v39[4] = 0;
  v39[5] = 0;
  v39[7] = 0;
  v39[8] = 0;
  LOBYTE(v40) = 0;
  BYTE8(v40) = 0;
  v41 = 0;
  *__p = 0u;
  memset(v39, 0, 25);
  std::basic_regex<char,std::regex_traits<char>>::__search<std::allocator<std::sub_match<char const*>>>(a4, a2, a3, __p, a6);
  std::match_results<std::__wrap_iter<char const*>>::__assign[abi:ne200100]<char const*,std::allocator<std::sub_match<char const*>>>(&v37.__match_.__matches_, v9, a3, __p, (v6 & 0x800) != 0);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  begin = v37.__match_.__matches_.__begin_;
  if (v37.__match_.__matches_.__end_ == v37.__match_.__matches_.__begin_)
  {
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_49;
    }

    for (; v9 != a3; ++v9)
    {
      std::string::push_back(a1, *v9);
    }

    goto LABEL_48;
  }

  v13 = strlen(a5);
  v14 = v13;
  if ((v6 & 0x200) == 0)
  {
    if ((v6 & 0x400) != 0)
    {
      i = v37.__match_.__prefix_.first.__i_;
      for (j = v37.__match_.__prefix_.second.__i_; i != j; ++i)
      {
        std::string::push_back(a1, *i);
      }

      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v37.__match_, a1, a5, &a5[v14], v6);
      v15 = v37.__match_.__suffix_.first.__i_;
      v16 = v37.__match_.__suffix_.second.__i_;
      if ((v6 & 0x200) != 0)
      {
        goto LABEL_48;
      }

      goto LABEL_44;
    }

    v36 = v6;
    v34 = v13;
    v35 = a5;
LABEL_14:
    v18 = v37.__match_.__prefix_.first.__i_;
    v17 = v37.__match_.__prefix_.second.__i_;
    while (1)
    {
      if (v18 == v17)
      {
        v6 = v36;
        a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v37.__match_, a1, v35, &v35[v34], v36);
        v15 = v37.__match_.__suffix_.first.__i_;
        v16 = v37.__match_.__suffix_.second.__i_;
        std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v37);
        if (v37.__match_.__matches_.__end_ == v37.__match_.__matches_.__begin_)
        {
          goto LABEL_43;
        }

        goto LABEL_14;
      }

      v22 = *v18;
      v23 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      if ((v23 & 0x80000000) == 0)
      {
        break;
      }

      v25 = a1->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
      size = v25 - 1;
      if (a1->__r_.__value_.__l.__size_ == v25 - 1)
      {
        if (v25 == 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v24 = a1->__r_.__value_.__r.__words[0];
        if (size <= 0x3FFFFFFFFFFFFFF2)
        {
          goto LABEL_24;
        }

        v29 = 0;
        v28 = 0x7FFFFFFFFFFFFFF7;
LABEL_34:
        v30 = operator new(v28);
        v20 = v30;
        if (size)
        {
          memmove(v30, v24, size);
        }

        if (!v29)
        {
          operator delete(v24);
        }

        a1->__r_.__value_.__r.__words[0] = v20;
        a1->__r_.__value_.__r.__words[2] = v28 | 0x8000000000000000;
        goto LABEL_40;
      }

      v20 = a1->__r_.__value_.__r.__words[0];
      size = a1->__r_.__value_.__l.__size_;
LABEL_40:
      a1->__r_.__value_.__l.__size_ = size + 1;
LABEL_16:
      v21 = v20 + size;
      *v21 = v22;
      v21[1] = 0;
      ++v18;
    }

    if (*(&a1->__r_.__value_.__s + 23) != 22)
    {
      size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
      *(&a1->__r_.__value_.__s + 23) = (v23 + 1) & 0x7F;
      v20 = a1;
      goto LABEL_16;
    }

    v24 = a1;
    size = 22;
LABEL_24:
    if (size + 1 > 2 * size)
    {
      v26 = size + 1;
    }

    else
    {
      v26 = 2 * size;
    }

    if ((v26 | 7) == 0x17)
    {
      v27 = 25;
    }

    else
    {
      v27 = (v26 | 7) + 1;
    }

    if (v26 >= 0x17)
    {
      v28 = v27;
    }

    else
    {
      v28 = 23;
    }

    v29 = size == 22;
    goto LABEL_34;
  }

  if ((v6 & 0x400) == 0)
  {
    do
    {
      a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v37.__match_, a1, a5, &a5[v14], v6);
      v15 = v37.__match_.__suffix_.first.__i_;
      v16 = v37.__match_.__suffix_.second.__i_;
      std::regex_iterator<std::__wrap_iter<char const*>,char,std::regex_traits<char>>::operator++(&v37);
    }

    while (v37.__match_.__matches_.__end_ != v37.__match_.__matches_.__begin_);
LABEL_43:
    if ((v6 & 0x200) != 0)
    {
      goto LABEL_48;
    }

LABEL_44:
    while (v15 != v16)
    {
      std::string::push_back(a1, *v15++);
    }

    goto LABEL_48;
  }

  a1 = std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(&v37.__match_, a1, a5, &a5[v13], v6);
LABEL_48:
  begin = v37.__match_.__matches_.__begin_;
LABEL_49:
  if (begin)
  {
    v37.__match_.__matches_.__end_ = begin;
    operator delete(begin);
  }

  return a1;
}

void sub_23C24EDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32)
{
  if (!__p)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(__p);
  _Unwind_Resume(exception_object);
}

std::string *std::match_results<std::__wrap_iter<char const*>>::format<std::back_insert_iterator<std::string>>(std::string::value_type ***a1, std::string *this, unsigned __int8 *a3, unsigned __int8 *a4, __int16 a5)
{
  v5 = a4;
  v6 = a3;
  v8 = a1;
  if ((a5 & 0x100) != 0)
  {
    if (a3 == a4)
    {
      return this;
    }

    v53 = (a1 + 3);
    while (1)
    {
      v30 = *v6;
      if (v30 != 92)
      {
        break;
      }

      v31 = v6 + 1;
      if (v6 + 1 == v5)
      {
        LOBYTE(v30) = 92;
LABEL_39:
        std::string::push_back(this, v30);
        v31 = v6;
        goto LABEL_40;
      }

      v30 = *v31;
      v47 = v30 - 48;
      if ((v30 - 48) > 9)
      {
        ++v6;
        goto LABEL_39;
      }

      v48 = v53;
      if (0xAAAAAAAAAAAAAAABLL * (v8[1] - *v8) > v47)
      {
        v48 = &(*v8)[3 * v47];
      }

      v49 = *v48;
      v50 = *(v48 + 8);
      if (*v48 != v50)
      {
        do
        {
          v51 = *v49++;
          std::string::push_back(this, v51);
        }

        while (v49 != v50);
      }

LABEL_40:
      v6 = v31 + 1;
      if (v31 + 1 == v5)
      {
        return this;
      }
    }

    if (v30 != 38)
    {
      goto LABEL_39;
    }

    v32 = *v8;
    v34 = **v8;
    v33 = v32[1];
    if (v34 == v33)
    {
      v31 = v6;
      v8 = a1;
      goto LABEL_40;
    }

    while (1)
    {
      while (1)
      {
        v36 = *v34;
        v37 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
        if (v37 < 0)
        {
          break;
        }

        if (*(&this->__r_.__value_.__s + 23) == 22)
        {
          v38 = this;
          size = 22;
          goto LABEL_52;
        }

        *(&this->__r_.__value_.__s + 23) = (v37 + 1) & 0x7F;
        v35 = this + v37;
        *v35 = v36;
        v35[1] = 0;
        if (++v34 == v33)
        {
          goto LABEL_77;
        }
      }

      v40 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
      size = v40 - 1;
      if (this->__r_.__value_.__l.__size_ == v40 - 1)
      {
        break;
      }

      v45 = this->__r_.__value_.__r.__words[0];
      size = this->__r_.__value_.__l.__size_;
LABEL_67:
      this->__r_.__value_.__l.__size_ = size + 1;
      v46 = &v45[size];
      *v46 = v36;
      v46[1] = 0;
      if (++v34 == v33)
      {
LABEL_77:
        v31 = v6;
        v5 = a4;
        v8 = a1;
        goto LABEL_40;
      }
    }

    if (v40 == 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v38 = this->__r_.__value_.__r.__words[0];
    if (size > 0x3FFFFFFFFFFFFFF2)
    {
      v44 = 0;
      v43 = 0x7FFFFFFFFFFFFFF7;
      v45 = operator new(0x7FFFFFFFFFFFFFF7uLL);
    }

    else
    {
LABEL_52:
      if (size + 1 > 2 * size)
      {
        v41 = size + 1;
      }

      else
      {
        v41 = 2 * size;
      }

      if ((v41 | 7) == 0x17)
      {
        v42 = 25;
      }

      else
      {
        v42 = (v41 | 7) + 1;
      }

      if (v41 >= 0x17)
      {
        v43 = v42;
      }

      else
      {
        v43 = 23;
      }

      v44 = size == 22;
      v45 = operator new(v43);
      if (!size)
      {
        goto LABEL_63;
      }
    }

    memmove(v45, v38, size);
LABEL_63:
    if (!v44)
    {
      operator delete(v38);
    }

    this->__r_.__value_.__r.__words[0] = v45;
    this->__r_.__value_.__r.__words[2] = v43 | 0x8000000000000000;
    goto LABEL_67;
  }

  if (a3 != a4)
  {
    do
    {
      v10 = *v6;
      v9 = v6 + 1;
      if (v10 == 36 && v9 != v5)
      {
        v12 = *v9;
        if (v12 > 0x26)
        {
          if (v12 == 39)
          {
            v27 = v8[9];
            v28 = v8[10];
            while (v27 != v28)
            {
              v29 = *v27++;
              std::string::push_back(this, v29);
            }

            goto LABEL_6;
          }

          if (v12 == 96)
          {
            v16 = v8[6];
            v17 = v8[7];
            while (v16 != v17)
            {
              v18 = *v16++;
              std::string::push_back(this, v18);
            }

            goto LABEL_6;
          }

LABEL_22:
          LODWORD(v19) = v12 - 48;
          if (v19 <= 9)
          {
            v19 = v19;
            if (v6 + 2 != v5)
            {
              v20 = v6[2];
              v21 = v20 - 48;
              v22 = v20 + 10 * v19 - 48;
              if (v21 > 9)
              {
                v9 = v6 + 1;
              }

              else
              {
                v19 = v22;
                v9 = v6 + 2;
              }
            }

            if (0xAAAAAAAAAAAAAAABLL * (v8[1] - *v8) <= v19)
            {
              v23 = (v8 + 3);
            }

            else
            {
              v23 = &(*v8)[3 * v19];
            }

            v24 = *v23;
            v25 = *(v23 + 8);
            if (*v23 != v25)
            {
              do
              {
                v26 = *v24++;
                std::string::push_back(this, v26);
              }

              while (v24 != v25);
            }

            goto LABEL_6;
          }

          goto LABEL_5;
        }

        if (v12 != 36)
        {
          if (v12 == 38)
          {
            v13 = **v8;
            v14 = (*v8)[1];
            while (v13 != v14)
            {
              v15 = *v13++;
              std::string::push_back(this, v15);
            }

            goto LABEL_6;
          }

          goto LABEL_22;
        }

        ++v6;
      }

LABEL_5:
      std::string::push_back(this, v10);
      v9 = v6;
LABEL_6:
      v6 = v9 + 1;
    }

    while (v9 + 1 != v5);
  }

  return this;
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v11 = -86;
  MEMORY[0x23EECDE90](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_23C24F408(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x23C24F3C8);
  }

  __cxa_rethrow();
}

void *Capabilities::create_default_global@<X0>(void *a1@<X8>)
{
  v3 = operator new(1uLL);
  *a1 = v3;
  result = operator new(0x20uLL);
  *result = &unk_284EFB748;
  result[1] = 0;
  result[2] = 0;
  result[3] = v3;
  a1[1] = result;
  return result;
}

uint64_t Capabilities::isCMHandDetectionSupported(Capabilities *this)
{
  capabilities::abs::supportsCMHandDetection(this);
  v1 = MEMORY[0x277CC1C38];

  return [v1 isCallHandednessAvailable];
}

void std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    operator delete(v1);
  }
}

uint64_t std::__shared_ptr_pointer<Capabilities *,std::shared_ptr<Capabilities>::__shared_ptr_default_delete<Capabilities,Capabilities>,std::allocator<Capabilities>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32DFC1)
  {
    if (((v2 & 0x800000023C32DFC1 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32DFC1))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32DFC1 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void PipeContext::stop(PipeContext *this)
{
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(this + 9);
    *(this + 8) = 0;
    *(this + 9) = 0;
    if (v3)
    {
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v3->__on_zero_shared)(v3);

        std::__shared_weak_count::__release_weak(v3);
      }
    }
  }
}

void PipeContext::start(PipeContext *this, CircularFileLogWriter::Params *a2)
{
  v4 = *(this + 9);
  *(this + 8) = 0;
  *(this + 9) = 0;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = operator new(0xB8uLL);
  CircularFileLogWriter::CircularFileLogWriter(v5, a2);
  std::shared_ptr<CircularFileLogWriter>::shared_ptr[abi:ne200100]<CircularFileLogWriter,std::shared_ptr<CircularFileLogWriter> ctu::SharedSynchronizable<CircularFileLogWriter>::make_shared_ptr<CircularFileLogWriter>(CircularFileLogWriter*)::{lambda(CircularFileLogWriter*)#1},0>(&block, v5);
  v6 = block;
  block = 0uLL;
  v7 = *(this + 9);
  *(this + 4) = v6;
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = *(&block + 1);
  if (*(&block + 1) && !atomic_fetch_add((*(&block + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(this + 8);
  if (v9)
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 0x40000000;
    v11[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
    v11[3] = &__block_descriptor_tmp;
    v11[4] = v9;
    v12 = v11;
    *&block = MEMORY[0x277D85DD0];
    *(&block + 1) = 0x40000000;
    v14 = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    v15 = &__block_descriptor_tmp_21;
    v16 = v9 + 8;
    v17 = &v12;
    v10 = *(v9 + 24);
    if (*(v9 + 32))
    {
      dispatch_async_and_wait(v10, &block);
    }

    else
    {
      dispatch_sync(v10, &block);
    }
  }
}

uint64_t PipeContext::write(PipeContext *this, const char *a2, uint64_t a3)
{
  v6 = *(this + 8);
  if (v6)
  {
    (*(*v6 + 72))(v6, a2, a3);
  }

  result = *(this + 7);
  if (result)
  {
    v8 = a3;
    v9 = a2;
    return (*(*result + 48))(result, &v9, &v8);
  }

  return result;
}

uint64_t PipeContext::pause(PipeContext *this)
{
  result = *(this + 8);
  if (result)
  {
    return (*(*result + 16))();
  }

  return result;
}

void PipeContext::resume(PipeContext *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
    v3[3] = &__block_descriptor_tmp;
    v3[4] = v1;
    v4 = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
    block[3] = &__block_descriptor_tmp_21;
    block[4] = v1 + 8;
    block[5] = &v4;
    v2 = *(v1 + 24);
    if (*(v1 + 32))
    {
      dispatch_async_and_wait(v2, block);
    }

    else
    {
      dispatch_sync(v2, block);
    }
  }
}

void PipeContext::setFileCapacity(PipeContext *this, uint64_t a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    v3[0] = MEMORY[0x277D85DD0];
    v3[1] = 0x40000000;
    v3[2] = ___ZN21CircularFileLogWriter11setCapacityEm_block_invoke;
    v3[3] = &__block_descriptor_tmp_8;
    v3[4] = v2;
    v3[5] = a2;
    ctu::SharedSynchronizable<CircularFileLogWriter>::execute_wrapped((v2 + 8), v3);
  }
}

uint64_t KernelPCIRestoreTrace::KernelPCIRestoreTrace(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  v4 = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  v12 = operator new(0x30uLL);
  v13 = xmmword_23C32E010;
  strcpy(v12, "com.apple.telephony.basebandservices.support");
  v11 = 16;
  strcpy(__p, "pci.kernel.trace");
  v5 = support::log::client::client((a1 + 56), &v12, __p);
  if (v11 < 0)
  {
    operator delete(*__p);
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else if ((SHIBYTE(v13) & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(v12);
LABEL_5:
  *(a1 + 136) = 0x4000;
  v6 = capabilities::ipc::defaultPCIBinaryTraceBufferCount(v5);
  v7 = *(a2 + 16);
  *(a1 + 160) = 0;
  *(a1 + 140) = v6;
  *(a1 + 144) = v7;
  *(a1 + 152) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = a1 + 184;
  v8 = *(a2 + 48);
  if (v8)
  {
    if (v8 == a2 + 24)
    {
      *(a1 + 224) = a1 + 200;
      (*(**(a2 + 48) + 24))(*(a2 + 48));
      return a1;
    }

    v8 = (*(*v8 + 16))(v8);
  }

  *(a1 + 224) = v8;
  return a1;
}

void sub_23C24FC68(_Unwind_Exception *a1)
{
  std::__tree<std::shared_ptr<PipeContext>>::destroy(*v4);
  std::__tree<KernelPCITrace::BuffContext *>::destroy(*v3);
  support::log::client::~client((v2 + 16));
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  ctu::SharedSynchronizable<diag::DIAGConfigurer>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void sub_23C24FCA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a20 & 0x80000000) == 0)
    {
LABEL_3:
      std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v21);
      ctu::SharedSynchronizable<diag::DIAGConfigurer>::~SharedSynchronizable(v20);
      _Unwind_Resume(a1);
    }
  }

  else if ((a20 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a15);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v21);
  ctu::SharedSynchronizable<diag::DIAGConfigurer>::~SharedSynchronizable(v20);
  _Unwind_Resume(a1);
}

void sub_23C24FD00(_Unwind_Exception *a1)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v2);
  ctu::SharedSynchronizable<diag::DIAGConfigurer>::~SharedSynchronizable(v1);
  _Unwind_Resume(a1);
}

void support::log::client::~client(support::log::client *this)
{
  *this = &unk_284EFB908;
  v1 = *(this + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_284EFB908;
  v1 = *(this + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_284EFB908;
  v1 = *(this + 8);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v2 = this;
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    this = v2;
  }

  operator delete(this);
}

void KernelPCIRestoreTrace::~KernelPCIRestoreTrace(KernelPCIRestoreTrace *this)
{
  v2 = **(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v9 = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_INFO, "KernelPCIRestoreTrace obj is gone", v9, 2u);
  }

  v3 = *(this + 28);
  if (v3 == (this + 200))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::__tree<std::shared_ptr<PipeContext>>::destroy(*(this + 23));
  std::__tree<KernelPCITrace::BuffContext *>::destroy(*(this + 20));
  *(this + 7) = &unk_284EFB908;
  v4 = *(this + 15);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 6);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 3);
  if (v6)
  {
    dispatch_release(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    dispatch_release(v7);
  }

  v8 = *(this + 1);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }
}

void KernelPCIRestoreTrace::start(uint64_t *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void KernelPCIRestoreTrace::stop(uint64_t *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void KernelPCIRestoreTrace::dumpPCIEState(uint64_t *a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = a1[1];
  if (!v4 || (v5 = *a1, (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x10uLL);
  *v8 = a1;
  v8[1] = v3;
  v9 = a1[2];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v10 = operator new(0x18uLL);
  *v10 = v8;
  v10[1] = v5;
  v10[2] = v7;
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

BOOL KernelPCIRestoreTrace::registerWithKernel_sync(KernelPCIRestoreTrace *this)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = **(this + 13);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG);
  if (v3)
  {
    *buf = 136315138;
    *&buf[4] = "registerWithKernel_sync";
    _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  }

  pci::transport::kernelTrace::create(buf, v3);
  v4 = *buf;
  if (*buf)
  {
    v5 = operator new(0x20uLL);
    *v5 = &unk_284EFB818;
    v5[1] = 0;
    v5[2] = 0;
    v5[3] = v4;
    *buf = 0;
    v6 = *(this + 6);
    *(this + 5) = v4;
    *(this + 6) = v5;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *buf = 0;
    v6 = *(this + 6);
    *(this + 5) = 0;
    *(this + 6) = 0;
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_9:
  v7 = *buf;
  *buf = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 5);
  if (!v8)
  {
    v22 = **(this + 13);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_28;
    }

    *buf = 0;
    v19 = "error: failed to create kernel trace obj";
    goto LABEL_26;
  }

  if (!*(this + 2))
  {
    v22 = **(this + 13);
    result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_28;
    }

    *buf = 0;
    v19 = "error: empty queue";
LABEL_26:
    v20 = v22;
    goto LABEL_77;
  }

  v9 = (*(*v8 + 24))(v8);
  v10 = *(this + 13);
  v11 = *v10;
  if ((v9 & 1) == 0)
  {
    result = os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      goto LABEL_28;
    }

    *buf = 0;
    v19 = "error: failed to start kernel trace";
    v20 = v11;
LABEL_77:
    v21 = 2;
    goto LABEL_78;
  }

  if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEFAULT, "ABP kernel interface started", buf, 2u);
  }

  LODWORD(v49) = 0;
  (*(**(this + 5) + 112))(*(this + 5), &v49);
  v12 = v49;
  if (!v49)
  {
    v24 = **(this + 13);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v24, OS_LOG_TYPE_ERROR, "error: failed to get buffer constraints from kernel", buf, 2u);
    }

    goto LABEL_79;
  }

  *(this + 34) = v49;
  v13 = **(this + 13);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = v12 >> 10;
    _os_log_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_INFO, "set buffer size to %d KB", buf, 8u);
  }

  v52 = 0;
  (*(**(this + 5) + 136))(*(this + 5), &v52);
  v14 = v52;
  if (v14 < *(this + 35) * (*(**(this + 5) + 40))())
  {
    v15 = **(this + 13);
    result = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (result)
    {
      v17 = v52;
      v18 = *(this + 35) * (*(**(this + 5) + 40))(*(this + 5));
      *buf = 67109376;
      *&buf[4] = v17;
      *&buf[8] = 1024;
      *&buf[10] = v18;
      v19 = "error: buffer count exceeded kernel limits (param: %u, assigned buffer: %u)";
      v20 = v15;
      v21 = 14;
LABEL_78:
      _os_log_error_impl(&dword_23C1C4000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
      goto LABEL_79;
    }

LABEL_28:
    v23 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (!(*(**(this + 5) + 40))(*(this + 5)))
  {
LABEL_75:
    result = 1;
    v45 = *MEMORY[0x277D85DE8];
    return result;
  }

  v25 = 0;
  v26 = this + 200;
  v48 = (this + 184);
  while (1)
  {
    v51 = -1431655766;
    if (!(*(**(this + 5) + 48))(*(this + 5), v25, &v51, &KernelPCIRestoreTrace::registerWithKernel_sync(void)::name, 256))
    {
      goto LABEL_74;
    }

    byte_27E1F3CDF = 0;
    if (KernelPCIRestoreTrace::registerWithKernel_sync(void)::name == 0x76655F7374617473 && dword_27E1F3BE8 == 7630437)
    {
      goto LABEL_74;
    }

    v28 = operator new(0x68uLL);
    v28->__shared_owners_ = 0;
    p_shared_owners = &v28->__shared_owners_;
    v28->__shared_weak_owners_ = 0;
    v28->__vftable = &unk_284EFB868;
    v30 = v51;
    v31 = *(this + 28);
    if (!v31)
    {
      goto LABEL_41;
    }

    if (v31 != v26)
    {
      v31 = (*(*v31 + 16))(v31);
LABEL_41:
      v54 = v31;
      goto LABEL_43;
    }

    v54 = buf;
    (*(*v31 + 24))(v31, buf);
LABEL_43:
    v32 = strlen(&KernelPCIRestoreTrace::registerWithKernel_sync(void)::name);
    if (v32 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v33 = v32;
    v34 = v26;
    v35 = v28 + 1;
    if (v32 >= 0x17)
    {
      v38 = (v32 | 7) == 0x17 ? 25 : (v32 | 7) + 1;
      v36 = operator new(v38);
      v28[1].__shared_owners_ = v33;
      v28[1].__shared_weak_owners_ = v38 | 0x8000000000000000;
      v28[1].__vftable = v36;
    }

    else
    {
      HIBYTE(v28[1].__shared_weak_owners_) = v32;
      v36 = &v28[1];
      if (!v32)
      {
        LOBYTE(v35->__vftable) = 0;
        LODWORD(v28[2].__vftable) = v30;
        v37 = v54;
        if (!v54)
        {
          goto LABEL_54;
        }

        goto LABEL_47;
      }
    }

    memcpy(v36, &KernelPCIRestoreTrace::registerWithKernel_sync(void)::name, v33);
    *(&v36->~__shared_weak_count + v33) = 0;
    LODWORD(v28[2].__vftable) = v30;
    v37 = v54;
    if (!v54)
    {
LABEL_54:
      v26 = v34;
      v28[3].__shared_owners_ = v37;
      goto LABEL_56;
    }

LABEL_47:
    v26 = v34;
    if (v37 == buf)
    {
      v28[3].__shared_owners_ = &v28[2].__shared_owners_;
      (*(*v37 + 24))(v37);
    }

    else
    {
      v28[3].__shared_owners_ = (*(*v37 + 16))(v37);
    }

LABEL_56:
    v28[3].__shared_weak_owners_ = 0;
    v28[4].__vftable = 0;
    if (v54 == buf)
    {
      (*(*v54 + 32))(v54);
      v49 = v28 + 1;
      v50 = v28;
      v39 = (this + 184);
      v40 = (this + 184);
      v41 = *v48;
      if (*v48)
      {
        goto LABEL_64;
      }

LABEL_68:
      v43 = operator new(0x30uLL);
      v43[4] = v35;
      v43[5] = v28;
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      *v43 = 0;
      v43[1] = 0;
      v43[2] = v40;
      *v39 = v43;
      v44 = **(this + 22);
      if (v44)
      {
        *(this + 22) = v44;
      }

      std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(this + 23), v43);
      ++*(this + 24);
      goto LABEL_71;
    }

    if (v54)
    {
      (*(*v54 + 40))();
    }

    v49 = v28 + 1;
    v50 = v28;
    v39 = (this + 184);
    v40 = (this + 184);
    v41 = *v48;
    if (!*v48)
    {
      goto LABEL_68;
    }

    while (1)
    {
LABEL_64:
      while (1)
      {
        v40 = v41;
        v42 = v41[4];
        if (v35 >= v42)
        {
          break;
        }

        v41 = *v40;
        v39 = v40;
        if (!*v40)
        {
          goto LABEL_68;
        }
      }

      if (v42 >= v35)
      {
        break;
      }

      v41 = v40[1];
      if (!v41)
      {
        v39 = v40 + 1;
        goto LABEL_68;
      }
    }

LABEL_71:
    if ((KernelPCIRestoreTrace::allocateBuffQueue_sync(this, &v49) & 1) == 0)
    {
      break;
    }

    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }

LABEL_74:
    v25 = (v25 + 1);
    if (v25 >= (*(**(this + 5) + 40))(*(this + 5)))
    {
      goto LABEL_75;
    }
  }

  v47 = **(this + 13);
  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_23C1C4000, v47, OS_LOG_TYPE_ERROR, "error: failed to allocate buffer", buf, 2u);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_82:
      (v28->__on_zero_shared)(v28);
      std::__shared_weak_count::__release_weak(v28);
    }
  }

  else if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
  {
    goto LABEL_82;
  }

LABEL_79:
  result = 0;
  v46 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23C250C18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::function<void ()(unsigned char const*,long)>::~function(va);
  std::__shared_weak_count::~__shared_weak_count(v5);
  operator delete(v7);
  _Unwind_Resume(a1);
}

void sub_23C250C6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t KernelPCIRestoreTrace::allocateBuffQueue_sync(uint64_t a1, uint64_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 104);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    if (*a2)
    {
      goto LABEL_3;
    }

LABEL_13:
    result = 0;
    goto LABEL_14;
  }

  *buf = 136315138;
  *v18 = "allocateBuffQueue_sync";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  if (!*a2)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (*(a1 + 140))
  {
    v5 = 0;
    while (1)
    {
      v6 = *(a1 + 136);
      v16 = 0;
      v7 = KernelPCIRestoreTrace::createBuffContext_sync(a1, v6, a2, &v16);
      v8 = (*(**(a1 + 40) + 72))(*(a1 + 40), *(*a2 + 24), *v7, *(v7 + 2), 0, readLogsCompletionCB, v7);
      v9 = *(a1 + 104);
      v10 = *v9;
      if (v8)
      {
        break;
      }

      ++v5;
      if (os_log_type_enabled(*v9, OS_LOG_TYPE_INFO))
      {
        v11 = *(a1 + 136) >> 10;
        *buf = 67109376;
        *v18 = v5;
        *&v18[4] = 1024;
        *&v18[6] = v11;
        _os_log_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_INFO, "pre-assigned buffer # %u of size %u KB to fetch logs", buf, 0xEu);
      }

      if (v5 >= *(a1 + 140))
      {
        goto LABEL_9;
      }
    }

    v13 = v8;
    if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 136) >> 10;
      *buf = 67109632;
      *v18 = v5 + 1;
      *&v18[4] = 1024;
      *&v18[6] = v15;
      v19 = 1024;
      v20 = v13;
      _os_log_error_impl(&dword_23C1C4000, v10, OS_LOG_TYPE_ERROR, "error: failed to pre-assign buffer # %u of size %u KB to fetch logs (error [0x%x])", buf, 0x14u);
    }

    KernelPCIRestoreTrace::deleteBuffContext_sync(a1, v7);
    goto LABEL_13;
  }

LABEL_9:
  result = 1;
LABEL_14:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

void KernelPCIRestoreTrace::deregisterWithKernel_sync(KernelPCIRestoreTrace *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = **(this + 13);
  if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      goto LABEL_3;
    }

LABEL_6:
    LOWORD(v8) = 0;
    _os_log_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_INFO, "stopping kernel trace interface", &v8, 2u);
    v4 = (this + 40);
    v3 = *(this + 5);
    if (!v3)
    {
      goto LABEL_14;
    }

    goto LABEL_7;
  }

  v8 = 136315138;
  v9 = "deregisterWithKernel_sync";
  _os_log_debug_impl(&dword_23C1C4000, v2, OS_LOG_TYPE_DEBUG, "%s", &v8, 0xCu);
  v2 = **(this + 13);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = (this + 40);
  v3 = *(this + 5);
  if (!v3)
  {
    goto LABEL_14;
  }

LABEL_7:
  (*(*v3 + 32))(v3);
  v5 = *(this + 6);
  *(this + 5) = 0;
  *(this + 6) = 0;
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }

    v6 = *(this + 6);
    *v4 = 0;
    v4[1] = 0;
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

  else
  {
    *v4 = 0;
    v4[1] = 0;
  }

LABEL_14:
  v7 = *MEMORY[0x277D85DE8];
}

void *KernelPCIRestoreTrace::createBuffContext_sync(uint64_t *a1, uint64_t a2, uint64_t *a3, NSObject **a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = *a1[13];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v28 = 136315138;
    v29 = "createBuffContext_sync";
    _os_log_debug_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEBUG, "%s", &v28, 0xCu);
  }

  v9 = operator new(0x38uLL);
  v10 = a1[1];
  if (!v10 || (v11 = *a1, (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  v15 = *a3;
  v14 = a3[1];
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v16 = *a4;
  if (v16)
  {
    dispatch_retain(v16);
    dispatch_group_enter(v16);
  }

  *v9 = 0;
  v9[1] = a2;
  v9[2] = v11;
  v9[3] = v13;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v9[4] = v15;
  if (!v14)
  {
    v9[5] = 0;
LABEL_33:
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = std::__shared_weak_count::lock(v14);
  v9[5] = v17;
  if (!v17)
  {
    goto LABEL_33;
  }

  v9[6] = v16;
  if (v16)
  {
    dispatch_retain(v16);
    v18 = v9[6];
    if (v18)
    {
      dispatch_group_enter(v18);
    }
  }

  v19 = v9[1];
  if (v19)
  {
    *v9 = malloc_type_malloc(v19, 0x100004077774924uLL);
  }

  if (v16)
  {
    dispatch_group_leave(v16);
    dispatch_release(v16);
  }

  std::__shared_weak_count::__release_weak(v14);
  std::__shared_weak_count::__release_weak(v13);
  v21 = (a1 + 20);
  v20 = a1[20];
  if (v20)
  {
    while (1)
    {
      while (1)
      {
        v22 = v20;
        v23 = v20[4];
        if (v9 >= v23)
        {
          break;
        }

        v20 = *v22;
        v21 = v22;
        if (!*v22)
        {
          goto LABEL_27;
        }
      }

      if (v23 >= v9)
      {
        break;
      }

      v20 = v22[1];
      if (!v20)
      {
        v21 = v22 + 1;
        goto LABEL_27;
      }
    }
  }

  else
  {
    v22 = (a1 + 20);
LABEL_27:
    v24 = operator new(0x28uLL);
    v24[4] = v9;
    *v24 = 0;
    v24[1] = 0;
    v24[2] = v22;
    *v21 = v24;
    v25 = *a1[19];
    if (v25)
    {
      a1[19] = v25;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[20], v24);
    ++a1[21];
  }

  v26 = *MEMORY[0x277D85DE8];
  return v9;
}

void sub_23C251398(_Unwind_Exception *a1)
{
  v7 = v1[6];
  if (v7)
  {
    dispatch_group_leave(v7);
    v8 = v1[6];
    if (v8)
    {
      dispatch_release(v8);
    }
  }

  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](v5);
  v9 = v1[3];
  if (v9)
  {
    std::__shared_weak_count::__release_weak(v9);
    if (!v4)
    {
LABEL_6:
      if (!v3)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_6;
  }

  dispatch_group_leave(v4);
  dispatch_release(v4);
  if (!v3)
  {
LABEL_8:
    std::__shared_weak_count::__release_weak(v2);
    operator delete(v1);
    _Unwind_Resume(a1);
  }

LABEL_7:
  std::__shared_weak_count::__release_weak(v3);
  goto LABEL_8;
}

void KernelPCIRestoreTrace::deleteBuffContext_sync(uint64_t a1, unint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v20 = 136315138;
    v21 = "deleteBuffContext_sync";
    _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "%s", &v20, 0xCu);
    if (!a2)
    {
      goto LABEL_32;
    }
  }

  else if (!a2)
  {
    goto LABEL_32;
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    v6 = (a1 + 160);
    v7 = *(a1 + 160);
    do
    {
      v8 = v7[4];
      v9 = v8 >= a2;
      v10 = v8 < a2;
      if (v9)
      {
        v6 = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
    if (v6 != (a1 + 160) && v6[4] <= a2)
    {
      v11 = v6[1];
      if (v11)
      {
        do
        {
          v12 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        v13 = v6;
        do
        {
          v12 = v13[2];
          v14 = *v12 == v13;
          v13 = v12;
        }

        while (!v14);
      }

      if (*(a1 + 152) == v6)
      {
        *(a1 + 152) = v12;
      }

      --*(a1 + 168);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v5, v6);
      operator delete(v6);
      if (*a2)
      {
        free(*a2);
      }

      v15 = *(a2 + 48);
      if (v15)
      {
        dispatch_group_leave(v15);
        v16 = *(a2 + 48);
        if (v16)
        {
          dispatch_release(v16);
        }
      }

      v17 = *(a2 + 40);
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
      }

      v18 = *(a2 + 24);
      if (v18)
      {
        std::__shared_weak_count::__release_weak(v18);
      }

      operator delete(a2);
    }
  }

LABEL_32:
  v19 = *MEMORY[0x277D85DE8];
}

void KernelPCIRestoreTrace::dumpPCIEState_sync(uint64_t a1, NSObject **a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = **(a1 + 104);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(v40) = 136315138;
    *(&v40 + 4) = "dumpPCIEState_sync";
    _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "%s", &v40, 0xCu);
    if (!*(a1 + 40))
    {
      goto LABEL_48;
    }
  }

  else if (!*(a1 + 40))
  {
    goto LABEL_48;
  }

  v5 = dispatch_group_create();
  v6 = operator new(0x38uLL);
  v7 = v6;
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_284EFB8B8;
  v6[3] = v5;
  v8 = v6 + 3;
  v31 = a2;
  if (v5)
  {
    dispatch_retain(v5);
    v7[4] = 0;
    v7[5] = 0;
    v7[6] = 0;
    dispatch_release(v5);
    *&v40 = v8;
    *(&v40 + 1) = v7;
    v9 = *(a1 + 176);
    v10 = (a1 + 184);
    if (v9 != (a1 + 184))
    {
      goto LABEL_9;
    }

    goto LABEL_34;
  }

  v6[4] = 0;
  v6[5] = 0;
  v6[6] = 0;
  *&v40 = v6 + 3;
  *(&v40 + 1) = v6;
  v9 = *(a1 + 176);
  v10 = (a1 + 184);
  if (v9 != (a1 + 184))
  {
    do
    {
LABEL_9:
      v12 = v9[4];
      v11 = v9[5];
      v39[0] = v12;
      v39[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v13 = v40;
      if (*(v12 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v37, *v12, *(v12 + 8));
      }

      else
      {
        v14 = *v12;
        v37.__r_.__value_.__r.__words[2] = *(v12 + 16);
        *&v37.__r_.__value_.__l.__data_ = v14;
      }

      ctu::TrackedGroup::fork(v13, &v37, &group);
      v15 = KernelPCIRestoreTrace::createBuffContext_sync(a1, 0, v39, &group);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v37.__r_.__value_.__l.__data_);
      }

      v16 = (*(**(a1 + 40) + 80))(*(a1 + 40), *(v12 + 24), 1, flushLogsCompletionCB, v15);
      v17 = *(a1 + 104);
      v18 = *v17;
      if (v16)
      {
        if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "error: failed to assign null-buffer to trigger snapshot", buf, 2u);
        }

        KernelPCIRestoreTrace::deleteBuffContext_sync(a1, v15);
      }

      else if (os_log_type_enabled(*v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_INFO, "assigned null-buffer to trigger snapshot", buf, 2u);
      }

      if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v11->__on_zero_shared)(v11);
        std::__shared_weak_count::__release_weak(v11);
        v19 = v9[1];
        if (!v19)
        {
          do
          {
LABEL_31:
            v20 = v9[2];
            v21 = *v20 == v9;
            v9 = v20;
          }

          while (!v21);
          goto LABEL_8;
        }
      }

      else
      {
        v19 = v9[1];
        if (!v19)
        {
          goto LABEL_31;
        }
      }

      do
      {
        v20 = v19;
        v19 = *v19;
      }

      while (v19);
LABEL_8:
      v9 = v20;
    }

    while (v20 != v10);
  }

LABEL_34:
  v22 = *(a1 + 8);
  if (!v22 || (v23 = *a1, (v24 = std::__shared_weak_count::lock(v22)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v25 = v24;
  atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *v40;
  v27 = *(a1 + 16);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 1174405120;
  block[2] = ___ZN21KernelPCIRestoreTrace18dumpPCIEState_syncEN8dispatch13group_sessionE_block_invoke;
  block[3] = &__block_descriptor_tmp_26;
  v28 = *v31;
  block[4] = a1;
  object = v28;
  if (v28)
  {
    dispatch_retain(v28);
    dispatch_group_enter(object);
  }

  v34 = v23;
  v35 = v25;
  atomic_fetch_add_explicit(&v25->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  dispatch_group_notify(v26, v27, block);
  if (v35)
  {
    std::__shared_weak_count::__release_weak(v35);
  }

  if (object)
  {
    dispatch_group_leave(object);
    if (object)
    {
      dispatch_release(object);
    }
  }

  std::__shared_weak_count::__release_weak(v25);
  v29 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v29->__on_zero_shared)(v29);
    std::__shared_weak_count::__release_weak(v29);
  }

LABEL_48:
  v30 = *MEMORY[0x277D85DE8];
}

void sub_23C251AE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, dispatch_group_t group, char a28)
{
  if (v28)
  {
    dispatch_release(v28);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ctu::TrackedGroup::fork(uint64_t a1@<X0>, uint64_t a2@<X1>, NSObject **a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *__p = *a2;
  v7 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *object = 0u;
  v11 = 0u;
  v12 = 0u;
  ctu::TrackedGroup::fork(a1, __p, object, a3);
  if (*(&v12 + 1) && object[0])
  {
    v8 = object[0];
    v9 = object[1];
    (*(**(&v12 + 1) + 48))();
  }

  if (object[1])
  {
    os_release(object[1]);
  }

  v3 = *(&v12 + 1);
  object[1] = 0;
  *(&v12 + 1) = 0;
  if (v3 == &v11)
  {
    (*(*v3 + 32))(v3);
    v4 = *(&v12 + 1);
    object[0] = 0;
    if (*(&v12 + 1) != &v11)
    {
      goto LABEL_9;
    }

LABEL_13:
    (*(*v4 + 32))(v4);
    goto LABEL_14;
  }

  if (!v3)
  {
    object[0] = 0;
    if ((SHIBYTE(v7) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  (*(*v3 + 40))(v3);
  v4 = *(&v12 + 1);
  object[0] = 0;
  if (*(&v12 + 1) == &v11)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v4)
  {
    (*(*v4 + 40))(v4);
    if (SHIBYTE(v7) < 0)
    {
      goto LABEL_15;
    }

    goto LABEL_16;
  }

LABEL_14:
  if (SHIBYTE(v7) < 0)
  {
LABEL_15:
    operator delete(__p[0]);
  }

LABEL_16:
  v5 = *MEMORY[0x277D85DE8];
}

void sub_23C251D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  ctu::os::signpost_interval::~signpost_interval(&a18);
  if (a14 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  _Unwind_Resume(a1);
}

void ___ZN21KernelPCIRestoreTrace18dumpPCIEState_syncEN8dispatch13group_sessionE_block_invoke(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[6])
      {
        v6 = **(v3 + 104);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_INFO, "snapshot completion received (flush completion with null-log)", buf, 2u);
        }

        if (*(v3 + 32) == 1)
        {
          v7 = *(v3 + 176);
          v8 = (v3 + 184);
          if (v7 != v8)
          {
            while (1)
            {
              v9 = v7[4];
              v10 = v7[5];
              if (v10)
              {
                atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v11 = *(v9 + 64);
              if (!v11)
              {
                goto LABEL_15;
              }

              v16[0] = MEMORY[0x277D85DD0];
              v16[1] = 0x40000000;
              v16[2] = ___ZN21CircularFileLogWriter4openEv_block_invoke;
              v16[3] = &__block_descriptor_tmp;
              v16[4] = v11;
              v17 = v16;
              *buf = MEMORY[0x277D85DD0];
              v19 = 0x40000000;
              v20 = ___ZNK3ctu20SharedSynchronizableI21CircularFileLogWriterE20execute_wrapped_syncIRU13block_pointerFvvEEEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
              v21 = &__block_descriptor_tmp_21;
              v22 = v11 + 8;
              v23 = &v17;
              v12 = *(v11 + 24);
              if (*(v11 + 32))
              {
                break;
              }

              dispatch_sync(v12, buf);
              if (v10)
              {
LABEL_16:
                if (!atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v10->__on_zero_shared)(v10);
                  std::__shared_weak_count::__release_weak(v10);
                }
              }

LABEL_19:
              v13 = v7[1];
              if (v13)
              {
                do
                {
                  v14 = v13;
                  v13 = *v13;
                }

                while (v13);
              }

              else
              {
                do
                {
                  v14 = v7[2];
                  v15 = *v14 == v7;
                  v7 = v14;
                }

                while (!v15);
              }

              v7 = v14;
              if (v14 == v8)
              {
                goto LABEL_25;
              }
            }

            dispatch_async_and_wait(v12, buf);
LABEL_15:
            if (v10)
            {
              goto LABEL_16;
            }

            goto LABEL_19;
          }
        }
      }

LABEL_25:
      if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }
    }
  }
}

void __copy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__18weak_ptrI21KernelPCIRestoreTraceEE(void *a1, void *a2)
{
  v4 = a2[5];
  a1[5] = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = a1[5];
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }
}

void __destroy_helper_block_e8_40c30_ZTSN8dispatch13group_sessionE48c46_ZTSNSt3__18weak_ptrI21KernelPCIRestoreTraceEE(uint64_t a1)
{
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

void KernelPCIRestoreTrace::readLogsCompletion(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = *a1[13];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "readLogsCompletion";
    _os_log_debug_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEBUG, "%s", &v17, 0xCu);
    v9 = a1[1];
    if (!v9)
    {
LABEL_8:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v9 = a1[1];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v10 = *a1;
  v11 = std::__shared_weak_count::lock(v9);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = a2;
  v13[2] = a3;
  *(v13 + 6) = a4;
  v14 = a1[2];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C2522D0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void KernelPCIRestoreTrace::flushLogsCompletion(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v8 = *a1[13];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315138;
    v18 = "flushLogsCompletion";
    _os_log_debug_impl(&dword_23C1C4000, v8, OS_LOG_TYPE_DEBUG, "%s", &v17, 0xCu);
    v9 = a1[1];
    if (!v9)
    {
LABEL_8:
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }
  }

  else
  {
    v9 = a1[1];
    if (!v9)
    {
      goto LABEL_8;
    }
  }

  v10 = *a1;
  v11 = std::__shared_weak_count::lock(v9);
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = v11;
  v13 = operator new(0x20uLL);
  *v13 = a1;
  v13[1] = a2;
  *(v13 + 4) = a4;
  v13[3] = a3;
  v14 = a1[2];
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  v15 = operator new(0x18uLL);
  *v15 = v13;
  v15[1] = v10;
  v15[2] = v12;
  dispatch_async_f(v14, v15, dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_23C252464(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void ctu::TrackedGroup::fork(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, NSObject **a4@<X8>)
{
  v40 = *MEMORY[0x277D85DE8];
  v8 = dispatch_group_create();
  v9 = v8;
  *a4 = v8;
  if (v8)
  {
    dispatch_retain(v8);
    dispatch_group_enter(v9);
    dispatch_release(v9);
  }

  v10 = operator new(0x30uLL);
  *(v10 + 1) = 0;
  *(v10 + 2) = 0;
  *v10 = &unk_284EFB7C8;
  *(v10 + 24) = *a2;
  *(v10 + 5) = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *&v33 = v10 + 24;
  *(&v33 + 1) = v10;
  v11 = *a1;
  if (*a1)
  {
    dispatch_retain(*a1);
    dispatch_group_enter(v11);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  v13 = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  *&v34 = v10 + 24;
  *(&v34 + 1) = v10;
  atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  v35 = v11;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v11);
  }

  v14 = a3[1];
  v36 = *a3;
  v37 = v14;
  v15 = a3 + 2;
  v16 = a3[5];
  if (v16)
  {
    if (v16 == v15)
    {
      v39 = &v38;
      (*(*v16 + 24))(v16);
    }

    else
    {
      v39 = a3[5];
      a3[5] = 0;
    }
  }

  else
  {
    v39 = 0;
  }

  *a3 = 0;
  a3[1] = 0;
  v17 = a3[5];
  a3[5] = 0;
  if (v17 == v15)
  {
    (*(*v17 + 32))(v17);
  }

  else if (v17)
  {
    (*(*v17 + 40))(v17);
  }

  dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(v9, v13, &v34);
  ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(&v34);
  if (v13)
  {
    dispatch_release(v13);
  }

  v18 = *(a1 + 16);
  v19 = *(a1 + 24);
  if (v18 < v19)
  {
    *v18 = v33;
    if (*(&v33 + 1))
    {
      atomic_fetch_add_explicit((*(&v33 + 1) + 16), 1uLL, memory_order_relaxed);
    }

    v20 = v18 + 16;
    goto LABEL_36;
  }

  v21 = *(a1 + 8);
  v22 = v18 - v21;
  v23 = (v18 - v21) >> 4;
  v24 = v23 + 1;
  if ((v23 + 1) >> 60)
  {
    std::vector<std::sub_match<char const*>>::__throw_length_error[abi:ne200100]();
  }

  v25 = v19 - v21;
  if (v25 >> 3 > v24)
  {
    v24 = v25 >> 3;
  }

  if (v25 >= 0x7FFFFFFFFFFFFFF0)
  {
    v26 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = v24;
  }

  if (v26)
  {
    if (v26 >> 60)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v27 = operator new(16 * v26);
    v28 = &v27[16 * v23];
    v29 = &v27[16 * v26];
    *v28 = v33;
    v30 = *(&v33 + 1);
    if (!*(&v33 + 1))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v28 = (16 * v23);
  v29 = 0;
  *(16 * v23) = v33;
  v30 = *(&v33 + 1);
  if (*(&v33 + 1))
  {
LABEL_33:
    atomic_fetch_add_explicit((v30 + 16), 1uLL, memory_order_relaxed);
    v21 = *(a1 + 8);
    v22 = *(a1 + 16) - v21;
    v23 = v22 >> 4;
  }

LABEL_34:
  v20 = v28 + 16;
  v31 = &v28[-16 * v23];
  memcpy(v31, v21, v22);
  *(a1 + 8) = v31;
  *(a1 + 16) = v20;
  *(a1 + 24) = v29;
  if (v21)
  {
    operator delete(v21);
  }

LABEL_36:
  *(a1 + 16) = v20;
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  if (*(&v33 + 1) && !atomic_fetch_add((*(&v33 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(**(&v33 + 1) + 16))(*(&v33 + 1));
    std::__shared_weak_count::__release_weak(*(&v33 + 1));
  }

  v32 = *MEMORY[0x277D85DE8];
}

void sub_23C252958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFB7C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(NSObject *a1, NSObject *a2, __int128 *a3)
{
  v6 = operator new(0x48uLL);
  v7 = *a3;
  v8 = a3[1];
  *a3 = 0;
  *(a3 + 1) = 0;
  *v6 = v7;
  *(v6 + 1) = v8;
  *(a3 + 2) = 0;
  *(v6 + 4) = *(a3 + 4);
  v9 = a3 + 40;
  v11 = (a3 + 4);
  v10 = *(a3 + 8);
  if (!v10)
  {
    v12 = v6 + 64;
    goto LABEL_5;
  }

  if (v10 != v9)
  {
    *(v6 + 8) = v10;
    v12 = a3 + 4;
LABEL_5:
    *v12 = 0;
    goto LABEL_7;
  }

  *(v6 + 8) = v6 + 40;
  (*(*v10 + 24))(v10);
LABEL_7:
  *(a3 + 3) = 0;
  *(a3 + 4) = 0;
  v13 = *v11;
  *v11 = 0;
  if (v13 == v9)
  {
    (*(*v13 + 32))(v13);
  }

  else if (v13)
  {
    (*(*v13 + 40))(v13);
  }

  dispatch_group_notify_f(a1, a2, v6, dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
}

void dispatch::detail::group_notify<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  if (a1)
  {
    v1 = ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(a1);

    operator delete(v1);
  }
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  v2 = a1[8];
  if (v2 && a1[3])
  {
    v3 = a1[4];
    v12 = a1[3];
    v13 = v3;
    (*(*v2 + 48))(v2, &v13, &v12);
  }

  v4 = a1[4];
  if (v4)
  {
    os_release(v4);
  }

  v5 = a1 + 5;
  a1[4] = 0;
  v6 = a1[8];
  a1[8] = 0;
  if (v6 == a1 + 5)
  {
    (*(*v6 + 32))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
LABEL_9:
      if (v7)
      {
        (*(*v7 + 40))(v7);
        v8 = a1[2];
        if (!v8)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

LABEL_14:
      v8 = a1[2];
      if (!v8)
      {
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_13:
    (*(*v7 + 32))(v7);
    goto LABEL_14;
  }

  if (v6)
  {
    (*(*v6 + 40))(v6);
    v7 = a1[8];
    a1[3] = 0;
    if (v7 != v5)
    {
      goto LABEL_9;
    }

    goto LABEL_13;
  }

  a1[3] = 0;
  v8 = a1[2];
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_15:
  dispatch_group_leave(v8);
  v9 = a1[2];
  if (v9)
  {
    dispatch_release(v9);
  }

LABEL_17:
  v10 = a1[1];
  if (!v10 || atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return a1;
  }

  (v10->__on_zero_shared)(v10);
  std::__shared_weak_count::__release_weak(v10);
  return a1;
}

uint64_t std::function<void ()(unsigned char const*,long)>::~function(uint64_t a1)
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

void std::__tree<std::shared_ptr<PipeContext>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::shared_ptr<PipeContext>>::destroy(*a1);
    std::__tree<std::shared_ptr<PipeContext>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v2->__on_zero_shared)(v2);
      std::__shared_weak_count::__release_weak(v2);
      v3 = a1;
    }

    else
    {
      v3 = a1;
    }

    operator delete(v3);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v25 = *a1;
  v2 = (*a1)->__vftable;
  v3 = *v2[2].__get_deleter;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    *&buf[4] = "operator()";
    _os_log_debug_impl(&dword_23C1C4000, v3, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
    if (LOBYTE(v2->__on_zero_shared_weak) == 1)
    {
LABEL_3:
      v4 = *v2[2].__get_deleter;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_INFO, "pci kernel trace started already", buf, 2u);
      }

      goto LABEL_50;
    }
  }

  else if (LOBYTE(v2->__on_zero_shared_weak) == 1)
  {
    goto LABEL_3;
  }

  LOBYTE(v2->__on_zero_shared_weak) = 1;
  v5 = KernelPCIRestoreTrace::registerWithKernel_sync(v2);
  if (!v5)
  {
    v18 = *v2[2].__get_deleter;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_23C1C4000, v18, OS_LOG_TYPE_ERROR, "error: registering with kernel driver failed, de-registering to cleanup", buf, 2u);
    }

    KernelPCIRestoreTrace::deregisterWithKernel_sync(v2);
    goto LABEL_50;
  }

  on_zero_shared = v2[4].__on_zero_shared;
  if (on_zero_shared == &v2[4].__get_deleter)
  {
LABEL_50:
    shared_owners = v1->__shared_owners_;
    if (shared_owners)
    {
      dispatch_group_leave(shared_owners);
      v20 = v1->__shared_owners_;
      if (v20)
      {
        dispatch_release(v20);
      }
    }

    operator delete(v1);
    goto LABEL_54;
  }

  do
  {
    v8 = on_zero_shared[4];
    v7 = on_zero_shared[5];
    v31 = v8;
    v32 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v8)
    {
      v11 = *v2[2].__get_deleter;
      v5 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        *buf = 0;
        _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "error: moving to next pipe due to null pipe", buf, 2u);
        if (!v7)
        {
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      goto LABEL_30;
    }

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v9;
    v38 = v9;
    v35 = v9;
    *v36 = v9;
    *buf = v9;
    *v34 = v9;
    if (*(v8 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v30, *v8, *(v8 + 1));
    }

    else
    {
      v10 = *v8;
      v30.__r_.__value_.__r.__words[2] = *(v8 + 2);
      *&v30.__r_.__value_.__l.__data_ = v10;
    }

    v29 = 0;
    LOBYTE(__p) = 0;
    get_deleter = v2[3].__get_deleter;
    capabilities::ipc::ABPLogExtension(v26, v5);
    if (v27 >= 0)
    {
      v13 = v26;
    }

    else
    {
      v13 = *v26;
    }

    CircularFileLogWriter::Params::Params(buf, &v30, &__p, (get_deleter << 20), 0x100000uLL, v13, 0);
    if (v27 < 0)
    {
      operator delete(*v26);
      if ((v29 & 0x80000000) == 0)
      {
LABEL_24:
        if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_35;
      }
    }

    else if ((v29 & 0x80000000) == 0)
    {
      goto LABEL_24;
    }

    operator delete(__p);
    if ((SHIBYTE(v30.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_25:
      v14 = *v2[2].__get_deleter;
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        goto LABEL_27;
      }

LABEL_26:
      *v26 = 0;
      _os_log_impl(&dword_23C1C4000, v14, OS_LOG_TYPE_INFO, "creating and opening log writer", v26, 2u);
      goto LABEL_27;
    }

LABEL_35:
    operator delete(v30.__r_.__value_.__l.__data_);
    v14 = *v2[2].__get_deleter;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      goto LABEL_26;
    }

LABEL_27:
    PipeContext::start(v8, buf);
    if (SBYTE7(v37) < 0)
    {
      operator delete(v36[0]);
      if ((SHIBYTE(v35) & 0x80000000) == 0)
      {
LABEL_29:
        if (SHIBYTE(v34[0]) < 0)
        {
          goto LABEL_39;
        }

        goto LABEL_30;
      }
    }

    else if ((SHIBYTE(v35) & 0x80000000) == 0)
    {
      goto LABEL_29;
    }

    operator delete(v34[1]);
    if (SHIBYTE(v34[0]) < 0)
    {
LABEL_39:
      operator delete(*buf);
      if (!v7)
      {
        goto LABEL_40;
      }

      goto LABEL_31;
    }

LABEL_30:
    if (!v7)
    {
      goto LABEL_40;
    }

LABEL_31:
    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);
      std::__shared_weak_count::__release_weak(v7);
    }

LABEL_40:
    v15 = on_zero_shared[1];
    if (v15)
    {
      do
      {
        v16 = v15;
        v15 = *v15;
      }

      while (v15);
    }

    else
    {
      do
      {
        v16 = on_zero_shared[2];
        v17 = *v16 == on_zero_shared;
        on_zero_shared = v16;
      }

      while (!v17);
    }

    on_zero_shared = v16;
  }

  while (v16 != &v2[4].__get_deleter);
  v1 = v25;
  if (v25)
  {
    goto LABEL_50;
  }

LABEL_54:
  v21 = a1;
  if (a1)
  {
    v22 = a1[2];
    if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v22->__on_zero_shared)(v22);
      std::__shared_weak_count::__release_weak(v22);
      v21 = a1;
    }

    operator delete(v21);
  }

  v23 = *MEMORY[0x277D85DE8];
}

void sub_23C2534E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_23C2534FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30, uint64_t a31, char a32)
{
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](&a30);
  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

std::string *CircularFileLogWriter::Params::Params(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4, std::string::size_type a5, std::string::value_type *__s, std::string::value_type a7)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v13;
    if ((*(a3 + 23) & 0x80000000) == 0)
    {
LABEL_3:
      v14 = *a3;
      this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
      *&this[1].__r_.__value_.__l.__data_ = v14;
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
LABEL_6:
  this[2].__r_.__value_.__r.__words[0] = 0;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = a4;
  this[3].__r_.__value_.__l.__size_ = a5;
  this[3].__r_.__value_.__s.__data_[16] = a7;
  if (__s)
  {
    std::string::__assign_external(this + 2, __s);
  }

  else
  {
    *(&this[2].__r_.__value_.__s + 23) = 4;
    strcpy(&this[2], ".log");
  }

  return this;
}

void sub_23C253680(_Unwind_Exception *exception_object)
{
  if ((*(v1 + 23) & 0x80000000) == 0)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(*v1);
  _Unwind_Resume(exception_object);
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = **(v3 + 104);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *(v3 + 32) = 0;
    v5 = dispatch_group_create();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_8:
    v11 = **(v3 + 104);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "error: failed to create group", &buf, 2u);
      v10 = v2[1];
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v10 = v2[1];
      if (!v10)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_10;
  }

  LODWORD(buf) = 136315138;
  *(&buf + 4) = "operator()";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "%s", &buf, 0xCu);
  *(v3 + 32) = 0;
  v5 = dispatch_group_create();
  if (!v5)
  {
    goto LABEL_8;
  }

LABEL_3:
  v6 = v5;
  v15 = v5;
  dispatch_retain(v5);
  dispatch_group_enter(v6);
  KernelPCIRestoreTrace::dumpPCIEState_sync(v3, &v15);
  dispatch_group_leave(v6);
  dispatch_release(v6);
  v7 = v2[1];
  *&buf = v3;
  *(&buf + 1) = v7;
  if (v7)
  {
    dispatch_retain(v7);
    dispatch_group_enter(v7);
  }

  v8 = *(v3 + 16);
  v9 = operator new(0x10uLL);
  *v9 = v3;
  v9[1] = v7;
  dispatch_group_notify_f(v6, v8, v9, dispatch::detail::group_notify<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke);
  dispatch_release(v6);
  v10 = v2[1];
  if (v10)
  {
LABEL_10:
    dispatch_group_leave(v10);
    v12 = v2[1];
    if (v12)
    {
      dispatch_release(v12);
    }
  }

LABEL_12:
  operator delete(v2);
  v13 = *(a1 + 2);
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  operator delete(a1);
  v14 = *MEMORY[0x277D85DE8];
}

void sub_23C253910(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, void *);
  v8 = va_arg(va2, void);
  KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(va2);
  dispatch_release(v2);
  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 8);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void dispatch::detail::group_notify<KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,KernelPCIRestoreTrace::stop(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(KernelPCIRestoreTrace **a1)
{
  v1 = a1;
  v2 = *a1;
  KernelPCIRestoreTrace::deregisterWithKernel_sync(*a1);
  v3 = *(v2 + 22);
  v4 = (v2 + 184);
  if (v3 != (v2 + 184))
  {
    while (1)
    {
      v6 = v3[4];
      v5 = v3[5];
      v16 = v5;
      if (v5)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v7 = *(v6 + 64);
      if (v7 && ((*(*v7 + 16))(v7), v8 = *(v6 + 72), *(v6 + 64) = 0, *(v6 + 72) = 0, v8) && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        v9 = v16;
        if (v16)
        {
LABEL_10:
          if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v9->__on_zero_shared)(v9);
            std::__shared_weak_count::__release_weak(v9);
          }
        }
      }

      else
      {
        v9 = v16;
        if (v16)
        {
          goto LABEL_10;
        }
      }

      v10 = v3[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v3[2];
          v12 = *v11 == v3;
          v3 = v11;
        }

        while (!v12);
      }

      v3 = v11;
      if (v11 == v4)
      {
        v1 = a1;
        break;
      }
    }
  }

  std::__tree<std::shared_ptr<PipeContext>>::destroy(*(v2 + 23));
  *(v2 + 23) = 0;
  *(v2 + 24) = 0;
  *(v2 + 22) = v4;
  if (v1)
  {
    v13 = v1[1];
    if (v13)
    {
      dispatch_group_leave(v13);
      v14 = v1[1];
      if (v14)
      {
        dispatch_release(v14);
      }
    }

    operator delete(v1);
  }
}

void sub_23C253B70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_23C253B84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<std::__empty_state<char>>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0>(KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::dumpPCIEState(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = **(v3 + 104);
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = v2[1];
    *buf = v5;
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 136315138;
  *&buf[4] = "operator()";
  _os_log_debug_impl(&dword_23C1C4000, v4, OS_LOG_TYPE_DEBUG, "%s", buf, 0xCu);
  v5 = v2[1];
  *buf = v5;
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

LABEL_4:
  KernelPCIRestoreTrace::dumpPCIEState_sync(v3, buf);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v6 = v2[1];
  if (v6)
  {
    dispatch_group_leave(v6);
    v7 = v2[1];
    if (v7)
    {
      dispatch_release(v7);
    }
  }

  operator delete(v2);
  v8 = *(a1 + 2);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(a1);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_23C253D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (v10)
  {
    dispatch_group_leave(v10);
    dispatch_release(v10);
  }

  std::unique_ptr<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0,std::default_delete<KernelPCITrace::start(dispatch::group,ctu::cf::CFSharedRef<__CFDictionary const>)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<pci::transport::kernelTrace  *>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<pci::transport::kernelTrace  *>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<pci::transport::kernelTrace  *>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != 0x800000023C32E0F0)
  {
    if (((v2 & 0x800000023C32E0F0 & 0x8000000000000000) != 0) == __OFSUB__(v2, 0x800000023C32E0F0))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (0x800000023C32E0F0 & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

void std::__shared_ptr_emplace<PipeContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFB868;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<PipeContext>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (!v2 || atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = *(a1 + 80);
    if (v3 != a1 + 56)
    {
      goto LABEL_4;
    }

LABEL_9:
    (*(*v3 + 32))(v3);
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_10;
  }

  (v2->__on_zero_shared)(v2);
  std::__shared_weak_count::__release_weak(v2);
  v3 = *(a1 + 80);
  if (v3 == a1 + 56)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  if (*(a1 + 47) < 0)
  {
LABEL_10:
    v4 = *(a1 + 24);

    operator delete(v4);
  }
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284EFB8B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::__on_zero_shared(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          std::__shared_weak_count::__release_weak(v5);
        }

        v3 -= 16;
      }

      while (v3 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  v6 = a1[3];
  if (v6)
  {

    dispatch_release(v6);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::readLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  if (!v4)
  {
    v13 = **(v3 + 104);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v14 = "error: null buffer context in read completion callback";
LABEL_33:
    _os_log_error_impl(&dword_23C1C4000, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    operator delete(v2);
    v23 = *(a1 + 2);
    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  v5 = *(v2 + 6);
  if (v5 || !*v4)
  {
    v6 = **(v3 + 104);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "error: read logs completion failed (error [0x%x])", buf, 8u);
    }
  }

  else
  {
    v15 = **(v3 + 104);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = v2[2];
      *buf = 134217984;
      *&buf[4] = v16;
      _os_log_impl(&dword_23C1C4000, v15, OS_LOG_TYPE_INFO, "read logs completion of size %zu bytes", buf, 0xCu);
      v4 = v2[1];
    }

    v17 = v4[4];
    if (!v17)
    {
      v13 = **(v3 + 104);
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_28;
      }

      *buf = 0;
      v14 = "error: pipe context is null in read callback";
      goto LABEL_33;
    }

    v18 = *v4;
    v19 = v2[2];
    v20 = *(v17 + 64);
    if (v20)
    {
      (*(*v20 + 72))(v20, v18, v2[2]);
    }

    v21 = *(v17 + 56);
    if (v21)
    {
      v26 = v19;
      *buf = v18;
      (*(*v21 + 48))(v21, buf, &v26);
    }
  }

  v7 = v2[1];
  if ((*(v3 + 32) & 1) == 0)
  {
    KernelPCIRestoreTrace::deleteBuffContext_sync(v3, v2[1]);
    goto LABEL_28;
  }

  v8 = *(v7 + 32);
  if (!v8)
  {
    v13 = **(v3 + 104);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_28;
    }

    *buf = 0;
    v14 = "error: pipe context is null when trying to schedule read";
    goto LABEL_33;
  }

  v9 = (*(**(v3 + 40) + 72))(*(v3 + 40), *(v8 + 24), *v7, *(v7 + 8), 0, readLogsCompletionCB, v2[1]);
  v10 = *(v3 + 104);
  v11 = *v10;
  if (v9)
  {
    v12 = v9;
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      v25 = *(v7 + 8) >> 10;
      *buf = 134218240;
      *&buf[4] = v25;
      v28 = 1024;
      v29 = v12;
      _os_log_error_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_ERROR, "error: failed re-assigning new buffer of size %zu KB to fetch logs (error [0x%x])", buf, 0x12u);
    }

    KernelPCIRestoreTrace::deleteBuffContext_sync(v3, v7);
LABEL_28:
    operator delete(v2);
    v23 = *(a1 + 2);
    if (!v23)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (!os_log_type_enabled(*v10, OS_LOG_TYPE_DEBUG))
  {
    goto LABEL_28;
  }

  v22 = *(v7 + 8) >> 10;
  *buf = 134217984;
  *&buf[4] = v22;
  _os_log_debug_impl(&dword_23C1C4000, v11, OS_LOG_TYPE_DEBUG, "assigning new buffer of size %zu KB to fetch logs", buf, 0xCu);
  operator delete(v2);
  v23 = *(a1 + 2);
  if (!v23)
  {
    goto LABEL_31;
  }

LABEL_29:
  if (!atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
  }

LABEL_31:
  operator delete(a1);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_23C25448C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<KernelPCIRestoreTrace>::execute_wrapped<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>(KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0,dispatch_queue_s *::default_delete<KernelPCIRestoreTrace::flushLogsCompletion(BuffContext *,unsigned long,int)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = *(*a1 + 8);
  if (v4)
  {
    if (*v4)
    {
      v5 = *(v2 + 4);
      v6 = **(v3 + 104);
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          *&buf[4] = v5;
          _os_log_error_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_ERROR, "error: flush logs completion returned error (error [0x%x])", buf, 8u);
        }

LABEL_21:
        KernelPCIRestoreTrace::deleteBuffContext_sync(v3, v2[1]);
        goto LABEL_22;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v12 = v2[3];
        *buf = 134217984;
        *&buf[4] = v12;
        _os_log_impl(&dword_23C1C4000, v6, OS_LOG_TYPE_INFO, "flush logs completion of size %zu bytes", buf, 0xCu);
        v4 = v2[1];
      }

      v13 = v4[4];
      if (v13)
      {
        v14 = *v4;
        v15 = v2[3];
        v16 = *(v13 + 64);
        if (v16)
        {
          (*(*v16 + 72))(v16, v14, v2[3]);
        }

        v17 = *(v13 + 56);
        if (v17)
        {
          v20 = v15;
          *buf = v14;
          (*(*v17 + 48))(v17, buf, &v20);
        }

        goto LABEL_21;
      }

      v7 = **(v3 + 104);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v8 = "error: pipe context is null in flush callback";
    }

    else
    {
      v9 = **(v3 + 104);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_23C1C4000, v9, OS_LOG_TYPE_INFO, "snapshot received (flush completion with null-log)", buf, 2u);
        v4 = v2[1];
      }

      v10 = v4[4];
      if (v10)
      {
        v11 = *(v10 + 64);
        if (v11)
        {
          (*(*v11 + 16))(v11);
        }

        goto LABEL_21;
      }

      v7 = **(v3 + 104);
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_22;
      }

      *buf = 0;
      v8 = "error: pipe context is null in flush callback";
    }

    goto LABEL_8;
  }

  v7 = **(v3 + 104);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v8 = "error: buffContext is null";
LABEL_8:
    _os_log_error_impl(&dword_23C1C4000, v7, OS_LOG_TYPE_ERROR, v8, buf, 2u);
  }

LABEL_22:
  operator delete(v2);
  v18 = *(a1 + 2);
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(a1);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_23C2547C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  operator delete(v9);
  std::unique_ptr<void ctu::SharedSynchronizable<Trace>::execute_wrapped<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0>(KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&)::{lambda(void)#1},std::default_delete<KernelPCITrace::flushLogsCompletion(KernelPCITrace::BuffContext *,unsigned long,int)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t __cxx_global_var_init_0()
{
  {
    return __cxa_atexit(ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>::~PthreadMutexGuardPolicy, &ctu::Singleton<support::log::shared_stdio,support::log::shared_stdio,ctu::PthreadMutexGuardPolicy<support::log::shared_stdio>>::sInstance, &dword_23C1C4000);
  }

  return result;
}

uint64_t abm::debug::registerLogHandlers(abm::debug *this)
{
  if (!_MergedGlobals_5)
  {
    this = os_log_create("com.apple.telephony.abm", "libtu");
    _MergedGlobals_5 = this;
  }

  capabilities::abs::TUDebugFlags(this);
  TelephonyUtilDebugSetFlags();
  v1 = TelephonyUtilDebugRegisterDelegate();
  v2 = capabilities::radio::ice(v1);
  if ((v2 & 1) != 0 || (v3 = capabilities::radio::initium(v2), v3))
  {
    if (!qword_280C05D80)
    {
      qword_280C05D80 = os_log_create("com.apple.telephony.abm", "libktl");
    }

    KTLDebugRegisterDelegate();
    KTLDebugSetFlags();
  }

  else if (capabilities::radio::maverick(v3))
  {
    if (!qword_280C05D88)
    {
      qword_280C05D88 = os_log_create("com.apple.telephony.abm", "libetl");
    }

    ETLDebugRegisterDelegate();
  }

  if (!qword_280C05D90)
  {
    qword_280C05D90 = os_log_create("com.apple.telephony.abm", "bbu");
  }

  return MEMORY[0x2821F0CA0](0, abm::debug::handleDebugPrintBBU);
}