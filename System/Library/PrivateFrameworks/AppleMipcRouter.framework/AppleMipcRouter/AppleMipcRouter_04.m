void dispatch::detail::group_notify<abb::router::ClientProxy::handleRegistration_sync(xpc::dict)::$_0>(dispatch_group_s *,dispatch_queue_s *,abb::router::ClientProxy::handleRegistration_sync(xpc::dict)::$_0 &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = *a1;
  v4 = std::__shared_weak_count::lock(v2);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  if (a1[1])
  {
    v6 = *(v3 + 172);
    if (v6 <= 6)
    {
      if (((1 << v6) & 0x75) != 0)
      {
        goto LABEL_9;
      }

      if (v6 == 1)
      {
        abb::router::ClientProxy::setStatus_sync(v3, 2u);
      }
    }

    abb::router::ClientProxy::sendStatus_sync(v3, 2u);
  }

LABEL_9:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v7 = a1;
    if (!a1)
    {
      return;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = a1;
  if (!a1)
  {
    return;
  }

LABEL_11:
  v8 = v7[2];
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  operator delete(v7);
}

void sub_240EC3290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va1);
  std::unique_ptr<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<abb::router::Gateway::sleep_sync(dispatch::group_session)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void abb::router::TimerService::create(ctu::DispatchTimerService **a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v3 = operator new(0x30uLL);
  ctu::DispatchTimerService::DispatchTimerService(v3);
  *v3 = &unk_2852C92D8;
  *a1 = v3;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0x20uLL);
  v4[1] = 0;
  v5 = v4 + 1;
  *v4 = &unk_2852C9350;
  v4[2] = 0;
  v4[3] = v3;
  a1[1] = v4;
  v6 = *(v3 + 2);
  if (!v6)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    *(v3 + 1) = v3;
    *(v3 + 2) = v4;
    if (atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v6->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v4 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v4 + 2, 1uLL, memory_order_relaxed);
    *(v3 + 1) = v3;
    *(v3 + 2) = v4;
    v7 = v4;
    std::__shared_weak_count::__release_weak(v6);
    v4 = v7;
    if (!atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_6:
      v8 = v4;
      (*(*v4 + 16))();
      std::__shared_weak_count::__release_weak(v8);
    }
  }

LABEL_7:
  v9 = *a1;
  v10 = a1[1];
  if (v10)
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
  }

  v11 = *(v9 + 2);
  if (!v11 || (v12 = *(v9 + 1), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  v15 = operator new(0x10uLL);
  *v15 = v9;
  v15[1] = v10;
  v16 = *(v9 + 3);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  v17 = operator new(0x18uLL);
  *v17 = v15;
  v17[1] = v12;
  v17[2] = v14;
  dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<ctu::DispatchTimerService>::execute_wrapped<abb::router::TimerService::create(void)::$_0>(abb::router::TimerService::create(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::TimerService::create(void)::$_0,dispatch_queue_s *::default_delete<abb::router::TimerService::create(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);

    std::__shared_weak_count::__release_weak(v14);
  }
}

void *abb::router::TimerService::TimerService(abb::router::TimerService *this)
{
  result = ctu::DispatchTimerService::DispatchTimerService(this);
  *result = &unk_2852C92D8;
  return result;
}

{
  result = ctu::DispatchTimerService::DispatchTimerService(this);
  *result = &unk_2852C92D8;
  return result;
}

void abb::router::TimerService::~TimerService(abb::router::TimerService *this)
{
  ctu::DispatchTimerService::~DispatchTimerService(this);

  operator delete(v1);
}

void std::__shared_ptr_pointer<abb::router::TimerService *,std::shared_ptr<abb::router::TimerService> ctu::SharedSynchronizable<ctu::DispatchTimerService>::make_shared_ptr<abb::router::TimerService>(abb::router::TimerService*)::{lambda(abb::router::TimerService *)#1},std::allocator<abb::router::TimerService>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::router::TimerService *,std::shared_ptr<abb::router::TimerService> ctu::SharedSynchronizable<ctu::DispatchTimerService>::make_shared_ptr<abb::router::TimerService>(abb::router::TimerService*)::{lambda(abb::router::TimerService *)#1},std::allocator<abb::router::TimerService>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableINS_20DispatchTimerServiceEE15make_shared_ptrIN3abb6router12TimerServiceEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableINS_20DispatchTimerServiceEE15make_shared_ptrIN3abb6router12TimerServiceEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableINS_20DispatchTimerServiceEE15make_shared_ptrIN3abb6router12TimerServiceEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableINS_20DispatchTimerServiceEE15make_shared_ptrIN3abb6router12TimerServiceEEENSt3__110shared_ptrIT_EEPS9_EUlPS6_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<abb::router::TimerService> ctu::SharedSynchronizable<ctu::DispatchTimerService>::make_shared_ptr<abb::router::TimerService>(abb::router::TimerService*)::{lambda(abb::router::TimerService*)#1}::operator() const(abb::router::TimerService*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<ctu::DispatchTimerService>::execute_wrapped<abb::router::TimerService::create(void)::$_0>(abb::router::TimerService::create(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::TimerService::create(void)::$_0,dispatch_queue_s *::default_delete<abb::router::TimerService::create(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  (*(**v1 + 56))();
  v3 = v1[1];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
    operator delete(v1);
    v4 = a1;
    if (!a1)
    {
      return;
    }
  }

  else
  {
    operator delete(v1);
    v4 = a1;
    if (!a1)
    {
      return;
    }
  }

  v5 = v4[2];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v6 = v4;
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    v4 = v6;
  }

  operator delete(v4);
}

void sub_240EC37E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<abb::router::TimerService::create(void)::$_0,std::default_delete<abb::router::TimerService::create(void)::$_0>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<abb::router::TimerService::create(void)::$_0,std::default_delete<abb::router::TimerService::create(void)::$_0>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[1];
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v5 = v2;
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
      v2 = v5;
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void abb::router::Server::create(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xD0uLL);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *a1, *(a1 + 8));
  }

  else
  {
    v16 = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
  }

  v5 = *(a1 + 64);
  v18 = *(a1 + 48);
  v19 = v5;
  v20 = *(a1 + 80);
  abb::router::Server::Server(v4, &v16);
  *a2 = v4;
  a2[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x20uLL);
  v6[1] = 0;
  v12 = v6 + 1;
  *v6 = &unk_2852C9458;
  v6[2] = 0;
  v6[3] = v4;
  a2[1] = v6;
  v13 = *(v4 + 2);
  if (!v13)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v6;
    if (atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v13->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v6 + 2, 1uLL, memory_order_relaxed);
    *(v4 + 1) = v4;
    *(v4 + 2) = v6;
    v14 = v6;
    std::__shared_weak_count::__release_weak(v13);
    v6 = v14;
    if (!atomic_fetch_add(v12, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_12:
      v15 = v6;
      (*(*v6 + 16))(v6, v7, v8, v9, v10, v11);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_13:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_17:
    operator delete(v16.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_17;
  }
}

void sub_240EC3A64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
    operator delete(v14);
    _Unwind_Resume(a1);
  }

  operator delete(v14);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Server::Server(uint64_t a1, const char *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::OsLogContext::OsLogContext(v28, a2, "server");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v5 = dispatch_queue_create_with_target_V2("RouterServer", initially_inactive, 0);
  dispatch_set_qos_class_floor(v5, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v5);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    *(a1 + 32) = 0;
    dispatch_release(v5);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CD26C0](a1 + 40, v29);
  MEMORY[0x245CD26D0](v29);
  ctu::OsLogContext::~OsLogContext(v28);
  *a1 = &unk_2852C93A0;
  v6 = (a1 + 48);
  if (v2[23] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 48), *v2, *(v2 + 1));
  }

  else
  {
    v7 = *v2;
    *(a1 + 64) = *(v2 + 2);
    *v6 = v7;
  }

  if (v2[47] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *(v2 + 3), *(v2 + 4));
  }

  else
  {
    v8 = *(v2 + 24);
    *(a1 + 88) = *(v2 + 5);
    *(a1 + 72) = v8;
  }

  v9 = *(v2 + 3);
  v10 = *(v2 + 5);
  *(a1 + 112) = *(v2 + 4);
  *(a1 + 128) = v10;
  *(a1 + 96) = v9;
  if (*(a1 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v23, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *&v23.__r_.__value_.__l.__data_ = *v6;
    v23.__r_.__value_.__r.__words[2] = *(a1 + 64);
  }

  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    __p = *(a1 + 72);
  }

  v11 = *(a1 + 112);
  v25 = *(a1 + 96);
  v26 = v11;
  v27 = *(a1 + 128);
  abb::router::Gateway::create(&v23, (a1 + 144));
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_23:
    operator delete(v23.__r_.__value_.__l.__data_);
    if ((*(a1 + 71) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_20:
  if ((*(a1 + 71) & 0x80000000) == 0)
  {
LABEL_21:
    *&v18.__r_.__value_.__l.__data_ = *v6;
    v18.__r_.__value_.__r.__words[2] = *(a1 + 64);
    goto LABEL_25;
  }

LABEL_24:
  std::string::__init_copy_ctor_external(&v18, *(a1 + 48), *(a1 + 56));
LABEL_25:
  if (*(a1 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v19, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    v19 = *(a1 + 72);
  }

  v12 = *(a1 + 112);
  v20 = *(a1 + 96);
  v21 = v12;
  v22 = *(a1 + 128);
  v13 = *(a1 + 152);
  v16 = *(a1 + 144);
  v17 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abb::router::Agent::create(&v18, &v16, (a1 + 160));
  v14 = v17;
  if (!v17 || atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(v19.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_33;
    }

LABEL_36:
    operator delete(v19.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }

LABEL_37:
    operator delete(v18.__r_.__value_.__l.__data_);
    goto LABEL_34;
  }

  (v14->__on_zero_shared)(v14);
  std::__shared_weak_count::__release_weak(v14);
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_36;
  }

LABEL_33:
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_37;
  }

LABEL_34:
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  return a1;
}

void sub_240EC3E08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v31 + 144);
  abb::router::Config::~Config(v32);
  MEMORY[0x245CD26D0](v31 + 40);
  ctu::SharedSynchronizable<abb::router::Agent>::~SharedSynchronizable((v31 + 8));
  _Unwind_Resume(a1);
}

void abb::router::Server::addTransport(uint64_t a1, __int128 *a2)
{
  v5 = a1;
  v6 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router6ServerEE20execute_wrapped_syncIZNS3_12addTransportENSt3__110shared_ptrINS2_9TransportEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = a1 + 8;
  block[5] = &v5;
  v3 = a1 + 24;
  v2 = *(a1 + 24);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
    v4 = *(&v6 + 1);
    if (!*(&v6 + 1))
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v2, block);
    v4 = *(&v6 + 1);
    if (!*(&v6 + 1))
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }
}

