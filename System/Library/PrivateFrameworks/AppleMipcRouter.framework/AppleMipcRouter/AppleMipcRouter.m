uint64_t abb::router::Agent::Agent(uint64_t a1, const char *a2, void *a3)
{
  v4 = a2;
  if (a2[23] < 0)
  {
    a2 = *a2;
  }

  ctu::OsLogContext::OsLogContext(v15, a2, "agent");
  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v7 = dispatch_queue_create_with_target_V2("RouterAgent", initially_inactive, 0);
  dispatch_set_qos_class_floor(v7, QOS_CLASS_USER_INITIATED, 0);
  dispatch_activate(v7);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = v7;
  if (v7)
  {
    dispatch_retain(v7);
    *(a1 + 32) = 0;
    dispatch_release(v7);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger();
  MEMORY[0x245CD26C0](a1 + 40, v16);
  MEMORY[0x245CD26D0](v16);
  ctu::OsLogContext::~OsLogContext(v15);
  *a1 = &unk_2852C8670;
  strcpy((a1 + 48), "RouterAgent");
  *(a1 + 71) = 11;
  if (v4[23] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 72), *v4, *(v4 + 1));
  }

  else
  {
    v8 = *v4;
    *(a1 + 88) = *(v4 + 2);
    *(a1 + 72) = v8;
  }

  if (v4[47] < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 96), *(v4 + 3), *(v4 + 4));
  }

  else
  {
    v9 = *(v4 + 24);
    *(a1 + 112) = *(v4 + 5);
    *(a1 + 96) = v9;
  }

  v10 = *(v4 + 3);
  v11 = *(v4 + 4);
  v12 = *(v4 + 5);
  *(a1 + 216) = 0;
  *(a1 + 136) = v11;
  *(a1 + 152) = v12;
  *(a1 + 120) = v10;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 192) = 0;
  *(a1 + 184) = a1 + 192;
  *(a1 + 224) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = a1 + 216;
  v13 = a3[1];
  *(a1 + 232) = *a3;
  *(a1 + 240) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 248) = a1 + 256;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  return a1;
}

void sub_240E91A20(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
    if ((*(v1 + 71) & 0x80000000) == 0)
    {
LABEL_3:
      MEMORY[0x245CD26D0](v1 + 40);
      ctu::SharedSynchronizable<abb::router::Agent>::~SharedSynchronizable((v1 + 8));
      _Unwind_Resume(a1);
    }
  }

  else if ((*(v1 + 71) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*v2);
  MEMORY[0x245CD26D0](v1 + 40);
  ctu::SharedSynchronizable<abb::router::Agent>::~SharedSynchronizable((v1 + 8));
  _Unwind_Resume(a1);
}

void abb::router::Agent::create(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v6 = operator new(0x128uLL);
  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v26, *a1, *(a1 + 8));
  }

  else
  {
    v26 = *a1;
  }

  if (*(a1 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    __p = *(a1 + 24);
  }

  v7 = *(a1 + 64);
  v28 = *(a1 + 48);
  v29 = v7;
  v30 = *(a1 + 80);
  v8 = *a2;
  v9 = a2[1];
  v24 = v8;
  v25 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abb::router::Agent::Agent(v6, &v26, &v24);
  *a3 = v6;
  a3[1] = 0xAAAAAAAAAAAAAAAALL;
  v10 = operator new(0x20uLL);
  v10[1] = 0;
  v18 = v10 + 1;
  *v10 = &unk_2852C89E8;
  v10[2] = 0;
  v10[3] = v6;
  a3[1] = v10;
  v19 = *(v6 + 2);
  if (v19)
  {
    if (v19->__shared_owners_ == -1)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
      *(v6 + 1) = v6;
      *(v6 + 2) = v10;
      v20 = v10;
      std::__shared_weak_count::__release_weak(v19);
      v10 = v20;
      if (!atomic_fetch_add(v18, 0xFFFFFFFFFFFFFFFFLL))
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
    *(v6 + 1) = v6;
    *(v6 + 2) = v10;
    if (!atomic_fetch_add(v18, 0xFFFFFFFFFFFFFFFFLL))
    {
LABEL_14:
      v21 = v10;
      (*(*v10 + 16))(v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26.__r_.__value_.__r.__words[0], v26.__r_.__value_.__l.__size_, v26.__r_.__value_.__r.__words[2], __p.__r_.__value_.__r.__words[0]);
      std::__shared_weak_count::__release_weak(v21);
    }
  }

  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if ((SHIBYTE(v26.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_19;
  }

LABEL_24:
  operator delete(v26.__r_.__value_.__l.__data_);
LABEL_19:
  v22 = *a3 + 8;
  v31 = *a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router5AgentEE20execute_wrapped_syncIZNS3_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_19;
  block[4] = v22;
  block[5] = &v31;
  v23 = *(v31 + 24);
  if (*(v31 + 32))
  {
    dispatch_async_and_wait(v23, block);
  }

  else
  {
    dispatch_sync(v23, block);
  }
}

void sub_240E91D78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete(v16);
  _Unwind_Resume(a1);
}

void abb::router::Agent::init(abb::router::Agent *this)
{
  v3 = this;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 0x40000000;
  block[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router5AgentEE20execute_wrapped_syncIZNS3_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  block[3] = &__block_descriptor_tmp_19;
  block[4] = this + 8;
  block[5] = &v3;
  v2 = this + 24;
  v1 = *(this + 3);
  if (*(v2 + 1))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t abb::router::Agent::getNextClientId(abb::router::Agent *this)
{
  v4 = this;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 0x40000000;
  v5[2] = ___ZNK3ctu20SharedSynchronizableIN3abb6router5AgentEE20execute_wrapped_syncIZNKS3_15getNextClientIdEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke;
  v5[3] = &__block_descriptor_tmp_44;
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
    v9 = ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_46;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = -1431655766;
    block = MEMORY[0x277D85DD0];
    v8 = 0x40000000;
    v9 = ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke;
    v10 = &__block_descriptor_tmp_45;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t abb::router::Agent::getNextClientId_sync(abb::router::Agent *this)
{
  v2 = *(this + 43);
  result = (v2 + 1) % 0xFFu;
  *(this + 43) = result;
  if (result == v2)
  {
LABEL_2:
    v4 = *(this + 5);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
    result = v2;
    if (v5)
    {
      *v12 = 0;
      _os_log_error_impl(&dword_240E91000, v4, OS_LOG_TYPE_ERROR, "*** Client limit reached; cannot create new client ***", v12, 2u);
      return *(this + 43);
    }
  }

  else
  {
    v6 = (this + 256);
    while (1)
    {
      if (result && result != *(this + 42))
      {
        v7 = *v6;
        if (!*v6)
        {
          break;
        }

        v8 = (this + 256);
        do
        {
          v9 = *(v7 + 8);
          v10 = v9 >= result;
          v11 = v9 < result;
          if (v10)
          {
            v8 = v7;
          }

          v7 = *&v7[8 * v11];
        }

        while (v7);
        if (v8 == v6 || result < *(v8 + 8))
        {
          break;
        }
      }

      if (result == 254)
      {
        result = 0;
      }

      else
      {
        result = (result + 1);
      }

      *(this + 43) = result;
      if (result == v2)
      {
        goto LABEL_2;
      }
    }
  }

  return result;
}

uint64_t abb::router::Agent::getNextTrxCounter_sync(abb::router::Agent *this)
{
  LODWORD(v1) = *(this + 44);
  if (v1 <= 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = v1;
  }

  *(this + 44) = v1 + 1;
  return v1;
}

void abb::router::Agent::getAllIndication_sync(abb::router::Agent *this@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  std::set<unsigned int>::set[abi:ne200100](a2, this + 23);
  v4 = *(this + 31);
  v5 = this + 256;
  if (v4 != v5)
  {
    do
    {
      abb::router::ClientProxy::getIndications(*(v4 + 5), v9);
      std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(a2, v9);
      std::__tree<unsigned int>::destroy(v9, v9[1]);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }
}

void **std::set<unsigned int>::set[abi:ne200100](void **a1, void *a2)
{
  a1[1] = 0;
  v3 = (a1 + 1);
  a1[2] = 0;
  *a1 = a1 + 1;
  v4 = (a2 + 1);
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      v15 = 0xAAAAAAAAAAAAAAAALL;
      v6 = std::__tree<unsigned int>::__find_equal<unsigned int>(a1, v3, &v15, &v14, v5 + 7);
      if (*v6)
      {
        v7 = *(v5 + 1);
        if (v7)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = operator new(0x20uLL);
        v8[7] = v5[7];
        v9 = v15;
        *v8 = 0;
        *(v8 + 1) = 0;
        *(v8 + 2) = v9;
        *v6 = v8;
        v10 = **a1;
        if (v10)
        {
          *a1 = v10;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v8);
        a1[2] = (a1[2] + 1);
        v7 = *(v5 + 1);
        if (v7)
        {
          do
          {
LABEL_10:
            v11 = v7;
            v7 = *v7;
          }

          while (v7);
          goto LABEL_3;
        }
      }

      do
      {
        v11 = *(v5 + 2);
        v12 = *v11 == v5;
        v5 = v11;
      }

      while (!v12);
LABEL_3:
      v5 = v11;
    }

    while (v11 != v4);
  }

  return a1;
}

void abb::router::Agent::getAllWakeables_sync(abb::router::Agent *this@<X0>, void *a2@<X8>)
{
  memset(a2, 170, 24);
  std::set<unsigned int>::set[abi:ne200100](a2, this + 26);
  v4 = *(this + 31);
  v5 = this + 256;
  if (v4 != v5)
  {
    do
    {
      abb::router::ClientProxy::getWakeables(*(v4 + 5), v9);
      std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(a2, v9);
      std::__tree<unsigned int>::destroy(v9, v9[1]);
      v6 = *(v4 + 1);
      if (v6)
      {
        do
        {
          v7 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != v5);
  }
}

void abb::router::Agent::addClient(void *a1, __int128 *a2)
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
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0,std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void abb::router::Agent::handleConfirmation(void *a1, uint64_t a2)
{
  abb::router::Message::Message(v11, a2);
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x90uLL);
  *v7 = a1;
  abb::router::Message::Message((v7 + 1), v11);
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>(abb::router::Agent::handleConfirmation(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  abb::router::Message::~Message(v11);
}

void abb::router::Agent::handleIndication(void *a1, uint64_t a2)
{
  abb::router::Message::Message(v11, a2);
  v3 = a1[2];
  if (!v3 || (v4 = a1[1], (v5 = std::__shared_weak_count::lock(v3)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v6 = v5;
  v7 = operator new(0x90uLL);
  *v7 = a1;
  abb::router::Message::Message((v7 + 1), v11);
  v8 = a1[3];
  atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  v9 = operator new(0x18uLL);
  *v9 = v7;
  v9[1] = v4;
  v9[2] = v6;
  dispatch_async_f(v8, v9, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleIndication(abb::router::Message)::$_0>(abb::router::Agent::handleIndication(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleIndication(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleIndication(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  abb::router::Message::~Message(v11);
}

void abb::router::Agent::handleSentMessage(void *a1, uint64_t a2, char a3)
{
  abb::router::Message::Message(v13, a2);
  v14 = a3;
  v5 = a1[2];
  if (!v5 || (v6 = a1[1], (v7 = std::__shared_weak_count::lock(v5)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v8 = v7;
  v9 = operator new(0x98uLL);
  *v9 = a1;
  abb::router::Message::Message((v9 + 8), v13);
  v9[144] = v14;
  v10 = a1[3];
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  v11 = operator new(0x18uLL);
  *v11 = v9;
  v11[1] = v6;
  v11[2] = v8;
  dispatch_async_f(v10, v11, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0>(abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  abb::router::Message::~Message(v13);
}

void abb::router::Agent::handleGatewaySleep(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Agent::handleGatewayWakeup(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Agent::handleGatewayStart(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Agent::handleGatewayStop(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Agent::handleGatewayDown(void *a1, dispatch_object_t *a2)
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
  dispatch_async_f(v9, v10, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);

    std::__shared_weak_count::__release_weak(v7);
  }
}

void abb::router::Agent::handleGatewayClientConnect(void *a1, dispatch_object_t *a2, int a3, char a4)
{
  v7 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v7);
  }

  v8 = a1[2];
  if (!v8 || (v9 = a1[1], (v10 = std::__shared_weak_count::lock(v8)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v11 = v10;
  v12 = operator new(0x18uLL);
  *v12 = a1;
  v12[1] = v7;
  *(v12 + 4) = a3;
  *(v12 + 20) = a4;
  v13 = a1[3];
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  v14 = operator new(0x18uLL);
  *v14 = v12;
  v14[1] = v9;
  v14[2] = v11;
  dispatch_async_f(v13, v14, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0>(abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v11->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v11->__on_zero_shared)(v11);

    std::__shared_weak_count::__release_weak(v11);
  }
}

void abb::router::Agent::handleGatewayClientDisconnect(abb::router::Agent *this, int a2, char a3)
{
  v4 = *(this + 2);
  if (!v4 || (v7 = *(this + 1), (v8 = std::__shared_weak_count::lock(v4)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v9 = v8;
  v10 = operator new(0x10uLL);
  *v10 = this;
  v10[2] = a2;
  *(v10 + 12) = a3;
  v11 = *(this + 3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  v12 = operator new(0x18uLL);
  *v12 = v10;
  v12[1] = v7;
  v12[2] = v9;
  dispatch_async_f(v11, v12, dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0>(abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke);
  if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);

    std::__shared_weak_count::__release_weak(v9);
  }
}

uint64_t abb::router::Agent::prepareOpenMessage_sync@<X0>(abb::router::Agent *this@<X0>, uint64_t a2@<X8>)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v26 = v4;
  *v27 = v4;
  v24[4] = v4;
  *__p = v4;
  v24[2] = v4;
  v24[3] = v4;
  v24[0] = v4;
  v24[1] = v4;
  mipc::internal::Open_Req::Open_Req();
  BYTE10(v24[0]) = 1;
  BYTE12(v24[0]) = *(this + 42);
  v5 = *(this + 44);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(this + 44) = v5 + 1;
  BYTE13(v24[0]) = v5;
  v6 = operator new(4uLL);
  *v6 = 2;
  v7 = __p[1];
  __p[1] = v6;
  if (v7)
  {
    operator delete(v7);
  }

  v8 = operator new(0x18uLL);
  v8[23] = 9;
  strcpy(v8, "telephony");
  v9 = v26[0];
  v26[0] = v8;
  if (v9)
  {
    if (*(v9 + 23) < 0)
    {
      operator delete(*v9);
    }

    operator delete(v9);
  }

  v10 = operator new(1uLL);
  *v10 = 1;
  v11 = v27[1];
  v27[1] = v10;
  if (v11)
  {
    operator delete(v11);
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v12 = 0xAAAAAAAAAAAAAAAALL;
  *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = v12;
  v22[2] = v12;
  v22[0] = v12;
  mipc::internal::Open_Req::serialize(v22, v24);
  if (v23)
  {
    v18 = *(this + 5);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR) || (LOWORD(v19) = 0, _os_log_error_impl(&dword_240E91000, v18, OS_LOG_TYPE_ERROR, "Failed to serialize Open_Req", &v19, 2u), v23))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v13 = *&v22[0];
  v14 = *(&v22[0] + 1) - *&v22[0];
  if (*(&v22[0] + 1) != *&v22[0])
  {
    if ((v14 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v15 = operator new(*(&v22[0] + 1) - *&v22[0]);
    v16 = &v15[v14];
    v19 = v15;
    v21 = &v15[v14];
    memcpy(v15, v13, v14);
    v20 = v16;
  }

  abb::router::Message::Message(a2, &v19);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v23 != -1)
  {
    v19 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    v20 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v19 + v23))(&v28, v22);
  }

  return MEMORY[0x245CD2800](v24);
}

void sub_240E93270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a13);
  MEMORY[0x245CD2800](&a21);
  _Unwind_Resume(a1);
}

uint64_t std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2 != -1)
  {
    v5[0] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    v5[1] = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (v5[v2])(&v4, a1);
  }

  *(a1 + 48) = -1;
  return a1;
}

void abb::router::Agent::prepareCloseMessage_sync(abb::router::Agent *this@<X0>, uint64_t a2@<X8>)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[3] = v4;
  v17[4] = v4;
  v17[1] = v4;
  v17[2] = v4;
  v17[0] = v4;
  mipc::internal::Close_Req::Close_Req();
  BYTE10(v17[0]) = 1;
  BYTE12(v17[0]) = *(this + 42);
  v5 = *(this + 44);
  if (v5 <= 1)
  {
    v5 = 1;
  }

  *(this + 44) = v5 + 1;
  BYTE13(v17[0]) = v5;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[1] = v6;
  v15[2] = v6;
  v15[0] = v6;
  mipc::internal::Close_Req::serialize(v15, v17);
  if (v16)
  {
    v11 = *(this + 5);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR) || (LOWORD(__p) = 0, _os_log_error_impl(&dword_240E91000, v11, OS_LOG_TYPE_ERROR, "Failed to serialize Close_Req", &__p, 2u), v16))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  __p = 0;
  v13 = 0;
  v14 = 0;
  v7 = *&v15[0];
  v8 = *(&v15[0] + 1) - *&v15[0];
  if (*(&v15[0] + 1) != *&v15[0])
  {
    if ((v8 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v9 = operator new(*(&v15[0] + 1) - *&v15[0]);
    v10 = &v9[v8];
    __p = v9;
    v14 = &v9[v8];
    memcpy(v9, v7, v8);
    v13 = v10;
  }

  abb::router::Message::Message(a2, &__p);
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v16 != -1)
  {
    __p = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    v13 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&__p + v16))(&v19, v15);
  }

  mipc::internal::Close_Req::~Close_Req(v17);
}

void sub_240E9350C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](va);
  mipc::internal::Close_Req::~Close_Req(va1);
  _Unwind_Resume(a1);
}

void sub_240E93528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a13);
    mipc::internal::Close_Req::~Close_Req(&a21);
    _Unwind_Resume(a1);
  }

  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a13);
  mipc::internal::Close_Req::~Close_Req(&a21);
  _Unwind_Resume(a1);
}

void abb::router::Agent::prepareIndicationMessage_sync(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 == a2 + 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v7 = 0;
    v8 = *a2;
    do
    {
      v9 = v8[1];
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
          v10 = v8[2];
          v11 = *v10 == v8;
          v8 = v10;
        }

        while (!v11);
      }

      ++v7;
      v8 = v10;
    }

    while (v10 != v5);
    v12 = operator new(2 * v7);
    v13 = v12;
    do
    {
      *v13 = *(v6 + 7);
      v14 = v6[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v6[2];
          v11 = *v15 == v6;
          v6 = v15;
        }

        while (!v11);
      }

      v13 += 2;
      v6 = v15;
    }

    while (v15 != v5);
  }

  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *__p = v16;
  *v46 = v16;
  v44[4] = v16;
  v44[5] = v16;
  v44[2] = v16;
  v44[3] = v16;
  v44[0] = v16;
  v44[1] = v16;
  mipc::internal::Register_Ind_Req::Register_Ind_Req();
  BYTE10(v44[0]) = 1;
  BYTE12(v44[0]) = *(a1 + 168);
  v17 = *(a1 + 176);
  if (v17 <= 1)
  {
    v17 = 1;
  }

  *(a1 + 176) = v17 + 1;
  BYTE13(v44[0]) = v17;
  v18 = v13 - v12;
  v19 = v46[0];
  v20 = __p[0];
  if ((v46[0] - __p[0]) >= (v13 - v12))
  {
    v27 = __p[1];
    v28 = __p[1] - __p[0];
    if ((__p[1] - __p[0]) >= v18)
    {
      if (v13 != v12)
      {
        memmove(__p[0], v12, v13 - v12);
        v20 = __p[0];
      }

      v26 = &v20[v18];
    }

    else
    {
      v29 = &v12[v28];
      if (__p[1] != __p[0])
      {
        memmove(__p[0], v12, v28);
        v27 = __p[1];
      }

      v30 = v13 - v29;
      if (v30)
      {
        memmove(v27, v29, v30);
      }

      v26 = &v27[v30];
    }
  }

  else
  {
    v21 = v18 >> 1;
    if (__p[0])
    {
      operator delete(__p[0]);
      v19 = 0;
      __p[0] = 0;
      __p[1] = 0;
      v46[0] = 0;
    }

    if ((v21 & 0x8000000000000000) != 0 || (v19 <= v21 ? (v22 = v18 >> 1) : (v22 = v19), v19 >= 0x7FFFFFFFFFFFFFFELL ? (v23 = 0x7FFFFFFFFFFFFFFFLL) : (v23 = v22), v23 < 0))
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v24 = operator new(2 * v23);
    v25 = v24;
    __p[0] = v24;
    v46[0] = &v24[2 * v23];
    if (v13 != v12)
    {
      memcpy(v24, v12, v13 - v12);
    }

    v26 = &v25[v18];
  }

  __p[1] = v26;
  v31 = operator new(1uLL);
  *v31 = 1;
  v32 = v46[1];
  v46[1] = v31;
  if (v32)
  {
    operator delete(v32);
  }

  v43 = 0xAAAAAAAAAAAAAAAALL;
  *&v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[1] = v33;
  v42[2] = v33;
  v42[0] = v33;
  mipc::internal::Register_Ind_Req::serialize(v42, v44);
  if (v43)
  {
    v38 = *(a1 + 40);
    if (!os_log_type_enabled(v38, OS_LOG_TYPE_ERROR) || (LOWORD(v39) = 0, _os_log_error_impl(&dword_240E91000, v38, OS_LOG_TYPE_ERROR, "Failed to serialize Register_Ind_Req", &v39, 2u), v43))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v34 = *&v42[0];
  v35 = *(&v42[0] + 1) - *&v42[0];
  if (*(&v42[0] + 1) != *&v42[0])
  {
    if ((v35 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v36 = operator new(*(&v42[0] + 1) - *&v42[0]);
    v37 = &v36[v35];
    v39 = v36;
    v41 = &v36[v35];
    memcpy(v36, v34, v35);
    v40 = v37;
  }

  abb::router::Message::Message(a3, &v39);
  if (v39)
  {
    v40 = v39;
    operator delete(v39);
  }

  if (v43 != -1)
  {
    v39 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    v40 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v39 + v43))(&v47, v42);
  }

  mipc::internal::Register_Ind_Req::~Register_Ind_Req(v44);
  if (v12)
  {
    operator delete(v12);
  }
}

void sub_240E93924(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a13);
  mipc::internal::Register_Ind_Req::~Register_Ind_Req(&a21);
  if (v21)
  {
    operator delete(v21);
  }

  _Unwind_Resume(a1);
}

void abb::router::Agent::prepareFlowControlAckMessage_sync(abb::router::Agent *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v26 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[4] = v6;
  *__p = v6;
  v24[2] = v6;
  v24[3] = v6;
  v24[0] = v6;
  v24[1] = v6;
  mipc::internal::Set_Channel_Flow_Control_Req::Set_Channel_Flow_Control_Req();
  BYTE10(v24[0]) = 1;
  BYTE12(v24[0]) = *(this + 42);
  v7 = *(this + 44);
  if (v7 <= 1)
  {
    v7 = 1;
  }

  *(this + 44) = v7 + 1;
  BYTE13(v24[0]) = v7;
  v8 = operator new(1uLL);
  if (a2)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  *v8 = v9;
  v10 = __p[1];
  __p[1] = v8;
  if (v10)
  {
    operator delete(v10);
  }

  v11 = operator new(1uLL);
  *v11 = 1;
  v12 = v26;
  v26 = v11;
  if (v12)
  {
    operator delete(v12);
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[1] = v13;
  v22[2] = v13;
  v22[0] = v13;
  mipc::internal::Set_Channel_Flow_Control_Req::serialize(v22, v24);
  if (v23)
  {
    v18 = *(this + 5);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR) || (LOWORD(v19) = 0, _os_log_error_impl(&dword_240E91000, v18, OS_LOG_TYPE_ERROR, "Failed to serialize Open_Req", &v19, 2u), v23))
    {
      std::__throw_bad_variant_access[abi:ne200100]();
    }
  }

  v19 = 0;
  v20 = 0;
  v21 = 0;
  v14 = *&v22[0];
  v15 = *(&v22[0] + 1) - *&v22[0];
  if (*(&v22[0] + 1) != *&v22[0])
  {
    if ((v15 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v16 = operator new(*(&v22[0] + 1) - *&v22[0]);
    v17 = &v16[v15];
    v19 = v16;
    v21 = &v16[v15];
    memcpy(v16, v14, v15);
    v20 = v17;
  }

  abb::router::Message::Message(a3, &v19);
  if (v19)
  {
    v20 = v19;
    operator delete(v19);
  }

  if (v23 != -1)
  {
    v19 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    v20 = _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_;
    (*(&v19 + v23))(&v27, v22);
  }

  mipc::internal::Set_Channel_Flow_Control_Req::~Set_Channel_Flow_Control_Req(v24);
}

void sub_240E93B78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](va);
  mipc::internal::Set_Channel_Flow_Control_Req::~Set_Channel_Flow_Control_Req(va1);
  _Unwind_Resume(a1);
}

void sub_240E93B94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (__p)
  {
    operator delete(__p);
    std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a13);
    mipc::internal::Set_Channel_Flow_Control_Req::~Set_Channel_Flow_Control_Req(&a21);
    _Unwind_Resume(a1);
  }

  std::variant<std::vector<unsigned char>,mipc::Error>::~variant[abi:ne200100](&a13);
  mipc::internal::Set_Channel_Flow_Control_Req::~Set_Channel_Flow_Control_Req(&a21);
  _Unwind_Resume(a1);
}

void abb::router::Agent::handleGatewaySleep_sync(uint64_t *a1, NSObject **a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Request from gateway to sleep agent", buf, 2u);
  }

  memset(v32, 170, sizeof(v32));
  std::set<unsigned int>::set[abi:ne200100](v32, a1 + 26);
  v5 = a1[31];
  if (v5 != a1 + 32)
  {
    do
    {
      abb::router::ClientProxy::getWakeables(v5[5], buf);
      std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(v32, buf);
      std::__tree<unsigned int>::destroy(buf, *&v37[4]);
      v22 = v5[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v5[2];
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != a1 + 32);
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[6] = v6;
  v30 = v6;
  v29[4] = v6;
  v29[5] = v6;
  v29[2] = v6;
  v29[3] = v6;
  v29[0] = v6;
  v29[1] = v6;
  std::set<unsigned int>::set[abi:ne200100](v28, v32);
  abb::router::Agent::prepareIndicationMessage_sync(a1, v28, v29);
  std::__tree<unsigned int>::destroy(v28, v28[1]);
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(v29);
    v8 = SHIBYTE(v31);
    v9 = v30;
    v10 = v32[2];
    abb::router::convertToHexCsv<std::set<unsigned int>>(__p, v32);
    v11 = &v30;
    if (v8 < 0)
    {
      v11 = v9;
    }

    if (SHIBYTE(v34) >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315650;
    *v37 = v11;
    *&v37[8] = 2048;
    *&v37[10] = v10;
    v38 = 2080;
    v39 = v12;
    _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Request to register wakeable indications; %s; Wakeable-indications=[%zu] %s", buf, 0x20u);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = a1[29];
  abb::router::Message::Message(v27, v29);
  abb::router::Gateway::sendMessage(v13, v27);
  abb::router::Message::~Message(v27);
  v14 = a1[2];
  if (!v14 || (v15 = a1[1], (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  p_shared_weak_owners = &v16->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v17);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v19 = *a2;
  if (v19)
  {
    dispatch_retain(v19);
    dispatch_group_enter(v19);
  }

  abb::router::Message::Message(buf, v29);
  __p[0] = a1;
  __p[1] = v15;
  v34 = v17;
  v35 = v19;
  v41 = 0;
  v20 = operator new(0x28uLL);
  *v20 = &unk_2852C8758;
  v20[1] = a1;
  v20[2] = v15;
  v20[3] = v17;
  v20[4] = v19;
  v41 = v20;
  v21 = a1[35];
  if (v21 >= a1[36])
  {
    a1[35] = std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::__emplace_back_slow_path<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>(a1 + 34, buf);
    v25 = v41;
    if (v41 == v40)
    {
LABEL_35:
      (*(*v25 + 32))(v25);
      goto LABEL_36;
    }
  }

  else
  {
    abb::router::Message::Message(a1[35], buf);
    if (v41)
    {
      if (v41 == v40)
      {
        *(v21 + 160) = v21 + 136;
        (*(*v41 + 24))(v41);
      }

      else
      {
        *(v21 + 160) = v41;
        v41 = 0;
      }
    }

    else
    {
      *(v21 + 160) = 0;
    }

    a1[35] = v21 + 168;
    a1[35] = v21 + 168;
    v25 = v41;
    if (v41 == v40)
    {
      goto LABEL_35;
    }
  }

  if (v25)
  {
    (*(*v25 + 40))(v25);
  }

LABEL_36:
  abb::router::Message::~Message(buf);
  std::__shared_weak_count::__release_weak(v17);
  abb::router::Message::~Message(v29);
  std::__tree<unsigned int>::destroy(v32, v32[1]);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_240E9409C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::convertToHexCsv<std::set<unsigned int>>(uint64_t a1, void *a2)
{
  v56 = *MEMORY[0x277D85DE8];
  v2 = a2 + 1;
  v3 = *a2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  if (v3 == a2 + 1)
  {
    goto LABEL_52;
  }

  v5 = *(v3 + 7);
  v33 = 0;
  v34 = 6;
  v32 = v5;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53 = v6;
  v54 = v6;
  v52 = v6;
  v51 = v6;
  v50 = v6;
  v49 = v6;
  v48 = v6;
  v47 = v6;
  v46 = v6;
  v45 = v6;
  v44 = v6;
  v43 = v6;
  v42 = v6;
  v41 = v6;
  v40 = v6;
  v39 = v6;
  *__s = &v39;
  *__len = xmmword_240EDCC50;
  v37 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
  v38 = 0;
  __p = &v39;
  v29 = 1;
  v30 = &v32;
  v31 = 6;
  std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, "{:#x}", 5, &v29);
  v7 = __len[1];
  if (__len[1] > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = __p;
  if (__len[1] >= 0x17)
  {
    if ((__len[1] | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (__len[1] | 7) + 1;
    }

    p_dst = operator new(v12);
    *(&__dst + 1) = v7;
    v28 = v12 | 0x8000000000000000;
    *&__dst = p_dst;
  }

  else
  {
    HIBYTE(v28) = __len[1];
    p_dst = &__dst;
    if (!__len[1])
    {
      LOBYTE(__dst) = 0;
      v10 = __p;
      if (__p == &v39)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  memmove(p_dst, v8, v7);
  *(p_dst + v7) = 0;
  v10 = __p;
  if (__p != &v39)
  {
LABEL_6:
    operator delete(v10);
  }

LABEL_7:
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
    *a1 = __dst;
    *(a1 + 16) = v28;
    v11 = v3[1];
    if (!v11)
    {
      goto LABEL_19;
    }
  }

  else
  {
    *a1 = __dst;
    *(a1 + 16) = v28;
    v11 = v3[1];
    if (!v11)
    {
      do
      {
LABEL_19:
        v13 = v3[2];
        v14 = *v13 == v3;
        v3 = v13;
      }

      while (!v14);
      goto LABEL_21;
    }
  }

  do
  {
    v13 = v11;
    v11 = *v11;
  }

  while (v11);
LABEL_21:
  if (v13 != v2)
  {
    do
    {
      HIBYTE(__len[1]) = 1;
      strcpy(__s, ",");
      std::string::append(a1, __s, 1uLL);
      if (SHIBYTE(__len[1]) < 0)
      {
        operator delete(*__s);
      }

      v15 = *(v13 + 7);
      v33 = 0;
      v34 = 6;
      v31 = 6;
      v32 = v15;
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v53 = v16;
      v54 = v16;
      v51 = v16;
      v52 = v16;
      v49 = v16;
      v50 = v16;
      v47 = v16;
      v48 = v16;
      v45 = v16;
      v46 = v16;
      v43 = v16;
      v44 = v16;
      v41 = v16;
      v42 = v16;
      v39 = v16;
      v40 = v16;
      *__s = &v39;
      *__len = xmmword_240EDCC50;
      v37 = std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100];
      v38 = 0;
      __p = &v39;
      v29 = 1;
      v30 = &v32;
      std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(__s, "{:#x}", 5, &v29);
      v17 = __len[1];
      if (__len[1] > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v18 = __p;
      if (__len[1] >= 0x17)
      {
        if ((__len[1] | 7) == 0x17)
        {
          v24 = 25;
        }

        else
        {
          v24 = (__len[1] | 7) + 1;
        }

        v19 = operator new(v24);
        *(&__dst + 1) = v17;
        v28 = v24 | 0x8000000000000000;
        *&__dst = v19;
      }

      else
      {
        HIBYTE(v28) = __len[1];
        v19 = &__dst;
        if (!__len[1])
        {
          LOBYTE(__dst) = 0;
          v20 = __p;
          if (__p == &v39)
          {
            goto LABEL_31;
          }

LABEL_30:
          operator delete(v20);
          goto LABEL_31;
        }
      }

      memmove(v19, v18, v17);
      *(v19 + v17) = 0;
      v20 = __p;
      if (__p != &v39)
      {
        goto LABEL_30;
      }

LABEL_31:
      if (v28 >= 0)
      {
        v21 = &__dst;
      }

      else
      {
        v21 = __dst;
      }

      if (v28 >= 0)
      {
        v22 = HIBYTE(v28);
      }

      else
      {
        v22 = *(&__dst + 1);
      }

      std::string::append(a1, v21, v22);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__dst);
        v23 = v13[1];
        if (v23)
        {
          do
          {
LABEL_47:
            v25 = v23;
            v23 = *v23;
          }

          while (v23);
          goto LABEL_23;
        }
      }

      else
      {
        v23 = v13[1];
        if (v23)
        {
          goto LABEL_47;
        }
      }

      do
      {
        v25 = v13[2];
        v14 = *v25 == v13;
        v13 = v25;
      }

      while (!v14);
LABEL_23:
      v13 = v25;
    }

    while (v25 != v2);
  }

LABEL_52:
  v26 = *MEMORY[0x277D85DE8];
}

void sub_240E9457C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *__p)
{
  if (__p != v60)
  {
    operator delete(__p);
  }

  if (*(v59 + 23) < 0)
  {
    operator delete(*v59);
  }

  _Unwind_Resume(a1);
}

void std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>::~pair(abb::router::Message *this)
{
  v2 = this + 136;
  v3 = *(this + 20);
  if (v3 == v2)
  {
    (*(*v3 + 32))(v3);
    v4 = this;
  }

  else
  {
    if (v3)
    {
      (*(*v3 + 40))(v3);
    }

    v4 = this;
  }

  abb::router::Message::~Message(v4);
}

uint64_t abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void abb::router::Agent::handleGatewayWakeup_sync(uint64_t *a1, NSObject **a2)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Request from gateway to wakeup agent", buf, 2u);
  }

  memset(v32, 170, sizeof(v32));
  std::set<unsigned int>::set[abi:ne200100](v32, a1 + 23);
  v5 = a1[31];
  if (v5 != a1 + 32)
  {
    do
    {
      abb::router::ClientProxy::getIndications(v5[5], buf);
      std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(v32, buf);
      std::__tree<unsigned int>::destroy(buf, *&v37[4]);
      v22 = v5[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v5[2];
          v24 = *v23 == v5;
          v5 = v23;
        }

        while (!v24);
      }

      v5 = v23;
    }

    while (v23 != a1 + 32);
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29[6] = v6;
  v30 = v6;
  v29[4] = v6;
  v29[5] = v6;
  v29[2] = v6;
  v29[3] = v6;
  v29[0] = v6;
  v29[1] = v6;
  std::set<unsigned int>::set[abi:ne200100](v28, v32);
  abb::router::Agent::prepareIndicationMessage_sync(a1, v28, v29);
  std::__tree<unsigned int>::destroy(v28, v28[1]);
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(v29);
    v8 = SHIBYTE(v31);
    v9 = v30;
    v10 = v32[2];
    abb::router::convertToHexCsv<std::set<unsigned int>>(__p, v32);
    v11 = &v30;
    if (v8 < 0)
    {
      v11 = v9;
    }

    if (SHIBYTE(v34) >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *buf = 136315650;
    *v37 = v11;
    *&v37[8] = 2048;
    *&v37[10] = v10;
    v38 = 2080;
    v39 = v12;
    _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Request to register all indications; %s; All-indications=[%zu] %s", buf, 0x20u);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v13 = a1[29];
  abb::router::Message::Message(v27, v29);
  abb::router::Gateway::sendMessage(v13, v27);
  abb::router::Message::~Message(v27);
  v14 = a1[2];
  if (!v14 || (v15 = a1[1], (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v17 = v16;
  p_shared_weak_owners = &v16->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v17);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v19 = *a2;
  if (v19)
  {
    dispatch_retain(v19);
    dispatch_group_enter(v19);
  }

  abb::router::Message::Message(buf, v29);
  __p[0] = a1;
  __p[1] = v15;
  v34 = v17;
  v35 = v19;
  v41 = 0;
  v20 = operator new(0x28uLL);
  *v20 = &unk_2852C87E8;
  v20[1] = a1;
  v20[2] = v15;
  v20[3] = v17;
  v20[4] = v19;
  v41 = v20;
  v21 = a1[35];
  if (v21 >= a1[36])
  {
    a1[35] = std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::__emplace_back_slow_path<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>(a1 + 34, buf);
    v25 = v41;
    if (v41 == v40)
    {
LABEL_35:
      (*(*v25 + 32))(v25);
      goto LABEL_36;
    }
  }

  else
  {
    abb::router::Message::Message(a1[35], buf);
    if (v41)
    {
      if (v41 == v40)
      {
        *(v21 + 160) = v21 + 136;
        (*(*v41 + 24))(v41);
      }

      else
      {
        *(v21 + 160) = v41;
        v41 = 0;
      }
    }

    else
    {
      *(v21 + 160) = 0;
    }

    a1[35] = v21 + 168;
    a1[35] = v21 + 168;
    v25 = v41;
    if (v41 == v40)
    {
      goto LABEL_35;
    }
  }

  if (v25)
  {
    (*(*v25 + 40))(v25);
  }

LABEL_36:
  abb::router::Message::~Message(buf);
  std::__shared_weak_count::__release_weak(v17);
  abb::router::Message::~Message(v29);
  std::__tree<unsigned int>::destroy(v32, v32[1]);
  v26 = *MEMORY[0x277D85DE8];
}

void sub_240E94B6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, char a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Agent::handleGatewayStart_sync(uint64_t a1, NSObject **a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Request from gateway to start agent", buf, 2u);
    v4 = *(a1 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
LABEL_3:
    *buf = 0;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Register agent indications", buf, 2u);
  }

LABEL_4:
  v5 = *(a1 + 232);
  group[0] = 0;
  v6 = *(a1 + 168);
  std::set<unsigned int>::set[abi:ne200100](v26, (a1 + 184));
  std::set<unsigned int>::set[abi:ne200100](v25, (a1 + 184));
  abb::router::Gateway::regClientIndications(v5, group, v6, v26, v25);
  std::__tree<unsigned int>::destroy(v25, v25[1]);
  std::__tree<unsigned int>::destroy(v26, v26[1]);
  if (group[0])
  {
    dispatch_group_leave(group[0]);
    if (group[0])
    {
      dispatch_release(group[0]);
    }
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v22[6] = v7;
  v23 = v7;
  v22[4] = v7;
  v22[5] = v7;
  v22[2] = v7;
  v22[3] = v7;
  v22[0] = v7;
  v22[1] = v7;
  abb::router::Agent::prepareOpenMessage_sync(a1, v22);
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(v22);
    v9 = &v23;
    if (v24 < 0)
    {
      v9 = v23;
    }

    *buf = 136315138;
    v29 = v9;
    _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Request to open mipc channel; %s", buf, 0xCu);
  }

  v10 = *(a1 + 232);
  abb::router::Message::Message(v21, v22);
  abb::router::Gateway::sendMessage(v10, v21);
  abb::router::Message::~Message(v21);
  v11 = *(a1 + 16);
  if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v14 = v13;
  p_shared_weak_owners = &v13->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v14);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v16 = *a2;
  if (v16)
  {
    dispatch_retain(v16);
    dispatch_group_enter(v16);
  }

  abb::router::Message::Message(buf, v22);
  group[1] = a1;
  group[2] = v12;
  group[3] = v14;
  group[4] = v16;
  v31 = 0;
  v17 = operator new(0x28uLL);
  *v17 = &unk_2852C8868;
  v17[1] = a1;
  v17[2] = v12;
  v17[3] = v14;
  v17[4] = v16;
  v31 = v17;
  v18 = *(a1 + 280);
  if (v18 >= *(a1 + 288))
  {
    *(a1 + 280) = std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::__emplace_back_slow_path<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>((a1 + 272), buf);
    v19 = v31;
    if (v31 == v30)
    {
LABEL_27:
      (*(*v19 + 32))(v19);
      goto LABEL_28;
    }
  }

  else
  {
    abb::router::Message::Message(*(a1 + 280), buf);
    if (v31)
    {
      if (v31 == v30)
      {
        *(v18 + 160) = v18 + 136;
        (*(*v31 + 24))(v31);
      }

      else
      {
        *(v18 + 160) = v31;
        v31 = 0;
      }
    }

    else
    {
      *(v18 + 160) = 0;
    }

    *(a1 + 280) = v18 + 168;
    *(a1 + 280) = v18 + 168;
    v19 = v31;
    if (v31 == v30)
    {
      goto LABEL_27;
    }
  }

  if (v19)
  {
    (*(*v19 + 40))(v19);
  }

LABEL_28:
  abb::router::Message::~Message(buf);
  std::__shared_weak_count::__release_weak(v14);
  abb::router::Message::~Message(v22);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_240E95080(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, dispatch_group_t group)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Agent::cancelPendingConfirmations_sync(abb::router::Agent *this)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14[0]) = 0;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Cancel pending confirmations", v14, 2u);
  }

  v4 = *(this + 34);
  v3 = *(this + 35);
  if (v4 != v3)
  {
    while (1)
    {
      v5 = *(v4 + 48);
      if (v5)
      {
        dispatch_source_cancel(v5);
        v6 = *(v4 + 48);
        *(v4 + 48) = 0;
        if (v6)
        {
          dispatch_release(v6);
        }
      }

      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v26 = v7;
      v27 = v7;
      v8 = *(v4 + 160);
      if (!v8)
      {
        goto LABEL_6;
      }

      if (v4 + 136 == v8)
      {
        *(&v27 + 1) = &v26;
        (*(*v8 + 24))(v8, &v26);
        v9 = *(&v27 + 1);
        if (*(&v27 + 1))
        {
LABEL_15:
          v10 = std::generic_category();
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          v20 = 0;
          v14[1] = 0;
          v14[2] = 0;
          v21 = 0;
          v25 = 0u;
          v24 = 0u;
          v23 = 0u;
          v14[0] = &unk_2852C94E8;
          v14[3] = 5;
          v14[4] = v10;
          v15 = 1;
          v22 = 0;
          (*(*v9 + 48))(v9, v14);
          abb::router::Message::~Message(v14);
          if (*(&v27 + 1) == &v26)
          {
            (*(**(&v27 + 1) + 32))(*(&v27 + 1));
          }

          else if (*(&v27 + 1))
          {
            (*(**(&v27 + 1) + 40))(*(&v27 + 1));
          }
        }
      }

      else
      {
        v9 = (*(*v8 + 16))(v8);
        *(&v27 + 1) = v9;
        if (v9)
        {
          goto LABEL_15;
        }
      }

LABEL_6:
      v4 += 168;
      if (v4 == v3)
      {
        v4 = *(this + 34);
        v3 = *(this + 35);
        break;
      }
    }
  }

  if (v3 != v4)
  {
    v11 = v3 - 32;
    do
    {
      v12 = *(v3 - 1);
      if ((v3 - 32) == v12)
      {
        (*(*v12 + 32))(v12);
      }

      else if (v12)
      {
        (*(*v12 + 40))(v12);
      }

      v3 = (v3 - 168);
      abb::router::Message::~Message(v3);
      v11 -= 168;
    }

    while (v3 != v4);
  }

  *(this + 35) = v4;
  std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::shrink_to_fit(this + 34);
  v13 = *MEMORY[0x277D85DE8];
}

void sub_240E95498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  abb::router::Message::~Message(&a9);
  std::function<void ()(abb::router::Message)>::~function(v9 - 128);
  _Unwind_Resume(a1);
}

void std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::shrink_to_fit(uint64_t *a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = v1 - *a1;
  if (a1[2] - *a1 > v3)
  {
    if (v1 == v2)
    {
      v5 = 0;
    }

    else
    {
      if (0xCF3CF3CF3CF3CF3DLL * (v3 >> 3) >= 0x186186186186187)
      {
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v5 = operator new(v3);
    }

    *&v8 = &v5[8 * (v3 >> 3)];
    *(&v8 + 1) = v8;
    v6 = v8 - v3;
    std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>,std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>*>(a1, v2, v1, v6);
    v7 = *a1;
    *a1 = v6;
    *(a1 + 1) = v8;
    if (v7)
    {
      operator delete(v7);
    }
  }
}

void sub_240E9559C(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::~__split_buffer(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x240E9557CLL);
}

void abb::router::Agent::handleGatewayStop_sync(uint64_t *a1, NSObject **a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a1[5];
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = dispatch_group_create();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  *buf = 0;
  _os_log_debug_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEBUG, "#D Request from gateway to stop agent", buf, 2u);
  v5 = dispatch_group_create();
  if (v5)
  {
LABEL_3:
    dispatch_retain(v5);
    dispatch_group_enter(v5);
    dispatch_release(v5);
  }

LABEL_4:
  abb::router::Agent::cancelPendingConfirmations_sync(a1);
  v23 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v21[6] = v6;
  v22 = v6;
  v21[4] = v6;
  v21[5] = v6;
  v21[2] = v6;
  v21[3] = v6;
  v21[0] = v6;
  v21[1] = v6;
  abb::router::Agent::prepareCloseMessage_sync(a1, v21);
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(v21);
    v8 = &v22;
    if (v23 < 0)
    {
      v8 = v22;
    }

    *buf = 136315138;
    v29 = v8;
    _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Request to close mipc channel; %s", buf, 0xCu);
  }

  v9 = a1[29];
  abb::router::Message::Message(v20, v21);
  abb::router::Gateway::sendMessage(v9, v20);
  abb::router::Message::~Message(v20);
  v10 = a1[2];
  if (!v10 || (v11 = a1[1], (v12 = std::__shared_weak_count::lock(v10)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v13 = v12;
  p_shared_weak_owners = &v12->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v13);
  }

  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v15 = *a2;
  if (v15)
  {
    dispatch_retain(v15);
    dispatch_group_enter(v15);
  }

  abb::router::Message::Message(buf, v21);
  v24 = a1;
  v25 = v11;
  v26 = v13;
  v27 = v15;
  v31 = 0;
  v16 = operator new(0x28uLL);
  *v16 = &unk_2852C8968;
  v16[1] = a1;
  v16[2] = v11;
  v16[3] = v13;
  v16[4] = v15;
  v31 = v16;
  v17 = a1[35];
  if (v17 >= a1[36])
  {
    a1[35] = std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::__emplace_back_slow_path<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>(a1 + 34, buf);
    v18 = v31;
    if (v31 == v30)
    {
LABEL_24:
      (*(*v18 + 32))(v18);
      goto LABEL_25;
    }
  }

  else
  {
    abb::router::Message::Message(a1[35], buf);
    if (v31)
    {
      if (v31 == v30)
      {
        *(v17 + 160) = v17 + 136;
        (*(*v31 + 24))(v31);
      }

      else
      {
        *(v17 + 160) = v31;
        v31 = 0;
      }
    }

    else
    {
      *(v17 + 160) = 0;
    }

    a1[35] = v17 + 168;
    a1[35] = v17 + 168;
    v18 = v31;
    if (v31 == v30)
    {
      goto LABEL_24;
    }
  }

  if (v18)
  {
    (*(*v18 + 40))(v18);
  }

LABEL_25:
  abb::router::Message::~Message(buf);
  std::__shared_weak_count::__release_weak(v13);
  abb::router::Message::~Message(v21);
  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_240E95990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void abb::router::Agent::handleGatewayDown_sync(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEBUG, "#D Request from gateway to shutdown agent", buf, 2u);
    v2 = *(a1 + 40);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
LABEL_3:
    *v3 = 0;
    _os_log_impl(&dword_240E91000, v2, OS_LOG_TYPE_DEFAULT, "#I Clearing all client-proxy instances", v3, 2u);
  }

LABEL_4:
  std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(*(a1 + 256));
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = a1 + 256;
}

void abb::router::Agent::handleConfirmation_sync(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    abb::router::Message::generatePrintString(a2);
    v5 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v5 = *v5;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Looking for confirmation; %s", &buf, 0xCu);
  }

  v7 = *(a1 + 272);
  v6 = *(a1 + 280);
  if (v7 != v6)
  {
    while (*(**(v7 + 8) + 12) != *(**(a2 + 8) + 12))
    {
      v7 += 168;
      if (v7 == v6)
      {
        v8 = *(a1 + 40);
        goto LABEL_20;
      }
    }
  }

  v8 = *(a1 + 40);
  if (v7 == v6)
  {
LABEL_20:
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      abb::router::Message::generatePrintString(a2);
      v14 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v14 = *v14;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v14;
      _os_log_debug_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEBUG, "#D Confirmation is not tracked; %s", &buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
    {
      abb::router::Message::generatePrintString(a2);
      v9 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v9 = *v9;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v9;
      _os_log_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEFAULT, "#I Confirmation received; cancel timer for %s", &buf, 0xCu);
    }

    v10 = *(v7 + 48);
    if (v10)
    {
      dispatch_source_cancel(v10);
      v11 = *(v7 + 48);
      *(v7 + 48) = 0;
      if (v11)
      {
        dispatch_release(v11);
      }
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    buf = v12;
    v18 = v12;
    v13 = *(v7 + 160);
    if (v13)
    {
      if (v13 == v7 + 136)
      {
        *(&v18 + 1) = &buf;
        (*(*v13 + 24))(v13, &buf);
      }

      else
      {
        *(&v18 + 1) = (*(*v13 + 16))(v13);
      }
    }

    else
    {
      *(&v18 + 1) = 0;
    }

    std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::erase[abi:ne200100](a1 + 272, v7);
    std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::shrink_to_fit((a1 + 272));
    if (*(&v18 + 1))
    {
      abb::router::Message::Message(v16, a2);
      if (!*(&v18 + 1))
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      (*(**(&v18 + 1) + 48))(*(&v18 + 1), v16);
      abb::router::Message::~Message(v16);
      if (*(&v18 + 1) == &buf)
      {
        (*(**(&v18 + 1) + 32))(*(&v18 + 1));
      }

      else if (*(&v18 + 1))
      {
        (*(**(&v18 + 1) + 40))(*(&v18 + 1));
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

void sub_240E95E40(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::function<void ()(abb::router::Message)>::~function(v2 - 96);
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::erase[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v4 = a2 + 168;
  v5 = *(a1 + 8);
  if ((a2 + 168) == v5)
  {
    v9 = a2;
    if (v5 != a2)
    {
      goto LABEL_17;
    }

    goto LABEL_23;
  }

  v6 = 0;
  v7 = 0;
  do
  {
    abb::router::Message::operator=(v7 + a2, v7 + a2 + 168);
    v8 = (v7 + a2 + 160);
    v10 = *v8;
    *v8 = 0;
    if (v7 + a2 + 136 == v10)
    {
      (*(*v10 + 32))(v10);
      v11 = *(v7 + a2 + 328);
      if (!v11)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v10)
      {
        (*(*v10 + 40))(v10);
      }

      v11 = *(v7 + a2 + 328);
      if (!v11)
      {
        goto LABEL_4;
      }
    }

    if (v7 + a2 + 304 != v11)
    {
      *v8 = v11;
      v8 = (v4 + 160);
LABEL_4:
      *v8 = 0;
      goto LABEL_5;
    }

    *v8 = v7 + a2 + 136;
    (*(*v11 + 24))(v11, v7 + a2 + 136);
LABEL_5:
    v4 += 168;
    v7 += 168;
    v6 += 168;
    v9 = (v7 + a2);
  }

  while ((v7 + a2 + 168) != v5);
  v5 = *(a1 + 8);
  if (v5 == v9)
  {
    goto LABEL_23;
  }

LABEL_17:
  v12 = v5 - 32;
  do
  {
    v13 = *(v5 - 1);
    if ((v5 - 32) == v13)
    {
      (*(*v13 + 32))(v13);
    }

    else if (v13)
    {
      (*(*v13 + 40))(v13);
    }

    v5 = (v5 - 168);
    abb::router::Message::~Message(v5);
    v12 -= 168;
  }

  while (v5 != v9);
LABEL_23:
  *(a1 + 8) = v9;
  return a2;
}

uint64_t std::function<void ()(abb::router::Message)>::~function(uint64_t a1)
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

void abb::router::Agent::handleIndication_sync(uint64_t a1, uint64_t a2)
{
  v55 = *MEMORY[0x277D85DE8];
  if (*(a2 + 40) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      abb::router::Message::generatePrintString(a2);
      v4 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v4 = *v4;
      }

      *buf = 136315138;
      *&buf[4] = v4;
      v5 = "Error in indication received by agent; %s";
LABEL_18:
      _os_log_error_impl(&dword_240E91000, v3, OS_LOG_TYPE_ERROR, v5, buf, 0xCu);
      goto LABEL_53;
    }

    goto LABEL_53;
  }

  v6 = *(a1 + 192);
  if (v6)
  {
    v7 = *(a2 + 8);
    v8 = *(*v7 + 10);
    v9 = a1 + 192;
    do
    {
      v10 = *(v6 + 28);
      v11 = v10 >= v8;
      v12 = v10 < v8;
      if (v11)
      {
        v9 = v6;
      }

      v6 = *(v6 + 8 * v12);
    }

    while (v6);
    if (v9 != a1 + 192 && *(v9 + 28) <= v8)
    {
      v44 = 0xAAAAAAAAAAAAAAAALL;
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v42[4] = v14;
      v43 = v14;
      v42[2] = v14;
      v42[3] = v14;
      v42[0] = v14;
      v42[1] = v14;
      v15 = *(a2 + 16);
      *buf = v7;
      *&buf[8] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
        v17 = *v7;
        v7 = *(a2 + 8);
        v18 = *(a2 + 16);
        *v54 = v7;
        *&v54[8] = v18;
        if (v18)
        {
          atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
        }
      }

      else
      {
        v17 = *v7;
        *v54 = v7;
      }

      MEMORY[0x245CD2790](v42, v17, v7[1] - *v7);
      v19 = *&v54[8];
      if (*&v54[8] && !atomic_fetch_add((*&v54[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v19->__on_zero_shared)(v19);
        std::__shared_weak_count::__release_weak(v19);
      }

      v20 = *&buf[8];
      if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v20->__on_zero_shared)(v20);
        std::__shared_weak_count::__release_weak(v20);
      }

      v21 = mipc::operator==();
      v22 = *(a1 + 40);
      if (v21)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
        {
          abb::router::Message::generatePrintString(a2);
          v23 = (a2 + 112);
          if (*(a2 + 135) < 0)
          {
            v23 = *v23;
          }

          *buf = 136315138;
          *&buf[4] = v23;
          _os_log_impl(&dword_240E91000, v22, OS_LOG_TYPE_DEFAULT, "#I Mipc channel flow control indication; %s", buf, 0xCu);
        }

        v24 = a1;
        if (*(&v43 + 1))
        {
          v25 = **(&v43 + 1);
          v26 = *(a1 + 40);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            *&buf[4] = v25;
            _os_log_impl(&dword_240E91000, v26, OS_LOG_TYPE_DEFAULT, "#I Mipc channel flow-control=%u", buf, 8u);
          }

          v27 = v44;
          if (v44)
          {
            v28 = *(a1 + 40);
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v29 = *v27;
              *buf = 67109120;
              *&buf[4] = v29;
              _os_log_impl(&dword_240E91000, v28, OS_LOG_TYPE_DEFAULT, "#I Mipc channel flow control reason=%u", buf, 8u);
            }
          }

          v53 = 0xAAAAAAAAAAAAAAAALL;
          *&v30 = 0xAAAAAAAAAAAAAAAALL;
          *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v51 = v30;
          v52 = v30;
          v49 = v30;
          v50 = v30;
          v47 = v30;
          v48 = v30;
          *buf = v30;
          v46 = v30;
          abb::router::Agent::prepareFlowControlAckMessage_sync(a1, v25, buf);
          v31 = *(a1 + 40);
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            abb::router::Message::generatePrintString(buf);
            v32 = &v52;
            if (v53 < 0)
            {
              v32 = v52;
            }

            *v54 = 136315138;
            *&v54[4] = v32;
            _os_log_impl(&dword_240E91000, v31, OS_LOG_TYPE_DEFAULT, "#I Ack flow-control update to baseband; %s", v54, 0xCu);
          }

          v33 = *(a1 + 232);
          abb::router::Message::Message(v40, buf);
          v41 = 1;
          abb::router::Gateway::updateFlowControl(v33, v25, v40);
          if (v41 == 1)
          {
            abb::router::Message::~Message(v40);
          }

          abb::router::Message::~Message(buf);
          goto LABEL_52;
        }

        v38 = *(a1 + 40);
        if (!os_log_type_enabled(*(v24 + 40), OS_LOG_TYPE_ERROR))
        {
LABEL_52:
          mipc::internal::Channel_Flow_Control_Ind::~Channel_Flow_Control_Ind(v42);
          goto LABEL_53;
        }

        *buf = 0;
        v35 = "Received mipc channel flow control indication without flow-control value";
        v36 = v38;
        v37 = 2;
      }

      else
      {
        if (!os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
        {
          goto LABEL_52;
        }

        abb::router::Message::generatePrintString(a2);
        v34 = (a2 + 112);
        if (*(a2 + 135) < 0)
        {
          v34 = *v34;
        }

        *buf = 136315138;
        *&buf[4] = v34;
        v35 = "Unable to deserialize the indication received by agent; %s";
        v36 = v22;
        v37 = 12;
      }

      _os_log_error_impl(&dword_240E91000, v36, OS_LOG_TYPE_ERROR, v35, buf, v37);
      goto LABEL_52;
    }
  }

  v3 = *(a1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    abb::router::Message::generatePrintString(a2);
    v13 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v13 = *v13;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    v5 = "Agent has not registered for this indication; %s";
    goto LABEL_18;
  }

LABEL_53:
  v39 = *MEMORY[0x277D85DE8];
}