void abb::router::Server::init(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::init(dispatch::group_session)::$_0>(abb::router::Server::init(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::init(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::init(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::start(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::start(dispatch::group_session)::$_0>(abb::router::Server::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::stop(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::stop(dispatch::group_session)::$_0>(abb::router::Server::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::abort(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::abort(dispatch::group_session)::$_0>(abb::router::Server::abort(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::abort(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::abort(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::shutdown(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::shutdown(dispatch::group_session)::$_0>(abb::router::Server::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::sleep(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::sleep(dispatch::group_session)::$_0>(abb::router::Server::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::wakeup(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::wakeup(dispatch::group_session)::$_0>(abb::router::Server::wakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::wakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::wakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::statedump(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::statedump(dispatch::group_session)::$_0>(abb::router::Server::statedump(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::statedump(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::statedump(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Server::addXpcLinkAccepter(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x18uLL);
  *v9 = a1;
  v9[1] = v3;
  v9[2] = v4;
  v10 = a1[3];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0>(abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0,std::default_delete<abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void abb::router::Server::addLocalLinkAccepter(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x18uLL);
  *v9 = a1;
  v9[1] = v3;
  v9[2] = v4;
  v10 = a1[3];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0>(abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0,std::default_delete<abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

void abb::router::Server::createLocalLink(abb::router::Server *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router6ServerEE20execute_wrapped_syncIZNKS3_15createLocalLinkEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_10;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    a2[1] = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110shared_ptrIN3abb4link10ClientLinkEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_12;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110shared_ptrIN3abb4link10ClientLinkEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_11;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void abb::router::Server::createXpcLink(abb::router::Server *this@<X0>, void *a2@<X8>)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router6ServerEE20execute_wrapped_syncIZNKS3_13createXpcLinkEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_13;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v3 = this + 24;
  v2 = *(this + 3);
  if (*(v3 + 1))
  {
    *a2 = 0;
    a2[1] = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110shared_ptrIN3abb4link10ClientLinkEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_12;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110shared_ptrIN3abb4link10ClientLinkEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_11;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

uint64_t abb::router::Server::registerErrorHandler(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a2 + 24);
  if (!result)
  {
    goto LABEL_18;
  }

  if (result == a2)
  {
    v14 = v13;
    (*(*result + 24))(result, v13);
  }

  else
  {
    v14 = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v14;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v13)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v14 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>(abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0,std::default_delete<abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v14;
    if (v14 != v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = (*(*result + 32))(result);
    goto LABEL_18;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v14;
  if (v14 == v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EC4F70(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t abb::router::Server::registerMetricSummaryHandler(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a2 + 24);
  if (!result)
  {
    goto LABEL_18;
  }

  if (result == a2)
  {
    v14 = v13;
    (*(*result + 24))(result, v13);
  }

  else
  {
    v14 = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v14;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v13)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v14 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v14;
    if (v14 != v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = (*(*result + 32))(result);
    goto LABEL_18;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v14;
  if (v14 == v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EC51B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t abb::router::Server::registerMetricStreamHandler(void *a1, uint64_t a2)
{
  v15 = *MEMORY[0x277D85DE8];
  result = *(a2 + 24);
  if (!result)
  {
    goto LABEL_18;
  }

  if (result == a2)
  {
    v14 = v13;
    (*(*result + 24))(result, v13);
  }

  else
  {
    v14 = *(a2 + 24);
    *(a2 + 24) = 0;
  }

  v4 = a1[2];
  if (!v4 || (v5 = a1[1], (v6 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v7 = v6;
  v8 = operator new(0x28uLL);
  v9 = v14;
  *v8 = a1;
  if (v9)
  {
    if (v9 == v13)
    {
      v8[4] = v8 + 1;
      (*(*v9 + 24))(v9);
    }

    else
    {
      v8[4] = v9;
      v14 = 0;
    }
  }

  else
  {
    v8[4] = 0;
  }

  v10 = a1[3];
  atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v8;
  v11[1] = v5;
  v11[2] = v7;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    result = v14;
    if (v14 != v13)
    {
      goto LABEL_14;
    }

LABEL_17:
    result = (*(*result + 32))(result);
    goto LABEL_18;
  }

  (v7->__on_zero_shared)(v7);
  std::__shared_weak_count::__release_weak(v7);
  result = v14;
  if (v14 == v13)
  {
    goto LABEL_17;
  }

LABEL_14:
  if (result)
  {
    result = (*(*result + 40))(result);
  }

LABEL_18:
  v12 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_240EC53F8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void abb::router::Server::handleClientConnect(void *a1, __int128 *a2)
{
  v10 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x18uLL);
  *v7 = a1;
  *(v7 + 8) = v10;
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0>(abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0,std::default_delete<abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void abb::router::Server::~Server(abb::router::Server *this)
{
  abb::router::Server::~Server(this);

  operator delete(v1);
}

{
  *this = &unk_2852C93A0;
  v2 = *(this + 25);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 23);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(this + 21);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(this + 19);
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if ((*(this + 95) & 0x80000000) == 0)
    {
LABEL_13:
      if ((*(this + 71) & 0x80000000) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_23;
    }
  }

  else if ((*(this + 95) & 0x80000000) == 0)
  {
    goto LABEL_13;
  }

  operator delete(*(this + 9));
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_14:
    MEMORY[0x245CD26D0](this + 40);
    v6 = *(this + 4);
    if (!v6)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_23:
  operator delete(*(this + 6));
  MEMORY[0x245CD26D0](this + 40);
  v6 = *(this + 4);
  if (v6)
  {
LABEL_15:
    dispatch_release(v6);
  }

LABEL_16:
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

void std::__shared_ptr_pointer<abb::router::Server *,std::shared_ptr<abb::router::Server> ctu::SharedSynchronizable<abb::router::Server>::make_shared_ptr<abb::router::Server>(abb::router::Server*)::{lambda(abb::router::Server *)#1},std::allocator<abb::router::Server>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::router::Server *,std::shared_ptr<abb::router::Server> ctu::SharedSynchronizable<abb::router::Server>::make_shared_ptr<abb::router::Server>(abb::router::Server*)::{lambda(abb::router::Server *)#1},std::allocator<abb::router::Server>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3abb6router6ServerEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3abb6router6ServerEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3abb6router6ServerEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3abb6router6ServerEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<abb::router::Server> ctu::SharedSynchronizable<abb::router::Server>::make_shared_ptr<abb::router::Server>(abb::router::Server*)::{lambda(abb::router::Server*)#1}::operator() const(abb::router::Server*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void ___ZNK3ctu20SharedSynchronizableIN3abb6router6ServerEE20execute_wrapped_syncIZNS3_12addTransportENSt3__110shared_ptrINS2_9TransportEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v3 = *(*v1 + 144);
  v4 = v1[2];
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[0] = v3;
  v7[1] = v2;
  v8 = v4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router7GatewayEE20execute_wrapped_syncIZNS3_17registerTransportENSt3__110shared_ptrINS2_9TransportEEEE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOSB__block_invoke;
  block[3] = &__block_descriptor_tmp_61;
  block[4] = v3 + 8;
  block[5] = v7;
  v5 = *(v3 + 24);
  if (*(v3 + 32))
  {
    dispatch_async_and_wait(v5, block);
    v6 = v8;
    if (!v8)
    {
      return;
    }
  }

  else
  {
    dispatch_sync(v5, block);
    v6 = v8;
    if (!v8)
    {
      return;
    }
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::init(dispatch::group_session)::$_0>(abb::router::Server::init(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::init(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::init(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::init(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC5834(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::start(dispatch::group_session)::$_0>(abb::router::Server::start(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::start(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::start(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::start(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC5958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::stop(dispatch::group_session)::$_0>(abb::router::Server::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::stop(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC5A7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::abort(dispatch::group_session)::$_0>(abb::router::Server::abort(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::abort(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::abort(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::abort(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC5BA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::shutdown(dispatch::group_session)::$_0>(abb::router::Server::shutdown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::shutdown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::shutdown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::shutdown(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC5CC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::sleep(dispatch::group_session)::$_0>(abb::router::Server::sleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::sleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::sleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::sleep(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC5DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::wakeup(dispatch::group_session)::$_0>(abb::router::Server::wakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::wakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::wakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::wakeup(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC5F0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::statedump(dispatch::group_session)::$_0>(abb::router::Server::statedump(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::statedump(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Server::statedump(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = *(*a1 + 8);
  v4 = *(**a1 + 144);
  group = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Gateway::statedump(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  v5 = v2[1];
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = v2[1];
    if (v6)
    {
      dispatch_release(v6);
    }
  }

  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240EC6030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0>(abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0,std::default_delete<abb::router::Server::addXpcLinkAccepter(std::shared_ptr<abb::link::XpcLinkAccepter>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  __p = *a1;
  v3 = (*a1)->__vftable;
  shared_owners = (*a1)->__shared_owners_;
  if (!shared_owners)
  {
    v14 = v3[1].~__shared_weak_count;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240E91000, v14, OS_LOG_TYPE_ERROR, "Invalid xpc accepter", buf, 2u);
      shared_weak_owners = v1->__shared_weak_owners_;
      if (!shared_weak_owners)
      {
        goto LABEL_20;
      }
    }

    else
    {
      shared_weak_owners = v1->__shared_weak_owners_;
      if (!shared_weak_owners)
      {
LABEL_20:
        operator delete(v1);
        goto LABEL_21;
      }
    }

LABEL_18:
    if (!atomic_fetch_add(&shared_weak_owners->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (shared_weak_owners->__on_zero_shared)(shared_weak_owners);
      std::__shared_weak_count::__release_weak(shared_weak_owners);
    }

    goto LABEL_20;
  }

  v4 = v1->__shared_weak_owners_;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  get_deleter = v3[4].__get_deleter;
  v3[4].__on_zero_shared = shared_owners;
  v3[4].__get_deleter = v4;
  if (get_deleter && !atomic_fetch_add(&get_deleter->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (get_deleter->__on_zero_shared)(get_deleter);
    std::__shared_weak_count::__release_weak(get_deleter);
  }

  on_zero_shared = v3->__on_zero_shared;
  if (!on_zero_shared || (v7 = v3[4].__on_zero_shared, v8 = v3->~__shared_weak_count_0, (v9 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
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

  v11 = operator new(0x18uLL);
  *v11 = &unk_2852C94A8;
  v11[1] = v8;
  v11[2] = v10;
  v12 = *(v7 + 8);
  *(v7 + 8) = v11;
  if (v12)
  {
    (*(*v12 + 8))(v12);
  }

  abb::link::XpcLinkAccepter::startAccepting(v3[4].__on_zero_shared);
  v1 = __p;
  if (__p)
  {
    shared_weak_owners = __p->__shared_weak_owners_;
    if (!shared_weak_owners)
    {
      goto LABEL_20;
    }

    goto LABEL_18;
  }

LABEL_21:
  v15 = a1;
  if (a1)
  {
    v16 = a1[2];
    if (v16)
    {
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v15 = a1;
      }
    }

    operator delete(v15);
  }
}

void sub_240EC62EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  std::__shared_weak_count::__release_weak(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_240EC6310(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void abb::link::LinkAccepterDelegate<abb::router::Server>::~LinkAccepterDelegate(std::__shared_weak_count **a1)
{
  *a1 = &unk_2852C94A8;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  abb::link::LinkAccepterDelegateBase::~LinkAccepterDelegateBase(a1);
}

void abb::link::LinkAccepterDelegate<abb::router::Server>::~LinkAccepterDelegate(abb::link::LinkAccepterDelegateBase *this)
{
  *this = &unk_2852C94A8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  abb::link::LinkAccepterDelegateBase::~LinkAccepterDelegateBase(this);

  operator delete(v3);
}

void abb::link::LinkAccepterDelegate<abb::router::Server>::handleClientConnect(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7 && (v9 = *a2, *a2 = 0, *(a2 + 8) = 0, abb::router::Server::handleClientConnect(v7, &v9), (v8 = *(&v9 + 1)) != 0) && !atomic_fetch_add((*(&v9 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
        if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          return;
        }
      }

      else if (atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        return;
      }

      (v6->__on_zero_shared)(v6);

      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0>(abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0,std::default_delete<abb::router::Server::addLocalLinkAccepter(std::shared_ptr<abb::link::LocalLinkAccepter>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v19 = *a1;
  v2 = (*a1)->__vftable;
  shared_owners = (*a1)->__shared_owners_;
  if (shared_owners)
  {
    shared_weak_owners = (*a1)->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      atomic_fetch_add_explicit((shared_weak_owners + 8), 1uLL, memory_order_relaxed);
    }

    v4 = v2[5].~__shared_weak_count;
    v2[4].__on_zero_shared_weak = shared_owners;
    v2[5].~__shared_weak_count = shared_weak_owners;
    if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }

    on_zero_shared = v2->__on_zero_shared;
    if (!on_zero_shared || (on_zero_shared_weak = v2[4].__on_zero_shared_weak, v7 = v2->~__shared_weak_count_0, (v8 = std::__shared_weak_count::lock(on_zero_shared)) == 0))
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = v8;
    atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v9);
    }

    v10 = operator new(0x18uLL);
    *v10 = &unk_2852C94A8;
    v10[1] = v7;
    v10[2] = v9;
    v11 = *(on_zero_shared_weak + 4);
    *(on_zero_shared_weak + 4) = v10;
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v12 = &v19->__vftable;
      if (!v19)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v13 = v2[1].~__shared_weak_count;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_240E91000, v13, OS_LOG_TYPE_ERROR, "Invalid local accepter", buf, 2u);
      v12 = &v19->__vftable;
      if (!v19)
      {
        goto LABEL_20;
      }

      goto LABEL_16;
    }
  }

  v12 = &v19->__vftable;
  if (!v19)
  {
    goto LABEL_20;
  }

LABEL_16:
  v14 = v12[2];
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v15 = v12;
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
    v12 = v15;
  }

  operator delete(v12);
LABEL_20:
  v16 = a1;
  if (a1)
  {
    v17 = a1[2];
    if (v17)
    {
      if (!atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v17->__on_zero_shared)(v17);
        std::__shared_weak_count::__release_weak(v17);
        v16 = a1;
      }
    }

    operator delete(v16);
  }
}

void sub_240EC678C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  std::__shared_weak_count::__release_weak(v10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_240EC67B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void ___ZN8dispatch9sync_implIRU13block_pointerFNSt3__110shared_ptrIN3abb4link10ClientLinkEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
    if (!atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void ___ZN8dispatch19async_and_wait_implIRU13block_pointerFNSt3__110shared_ptrIN3abb4link10ClientLinkEEEvEEENS1_5decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS1_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(&v6 + 1);
  if (*(&v6 + 1))
  {
    if (!atomic_fetch_add((*(&v6 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>(abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0,std::default_delete<abb::router::Server::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(**a1 + 144);
  v4 = *(*a1 + 32);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 != v2 + 1)
  {
    v4 = (*(*v4 + 16))(v4);
LABEL_4:
    v9 = v4;
    goto LABEL_6;
  }

  v9 = v8;
  (*(*v4 + 24))(v4, v8);
LABEL_6:
  abb::router::Gateway::registerErrorHandler(v3, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
    v5 = v2[4];
    if (v5 != v2 + 1)
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(*v5 + 32))(v5);
    operator delete(v2);
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v9)
  {
    (*(*v9 + 40))();
  }

  v5 = v2[4];
  if (v5 == v2 + 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6)
  {
LABEL_16:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_18:
  operator delete(a1);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_240EC6BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0,std::default_delete<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EC6C10(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void *);
  std::function<void ()(abb::router::Error,std::string const&)>::~function(va2);
  std::unique_ptr<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0,std::default_delete<abb::router::Gateway::registerErrorHandler(std::function<void ()(abb::router::Error,std::string const&)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Server::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(**a1 + 144);
  v4 = *(*a1 + 32);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 != v2 + 1)
  {
    v4 = (*(*v4 + 16))(v4);
LABEL_4:
    v9 = v4;
    goto LABEL_6;
  }

  v9 = v8;
  (*(*v4 + 24))(v4, v8);
LABEL_6:
  abb::router::Gateway::registerMetricSummaryHandler(v3, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
    v5 = v2[4];
    if (v5 != v2 + 1)
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(*v5 + 32))(v5);
    operator delete(v2);
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v9)
  {
    (*(*v9 + 40))();
  }

  v5 = v2[4];
  if (v5 == v2 + 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6)
  {
LABEL_16:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_18:
  operator delete(a1);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_240EC6E5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EC6E78(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void *);
  std::function<void ()(xpc::dict)>::~function(va2);
  std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>(abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Server::registerMetricStreamHandler(std::function<void ()(xpc::dict)>)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(**a1 + 144);
  v4 = *(*a1 + 32);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 != v2 + 1)
  {
    v4 = (*(*v4 + 16))(v4);
LABEL_4:
    v9 = v4;
    goto LABEL_6;
  }

  v9 = v8;
  (*(*v4 + 24))(v4, v8);
LABEL_6:
  abb::router::Gateway::registerMetricStreamHandler(v3, v8);
  if (v9 == v8)
  {
    (*(*v9 + 32))(v9);
    v5 = v2[4];
    if (v5 != v2 + 1)
    {
      goto LABEL_10;
    }

LABEL_15:
    (*(*v5 + 32))(v5);
    operator delete(v2);
    v6 = a1[2];
    if (!v6)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

  if (v9)
  {
    (*(*v9 + 40))();
  }

  v5 = v2[4];
  if (v5 == v2 + 1)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  operator delete(v2);
  v6 = a1[2];
  if (v6)
  {
LABEL_16:
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }

LABEL_18:
  operator delete(a1);
  v7 = *MEMORY[0x277D85DE8];
}

void sub_240EC70C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240EC70E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void *);
  std::function<void ()(xpc::dict)>::~function(va2);
  std::unique_ptr<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0,std::default_delete<abb::router::Gateway::registerMetricSummaryHandler(std::function<void ()(xpc::dict)>)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Server>::execute_wrapped<abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0>(abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0,std::default_delete<abb::router::Server::handleClientConnect(std::shared_ptr<abb::link::ServerLink>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v18 = *a1;
  v2 = (*a1)->__vftable;
  v3 = v2[1].~__shared_weak_count;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Request to connect with server", &buf, 2u);
  }

  NextClientId = abb::router::Agent::getNextClientId(v2[4].~__shared_weak_count);
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (SHIBYTE(v2[1].__get_deleter) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, v2[1].~__shared_weak_count_0, v2[1].__on_zero_shared);
  }

  else
  {
    buf = *&v2[1].~__shared_weak_count_0;
  }

  if (SHIBYTE(v2[2].~__shared_weak_count_0) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v2[1].__on_zero_shared_weak, v2[2].~__shared_weak_count);
  }

  else
  {
    __p = *&v2[1].__on_zero_shared_weak;
  }

  v5 = *&v2[2].__on_zero_shared_weak;
  v25 = *&v2[2].__on_zero_shared;
  v26 = v5;
  v27 = *&v2[3].~__shared_weak_count_0;
  on_zero_shared_weak = v2[3].__on_zero_shared_weak;
  get_deleter = v2[3].__get_deleter;
  v22 = on_zero_shared_weak;
  if (on_zero_shared_weak)
  {
    atomic_fetch_add_explicit(&on_zero_shared_weak->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  shared_weak_owners = v1->__shared_weak_owners_;
  *&v20 = v1->__shared_owners_;
  *(&v20 + 1) = shared_weak_owners;
  if (shared_weak_owners)
  {
    atomic_fetch_add_explicit((shared_weak_owners + 8), 1uLL, memory_order_relaxed);
  }

  abb::router::ClientProxy::create(&buf, &get_deleter, &v20, NextClientId, &v28);
  v8 = *(&v20 + 1);
  if (*(&v20 + 1) && !atomic_fetch_add((*(&v20 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = v22;
  if (!v22 || atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

LABEL_38:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_20;
    }

LABEL_39:
    operator delete(buf.__r_.__value_.__l.__data_);
    goto LABEL_20;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_38;
  }

LABEL_19:
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_39;
  }

LABEL_20:
  v10 = v2[4].~__shared_weak_count;
  v19 = v28;
  v28 = 0uLL;
  abb::router::Agent::addClient(v10, &v19);
  v11 = *(&v19 + 1);
  if (*(&v19 + 1) && !atomic_fetch_add((*(&v19 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
  }

  v12 = *(&v28 + 1);
  if (*(&v28 + 1) && !atomic_fetch_add((*(&v28 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  v13 = v18;
  if (v18)
  {
    v14 = v18[2];
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
      v13 = v18;
    }

    operator delete(v13);
  }

  v15 = a1;
  if (a1)
  {
    v16 = a1[2];
    if (v16)
    {
      if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v16->__on_zero_shared)(v16);
        std::__shared_weak_count::__release_weak(v16);
        v15 = a1;
      }
    }

    operator delete(v15);
  }
}

void sub_240EC7464(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, __int16 a11, char a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
    std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
    std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
    _Unwind_Resume(a1);
  }

  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t abb::router::toString@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  switch(result)
  {
    case 3:
      a2[23] = 3;
      *a2 = 28233;
      a2[2] = 100;
      a2[3] = 0;
      break;
    case 2:
      a2[23] = 3;
      *a2 = 28227;
      a2[2] = 102;
      a2[3] = 0;
      break;
    case 1:
      a2[23] = 3;
      *a2 = 25938;
      a2[2] = 113;
      a2[3] = 0;
      break;
    default:
      a2[23] = 9;
      strcpy(a2, "<invalid>");
      break;
  }

  return result;
}

uint64_t abb::router::toMsgTypeEnum(unsigned __int16 *a1)
{
  v1 = *(a1 + 23);
  v2 = v1;
  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (v1 != 3)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (*v3 == 25938 && *(v3 + 2) == 113)
  {
    return 1;
  }

  if (*v3 == 28227 && *(v3 + 2) == 102)
  {
    return 2;
  }

  v6 = bswap32(*v3 | (*(v3 + 2) << 16));
  v7 = v6 >= 0x496E6400;
  v8 = v6 > 0x496E6400;
  v9 = !v7;
  if (v8 == v9)
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

void abb::router::Message::~Message(abb::router::Message *this)
{
  *this = &unk_2852C94E8;
  v2 = *(this + 6);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 6);
    *(this + 6) = 0;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  if (*(this + 135) < 0)
  {
    operator delete(*(this + 14));
    if ((*(this + 111) & 0x80000000) == 0)
    {
LABEL_6:
      v4 = *(this + 6);
      if (!v4)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if ((*(this + 111) & 0x80000000) == 0)
  {
    goto LABEL_6;
  }

  operator delete(*(this + 11));
  v4 = *(this + 6);
  if (v4)
  {
LABEL_7:
    dispatch_release(v4);
  }

LABEL_8:
  v5 = *(this + 2);
  if (v5)
  {
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);
      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

{
  abb::router::Message::~Message(this);

  operator delete(v1);
}

void abb::router::Message::cancelTimer(abb::router::Message *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(this + 6);
    *(this + 6) = 0;
    if (v3)
    {

      dispatch_release(v3);
    }
  }
}

void sub_240EC7AD8(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
    v5 = *(v1 + 48);
    if (!v5)
    {
LABEL_3:
      std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v1 + 48);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v5);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Message::Message(uint64_t a1, __int16 a2, char **a3)
{
  *a1 = &unk_2852C94E8;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v6 = *a3;
  v5 = a3[1];
  v7 = operator new(0x10uLL);
  v8 = v7;
  *v7 = 609491332;
  *(v7 + 4) = 1;
  v9 = v7 + 16;
  *(v7 + 5) = a2;
  *(v7 + 6) = 0;
  *(v7 + 7) = v5 - v6;
  if (v5 == v6)
  {
    v10 = v7 + 16;
  }

  else
  {
    v10 = v7 + 16;
    do
    {
      while (v10 < v9)
      {
        v11 = *v6++;
        *v10++ = v11;
        if (v6 == v5)
        {
          goto LABEL_19;
        }
      }

      v12 = v10 - v8;
      v13 = v10 - v8 + 1;
      if (v13 < 0)
      {
        std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
      }

      if (2 * (v9 - v8) > v13)
      {
        v13 = 2 * (v9 - v8);
      }

      if ((v9 - v8) >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v14 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v13;
      }

      if (v14)
      {
        v15 = operator new(v14);
      }

      else
      {
        v15 = 0;
      }

      v9 = &v15[v14];
      v15[v12] = *v6;
      v10 = &v15[v12 + 1];
      memcpy(v15, v8, v12);
      if (v8)
      {
        operator delete(v8);
      }

      v8 = v15;
      ++v6;
    }

    while (v6 != v5);
  }

LABEL_19:
  v16 = operator new(0x30uLL);
  v16[1] = 0;
  v16[2] = 0;
  v16[3] = v8;
  *v16 = &unk_2852C9548;
  v16[4] = v10;
  v16[5] = v9;
  v17 = *(a1 + 16);
  *(a1 + 8) = v16 + 3;
  *(a1 + 16) = v16;
  if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v17->__on_zero_shared)(v17);
    std::__shared_weak_count::__release_weak(v17);
    if (*(a1 + 83) != 1)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (*(a1 + 83) == 1)
  {
LABEL_22:
    *(a1 + 83) = 0;
  }

LABEL_23:
  *(a1 + 84) = 0;
  return a1;
}

void sub_240EC7F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void **a9, uint64_t a10)
{
  if (v11)
  {
    operator delete(v11);
    if ((*(v10 + 135) & 0x80000000) == 0)
    {
LABEL_3:
      if ((*(v10 + 111) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else if ((*(v10 + 135) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(v10 + 112));
  if ((*(v10 + 111) & 0x80000000) == 0)
  {
LABEL_4:
    v13 = *(v10 + 48);
    if (!v13)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

LABEL_8:
  operator delete(*a9);
  v13 = *(v10 + 48);
  if (!v13)
  {
LABEL_5:
    std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](a10);
    _Unwind_Resume(a1);
  }

LABEL_9:
  dispatch_release(v13);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](a10);
  _Unwind_Resume(a1);
}

abb::router::Message *abb::router::Message::Message(abb::router::Message *this, const unsigned __int8 *a2, size_t a3)
{
  *this = &unk_2852C94E8;
  *(this + 1) = 0;
  *(this + 40) = 0;
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *(this + 88) = 0u;
  *(this + 2) = 0;
  *(this + 24) = 0;
  *(this + 20) = 0;
  *(this + 84) = 0;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  v6 = operator new(0x30uLL);
  v6[1] = 0;
  v6[2] = 0;
  *v6 = &unk_2852C9548;
  v6[3] = 0;
  v6[4] = 0;
  v6[5] = 0;
  if (a3)
  {
    if ((a3 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(a3);
    v6[3] = v7;
    v8 = &v7[a3];
    v6[5] = &v7[a3];
    memcpy(v7, a2, a3);
    v6[4] = v8;
  }

  *(this + 1) = v6 + 3;
  *(this + 2) = v6;
  *(this + 84) = 0;
  return this;
}

void sub_240EC80CC(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*v3);
    v5 = *(v1 + 48);
    if (!v5)
    {
LABEL_3:
      std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v5 = *(v1 + 48);
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v5);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

double abb::router::Message::Message(abb::router::Message *this, std::error_code a2)
{
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *this = &unk_2852C94E8;
  *(this + 1) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 2) = 0;
  *(this + 24) = a2;
  *(this + 40) = 1;
  *(this + 84) = 0;
  return result;
}

{
  *(this + 6) = 0;
  *(this + 56) = 0;
  *(this + 64) = 0;
  *(this + 72) = 0;
  *(this + 76) = 0;
  *this = &unk_2852C94E8;
  *(this + 1) = 0;
  *(this + 20) = 0;
  result = 0.0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 2) = 0;
  *(this + 24) = a2;
  *(this + 40) = 1;
  *(this + 84) = 0;
  return result;
}

uint64_t abb::router::Message::getMsgName(abb::router::Message *this)
{
  v1 = **(this + 1);
  v2 = *(v1 + 10);
  v3 = *(v1 + 9);
  return mipc::sdk_prop::msgName();
}

uint64_t abb::router::Message::getRawMsg@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 16);
  *a2 = *(this + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t abb::router::Message::isSensitive(abb::router::Message *this)
{
  if (*(this + 83) == 1)
  {
    return *(this + 82) & 1;
  }

  v2 = *(this + 1);
  if (v2)
  {
    v3 = *v2;
    v4 = *(*v2 + 10);
    v5 = *(v3 + 9) & 3;
    v6 = this;
    LOBYTE(v2) = mipc::sdk_prop::msgIsSensitive();
    this = v6;
  }

  *(this + 82) = v2;
  *(this + 83) = 1;
  return v2 & 1;
}

__n128 abb::router::Message::getError@<Q0>(abb::router::Message *this@<X0>, __n128 *a2@<X8>)
{
  result = *(this + 24);
  *a2 = result;
  a2[1].n128_u64[0] = *(this + 5);
  return result;
}

uint64_t abb::router::Message::setSimId(uint64_t this, char a2)
{
  *(this + 84) = 0;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if ((*(*(this + 8) + 8) - v3) >= 0x10)
    {
      *(v3 + 8) = a2;
    }
  }

  return this;
}

uint64_t abb::router::Message::setClientId(uint64_t this, char a2)
{
  *(this + 84) = 0;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if ((*(*(this + 8) + 8) - v3) >= 0x10)
    {
      *(v3 + 13) = a2;
    }
  }

  return this;
}

uint64_t abb::router::Message::setTrxId(uint64_t this, __int16 a2)
{
  *(this + 84) = 0;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if ((*(*(this + 8) + 8) - v3) >= 0x10)
    {
      *(v3 + 12) = a2;
    }
  }

  return this;
}

uint64_t abb::router::Message::setTrxCounter(uint64_t this, __int16 a2)
{
  *(this + 84) = 0;
  v2 = *(this + 8);
  if (v2)
  {
    v3 = *v2;
    if ((*(*(this + 8) + 8) - v3) >= 0x10)
    {
      *(v3 + 12) = a2 | (*(v3 + 13) << 8);
    }
  }

  return this;
}

uint64_t abb::router::Message::setTimeout(uint64_t result, uint64_t a2)
{
  *(result + 84) = 0;
  *(result + 56) = a2;
  *(result + 64) = 1;
  return result;
}

void abb::router::Message::startTimer(uint64_t a1, dispatch_queue_t *a2, void **a3)
{
  if (!*(a1 + 48))
  {
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 1uLL, 0, *a2);
    v6 = *(a1 + 48);
    *(a1 + 48) = v5;
    if (v6)
    {
      dispatch_release(v6);
      v5 = *(a1 + 48);
    }

    if (v5)
    {
      v7 = (a1 + 56);
      if (!*(a1 + 64))
      {
        v7 = &mipc::kDefaultMipcTimeout;
      }

      v8 = *v7;
      dispatch_retain(v5);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1174405120;
      v13[2] = ___ZNK3abb6router7Message10startTimerEN8dispatch5queueENS2_5blockIU13block_pointerFvvEEE_block_invoke;
      v13[3] = &__block_descriptor_tmp_4;
      object = v5;
      dispatch_retain(v5);
      v9 = *a3;
      if (*a3)
      {
        v9 = _Block_copy(v9);
      }

      v10 = 1000000 * v8;
      aBlock = v9;
      dispatch_source_set_event_handler(v5, v13);
      v11 = *(a1 + 48);
      v12 = dispatch_time(0, v10);
      dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0x5F5E100uLL);
      dispatch_activate(*(a1 + 48));
      if (aBlock)
      {
        _Block_release(aBlock);
      }

      if (object)
      {
        dispatch_release(object);
      }

      dispatch_release(v5);
    }
  }
}

uint64_t ___ZNK3abb6router7Message10startTimerEN8dispatch5queueENS2_5blockIU13block_pointerFvvEEE_block_invoke(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void *__copy_helper_block_e8_32c22_ZTSN8dispatch6sourceE40c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void __destroy_helper_block_e8_32c22_ZTSN8dispatch6sourceE40c43_ZTSN8dispatch5blockIU13block_pointerFvvEEE(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

uint64_t abb::router::Message::setQueuePolicy(uint64_t result, int a2)
{
  *(result + 84) = 0;
  *(result + 72) = a2;
  *(result + 76) = 1;
  return result;
}

_BYTE *abb::router::Message::setAllowSleep(_BYTE *this, char a2)
{
  this[84] = 0;
  this[80] = a2;
  this[81] = 1;
  return this;
}

uint64_t abb::router::Message::infoString(abb::router::Message *this)
{
  abb::router::Message::generatePrintString(this);
  if ((*(this + 135) & 0x8000000000000000) == 0)
  {
    return this + 112;
  }

  result = *(this + 14);
  v3 = *(this + 15);
  return result;
}

void abb::router::Message::generatePrintString(abb::router::Message *this)
{
  v102 = *MEMORY[0x277D85DE8];
  if (*(this + 84))
  {
LABEL_83:
    v75 = *MEMORY[0x277D85DE8];
    return;
  }

  *(this + 84) = 1;
  if (*(this + 1))
  {
    v99 = 0xAAAAAAAAAAAAAAAALL;
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v98[7] = v2;
    v98[8] = v2;
    v98[5] = v2;
    v98[6] = v2;
    v98[3] = v2;
    v98[4] = v2;
    v98[1] = v2;
    v98[2] = v2;
    v97 = v2;
    v98[0] = v2;
    v95 = v2;
    v96 = v2;
    v93 = v2;
    v94 = v2;
    v91 = v2;
    v92 = v2;
    v90 = v2;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v90);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, "[", 1);
    v4 = **(this + 1);
    v5 = *(v4 + 10);
    v6 = *(v4 + 9);
    mipc::sdk_prop::msgName();
    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    if ((SBYTE7(v81) & 0x80u) == 0)
    {
      v8 = BYTE7(v81);
    }

    else
    {
      v8 = __p[1];
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v7, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "]", 1);
    *(v10 + *(*v10 - 24) + 8) = *(v10 + *(*v10 - 24) + 8) & 0xFFFFFFB5 | 8;
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " Msg=0x", 7);
    v12 = v11;
    v13 = *v11;
    v14 = v11 + *(*v11 - 24);
    if (*(v14 + 36) == -1)
    {
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v15 = std::locale::use_facet(&v100, MEMORY[0x277D82680]);
      v16 = (v15->__vftable[2].~facet_0)(v15, 32);
      std::locale::~locale(&v100);
      *(v14 + 36) = v16;
      v13 = *v12;
    }

    *(v14 + 36) = 48;
    *(v12 + *(v13 - 24) + 24) = 4;
    v17 = MEMORY[0x245CD2990](v12, *(**(this + 1) + 10));
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " Client=0x", 10);
    v19 = v18;
    v20 = *v18;
    v21 = v18 + *(*v18 - 24);
    if (*(v21 + 36) == -1)
    {
      std::ios_base::getloc((v18 + *(*v18 - 24)));
      v22 = std::locale::use_facet(&v100, MEMORY[0x277D82680]);
      v23 = (v22->__vftable[2].~facet_0)(v22, 32);
      std::locale::~locale(&v100);
      *(v21 + 36) = v23;
      v20 = *v19;
    }

    *(v21 + 36) = 48;
    *(v19 + *(v20 - 24) + 24) = 2;
    v24 = MEMORY[0x245CD2990](v19, *(**(this + 1) + 13));
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " Trx=0x", 7);
    v26 = v25;
    v27 = *v25;
    v28 = v25 + *(*v25 - 24);
    if (*(v28 + 36) == -1)
    {
      std::ios_base::getloc((v25 + *(*v25 - 24)));
      v29 = std::locale::use_facet(&v100, MEMORY[0x277D82680]);
      v30 = (v29->__vftable[2].~facet_0)(v29, 32);
      std::locale::~locale(&v100);
      *(v28 + 36) = v30;
      v27 = *v26;
    }

    *(v28 + 36) = 48;
    *(v26 + *(v27 - 24) + 24) = 4;
    MEMORY[0x245CD2990](v26, *(**(this + 1) + 12));
    if (SBYTE7(v81) < 0)
    {
      operator delete(__p[0]);
    }

    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v100.__rdbuf_ = 0xAAAAAAAAAAAAAAAALL;
    v101 = v31;
    *&v100.__parray_size_ = v31;
    *&v100.__iarray_cap_ = v31;
    *&v100.__iarray_ = v31;
    *&v100.__event_size_ = v31;
    *&v100.__fn_ = v31;
    *&v100.__width_ = v31;
    *&v100.__fmtflags_ = v31;
    v100.__loc_ = 0;
    v100.__vftable = (MEMORY[0x277D828C0] + 16);
    std::ios_base::init(&v100, 0);
    *&v101 = 0;
    DWORD2(v101) = -1;
    v32 = &v90 + *(v90 - 24);
    std::ios::copyfmt();
    if ((*(**(this + 1) + 9) & 3) == 1)
    {
      if (*(this + 16))
      {
        v33 = *(this + 7);
        v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, " Timeout=", 9);
        v35 = MEMORY[0x245CD29B0](v34, v33 / 1000);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "s", 1);
      }

      if (*(this + 76))
      {
        v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, " ", 1);
        v37 = *(this + 9);
        if ((v37 & 0x100000000) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v38 = v36;
        if (v37 > 2)
        {
          v39 = "???";
        }

        else
        {
          v39 = off_278CBB378[*(this + 9) & 3];
        }

        v46 = strlen(v39);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v46);
      }

      v47 = *(this + 40);
      if (v47 & 0x100) != 0 && (v47)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, " allow-sleep", 12);
      }
    }

    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v91, " [", 2);
    v49 = MEMORY[0x245CD29A0](v48, *(*(this + 1) + 8) - **(this + 1));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " bytes]", 7);
    if ((BYTE8(v97) & 0x10) != 0)
    {
      v52 = v97;
      if (v97 < *(&v94 + 1))
      {
        *&v97 = *(&v94 + 1);
        v52 = *(&v94 + 1);
      }

      v53 = v94;
      v50 = v52 - v94;
      if ((v52 - v94) > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if ((BYTE8(v97) & 8) == 0)
      {
        v50 = 0;
        BYTE7(v81) = 0;
        v51 = __p;
        goto LABEL_53;
      }

      v53 = *(&v92 + 1);
      v50 = *(&v93 + 1) - *(&v92 + 1);
      if (*(&v93 + 1) - *(&v92 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
      {
LABEL_85:
        std::string::__throw_length_error[abi:ne200100]();
      }
    }

    if (v50 >= 0x17)
    {
      if ((v50 | 7) == 0x17)
      {
        v54 = 25;
      }

      else
      {
        v54 = (v50 | 7) + 1;
      }

      v51 = operator new(v54);
      __p[1] = v50;
      *&v81 = v54 | 0x8000000000000000;
      __p[0] = v51;
    }

    else
    {
      BYTE7(v81) = v50;
      v51 = __p;
      if (!v50)
      {
LABEL_53:
        *(v51 + v50) = 0;
        if (*(this + 135) < 0)
        {
          operator delete(*(this + 14));
        }

        *(this + 7) = *__p;
        *(this + 16) = v81;
        v89 = 0xAAAAAAAAAAAAAAAALL;
        *&v55 = 0xAAAAAAAAAAAAAAAALL;
        *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v88[7] = v55;
        v88[8] = v55;
        v88[5] = v55;
        v88[6] = v55;
        v88[3] = v55;
        v88[4] = v55;
        v88[1] = v55;
        v88[2] = v55;
        v87 = v55;
        v88[0] = v55;
        *v85 = v55;
        v86 = v55;
        v83 = v55;
        v84 = v55;
        v81 = v55;
        v82 = v55;
        *__p = v55;
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](__p);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "Bin=[", 5);
        v77 = this;
        v56 = *(this + 1);
        v57 = *v56;
        v58 = v56[1];
        v59 = *v56 - v58;
        if (v59)
        {
          v60 = v59 + 1;
          do
          {
            v61 = v81;
            v62 = v81;
            *(&v82 + *(v81 - 24) + 8) = 2;
            v63 = (&v81 + *(v62 - 24));
            if (v63[1].__fmtflags_ == -1)
            {
              std::ios_base::getloc(v63);
              v64 = std::locale::use_facet(__dst, MEMORY[0x277D82680]);
              (v64->__vftable[2].~facet_0)(v64, 32);
              std::locale::~locale(__dst);
              v61 = v81;
            }

            v63[1].__fmtflags_ = 48;
            *(&v81 + *(v61 - 24) + 8) = *(&v81 + *(v61 - 24) + 8) & 0xFFFFFFB5 | 8;
            MEMORY[0x245CD2980](&v81, *v57);
            if (v60)
            {
              LOBYTE(__dst[0].__locale_) = 32;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, __dst, 1);
            }

            ++v57;
            ++v60;
          }

          while (v57 != v58);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "]", 1);
        if ((BYTE8(v87) & 0x10) != 0)
        {
          v67 = v87;
          if (v87 < *(&v84 + 1))
          {
            *&v87 = *(&v84 + 1);
            v67 = *(&v84 + 1);
          }

          v68 = v84;
          v65 = v67 - v84;
          if ((v67 - v84) > 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if ((BYTE8(v87) & 8) == 0)
          {
            v65 = 0;
            HIBYTE(v79) = 0;
            v66 = __dst;
            goto LABEL_76;
          }

          v68 = *(&v82 + 1);
          v65 = *(&v83 + 1) - *(&v82 + 1);
          if (*(&v83 + 1) - *(&v82 + 1) > 0x7FFFFFFFFFFFFFF7uLL)
          {
LABEL_87:
            std::string::__throw_length_error[abi:ne200100]();
          }
        }

        if (v65 >= 0x17)
        {
          if ((v65 | 7) == 0x17)
          {
            v69 = 25;
          }

          else
          {
            v69 = (v65 | 7) + 1;
          }

          v66 = operator new(v69);
          __dst[1].__locale_ = v65;
          v79 = v69 | 0x8000000000000000;
          __dst[0].__locale_ = v66;
        }

        else
        {
          HIBYTE(v79) = v65;
          v66 = __dst;
          if (!v65)
          {
            goto LABEL_76;
          }
        }

        memmove(v66, v68, v65);
LABEL_76:
        *(v66 + v65) = 0;
        if (*(v77 + 111) < 0)
        {
          operator delete(*(v77 + 11));
        }

        *(v77 + 88) = *&__dst[0].__locale_;
        v70 = MEMORY[0x277D82818];
        *(v77 + 13) = v79;
        __p[0] = *v70;
        v71 = __p[0];
        v72 = *(v70 + 72);
        v73 = *(v70 + 64);
        *(__p + *(__p[0] - 3)) = v73;
        v74 = v72;
        *&v81 = v72;
        *(&v81 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v86) < 0)
        {
          operator delete(v85[1]);
        }

        *(&v81 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v82);
        std::iostream::~basic_iostream();
        std::ios_base::~ios_base(v88);
        std::ios_base::~ios_base(&v100);
        *&v90 = v71;
        *(&v90 + *(v71 - 3)) = v73;
        *&v91 = v74;
        *(&v91 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v96) < 0)
        {
          operator delete(*(&v95 + 1));
        }

        *(&v91 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v92);
        std::iostream::~basic_iostream();
        std::ios_base::~ios_base(v98);
        goto LABEL_83;
      }
    }

    memmove(v51, v53, v50);
    goto LABEL_53;
  }

  if (*(this + 111) < 0)
  {
    **(this + 11) = 0;
    *(this + 12) = 0;
    if (*(this + 40) == 1)
    {
LABEL_26:
      *__p = *(this + 24);
      *&v81 = *(this + 5);
      if ((v81 & 1) == 0)
      {
        std::__throw_bad_optional_access[abi:ne200100]();
      }

      std::error_code::message(&v90, __p);
      v40 = std::string::insert(&v90, 0, "Error: ", 7uLL);
      v41 = v40->__r_.__value_.__r.__words[0];
      v100.__vftable = v40->__r_.__value_.__l.__size_;
      *(&v100.__vftable + 7) = *(&v40->__r_.__value_.__r.__words[1] + 7);
      v42 = HIBYTE(v40->__r_.__value_.__r.__words[2]);
      v40->__r_.__value_.__l.__size_ = 0;
      v40->__r_.__value_.__r.__words[2] = 0;
      v40->__r_.__value_.__r.__words[0] = 0;
      if (*(this + 135) < 0)
      {
        operator delete(*(this + 14));
      }

      v43 = v100.__vftable;
      *(this + 14) = v41;
      *(this + 15) = v43;
      *(this + 127) = *(&v100.__vftable + 7);
      *(this + 135) = v42;
      if (SBYTE7(v91) < 0)
      {
        operator delete(v90);
        v44 = *MEMORY[0x277D85DE8];
        return;
      }

      goto LABEL_83;
    }
  }

  else
  {
    *(this + 88) = 0;
    *(this + 111) = 0;
    if (*(this + 40) == 1)
    {
      goto LABEL_26;
    }
  }

  if (*(this + 135) < 0)
  {
    *(this + 15) = 15;
    v45 = *(this + 14);
  }

  else
  {
    v45 = this + 112;
    *(this + 135) = 15;
  }

  strcpy(v45, "<Empty message>");
  v76 = *MEMORY[0x277D85DE8];
}

void sub_240EC932C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, void *__p, uint64_t a55, int a56, __int16 a57, char a58, char a59)
{
  if (a59 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_240EC93F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  if (a20 < 0)
  {
    operator delete(__p);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a54);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x240EC9440);
}

void sub_240EC942C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a15);
  std::ios_base::~ios_base((v51 - 256));
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a51);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Message::payloadString(abb::router::Message *this)
{
  abb::router::Message::generatePrintString(this);
  if ((*(this + 111) & 0x8000000000000000) == 0)
  {
    return this + 88;
  }

  result = *(this + 11);
  v3 = *(this + 12);
  return result;
}

uint64_t abb::router::Message::operator BOOL(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  else
  {
    return *(a1 + 40) & 1;
  }
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852C9548;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void std::__shared_ptr_emplace<std::vector<unsigned char>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void abb::router::MipcServer::create(void *a1@<X8>)
{
  *a1 = 0xAAAAAAAAAAAAAAAALL;
  a1[1] = 0xAAAAAAAAAAAAAAAALL;
  v4[23] = 20;
  strcpy(v4, "com.apple.router.abb");
  v3 = operator new(0x30uLL);
  v5 = v3;
  strcpy(v3, "com.apple.telephony.control-msg.xpc.allow");
  v6 = xmmword_240EE0410;
  v7 = xmmword_240EE0420;
  v8 = 0;
  v9 = 0;
  v10 = xmmword_240EE0430;
  v11 = 5;
  abb::router::MipcServer::create(v4, a1);

  operator delete(v3);
}

void abb::router::MipcServer::create(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  *(a2 + 8) = 0xAAAAAAAAAAAAAAAALL;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, *a1, *(a1 + 8));
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v20 = *a1;
    if ((*(a1 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a1 + 24);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a1 + 24), *(a1 + 32));
LABEL_6:
  v4 = *(a1 + 64);
  v22 = *(a1 + 48);
  v23 = v4;
  v24 = *(a1 + 80);
  abb::router::MipcServer::create(&v20, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
LABEL_8:
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  mach_service = xpc_connection_create_mach_service("com.apple.telephony.control-msg.xpc", 0, 1uLL);
  if (!mach_service)
  {
    mach_service = xpc_null_create();
  }

  object = dispatch_queue_create("link.accepter.xpc", 0);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  abb::link::XpcLinkAccepter::Configuration::Configuration();
  abb::link::XpcLinkAccepter::create();
  if ((v15 & 0x80000000) == 0)
  {
    if ((SHIBYTE(v13) & 0x80000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_23:
    operator delete(v11);
    v5 = object;
    if (!object)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  operator delete(v14);
  if (SHIBYTE(v13) < 0)
  {
    goto LABEL_23;
  }

LABEL_12:
  v5 = object;
  if (object)
  {
LABEL_13:
    dispatch_release(v5);
  }

LABEL_14:
  xpc_release(mach_service);
  mach_service = 0;
  v6 = *a2;
  v9 = v18;
  v10 = v19;
  atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  abb::router::Server::addXpcLinkAccepter(v6, &v9);
  v7 = v10;
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  v8 = v19;
  if (v19)
  {
    if (!atomic_fetch_add((v19 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }
}

void sub_240EC99C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_240EC99DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](&a19);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v19);
  _Unwind_Resume(a1);
}

void sub_240EC9A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, dispatch_object_t object, xpc_object_t a24)
{
  if (a22 < 0)
  {
    operator delete(__p);
    if ((a16 & 0x80000000) == 0)
    {
LABEL_3:
      v26 = object;
      if (!object)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((a16 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a11);
  v26 = object;
  if (!object)
  {
LABEL_5:
    xpc_release(a24);
    std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v24);
    _Unwind_Resume(a1);
  }

LABEL_4:
  dispatch_release(v26);
  goto LABEL_5;
}

void sub_240EC9A8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  abb::router::Config::~Config(va);
  _Unwind_Resume(a1);
}

void abb::router::MipcServer::create(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v4 = operator new(0xE8uLL);
  v4->__shared_owners_ = 0;
  p_shared_owners = &v4->__shared_owners_;
  v4->__shared_weak_owners_ = 0;
  v4->__vftable = &unk_2852C95D0;
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *a1, *(a1 + 8));
  }

  else
  {
    v15 = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v16 = *(a1 + 24);
  }

  v6 = *(a1 + 64);
  v17 = *(a1 + 48);
  v18 = v6;
  v19 = *(a1 + 80);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = v15;
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v16.__r_.__value_.__l.__data_, v16.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = v16;
  }

  v7 = &v4[1].__vftable;
  v22 = v17;
  v23 = v18;
  v24 = v19;
  abb::router::MipcServer::MipcServer(&v4[1].__vftable, &v20);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_15:
      *v7 = &unk_2852C9620;
      if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_23;
    }
  }

  else if ((SHIBYTE(v20.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_15;
  }

  operator delete(v20.__r_.__value_.__l.__data_);
  *v7 = &unk_2852C9620;
  if ((SHIBYTE(v16.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_16:
    if ((SHIBYTE(v15.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

LABEL_24:
    operator delete(v15.__r_.__value_.__l.__data_);
    *&v14 = v4 + 1;
    *(&v14 + 1) = v4;
    shared_weak_owners = v4[1].__shared_weak_owners_;
    if (shared_weak_owners)
    {
      goto LABEL_18;
    }

LABEL_25:
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__shared_owners_ = v7;
    v4[1].__shared_weak_owners_ = v4;
    if (atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_23:
  operator delete(v16.__r_.__value_.__l.__data_);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  *&v14 = v4 + 1;
  *(&v14 + 1) = v4;
  shared_weak_owners = v4[1].__shared_weak_owners_;
  if (!shared_weak_owners)
  {
    goto LABEL_25;
  }

LABEL_18:
  if (shared_weak_owners->__shared_owners_ == -1)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(&v4->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v4[1].__shared_owners_ = v7;
    v4[1].__shared_weak_owners_ = v4;
    std::__shared_weak_count::__release_weak(shared_weak_owners);
    if (!atomic_fetch_add(p_shared_owners, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_26:
      (v4->__on_zero_shared)(v4);
      std::__shared_weak_count::__release_weak(v4);
    }
  }

LABEL_27:
  v20.__r_.__value_.__r.__words[0] = 0xAAAAAAAAAAAAAAAALL;
  v20.__r_.__value_.__l.__size_ = 0xAAAAAAAAAAAAAAAALL;
  object = dispatch_queue_create("link.accepter.local", 0);
  abb::link::LocalLinkAccepter::create();
  if (object)
  {
    dispatch_release(object);
  }

  v12 = *&v20.__r_.__value_.__l.__data_;
  if (v20.__r_.__value_.__l.__size_)
  {
    atomic_fetch_add_explicit((v20.__r_.__value_.__l.__size_ + 8), 1uLL, memory_order_relaxed);
  }

  abb::router::Server::addLocalLinkAccepter(v14, &v12);
  v9 = *(&v12 + 1);
  if (*(&v12 + 1) && !atomic_fetch_add((*(&v12 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  *a2 = v14;
  v14 = 0uLL;
  size = v20.__r_.__value_.__l.__size_;
  if (v20.__r_.__value_.__l.__size_ && !atomic_fetch_add((v20.__r_.__value_.__l.__size_ + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (size->__on_zero_shared)(size);
    std::__shared_weak_count::__release_weak(size);
  }

  v11 = *(&v14 + 1);
  if (*(&v14 + 1))
  {
    if (!atomic_fetch_add((*(&v14 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v11->__on_zero_shared)(v11);
      std::__shared_weak_count::__release_weak(v11);
    }
  }
}

void sub_240EC9E70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object, char a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  abb::router::Config::~Config(&a15);
  std::__shared_weak_count::~__shared_weak_count(v35);
  operator delete(v37);
  _Unwind_Resume(a1);
}

void *abb::router::MipcServer::MipcServer(void *a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *a2;
    if ((*(a2 + 47) & 0x80000000) == 0)
    {
LABEL_3:
      __p = *(a2 + 24);
      goto LABEL_6;
    }
  }

  std::string::__init_copy_ctor_external(&__p, *(a2 + 24), *(a2 + 32));
LABEL_6:
  v4 = *(a2 + 64);
  v8 = *(a2 + 48);
  v9 = v4;
  v10 = *(a2 + 80);
  abb::router::Server::Server(a1, &v6);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v6.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    operator delete(v6.__r_.__value_.__l.__data_);
    goto LABEL_8;
  }

  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  *a1 = &unk_2852C9598;
  return a1;
}

void sub_240ECA02C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::MipcServer::~MipcServer(abb::router::MipcServer *this)
{
  abb::router::Server::~Server(this);

  operator delete(v1);
}

void std::__shared_ptr_emplace<abb::router::MipcServer::create(abb::router::local_only_t,abb::router::Config)::make_shared_enabler,std::allocator<abb::router::MipcServer::create(abb::router::local_only_t,abb::router::Config)::make_shared_enabler>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852C95D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

void abb::router::MipcServer::create(abb::router::local_only_t,abb::router::Config)::make_shared_enabler::~make_shared_enabler(abb::router::Server *a1)
{
  abb::router::Server::~Server(a1);

  operator delete(v1);
}

std::string *abb::router::Metrics::Metrics(std::string *this, __int128 *a2, std::string::size_type a3, std::string::size_type a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = &this[2].__r_.__value_.__l.__size_;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__l.__size_ = &this[3].__r_.__value_.__r.__words[2];
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = &this[4].__r_.__value_.__r.__words[2];
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__r.__words[2] = &this[6];
  this[6].__r_.__value_.__r.__words[2] = std::chrono::steady_clock::now().__d_.__rep_;
  this[8].__r_.__value_.__r.__words[0] = 0;
  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  this[1].__r_.__value_.__r.__words[0] = a3;
  this[1].__r_.__value_.__l.__size_ = a4;
  this[2].__r_.__value_.__l.__size_ = 0;
  this[2].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  this[2].__r_.__value_.__r.__words[0] = &this[2].__r_.__value_.__l.__size_;
  this[3].__r_.__value_.__r.__words[2] = 0;
  this[3].__r_.__value_.__l.__size_ = &this[3].__r_.__value_.__r.__words[2];
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__r.__words[2] = 0;
  this[4].__r_.__value_.__r.__words[0] = 0;
  this[4].__r_.__value_.__l.__size_ = &this[4].__r_.__value_.__r.__words[2];
  this[6].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__r.__words[2] = &this[6];
  this[6].__r_.__value_.__r.__words[2] = std::chrono::steady_clock::now().__d_.__rep_;
  this[8].__r_.__value_.__r.__words[0] = 0;
  return this;
}

void abb::router::Metrics::~Metrics(abb::router::Metrics *this)
{
  v2 = this + 168;
  v3 = *(this + 24);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  std::__tree<unsigned int>::destroy(this + 136, *(this + 18));
  std::__tree<unsigned int>::destroy(this + 104, *(this + 14));
  std::__tree<unsigned int>::destroy(this + 80, *(this + 11));
  std::__tree<unsigned int>::destroy(this + 48, *(this + 7));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t abb::router::Metrics::registerStreamHandler(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      v7 = v6;
      (*(*v3 + 24))(v3, v6);
    }

    else
    {
      v7 = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    v7 = 0;
  }

  std::__function::__value_func<void ()(xpc::dict)>::swap[abi:ne200100](v6, (a1 + 168));
  result = v7;
  if (v7 == v6)
  {
    result = (*(*v7 + 32))(v7);
  }

  else if (v7)
  {
    result = (*(*v7 + 40))();
  }

  v5 = *MEMORY[0x277D85DE8];
  return result;
}

int64x2_t abb::router::Metrics::recordMessage(abb::router::Metrics *this, unsigned int a2, uint64_t a3)
{
  v6.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v8 = (this + 56);
  v7 = *(this + 7);
  ++*(this + 5);
  v57 = this;
  if (v7)
  {
    while (1)
    {
      while (1)
      {
        v9 = v7;
        v10 = *(v7 + 32);
        if (v10 <= a2)
        {
          break;
        }

        v7 = *v9;
        v8 = v9;
        if (!*v9)
        {
          goto LABEL_8;
        }
      }

      if (v10 >= a2)
      {
        break;
      }

      v7 = *(v9 + 1);
      if (!v7)
      {
        v8 = v9 + 8;
        goto LABEL_8;
      }
    }
  }

  else
  {
    v9 = this + 56;
LABEL_8:
    v11 = v9;
    v9 = operator new(0x30uLL);
    *(v9 + 8) = a2;
    *(v9 + 5) = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = v11;
    this = v57;
    *v8 = v9;
    v12 = **(v57 + 6);
    if (v12)
    {
      *(v57 + 6) = v12;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v57 + 7), v9);
    ++*(v57 + 8);
  }

  ++*(v9 + 5);
  v14 = (this + 88);
  v13 = *(this + 11);
  *(this + 9) += a3;
  if (v13)
  {
    while (1)
    {
      while (1)
      {
        v15 = v13;
        v16 = *(v13 + 32);
        if (v16 <= a2)
        {
          break;
        }

        v13 = *v15;
        v14 = v15;
        if (!*v15)
        {
          goto LABEL_18;
        }
      }

      if (v16 >= a2)
      {
        break;
      }

      v13 = *(v15 + 1);
      if (!v13)
      {
        v14 = v15 + 8;
        goto LABEL_18;
      }
    }
  }

  else
  {
    v15 = this + 88;
LABEL_18:
    v17 = v15;
    v15 = operator new(0x30uLL);
    *(v15 + 8) = a2;
    *(v15 + 5) = 0;
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = v17;
    this = v57;
    *v14 = v15;
    v18 = **(v57 + 10);
    if (v18)
    {
      *(v57 + 10) = v18;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v57 + 11), v15);
    ++*(v57 + 12);
  }

  *(v15 + 5) += a3;
  v20 = this + 112;
  v19 = *(this + 14);
  v56 = this + 112;
  if (v19)
  {
    while (1)
    {
      while (1)
      {
        v22 = v19;
        v23 = *(v19 + 32);
        if (v23 <= a2)
        {
          break;
        }

        v19 = *v22;
        v21 = v22;
        if (!*v22)
        {
          goto LABEL_28;
        }
      }

      if (v23 >= a2)
      {
        break;
      }

      v19 = *(v22 + 1);
      if (!v19)
      {
        v21 = v22 + 8;
        goto LABEL_28;
      }
    }
  }

  else
  {
    v21 = (this + 112);
    v22 = this + 112;
LABEL_28:
    v24 = v22;
    v22 = operator new(0x80uLL);
    *(v22 + 8) = a2;
    *(v22 + 40) = 0u;
    *(v22 + 56) = 0u;
    *(v22 + 72) = 0u;
    *(v22 + 88) = 0u;
    *(v22 + 104) = 0u;
    *(v22 + 15) = 0;
    *v22 = 0;
    *(v22 + 1) = 0;
    *(v22 + 2) = v24;
    this = v57;
    *v21 = v22;
    v25 = **(v57 + 13);
    if (v25)
    {
      *(v57 + 13) = v25;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v57 + 14), v22);
    ++*(v57 + 15);
    v20 = v56;
  }

  if (!*(v22 + 5))
  {
    *(v22 + 5) = v6;
    *(v22 + 7) = v6;
  }

  *(v22 + 6) = v6;
  v26 = *(this + 20);
  v27 = (v6.__d_.__rep_ - v26) / 1000000000;
  v28 = *(this + 3);
  if (v27 >= v28)
  {
    v55 = a3;
    v29 = v26 + 1000000000 * v27 / v28 * v28;
    v30 = *(this + 13);
    if (v30 != v20)
    {
      v31 = (this + 144);
      do
      {
        v32 = *(v30 + 8);
        v33 = *(v30 + 9);
        v34 = *(v30 + 10);
        v35 = v32 - v34;
        v36 = v33 - *(v30 + 11);
        *(v30 + 12) = v32 - v34;
        *(v30 + 13) = v36;
        *(v30 + 7) = v29;
        *(v30 + 10) = v32;
        *(v30 + 11) = v33;
        if ((v32 - v34) > *(v30 + 14))
        {
          *(v30 + 14) = v35;
          if (v36 <= *(v30 + 15))
          {
LABEL_39:
            if (v32 != v34)
            {
              goto LABEL_43;
            }

            goto LABEL_56;
          }
        }

        else if (v36 <= *(v30 + 15))
        {
          goto LABEL_39;
        }

        *(v30 + 15) = v36;
        if (v32 != v34)
        {
LABEL_43:
          if (*(this + 24))
          {
            v37 = *v31;
            v38 = *(v30 + 8);
            v39 = v31;
            v40 = v31;
            if (*v31)
            {
              while (1)
              {
                while (1)
                {
                  v40 = v37;
                  v41 = *(v37 + 32);
                  if (v38 >= v41)
                  {
                    break;
                  }

                  v37 = *v40;
                  v39 = v40;
                  if (!*v40)
                  {
                    goto LABEL_51;
                  }
                }

                if (v41 >= v38)
                {
                  break;
                }

                v37 = v40[1];
                if (!v37)
                {
                  v39 = v40 + 1;
                  goto LABEL_51;
                }
              }

              this = v57;
            }

            else
            {
LABEL_51:
              v42 = operator new(0x38uLL);
              v42[8] = v38;
              *(v42 + 5) = 0;
              *(v42 + 6) = 0;
              *v42 = 0;
              *(v42 + 1) = 0;
              *(v42 + 2) = v40;
              *v39 = v42;
              this = v57;
              v43 = **(v57 + 17);
              if (v43)
              {
                *(v57 + 17) = v43;
              }

              std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(*(v57 + 18), v42);
              ++*(v57 + 19);
              v40 = v42;
              v20 = v56;
            }

            v40[5] = v35;
            v40[6] = v36;
          }
        }

LABEL_56:
        v44 = *(v30 + 1);
        if (v44)
        {
          do
          {
            v45 = v44;
            v44 = *v44;
          }

          while (v44);
        }

        else
        {
          do
          {
            v45 = *(v30 + 2);
            v46 = *v45 == v30;
            v30 = v45;
          }

          while (!v46);
        }

        v30 = v45;
      }

      while (v45 != v20);
    }

    *(this + 20) = v29;
    a3 = v55;
    if (*(this + 24))
    {
      *(this + 16) = v29 / 1000000000;
      v59[0] = 0xAAAAAAAAAAAAAAAALL;
      abb::router::Metrics::exportTimeSeriesData(this, v59);
      v47 = v59[0];
      if (MEMORY[0x245CD2F50](v59[0]) != MEMORY[0x277D86468])
      {
LABEL_72:
        xpc_release(v47);
        goto LABEL_73;
      }

      object = v47;
      if (v47)
      {
        xpc_retain(v47);
        v48 = *(this + 24);
        if (v48)
        {
LABEL_66:
          (*(*v48 + 48))(v48, &object);
          xpc_release(object);
          object = 0;
          v61 = 0;
          v62 = 0;
          v59[1] = 0;
          v60 = &v61;
          v50 = v57 + 144;
          v49 = *(v57 + 18);
          *(v57 + 16) = 0;
          std::__tree<unsigned int>::destroy(v57 + 136, v49);
          v51 = v61;
          *(v57 + 17) = v60;
          *(v57 + 18) = v51;
          v52 = v62;
          *(v57 + 19) = v62;
          if (v52)
          {
            v51[2] = v50;
            v60 = &v61;
            v61 = 0;
            v62 = 0;
            v51 = 0;
          }

          else
          {
            *(v57 + 17) = v50;
          }

          std::__tree<unsigned int>::destroy(&v60, v51);
          goto LABEL_72;
        }
      }

      else
      {
        object = xpc_null_create();
        v48 = *(this + 24);
        if (v48)
        {
          goto LABEL_66;
        }
      }

      std::__throw_bad_function_call[abi:ne200100]();
    }
  }

LABEL_73:
  v53.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v53.i64[1] = a3;
  result = vaddq_s64(*(v22 + 4), v53);
  *(v22 + 4) = result;
  return result;
}

void sub_240ECAA08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v13);
  _Unwind_Resume(a1);
}

void abb::router::Metrics::exportTimeSeriesData(abb::router::Metrics *this@<X0>, xpc_object_t *a2@<X8>)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CD2F50](v3) == MEMORY[0x277D86468])
    {
      xpc_retain(v3);
      v4 = v3;
    }

    else
    {
      v4 = xpc_null_create();
    }
  }

  else
  {
    v4 = xpc_null_create();
    v3 = 0;
  }

  xpc_release(v3);
  v5 = *(this + 17);
  v40 = this;
  v6 = this + 144;
  xdict = v4;
  if (v5 != this + 144)
  {
    v7 = "CR";
    v8 = "BR";
    while (1)
    {
      v9 = xpc_dictionary_create(0, 0, 0);
      if (v9 || (v9 = xpc_null_create()) != 0)
      {
        if (MEMORY[0x245CD2F50](v9) == MEMORY[0x277D86468])
        {
          xpc_retain(v9);
          v10 = v9;
        }

        else
        {
          v10 = xpc_null_create();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v9 = 0;
      }

      xpc_release(v9);
      v11 = xpc_int64_create(*(v5 + 5));
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      xpc_dictionary_set_value(v10, v7, v11);
      v12 = xpc_null_create();
      xpc_release(v11);
      xpc_release(v12);
      v13 = xpc_int64_create(*(v5 + 6));
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      xpc_dictionary_set_value(v10, v8, v13);
      v14 = xpc_null_create();
      xpc_release(v13);
      xpc_release(v14);
      if (v10)
      {
        xpc_retain(v10);
        v15 = v10;
      }

      else
      {
        v15 = xpc_null_create();
      }

      object = v10;
      v16 = *(v5 + 8);
      v47[1] = 0;
      v47[2] = 6;
      v47[0] = v16;
      *&v17 = 0xAAAAAAAAAAAAAAAALL;
      *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v52[14] = v17;
      v52[15] = v17;
      v52[12] = v17;
      v52[13] = v17;
      v52[10] = v17;
      v52[11] = v17;
      v52[8] = v17;
      v52[9] = v17;
      v52[6] = v17;
      v52[7] = v17;
      v52[4] = v17;
      v52[5] = v17;
      v52[2] = v17;
      v52[3] = v17;
      v52[0] = v17;
      v52[1] = v17;
      v48 = v52;
      *__len = xmmword_240EDCC50;
      v50 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v51 = 0;
      __p = v52;
      v46[0] = 1;
      v46[1] = v47;
      v46[2] = 6;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v48, "{:#06x}", 7, v46);
      v18 = __len[1];
      if (__len[1] >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v19 = __p;
      if (__len[1] >= 0x17)
      {
        break;
      }

      HIBYTE(v45) = __len[1];
      v20 = __dst;
      if (__len[1])
      {
        goto LABEL_43;
      }

      LOBYTE(__dst[0]) = 0;
      v21 = __p;
      if (__p != v52)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v45 >= 0)
      {
        v22 = __dst;
      }

      else
      {
        v22 = __dst[0];
      }

      v4 = xdict;
      xpc_dictionary_set_value(xdict, v22, v15);
      v23 = xpc_null_create();
      xpc_release(v15);
      if (SHIBYTE(v45) < 0)
      {
        operator delete(__dst[0]);
      }

      xpc_release(v23);
      xpc_release(object);
      v24 = *(v5 + 1);
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = *(v5 + 2);
          v26 = *v25 == v5;
          v5 = v25;
        }

        while (!v26);
      }

      v5 = v25;
      if (v25 == v6)
      {
        goto LABEL_45;
      }
    }

    v27 = v6;
    v28 = v8;
    v29 = v7;
    if ((__len[1] | 7) == 0x17)
    {
      v30 = 25;
    }

    else
    {
      v30 = (__len[1] | 7) + 1;
    }

    v20 = operator new(v30);
    __dst[1] = v18;
    v45 = v30 | 0x8000000000000000;
    __dst[0] = v20;
    v7 = v29;
    v8 = v28;
    v6 = v27;
LABEL_43:
    memmove(v20, v19, v18);
    *(v18 + v20) = 0;
    v21 = __p;
    if (__p == v52)
    {
      goto LABEL_28;
    }

LABEL_27:
    operator delete(v21);
    goto LABEL_28;
  }

LABEL_45:
  if (!xpc_dictionary_get_count(v4))
  {
    *a2 = xpc_null_create();
    goto LABEL_60;
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v31 = xpc_dictionary_create(0, 0, 0);
  v32 = v31;
  if (v31)
  {
    *a2 = v31;
  }

  else
  {
    v32 = xpc_null_create();
    *a2 = v32;
    if (!v32)
    {
      v33 = xpc_null_create();
      v32 = 0;
      goto LABEL_54;
    }
  }

  if (MEMORY[0x245CD2F50](v32) == MEMORY[0x277D86468])
  {
    xpc_retain(v32);
    goto LABEL_55;
  }

  v33 = xpc_null_create();
LABEL_54:
  *a2 = v33;
LABEL_55:
  xpc_release(v32);
  if (!v4)
  {
    v34 = xpc_null_create();
    v35 = v40;
    if ((*(v40 + 23) & 0x80000000) == 0)
    {
      goto LABEL_57;
    }

LABEL_62:
    v35 = *v40;
    goto LABEL_57;
  }

  xpc_retain(v4);
  v34 = v4;
  v35 = v40;
  if (*(v40 + 23) < 0)
  {
    goto LABEL_62;
  }

LABEL_57:
  xpc_dictionary_set_value(*a2, v35, v34);
  v36 = xpc_null_create();
  xpc_release(v34);
  xpc_release(v36);
  v37 = xpc_uint64_create(*(v40 + 16));
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  xpc_dictionary_set_value(*a2, "TimePointSeconds", v37);
  v38 = xpc_null_create();
  xpc_release(v37);
  xpc_release(v38);
LABEL_60:
  xpc_release(v4);
  v39 = *MEMORY[0x277D85DE8];
}

void sub_240ECAF7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *__p)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void abb::router::Metrics::resetTimeSeriesData(abb::router::Metrics *this)
{
  v7 = 0;
  v8 = 0;
  v6 = &v7;
  v2 = (this + 144);
  v1 = *(this + 18);
  *(this + 16) = 0;
  v3 = (this + 136);
  std::__tree<unsigned int>::destroy(this + 136, v1);
  v4 = v7;
  *(v2 - 1) = v6;
  *v2 = v4;
  v5 = v8;
  v2[1] = v8;
  if (v5)
  {
    v4[2] = v2;
    v6 = &v7;
    v7 = 0;
    v8 = 0;
    v4 = 0;
  }

  else
  {
    *v3 = v2;
  }

  std::__tree<unsigned int>::destroy(&v6, v4);
}

uint64_t *abb::router::Metrics::getTopMessagesByCount@<X0>(abb::router::Metrics *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  memset(a3, 170, 24);
  result = std::vector<std::pair<unsigned int,unsigned long>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned long>,std::__tree_node<std::__value_type<unsigned int,unsigned long>,void *> *,long>>,0>(a3, *(this + 6), this + 7);
  v5 = *result;
  v6 = result[1];
  v7 = (v6 - *result) >> 4;
  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = (v6 - *result) >> 4;
  }

  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = 16 * v8;
  v10 = (16 * v8 + v5);
  v11 = (16 * v8) >> 4;
  if (v11 >= 2)
  {
    v12 = (v11 - 2) >> 1;
    v13 = v12;
    do
    {
      if (v12 >= v13)
      {
        v15 = (2 * v13) & 0x1FFFFFFFFFFFFFFELL | 1;
        v16 = v5 + 16 * v15;
        if (((2 * v13) & 0x1FFFFFFFFFFFFFFFLL) + 2 < v11)
        {
          v14 = *(v16 + 8) > *(v16 + 24);
          v16 += 16 * v14;
          if (v14)
          {
            v15 = ((2 * v13) & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }
        }

        v17 = (16 * v13 + v5);
        v18 = *(v16 + 8);
        v19 = *(v17 + 1);
        if (v18 <= v19)
        {
          v20 = *v17;
          while (1)
          {
            v21 = v17;
            v17 = v16;
            *v21 = *v16;
            *(v21 + 1) = v18;
            if (v12 < v15)
            {
              break;
            }

            v22 = (2 * (v15 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v16 = v5 + 16 * v22;
            v15 = 2 * v15 + 2;
            if (v15 < v11)
            {
              v14 = *(v16 + 8) > *(v16 + 24);
              v16 += 16 * v14;
              if (!v14)
              {
                v15 = v22;
              }

              v18 = *(v16 + 8);
              if (v18 > v19)
              {
                break;
              }
            }

            else
            {
              v15 = v22;
              v18 = *(v16 + 8);
              if (v18 > v19)
              {
                break;
              }
            }
          }

          *v17 = v20;
          *(v17 + 1) = v19;
        }
      }

      v14 = v13-- <= 0;
    }

    while (!v14);
  }

  if (v10 != v6)
  {
    if (v11 < 2)
    {
      v39 = *(v5 + 8);
      v40 = v10;
      do
      {
        v41 = *(v40 + 1);
        if (v41 > v39)
        {
          v42 = *v40;
          *v40 = *v5;
          *v5 = v42;
          *(v40 + 1) = v39;
          *(v5 + 8) = v41;
          v39 = v41;
        }

        v40 += 4;
      }

      while (v40 != v6);
      goto LABEL_23;
    }

    for (i = v10; i != v6; i += 4)
    {
      v44 = *(i + 1);
      v45 = *(v5 + 8);
      if (v44 > v45)
      {
        v46 = *i;
        *i = *v5;
        *v5 = v46;
        *(i + 1) = v45;
        *(v5 + 8) = v44;
        if (v9 == 32)
        {
          v47 = v5 + 16;
          v48 = 1;
          v49 = *(v5 + 24);
          if (v49 <= v44)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v47 = v5 + 16 + 16 * (*(v5 + 24) > *(v5 + 40));
          if (*(v5 + 24) <= *(v5 + 40))
          {
            v48 = 1;
          }

          else
          {
            v48 = 2;
          }

          v49 = *(v47 + 8);
          if (v49 <= v44)
          {
LABEL_58:
            v50 = v5;
            while (1)
            {
              v51 = v50;
              v50 = v47;
              *v51 = *v47;
              *(v51 + 8) = v49;
              if (((v11 - 2) >> 1) < v48)
              {
                break;
              }

              v52 = (2 * v48) | 1;
              v47 = v5 + 16 * v52;
              v48 = 2 * v48 + 2;
              if (v48 < v11)
              {
                v14 = *(v47 + 8) > *(v47 + 24);
                v47 += 16 * v14;
                if (!v14)
                {
                  v48 = v52;
                }

                v49 = *(v47 + 8);
                if (v49 > v44)
                {
                  break;
                }
              }

              else
              {
                v48 = v52;
                v49 = *(v47 + 8);
                if (v49 > v44)
                {
                  break;
                }
              }
            }

            *v50 = v46;
            *(v50 + 8) = v44;
          }
        }
      }
    }
  }

LABEL_23:
  if (v11 >= 2)
  {
    do
    {
      v23 = 0;
      v24 = *v5;
      v25 = *(v5 + 8);
      v26 = v5;
      do
      {
        v27 = v26 + 16 * v23 + 16;
        v28 = (2 * v23) | 1;
        v29 = 2 * v23 + 2;
        if (v29 < v11)
        {
          v14 = *(v27 + 8) > *(v27 + 24);
          v27 += 16 * v14;
          if (v14)
          {
            v28 = v29;
          }
        }

        *v26 = *v27;
        *(v26 + 8) = *(v27 + 8);
        v26 = v27;
        v23 = v28;
      }

      while (v28 <= ((v11 - 2) >> 1));
      v30 = v10 - 4;
      if (v27 == v10 - 4)
      {
        *v27 = v24;
        *(v27 + 8) = v25;
      }

      else
      {
        *v27 = *(v10 - 4);
        *(v27 + 8) = *(v10 - 1);
        *(v10 - 4) = v24;
        *(v10 - 1) = v25;
        v31 = (v27 - v5 + 16) >> 4;
        v14 = v31 < 2;
        v32 = v31 - 2;
        if (!v14)
        {
          v33 = v32 >> 1;
          v34 = v5 + 16 * (v32 >> 1);
          v35 = *(v34 + 8);
          v36 = *(v27 + 8);
          if (v35 > v36)
          {
            v37 = *v27;
            do
            {
              v38 = v27;
              v27 = v34;
              *v38 = *v34;
              *(v38 + 8) = v35;
              if (!v33)
              {
                break;
              }

              v33 = (v33 - 1) >> 1;
              v34 = v5 + 16 * v33;
              v35 = *(v34 + 8);
            }

            while (v35 > v36);
            *v27 = v37;
            *(v27 + 8) = v36;
          }
        }
      }

      v10 = v30;
      v14 = v11-- <= 2;
    }

    while (!v14);
  }

LABEL_24:
  if (v7 > a2)
  {
    result[1] = v5 + 16 * a2;
  }

  return result;
}

void *std::vector<std::pair<unsigned int,unsigned long>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned long>,std::__tree_node<std::__value_type<unsigned int,unsigned long>,void *> *,long>>,0>(void *a1, void *a2, void *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2 != a3)
  {
    v5 = a2;
    v6 = 0;
    v7 = a2;
    do
    {
      v8 = v6;
      v9 = v7[1];
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      ++v6;
      v7 = v10;
    }

    while (v10 != a3);
    if (v8 >= 0xFFFFFFFFFFFFFFFLL)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v12 = operator new(16 * v6);
    *a1 = v12;
    a1[1] = v12;
    a1[2] = &v12[2 * v6];
    do
    {
      *v12 = *(v5 + 8);
      v12[1] = v5[5];
      v13 = v5[1];
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
          v14 = v5[2];
          v11 = *v14 == v5;
          v5 = v14;
        }

        while (!v11);
      }

      v12 += 2;
      v5 = v14;
    }

    while (v14 != a3);
    a1[1] = v12;
  }

  return a1;
}

void sub_240ECB64C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *abb::router::Metrics::getTopMessagesByBytes@<X0>(abb::router::Metrics *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  memset(a3, 170, 24);
  result = std::vector<std::pair<unsigned int,unsigned long>>::vector[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<unsigned int,unsigned long>,std::__tree_node<std::__value_type<unsigned int,unsigned long>,void *> *,long>>,0>(a3, *(this + 10), this + 11);
  v5 = *result;
  v6 = result[1];
  v7 = (v6 - *result) >> 4;
  if (v7 >= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = (v6 - *result) >> 4;
  }

  if (!v8)
  {
    goto LABEL_24;
  }

  v9 = 16 * v8;
  v10 = (16 * v8 + v5);
  v11 = (16 * v8) >> 4;
  if (v11 >= 2)
  {
    v12 = (v11 - 2) >> 1;
    v13 = v12;
    do
    {
      if (v12 >= v13)
      {
        v15 = (2 * v13) & 0x1FFFFFFFFFFFFFFELL | 1;
        v16 = v5 + 16 * v15;
        if (((2 * v13) & 0x1FFFFFFFFFFFFFFFLL) + 2 < v11)
        {
          v14 = *(v16 + 8) > *(v16 + 24);
          v16 += 16 * v14;
          if (v14)
          {
            v15 = ((2 * v13) & 0x1FFFFFFFFFFFFFFFLL) + 2;
          }
        }

        v17 = (16 * v13 + v5);
        v18 = *(v16 + 8);
        v19 = *(v17 + 1);
        if (v18 <= v19)
        {
          v20 = *v17;
          while (1)
          {
            v21 = v17;
            v17 = v16;
            *v21 = *v16;
            *(v21 + 1) = v18;
            if (v12 < v15)
            {
              break;
            }

            v22 = (2 * (v15 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v16 = v5 + 16 * v22;
            v15 = 2 * v15 + 2;
            if (v15 < v11)
            {
              v14 = *(v16 + 8) > *(v16 + 24);
              v16 += 16 * v14;
              if (!v14)
              {
                v15 = v22;
              }

              v18 = *(v16 + 8);
              if (v18 > v19)
              {
                break;
              }
            }

            else
            {
              v15 = v22;
              v18 = *(v16 + 8);
              if (v18 > v19)
              {
                break;
              }
            }
          }

          *v17 = v20;
          *(v17 + 1) = v19;
        }
      }

      v14 = v13-- <= 0;
    }

    while (!v14);
  }

  if (v10 != v6)
  {
    if (v11 < 2)
    {
      v39 = *(v5 + 8);
      v40 = v10;
      do
      {
        v41 = *(v40 + 1);
        if (v41 > v39)
        {
          v42 = *v40;
          *v40 = *v5;
          *v5 = v42;
          *(v40 + 1) = v39;
          *(v5 + 8) = v41;
          v39 = v41;
        }

        v40 += 4;
      }

      while (v40 != v6);
      goto LABEL_23;
    }

    for (i = v10; i != v6; i += 4)
    {
      v44 = *(i + 1);
      v45 = *(v5 + 8);
      if (v44 > v45)
      {
        v46 = *i;
        *i = *v5;
        *v5 = v46;
        *(i + 1) = v45;
        *(v5 + 8) = v44;
        if (v9 == 32)
        {
          v47 = v5 + 16;
          v48 = 1;
          v49 = *(v5 + 24);
          if (v49 <= v44)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v47 = v5 + 16 + 16 * (*(v5 + 24) > *(v5 + 40));
          if (*(v5 + 24) <= *(v5 + 40))
          {
            v48 = 1;
          }

          else
          {
            v48 = 2;
          }

          v49 = *(v47 + 8);
          if (v49 <= v44)
          {
LABEL_58:
            v50 = v5;
            while (1)
            {
              v51 = v50;
              v50 = v47;
              *v51 = *v47;
              *(v51 + 8) = v49;
              if (((v11 - 2) >> 1) < v48)
              {
                break;
              }

              v52 = (2 * v48) | 1;
              v47 = v5 + 16 * v52;
              v48 = 2 * v48 + 2;
              if (v48 < v11)
              {
                v14 = *(v47 + 8) > *(v47 + 24);
                v47 += 16 * v14;
                if (!v14)
                {
                  v48 = v52;
                }

                v49 = *(v47 + 8);
                if (v49 > v44)
                {
                  break;
                }
              }

              else
              {
                v48 = v52;
                v49 = *(v47 + 8);
                if (v49 > v44)
                {
                  break;
                }
              }
            }

            *v50 = v46;
            *(v50 + 8) = v44;
          }
        }
      }
    }
  }

LABEL_23:
  if (v11 >= 2)
  {
    do
    {
      v23 = 0;
      v24 = *v5;
      v25 = *(v5 + 8);
      v26 = v5;
      do
      {
        v27 = v26 + 16 * v23 + 16;
        v28 = (2 * v23) | 1;
        v29 = 2 * v23 + 2;
        if (v29 < v11)
        {
          v14 = *(v27 + 8) > *(v27 + 24);
          v27 += 16 * v14;
          if (v14)
          {
            v28 = v29;
          }
        }

        *v26 = *v27;
        *(v26 + 8) = *(v27 + 8);
        v26 = v27;
        v23 = v28;
      }

      while (v28 <= ((v11 - 2) >> 1));
      v30 = v10 - 4;
      if (v27 == v10 - 4)
      {
        *v27 = v24;
        *(v27 + 8) = v25;
      }

      else
      {
        *v27 = *(v10 - 4);
        *(v27 + 8) = *(v10 - 1);
        *(v10 - 4) = v24;
        *(v10 - 1) = v25;
        v31 = (v27 - v5 + 16) >> 4;
        v14 = v31 < 2;
        v32 = v31 - 2;
        if (!v14)
        {
          v33 = v32 >> 1;
          v34 = v5 + 16 * (v32 >> 1);
          v35 = *(v34 + 8);
          v36 = *(v27 + 8);
          if (v35 > v36)
          {
            v37 = *v27;
            do
            {
              v38 = v27;
              v27 = v34;
              *v38 = *v34;
              *(v38 + 8) = v35;
              if (!v33)
              {
                break;
              }

              v33 = (v33 - 1) >> 1;
              v34 = v5 + 16 * v33;
              v35 = *(v34 + 8);
            }

            while (v35 > v36);
            *v27 = v37;
            *(v27 + 8) = v36;
          }
        }
      }

      v10 = v30;
      v14 = v11-- <= 2;
    }

    while (!v14);
  }

LABEL_24:
  if (v7 > a2)
  {
    result[1] = v5 + 16 * a2;
  }

  return result;
}

void abb::router::Metrics::getTopMessagesByPeakCountRate(abb::router::Metrics *this@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(this + 13);
  v4 = this + 112;
  if (v3 != this + 112)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v67 = this + 112;
    while (1)
    {
      v8 = *(v3 + 8);
      v9 = *(v3 + 14);
      if (v5 >= v6)
      {
        v11 = v5 - v7;
        v12 = (v5 - v7) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          a3[1] = v5;
          a3[2] = v6;
          *a3 = v7;
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if ((v6 - v7) >> 3 > v13)
        {
          v13 = (v6 - v7) >> 3;
        }

        if ((v6 - v7) >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          if (v14 >> 60)
          {
            a3[1] = v5;
            a3[2] = v6;
            *a3 = v7;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v15 = operator new(16 * v14);
        }

        else
        {
          v15 = 0;
        }

        v16 = &v15[16 * v12];
        v6 = &v15[16 * v14];
        *v16 = v8;
        *(v16 + 1) = v9;
        v5 = v16 + 16;
        memcpy(v15, v7, v11);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v15;
        v4 = v67;
        v10 = *(v3 + 1);
        if (v10)
        {
          do
          {
LABEL_20:
            v17 = v10;
            v10 = *v10;
          }

          while (v10);
          goto LABEL_3;
        }
      }

      else
      {
        *v5 = v8;
        *(v5 + 1) = v9;
        v5 += 16;
        v10 = *(v3 + 1);
        if (v10)
        {
          goto LABEL_20;
        }
      }

      do
      {
        v17 = *(v3 + 2);
        v18 = *v17 == v3;
        v3 = v17;
      }

      while (!v18);
LABEL_3:
      v3 = v17;
      if (v17 == v4)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = 0;
  v6 = 0;
  v5 = 0;
LABEL_26:
  a3[1] = v5;
  a3[2] = v6;
  *a3 = v7;
  v19 = (v5 - v7) >> 4;
  if (v19 >= a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = (v5 - v7) >> 4;
  }

  if (v20)
  {
    v21 = 16 * v20;
    v22 = &v7[16 * v20];
    v23 = (16 * v20) >> 4;
    if (v23 >= 2)
    {
      v24 = (v23 - 2) >> 1;
      v25 = v24;
      do
      {
        if (v24 >= v25)
        {
          v27 = (2 * v25) & 0x1FFFFFFFFFFFFFFELL | 1;
          v28 = &v7[16 * v27];
          if (((2 * v25) & 0x1FFFFFFFFFFFFFFFLL) + 2 < v23)
          {
            v26 = *(v28 + 1) > *(v28 + 3);
            v28 += 16 * v26;
            if (v26)
            {
              v27 = ((2 * v25) & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }
          }

          v29 = &v7[16 * v25];
          v30 = *(v28 + 1);
          v31 = *(v29 + 1);
          if (v30 <= v31)
          {
            v32 = *v29;
            while (1)
            {
              v33 = v29;
              v29 = v28;
              *v33 = *v28;
              *(v33 + 1) = v30;
              if (v24 < v27)
              {
                break;
              }

              v34 = (2 * (v27 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v28 = &v7[16 * v34];
              v27 = 2 * v27 + 2;
              if (v27 < v23)
              {
                v26 = *(v28 + 1) > *(v28 + 3);
                v28 += 16 * v26;
                if (!v26)
                {
                  v27 = v34;
                }

                v30 = *(v28 + 1);
                if (v30 > v31)
                {
                  break;
                }
              }

              else
              {
                v27 = v34;
                v30 = *(v28 + 1);
                if (v30 > v31)
                {
                  break;
                }
              }
            }

            *v29 = v32;
            *(v29 + 1) = v31;
          }
        }

        v26 = v25-- <= 0;
      }

      while (!v26);
    }

    if (v22 == v5)
    {
      goto LABEL_48;
    }

    if (v23 < 2)
    {
      v51 = *(v7 + 1);
      v52 = v22;
      do
      {
        v53 = *(v52 + 1);
        if (v53 > v51)
        {
          v54 = *v52;
          *v52 = *v7;
          *v7 = v54;
          *(v52 + 1) = v51;
          *(v7 + 1) = v53;
          v51 = v53;
        }

        v52 += 16;
      }

      while (v52 != v5);
LABEL_48:
      if (v23 >= 2)
      {
        do
        {
          v35 = 0;
          v36 = *v7;
          v37 = *(v7 + 1);
          v38 = v7;
          do
          {
            v39 = &v38[2 * v35 + 2];
            v40 = (2 * v35) | 1;
            v41 = 2 * v35 + 2;
            if (v41 < v23)
            {
              v26 = *(v39 + 8) > *(v39 + 24);
              v39 += 16 * v26;
              if (v26)
              {
                v40 = v41;
              }
            }

            *v38 = *v39;
            v38[1] = *(v39 + 8);
            v38 = v39;
            v35 = v40;
          }

          while (v40 <= ((v23 - 2) >> 1));
          v42 = v22 - 16;
          if (v39 == v22 - 16)
          {
            *v39 = v36;
            *(v39 + 8) = v37;
          }

          else
          {
            *v39 = *(v22 - 4);
            *(v39 + 8) = *(v22 - 1);
            *(v22 - 4) = v36;
            *(v22 - 1) = v37;
            v43 = (v39 - v7 + 16) >> 4;
            v26 = v43 < 2;
            v44 = v43 - 2;
            if (!v26)
            {
              v45 = v44 >> 1;
              v46 = &v7[16 * (v44 >> 1)];
              v47 = *(v46 + 1);
              v48 = *(v39 + 8);
              if (v47 > v48)
              {
                v49 = *v39;
                do
                {
                  v50 = v39;
                  v39 = v46;
                  *v50 = *v46;
                  *(v50 + 8) = v47;
                  if (!v45)
                  {
                    break;
                  }

                  v45 = (v45 - 1) >> 1;
                  v46 = &v7[16 * v45];
                  v47 = *(v46 + 1);
                }

                while (v47 > v48);
                *v39 = v49;
                *(v39 + 8) = v48;
              }
            }
          }

          v22 = v42;
          v26 = v23-- <= 2;
        }

        while (!v26);
      }

      goto LABEL_49;
    }

    v55 = v22;
    while (1)
    {
      v56 = *(v55 + 1);
      v57 = *(v7 + 1);
      if (v56 > v57)
      {
        v58 = *v55;
        *v55 = *v7;
        *v7 = v58;
        *(v55 + 1) = v57;
        *(v7 + 1) = v56;
        if (v21 == 32)
        {
          v59 = (v7 + 16);
          v60 = 1;
          v61 = *(v7 + 3);
          if (v61 <= v56)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v59 = &v7[16 * (*(v7 + 3) > *(v7 + 5)) + 16];
          if (*(v7 + 3) <= *(v7 + 5))
          {
            v60 = 1;
          }

          else
          {
            v60 = 2;
          }

          v61 = *(v59 + 8);
          if (v61 <= v56)
          {
LABEL_83:
            v62 = v7;
            while (1)
            {
              v63 = v62;
              v62 = v59;
              *v63 = *v59;
              v63[1] = v61;
              if (((v23 - 2) >> 1) < v60)
              {
                break;
              }

              v64 = (2 * v60) | 1;
              v59 = &v7[16 * v64];
              v60 = 2 * v60 + 2;
              if (v60 < v23)
              {
                v26 = *(v59 + 8) > *(v59 + 24);
                v59 += 16 * v26;
                if (!v26)
                {
                  v60 = v64;
                }

                v61 = *(v59 + 8);
                if (v61 > v56)
                {
                  break;
                }
              }

              else
              {
                v60 = v64;
                v61 = *(v59 + 8);
                if (v61 > v56)
                {
                  break;
                }
              }
            }

            *v62 = v58;
            v62[1] = v56;
          }
        }
      }

      v55 += 16;
      if (v55 == v5)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_49:
  if (v19 > a2)
  {
    a3[1] = &v7[16 * a2];
  }
}

void sub_240ECBFB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  a11[1] = v12;
  a11[2] = v13;
  *a11 = v11;
  if (v11)
  {
    a11[1] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Metrics::getTopMessagesByPeakByteRate(abb::router::Metrics *this@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *(this + 13);
  v4 = this + 112;
  if (v3 != this + 112)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v67 = this + 112;
    while (1)
    {
      v8 = *(v3 + 8);
      v9 = *(v3 + 15);
      if (v5 >= v6)
      {
        v11 = v5 - v7;
        v12 = (v5 - v7) >> 4;
        v13 = v12 + 1;
        if ((v12 + 1) >> 60)
        {
          a3[1] = v5;
          a3[2] = v6;
          *a3 = v7;
          std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
        }

        if ((v6 - v7) >> 3 > v13)
        {
          v13 = (v6 - v7) >> 3;
        }

        if ((v6 - v7) >= 0x7FFFFFFFFFFFFFF0)
        {
          v14 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v13;
        }

        if (v14)
        {
          if (v14 >> 60)
          {
            a3[1] = v5;
            a3[2] = v6;
            *a3 = v7;
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v15 = operator new(16 * v14);
        }

        else
        {
          v15 = 0;
        }

        v16 = &v15[16 * v12];
        v6 = &v15[16 * v14];
        *v16 = v8;
        *(v16 + 1) = v9;
        v5 = v16 + 16;
        memcpy(v15, v7, v11);
        if (v7)
        {
          operator delete(v7);
        }

        v7 = v15;
        v4 = v67;
        v10 = *(v3 + 1);
        if (v10)
        {
          do
          {
LABEL_20:
            v17 = v10;
            v10 = *v10;
          }

          while (v10);
          goto LABEL_3;
        }
      }

      else
      {
        *v5 = v8;
        *(v5 + 1) = v9;
        v5 += 16;
        v10 = *(v3 + 1);
        if (v10)
        {
          goto LABEL_20;
        }
      }

      do
      {
        v17 = *(v3 + 2);
        v18 = *v17 == v3;
        v3 = v17;
      }

      while (!v18);
LABEL_3:
      v3 = v17;
      if (v17 == v4)
      {
        goto LABEL_26;
      }
    }
  }

  v7 = 0;
  v6 = 0;
  v5 = 0;
LABEL_26:
  a3[1] = v5;
  a3[2] = v6;
  *a3 = v7;
  v19 = (v5 - v7) >> 4;
  if (v19 >= a2)
  {
    v20 = a2;
  }

  else
  {
    v20 = (v5 - v7) >> 4;
  }

  if (v20)
  {
    v21 = 16 * v20;
    v22 = &v7[16 * v20];
    v23 = (16 * v20) >> 4;
    if (v23 >= 2)
    {
      v24 = (v23 - 2) >> 1;
      v25 = v24;
      do
      {
        if (v24 >= v25)
        {
          v27 = (2 * v25) & 0x1FFFFFFFFFFFFFFELL | 1;
          v28 = &v7[16 * v27];
          if (((2 * v25) & 0x1FFFFFFFFFFFFFFFLL) + 2 < v23)
          {
            v26 = *(v28 + 1) > *(v28 + 3);
            v28 += 16 * v26;
            if (v26)
            {
              v27 = ((2 * v25) & 0x1FFFFFFFFFFFFFFFLL) + 2;
            }
          }

          v29 = &v7[16 * v25];
          v30 = *(v28 + 1);
          v31 = *(v29 + 1);
          if (v30 <= v31)
          {
            v32 = *v29;
            while (1)
            {
              v33 = v29;
              v29 = v28;
              *v33 = *v28;
              *(v33 + 1) = v30;
              if (v24 < v27)
              {
                break;
              }

              v34 = (2 * (v27 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v28 = &v7[16 * v34];
              v27 = 2 * v27 + 2;
              if (v27 < v23)
              {
                v26 = *(v28 + 1) > *(v28 + 3);
                v28 += 16 * v26;
                if (!v26)
                {
                  v27 = v34;
                }

                v30 = *(v28 + 1);
                if (v30 > v31)
                {
                  break;
                }
              }

              else
              {
                v27 = v34;
                v30 = *(v28 + 1);
                if (v30 > v31)
                {
                  break;
                }
              }
            }

            *v29 = v32;
            *(v29 + 1) = v31;
          }
        }

        v26 = v25-- <= 0;
      }

      while (!v26);
    }

    if (v22 == v5)
    {
      goto LABEL_48;
    }

    if (v23 < 2)
    {
      v51 = *(v7 + 1);
      v52 = v22;
      do
      {
        v53 = *(v52 + 1);
        if (v53 > v51)
        {
          v54 = *v52;
          *v52 = *v7;
          *v7 = v54;
          *(v52 + 1) = v51;
          *(v7 + 1) = v53;
          v51 = v53;
        }

        v52 += 16;
      }

      while (v52 != v5);
LABEL_48:
      if (v23 >= 2)
      {
        do
        {
          v35 = 0;
          v36 = *v7;
          v37 = *(v7 + 1);
          v38 = v7;
          do
          {
            v39 = &v38[2 * v35 + 2];
            v40 = (2 * v35) | 1;
            v41 = 2 * v35 + 2;
            if (v41 < v23)
            {
              v26 = *(v39 + 8) > *(v39 + 24);
              v39 += 16 * v26;
              if (v26)
              {
                v40 = v41;
              }
            }

            *v38 = *v39;
            v38[1] = *(v39 + 8);
            v38 = v39;
            v35 = v40;
          }

          while (v40 <= ((v23 - 2) >> 1));
          v42 = v22 - 16;
          if (v39 == v22 - 16)
          {
            *v39 = v36;
            *(v39 + 8) = v37;
          }

          else
          {
            *v39 = *(v22 - 4);
            *(v39 + 8) = *(v22 - 1);
            *(v22 - 4) = v36;
            *(v22 - 1) = v37;
            v43 = (v39 - v7 + 16) >> 4;
            v26 = v43 < 2;
            v44 = v43 - 2;
            if (!v26)
            {
              v45 = v44 >> 1;
              v46 = &v7[16 * (v44 >> 1)];
              v47 = *(v46 + 1);
              v48 = *(v39 + 8);
              if (v47 > v48)
              {
                v49 = *v39;
                do
                {
                  v50 = v39;
                  v39 = v46;
                  *v50 = *v46;
                  *(v50 + 8) = v47;
                  if (!v45)
                  {
                    break;
                  }

                  v45 = (v45 - 1) >> 1;
                  v46 = &v7[16 * v45];
                  v47 = *(v46 + 1);
                }

                while (v47 > v48);
                *v39 = v49;
                *(v39 + 8) = v48;
              }
            }
          }

          v22 = v42;
          v26 = v23-- <= 2;
        }

        while (!v26);
      }

      goto LABEL_49;
    }

    v55 = v22;
    while (1)
    {
      v56 = *(v55 + 1);
      v57 = *(v7 + 1);
      if (v56 > v57)
      {
        v58 = *v55;
        *v55 = *v7;
        *v7 = v58;
        *(v55 + 1) = v57;
        *(v7 + 1) = v56;
        if (v21 == 32)
        {
          v59 = (v7 + 16);
          v60 = 1;
          v61 = *(v7 + 3);
          if (v61 <= v56)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v59 = &v7[16 * (*(v7 + 3) > *(v7 + 5)) + 16];
          if (*(v7 + 3) <= *(v7 + 5))
          {
            v60 = 1;
          }

          else
          {
            v60 = 2;
          }

          v61 = *(v59 + 8);
          if (v61 <= v56)
          {
LABEL_83:
            v62 = v7;
            while (1)
            {
              v63 = v62;
              v62 = v59;
              *v63 = *v59;
              v63[1] = v61;
              if (((v23 - 2) >> 1) < v60)
              {
                break;
              }

              v64 = (2 * v60) | 1;
              v59 = &v7[16 * v64];
              v60 = 2 * v60 + 2;
              if (v60 < v23)
              {
                v26 = *(v59 + 8) > *(v59 + 24);
                v59 += 16 * v26;
                if (!v26)
                {
                  v60 = v64;
                }

                v61 = *(v59 + 8);
                if (v61 > v56)
                {
                  break;
                }
              }

              else
              {
                v60 = v64;
                v61 = *(v59 + 8);
                if (v61 > v56)
                {
                  break;
                }
              }
            }

            *v62 = v58;
            v62[1] = v56;
          }
        }
      }

      v55 += 16;
      if (v55 == v5)
      {
        goto LABEL_48;
      }
    }
  }

LABEL_49:
  if (v19 > a2)
  {
    a3[1] = &v7[16 * a2];
  }
}

void sub_240ECC53C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11)
{
  a11[1] = v12;
  a11[2] = v13;
  *a11 = v11;
  if (v11)
  {
    a11[1] = v11;
    operator delete(v11);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Metrics::exportSummary(abb::router::Metrics *this@<X0>, xpc_object_t *a2@<X8>)
{
  v137 = *MEMORY[0x277D85DE8];
  v2 = xpc_dictionary_create(0, 0, 0);
  if (v2 || (v2 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CD2F50](v2) == MEMORY[0x277D86468])
    {
      xpc_retain(v2);
      xdict = v2;
    }

    else
    {
      xdict = xpc_null_create();
    }
  }

  else
  {
    xdict = xpc_null_create();
    v2 = 0;
  }

  xpc_release(v2);
  v3 = xpc_uint64_create(*(this + 5));
  if (!v3)
  {
    v3 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "TotalCount", v3);
  v4 = xpc_null_create();
  xpc_release(v3);
  xpc_release(v4);
  v5 = xpc_uint64_create(*(this + 9));
  if (!v5)
  {
    v5 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "TotalBytes", v5);
  v6 = xpc_null_create();
  xpc_release(v5);
  xpc_release(v6);
  v7 = xpc_dictionary_create(0, 0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CD2F50](v7) == MEMORY[0x277D86468])
    {
      xpc_retain(v7);
      v8 = v7;
    }

    else
    {
      v8 = xpc_null_create();
    }
  }

  else
  {
    v8 = xpc_null_create();
    v7 = 0;
  }

  xpc_release(v7);
  object = v8;
  abb::router::Metrics::getTopMessagesByCount(this, *(this + 4), &v108);
  v10 = v108;
  v9 = v109;
  if (v108 != v109)
  {
    while (1)
    {
      v11 = xpc_uint64_create(v10[1]);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      v12 = *v10;
      v114 = 0;
      v115 = 6;
      v112 = 6;
      v113 = v12;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v134 = v13;
      v135 = v13;
      v132 = v13;
      v133 = v13;
      v130 = v13;
      v131 = v13;
      v128 = v13;
      v129 = v13;
      v126 = v13;
      v127 = v13;
      v124 = v13;
      v125 = v13;
      v122 = v13;
      v123 = v13;
      v120 = v13;
      v121 = v13;
      v116 = &v120;
      *__len = xmmword_240EDCC50;
      v118 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v119 = 0;
      __p = &v120;
      v110 = 1;
      v111 = &v113;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v116, "{:#06x}", 7, &v110);
      v14 = __len[1];
      if (__len[1] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v15 = __p;
      if (__len[1] >= 0x17)
      {
        break;
      }

      HIBYTE(v107) = __len[1];
      p_dst = &__dst;
      if (__len[1])
      {
        goto LABEL_36;
      }

      LOBYTE(__dst) = 0;
      v17 = __p;
      if (__p != &v120)
      {
        goto LABEL_24;
      }

LABEL_25:
      if (v107 >= 0)
      {
        v18 = &__dst;
      }

      else
      {
        v18 = __dst;
      }

      xpc_dictionary_set_value(object, v18, v11);
      v19 = xpc_null_create();
      xpc_release(v11);
      if (SHIBYTE(v107) < 0)
      {
        operator delete(__dst);
      }

      xpc_release(v19);
      v10 += 2;
      if (v10 == v9)
      {
        v10 = v108;
        goto LABEL_38;
      }
    }

    if ((__len[1] | 7) == 0x17)
    {
      v20 = 25;
    }

    else
    {
      v20 = (__len[1] | 7) + 1;
    }

    p_dst = operator new(v20);
    v106 = v14;
    v107 = v20 | 0x8000000000000000;
    __dst = p_dst;
LABEL_36:
    memmove(p_dst, v15, v14);
    *(p_dst + v14) = 0;
    v17 = __p;
    if (__p == &v120)
    {
      goto LABEL_25;
    }

LABEL_24:
    operator delete(v17);
    goto LABEL_25;
  }

LABEL_38:
  v21 = object;
  if (v10)
  {
    v109 = v10;
    operator delete(v10);
  }

  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "Count", v21);
  v22 = xpc_null_create();
  xpc_release(v21);
  xpc_release(v22);
  v23 = xpc_dictionary_create(0, 0, 0);
  if (v23 || (v23 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CD2F50](v23) == MEMORY[0x277D86468])
    {
      xpc_retain(v23);
      v24 = v23;
    }

    else
    {
      v24 = xpc_null_create();
    }
  }

  else
  {
    v24 = xpc_null_create();
    v23 = 0;
  }

  xpc_release(v23);
  v103 = v24;
  abb::router::Metrics::getTopMessagesByBytes(this, *(this + 4), &v108);
  v26 = v108;
  v25 = v109;
  if (v108 != v109)
  {
    while (1)
    {
      v27 = xpc_uint64_create(v26[1]);
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      v28 = *v26;
      v114 = 0;
      v115 = 6;
      v112 = 6;
      v113 = v28;
      *&v29 = 0xAAAAAAAAAAAAAAAALL;
      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v134 = v29;
      v135 = v29;
      v132 = v29;
      v133 = v29;
      v130 = v29;
      v131 = v29;
      v128 = v29;
      v129 = v29;
      v126 = v29;
      v127 = v29;
      v124 = v29;
      v125 = v29;
      v122 = v29;
      v123 = v29;
      v120 = v29;
      v121 = v29;
      v116 = &v120;
      *__len = xmmword_240EDCC50;
      v118 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v119 = 0;
      __p = &v120;
      v110 = 1;
      v111 = &v113;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v116, "{:#06x}", 7, &v110);
      v30 = __len[1];
      if (__len[1] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v31 = __p;
      if (__len[1] >= 0x17)
      {
        break;
      }

      HIBYTE(v107) = __len[1];
      v32 = &__dst;
      if (__len[1])
      {
        goto LABEL_68;
      }

      LOBYTE(__dst) = 0;
      v33 = __p;
      if (__p != &v120)
      {
        goto LABEL_56;
      }

LABEL_57:
      if (v107 >= 0)
      {
        v34 = &__dst;
      }

      else
      {
        v34 = __dst;
      }

      xpc_dictionary_set_value(v103, v34, v27);
      v35 = xpc_null_create();
      xpc_release(v27);
      if (SHIBYTE(v107) < 0)
      {
        operator delete(__dst);
      }

      xpc_release(v35);
      v26 += 2;
      if (v26 == v25)
      {
        v26 = v108;
        v24 = v103;
        goto LABEL_70;
      }
    }

    if ((__len[1] | 7) == 0x17)
    {
      v36 = 25;
    }

    else
    {
      v36 = (__len[1] | 7) + 1;
    }

    v32 = operator new(v36);
    v106 = v30;
    v107 = v36 | 0x8000000000000000;
    __dst = v32;
LABEL_68:
    memmove(v32, v31, v30);
    *(v32 + v30) = 0;
    v33 = __p;
    if (__p == &v120)
    {
      goto LABEL_57;
    }

LABEL_56:
    operator delete(v33);
    goto LABEL_57;
  }

LABEL_70:
  if (v26)
  {
    v109 = v26;
    operator delete(v26);
  }

  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "Bytes", v24);
  v37 = xpc_null_create();
  xpc_release(v24);
  xpc_release(v37);
  v38 = xpc_dictionary_create(0, 0, 0);
  if (v38 || (v38 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CD2F50](v38) == MEMORY[0x277D86468])
    {
      xpc_retain(v38);
      v39 = v38;
    }

    else
    {
      v39 = xpc_null_create();
    }
  }

  else
  {
    v39 = xpc_null_create();
    v38 = 0;
  }

  xpc_release(v38);
  v102 = v39;
  abb::router::Metrics::getTopMessagesByPeakCountRate(this, *(this + 4), &v108);
  v41 = v108;
  v40 = v109;
  if (v108 != v109)
  {
    while (1)
    {
      v42 = xpc_uint64_create(v41[1]);
      if (!v42)
      {
        v42 = xpc_null_create();
      }

      v43 = *v41;
      v114 = 0;
      v115 = 6;
      v112 = 6;
      v113 = v43;
      *&v44 = 0xAAAAAAAAAAAAAAAALL;
      *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v134 = v44;
      v135 = v44;
      v132 = v44;
      v133 = v44;
      v130 = v44;
      v131 = v44;
      v128 = v44;
      v129 = v44;
      v126 = v44;
      v127 = v44;
      v124 = v44;
      v125 = v44;
      v122 = v44;
      v123 = v44;
      v120 = v44;
      v121 = v44;
      v116 = &v120;
      *__len = xmmword_240EDCC50;
      v118 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v119 = 0;
      __p = &v120;
      v110 = 1;
      v111 = &v113;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v116, "{:#06x}", 7, &v110);
      v45 = __len[1];
      if (__len[1] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v46 = __p;
      if (__len[1] >= 0x17)
      {
        break;
      }

      HIBYTE(v107) = __len[1];
      v47 = &__dst;
      if (__len[1])
      {
        goto LABEL_100;
      }

      LOBYTE(__dst) = 0;
      v48 = __p;
      if (__p != &v120)
      {
        goto LABEL_88;
      }

LABEL_89:
      if (v107 >= 0)
      {
        v49 = &__dst;
      }

      else
      {
        v49 = __dst;
      }

      xpc_dictionary_set_value(v102, v49, v42);
      v50 = xpc_null_create();
      xpc_release(v42);
      if (SHIBYTE(v107) < 0)
      {
        operator delete(__dst);
      }

      xpc_release(v50);
      v41 += 2;
      if (v41 == v40)
      {
        v41 = v108;
        v39 = v102;
        goto LABEL_102;
      }
    }

    if ((__len[1] | 7) == 0x17)
    {
      v51 = 25;
    }

    else
    {
      v51 = (__len[1] | 7) + 1;
    }

    v47 = operator new(v51);
    v106 = v45;
    v107 = v51 | 0x8000000000000000;
    __dst = v47;
LABEL_100:
    memmove(v47, v46, v45);
    *(v47 + v45) = 0;
    v48 = __p;
    if (__p == &v120)
    {
      goto LABEL_89;
    }

LABEL_88:
    operator delete(v48);
    goto LABEL_89;
  }

LABEL_102:
  v52 = v103;
  if (v41)
  {
    operator delete(v41);
  }

  if (v39)
  {
    xpc_retain(v39);
  }

  else
  {
    v39 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "PeakCountRate", v39);
  v53 = xpc_null_create();
  xpc_release(v39);
  xpc_release(v53);
  v54 = xpc_dictionary_create(0, 0, 0);
  if (v54 || (v54 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x245CD2F50](v54) == MEMORY[0x277D86468])
    {
      xpc_retain(v54);
      v101 = v54;
    }

    else
    {
      v101 = xpc_null_create();
    }
  }

  else
  {
    v101 = xpc_null_create();
    v54 = 0;
  }

  xpc_release(v54);
  abb::router::Metrics::getTopMessagesByPeakByteRate(this, *(this + 4), &v108);
  v56 = v108;
  v55 = v109;
  if (v108 != v109)
  {
    v57 = v101;
    while (1)
    {
      v58 = xpc_uint64_create(v56[1]);
      if (!v58)
      {
        v58 = xpc_null_create();
      }

      v59 = *v56;
      v114 = 0;
      v115 = 6;
      v113 = v59;
      *&v60 = 0xAAAAAAAAAAAAAAAALL;
      *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v134 = v60;
      v135 = v60;
      v132 = v60;
      v133 = v60;
      v130 = v60;
      v131 = v60;
      v128 = v60;
      v129 = v60;
      v126 = v60;
      v127 = v60;
      v124 = v60;
      v125 = v60;
      v122 = v60;
      v123 = v60;
      v120 = v60;
      v121 = v60;
      v116 = &v120;
      *__len = xmmword_240EDCC50;
      v118 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v119 = 0;
      __p = &v120;
      v110 = 1;
      v111 = &v113;
      v112 = 6;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(&v116, "{:#06x}", 7, &v110);
      v61 = __len[1];
      if (__len[1] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v62 = __p;
      if (__len[1] >= 0x17)
      {
        break;
      }

      HIBYTE(v107) = __len[1];
      v63 = &__dst;
      if (__len[1])
      {
        goto LABEL_133;
      }

      LOBYTE(__dst) = 0;
      v64 = __p;
      if (__p != &v120)
      {
        goto LABEL_121;
      }

LABEL_122:
      if (v107 >= 0)
      {
        v65 = &__dst;
      }

      else
      {
        v65 = __dst;
      }

      xpc_dictionary_set_value(v57, v65, v58);
      v66 = xpc_null_create();
      xpc_release(v58);
      if (SHIBYTE(v107) < 0)
      {
        operator delete(__dst);
      }

      xpc_release(v66);
      v56 += 2;
      if (v56 == v55)
      {
        v56 = v108;
        v52 = v103;
        v68 = v102;
        if (v108)
        {
          goto LABEL_136;
        }

        goto LABEL_137;
      }
    }

    if ((__len[1] | 7) == 0x17)
    {
      v67 = 25;
    }

    else
    {
      v67 = (__len[1] | 7) + 1;
    }

    v63 = operator new(v67);
    v106 = v61;
    v107 = v67 | 0x8000000000000000;
    __dst = v63;
    v57 = v101;
LABEL_133:
    memmove(v63, v62, v61);
    *(v63 + v61) = 0;
    v64 = __p;
    if (__p == &v120)
    {
      goto LABEL_122;
    }

LABEL_121:
    operator delete(v64);
    goto LABEL_122;
  }

  v57 = v101;
  v68 = v102;
  if (v108)
  {
LABEL_136:
    operator delete(v56);
  }

LABEL_137:
  if (v57)
  {
    xpc_retain(v57);
  }

  else
  {
    v57 = xpc_null_create();
  }

  xpc_dictionary_set_value(xdict, "PeakByteRate", v57);
  v69 = xpc_null_create();
  xpc_release(v57);
  xpc_release(v69);
  if (*(this + 15))
  {
    v70 = *(this + 13);
    v71 = 0x7FFFFFFFFFFFFFFFLL;
    if (v70 != (this + 112))
    {
      do
      {
        if (*(v70 + 5) < v71)
        {
          v71 = *(v70 + 5);
        }

        v83 = *(v70 + 1);
        if (v83)
        {
          do
          {
            v84 = v83;
            v83 = *v83;
          }

          while (v83);
        }

        else
        {
          do
          {
            v84 = *(v70 + 2);
            v85 = *v84 == v70;
            v70 = v84;
          }

          while (!v85);
        }

        v70 = v84;
      }

      while (v84 != (this + 112));
    }

    v72.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
    if (v71 != 0x7FFFFFFFFFFFFFFFLL)
    {
      rep = v72.__d_.__rep_;
      if (v72.__d_.__rep_ != 0x8000000000000000)
      {
        v74 = xpc_int64_create(v71 / 1000000000);
        if (!v74)
        {
          v74 = xpc_null_create();
        }

        xpc_dictionary_set_value(xdict, "StartTimeSeconds", v74);
        v75 = xpc_null_create();
        xpc_release(v74);
        xpc_release(v75);
        v76 = xpc_int64_create(rep / 1000000000);
        if (!v76)
        {
          v76 = xpc_null_create();
        }

        xpc_dictionary_set_value(xdict, "EndTimeSeconds", v76);
        v77 = xpc_null_create();
        xpc_release(v76);
        xpc_release(v77);
        v78 = xpc_int64_create((rep - v71) / 1000000000);
        if (!v78)
        {
          v78 = xpc_null_create();
        }

        xpc_dictionary_set_value(xdict, "DurationSeconds", v78);
        v79 = xpc_null_create();
        xpc_release(v78);
        xpc_release(v79);
      }
    }
  }

  *a2 = 0xAAAAAAAAAAAAAAAALL;
  v80 = xpc_dictionary_create(0, 0, 0);
  v81 = v80;
  v82 = object;
  if (v80)
  {
    *a2 = v80;
  }

  else
  {
    v81 = xpc_null_create();
    *a2 = v81;
    if (!v81)
    {
      v86 = xpc_null_create();
      v81 = 0;
      goto LABEL_169;
    }
  }

  if (MEMORY[0x245CD2F50](v81) == MEMORY[0x277D86468])
  {
    xpc_retain(v81);
    goto LABEL_170;
  }

  v86 = xpc_null_create();
LABEL_169:
  *a2 = v86;
LABEL_170:
  xpc_release(v81);
  v87 = *(this + 23);
  if (v87 >= 0)
  {
    v88 = *(this + 23);
  }

  else
  {
    v88 = *(this + 1);
  }

  v89 = v88 + 8;
  if (v88 + 8 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v89 < 0x17)
  {
    __len[0] = 0;
    __len[1] = 0;
    v116 = 0;
    v91 = &v116;
    HIBYTE(__len[1]) = v88 + 8;
    if (!v88)
    {
      goto LABEL_184;
    }
  }

  else
  {
    if ((v89 | 7) == 0x17)
    {
      v90 = 25;
    }

    else
    {
      v90 = (v89 | 7) + 1;
    }

    v91 = operator new(v90);
    __len[0] = v88 + 8;
    __len[1] = v90 | 0x8000000000000000;
    v116 = v91;
    v82 = object;
  }

  v92 = *this;
  if (v87 >= 0)
  {
    v93 = this;
  }

  else
  {
    v93 = *this;
  }

  memmove(v91, v93, v88);
LABEL_184:
  strcpy(v91 + v88, " Summary");
  v94 = xdict;
  if (xdict)
  {
    xpc_retain(xdict);
  }

  else
  {
    v94 = xpc_null_create();
  }

  if ((__len[1] & 0x8000000000000000) == 0)
  {
    v95 = &v116;
  }

  else
  {
    v95 = v116;
  }

  xpc_dictionary_set_value(*a2, v95, v94);
  v96 = xpc_null_create();
  xpc_release(v94);
  xpc_release(v96);
  if (SHIBYTE(__len[1]) < 0)
  {
    operator delete(v116);
  }

  xpc_release(v101);
  xpc_release(v68);
  xpc_release(v52);
  xpc_release(v82);
  xpc_release(xdict);
  v97 = *MEMORY[0x277D85DE8];
}

void sub_240ECD450(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void abb::router::Metrics::resetSummary(abb::router::Metrics *this)
{
  v1 = this;
  *(this + 5) = 0;
  *(this + 9) = 0;
  v2 = (this + 56);
  std::__tree<unsigned int>::destroy(this + 48, *(this + 7));
  *(v1 + 6) = v2;
  *(v1 + 8) = 0;
  *v2 = 0;
  std::__tree<unsigned int>::destroy(v1 + 80, *(v1 + 11));
  *(v1 + 10) = v1 + 88;
  *(v1 + 11) = 0;
  v3 = *(v1 + 14);
  v1 = (v1 + 112);
  *(v1 - 2) = 0;
  std::__tree<unsigned int>::destroy(v1 - 8, v3);
  *v1 = 0;
  *(v1 + 1) = 0;
  *(v1 - 1) = v1;
}

void abb::router::Client::create(char *__s@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v6 = *a2;
  if (!*a2)
  {
    v7 = a3;
    v8 = a4;
    v9 = 0x7FFFFFFFFFFFFFF7;
    v10 = strlen(__s);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v11 = v10;
    if (v10 >= 0x17)
    {
      if ((v10 | 7) == 0x17)
      {
        v17 = 25;
      }

      else
      {
        v17 = (v10 | 7) + 1;
      }

      p_dst = operator new(v17);
      *(&__dst + 1) = v11;
      v35 = v17 | 0x8000000000000000;
      *&__dst = p_dst;
    }

    else
    {
      HIBYTE(v35) = v10;
      p_dst = &__dst;
      if (!v10)
      {
        LOBYTE(__dst) = 0;
        v13 = SHIBYTE(v35);
        if ((SHIBYTE(v35) & 0x8000000000000000) == 0)
        {
LABEL_6:
          if (v13 - 11 < 0xC)
          {
            v14 = v13 + 12;
            v15 = &__dst;
            v16 = 22;
            goto LABEL_16;
          }

          v25 = &__dst;
          goto LABEL_32;
        }

LABEL_13:
        v13 = *(&__dst + 1);
        v16 = (v35 & 0x7FFFFFFFFFFFFFFFLL) - 1;
        if (v16 - *(&__dst + 1) < 0xC)
        {
          v14 = *(&__dst + 1) + 12;
          if (0x7FFFFFFFFFFFFFF7 - (v35 & 0x7FFFFFFFFFFFFFFFLL) < *(&__dst + 1) + 12 - v16)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v15 = __dst;
          if (v16 > 0x3FFFFFFFFFFFFFF2)
          {
            v20 = 0;
LABEL_25:
            v21 = operator new(v9);
            v22 = v21;
            if (v13)
            {
              memmove(v21, v15, v13);
            }

            v23 = &v22[v13];
            *v23 = *"router.queue";
            *(v23 + 2) = 1702192501;
            if (!v20)
            {
              operator delete(v15);
            }

            *(&__dst + 1) = v14;
            v35 = v9 | 0x8000000000000000;
            *&__dst = v22;
            v24 = &v22[v14];
LABEL_36:
            *v24 = 0;
            v37 = v35;
            *__p = __dst;
            v35 = 0;
            __dst = 0uLL;
            if (v37 >= 0)
            {
              v28 = __p;
            }

            else
            {
              v28 = __p[0];
            }

            v29 = dispatch_queue_create(v28, 0);
            v30 = *a2;
            *a2 = v29;
            if (v30)
            {
              dispatch_release(v30);
            }

            if (SHIBYTE(v37) < 0)
            {
              operator delete(__p[0]);
              if ((SHIBYTE(v35) & 0x80000000) == 0)
              {
                goto LABEL_43;
              }
            }

            else if ((SHIBYTE(v35) & 0x80000000) == 0)
            {
LABEL_43:
              v6 = *a2;
              a4 = v8;
              a3 = v7;
              goto LABEL_44;
            }

            operator delete(__dst);
            goto LABEL_43;
          }

LABEL_16:
          v18 = 2 * v16;
          if (v14 > 2 * v16)
          {
            v18 = v14;
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
            v9 = v19;
          }

          else
          {
            v9 = 23;
          }

          v20 = v16 == 22;
          goto LABEL_25;
        }

        v25 = __dst;
LABEL_32:
        v26 = v25 + v13;
        *v26 = *"router.queue";
        *(v26 + 2) = 1702192501;
        v27 = v13 + 12;
        if (SHIBYTE(v35) < 0)
        {
          *(&__dst + 1) = v13 + 12;
        }

        else
        {
          HIBYTE(v35) = v27 & 0x7F;
        }

        v24 = v25 + v27;
        goto LABEL_36;
      }
    }

    memcpy(p_dst, __s, v11);
    *(p_dst + v11) = 0;
    v13 = SHIBYTE(v35);
    if ((SHIBYTE(v35) & 0x8000000000000000) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_44:
  *a2 = 0;
  v31 = a3[1];
  v32[0] = *a3;
  v32[1] = v31;
  object = v6;
  if (v31)
  {
    atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abb::router::Client::Client(a4, __s, &object, v32);
  if (v31 && !atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v31->__on_zero_shared)(v31);
    std::__shared_weak_count::__release_weak(v31);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_240ECDB18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void *__p)
{
  if ((a10 & 0x80) != 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *abb::router::Client::Client(void *a1, char *a2, NSObject **a3, uint64_t *a4)
{
  *a1 = &unk_2852C8C50;
  v7 = a1 + 1;
  v8 = *a3;
  object = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = *a4;
  v10 = a4[1];
  v12[0] = v9;
  v12[1] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abb::router::Client::State::create(a2, &object, v12, v7);
  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_240ECDC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void abb::router::Client::State::create(char *a1@<X0>, NSObject **a2@<X1>, uint64_t *a3@<X2>, atomic_ullong *a4@<X8>)
{
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  v8 = operator new(0x120uLL);
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = *a3;
  v11 = a3[1];
  v13[0] = v10;
  v13[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abb::router::Client::State::State(v8, a1, &object, v13);
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  a4[1] = 0xAAAAAAAAAAAAAAAALL;
  std::shared_ptr<abb::router::Client::State>::shared_ptr[abi:ne200100]<abb::router::Client::State,std::shared_ptr<abb::router::Client::State> ctu::SharedSynchronizable<abb::router::Client::State>::make_shared_ptr<abb::router::Client::State>(abb::router::Client::State*)::{lambda(abb::router::Client::State*)#1},0>(a4, v8);
  if (v11 && !atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);
    std::__shared_weak_count::__release_weak(v11);
    v12 = object;
    if (!object)
    {
      return;
    }
  }

  else
  {
    v12 = object;
    if (!object)
    {
      return;
    }
  }

  dispatch_release(v12);
}

void sub_240ECDD9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va);
  if (v3)
  {
    dispatch_release(v3);
    if (!v4)
    {
LABEL_3:
      _Unwind_Resume(a1);
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  operator delete(v2);
  _Unwind_Resume(a1);
}

uint64_t abb::router::Client::State::getClientId(abb::router::Client::State *this)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router6Client5StateEE20execute_wrapped_syncIZNKS4_11getClientIdEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v5[3] = &__block_descriptor_tmp_0;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -1431655766;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1;
    v10 = &__block_descriptor_tmp_34;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -1431655766;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1;
    v10 = &__block_descriptor_tmp_33;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t abb::router::Client::State::getNextTrxId(abb::router::Client::State *this)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router6Client5StateEE20execute_wrapped_syncIZNKS4_12getNextTrxIdEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS8__block_invoke;
  v5[3] = &__block_descriptor_tmp_35;
  v5[4] = this + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    v13 = -1431655766;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1;
    v10 = &__block_descriptor_tmp_34;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -1431655766;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke_1;
    v10 = &__block_descriptor_tmp_33;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void abb::router::Client::State::start(abb::router::Client::State *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::start(void)::$_0>(abb::router::Client::State::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::start(void)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::start(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void abb::router::Client::State::stop(abb::router::Client::State *this)
{
  v2 = *(this + 2);
  if (!v2 || (v3 = *(this + 1), (v4 = std::__shared_weak_count::lock(v2)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v4;
  v6 = operator new(8uLL);
  *v6 = this;
  v7 = *(this + 3);
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v8 = operator new(0x18uLL);
  *v8 = v6;
  v8[1] = v3;
  v8[2] = v5;
  dispatch_async_f(v7, v8, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::stop(void)::$_0>(abb::router::Client::State::stop(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::stop(void)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::stop(void)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void abb::router::Client::setClientTracker(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *v4 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  abb::router::Client::State::setClientTracker(v2, v4);
  v3 = v4[1];
  if (v4[1])
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

void abb::router::Client::State::setClientTracker(void *a1, __int128 *a2)
{
  v10 = *a2;
  *a2 = 0;
  *(a2 + 1) = 0;
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x18uLL);
  *v7 = a1;
  *(v7 + 8) = v10;
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0>(abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0,std::default_delete<abb::router::Client::State::setClientTracker(std::weak_ptr<void>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void abb::router::Client::sendInternal(abb::router::Client *this, const abb::router::SendProxy *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(this + 1);
  abb::router::Message::Message(v6, a2 + 16);
  v4 = *(a2 + 22);
  if (!v4)
  {
    goto LABEL_4;
  }

  if (v4 != (a2 + 152))
  {
    v4 = (*(*v4 + 16))(v4);
LABEL_4:
    v8 = v4;
    goto LABEL_6;
  }

  v8 = v7;
  (*(*v4 + 24))(v4, v7);
LABEL_6:
  abb::router::Client::State::send(v3, v6, v7);
  if (v8 == v7)
  {
    (*(*v8 + 32))(v8);
  }

  else if (v8)
  {
    (*(*v8 + 40))(v8);
  }

  abb::router::Message::~Message(v6);
  v5 = *MEMORY[0x277D85DE8];
}

void sub_240ECE554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::function<void ()(abb::router::Message const&)>::~function(v9 - 56);
  abb::router::Message::~Message(&a9);
  _Unwind_Resume(a1);
}

void abb::router::Client::State::send(void *a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x277D85DE8];
  abb::router::Message::Message(v17, a2);
  v5 = *(a3 + 24);
  if (v5)
  {
    if (v5 == a3)
    {
      v19 = v18;
      (*(*v5 + 24))(v5, v18);
    }

    else
    {
      v19 = *(a3 + 24);
      *(a3 + 24) = 0;
    }
  }

  else
  {
    v19 = 0;
  }

  v6 = a1[2];
  if (!v6 || (v7 = a1[1], (v8 = std::__shared_weak_count::lock(v6)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0xB0uLL);
  *v10 = a1;
  abb::router::Message::Message((v10 + 1), v17);
  v11 = v19;
  if (v19)
  {
    if (v19 == v18)
    {
      v10[21] = v10 + 18;
      (*(*v11 + 24))(v11);
    }

    else
    {
      v10[21] = v19;
      v19 = 0;
    }
  }

  else
  {
    v10[21] = 0;
  }

  v12 = a1[3];
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = operator new(0x18uLL);
  *v13 = v10;
  v13[1] = v7;
  v13[2] = v9;
  dispatch_async_f(v12, v13, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0>(abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0,std::default_delete<abb::router::Client::State::send(abb::router::Message,std::function<void ()(abb::router::Message const&)>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v14 = v19;
    if (v19 != v18)
    {
      goto LABEL_15;
    }

LABEL_18:
    (*(*v14 + 32))(v14);
    goto LABEL_19;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  v14 = v19;
  if (v19 == v18)
  {
    goto LABEL_18;
  }

LABEL_15:
  if (v14)
  {
    (*(*v14 + 40))(v14);
  }

LABEL_19:
  abb::router::Message::~Message(v17);
  v15 = *MEMORY[0x277D85DE8];
}

void sub_240ECE7CC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::function<void ()(abb::router::Message const&)>::~function(uint64_t a1)
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

uint64_t abb::router::SyncClient::SyncClient(uint64_t a1, char *a2, uint64_t *a3)
{
  global_queue = dispatch_get_global_queue(0, 0);
  object = global_queue;
  if (global_queue)
  {
    dispatch_retain(global_queue);
  }

  v7 = *a3;
  v8 = a3[1];
  v10[0] = v7;
  v10[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abb::router::Client::Client(a1, a2, &object, v10);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &unk_2852C9658;
  abb::router::Client::State::start(*(a1 + 8));
  return a1;
}

void sub_240ECE97C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void abb::router::Client::State::sServerReadyNotification(abb::router::Client::State *this, __CFNotificationCenter *a2, void *a3, const __CFString *a4, const void *a5, const __CFDictionary *a6)
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
        v10 = *a2;
        if (!*a2)
        {
          goto LABEL_17;
        }

        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        v11 = v10[2];
        if (!v11 || (v12 = v10[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v14 = v13;
        v15 = operator new(0x10uLL);
        *v15 = v10;
        v15[1] = v9;
        v16 = v10[3];
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        v17 = operator new(0x18uLL);
        *v17 = v15;
        v17[1] = v12;
        v17[2] = v14;
        dispatch_async_f(v16, v17, dispatch::async<void ctu::SharedSynchronizable<abb::router::Client::State>::execute_wrapped<abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0>(abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0,dispatch_queue_s *::default_delete<abb::router::Client::State::sServerReadyNotification(__CFNotificationCenter *,void *,__CFString const*,void const*,__CFDictionary const*)::$_0>>)::{lambda(void *)#1}::__invoke);
        if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v14->__on_zero_shared)(v14);
          std::__shared_weak_count::__release_weak(v14);
          if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return;
          }
        }

        else
        {
LABEL_17:
          if (atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            return;
          }
        }

        (v9->__on_zero_shared)(v9);

        std::__shared_weak_count::__release_weak(v9);
      }
    }
  }
}

uint64_t abb::router::Client::State::State(uint64_t a1, char *__s, NSObject **a3, void *a4)
{
  *(&v23.__r_.__value_.__s + 23) = 13;
  strcpy(&v23, "router.client");
  v8 = strlen(__s);
  v9 = std::string::append(&v23, __s, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v25 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v25 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v13 = dispatch_queue_create_with_target_V2(v11, initially_inactive, 0);
  dispatch_set_qos_class_floor(v13, QOS_CLASS_DEFAULT, 0);
  dispatch_activate(v13);
  ctu::OsLogContext::OsLogContext(v22, "com.apple.router.mipc", __s);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CD26C0](a1 + 40, v26);
  MEMORY[0x245CD26D0](v26);
  ctu::OsLogContext::~OsLogContext(v22);
  if (v13)
  {
    dispatch_release(v13);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[0]);
    if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_10;
    }
  }

  else if ((SHIBYTE(v23.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_10;
  }

  operator delete(v23.__r_.__value_.__l.__data_);
LABEL_10:
  *a1 = &unk_2852C9678;
  v14 = (a1 + 48);
  v15 = strlen(__s);
  if (v15 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v16 = v15;
  if (v15 >= 0x17)
  {
    if ((v15 | 7) == 0x17)
    {
      v21 = 25;
    }

    else
    {
      v21 = (v15 | 7) + 1;
    }

    v14 = operator new(v21);
    *(a1 + 56) = v16;
    *(a1 + 64) = v21 | 0x8000000000000000;
    *(a1 + 48) = v14;
  }

  else
  {
    *(a1 + 71) = v15;
    if (!v15)
    {
      *v14 = 0;
      v17 = *a3;
      *(a1 + 72) = *a3;
      if (!v17)
      {
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  memmove(v14, __s, v16);
  v14[v16] = 0;
  v17 = *a3;
  *(a1 + 72) = *a3;
  if (v17)
  {
LABEL_14:
    dispatch_retain(v17);
  }

LABEL_15:
  *(a1 + 128) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x100000000;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0;
  *(a1 + 120) = a1 + 128;
  *(a1 + 152) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = a1 + 152;
  *(a1 + 176) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = a1 + 176;
  *(a1 + 208) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = a1 + 200;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 264) = *a4;
  v18 = a4[1];
  *(a1 + 272) = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 280) = 0;
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p[0]) = 0;
    _os_log_debug_impl(&dword_240E91000, v19, OS_LOG_TYPE_DEBUG, "#D Client init", __p, 2u);
  }

  return a1;
}

void abb::router::Client::State::~State(void **this)
{
  abb::router::Client::State::stop_sync(this);
  v2 = this[34];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    v3 = this[28];
    v4 = this[29];
    if (v4 != v3)
    {
      goto LABEL_4;
    }

LABEL_42:
    this[32] = 0;
    v11 = 0;
    goto LABEL_16;
  }

  v3 = this[28];
  v4 = this[29];
  if (v4 == v3)
  {
    goto LABEL_42;
  }

LABEL_4:
  v5 = this[31];
  v6 = &v3[v5 / 0x18];
  v7 = (*v6 + 168 * (v5 % 0x18));
  v8 = v3[(this[32] + v5) / 0x18] + 168 * ((this[32] + v5) % 0x18);
  if (v7 != v8)
  {
    do
    {
      v9 = *(v7 + 20);
      if (v9 == (v7 + 136))
      {
        (*(*v9 + 32))(v9);
      }

      else if (v9)
      {
        (*(*v9 + 40))(v9);
      }

      abb::router::Message::~Message(v7);
      v7 = (v7 + 168);
      if (v7 - *v6 == 4032)
      {
        v10 = v6[1];
        ++v6;
        v7 = v10;
      }
    }

    while (v7 != v8);
    v3 = this[28];
    v4 = this[29];
  }

  this[32] = 0;
  v11 = v4 - v3;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = this[29];
      v3 = (this[28] + 8);
      this[28] = v3;
      v11 = v4 - v3;
    }

    while (v11 > 2);
  }

LABEL_16:
  if (v11 == 1)
  {
    v12 = 12;
    goto LABEL_20;
  }

  if (v11 == 2)
  {
    v12 = 24;
LABEL_20:
    this[31] = v12;
  }

  if (v3 != v4)
  {
    do
    {
      v13 = *v3++;
      operator delete(v13);
    }

    while (v3 != v4);
    v15 = this[28];
    v14 = this[29];
    if (v14 != v15)
    {
      this[29] = &v14[(v15 - v14 + 7) & 0xFFFFFFFFFFFFFFF8];
    }
  }

  v16 = this[27];
  if (v16)
  {
    operator delete(v16);
  }

  std::__tree<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>>>::destroy(this[25]);
  std::__tree<unsigned int>::destroy((this + 21), this[22]);
  std::__tree<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::function<void ()(abb::router::Message const&)>>>>::destroy(this[19]);
  std::__tree<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::__map_value_compare<abb::router::Client::Event,std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>,std::less<abb::router::Client::Event>,true>,std::allocator<std::__value_type<abb::router::Client::Event,std::function<void ()(dispatch::group)>>>>::destroy(this[16]);
  if (*(this + 96) == 1)
  {
    v17 = this[11];
    if (v17)
    {
      std::__shared_weak_count::__release_weak(v17);
    }
  }

  v18 = this[9];
  if (v18)
  {
    dispatch_release(v18);
  }

  if (*(this + 71) < 0)
  {
    operator delete(this[6]);
  }

  MEMORY[0x245CD26D0](this + 5);
  v19 = this[4];
  if (v19)
  {
    dispatch_release(v19);
  }

  v20 = this[3];
  if (v20)
  {
    dispatch_release(v20);
  }

  v21 = this[2];
  if (v21)
  {
    std::__shared_weak_count::__release_weak(v21);
  }
}

{
  abb::router::Client::State::~State(this);

  operator delete(v1);
}

void abb::router::Client::State::stop_sync(abb::router::Client::State *this)
{
  if (*(this + 112) == 2)
  {
    v2 = *(this + 5);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      *v10 = 0;
      _os_log_debug_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEBUG, "#D Client was already requested to stop", v10, 2u);
    }
  }

  else
  {
    if (*(this + 35))
    {
      v3 = *(this + 5);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEFAULT, "#I Stop listening to router server ready notification", buf, 2u);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterRemoveObserver(DarwinNotifyCenter, *(this + 35), @"kMipcRouterServerReadyNotification", 0);
      v5 = *(this + 35);
      if (v5)
      {
        v6 = v5[1];
        if (v6)
        {
          std::__shared_weak_count::__release_weak(v6);
        }

        operator delete(v5);
      }

      *(this + 35) = 0;
    }

    v7 = *(this + 5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Stopping client", v8, 2u);
    }

    *(this + 112) = 2;
    abb::router::Client::State::sendAction_sync(this);
  }
}

void abb::router::Client::State::prepareClientTracker_sync(void *a1@<X1>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  if (v2)
  {
    *a2 = *a1;
    *(a2 + 8) = v2;
    *a1 = 0;
    a1[1] = 0;
    *(a2 + 16) = 1;
  }

  else
  {
    *a2 = 0;
    *(a2 + 16) = 0;
  }
}

uint64_t abb::router::Client::State::getNextTrxId_sync(abb::router::Client::State *this)
{
  v1 = *(this + 26);
  v2 = *(this + 27);
  if ((v2 + 1) > 1)
  {
    v3 = v2 + 1;
  }

  else
  {
    v3 = 1;
  }

  *(this + 27) = v3;
  return (v2 | (v1 << 8));
}

void abb::router::Client::State::start_sync(abb::router::Client::State *this)
{
  v1 = *(this + 5);
  if (*(this + 112) != 1)
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&dword_240E91000, v1, OS_LOG_TYPE_DEFAULT, "#I Starting client", &__p, 2u);
      v1 = *(this + 5);
    }

    *(this + 112) = 1;
    if (*(this + 33))
    {
      if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
      {
LABEL_9:
        abb::router::Client::State::connect_sync(this);
        return;
      }
    }

    else
    {
      if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(__p) = 0;
        _os_log_debug_impl(&dword_240E91000, v1, OS_LOG_TYPE_DEBUG, "#D Creating default xpc client", &__p, 2u);
      }

      __p = operator new(0x28uLL);
      v7 = xmmword_240EDF7E0;
      strcpy(__p, "com.apple.telephony.control-msg.xpc");
      abb::link::XpcClientLink::create();
      v3 = v8;
      v8 = 0uLL;
      v4 = *(this + 34);
      *(this + 264) = v3;
      if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v4->__on_zero_shared)(v4);
        std::__shared_weak_count::__release_weak(v4);
      }

      v5 = *(&v8 + 1);
      if (*(&v8 + 1) && !atomic_fetch_add((*(&v8 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v5->__on_zero_shared)(v5);
        std::__shared_weak_count::__release_weak(v5);
      }

      if (SHIBYTE(v7) < 0)
      {
        operator delete(__p);
        v1 = *(this + 5);
        if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }
      }

      else
      {
        v1 = *(this + 5);
        if (!os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_9;
        }
      }
    }

    LOWORD(__p) = 0;
    _os_log_impl(&dword_240E91000, v1, OS_LOG_TYPE_DEFAULT, "#I Connecting client", &__p, 2u);
    goto LABEL_9;
  }

  if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_DEBUG))
  {
    LOWORD(__p) = 0;
    _os_log_debug_impl(&dword_240E91000, v1, OS_LOG_TYPE_DEBUG, "#D Client was already requested to start", &__p, 2u);
  }
}

void sub_240ECF5C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Client::State::connect_sync(abb::router::Client::State *this)
{
  if (*(this + 112) == 1)
  {
    v2 = (*(**(this + 33) + 48))(*(this + 33));
    v3 = *(this + 5);
    v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG);
    if (v2)
    {
      if (v4)
      {
        *buf = 0;
        _os_log_debug_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEBUG, "#D Connecting xpc link", buf, 2u);
        v5 = *(this + 33);
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v5 = *(this + 33);
        if (!v5)
        {
          goto LABEL_14;
        }
      }

      v6 = **v5;
      v7 = __dynamic_cast(v5, MEMORY[0x277CECB10], MEMORY[0x277CECB20], 0);
      if (v7)
      {
        v8 = v7;
        v9 = *(this + 34);
        v53 = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        }

LABEL_15:
        v15 = *(this + 2);
        if (!v15 || (v16 = *(this + 1), (v17 = std::__shared_weak_count::lock(v15)) == 0))
        {
          std::__throw_bad_weak_ptr[abi:ne200100]();
        }

        v18 = v17;
        v19 = this + 48;
        atomic_fetch_add_explicit(&v17->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        if (atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v20 = (v8 + 40);
          if (v8 + 40 == v19)
          {
            goto LABEL_32;
          }
        }

        else
        {
          (v17->__on_zero_shared)(v17);
          std::__shared_weak_count::__release_weak(v18);
          v20 = (v8 + 40);
          if (v8 + 40 == v19)
          {
            goto LABEL_32;
          }
        }

        v21 = *(this + 71);
        if (v8[63] < 0)
        {
          if (v21 >= 0)
          {
            v23 = this + 48;
          }

          else
          {
            v23 = *(this + 6);
          }

          if (v21 >= 0)
          {
            v24 = *(this + 71);
          }

          else
          {
            v24 = *(this + 7);
          }

          std::string::__assign_no_alias<false>(v20, v23, v24);
        }

        else if ((*(this + 71) & 0x80) != 0)
        {
          std::string::__assign_no_alias<true>(v20, *(this + 6), *(this + 7));
        }

        else
        {
          v22 = *v19;
          v20[2] = *(this + 8);
          *v20 = v22;
        }

LABEL_32:
        v25 = operator new(0x18uLL);
        *v25 = &unk_2852C9780;
        v25[1] = v16;
        v25[2] = v18;
        v26 = *(v8 + 4);
        *(v8 + 4) = v25;
        if (v26)
        {
          (*(*v26 + 8))(v26);
        }

        v27 = v8 + 64;
        if (v8[87] < 0)
        {
          v27 = *v27;
        }

        mach_service = xpc_connection_create_mach_service(v27, *(v8 + 11), 2uLL);
        if (!mach_service)
        {
          mach_service = xpc_null_create();
        }

        v29 = xpc_null_create();
        v30 = *(v8 + 12);
        *(v8 + 12) = mach_service;
        xpc_release(v30);
        xpc_release(v29);
        v31 = *(v8 + 12);
        if (v31)
        {
          xpc_retain(*(v8 + 12));
          v32 = *(this + 3);
          if (!v32)
          {
LABEL_41:
            v34 = *(v8 + 1);
            v33 = *(v8 + 2);
            if (!v33 || (v35 = std::__shared_weak_count::lock(v33)) == 0)
            {
              std::__throw_bad_weak_ptr[abi:ne200100]();
            }

            v36 = v35;
            atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            v62 = v31;
            if (v31)
            {
              xpc_retain(v31);
            }

            else
            {
              v62 = xpc_null_create();
            }

            ctu::XpcClientHelper::setServer_internal();
            xpc_release(v62);
            v62 = 0;
            if (MEMORY[0x245CD2F50](*(v8 + 3)) == MEMORY[0x277D86450])
            {
              v37 = *(v8 + 3);
              *buf = MEMORY[0x277D85DD0];
              v55 = 1174405120;
              v56 = ___ZN3ctu15XpcClientHelper9setServerIN3abb4link13XpcClientLinkEEEvN3xpc10connectionEN8dispatch5queueENSt3__18weak_ptrIT_EE_block_invoke;
              v57 = &__block_descriptor_tmp_42;
              v58 = v8 + 24;
              v59 = v34;
              v60 = v36;
              atomic_fetch_add_explicit(&v36->__shared_weak_owners_, 1uLL, memory_order_relaxed);
              v61 = v37;
              xpc_connection_set_event_handler(v37, buf);
              xpc_connection_set_target_queue(v37, v32);
              xpc_connection_resume(v37);
              if (v60)
              {
                std::__shared_weak_count::__release_weak(v60);
              }
            }

            std::__shared_weak_count::__release_weak(v36);
            if (!atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v36->__on_zero_shared)(v36);
              std::__shared_weak_count::__release_weak(v36);
            }

            if (v32)
            {
              dispatch_release(v32);
            }

            xpc_release(v31);
            abb::link::XpcClientLink::connectInternal();
            v38 = v53;
            if (!v53)
            {
              goto LABEL_85;
            }

            goto LABEL_83;
          }
        }

        else
        {
          v31 = xpc_null_create();
          v32 = *(this + 3);
          if (!v32)
          {
            goto LABEL_41;
          }
        }

        dispatch_retain(v32);
        goto LABEL_41;
      }

LABEL_14:
      v8 = 0;
      v53 = 0;
      goto LABEL_15;
    }

    if (v4)
    {
      *buf = 0;
      _os_log_debug_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEBUG, "#D Connecting local link", buf, 2u);
      v10 = *(this + 33);
      if (!v10)
      {
        goto LABEL_58;
      }
    }

    else
    {
      v10 = *(this + 33);
      if (!v10)
      {
        goto LABEL_58;
      }
    }

    v11 = **v10;
    v12 = __dynamic_cast(v10, MEMORY[0x277CECB10], MEMORY[0x277CECB30], 0);
    if (v12)
    {
      v13 = v12;
      v14 = *(this + 34);
      *buf = v12;
      v55 = v14;
      if (v14)
      {
        atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
      }

LABEL_59:
      v39 = *(this + 2);
      if (!v39 || (v40 = *(this + 1), (v41 = std::__shared_weak_count::lock(v39)) == 0))
      {
        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      v42 = v41;
      v43 = this + 48;
      atomic_fetch_add_explicit(&v41->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      if (atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v44 = (v13 + 64);
        if (v13 + 64 == v43)
        {
          goto LABEL_76;
        }
      }

      else
      {
        (v41->__on_zero_shared)(v41);
        std::__shared_weak_count::__release_weak(v42);
        v44 = (v13 + 64);
        if (v13 + 64 == v43)
        {
          goto LABEL_76;
        }
      }

      v45 = *(this + 71);
      if (v13[87] < 0)
      {
        if (v45 >= 0)
        {
          v47 = this + 48;
        }

        else
        {
          v47 = *(this + 6);
        }

        if (v45 >= 0)
        {
          v48 = *(this + 71);
        }

        else
        {
          v48 = *(this + 7);
        }

        std::string::__assign_no_alias<false>(v44, v47, v48);
      }

      else if ((*(this + 71) & 0x80) != 0)
      {
        std::string::__assign_no_alias<true>(v44, *(this + 6), *(this + 7));
      }

      else
      {
        v46 = *v43;
        v44[2] = *(this + 8);
        *v44 = v46;
      }

LABEL_76:
      v49 = operator new(0x18uLL);
      *v49 = &unk_2852C9780;
      v49[1] = v40;
      v49[2] = v42;
      v50 = *(v13 + 7);
      *(v13 + 7) = v49;
      if (v50)
      {
        (*(*v50 + 8))(v50);
      }

      v51 = *(this + 3);
      if (v51)
      {
        dispatch_retain(*(this + 3));
      }

      v52 = *(v13 + 11);
      *(v13 + 11) = v51;
      if (v52)
      {
        dispatch_release(v52);
      }

      abb::link::LocalClientLink::connectInternal();
      v38 = v55;
      if (!v55)
      {
        goto LABEL_85;
      }

LABEL_83:
      if (!atomic_fetch_add(&v38->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v38->__on_zero_shared)(v38);
        std::__shared_weak_count::__release_weak(v38);
      }

LABEL_85:
      *(this + 29) = 1;
      return;
    }

LABEL_58:
    v13 = 0;
    *buf = 0;
    v55 = 0;
    goto LABEL_59;
  }
}