void sub_240E9660C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  abb::router::Message::~Message((v27 - 224));
  mipc::internal::Channel_Flow_Control_Ind::~Channel_Flow_Control_Ind(&a27);
  _Unwind_Resume(a1);
}

void sub_240E966AC(_Unwind_Exception *a1)
{
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v1 - 80);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v1 - 224);
  _Unwind_Resume(a1);
}

void abb::router::Agent::handleSentMessage_sync(void *a1, uint64_t a2, int a3)
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = *(**(a2 + 8) + 12);
  v7 = a1[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a3)
    {
      v8 = "canceled";
    }

    else
    {
      v8 = "sent";
    }

    abb::router::Message::generatePrintString(a2);
    v9 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v9 = *v9;
    }

    *buf = 136315394;
    v43 = v8;
    v44 = 2080;
    v45 = v9;
    _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Lookup %s message; %s", buf, 0x16u);
  }

  v10 = a1[34];
  v11 = a1[35];
  if (v10 != v11)
  {
    while (*(**(v10 + 8) + 12) != v6)
    {
      v10 += 168;
      if (v10 == v11)
      {
        v12 = a1[5];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }
  }

  v12 = a1[5];
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v10 == v11)
  {
    if (v13)
    {
LABEL_23:
      abb::router::Message::generatePrintString(a2);
      v16 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v16 = *v16;
      }

      *buf = 136315138;
      v43 = v16;
      _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Request not tracked; not looking for confirmation or, might be canceled already; %s", buf, 0xCu);
    }

    goto LABEL_26;
  }

  if (a3)
  {
    if (v13)
    {
      abb::router::Message::generatePrintString(a2);
      v14 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        v14 = *v14;
      }

      *buf = 136315138;
      v43 = v14;
      _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Sending request failed; send error confirmation; %s", buf, 0xCu);
    }

    v15 = *(v10 + 160);
    if (v15)
    {
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v36 = 0;
      v30[0] = &unk_2852C94E8;
      v30[1] = 0;
      v37 = 0;
      v41 = 0u;
      v40 = 0u;
      v39 = 0u;
      v30[2] = 0;
      v30[3] = 5;
      v30[4] = std::generic_category();
      v31 = 1;
      v38 = 0;
      (*(*v15 + 48))(v15, v30);
      abb::router::Message::~Message(v30);
    }

    std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::erase[abi:ne200100]((a1 + 34), v10);
LABEL_26:
    v17 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v13)
  {
    abb::router::Message::generatePrintString(a2);
    v18 = (a2 + 112);
    if (*(a2 + 135) < 0)
    {
      v18 = *v18;
    }

    *buf = 136315138;
    v43 = v18;
    _os_log_impl(&dword_240E91000, v12, OS_LOG_TYPE_DEFAULT, "#I Starting timer for request; %s", buf, 0xCu);
  }

  v19 = a1[2];
  if (!v19 || (v20 = a1[1], (v21 = std::__shared_weak_count::lock(v19)) == 0))
  {
    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v22 = v21;
  atomic_fetch_add_explicit(&v21->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v21->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v21->__on_zero_shared)(v21);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = a1[3];
  object = v23;
  if (v23)
  {
    dispatch_retain(v23);
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 1174405120;
  v25[2] = ___ZN3abb6router5Agent22handleSentMessage_syncENS0_7MessageEb_block_invoke;
  v25[3] = &__block_descriptor_tmp_1;
  v25[4] = a1;
  v25[5] = v20;
  v26 = v22;
  atomic_fetch_add_explicit(&v22->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v27[34] = v6;
  abb::router::Message::Message(v27, a2);
  aBlock = _Block_copy(v25);
  abb::router::Message::startTimer(v10, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  abb::router::Message::~Message(v27);
  if (v26)
  {
    std::__shared_weak_count::__release_weak(v26);
  }

  std::__shared_weak_count::__release_weak(v22);
  v24 = *MEMORY[0x277D85DE8];
}

void sub_240E96B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void ___ZN3abb6router5Agent22handleSentMessage_syncENS0_7MessageEb_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 48);
  if (!v2)
  {
    goto LABEL_31;
  }

  v3 = *(a1 + 32);
  v4 = std::__shared_weak_count::lock(v2);
  v33 = v4;
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = v4;
  if (!*(a1 + 40))
  {
    goto LABEL_29;
  }

  v7 = *(v3 + 272);
  v6 = *(v3 + 280);
  if (v7 != v6)
  {
    while (*(a1 + 192) != *(**(v7 + 8) + 12))
    {
      v7 += 168;
      if (v7 == v6)
      {
        v8 = *(v3 + 40);
        goto LABEL_14;
      }
    }
  }

  v8 = *(v3 + 40);
  if (v7 != v6)
  {
    if (os_log_type_enabled(*(v3 + 40), OS_LOG_TYPE_ERROR))
    {
      abb::router::Message::generatePrintString((a1 + 56));
      v13 = (a1 + 168);
      if (*(a1 + 191) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315138;
      *&buf[4] = v13;
      _os_log_error_impl(&dword_240E91000, v8, OS_LOG_TYPE_ERROR, "TIMEOUT for message with %s", buf, 0xCu);
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v14;
      v37 = v14;
      v10 = *(v7 + 160);
      if (v10)
      {
LABEL_11:
        if (v10 == v7 + 136)
        {
          *(&v37 + 1) = buf;
          (*(*v10 + 24))(v10, buf);
          v11 = *(&v37 + 1);
          if (!*(&v37 + 1))
          {
LABEL_25:
            v15 = *(v3 + 40);
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              abb::router::Message::generatePrintString((a1 + 56));
              v18 = (a1 + 168);
              if (*(a1 + 191) < 0)
              {
                v18 = *v18;
              }

              *v34 = 136315138;
              v35 = v18;
              _os_log_debug_impl(&dword_240E91000, v15, OS_LOG_TYPE_DEBUG, "#D Remove request from tracking queue; %s", v34, 0xCu);
            }

            std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::erase[abi:ne200100](v3 + 272, v7);
            v16 = *(v3 + 232);
            abb::router::Message::Message(v19, a1 + 56);
            abb::router::Gateway::messageTimeout(v16, v19);
            abb::router::Message::~Message(v19);
            if (*(&v37 + 1) == buf)
            {
              (*(**(&v37 + 1) + 32))(*(&v37 + 1));
              if (atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                goto LABEL_31;
              }

              goto LABEL_30;
            }

            if (*(&v37 + 1))
            {
              (*(**(&v37 + 1) + 40))(*(&v37 + 1));
            }

            goto LABEL_29;
          }
        }

        else
        {
          v11 = (*(*v10 + 16))(v10);
          *(&v37 + 1) = v11;
          if (!v11)
          {
            goto LABEL_25;
          }
        }

        v22 = 0;
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v20[0] = &unk_2852C94E8;
        v20[1] = 0;
        v27 = 0;
        v31 = 0u;
        v30 = 0u;
        v29 = 0u;
        v20[2] = 0;
        v20[3] = 60;
        v20[4] = std::generic_category();
        v21 = 1;
        v28 = 0;
        (*(*v11 + 48))(v11, v20);
        abb::router::Message::~Message(v20);
        goto LABEL_25;
      }
    }

    else
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *buf = v9;
      v37 = v9;
      v10 = *(v7 + 160);
      if (v10)
      {
        goto LABEL_11;
      }
    }

    *(&v37 + 1) = 0;
    goto LABEL_25;
  }

LABEL_14:
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    abb::router::Message::generatePrintString((a1 + 56));
    v12 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v12 = *v12;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_debug_impl(&dword_240E91000, v8, OS_LOG_TYPE_DEBUG, "#D Request is not present in tracking queue; %s", buf, 0xCu);
    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

LABEL_29:
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
LABEL_30:
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

LABEL_31:
  v17 = *MEMORY[0x277D85DE8];
}

void sub_240E96FC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  abb::router::Message::~Message(&a26);
  std::function<void ()(abb::router::Message)>::~function(v26 - 112);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v26 - 144);
  _Unwind_Resume(a1);
}

uint64_t __copy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3abb6router5AgentEEE56c26_ZTSKN3abb6router7MessageE(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return abb::router::Message::Message(a1 + 56, a2 + 56);
}

void sub_240E97090(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void __destroy_helper_block_e8_40c42_ZTSNSt3__18weak_ptrIN3abb6router5AgentEEE56c26_ZTSKN3abb6router7MessageE(uint64_t a1)
{
  abb::router::Message::~Message((a1 + 56));
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void abb::router::Agent::~Agent(abb::router::Agent *this)
{
  abb::router::Agent::~Agent(this);

  operator delete(v1);
}

{
  *this = &unk_2852C8670;
  v2 = *(this + 34);
  if (v2)
  {
    v3 = *(this + 35);
    v4 = *(this + 34);
    if (v3 != v2)
    {
      v5 = v3 - 32;
      do
      {
        v6 = *(v3 - 1);
        if ((v3 - 32) == v6)
        {
          (*(*v6 + 32))(v6);
        }

        else if (v6)
        {
          (*(*v6 + 40))(v6);
        }

        v3 = (v3 - 168);
        abb::router::Message::~Message(v3);
        v5 -= 168;
      }

      while (v3 != v2);
      v4 = *(this + 34);
    }

    *(this + 35) = v2;
    operator delete(v4);
  }

  std::__tree<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<abb::router::ClientProxy>>>>::destroy(*(this + 32));
  v7 = *(this + 30);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  std::__tree<unsigned int>::destroy(this + 208, *(this + 27));
  std::__tree<unsigned int>::destroy(this + 184, *(this + 24));
  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
    if ((*(this + 95) & 0x80000000) == 0)
    {
LABEL_16:
      if ((*(this + 71) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_26;
    }
  }

  else if ((*(this + 95) & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

  operator delete(*(this + 9));
  if ((*(this + 71) & 0x80000000) == 0)
  {
LABEL_17:
    MEMORY[0x245CD26D0](this + 40);
    v8 = *(this + 4);
    if (!v8)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_26:
  operator delete(*(this + 6));
  MEMORY[0x245CD26D0](this + 40);
  v8 = *(this + 4);
  if (v8)
  {
LABEL_18:
    dispatch_release(v8);
  }

LABEL_19:
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

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
  __cxa_throw(exception, off_278CBAE98, MEMORY[0x277D825F0]);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v5 = this;
    v6 = __s;
    if ((__sz | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (__sz | 7) + 1;
    }

    this = operator new(v7);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v7 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = this;
    __s = v6;
    v4 = __sz + 1;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
    v4 = __sz + 1;
  }

  memmove(this, __s, v4);
}

void *ctu::SharedSynchronizable<abb::router::Agent>::~SharedSynchronizable(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void abb::router::Config::~Config(void **this)
{
  if ((*(this + 47) & 0x80000000) == 0)
  {
    if ((*(this + 23) & 0x80000000) == 0)
    {
      return;
    }

LABEL_5:
    operator delete(*this);
    return;
  }

  operator delete(this[3]);
  if (*(this + 23) < 0)
  {
    goto LABEL_5;
  }
}

uint64_t abb::router::Message::Message(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_2852C94E8;
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v5;
  v6 = *(a2 + 48);
  *(a1 + 48) = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  v7 = *(a2 + 56);
  *(a1 + 69) = *(a2 + 69);
  *(a1 + 56) = v7;
  if (*(a2 + 111) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v8 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v8;
  }

  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v9 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v9;
  }

  return a1;
}

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
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = operator new(0x30uLL);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = &unk_2852C9548;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v6 = v4 - v3;
  if (v6)
  {
    if ((v6 & 0x8000000000000000) != 0)
    {
      std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
    }

    v7 = operator new(v6);
    v5[3] = v7;
    v8 = &v7[v6];
    v5[5] = &v7[v6];
    memcpy(v7, v3, v6);
    v5[4] = v8;
  }

  *(a1 + 8) = v5 + 3;
  *(a1 + 16) = v5;
  *(a1 + 84) = 0;
  return a1;
}

{
  *a1 = &unk_2852C94E8;
  *(a1 + 8) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  v4 = operator new(0x30uLL);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = &unk_2852C9548;
  *(v4 + 24) = *a2;
  *(v4 + 5) = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = *(a1 + 16);
  *(a1 + 8) = v4 + 24;
  *(a1 + 16) = v4;
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
    if (*(a1 + 83) != 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (*(a1 + 83) == 1)
  {
LABEL_4:
    *(a1 + 83) = 0;
  }

LABEL_5:
  *(a1 + 84) = 0;
  return a1;
}

void sub_240E9745C(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
    v4 = *(v1 + 48);
    if (!v4)
    {
LABEL_3:
      std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2);
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v4 = *(v1 + 48);
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  dispatch_release(v4);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2);
  _Unwind_Resume(a1);
}

void std::__throw_bad_variant_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82900] + 16;
  __cxa_throw(exception, MEMORY[0x277D82768], std::bad_variant_access::~bad_variant_access);
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v2;
    operator delete(v2);
  }
}

void _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJNS_6vectorIhNS_9allocatorIhEEEEN4mipc5ErrorEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSF_1EJSB_SD_EEEEEEDcSH_DpT0_(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v3 = a2;
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
    a2 = v3;
    if ((*(v3 + 31) & 0x80000000) == 0)
    {
      return;
    }
  }

  else if ((*(a2 + 31) & 0x80000000) == 0)
  {
    return;
  }

  v4 = *(a2 + 8);

  operator delete(v4);
}

uint64_t std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::__emplace_back_slow_path<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  if (v6)
  {
    if (v6 > 0x186186186186186)
    {
      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v7 = operator new(168 * v6);
  }

  else
  {
    v7 = 0;
  }

  v15 = &v7[168 * v2];
  v16 = &v7[168 * v6];
  v8 = abb::router::Message::Message(v15, a2);
  v10 = (a2 + 160);
  v9 = *(a2 + 160);
  if (!v9)
  {
    v10 = (v8 + 160);
    goto LABEL_15;
  }

  if (v9 != a2 + 136)
  {
    *(v8 + 160) = v9;
LABEL_15:
    *v10 = 0;
    goto LABEL_17;
  }

  *(v8 + 160) = v8 + 136;
  (*(*v9 + 24))(v9);
LABEL_17:
  v11 = a1[1];
  v12 = v15 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>,std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = v15 + 168;
  a1[2] = v16;
  if (v13)
  {
    operator delete(v13);
  }

  return v15 + 168;
}

void sub_240E9775C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = (i - 168);
    *(a1 + 16) = i - 168;
    v5 = *(i - 8);
    if (v5 == i - 32)
    {
      (*(*v5 + 32))(v5);
    }

    else if (v5)
    {
      (*(*v5 + 40))(v5);
    }

    abb::router::Message::~Message(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>,std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  if (a2 == a3)
  {
    return;
  }

  v4 = a4;
  v7 = a2 + 136;
  do
  {
    abb::router::Message::Message(v4, v7 - 136);
    v8 = *(v7 + 24);
    if (!v8)
    {
      goto LABEL_4;
    }

    if (v7 != v8)
    {
      v8 = (*(*v8 + 16))(v8);
LABEL_4:
      *(v4 + 160) = v8;
      goto LABEL_5;
    }

    *(v4 + 160) = v4 + 136;
    (*(**(v7 + 24) + 24))(*(v7 + 24));
LABEL_5:
    v4 = v14 + 168;
    v14 += 168;
    v9 = v7 + 32;
    v7 += 168;
  }

  while (v9 != a3);
  v10 = a2 + 136;
  v11 = a2 + 136;
  do
  {
    v13 = *(v11 + 24);
    if (v11 == v13)
    {
      (*(*v13 + 32))(v13);
    }

    else if (v13)
    {
      (*(*v13 + 40))(v13);
    }

    abb::router::Message::~Message((v11 - 136));
    v12 = v11 + 32;
    v11 += 168;
    v10 += 168;
  }

  while (v12 != a3);
}

void sub_240E979A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  abb::router::Message::~Message(v9);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>,std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>,std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = *(a1 + 8);
    v2 = *(a1 + 16);
    v4 = *v2;
    v5 = *v3;
    if (*v2 != *v3)
    {
      v6 = v4 - 32;
      do
      {
        v7 = *(v4 - 1);
        if ((v4 - 32) == v7)
        {
          (*(*v7 + 32))(v7);
        }

        else if (v7)
        {
          (*(*v7 + 40))(v7);
        }

        v4 = (v4 - 168);
        abb::router::Message::~Message(v4);
        v6 -= 168;
      }

      while (v4 != v5);
    }
  }

  return a1;
}

void *std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2852C8758;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2852C8758;
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2852C8758;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(v2 + 4) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(v2 + 4);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  return v2;
}

void std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852C8758;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 32);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::operator()(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  abb::router::Message::Message(v10, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    v14 = v5;
    if (v5)
    {
      v6 = v5;
      if (a1[2])
      {
        v7 = *(v4 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          abb::router::Message::generatePrintString(v10);
          v8 = &v11;
          if (v12 < 0)
          {
            v8 = v11;
          }

          *buf = 136315138;
          v16 = v8;
          _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Wakeable indications are registered; %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  abb::router::Message::~Message(v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_240E97E80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 80);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewaySleep_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router5Agent23handleGatewaySleep_syncEN8dispatch13group_sessionEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router5Agent23handleGatewaySleep_syncEN8dispatch13group_sessionEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router5Agent23handleGatewaySleep_syncEN8dispatch13group_sessionEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router5Agent23handleGatewaySleep_syncEN8dispatch13group_sessionEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2852C87E8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2852C87E8;
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2852C87E8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(v2 + 4) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(v2 + 4);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  return v2;
}

void std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852C87E8;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 32);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::operator()(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  abb::router::Message::Message(v10, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    v14 = v5;
    if (v5)
    {
      v6 = v5;
      if (a1[2])
      {
        v7 = *(v4 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          abb::router::Message::generatePrintString(v10);
          v8 = &v11;
          if (v12 < 0)
          {
            v8 = v11;
          }

          *buf = 136315138;
          v16 = v8;
          _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I All indications are registered; %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  abb::router::Message::~Message(v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_240E982F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 80);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayWakeup_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router5Agent24handleGatewayWakeup_syncEN8dispatch13group_sessionEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router5Agent24handleGatewayWakeup_syncEN8dispatch13group_sessionEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router5Agent24handleGatewayWakeup_syncEN8dispatch13group_sessionEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router5Agent24handleGatewayWakeup_syncEN8dispatch13group_sessionEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2852C8868;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2852C8868;
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2852C8868;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(v2 + 4) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(v2 + 4);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  return v2;
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852C8868;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 32);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::operator()(void *a1, uint64_t a2)
{
  v67 = *MEMORY[0x277D85DE8];
  abb::router::Message::Message(v39, a2);
  v3 = a1[3];
  if (!v3)
  {
    goto LABEL_67;
  }

  v4 = a1[1];
  v5 = std::__shared_weak_count::lock(v3);
  v59 = v5;
  if (!v5)
  {
    goto LABEL_67;
  }

  v6 = v5;
  if (a1[2])
  {
    if (v41 == 1)
    {
      v7 = *(v4 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        abb::router::Message::generatePrintString(v39);
        v8 = v42;
        if (v43 < 0)
        {
          v8 = v42[0];
        }

        *buf = 136315138;
        *&buf[4] = v8;
        _os_log_error_impl(&dword_240E91000, v7, OS_LOG_TYPE_ERROR, "Error in open mipc channel confirmation message; %s", buf, 0xCu);
      }

      goto LABEL_65;
    }

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v56 = v9;
    v57 = v9;
    v55[3] = v9;
    v55[4] = v9;
    v55[1] = v9;
    v55[2] = v9;
    v55[0] = v9;
    v10 = v40;
    *buf = v40;
    if (*(&v40 + 1))
    {
      atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
      v11 = *v10;
      v10 = v40;
      v53[0] = v40;
      if (*(&v40 + 1))
      {
        atomic_fetch_add_explicit((*(&v40 + 1) + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      v11 = *v40;
      v53[0] = v40;
    }

    MEMORY[0x245CD27D0](v55, v11, v10[1] - *v10);
    v12 = *(&v53[0] + 1);
    if (*(&v53[0] + 1) && !atomic_fetch_add((*(&v53[0] + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v12->__on_zero_shared)(v12);
      std::__shared_weak_count::__release_weak(v12);
    }

    v13 = *&buf[8];
    if (*&buf[8] && !atomic_fetch_add((*&buf[8] + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }

    v14 = mipc::operator==();
    v15 = *(v4 + 40);
    if ((v14 & 1) == 0)
    {
      if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_ERROR))
      {
        abb::router::Message::generatePrintString(v39);
        v36 = v42;
        if (v43 < 0)
        {
          v36 = v42[0];
        }

        *buf = 136315138;
        *&buf[4] = v36;
        _os_log_error_impl(&dword_240E91000, v15, OS_LOG_TYPE_ERROR, "Unable to deserialize open mipc channel confirmation message; %s", buf, 0xCu);
      }

LABEL_64:
      mipc::internal::Open_Cnf::~Open_Cnf(v55);
      v6 = v59;
      if (!v59)
      {
        goto LABEL_67;
      }

      goto LABEL_65;
    }

    if (os_log_type_enabled(*(v4 + 40), OS_LOG_TYPE_DEFAULT))
    {
      abb::router::Message::generatePrintString(v39);
      v16 = v42;
      if (v43 < 0)
      {
        v16 = v42[0];
      }

      *buf = 136315138;
      *&buf[4] = v16;
      _os_log_impl(&dword_240E91000, v15, OS_LOG_TYPE_DEFAULT, "#I Mipc channel is open now; %s", buf, 0xCu);
    }

    v17 = *(&v56 + 1);
    if (*(&v56 + 1))
    {
      v18 = *(v4 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = *v17;
        *buf = 67109120;
        *&buf[4] = v19;
        _os_log_impl(&dword_240E91000, v18, OS_LOG_TYPE_DEFAULT, "#I Mipc version: %u", buf, 8u);
      }
    }

    if (v57)
    {
      v20 = *v57;
      v21 = *(v4 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v20;
        _os_log_impl(&dword_240E91000, v21, OS_LOG_TYPE_DEFAULT, "#I Mipc flow-control: %u", buf, 8u);
      }

      v22 = *(v4 + 232);
      LOBYTE(v53[0]) = 0;
      v54 = 0;
      abb::router::Gateway::updateFlowControl(v22, v20, v53);
      if (v54 == 1)
      {
        abb::router::Message::~Message(v53);
      }
    }

    v52 = 0xAAAAAAAAAAAAAAAALL;
    *&v23 = 0xAAAAAAAAAAAAAAAALL;
    *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50[6] = v23;
    v51 = v23;
    v50[4] = v23;
    v50[5] = v23;
    v50[2] = v23;
    v50[3] = v23;
    v50[0] = v23;
    v50[1] = v23;
    memset(v49, 170, sizeof(v49));
    std::set<unsigned int>::set[abi:ne200100](v49, (v4 + 184));
    v24 = *(v4 + 248);
    if (v24 != (v4 + 256))
    {
      do
      {
        abb::router::ClientProxy::getIndications(v24[5], buf);
        std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(v49, buf);
        std::__tree<unsigned int>::destroy(buf, *&buf[8]);
        v33 = v24[1];
        if (v33)
        {
          do
          {
            v34 = v33;
            v33 = *v33;
          }

          while (v33);
        }

        else
        {
          do
          {
            v34 = v24[2];
            v35 = *v34 == v24;
            v24 = v34;
          }

          while (!v35);
        }

        v24 = v34;
      }

      while (v34 != (v4 + 256));
    }

    abb::router::Agent::prepareIndicationMessage_sync(v4, v49, v50);
    std::__tree<unsigned int>::destroy(v49, v49[1]);
    v25 = *(v4 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      abb::router::Message::generatePrintString(v50);
      v26 = &v51;
      if (v52 < 0)
      {
        v26 = v51;
      }

      *buf = 136315138;
      *&buf[4] = v26;
      _os_log_impl(&dword_240E91000, v25, OS_LOG_TYPE_DEFAULT, "#I Request to register all indications; %s", buf, 0xCu);
    }

    v27 = *(v4 + 232);
    abb::router::Message::Message(v48, v50);
    abb::router::Gateway::sendMessage(v27, v48);
    abb::router::Message::~Message(v48);
    v28 = a1[2];
    v29 = a1[3];
    v44 = v4;
    v45 = v28;
    v46 = v29;
    if (v29)
    {
      atomic_fetch_add_explicit((v29 + 16), 1uLL, memory_order_relaxed);
    }

    v30 = a1[4];
    v47 = v30;
    if (v30)
    {
      dispatch_retain(v30);
      dispatch_group_enter(v30);
    }

    abb::router::Message::Message(buf, v50);
    v60 = v4;
    v61 = v28;
    v45 = 0;
    v46 = 0;
    v62 = v29;
    v63 = v30;
    v47 = 0;
    v66 = 0;
    v31 = operator new(0x28uLL);
    *v31 = &unk_2852C88D8;
    v31[1] = v4;
    v31[2] = v28;
    v31[3] = v29;
    v31[4] = v30;
    v66 = v31;
    v32 = *(v4 + 280);
    if (v32 >= *(v4 + 288))
    {
      *(v4 + 280) = std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::__emplace_back_slow_path<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>((v4 + 272), buf);
      v37 = v66;
      if (v66 == v65)
      {
LABEL_62:
        (*(*v37 + 32))(v37);
LABEL_63:
        abb::router::Message::~Message(buf);
        abb::router::Message::~Message(v50);
        goto LABEL_64;
      }
    }

    else
    {
      abb::router::Message::Message(*(v4 + 280), buf);
      if (v66)
      {
        if (v66 == v65)
        {
          *(v32 + 160) = v32 + 136;
          (*(*v66 + 24))(v66);
        }

        else
        {
          *(v32 + 160) = v66;
          v66 = 0;
        }
      }

      else
      {
        *(v32 + 160) = 0;
      }

      *(v4 + 280) = v32 + 168;
      *(v4 + 280) = v32 + 168;
      v37 = v66;
      if (v66 == v65)
      {
        goto LABEL_62;
      }
    }

    if (v37)
    {
      (*(*v37 + 40))(v37);
    }

    goto LABEL_63;
  }

LABEL_65:
  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

LABEL_67:
  abb::router::Message::~Message(v39);
  v38 = *MEMORY[0x277D85DE8];
}

void sub_240E98D54(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2852C88D8;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2852C88D8;
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2852C88D8;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(v2 + 4) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(v2 + 4);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  return v2;
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852C88D8;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 32);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::operator()(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  abb::router::Message::Message(v10, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    v14 = v5;
    if (v5)
    {
      v6 = v5;
      if (a1[2])
      {
        v7 = *(v4 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          abb::router::Message::generatePrintString(v10);
          v8 = &v11;
          if (v12 < 0)
          {
            v8 = v11;
          }

          *buf = 136315138;
          v16 = v8;
          _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I All indications are registered; %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  abb::router::Message::~Message(v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_240E992D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 80);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayStart_sync(dispatch::group_session)::$_0::operator() const(abb::router::Message)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEENK3$_0clENS0_7MessageEEUlS5_E_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEENK3$_0clENS0_7MessageEEUlS5_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEENK3$_0clENS0_7MessageEEUlS5_E_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abb6router5Agent23handleGatewayStart_syncEN8dispatch13group_sessionEENK3$_0clENS0_7MessageEEUlS5_E_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void *std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *a1)
{
  *a1 = &unk_2852C8968;
  v2 = a1[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::~__func(void *__p)
{
  *__p = &unk_2852C8968;
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

char *std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  v2 = operator new(0x28uLL);
  *v2 = &unk_2852C8968;
  *(v2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(v2 + 3) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(v2 + 4) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(v2 + 4);
    if (v5)
    {
      dispatch_group_enter(v5);
    }
  }

  return v2;
}

void std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2852C8968;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 32);
  *(a2 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a2 + 32);
    if (v5)
    {

      dispatch_group_enter(v5);
    }
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 32);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 24);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::destroy_deallocate(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[4];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(__p);
}

void std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::operator()(void *a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  abb::router::Message::Message(v10, a2);
  v3 = a1[3];
  if (v3)
  {
    v4 = a1[1];
    v5 = std::__shared_weak_count::lock(v3);
    v14 = v5;
    if (v5)
    {
      v6 = v5;
      if (a1[2])
      {
        v7 = *(v4 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          abb::router::Message::generatePrintString(v10);
          v8 = &v11;
          if (v12 < 0)
          {
            v8 = v11;
          }

          *buf = 136315138;
          v16 = v8;
          _os_log_impl(&dword_240E91000, v7, OS_LOG_TYPE_DEFAULT, "#I Mipc channel is closed; %s", buf, 0xCu);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }

  abb::router::Message::~Message(v10);
  v9 = *MEMORY[0x277D85DE8];
}

void sub_240E9974C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 80);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0,std::allocator<abb::router::Agent::handleGatewayStop_sync(dispatch::group_session)::$_0>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN3abb6router5Agent22handleGatewayStop_syncEN8dispatch13group_sessionEE3$_0")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN3abb6router5Agent22handleGatewayStop_syncEN8dispatch13group_sessionEE3$_0" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3abb6router5Agent22handleGatewayStop_syncEN8dispatch13group_sessionEE3$_0"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3abb6router5Agent22handleGatewayStop_syncEN8dispatch13group_sessionEE3$_0" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

uint64_t abb::router::Message::operator=(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 8);
  v4 = *(a2 + 16);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 16);
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 24) = v7;
  v8 = *(a2 + 48);
  if (v8)
  {
    dispatch_retain(*(a2 + 48));
  }

  v9 = *(a1 + 48);
  *(a1 + 48) = v8;
  if (v9)
  {
    dispatch_release(v9);
  }

  v10 = *(a2 + 56);
  *(a1 + 66) = *(a2 + 66);
  *(a1 + 56) = v10;
  *(a1 + 82) = *(a2 + 82);
  *(a1 + 84) = *(a2 + 84);
  if (a1 == a2)
  {
    return a1;
  }

  v11 = *(a2 + 111);
  if (*(a1 + 111) < 0)
  {
    if (v11 >= 0)
    {
      v15 = (a2 + 88);
    }

    else
    {
      v15 = *(a2 + 88);
    }

    if (v11 >= 0)
    {
      v16 = *(a2 + 111);
    }

    else
    {
      v16 = *(a2 + 96);
    }

    std::string::__assign_no_alias<false>((a1 + 88), v15, v16);
    v13 = (a2 + 112);
    v14 = *(a2 + 135);
    if (*(a1 + 135) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if ((*(a2 + 111) & 0x80) == 0)
  {
    v12 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v12;
    v13 = (a2 + 112);
    v14 = *(a2 + 135);
    if (*(a1 + 135) < 0)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  std::string::__assign_no_alias<true>((a1 + 88), *(a2 + 88), *(a2 + 96));
  v13 = (a2 + 112);
  v14 = *(a2 + 135);
  if ((*(a1 + 135) & 0x80000000) == 0)
  {
LABEL_22:
    if ((v14 & 0x80) != 0)
    {
      std::string::__assign_no_alias<true>((a1 + 112), *(a2 + 112), *(a2 + 120));
      return a1;
    }

    v17 = *v13;
    *(a1 + 128) = v13[2];
    *(a1 + 112) = v17;
    return a1;
  }

LABEL_26:
  if ((v14 & 0x80u) == 0)
  {
    v19 = v13;
  }

  else
  {
    v19 = *(a2 + 112);
  }

  if ((v14 & 0x80u) == 0)
  {
    v20 = v14;
  }

  else
  {
    v20 = *(a2 + 120);
  }

  std::string::__assign_no_alias<false>((a1 + 112), v19, v20);
  return a1;
}

void *std::string::__assign_no_alias<true>(void *__dst, const void *a2, size_t __len)
{
  if (__len > 0x16)
  {
    if (__len - 0x7FFFFFFFFFFFFFF7 <= 0x800000000000001ELL)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v7 = 44;
    if (__len > 0x2C)
    {
      v7 = __len;
    }

    v8 = (v7 | 7) + 1;
    v5 = operator new(v8);
    memcpy(v5, a2, __len);
    __dst[1] = __len;
    __dst[2] = v8 | 0x8000000000000000;
    *__dst = v5;
  }

  else
  {
    *(__dst + 23) = __len;
    v5 = __dst;
    if (__len)
    {
      memmove(__dst, a2, __len);
      v5 = __dst;
    }
  }

  *(v5 + __len) = 0;
  return __dst;
}

void **std::string::__assign_no_alias<false>(void **a1, const void *a2, size_t __len)
{
  v5 = a1[2];
  v6 = v5 & 0x7FFFFFFFFFFFFFFFLL;
  if ((v5 & 0x7FFFFFFFFFFFFFFFLL) <= __len)
  {
    if (0x7FFFFFFFFFFFFFF7 - v6 < __len - v6 + 1)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v9 = v6 - 1;
    v10 = a1;
    if ((v5 & 0x8000000000000000) != 0)
    {
      v10 = *a1;
    }

    v11 = 2 * v9;
    if (__len > 2 * v9)
    {
      v11 = __len;
    }

    if ((v11 | 7) == 0x17)
    {
      v12 = 25;
    }

    else
    {
      v12 = (v11 | 7) + 1;
    }

    v13 = v11 >= 0x17;
    v14 = 23;
    if (v13)
    {
      v14 = v12;
    }

    if (v9 <= 0x3FFFFFFFFFFFFFF2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0x7FFFFFFFFFFFFFF7;
    }

    v16 = operator new(v15);
    v7 = v16;
    if (__len)
    {
      memcpy(v16, a2, __len);
    }

    if (v9 != 22)
    {
      operator delete(v10);
    }

    a1[1] = __len;
    a1[2] = (v15 | 0x8000000000000000);
    *a1 = v7;
  }

  else
  {
    v7 = *a1;
    a1[1] = __len;
    if (__len)
    {
      memmove(v7, a2, __len);
    }
  }

  *(v7 + __len) = 0;
  return a1;
}

void std::__tree<unsigned int>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<unsigned int>::destroy(a1, *a2);
    std::__tree<unsigned int>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__shared_ptr_pointer<abb::router::Agent *,std::shared_ptr<abb::router::Agent> ctu::SharedSynchronizable<abb::router::Agent>::make_shared_ptr<abb::router::Agent>(abb::router::Agent*)::{lambda(abb::router::Agent *)#1},std::allocator<abb::router::Agent>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t std::__shared_ptr_pointer<abb::router::Agent *,std::shared_ptr<abb::router::Agent> ctu::SharedSynchronizable<abb::router::Agent>::make_shared_ptr<abb::router::Agent>(abb::router::Agent*)::{lambda(abb::router::Agent *)#1},std::allocator<abb::router::Agent>>::__get_deleter(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 != "ZN3ctu20SharedSynchronizableIN3abb6router5AgentEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_")
  {
    if (((v2 & "ZN3ctu20SharedSynchronizableIN3abb6router5AgentEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN3ctu20SharedSynchronizableIN3abb6router5AgentEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_"))
    {
      return 0;
    }

    v3 = result;
    v4 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN3ctu20SharedSynchronizableIN3abb6router5AgentEE15make_shared_ptrIS3_EENSt3__110shared_ptrIT_EEPS8_EUlPS3_E_" & 0x7FFFFFFFFFFFFFFFLL));
    result = v3;
    if (v4)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::shared_ptr<abb::router::Agent> ctu::SharedSynchronizable<abb::router::Agent>::make_shared_ptr<abb::router::Agent>(abb::router::Agent*)::{lambda(abb::router::Agent*)#1}::operator() const(abb::router::Agent*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

void ___ZNK3ctu20SharedSynchronizableIN3abb6router5AgentEE20execute_wrapped_syncIZNS3_4initEvE3__0EEDTclsr8dispatchE4syncLDnEclsr3stdE7forwardIT_Efp_EEEOS7__block_invoke(uint64_t a1)
{
  v1 = **(a1 + 40);
  v11 = 17157;
  std::__tree<unsigned int>::__assign_unique<unsigned int const*>((v1 + 184), &v11, &v12);
  v10 = 17157;
  std::__tree<unsigned int>::__assign_unique<unsigned int const*>((v1 + 208), &v10, &v11);
  NextClientId_sync = abb::router::Agent::getNextClientId_sync(v1);
  *(v1 + 168) = NextClientId_sync;
  v3 = *(v1 + 16);
  if (!v3 || (v4 = *(v1 + 232), v5 = *(v1 + 8), (v6 = std::__shared_weak_count::lock(v3)) == 0))
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

  v8 = operator new(0x30uLL);
  v8[1] = 0;
  v8[2] = 0;
  *v8 = &unk_2852C8A38;
  v8[3] = &unk_2852C8A88;
  v8[4] = v5;
  v8[5] = v7;
  *(v4 + 352) = NextClientId_sync;
  v9 = *(v4 + 368);
  *(v4 + 360) = v8 + 3;
  *(v4 + 368) = v8;
  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void std::__tree<unsigned int>::__assign_unique<unsigned int const*>(void **a1, unsigned int *a2, unsigned int *a3)
{
  if (!a1[2])
  {
    goto LABEL_17;
  }

  v6 = *a1;
  v8 = (a1 + 1);
  v7 = a1[1];
  *a1 = a1 + 1;
  v7[2] = 0;
  a1[2] = 0;
  a1[1] = 0;
  v9 = v6[1] ? v6[1] : v6;
  if (!v9)
  {
    goto LABEL_17;
  }

  v10 = v9[2];
  if (v10)
  {
    v11 = *v10;
    if (*v10 == v9)
    {
      *v10 = 0;
      while (1)
      {
        v30 = v10[1];
        if (!v30)
        {
          break;
        }

        do
        {
          v10 = v30;
          v30 = *v30;
        }

        while (v30);
      }
    }

    else
    {
      for (v10[1] = 0; v11; v11 = v10[1])
      {
        do
        {
          v10 = v11;
          v11 = *v11;
        }

        while (v11);
      }
    }
  }

  if (a2 == a3)
  {
    v12 = v10;
LABEL_13:
    std::__tree<unsigned int>::destroy(a1, v9);
    if (v12)
    {
      for (i = v12[2]; i; i = i[2])
      {
        v12 = i;
      }

      std::__tree<unsigned int>::destroy(a1, v12);
    }

LABEL_17:
    if (a2 == a3)
    {
      return;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v22 = *v8;
    v23 = *a2;
    v24 = a1 + 1;
    v25 = a1 + 1;
    if (*v8)
    {
      do
      {
        while (1)
        {
          v25 = v22;
          v26 = *(v22 + 28);
          if (v23 >= v26)
          {
            break;
          }

          v22 = *v25;
          v24 = v25;
          if (!*v25)
          {
            goto LABEL_39;
          }
        }

        if (v26 >= v23)
        {
          v12 = v10;
          v10 = v9;
          goto LABEL_31;
        }

        v22 = v25[1];
      }

      while (v22);
      v24 = v25 + 1;
    }

LABEL_39:
    *(v9 + 7) = v23;
    *v9 = 0;
    v9[1] = 0;
    v9[2] = v25;
    *v24 = v9;
    v27 = **a1;
    if (v27)
    {
      *a1 = v27;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v9);
    a1[2] = (a1[2] + 1);
    if (!v10)
    {
      break;
    }

    v12 = v10[2];
    if (v12)
    {
      v28 = *v12;
      if (*v12 == v10)
      {
        *v12 = 0;
        while (1)
        {
          v29 = v12[1];
          if (!v29)
          {
            break;
          }

          do
          {
            v12 = v29;
            v29 = *v29;
          }

          while (v29);
        }
      }

      else
      {
        for (v12[1] = 0; v28; v28 = v12[1])
        {
          do
          {
            v12 = v28;
            v28 = *v28;
          }

          while (v28);
        }
      }
    }

LABEL_31:
    v9 = v10;
    ++a2;
    v10 = v12;
    if (a2 == a3)
    {
      goto LABEL_13;
    }
  }

  if (++a2 != a3)
  {
LABEL_18:
    v14 = (a1 + 1);
    do
    {
      v15 = *v14;
      v16 = *a2;
      v17 = a1 + 1;
      v18 = a1 + 1;
      if (*v14)
      {
        while (1)
        {
          while (1)
          {
            v18 = v15;
            v19 = *(v15 + 28);
            if (v16 >= v19)
            {
              break;
            }

            v15 = *v18;
            v17 = v18;
            if (!*v18)
            {
              goto LABEL_28;
            }
          }

          if (v19 >= v16)
          {
            break;
          }

          v15 = v18[1];
          if (!v15)
          {
            v17 = v18 + 1;
            goto LABEL_28;
          }
        }
      }

      else
      {
LABEL_28:
        v20 = operator new(0x20uLL);
        v20[7] = v16;
        *v20 = 0;
        *(v20 + 1) = 0;
        *(v20 + 2) = v18;
        *v17 = v20;
        v21 = **a1;
        if (v21)
        {
          *a1 = v21;
        }

        std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], v20);
        a1[2] = (a1[2] + 1);
      }

      ++a2;
    }

    while (a2 != a3);
  }
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 == result)
  {
    return result;
  }

  while (1)
  {
    v2 = a2[2];
    if (v2[3])
    {
      return result;
    }

    v3 = v2[2];
    v4 = *v3;
    if (*v3 != v2)
    {
      break;
    }

    v8 = v3[1];
    if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
    {
      if (*v2 == a2)
      {
        v20 = a2[2];
        *(v2 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v10 = v2[1];
        v11 = *v10;
        v2[1] = *v10;
        v12 = v2;
        if (v11)
        {
          v11[2] = v2;
          v3 = v2[2];
          v12 = *v3;
        }

        v10[2] = v3;
        v3[v12 != v2] = v10;
        *v10 = v2;
        v2[2] = v10;
        v3 = v10[2];
        v4 = *v3;
        *(v10 + 24) = 1;
        *(v3 + 24) = 0;
        v13 = v4[1];
        *v3 = v13;
        if (v13)
        {
LABEL_15:
          *(v13 + 16) = v3;
        }
      }

      v14 = v3[2];
      v14[*v14 != v3] = v4;
      v4[1] = v3;
      v4[2] = v14;
      v3[2] = v4;
      return result;
    }

LABEL_3:
    *(v2 + 24) = 1;
    a2 = v3;
    *(v3 + 24) = v3 == result;
    *v7 = 1;
    if (v3 == result)
    {
      return result;
    }
  }

  if (v4)
  {
    v6 = *(v4 + 24);
    v5 = v4 + 3;
    if (v6 != 1)
    {
      v7 = v5;
      goto LABEL_3;
    }
  }

  v15 = *v2;
  if (*v2 == a2)
  {
    v16 = *(v15 + 8);
    *v2 = v16;
    if (v16)
    {
      *(v16 + 16) = v2;
      v3 = v2[2];
    }

    v3[*v3 != v2] = v15;
    *(v15 + 8) = v2;
    *(v15 + 16) = v3;
    v2[2] = v15;
    v3 = *(v15 + 16);
  }

  else
  {
    v15 = a2[2];
  }

  *(v15 + 24) = 1;
  *(v3 + 24) = 0;
  v17 = v3[1];
  v18 = *v17;
  v3[1] = *v17;
  if (v18)
  {
    *(v18 + 16) = v3;
  }

  v19 = v3[2];
  v17[2] = v19;
  v19[*v19 != v3] = v17;
  *v17 = v3;
  v3[2] = v17;
  return result;
}

void std::__shared_ptr_emplace<abb::router::GatewayAgentDelegate<abb::router::Agent>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2852C8A38;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete(v1);
}

uint64_t abb::router::GatewayAgentDelegate<abb::router::Agent>::~GatewayAgentDelegate(uint64_t result)
{
  *result = &unk_2852C8A88;
  if (*(result + 16))
  {
    v1 = result;
    std::__shared_weak_count::__release_weak(*(result + 16));
    return v1;
  }

  return result;
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::~GatewayAgentDelegate(std::__shared_weak_count **a1)
{
  *a1 = &unk_2852C8A88;
  if (a1[2])
  {
    v2 = a1;
    std::__shared_weak_count::__release_weak(a1[2]);
    a1 = v2;
    v1 = vars8;
  }

  operator delete(a1);
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::getName(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = *(a1 + 16);
  if (v4 && (v5 = std::__shared_weak_count::lock(v4)) != 0)
  {
    v7 = *(a1 + 8);
    if (v7)
    {
      if (*(v7 + 71) < 0)
      {
        v9 = v5;
        std::string::__init_copy_ctor_external(a2, *(v7 + 48), *(v7 + 56));
        v5 = v9;
      }

      else
      {
        v8 = *(v7 + 48);
        a2->__r_.__value_.__r.__words[2] = *(v7 + 64);
        *&a2->__r_.__value_.__l.__data_ = v8;
      }
    }

    else
    {
      a2->__r_.__value_.__r.__words[0] = 0;
      a2->__r_.__value_.__l.__size_ = 0;
      a2->__r_.__value_.__r.__words[2] = 0;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v10 = v5;
      (v5->__on_zero_shared)(v5, v6);

      std::__shared_weak_count::__release_weak(v10);
    }
  }

  else
  {
    a2->__r_.__value_.__r.__words[0] = 0;
    a2->__r_.__value_.__l.__size_ = 0;
    a2->__r_.__value_.__r.__words[2] = 0;
  }
}

std::__shared_weak_count *abb::router::GatewayAgentDelegate<abb::router::Agent>::valid(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    result = std::__shared_weak_count::lock(result);
    if (result)
    {
      v3 = result;
      result = (*(a1 + 8) != 0);
      if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        v4 = result;
        (v3->__on_zero_shared)(v3);
        std::__shared_weak_count::__release_weak(v3);
        return v4;
      }
    }
  }

  return result;
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleConfirmation(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v10 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      v9 = v7;
      if (v7)
      {
        abb::router::Message::Message(v8, a2);
        abb::router::Agent::handleConfirmation(v7, v8);
        abb::router::Message::~Message(v8);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_240E9A69C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleIndication(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    v10 = v5;
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      v9 = v7;
      if (v7)
      {
        abb::router::Message::Message(v8, a2);
        abb::router::Agent::handleIndication(v7, v8);
        abb::router::Message::~Message(v8);
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);
        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void sub_240E9A798(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleSentMessage(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    v12 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      v11 = v9;
      if (v9)
      {
        abb::router::Message::Message(v10, a2);
        abb::router::Agent::handleSentMessage(v9, v10, a3);
        abb::router::Message::~Message(v10);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);
        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

void sub_240E9A89C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  std::shared_ptr<abb::router::Agent>::~shared_ptr[abi:ne200100](v2 - 48);
  _Unwind_Resume(a1);
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleGatewaySleep(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::Agent::handleGatewaySleep(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleGatewayWakeup(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::Agent::handleGatewayWakeup(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleGatewayStart(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::Agent::handleGatewayStart(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleGatewayStop(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::Agent::handleGatewayStop(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleGatewayDown(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v9 = *a2;
        v8 = v9;
        *a2 = 0;
        abb::router::Agent::handleGatewayDown(v7, &v9);
        if (v8)
        {
          dispatch_group_leave(v8);
          dispatch_release(v8);
        }
      }

      if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v6->__on_zero_shared)(v6);

        std::__shared_weak_count::__release_weak(v6);
      }
    }
  }
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleGatewayClientConnect(uint64_t a1, NSObject **a2, int a3, char a4)
{
  v5 = *(a1 + 16);
  if (!v5)
  {
    return;
  }

  v9 = std::__shared_weak_count::lock(v5);
  if (!v9)
  {
    return;
  }

  v10 = v9;
  v11 = *(a1 + 8);
  if (v11)
  {
    v12 = *a2;
    v13 = v12;
    if (!v12)
    {
      abb::router::Agent::handleGatewayClientConnect(v11, &v13, a3, a4);
      if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        return;
      }

      goto LABEL_9;
    }

    dispatch_retain(v12);
    dispatch_group_enter(v12);
    abb::router::Agent::handleGatewayClientConnect(v11, &v13, a3, a4);
    dispatch_group_leave(v12);
    dispatch_release(v12);
  }

  if (atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    return;
  }

LABEL_9:
  (v10->__on_zero_shared)(v10);

  std::__shared_weak_count::__release_weak(v10);
}

void abb::router::GatewayAgentDelegate<abb::router::Agent>::handleGatewayClientDisconnect(uint64_t a1, int a2, char a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        abb::router::Agent::handleGatewayClientDisconnect(v9, a2, a3);
      }

      if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v8->__on_zero_shared)(v8);

        std::__shared_weak_count::__release_weak(v8);
      }
    }
  }
}

uint64_t ___ZN8dispatch9sync_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t ___ZN8dispatch19async_and_wait_implIRU13block_pointerFjvEEENSt3__15decayIDTclfp0_EEE4typeEP16dispatch_queue_sOT_NS4_17integral_constantIbLb0EEE_block_invoke(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *std::__tree<unsigned int>::__find_equal<unsigned int>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, unsigned int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 7), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v14 = a2;
      do
      {
        v10 = v14[2];
        v15 = *v10 == v14;
        v14 = v10;
      }

      while (v15);
    }

    v16 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v18 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v19 = v18;
          v20 = *(v18 + 28);
          if (v16 >= v20)
          {
            break;
          }

          v18 = *v19;
          v5 = v19;
          if (!*v19)
          {
            goto LABEL_25;
          }
        }

        if (v20 >= v16)
        {
          break;
        }

        v5 = v19 + 1;
        v18 = v19[1];
      }

      while (v18);
LABEL_25:
      *a3 = v19;
      return v5;
    }

    else
    {
      *a3 = v5;
      return a1 + 1;
    }
  }

  else if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  else
  {
    v11 = a2[1];
    if (v11)
    {
      v12 = a2[1];
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12);
    }

    else
    {
      v21 = a2;
      do
      {
        v13 = v21[2];
        v15 = *v13 == v21;
        v21 = v13;
      }

      while (!v15);
    }

    if (v13 == v5 || v6 < *(v13 + 7))
    {
      if (v11)
      {
        *a3 = v13;
        return v13;
      }

      else
      {
        *a3 = a2;
        return a2 + 1;
      }
    }

    else
    {
      v22 = *v5;
      if (*v5)
      {
        do
        {
          while (1)
          {
            v23 = v22;
            v24 = *(v22 + 28);
            if (v6 >= v24)
            {
              break;
            }

            v22 = *v23;
            v5 = v23;
            if (!*v23)
            {
              goto LABEL_41;
            }
          }

          if (v24 >= v6)
          {
            break;
          }

          v5 = v23 + 1;
          v22 = v23[1];
        }

        while (v22);
LABEL_41:
        *a3 = v23;
        return v5;
      }

      else
      {
        *a3 = v5;
        return a1 + 1;
      }
    }
  }
}

uint64_t *std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(uint64_t *result, void *a2)
{
  v3 = a2 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    v5 = result;
    v6 = result + 1;
    while (1)
    {
      v7 = *v6;
      if (*v6)
      {
        break;
      }

      v12 = 1;
      v10 = v6;
      v9 = v6;
      v13 = v2[1];
      v14 = v13;
      v15 = v2;
      if (v13)
      {
        goto LABEL_18;
      }

      do
      {
LABEL_20:
        v16 = v15[2];
        v17 = *v16 == v15;
        v15 = v16;
      }

      while (!v17);
LABEL_22:
      if (v12)
      {
        v18 = v2;
        if (v13)
        {
          do
          {
            v19 = v13;
            v13 = *v13;
          }

          while (v13);
        }

        else
        {
          do
          {
            v19 = v18[2];
            v17 = *v19 == v18;
            v18 = v19;
          }

          while (!v17);
        }

        if (*a2 == v2)
        {
          *a2 = v19;
        }

        v20 = a2[1];
        --a2[2];
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v20, v2);
        *v2 = 0;
        v2[1] = 0;
        v2[2] = v10;
        *v9 = v2;
        v21 = **v5;
        if (v21)
        {
          *v5 = v21;
        }

        result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v5[1], v2);
        ++v5[2];
      }

      v2 = v16;
      if (v16 == v3)
      {
        return result;
      }
    }

    v8 = *(v2 + 7);
    v9 = v6;
    while (1)
    {
      while (1)
      {
        v10 = v7;
        v11 = *(v7 + 28);
        if (v8 >= v11)
        {
          break;
        }

        v7 = *v10;
        v9 = v10;
        if (!*v10)
        {
          v12 = 1;
          v9 = v10;
          v13 = v2[1];
          v14 = v13;
          v15 = v2;
          if (v13)
          {
            goto LABEL_18;
          }

          goto LABEL_20;
        }
      }

      if (v11 >= v8)
      {
        break;
      }

      v9 = v10 + 1;
      v7 = v10[1];
      if (!v7)
      {
        v12 = 1;
        v13 = v2[1];
        v14 = v13;
        v15 = v2;
        if (v13)
        {
          goto LABEL_18;
        }

        goto LABEL_20;
      }
    }

    v12 = 0;
    v13 = v2[1];
    v14 = v13;
    v15 = v2;
    if (!v13)
    {
      goto LABEL_20;
    }

    do
    {
LABEL_18:
      v16 = v14;
      v14 = *v14;
    }

    while (v14);
    goto LABEL_22;
  }

  return result;
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      v6[1] = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = v6[1];
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    v16 = *(v7 + 24);
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v17 = v14[1];
      v18 = *v17;
      v14[1] = *v17;
      if (v18)
      {
        *(v18 + 16) = v14;
      }

      v19 = v14[2];
      v17[2] = v19;
      v19[*v19 != v14] = v17;
      *v17 = v14;
      v14[2] = v17;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v20 = *v7;
    if (*v7 && *(v20 + 24) != 1)
    {
      v21 = v7[1];
      if (v21 && (v21[3] & 1) == 0)
      {
LABEL_65:
        v20 = v7;
      }

      else
      {
        *(v20 + 24) = 1;
        *(v7 + 24) = 0;
        v29 = v20[1];
        *v7 = v29;
        if (v29)
        {
          *(v29 + 16) = v7;
        }

        v30 = v7[2];
        v30[*v30 != v7] = v20;
        v20[1] = v7;
        v20[2] = v30;
        v7[2] = v20;
        v21 = v7;
      }

      v31 = v20[2];
      *(v20 + 24) = *(v31 + 24);
      *(v31 + 24) = 1;
      *(v21 + 24) = 1;
      v32 = *(v31 + 8);
      v33 = *v32;
      *(v31 + 8) = *v32;
      if (v33)
      {
        *(v33 + 16) = v31;
      }

      v34 = *(v31 + 16);
      v32[2] = v34;
      v34[*v34 != v31] = v32;
      *v32 = v31;
      *(v31 + 16) = v32;
      return result;
    }

    v21 = v7[1];
    if (v21 && *(v21 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v22 = v15[1];
    *v14 = v22;
    if (v22)
    {
      v22[2] = v14;
    }

    v23 = v14[2];
    v23[*v23 != v14] = v15;
    v15[1] = v14;
    v15[2] = v23;
    v14[2] = v15;
    v24 = v7[1];
    if (result == v24)
    {
      result = v7;
    }

    v7 = *v24;
  }

  v25 = *v7;
  if (*v7 && *(v25 + 24) != 1)
  {
    goto LABEL_69;
  }

  v26 = v7[1];
  if (!v26 || *(v26 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v25 && (v25[3] & 1) == 0)
  {
LABEL_69:
    v26 = v7;
    goto LABEL_70;
  }

  *(v26 + 24) = 1;
  *(v7 + 24) = 0;
  v27 = *v26;
  v7[1] = *v26;
  if (v27)
  {
    *(v27 + 16) = v7;
  }

  v28 = v7[2];
  v26[2] = v28;
  v28[*v28 != v7] = v26;
  *v26 = v7;
  v7[2] = v26;
  v25 = v7;
LABEL_70:
  v35 = v26[2];
  *(v26 + 24) = *(v35 + 24);
  *(v35 + 24) = 1;
  *(v25 + 24) = 1;
  v36 = *v35;
  v37 = *(*v35 + 8);
  *v35 = v37;
  if (v37)
  {
    *(v37 + 16) = v35;
  }

  v38 = v35[2];
  v38[*v38 != v35] = v36;
  *(v36 + 8) = v35;
  *(v36 + 16) = v38;
  v35[2] = v36;
  return result;
}

void *std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = v2[2];
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

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0,std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>>)::{lambda(void *)#1}::__invoke(std::__shared_weak_count **a1)
{
  v1 = *a1;
  v19 = *a1;
  v2 = (*a1)->__vftable;
  ClientId = abb::router::ClientProxy::getClientId((*a1)->__shared_owners_);
  v4 = ClientId;
  on_zero_shared = v2[6].__on_zero_shared;
  if (on_zero_shared)
  {
    while (1)
    {
      while (1)
      {
        v7 = on_zero_shared;
        v8 = *(on_zero_shared + 8);
        if (ClientId >= v8)
        {
          break;
        }

        on_zero_shared = *v7;
        p_on_zero_shared = v7;
        if (!*v7)
        {
          goto LABEL_8;
        }
      }

      if (v8 >= ClientId)
      {
        break;
      }

      on_zero_shared = v7[1];
      if (!on_zero_shared)
      {
        p_on_zero_shared = v7 + 1;
        goto LABEL_8;
      }
    }

    v9 = v7;
    shared_owners = v1->__shared_owners_;
    shared_weak_owners = v1->__shared_weak_owners_;
    if (shared_weak_owners)
    {
      goto LABEL_11;
    }
  }

  else
  {
    p_on_zero_shared = &v2[6].__on_zero_shared;
    v7 = &v2[6].__on_zero_shared;
LABEL_8:
    v9 = operator new(0x38uLL);
    *(v9 + 8) = v4;
    *(v9 + 5) = 0;
    *(v9 + 6) = 0;
    *v9 = 0;
    *(v9 + 1) = 0;
    *(v9 + 2) = v7;
    *p_on_zero_shared = v9;
    v10 = *v2[6].~__shared_weak_count_0;
    if (v10)
    {
      v2[6].~__shared_weak_count_0 = v10;
    }

    std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(v2[6].__on_zero_shared, v9);
    ++v2[6].__get_deleter;
    shared_owners = v1->__shared_owners_;
    shared_weak_owners = v1->__shared_weak_owners_;
    if (shared_weak_owners)
    {
LABEL_11:
      atomic_fetch_add_explicit((shared_weak_owners + 8), 1uLL, memory_order_relaxed);
    }
  }

  v13 = *(v9 + 6);
  *(v9 + 5) = shared_owners;
  *(v9 + 6) = shared_weak_owners;
  if (v13 && !atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  v14 = v19;
  if (v19)
  {
    v15 = v19[2];
    if (v15 && !atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
      v14 = v19;
    }

    operator delete(v14);
  }

  v16 = a1;
  if (a1)
  {
    v17 = a1[2];
    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
      v16 = a1;
    }

    operator delete(v16);
  }
}

void sub_240E9B940(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>(abb::router::Agent::handleConfirmation(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v5, *a1 + 8);
  abb::router::Agent::handleConfirmation_sync(v3, v5);
  abb::router::Message::~Message(v5);
  abb::router::Message::~Message((v2 + 1));
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_240E9BA20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  abb::router::Message::~Message(va2);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240E9BA44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    abb::router::Message::~Message((v1 + 8));
    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleIndication(abb::router::Message)::$_0>(abb::router::Agent::handleIndication(abb::router::Message)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleIndication(abb::router::Message)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleIndication(abb::router::Message)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v5, *a1 + 8);
  abb::router::Agent::handleIndication_sync(v3, v5);
  abb::router::Message::~Message(v5);
  abb::router::Message::~Message((v2 + 1));
  operator delete(v2);
  v4 = *(a1 + 2);
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_240E9BB64(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  abb::router::Message::~Message(va2);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240E9BB88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0>(abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleSentMessage(abb::router::Message,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(unsigned __int8 **a1)
{
  v2 = *a1;
  v3 = **a1;
  abb::router::Message::Message(v5, (*a1 + 8));
  abb::router::Agent::handleSentMessage_sync(v3, v5, v2[144]);
  abb::router::Message::~Message(v5);
  abb::router::Message::~Message((v2 + 8));
  operator delete(v2);
  v4 = a1[2];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(a1);
}

void sub_240E9BC6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, void);
  abb::router::Message::~Message(va2);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_240E9BC90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void *);
  std::unique_ptr<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0,std::default_delete<abb::router::Agent::handleConfirmation(abb::router::Message)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Agent::handleGatewaySleep_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
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
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240E9BDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](void **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = v1[1];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v1[1];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete(v1);
    return v2;
  }

  return result;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayWakeup(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Agent::handleGatewayWakeup_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
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
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240E9BF14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayStart(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Agent::handleGatewayStart_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
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
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240E9C038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayStop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = *(*a1 + 8);
  v8 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  abb::router::Agent::handleGatewayStop_sync(v4, &v8);
  if (v3)
  {
    dispatch_group_leave(v3);
    dispatch_release(v3);
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
  v7 = *(a1 + 2);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  operator delete(a1);
}

void sub_240E9C15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, void *a11)
{
  if (v11)
  {
    dispatch_group_leave(v11);
    dispatch_release(v11);
  }

  std::unique_ptr<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0,std::default_delete<abb::router::Agent::handleGatewaySleep(dispatch::group_session)::$_0>>::~unique_ptr[abi:ne200100](&a11);
  std::unique_ptr<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0>(abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&)::{lambda(void)#1},std::default_delete<abb::router::Agent::addClient(std::shared_ptr<abb::router::ClientProxy>)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0>(abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayDown(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  if (v3)
  {
    dispatch_retain((*a1)[1]);
    dispatch_group_enter(v3);
    abb::router::Agent::handleGatewayDown_sync(v4);
    dispatch_group_leave(v3);
    dispatch_release(v3);
    v5 = v2[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    abb::router::Agent::handleGatewayDown_sync(**a1);
    v5 = v2[1];
    if (!v5)
    {
      goto LABEL_7;
    }
  }

  dispatch_group_leave(v5);
  v6 = v2[1];
  if (v6)
  {
    dispatch_release(v6);
  }

LABEL_7:
  operator delete(v2);
  v7 = a1[2];
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    v8 = a1;
  }

  else
  {
    v8 = a1;
  }

  operator delete(v8);
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0>(abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v30 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 4);
    if (*(v2 + 20))
    {
      v6 = "with";
    }

    else
    {
      v6 = "with no";
    }

    *buf = 136315394;
    *v27 = v6;
    *&v27[8] = 1024;
    *&v27[10] = v5;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Client connected %s indications to register; Client=0x%02x", buf, 0x12u);
  }

  if (*(v2 + 20) == 1)
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[6] = v7;
    v24 = v7;
    v23[4] = v7;
    v23[5] = v7;
    v23[2] = v7;
    v23[3] = v7;
    v23[0] = v7;
    v23[1] = v7;
    memset(v22, 170, sizeof(v22));
    std::set<unsigned int>::set[abi:ne200100](v22, v3 + 23);
    v8 = v3[31];
    if (v8 != v3 + 32)
    {
      do
      {
        abb::router::ClientProxy::getIndications(v8[5], buf);
        std::__tree<unsigned int>::__node_handle_merge_unique[abi:ne200100]<std::__tree<unsigned int>>(v22, buf);
        std::__tree<unsigned int>::destroy(buf, *&v27[4]);
        v12 = v8[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v8[2];
            v14 = *v13 == v8;
            v8 = v13;
          }

          while (!v14);
        }

        v8 = v13;
      }

      while (v13 != v3 + 32);
    }

    abb::router::Agent::prepareIndicationMessage_sync(v3, v22, v23);
    std::__tree<unsigned int>::destroy(v22, v22[1]);
    v9 = v3[5];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      abb::router::Message::generatePrintString(v23);
      v20 = &v24;
      if (v25 < 0)
      {
        v20 = v24;
      }

      *buf = 136315138;
      *v27 = v20;
      _os_log_debug_impl(&dword_240E91000, v9, OS_LOG_TYPE_DEBUG, "#D Request to register all indications; %s", buf, 0xCu);
    }

    v10 = v3[29];
    abb::router::Message::Message(v21, v23);
    abb::router::Gateway::sendMessage(v10, v21);
    abb::router::Message::~Message(v21);
    abb::router::Message::Message(buf, v23);
    v28[0] = &unk_2852C8B20;
    v28[1] = v3;
    v29 = v28;
    v11 = v3[35];
    if (v11 >= v3[36])
    {
      v3[35] = std::vector<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>::__emplace_back_slow_path<std::pair<abb::router::Message,std::function<void ()(abb::router::Message)>>>(v3 + 34, buf);
      v15 = v29;
      if (v29 == v28)
      {
LABEL_26:
        (*(*v15 + 32))(v15);
LABEL_27:
        abb::router::Message::~Message(buf);
        abb::router::Message::~Message(v23);
        goto LABEL_28;
      }
    }

    else
    {
      abb::router::Message::Message(v3[35], buf);
      if (v29)
      {
        if (v29 == v28)
        {
          *(v11 + 160) = v11 + 136;
          (*(*v29 + 24))(v29);
        }

        else
        {
          *(v11 + 160) = v29;
          v29 = 0;
        }
      }

      else
      {
        *(v11 + 160) = 0;
      }

      v3[35] = v11 + 168;
      v3[35] = v11 + 168;
      v15 = v29;
      if (v29 == v28)
      {
        goto LABEL_26;
      }
    }

    if (v15)
    {
      (*(*v15 + 40))(v15);
    }

    goto LABEL_27;
  }

LABEL_28:
  v16 = v2[1];
  if (v16)
  {
    dispatch_group_leave(v16);
    v17 = v2[1];
    if (v17)
    {
      dispatch_release(v17);
    }
  }

  operator delete(v2);
  v18 = a1[2];
  if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v18->__on_zero_shared)(v18);
    std::__shared_weak_count::__release_weak(v18);
  }

  operator delete(a1);
  v19 = *MEMORY[0x277D85DE8];
}

void sub_240E9C694(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::__function::__func<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::__clone(uint64_t a1)
{
  result = operator new(0x10uLL);
  v3 = *(a1 + 8);
  *result = &unk_2852C8B20;
  result[1] = v3;
  return result;
}

uint64_t std::__function::__func<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2852C8B20;
  a2[1] = v2;
  return result;
}

void std::__function::__func<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::operator()(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  abb::router::Message::Message(v6, a2);
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    abb::router::Message::generatePrintString(v6);
    v5 = &v7;
    if (v8 < 0)
    {
      v5 = v7;
    }

    *buf = 136315138;
    v10 = v5;
    _os_log_debug_impl(&dword_240E91000, v3, OS_LOG_TYPE_DEBUG, "#D All indications are registered; %s", buf, 0xCu);
  }

  abb::router::Message::~Message(v6);
  v4 = *MEMORY[0x277D85DE8];
}

void sub_240E9C868(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  abb::router::Message::~Message(va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1},std::allocator<abb::router::Agent::handleGatewayClientConnect(dispatch::group_session,unsigned int,BOOL)::$_0::operator() const(void)::{lambda(abb::router::Message)#1}>,void ()(abb::router::Message)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZZN3abb6router5Agent26handleGatewayClientConnectEN8dispatch13group_sessionEjbENK3$_0clEvEUlNS0_7MessageEE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZZN3abb6router5Agent26handleGatewayClientConnectEN8dispatch13group_sessionEjbENK3$_0clEvEUlNS0_7MessageEE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZZN3abb6router5Agent26handleGatewayClientConnectEN8dispatch13group_sessionEjbENK3$_0clEvEUlNS0_7MessageEE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZZN3abb6router5Agent26handleGatewayClientConnectEN8dispatch13group_sessionEjbENK3$_0clEvEUlNS0_7MessageEE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void dispatch::async<void ctu::SharedSynchronizable<abb::router::Agent>::execute_wrapped<abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0>(abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0,dispatch_queue_s *::default_delete<abb::router::Agent::handleGatewayClientDisconnect(unsigned int,BOOL)::$_0>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = **a1;
  v4 = v3[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v2 + 2);
    if (*(v2 + 12))
    {
      v6 = "with";
    }

    else
    {
      v6 = "with no";
    }

    v21 = 136315394;
    v22 = v6;
    v23 = 1024;
    v24 = v5;
    _os_log_impl(&dword_240E91000, v4, OS_LOG_TYPE_DEFAULT, "#I Request to remove client %s indications; Client=0x%02x", &v21, 0x12u);
  }

  v7 = v3[32];
  if (v7)
  {
    v8 = *(v2 + 2);
    v9 = v3 + 32;
    v10 = v3[32];
    do
    {
      v11 = *(v10 + 32);
      v12 = v11 >= v8;
      v13 = v11 < v8;
      if (v12)
      {
        v9 = v10;
      }

      v10 = *(v10 + 8 * v13);
    }

    while (v10);
    if (v9 != v3 + 32 && v8 >= *(v9 + 8))
    {
      v14 = v9[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        v16 = v9;
        do
        {
          v15 = v16[2];
          v17 = *v15 == v16;
          v16 = v15;
        }

        while (!v17);
      }

      if (v3[31] == v9)
      {
        v3[31] = v15;
      }

      --v3[33];
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v7, v9);
      v18 = v9[6];
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }

      operator delete(v9);
    }
  }

  operator delete(v2);
  v19 = a1[2];
  if (v19 && !atomic_fetch_add(&v19->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v19->__on_zero_shared)(v19);
    std::__shared_weak_count::__release_weak(v19);
  }

  operator delete(a1);
  v20 = *MEMORY[0x277D85DE8];
}

void std::__format::__allocating_buffer<char>::__prepare_write[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = v2 * 1.6;
  if (v2 + a2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2 + a2;
  }

  if (v4 >= 0x100)
  {
    v6 = operator new(v4);
    v7 = v6;
    v8 = *(a1 + 296);
    v9 = *(a1 + 16);
    if (v9)
    {
      memmove(v6, *(a1 + 296), v9);
    }

    if (v8 != (a1 + 40))
    {
      operator delete(v8);
    }

    *(a1 + 296) = v7;
    *a1 = v7;
    *(a1 + 8) = v4;
  }
}

uint64_t *std::__vformat_to[abi:ne200100]<std::back_insert_iterator<std::__format::__output_buffer<char>>,char,std::back_insert_iterator<std::__format::__output_buffer<char>>>(uint64_t *a1, unsigned __int8 *a2, uint64_t a3, uint64_t *a4)
{
  v4 = *a4;
  v14[0] = a2;
  v14[1] = &a2[a3];
  v15 = 0;
  v16 = 0;
  v17 = v4;
  v10 = *a4;
  v11 = a4[2];
  LOBYTE(v7.__locale_) = 0;
  v8 = 0;
  v9 = a1;
  LOBYTE(v12.__locale_) = 0;
  v13 = 0;
  result = std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v14, &v9);
  if (v13 == 1)
  {
    v6 = result;
    std::locale::~locale(&v12);
    return v6;
  }

  return result;
}

void sub_240E9CC40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a17 == 1)
  {
    std::locale::~locale(v17 + 4);
    if (a11)
    {
      std::locale::~locale(&a10);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__format::__vformat_to[abi:ne200100]<std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 **a1, uint64_t **a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a2;
  if (v3 != v4)
  {
    while (1)
    {
      v7 = *v3;
      if (v7 == 125)
      {
        break;
      }

      if (v7 != 123)
      {
        goto LABEL_12;
      }

      if (++v3 == v4)
      {
        std::__throw_format_error[abi:ne200100]("The format string terminates at a '{'");
      }

      if (*v3 == 123)
      {
LABEL_12:
        v8 = v5[4];
        if (!v8 || (v10 = *v8, v9 = v8[1], v8[1] = v9 + 1, v9 < v10))
        {
          v11 = *v5;
          v12 = v5[2];
          v5[2] = v12 + 1;
          *(v11 + v12) = v7;
          if (v5[2] == v5[1])
          {
            v13 = v3;
            (v5[3])(v5, 2);
            v3 = v13;
          }
        }

        if (++v3 == v4)
        {
          return v5;
        }
      }

      else
      {
        *a2 = v5;
        v3 = std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v4, a1, a2);
        v5 = *a2;
        if (v3 == v4)
        {
          return v5;
        }
      }
    }

    if (++v3 == v4 || *v3 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The format string contains an invalid escape sequence");
    }

    goto LABEL_12;
  }

  return v5;
}

void std::__throw_format_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::format_error::format_error[abi:ne200100](exception, a1);
}

unsigned __int8 *std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(unsigned __int8 *a1, unsigned __int8 *a2, unsigned __int8 **a3, void *a4)
{
  v24 = *MEMORY[0x277D85DE8];
  v7 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(a1, a2, a3);
  if (v7 == a2)
  {
    goto LABEL_14;
  }

  v9 = *v7;
  v21 = v9 == 58;
  if (v9 == 125)
  {
    goto LABEL_5;
  }

  if (v9 != 58)
  {
LABEL_14:
    std::__throw_format_error[abi:ne200100]("The argument index should end with a ':' or a '}'");
  }

  ++v7;
LABEL_5:
  *a3 = v7;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = &v21;
  v10 = a4[1];
  if (v10 <= v8)
  {
    LOBYTE(v23) = 0;
  }

  else if (v10 > 0xC)
  {
    v15 = (a4[2] + 32 * v8);
    v16 = v15[1];
    v22 = *v15;
    v23 = v16;
  }

  else
  {
    v11 = (a4[2] + 16 * v8);
    v13 = *v11;
    v12 = v11[1];
    v14 = (a4[3] >> (5 * v8)) & 0x1FLL;
    *&v22 = v13;
    *(&v22 + 1) = v12;
    LOBYTE(v23) = v14;
  }

  (std::__visit_format_arg[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>)(v20, &v22);
  v17 = *a3;
  if (*a3 == a2 || *v17 != 125)
  {
    std::__throw_format_error[abi:ne200100]("The replacement field misses a terminating '}'");
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17 + 1;
}

std::runtime_error *std::format_error::format_error[abi:ne200100](std::runtime_error *a1, const char *a2)
{
  result = std::runtime_error::runtime_error(a1, a2);
  result->__vftable = &unk_2852C8BB8;
  return result;
}

void std::format_error::~format_error(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  operator delete(v1);
}

unsigned __int8 *std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(unsigned __int8 *result, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *result;
  if (v3 == 125 || (v4 = v3 - 58, v3 == 58))
  {
    v7 = *(a3 + 16);
    if (v7)
    {
      if (v7 == 1)
      {
        std::__throw_format_error[abi:ne200100]("Using automatic argument numbering in manual argument numbering mode");
      }

      ++*(a3 + 24);
    }

    else
    {
      *(a3 + 16) = 2;
      ++*(a3 + 24);
    }
  }

  else
  {
    v5 = v3 - 48;
    if (!v5)
    {
      v6 = *(a3 + 16);
      if (!v6)
      {
        *(a3 + 16) = 1;
        return ++result;
      }

      if (v6 != 2)
      {
        return ++result;
      }

      goto LABEL_37;
    }

    if (v4 <= 0xFFFFFFF5)
    {
      std::__throw_format_error[abi:ne200100]("The argument index starts with an invalid character");
    }

    if (a2 - result <= 9)
    {
      v8 = a2;
    }

    else
    {
      v8 = result + 9;
    }

    v9 = result + 1;
    if (result + 1 == v8)
    {
      v8 = result + 1;
      if (v9 == a2)
      {
        goto LABEL_27;
      }

LABEL_19:
      v11 = *v8;
      if ((v11 - 48) > 9)
      {
        result = v8;
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v11 + 10 * v5 - 48) >> 31 || (result += 2, result != a2) && *result - 48 <= 9)
        {
          std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
        }

LABEL_30:
        v12 = *(a3 + 16);
        if (!v12)
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
      result = v8 - 1;
      do
      {
        v10 = *v9;
        if ((v10 - 58) < 0xFFFFFFF6)
        {
          result = v9;
          goto LABEL_30;
        }

        v5 = v10 + 10 * v5 - 48;
        ++v9;
      }

      while (v9 != v8);
      if (v8 != a2)
      {
        goto LABEL_19;
      }

LABEL_27:
      result = a2;
      v12 = *(a3 + 16);
      if (!v12)
      {
LABEL_34:
        *(a3 + 16) = 1;
        return result;
      }
    }

    if (v12 == 2)
    {
LABEL_37:
      std::__throw_format_error[abi:ne200100]("Using manual argument numbering in automatic argument numbering mode");
    }
  }

  return result;
}

uint64_t std::invoke[abi:ne200100]<char const* std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1},void const*&>(uint64_t a1, unint64_t *a2)
{
  v3 = *a2;
  v12 = 0;
  v13 = -1;
  v14 = 32;
  v15 = 0;
  v16 = 0;
  if (**(a1 + 16) == 1)
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v12, *a1, 292);
    if (BYTE1(v12) - 8 >= 2 && BYTE1(v12) != 0)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a pointer");
    }

    *v4 = v5;
  }

  v7 = *(a1 + 8);
  v8 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v12, v7);
  v10 = 1536;
  if ((v8 & 0xFF00) == 0x900)
  {
    v10 = 1792;
  }

  result = std::__formatter::__format_integer[abi:ne200100]<unsigned long,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(v3, v7, v8 & 0xFFFFFFFFFFFF00FFLL | v10 | 0x20, v9, 0);
  *v7 = result;
  return result;
}

uint64_t std::__format::__handle_replacement_field[abi:ne200100]<char const*,std::basic_format_parse_context<char>,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(char const*,char const*,std::basic_format_parse_context<char> &,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char> &)::{lambda(char const*)#1}::operator()<BOOL>(uint64_t a1, unsigned int a2)
{
  v15 = 0;
  v16 = -1;
  v17 = 32;
  v18 = 0;
  v19 = 0;
  if (**(a1 + 16))
  {
    v4 = *a1;
    v5 = std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(&v15, *a1, 311);
    if (BYTE1(v15) - 2 < 6)
    {
      *v4 = v5;
      v6 = *(a1 + 8);
LABEL_4:
      v7 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
      result = std::__formatter::__format_integer[abi:ne200100]<unsigned int,char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v7, v8, 0);
      *v6 = result;
      return result;
    }

    if (BYTE1(v15) > 1u)
    {
      std::__format_spec::__throw_invalid_type_format_error[abi:ne200100]("a BOOL");
    }

    v12 = v5;
    std::__format_spec::__parser<char>::__validate[abi:ne200100](&v15, 48, "a BOOL", -1);
    if ((v15 & 7) != 0)
    {
      v13 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v13 > 1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      LOBYTE(v15) = v15 | 1;
      v14 = BYTE1(v15);
      *v4 = v12;
      v6 = *(a1 + 8);
      if (v14 > 1)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
    v6 = *(a1 + 8);
  }

  v10 = std::__format_spec::__parser<char>::__get_parsed_std_specifications[abi:ne200100]<std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(&v15, v6);
  result = std::__formatter::__format_BOOL[abi:ne200100]<char,std::basic_format_context<std::back_insert_iterator<std::__format::__output_buffer<char>>,char>>(a2, v6, v10, v11);
  *v6 = result;
  return result;
}

unsigned __int8 *std::__format_spec::__parser<char>::__parse[abi:ne200100]<std::basic_format_parse_context<char>>(_BYTE *a1, unsigned __int8 **a2, __int16 a3)
{
  result = *a2;
  v5 = a2[1];
  v18 = result;
  if (result == v5)
  {
    return result;
  }

  v6 = *result;
  if (v6 == 125 || (a3 & 0x40) != 0 && v6 == 58)
  {
    return result;
  }

  v9 = a1;
  v10 = std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(a1, &v18, v5);
  result = v18;
  if (v10)
  {
    if (v18 == v5)
    {
      return result;
    }
  }

  if (a3)
  {
    v13 = *v18;
    v11 = v9;
    v12 = a2;
    switch(v13)
    {
      case ' ':
        v14 = *v9 | 0x18;
        break;
      case '+':
        v14 = *v9 & 0xE7 | 0x10;
        break;
      case '-':
        v14 = *v9 & 0xE7 | 8;
        break;
      default:
        goto LABEL_16;
    }

    *v9 = v14;
    v18 = ++result;
    if (result == v5)
    {
      return result;
    }
  }

  else
  {
    v11 = v9;
    v12 = a2;
  }

LABEL_16:
  if ((a3 & 2) == 0 || *result != 35 || (*v11 |= 0x20u, ++result, v18 = result, result != v5))
  {
    if ((a3 & 4) == 0 || *result != 48)
    {
      goto LABEL_24;
    }

    if ((*v11 & 7) == 0)
    {
      *v11 |= 4u;
    }

    v18 = ++result;
    if (result != v5)
    {
LABEL_24:
      v15 = std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v11, &v18, v5, v12);
      result = v18;
      if (!v15 || v18 != v5)
      {
        v16 = v9;
        if ((a3 & 8) != 0)
        {
          v17 = std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v9, &v18, v5, a2);
          result = v18;
          if (v17)
          {
            v16 = v9;
            if (v18 == v5)
            {
              return result;
            }
          }

          else
          {
            v16 = v9;
          }
        }

        if ((a3 & 0x10) == 0 || *result != 76 || (*v16 |= 0x40u, ++result, v18 = result, result != v5))
        {
          if ((a3 & 0x80) == 0 || *result != 110 || (*v16 |= 0x80u, ++result, v18 = result, result != v5))
          {
            if ((a3 & 0x20) != 0)
            {
              std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(v16, &v18);
              result = v18;
            }

            if ((a3 & 0x100) != 0 && result != v5 && *result != 125)
            {
              std::__throw_format_error[abi:ne200100]("The format specifier should consume the input or end with a '}'");
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t std::__format_spec::__parser<char>::__parse_fill_align[abi:ne200100]<char const*>(_BYTE *a1, unsigned __int8 **a2, unsigned __int8 *a3)
{
  v16[0] = *a2;
  v16[1] = a3;
  if ((std::__unicode::__code_point_view<char>::__consume[abi:ne200100](v16) & 0x80000000) != 0)
  {
    std::__throw_format_error[abi:ne200100]("The format specifier contains malformed Unicode characters");
  }

  v6 = v16[0];
  if (v16[0] < a3)
  {
    v7 = *v16[0];
    switch(v7)
    {
      case '<':
        v8 = 1;
        goto LABEL_17;
      case '>':
        v8 = 3;
        goto LABEL_17;
      case '^':
        v8 = 2;
LABEL_17:
        *a1 = *a1 & 0xF8 | v8;
        v13 = *a2;
        v14 = v6 - *a2;
        if (v14 == 1)
        {
          v15 = *v13;
          if (v15 == 123)
          {
            std::__throw_format_error[abi:ne200100]("The fill option contains an invalid value");
          }

          a1[12] = v15;
        }

        else if (v6 != v13)
        {
          memmove(a1 + 12, v13, v6 - *a2);
        }

        v11 = &(*a2)[v14];
        goto LABEL_23;
    }
  }

  v9 = **a2;
  switch(v9)
  {
    case '<':
      v10 = 1;
      break;
    case '>':
      v10 = 3;
      break;
    case '^':
      v10 = 2;
      break;
    default:
      return 0;
  }

  *a1 = *a1 & 0xF8 | v10;
  v11 = *a2;
LABEL_23:
  *a2 = v11 + 1;
  return 1;
}

uint64_t std::__format_spec::__parser<char>::__parse_width[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v6 = *a2;
  v7 = **a2;
  if (v7 == 123)
  {
    *a2 = v6 + 1;
    if (v6 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
    }

    v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v6 + 1, a3, a4);
    if (v11 == a3 || *v11 != 125)
    {
      std::__throw_format_error[abi:ne200100]("The argument index is invalid");
    }

    v12 = v11 + 1;
    *(a1 + 2) |= 0x4000u;
  }

  else
  {
    LODWORD(v8) = v7 - 48;
    if (v7 == 48)
    {
      std::__throw_format_error[abi:ne200100]("The width option should not have a leading zero");
    }

    if ((v7 - 58) < 0xFFFFFFF6)
    {
      return 0;
    }

    v13 = v6 + 9;
    if (a3 - v6 <= 9)
    {
      v13 = a3;
    }

    v12 = v6 + 1;
    if (v6 + 1 == v13)
    {
LABEL_17:
      if (v12 == a3)
      {
        v12 = a3;
      }

      else
      {
        v15 = *v12;
        if ((v15 - 48) <= 9)
        {
          v8 = v15 + 10 * v8 - 48;
          if (v8 >> 31 || (v12 = v6 + 2, v6 + 2 != a3) && *v12 - 48 <= 9)
          {
            std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
          }
        }
      }
    }

    else
    {
      v6 = v13 - 1;
      while (1)
      {
        v14 = *v12;
        if ((v14 - 58) < 0xFFFFFFF6)
        {
          break;
        }

        LODWORD(v8) = v14 + 10 * v8 - 48;
        if (++v12 == v13)
        {
          v12 = v13;
          goto LABEL_17;
        }
      }
    }
  }

  *(a1 + 4) = v8;
  *a2 = v12;
  return 1;
}

BOOL std::__format_spec::__parser<char>::__parse_precision[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(uint64_t a1, unsigned __int8 **a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a2;
  v5 = **a2;
  if (v5 == 46)
  {
    v6 = v4 + 1;
    *a2 = v4 + 1;
    if (v4 + 1 == a3)
    {
      std::__throw_format_error[abi:ne200100]("End of input while parsing format specifier precision");
    }

    v7 = *v6;
    if (v7 == 123)
    {
      *a2 = v4 + 2;
      if (v4 + 2 == a3)
      {
        std::__throw_format_error[abi:ne200100]("End of input while parsing an argument index");
      }

      v9 = a2;
      v11 = std::__format::__parse_arg_id[abi:ne200100]<char const*,std::basic_format_parse_context<char>>(v4 + 2, a3, a4);
      if (v11 == a3 || *v11 != 125)
      {
        std::__throw_format_error[abi:ne200100]("The argument index is invalid");
      }

      v13 = v11 + 1;
      *(a1 + 2) |= 0x8000u;
      *(a1 + 8) = v12;
      a2 = v9;
    }

    else
    {
      if ((v7 - 58) <= 0xFFFFFFF5)
      {
        std::__throw_format_error[abi:ne200100]("The precision option does not contain a value or an argument index");
      }

      if (a3 - v6 <= 9)
      {
        v14 = a3;
      }

      else
      {
        v14 = v4 + 10;
      }

      LODWORD(v15) = v7 - 48;
      v13 = v4 + 2;
      if (v13 == v14)
      {
        v14 = v13;
        if (v13 == a3)
        {
LABEL_23:
          v13 = a3;
        }

        else
        {
LABEL_17:
          v17 = *v14;
          if ((v17 - 48) > 9)
          {
            v13 = v14;
          }

          else
          {
            v15 = v17 + 10 * v15 - 48;
            if (v15 >> 31 || (v13 = v6 + 2, v6 + 2 != a3) && *v13 - 48 <= 9)
            {
              std::__throw_format_error[abi:ne200100]("The numeric value of the format specifier is too large");
            }
          }
        }
      }

      else
      {
        v6 = v14 - 1;
        while (1)
        {
          v16 = *v13;
          if ((v16 - 58) < 0xFFFFFFF6)
          {
            break;
          }

          LODWORD(v15) = v16 + 10 * v15 - 48;
          if (++v13 == v14)
          {
            if (v14 == a3)
            {
              goto LABEL_23;
            }

            goto LABEL_17;
          }
        }
      }

      *(a1 + 8) = v15;
      *(a1 + 2) &= ~0x8000u;
    }

    *a2 = v13;
  }

  return v5 == 46;
}

uint64_t std::__format_spec::__parser<char>::__parse_type[abi:ne200100]<char const*>(uint64_t result, void *a2)
{
  v2 = *a2;
  v3 = 12;
  switch(**a2)
  {
    case 'A':
      goto LABEL_19;
    case 'B':
      v3 = 3;
      goto LABEL_19;
    case 'E':
      v3 = 14;
      goto LABEL_19;
    case 'F':
      v3 = 16;
      goto LABEL_19;
    case 'G':
      v3 = 18;
      goto LABEL_19;
    case 'P':
      v3 = 9;
      goto LABEL_19;
    case 'X':
      v3 = 7;
      goto LABEL_19;
    case 'a':
      v3 = 11;
      goto LABEL_19;
    case 'b':
      v3 = 2;
      goto LABEL_19;
    case 'c':
      v3 = 10;
      goto LABEL_19;
    case 'd':
      v3 = 5;
      goto LABEL_19;
    case 'e':
      v3 = 13;
      goto LABEL_19;
    case 'f':
      v3 = 15;
      goto LABEL_19;
    case 'g':
      v3 = 17;
      goto LABEL_19;
    case 'o':
      v3 = 4;
      goto LABEL_19;
    case 'p':
      v3 = 8;
      goto LABEL_19;
    case 's':
      v3 = 1;
      goto LABEL_19;
    case 'x':
      v3 = 6;
LABEL_19:
      *(result + 1) = v3;
      *a2 = v2 + 1;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t std::__unicode::__code_point_view<char>::__consume[abi:ne200100](unsigned __int8 **a1)
{
  v1 = *a1;
  v2 = (__clz(**a1 ^ 0xFF) - 24);
  if (v2 <= 2)
  {
    if (!v2)
    {
      *a1 = v1 + 1;
      return *v1;
    }

    if (v2 == 2 && a1[1] - v1 >= 2)
    {
      v3 = v1 + 1;
      if ((v1[1] & 0xC0) == 0x80)
      {
        *a1 = v3;
        v4 = *v1 & 0x1F;
        *a1 = v1 + 2;
        if (v4 < 2)
        {
          return 2147549181;
        }

        else
        {
          return *v3 & 0x3F | (v4 << 6);
        }
      }
    }

    goto LABEL_28;
  }

  if (v2 != 3)
  {
    if (v2 == 4 && a1[1] - v1 >= 4)
    {
      v6 = (v1[1] & 0xC0) == 128;
      if ((v1[1] & 0xC0) == 0x80)
      {
        v6 = (v1[2] & 0xC0) == 128;
        if ((v1[2] & 0xC0) == 0x80)
        {
          v6 = (v1[3] & 0xC0) == 128;
        }
      }

      if (v6)
      {
        *a1 = v1 + 1;
        v7 = *v1 & 7;
        *a1 = v1 + 2;
        v8 = (v7 << 12) | ((v1[1] & 0x3F) << 6);
        *a1 = v1 + 3;
        v9 = v1[2];
        *a1 = v1 + 4;
        if (v8 >= 0x400)
        {
          v10 = v1[3] & 0x3F | ((v8 | v9 & 0x3F) << 6);
          if (v8 >> 10 >= 0x11)
          {
            return 2147549181;
          }

          else
          {
            return v10;
          }
        }

        return 2147549181;
      }
    }

LABEL_28:
    *a1 = v1 + 1;
    return 2147549181;
  }

  if (a1[1] - v1 < 3)
  {
    goto LABEL_28;
  }

  v11 = (v1[1] & 0xC0) == 128;
  if ((v1[1] & 0xC0) == 0x80)
  {
    v11 = (v1[2] & 0xC0) == 128;
  }

  if (!v11)
  {
    goto LABEL_28;
  }

  *a1 = v1 + 1;
  v12 = *v1 & 0xF;
  *a1 = v1 + 2;
  v13 = (v12 << 12) | ((v1[1] & 0x3F) << 6);
  *a1 = v1 + 3;
  if (v13 < 0x800)
  {
    return 2147549181;
  }

  v14 = v13 | v1[2] & 0x3F;
  if ((v13 & 0xF800) == 0xD800)
  {
    return 2147549181;
  }

  else
  {
    return v14;
  }
}