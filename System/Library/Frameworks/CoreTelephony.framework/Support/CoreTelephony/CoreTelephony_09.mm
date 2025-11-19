void std::__function::__func<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, BOOL *a2)
{
  v4 = xpc_BOOL_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kRegistrationIsDataAttached";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t std::__function::__func<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isDataAttached(xpc::auto_reply)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::~__func(void *a1)
{
  *a1 = &unk_284A6DFA0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::~__func(void *a1)
{
  *a1 = &unk_284A6DFA0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6DFA0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v5 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 1), *(a2 + 2));
    v3 = v5;
  }

  else
  {
    __p = *(a2 + 4);
  }

  if (v3 != 0xFFFF)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      xpc::string("%03d", &v8, v3);
      v7[0] = *(a1 + 8);
      v7[1] = "kRegistrationLastMCC";
      xpc::dict::object_proxy::operator=(v7, &v8, &v9);
      xpc_release(v9);
      v9 = 0;
      xpc_release(v8);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_237464C98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getLastKnownMobileCountryCode(xpc::auto_reply)::$_0>,void ()(MCC)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0>,void ()(NetworkSelectionMode)>::~__func(void *a1)
{
  *a1 = &unk_284A6E020;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0>,void ()(NetworkSelectionMode)>::~__func(void *a1)
{
  *a1 = &unk_284A6E020;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0>,void ()(NetworkSelectionMode)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6E020;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0>,void ()(NetworkSelectionMode)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0>,void ()(NetworkSelectionMode)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0>,void ()(NetworkSelectionMode)>::operator()(uint64_t a1, int *a2)
{
  v4 = xpc_int64_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kRegistrationNetworkSelectionMode";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t std::__function::__func<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionMode(xpc::auto_reply)::$_0>,void ()(NetworkSelectionMode)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(NetworkSelectionMode)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0>,void ()(NetworkSelectionState)>::~__func(void *a1)
{
  *a1 = &unk_284A6E0B0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0>,void ()(NetworkSelectionState)>::~__func(void *a1)
{
  *a1 = &unk_284A6E0B0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0>,void ()(NetworkSelectionState)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6E0B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0>,void ()(NetworkSelectionState)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0>,void ()(NetworkSelectionState)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0>,void ()(NetworkSelectionState)>::operator()(uint64_t a1, int *a2)
{
  v4 = xpc_int64_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kRegistrationNetworkSelectionState";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t std::__function::__func<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkSelectionState(xpc::auto_reply)::$_0>,void ()(NetworkSelectionState)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(NetworkSelectionState)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A6E140;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_284A6E140;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6E140;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, BOOL *a2)
{
  v4 = xpc_BOOL_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kSubscriberNetworkSelectionMenuAvailable";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t std::__function::__func<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::isNetworkSelectionMenuEnabled(xpc::auto_reply)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RegistrationInterface::fetchNetworkList(void)::$_0,std::allocator<RegistrationInterface::fetchNetworkList(void)::$_0>,void ()(CTError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RegistrationInterface::automaticallySelectNetwork(void)::$_0,std::allocator<RegistrationInterface::automaticallySelectNetwork(void)::$_0>,void ()(CTError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<RegistrationInterface::selectNetwork(std::string const&)::$_0,std::allocator<RegistrationInterface::selectNetwork(std::string const&)::$_0>,void ()(CTError)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0>,void ()(NetworkListOperator)>::~__func(void *a1)
{
  *a1 = &unk_284A6E340;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0>,void ()(NetworkListOperator)>::~__func(void *a1)
{
  *a1 = &unk_284A6E340;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0>,void ()(NetworkListOperator)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6E340;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0>,void ()(NetworkListOperator)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0>,void ()(NetworkListOperator)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0>,void ()(NetworkListOperator)>::operator()(uint64_t a1, uint64_t a2)
{
  *v9 = *a2;
  v10 = *(a2 + 16);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  LODWORD(value) = *(a2 + 24);
  v12 = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v13, *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v13 = *(a2 + 40);
  }

  v14 = *(a2 + 64);
  if (*(a2 + 95) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a2 + 72), *(a2 + 80));
  }

  else
  {
    v15 = *(a2 + 72);
  }

  *__p = *(a2 + 96);
  v17 = *(a2 + 112);
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 96) = 0;
  v18 = *(a2 + 120);
  v29 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v29 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v29 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_14;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_15;
  }

  v6 = xpc_null_create();
LABEL_14:
  v29 = v6;
LABEL_15:
  xpc_release(v5);
  v24 = 0;
  v25 = 0;
  NetworkListOperator::getLocalizedCompositeName(v9, &v24, 1, &v26);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v26;
  }

  else
  {
    v7 = v26.__r_.__value_.__r.__words[0];
  }

  v27 = xpc_string_create(v7);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  v23[0] = &v29;
  v23[1] = "kCTRegistrationNetworkName";
  xpc::dict::object_proxy::operator=(v23, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  NetworkListOperator::getKey(v9, &v26);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v26;
  }

  else
  {
    v8 = v26.__r_.__value_.__r.__words[0];
  }

  v22 = xpc_string_create(v8);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v24 = &v29;
  v25 = "kCTRegistrationNetworkCode";
  xpc::dict::object_proxy::operator=(&v24, &v22, v23);
  xpc_release(v23[0]);
  v23[0] = 0;
  xpc_release(v22);
  v22 = 0;
  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  v21 = xpc_int64_create(value);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v26.__r_.__value_.__r.__words[0] = &v29;
  v26.__r_.__value_.__l.__size_ = "kCTRegistrationRadioAccessTechnology";
  xpc::dict::object_proxy::operator=(&v26, &v21, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v21);
  v21 = 0;
  object = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    object = xpc_null_create();
  }

  v26.__r_.__value_.__r.__words[0] = *(a1 + 8);
  v26.__r_.__value_.__l.__size_ = "kRegistrationCurrentNetworkSelection";
  xpc::dict::object_proxy::operator=(&v26, &object, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(object);
  object = 0;
  xpc_release(v29);
  if (SHIBYTE(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_237465D00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getSelectedNetwork(xpc::auto_reply)::$_0>,void ()(NetworkListOperator)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void NetworkListOperator::~NetworkListOperator(void **this)
{
  if (*(this + 119) < 0)
  {
    operator delete(this[12]);
  }

  if (*(this + 95) < 0)
  {
    operator delete(this[9]);
  }

  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t std::__function::__value_func<void ()(NetworkListOperator)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0>,void ()(std::vector<NetworkListOperator>)>::~__func(void *a1)
{
  *a1 = &unk_284A6E3D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0>,void ()(std::vector<NetworkListOperator>)>::~__func(void *a1)
{
  *a1 = &unk_284A6E3D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0>,void ()(std::vector<NetworkListOperator>)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A6E3D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0>,void ()(std::vector<NetworkListOperator>)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0>,void ()(std::vector<NetworkListOperator>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0>,void ()(std::vector<NetworkListOperator>)>::operator()(uint64_t a1, __int128 *a2)
{
  v14 = *a2;
  v15 = *(a2 + 2);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v3) == MEMORY[0x277D86440])
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
  v5 = v14;
  if (v14 != *(&v14 + 1))
  {
    v6 = MEMORY[0x277D86468];
    do
    {
      v26[0] = 0;
      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v7)
      {
        v26[0] = v7;
      }

      else
      {
        v8 = xpc_null_create();
        v26[0] = v8;
        if (!v8)
        {
          v9 = xpc_null_create();
          v8 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x2383CC760](v8) != v6)
      {
        v9 = xpc_null_create();
LABEL_16:
        v26[0] = v9;
        goto LABEL_17;
      }

      xpc_retain(v8);
LABEL_17:
      xpc_release(v8);
      v21 = 0;
      v22 = 0;
      NetworkListOperator::getLocalizedCompositeName(v5, &v21, 1, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      v24 = xpc_string_create(p_p);
      if (!v24)
      {
        v24 = xpc_null_create();
      }

      v20[0] = v26;
      v20[1] = "kCTRegistrationNetworkName";
      xpc::dict::object_proxy::operator=(v20, &v24, &v25);
      xpc_release(v25);
      v25 = 0;
      xpc_release(v24);
      v24 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v22);
      }

      NetworkListOperator::getKey(v5, &__p);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v11 = &__p;
      }

      else
      {
        v11 = __p.__r_.__value_.__r.__words[0];
      }

      v18 = xpc_string_create(v11);
      if (!v18)
      {
        v18 = xpc_null_create();
      }

      v21 = v26;
      v22 = "kCTRegistrationNetworkCode";
      xpc::dict::object_proxy::operator=(&v21, &v18, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v18);
      v18 = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v16 = xpc_int64_create(v5[6]);
      if (!v16)
      {
        v16 = xpc_null_create();
      }

      __p.__r_.__value_.__r.__words[0] = v26;
      __p.__r_.__value_.__l.__size_ = "kCTRegistrationRadioAccessTechnology";
      xpc::dict::object_proxy::operator=(&__p, &v16, &v17);
      xpc_release(v17);
      v17 = 0;
      xpc_release(v16);
      v16 = 0;
      xpc_array_append_value(v4, v26[0]);
      xpc_release(v26[0]);
      v5 += 34;
    }

    while (v5 != *(&v14 + 1));
  }

  v20[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
    v12 = a1;
  }

  else
  {
    v13 = xpc_null_create();
    v12 = a1;
    v20[0] = v13;
  }

  __p.__r_.__value_.__r.__words[0] = *(v12 + 8);
  __p.__r_.__value_.__l.__size_ = "kRegistrationNetworkList";
  xpc::dict::object_proxy::operator=(&__p, v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20[0]);
  v20[0] = 0;
  xpc_release(v4);
  __p.__r_.__value_.__r.__words[0] = &v14;
  std::vector<NetworkListOperator>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_2374663E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void **a22)
{
  xpc_release(*(v23 - 96));
  xpc_release(v22);
  a22 = &a11;
  std::vector<NetworkListOperator>::__destroy_vector::operator()[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0,std::allocator<RegistrationInterface::getNetworkList(xpc::auto_reply)::$_0>,void ()(std::vector<NetworkListOperator>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::vector<NetworkListOperator>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (*(v4 - 17) < 0)
        {
          operator delete(*(v4 - 5));
        }

        if (*(v4 - 41) < 0)
        {
          operator delete(*(v4 - 8));
        }

        if (*(v4 - 73) < 0)
        {
          operator delete(*(v4 - 12));
        }

        v6 = v4 - 17;
        if (*(v4 - 113) < 0)
        {
          operator delete(*v6);
        }

        v4 -= 17;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(std::vector<NetworkListOperator>)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL du::policy::Policies::operator==(int *a1, int *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 == v3 && v2 != 0)
  {
    v2 = *a1;
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 12);
  v6 = *(a2 + 12);
  if (v5 == v6 && v5 != 0)
  {
    v5 = a1[2];
    v6 = a2[2];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = *(a1 + 20);
  v9 = *(a2 + 20);
  if (v8 == v9 && *(a1 + 20))
  {
    v8 = a1[4];
    v9 = a2[4];
  }

  return v8 == v9 && *(a1 + 24) == *(a2 + 24) && *(a1 + 25) == *(a2 + 25);
}

_DWORD *du::policy::AuthorizationProperties::AuthorizationProperties(_DWORD *result, int a2, int a3)
{
  *result = a2;
  result[1] = a3;
  return result;
}

{
  *result = a2;
  result[1] = a3;
  return result;
}

std::string *du::policy::BundleProperties::BundleProperties(std::string *this, __int128 *a2, __int128 *a3, uint64_t *a4)
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

  v8 = *a3;
  *(&this[1].__r_.__value_.__r.__words[1] + 4) = *(a3 + 12);
  *&this[1].__r_.__value_.__l.__data_ = v8;
  this[2].__r_.__value_.__s.__data_[4] = 0;
  v9 = *a4;
  Registry::throwIfNotInitialized(*a4);
  v10 = *(v9 + 24);
  v11 = off_284A661F8;
  if ((off_284A661F8 & 0x8000000000000000) != 0)
  {
    v12 = (off_284A661F8 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(v10 + 3);
  v31 = v11;
  v15 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v10[4].__m_.__sig, &v31);
  if (v15)
  {
    v17 = v15[3];
    v16 = v15[4];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10 + 3);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v16);
      v18 = 0;
      goto LABEL_12;
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10 + 3);
  v16 = 0;
  v18 = 1;
LABEL_12:
  v19 = (*(*v17 + 128))(v17, this);
  if ((v18 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if ((v19 & 1) == 0)
  {
    v20 = *a4;
    Registry::throwIfNotInitialized(v20);
    v21 = *(v20 + 24);
    v22 = off_284A68390;
    if ((off_284A68390 & 0x8000000000000000) != 0)
    {
      v23 = (off_284A68390 & 0x7FFFFFFFFFFFFFFFLL);
      v24 = 5381;
      do
      {
        v22 = v24;
        v25 = *v23++;
        v24 = (33 * v24) ^ v25;
      }

      while (v25);
    }

    std::mutex::lock(v21 + 3);
    v31 = v22;
    v26 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v21[4].__m_.__sig, &v31);
    if (v26)
    {
      v28 = v26[3];
      v27 = v26[4];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v21 + 3);
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        v29 = 0;
        if (!v28)
        {
LABEL_25:
          if ((v29 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v27);
          }

          return this;
        }

LABEL_24:
        this[2].__r_.__value_.__s.__data_[4] = (*(*v28 + 48))(v28, this);
        goto LABEL_25;
      }
    }

    else
    {
      v28 = 0;
    }

    std::mutex::unlock(v21 + 3);
    v27 = 0;
    v29 = 1;
    if (!v28)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  return this;
}

void sub_237466904(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL du::policy::BundleProperties::operator==(const void **a1, int *a2)
{
  if (*(a1 + 52) != *(a2 + 52))
  {
    return 0;
  }

  result = du::policy::Policies::operator==(a1 + 6, a2 + 6);
  if (result)
  {
    v5 = *(a1 + 23);
    if (v5 >= 0)
    {
      v6 = *(a1 + 23);
    }

    else
    {
      v6 = a1[1];
    }

    v7 = *(a2 + 23);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v6 == v7)
    {
      if (v5 >= 0)
      {
        v9 = a1;
      }

      else
      {
        v9 = *a1;
      }

      v10 = *a2;
      if (v8 >= 0)
      {
        v11 = a2;
      }

      else
      {
        v11 = *a2;
      }

      return memcmp(v9, v11, v6) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t du::policy::Change::Change(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v10[0] = *(a2 + 24);
  *(v10 + 13) = *(a2 + 37);
  Current = CFAbsoluteTimeGetCurrent();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a1 + 24) = v10[0];
    *(a1 + 36) = *(v10 + 12);
    *(a1 + 52) = a3;
    *(a1 + 64) = Current;
    if (v7 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = __p;
    *(a1 + 24) = v10[0];
    *(a1 + 36) = *(v10 + 12);
    *(a1 + 52) = a3;
    *(a1 + 64) = Current;
  }

  return a1;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  v10[0] = *(a2 + 24);
  *(v10 + 13) = *(a2 + 37);
  Current = CFAbsoluteTimeGetCurrent();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a1, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    *(a1 + 24) = v10[0];
    *(a1 + 36) = *(v10 + 12);
    *(a1 + 52) = a3;
    *(a1 + 64) = Current;
    if (v7 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    *a1 = __p;
    *(a1 + 24) = v10[0];
    *(a1 + 36) = *(v10 + 12);
    *(a1 + 52) = a3;
    *(a1 + 64) = Current;
  }

  return a1;
}

void sub_237466AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *du::policy::Change::Change(std::string *this, __int128 *a2, std::string::size_type a3, double a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  v9 = *(a2 + 24);
  *(&this[1].__r_.__value_.__r.__words[1] + 4) = *(a2 + 36);
  *&this[1].__r_.__value_.__l.__data_ = v9;
  *(this[2].__r_.__value_.__r.__words + 4) = a3;
  *&this[2].__r_.__value_.__r.__words[2] = a4;
  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v8;
  }

  v9 = *(a2 + 24);
  *(&this[1].__r_.__value_.__r.__words[1] + 4) = *(a2 + 36);
  *&this[1].__r_.__value_.__l.__data_ = v9;
  *(this[2].__r_.__value_.__r.__words + 4) = a3;
  *&this[2].__r_.__value_.__r.__words[2] = a4;
  return this;
}

void sub_237466C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string *du::policy::Change::Change(std::string *this, __int128 *a2, __int128 *a3, std::string::size_type a4, double a5)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  v10 = *a3;
  *(&this[1].__r_.__value_.__r.__words[1] + 4) = *(a3 + 12);
  *&this[1].__r_.__value_.__l.__data_ = v10;
  *(this[2].__r_.__value_.__r.__words + 4) = a4;
  *&this[2].__r_.__value_.__r.__words[2] = a5;
  return this;
}

{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v9 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v9;
  }

  v10 = *a3;
  *(&this[1].__r_.__value_.__r.__words[1] + 4) = *(a3 + 12);
  *&this[1].__r_.__value_.__l.__data_ = v10;
  *(this[2].__r_.__value_.__r.__words + 4) = a4;
  *&this[2].__r_.__value_.__r.__words[2] = a5;
  return this;
}

const char *asString(uint64_t a1)
{
  v1 = "???";
  if (a1 == 1)
  {
    v1 = "kAllow";
  }

  if (!a1)
  {
    v1 = "kDeny";
  }

  if ((a1 & 0x100000000) != 0)
  {
    return v1;
  }

  else
  {
    return "N/A";
  }
}

void sub_2374672CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ostringstream::~ostringstream(&a9, MEMORY[0x277D82828]);
  MEMORY[0x2383CBE70](v9 + 112);
  _Unwind_Resume(a1);
}

void PreferredNetworksCommandDriverEventHandler::~PreferredNetworksCommandDriverEventHandler(PreferredNetworksCommandDriverEventHandler *this)
{
  *this = &unk_284A6E798;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t PreferredNetworksCommandDriver::PreferredNetworksCommandDriver(uint64_t result, void *a2)
{
  *result = &unk_284A6E7D8;
  *(result + 8) = 0;
  *(result + 9) = 0;
  v2 = a2[1];
  *(result + 24) = *a2;
  *(result + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void PreferredNetworksCommandDriver::~PreferredNetworksCommandDriver(PreferredNetworksCommandDriver *this)
{
  *this = &unk_284A6E7D8;
  v1 = *(this + 4);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::vector<unsigned char>::insert(uint64_t a1, char *__src, char *a3)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = &v6[-*a1 + 1];
    if (v11 < 0)
    {
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v12 = v7 - v10;
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      operator new();
    }

    v14 = (__src - v10);
    if (__src == v10)
    {
      operator new();
    }

    *v14 = *a3;
    memcpy(v14 + 1, __src, *(a1 + 8) - __src);
    v15 = *a1;
    v16 = &v14[*(a1 + 8) - __src + 1];
    *(a1 + 8) = __src;
    v17 = &v14[v15 - __src];
    memcpy(v17, v15, __src - v15);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v16;
    *(a1 + 16) = 0;
    if (v18)
    {

      operator delete(v18);
    }
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    *(a1 + 8) = v6 + 1;
  }

  else
  {
    v8 = __src + 1;
    if (v6)
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 1;
    }

    else
    {
      v9 = 0;
    }

    *(a1 + 8) = v9;
    if (v6 != v8)
    {
      memmove(__src + 1, __src, v6 - v8);
    }

    *__src = *a3;
  }
}

void sub_237467658(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void PreferredNetworksCommandDriver::setImsi(uint64_t a1, std::string *__str)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  size = __str->__r_.__value_.__l.__size_;
  if ((v3 & 0x80u) == 0)
  {
    v5 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  }

  else
  {
    v5 = __str->__r_.__value_.__l.__size_;
  }

  if (v5)
  {
    v6 = __str;
    v29 = 0;
    v28 = 0;
    if ((v3 & 0x80) != 0)
    {
      if (size - 16 >= 0xFFFFFFFFFFFFFFF1)
      {
        v26 = 0uLL;
        v27 = 0;
        if ((size & 1) == 0)
        {
          memset(&v25, 0, sizeof(v25));
          std::string::__init_copy_ctor_external(&v25, __str->__r_.__value_.__l.__data_, size);
          goto LABEL_14;
        }

        v3 = size;
LABEL_22:
        memset(&v25, 0, sizeof(v25));
        std::string::basic_string(&v25, __str, 1uLL, v3 - 1, &v23);
        v14 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v15 = &v25;
        }

        else
        {
          v15 = v25.__r_.__value_.__r.__words[0];
        }

        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v14 = v25.__r_.__value_.__l.__size_;
        }

        if (v14)
        {
          v16 = &v15->__r_.__value_.__s.__data_[1];
          do
          {
            if (v14 == 1)
            {
              break;
            }

            v17 = *(v16 - 1);
            *(v16 - 1) = *v16;
            *v16 = v17;
            v16 += 2;
            v14 -= 2;
          }

          while (v14);
        }

        ctu::parse_hex();
        v18 = SHIBYTE(v6->__r_.__value_.__r.__words[2]);
        v26 = v23;
        v27 = v24;
        if (v18 < 0)
        {
          if (!v6->__r_.__value_.__l.__size_)
          {
            goto LABEL_46;
          }

          v6 = v6->__r_.__value_.__r.__words[0];
        }

        else if (!v18)
        {
LABEL_46:
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v19 = v23;
        LOBYTE(v23) = (16 * v6->__r_.__value_.__s.__data_[0]) | 9;
        std::vector<unsigned char>::insert(&v26, v19, &v23);
LABEL_37:
        if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v25.__r_.__value_.__l.__data_);
        }

        v20 = v26;
        v21 = BYTE8(v26) - v26;
        if (*(&v26 + 1) != v26)
        {
          memcpy(&v28 + 1, v26, *(&v26 + 1) - v26);
        }

        LOBYTE(v28) = v21;
        if (v20)
        {
          operator delete(v20);
        }

        v8 = v28;
        v7 = v29;
        goto LABEL_44;
      }
    }

    else if ((v3 - 16) >= 0xFFFFFFF1)
    {
      v26 = 0uLL;
      v27 = 0;
      if ((v3 & 1) == 0)
      {
        v25 = *__str;
LABEL_14:
        v9 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
        v10 = &v25;
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v9 = v25.__r_.__value_.__l.__size_;
          v10 = v25.__r_.__value_.__r.__words[0];
        }

        if (v9)
        {
          v11 = &v10->__r_.__value_.__s.__data_[1];
          do
          {
            if (v9 == 1)
            {
              break;
            }

            v12 = *(v11 - 1);
            *(v11 - 1) = *v11;
            *v11 = v12;
            v11 += 2;
            v9 -= 2;
          }

          while (v9);
        }

        ctu::parse_hex();
        v26 = v23;
        v27 = v24;
        v13 = v23;
        LOBYTE(v23) = -7;
        std::vector<unsigned char>::insert(&v26, v13, &v23);
        goto LABEL_37;
      }

      goto LABEL_22;
    }

    v7 = 0;
    v8 = 0;
LABEL_44:
    *(a1 + 8) = v8;
    *(a1 + 16) = v7;
    goto LABEL_45;
  }

  *(a1 + 8) = 0;
  *(a1 + 9) = 0;
LABEL_45:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_237467900(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_237467D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 57) < 0)
  {
    operator delete(*(v54 - 80));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v54 - 89) < 0)
  {
    operator delete(*(v54 - 112));
  }

  if (*(v54 - 121) < 0)
  {
    operator delete(*(v54 - 144));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v54 - 153) < 0)
  {
    operator delete(*(v54 - 176));
  }

  if (a54 < 0)
  {
    operator delete(a49);
  }

  if (a47 < 0)
  {
    operator delete(a42);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t operator++(_DWORD *a1)
{
  v1 = (2 * *a1);
  *a1 = v1;
  return v1;
}

uint64_t std::shared_ptr<Registry>::~shared_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::atomic_load[abi:ne200100]<Registry>(void *a1@<X0>, void *a2@<X8>)
{
  sp_mut = std::__get_sp_mut(a1);
  std::__sp_mut::lock(sp_mut);
  v5 = a1[1];
  *a2 = *a1;
  a2[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  std::__sp_mut::unlock(sp_mut);
}

void Registry::set(uint64_t *a1)
{
  v1 = a1[1];
  v3 = *a1;
  v4 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  std::atomic_store[abi:ne200100]<Registry>(&v3);
  v2 = v4;
  if (v4)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

void sub_237467FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::atomic_store[abi:ne200100]<Registry>(uint64_t *a1)
{
  std::__sp_mut::lock(sp_mut);
  v4 = a1[1];
  *a1 = v3;
  v5 = qword_280CE85D0;
  qword_280CE85D0 = v4;
  a1[1] = v5;

  std::__sp_mut::unlock(sp_mut);
}

void Registry::destroy(Registry *this)
{
  v2 = 0;
  v3 = 0;
  std::atomic_store[abi:ne200100]<Registry>(&v2);
  v1 = v3;
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void sub_2374680B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Registry::createRestModuleOneTimeUseConnection(Registry *this)
{
  v2 = *(*(this + 3) + 344);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t Registry::createRestModuleOneTimeUseMobileHelperConnection(Registry *this)
{
  v2 = *(*(this + 3) + 376);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

uint64_t Registry::getCommandDriversFactory@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 16);
  v3 = *(v2 + 24);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

char **Registry::getMockTimerService@<X0>(Registry *this@<X0>, char ***a2@<X8>)
{
  v3 = *(this + 3);
  result = *(v3 + 32);
  if (result && (v5 = **result, (result = __dynamic_cast(result, MEMORY[0x277D82450], MEMORY[0x277D82448], 0)) != 0))
  {
    v6 = *(v3 + 40);
    *a2 = result;
    a2[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t Registry::getServiceManager@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 48);
  v3 = *(v2 + 56);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getRestServer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *v2;
  v3 = v2[1];
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getXpcJetsamAssertionManager@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 64);
  v3 = *(v2 + 72);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getWisServerConnection@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 80);
  v3 = *(v2 + 88);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getMobileHelper@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 128);
  v3 = *(v2 + 136);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getFileSystemInterface@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 144);
  v3 = *(v2 + 152);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getNotificationSenderFactory@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 160);
  v3 = *(v2 + 168);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getServerConnection@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 96);
  v3 = *(v2 + 104);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getRouterServer@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 112);
  v3 = *(v2 + 120);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

uint64_t Registry::getTelephonyCapabilities@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  v2 = *(this + 24);
  v4 = *(v2 + 176);
  v3 = *(v2 + 184);
  *a2 = v4;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

void std::__shared_ptr_emplace<Registry>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A6E880;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

void std::__shared_ptr_emplace<Registry>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

const char *sms::asString(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A31488[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A314A0[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_278A314B8[a1];
  }
}

{
  if (a1 > 9)
  {
    return "???";
  }

  else
  {
    return off_278A314F0[a1];
  }
}

{
  if (a1 > 7)
  {
    return "???";
  }

  else
  {
    return off_278A31540[a1];
  }
}

{
  if (a1 > 6)
  {
    return "???";
  }

  else
  {
    return off_278A31580[a1];
  }
}

{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_278A315B8[a1];
  }
}

const char *sms::asString(int a1)
{
  v1 = "e911 Call End";
  v2 = "???";
  if (a1 == 16)
  {
    v2 = "e911 Call Start";
  }

  if (a1 != 32)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return "None";
  }
}

{
  if (a1 <= 40)
  {
    if (a1 > 21)
    {
      if (a1 > 28)
      {
        switch(a1)
        {
          case 29:
            return "kRP_FacilityRejected";
          case 30:
            return "kRP_UnknownSubscriber";
          case 38:
            return "kRP_NetworkOutofOrder";
        }
      }

      else
      {
        switch(a1)
        {
          case 22:
            return "kRP_MemoryCapacityExceeded";
          case 27:
            return "kRP_DestOutofOrder";
          case 28:
            return "kRP_UnidentifiedSubscriber";
        }
      }
    }

    else if (a1 > 9)
    {
      switch(a1)
      {
        case 10:
          return "kRP_CallBarred";
        case 11:
          return "kRP_Reserved";
        case 21:
          return "kRP_TransferRejected";
      }
    }

    else
    {
      switch(a1)
      {
        case 0:
          return "kRP_Undefined";
        case 1:
          return "kRP_UnassignedNumber";
        case 8:
          return "kRP_OperatorDetBarring";
      }
    }

    return "???";
  }

  if (a1 <= 94)
  {
    if (a1 > 49)
    {
      switch(a1)
      {
        case '2':
          return "kRP_RequestedFacilityNotSub";
        case 'E':
          return "kRP_RequesctedFacilityNotImp";
        case 'Q':
          return "kRP_InvalidShortMsgTransRefValue";
      }
    }

    else
    {
      switch(a1)
      {
        case ')':
          return "kRP_TempFailure";
        case '*':
          return "kRP_Congestion";
        case '/':
          return "kRP_ResourcesUnavailable";
      }
    }

    return "???";
  }

  if (a1 > 97)
  {
    if (a1 > 110)
    {
      if (a1 == 111)
      {
        return "kRP_ProtocolError";
      }

      if (a1 == 127)
      {
        return "kRP_Interworking";
      }
    }

    else
    {
      if (a1 == 98)
      {
        return "kRP_MessageNotCompatibleWithShortMsgState";
      }

      if (a1 == 99)
      {
        return "kRP_InfomationElementNonExistOrNotImp";
      }
    }

    return "???";
  }

  if (a1 == 95)
  {
    return "kRP_SemanticallyIncorrectMsg";
  }

  if (a1 == 96)
  {
    return "kRP_InvalidMantadoryInformation";
  }

  return "kRP_MessageTypeNonExistentOrNotImp";
}

{
  if (a1 <= 160)
  {
    if (a1 > 143)
    {
      if (a1 > 158)
      {
        if (a1 == 159)
        {
          return "kTP_UnspecifiedTPDCSError";
        }

        else
        {
          return "kTP_CommandCannotBeActioned";
        }
      }

      if (a1 == 144)
      {
        return "kTP_DataCodingSchemeNotSupported";
      }

      if (a1 == 145)
      {
        return "kTP_MessageClassNotSupported";
      }
    }

    else if (a1 > 129)
    {
      if (a1 == 130)
      {
        return "kTP_CannotReplaceShortMessage";
      }

      if (a1 == 143)
      {
        return "kTP_UnspecifiedTPPIDError";
      }
    }

    else
    {
      if (a1 == 128)
      {
        return "kTP_TelematicInterworkingNotSupported";
      }

      if (a1 == 129)
      {
        return "kTP_ShortMessageType0NotSupported";
      }
    }

    return "???";
  }

  switch(a1)
  {
    case 175:
      return "kTP_UnspecifiedTPCommandError";
    case 176:
      return "kTP_TPPDUNotSupported";
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 200:
    case 201:
    case 202:
    case 203:
    case 204:
    case 205:
    case 206:
    case 207:
      return "???";
    case 192:
      return "kTP_SCBusy";
    case 193:
      return "kTP_NoSCSubscription";
    case 194:
      return "kTP_SCSystemFailure";
    case 195:
      return "kTP_InvalidSMEAddress";
    case 196:
      return "kTP_DestinationSMEBarred";
    case 197:
      return "kTP_SMRejectedDuplicateSM";
    case 198:
      return "kTP_TPVPFNotSupported";
    case 199:
      return "kTP_TPVPNotSupported";
    case 208:
      return "kTP_SIMSMSStorageFull";
    case 209:
      return "kTP_NoSMSStorageCapabilityInSIM";
    case 210:
      return "kTP_ErrorInMS";
    case 211:
      return "kTP_MemoryCapacityExceeded";
    case 212:
      return "kTP_SIMApplicationToolkitBusy";
    case 213:
      return "kTP_SIMDataDownloadError";
    default:
      if (a1 == 161)
      {
        result = "kTP_CommandUnsupported";
      }

      else
      {
        if (a1 != 255)
        {
          return "???";
        }

        result = "kTP_UnspecifiedError";
      }

      break;
  }

  return result;
}

{
  v1 = a1 - 300;
  result = "kCMS_MEFailure";
  switch(v1)
  {
    case 0:
      return result;
    case 1:
      result = "kCMS_SMSServiceOfMEReserved";
      break;
    case 2:
      result = "kCMS_OperationNotAllowed";
      break;
    case 3:
      result = "kCMS_OperationNotSupported";
      break;
    case 4:
      result = "kCMS_InvalidPDUModeParameter";
      break;
    case 5:
      result = "kCMS_InvalidTextModeParameter";
      break;
    case 6:
    case 7:
    case 8:
    case 9:
    case 19:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
      goto LABEL_5;
    case 10:
      result = "kCMS_SIMNotInserted";
      break;
    case 11:
      result = "kCMS_SIMPINRequired";
      break;
    case 12:
      result = "kCMS_PHSIMPINRequired";
      break;
    case 13:
      result = "kCMS_SIMFailure";
      break;
    case 14:
      result = "kCMS_SIMBusy";
      break;
    case 15:
      result = "kCMS_SIMWrong";
      break;
    case 16:
      result = "kCMS_SIMPUKRRequired";
      break;
    case 17:
      result = "kCMS_SIMPIN2Required";
      break;
    case 18:
      result = "kCMS_SIMPUK2Required";
      break;
    case 20:
      result = "kCMS_MemoryFailure";
      break;
    case 21:
      result = "kCMS_InvalidMemoryIndex";
      break;
    case 22:
      result = "kCMS_MemoryFull";
      break;
    case 30:
      result = "kCMS_SMSCAddressUnknown";
      break;
    case 31:
      result = "kCMS_NoNetworkService";
      break;
    case 32:
      result = "kCMS_NetworkTimeout";
      break;
    case 40:
      result = "kCMS_NoCNMAAckExpected";
      break;
    default:
      if ("kCMS_MEFailure" == 500)
      {
        result = "kCMS_UnknownError";
      }

      else
      {
LABEL_5:
        result = "???";
      }

      break;
  }

  return result;
}

{
  v1 = "???";
  if (!a1)
  {
    v1 = "Baseband";
  }

  if (a1 == 1)
  {
    return "AP";
  }

  else
  {
    return v1;
  }
}

void *sms::operator<<(void *a1, unsigned int *a2)
{
  v3 = sms::asString(*a2);
  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

void *sms::operator<<(void *a1, unsigned int a2)
{
  v3 = sms::asString(a2);
  v4 = strlen(v3);

  return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v3, v4);
}

uint64_t sms::MTSmsDetails::MTSmsDetails(uint64_t a1, int a2, int a3, int a4, uint64_t *a5, char a6, char a7)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 16, *a5, a5[1], a5[1] - *a5);
  *(a1 + 40) = a6;
  *(a1 + 41) = a7;
  return a1;
}

{
  *a1 = a2;
  *(a1 + 4) = a3;
  *(a1 + 8) = a4;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 16) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(a1 + 16, *a5, a5[1], a5[1] - *a5);
  *(a1 + 40) = a6;
  *(a1 + 41) = a7;
  return a1;
}

BOOL sms::MTSmsDetails::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (*(a1 + 4) == *(a2 + 4) && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24) - v4;
    v6 = *(a2 + 16);
    if (v5 == *(a2 + 24) - v6 && !memcmp(v4, v6, v5) && *(a1 + 40) == *(a2 + 40))
    {
      return *(a1 + 41) == *(a2 + 41);
    }
  }

  return 0;
}

void sms::MTSmsDetails::~MTSmsDetails(sms::MTSmsDetails *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {
    *(this + 3) = v2;
    operator delete(v2);
  }
}

sms::MTSmsDetails *sms::MTSmsDetails::MTSmsDetails(sms::MTSmsDetails *this, const sms::MTSmsDetails *a2)
{
  *this = *a2;
  *(this + 2) = *(a2 + 2);
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  std::vector<unsigned char>::__init_with_size[abi:ne200100]<unsigned char *,unsigned char *>(this + 16, *(a2 + 2), *(a2 + 3), *(a2 + 3) - *(a2 + 2));
  *(this + 20) = *(a2 + 20);
  return this;
}

uint64_t DataiRatControllerInterface::getCriticalConnType(int a1)
{
  if (a1 == 1)
  {
    return 17;
  }

  else
  {
    return 36;
  }
}

uint64_t AppType::asString@<X0>(AppType *this@<X0>, _BYTE *a2@<X8>)
{
  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v4 = *this + 1;
  if (v4 > 4)
  {
    v5 = "???";
  }

  else
  {
    v5 = off_278A315E8[v4];
  }

  v6 = strlen(v5);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v13, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ":", 1);
  v9 = *(this + 1);
  if (v9 > 2)
  {
    v10 = "???";
  }

  else
  {
    v10 = off_278A315D0[v9];
  }

  v11 = strlen(v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::ostringstream::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x277D82828];
  *(&v14[-1] + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v13 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v18);
}

uint64_t asString@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v24 = 0;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  *v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v18);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, "{ ", 2);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v17 = *(v5 + 28);
      LOBYTE(__p[0]) = 40;
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, __p, 1);
      AppType::asString(&v17, __p);
      if ((v16 & 0x80u) == 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = __p[0];
      }

      if ((v16 & 0x80u) == 0)
      {
        v9 = v16;
      }

      else
      {
        v9 = __p[1];
      }

      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ") ", 2);
      if (v16 < 0)
      {
        operator delete(__p[0]);
      }

      v11 = v5[1];
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
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v4);
  }

  LOBYTE(__p[0]) = 125;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v18, __p, 1);
  std::ostringstream::str[abi:ne200100](&v18, a2);
  *&v18 = *MEMORY[0x277D82828];
  *(&v19[-1] + *(v18 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v18 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  *(&v18 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v19);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v23);
}

{
  v21 = 0;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  *__p = 0u;
  v18 = 0u;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v15);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "{ ", 2);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      v7 = *(v5 + 7) + 1;
      v8 = "???";
      if (v7 <= 4)
      {
        v8 = off_278A315E8[v7];
      }

      v9 = strlen(v8);
      v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, v8, v9);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " ", 1);
      v11 = v5[1];
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
        do
        {
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v4);
  }

  v22 = 125;
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, &v22, 1);
  std::ostringstream::str[abi:ne200100](&v15, a2);
  *&v15 = *MEMORY[0x277D82828];
  *(&v16[-1] + *(v15 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v15 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v15 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v16);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v20);
}

uint64_t AppTypeStatus::asString@<X0>(AppTypeStatus *this@<X0>, _BYTE *a2@<X8>)
{
  v35 = 0;
  v33 = 0u;
  memset(v34, 0, sizeof(v34));
  *__p = 0u;
  v32 = 0u;
  v29 = 0u;
  memset(v30, 0, sizeof(v30));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "connID: ", 8);
  v5 = *(this + 31);
  if (v5 >= 0)
  {
    v6 = this + 8;
  }

  else
  {
    v6 = *(this + 1);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 31);
  }

  else
  {
    v7 = *(this + 2);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "on ", 3);
  v10 = *this + 1;
  if (v10 > 3)
  {
    v11 = "Unknown DataContextType";
  }

  else
  {
    v11 = off_278A31610[v10];
  }

  v12 = strlen(v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, v12);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "/", 1);
  v15 = *(this + 1) + 1;
  if (v15 > 3)
  {
    v16 = "Unknown DataContextType";
  }

  else
  {
    v16 = off_278A31610[v15];
  }

  v17 = strlen(v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ", ", 2);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "serviceState: ", 14);
  v20 = *(this + 8);
  v21 = "???";
  if (v20 == 1)
  {
    v21 = "kiRatSrvStCallActive";
  }

  if (v20)
  {
    v22 = v21;
  }

  else
  {
    v22 = "kiRatSrvStCallInactive";
  }

  v23 = strlen(v22);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v22, v23);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, ", ", 2);
  v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, "policy: ", 8);
  if (*(this + 36))
  {
    v26 = "Allowed";
  }

  else
  {
    v26 = "Not Allowed";
  }

  if (*(this + 36))
  {
    v27 = 7;
  }

  else
  {
    v27 = 11;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, v26, v27);
  std::ostringstream::str[abi:ne200100](&v29, a2);
  *&v29 = *MEMORY[0x277D82828];
  *(&v30[-1] + *(v29 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v29 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v32) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v29 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v30);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v34);
}

uint64_t IRatLinkPref::asString@<X0>(IRatLinkPref *this@<X0>, _BYTE *a2@<X8>)
{
  v17 = 0;
  v15 = 0u;
  memset(v16, 0, sizeof(v16));
  *__p = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v11);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "fLinkType: ", 11);
  v5 = *this + 1;
  if (v5 > 3)
  {
    v6 = "Unknown DataContextType";
  }

  else
  {
    v6 = off_278A31610[v5];
  }

  v7 = strlen(v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", ", 2);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v11, "fChangeReasonCode=", 18);
  MEMORY[0x2383CBD20](v9, *(this + 1));
  std::ostringstream::str[abi:ne200100](&v11, a2);
  *&v11 = *MEMORY[0x277D82828];
  *(&v12[-1] + *(v11 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v11 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v11 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v12);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v16);
}

double IRatLinkPref::reset(IRatLinkPref *this)
{
  *&result = 2;
  *this = 2;
  return result;
}

void SwitchStatus::SwitchStatus(SwitchStatus *this, char a2, char a3)
{
  *this = a2;
  *(this + 1) = a3;
}

{
  *this = a2;
  *(this + 1) = a3;
}

void sub_23746A45C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void IMSCallModelInterface::~IMSCallModelInterface(IMSCallModelInterface *this)
{
  *(this + 1) = &unk_284A6F640;
  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }
}

void sub_23746A820(_Unwind_Exception *a1)
{
  (*(*v2 + 8))(v2);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(a1);
}

void *MMSDataContextControllerDelegate::MMSDataContextControllerDelegate(void *result, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_284A6F800;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *result = &unk_284A6F800;
  result[1] = v3;
  result[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void MMSDataContextControllerDelegate::dataContextActivationTimedOut(uint64_t a1, uint64_t a2)
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
        (*(*v7 + 16))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void MMSDataContextControllerDelegate::failAllMessages(uint64_t a1, uint64_t a2)
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
        (*(*v7 + 24))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void MMSDataContextControllerDelegate::failOperationWithDataContextWaitLessThan(uint64_t a1, uint64_t a2, uint64_t a3)
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
        (*(*v9 + 32))(v9, a2, a3);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void MMSDataContextControllerDelegate::retryAllOutgoingMessages(uint64_t a1, uint64_t a2)
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
        (*(*v7 + 88))(v7, a2);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }
  }
}

void MMSDataContextControllerDelegate::~MMSDataContextControllerDelegate(MMSDataContextControllerDelegate *this)
{
  *this = &unk_284A6F800;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  *this = &unk_284A6F800;
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__shared_ptr_pointer<MMSDataContextControllerDelegate *,std::shared_ptr<MMSDataContextControllerDelegate>::__shared_ptr_default_delete<MMSDataContextControllerDelegate,MMSDataContextControllerDelegate>,std::allocator<MMSDataContextControllerDelegate>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<MMSDataContextControllerDelegate *,std::shared_ptr<MMSDataContextControllerDelegate>::__shared_ptr_default_delete<MMSDataContextControllerDelegate,MMSDataContextControllerDelegate>,std::allocator<MMSDataContextControllerDelegate>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<MMSDataContextControllerDelegate *,std::shared_ptr<MMSDataContextControllerDelegate>::__shared_ptr_default_delete<MMSDataContextControllerDelegate,MMSDataContextControllerDelegate>,std::allocator<MMSDataContextControllerDelegate>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void PeriodicScheduler::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_23746AE88(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, std::shared_ptr<PeriodicScheduler> ctu::SharedSynchronizable<PeriodicScheduler>::make_shared_ptr<PeriodicScheduler>(PeriodicScheduler*)::{lambda(PeriodicScheduler*)#1}::operator() const(PeriodicScheduler*)::{lambda(void *)#1}::__invoke);
  __cxa_rethrow();
}

void sub_23746AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  __cxa_end_catch();
  a14 = &a9;
  std::vector<SchedulerSpec>::__destroy_vector::operator()[abi:ne200100](&a14);
  if (v14)
  {
    dispatch_release(v14);
  }

  _Unwind_Resume(a1);
}

void PeriodicScheduler::PeriodicScheduler(void *a1, void *a2, NSObject **a3)
{
  *a1 = &unk_284A67318;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *a3;
  a1[3] = *a3;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[4] = 0;
  ctu::OsLogLogger::OsLogLogger((a1 + 5), "com.apple.CommCenter", "sched.periodic");
  *a1 = &unk_284A6FBE8;
  v6 = a2[1];
  a1[6] = *a2;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_23746B008(_Unwind_Exception *a1)
{
  v4 = *(v1 + 56);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  MEMORY[0x2383CB6D0](v1 + 40);
  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(v2);
  _Unwind_Resume(a1);
}

void PeriodicScheduler::resume(PeriodicScheduler *this)
{
  v2 = *(this + 8);
  if (*(v2 + 48))
  {
    v3 = *(this + 5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2373EA000, v3, OS_LOG_TYPE_ERROR, "Attempted to resume scheduler twice!", buf, 2u);
    }
  }

  else
  {
    v4 = *v2;
    v5 = *(v2 + 8);
    while (v4 != v5)
    {
      v7 = 0;
      PeriodicScheduler::scheduleTimer_sync(this, v4, &v7);
      if (v7)
      {
        std::unordered_map<SchedulerSpec,std::unique_ptr<ctu::Timer>>::insert_or_assign[abi:ne200100]<std::unique_ptr<ctu::Timer>>((*(this + 8) + 24), v4, &v7);
        v6 = v7;
        v7 = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }
      }

      v4 = (v4 + 56);
    }
  }
}

void sub_23746B128(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **PeriodicScheduler::scheduleTimer_sync@<X0>(PeriodicScheduler *this@<X0>, const SchedulerSpec *a2@<X1>, void *a3@<X8>)
{
  v30 = *MEMORY[0x277D85DE8];
  cf[0] = 0;
  getCurrentDate(this + 6, cf);
  v19 = cf[0];
  v20 = 0;
  if (cf[0])
  {
    CFRetain(cf[0]);
    v6 = v19;
  }

  else
  {
    v6 = 0;
  }

  computeDeadlineAfterDate(a2, v6, &v20);
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v19);
  if (v20)
  {
    v7 = v20;
    [v7 timeIntervalSinceDate:cf[0]];
    if (v8 >= 0.0)
    {
      if (*(a2 + 16) == 1)
      {
        PeriodicScheduler::scheduleWake_sync(this, a2, &v20);
      }

      v26 = 0u;
      v27 = 0u;
      cf[5] = this;
      v22 = *a2;
      v10 = *(a2 + 1);
      v23 = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      v13 = *(a2 + 3);
      v12 = a2 + 24;
      v11 = v13;
      v24 = *(v12 - 8);
      v25[0] = 0;
      v25[1] = 0;
      if (v13)
      {
        v11(1, v12, v25, 0, 0);
      }

      v14 = *(this + 2);
      if (v14)
      {
        v15 = *(this + 1);
        v16 = std::__shared_weak_count::lock(v14);
        if (v16)
        {
          v25[4] = v15;
          v25[5] = v16;
          atomic_fetch_add_explicit(&v16->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
          operator new();
        }
      }

      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    v9 = *(this + 5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v29 = v7;
      _os_log_error_impl(&dword_2373EA000, v9, OS_LOG_TYPE_ERROR, "Cannot schedule timer at %@, since it is in the past", buf, 0xCu);
    }

    *a3 = 0;
  }

  else
  {
    *a3 = 0;
  }

  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v20);
  result = ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(cf);
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_23746B5B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, const void *a14, const void *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v34 + 3);
  operator delete(v34);
  PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::~$_0(&a23);

  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&a14);
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&a15);
  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<SchedulerSpec,std::unique_ptr<ctu::Timer>>::insert_or_assign[abi:ne200100]<std::unique_ptr<ctu::Timer>>(void *a1, uint64_t a2, uint64_t *a3)
{
  v6 = std::hash<SchedulerSpec>::operator()(a1, a2);
  v7 = v6;
  v8 = a1[1];
  if (!*&v8)
  {
    goto LABEL_19;
  }

  v9 = vcnt_s8(v8);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = v6;
    if (v6 >= *&v8)
    {
      v11 = v6 % *&v8;
    }
  }

  else
  {
    v11 = (*&v8 - 1) & v6;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_19:
    operator new();
  }

  while (1)
  {
    v14 = v13[1];
    if (v14 == v7)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v8)
      {
        v14 %= *&v8;
      }
    }

    else
    {
      v14 &= *&v8 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_19;
    }

LABEL_18:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_19;
    }
  }

  if (*(v13 + 4) != *a2 || !CFEqual(v13[3], *(a2 + 8)))
  {
    goto LABEL_18;
  }

  v15 = *a3;
  *a3 = 0;
  result = v13[9];
  v13[9] = v15;
  if (result)
  {
    v17 = *(*result + 8);

    return v17();
  }

  return result;
}

void sub_23746BB4C(_Unwind_Exception *a1)
{
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v1 + 3);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void PeriodicScheduler::stop(PeriodicScheduler *this)
{
  v1 = *(this + 8);
  if (*(v1 + 48))
  {
    std::__hash_table<std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::__unordered_map_hasher<SchedulerSpec,std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::hash<SchedulerSpec>,std::equal_to<SchedulerSpec>,true>,std::__unordered_map_equal<SchedulerSpec,std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::equal_to<SchedulerSpec>,std::hash<SchedulerSpec>,true>,std::allocator<std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>>>::__deallocate_node(*(v1 + 40));
    *(v1 + 40) = 0;
    v2 = *(v1 + 32);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*(v1 + 24) + 8 * i) = 0;
      }
    }

    *(v1 + 48) = 0;
  }
}

void PeriodicScheduler::dumpState(PeriodicScheduler *this)
{
  v7 = *MEMORY[0x277D85DE8];
  PeriodicSchedulerConfiguration::dumpState(*(this + 8), *(this + 5));
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(this + 8) + 48);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_2373EA000, v2, OS_LOG_TYPE_DEFAULT, "#I Scheduled timer map size: %zu", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

void PeriodicScheduler::scheduleWake_sync(uint64_t a1, int *a2, const void **a3)
{
  v5 = *(a1 + 48);
  Registry::throwIfNotInitialized(v5);
  v6 = *(v5 + 24);
  v7 = off_284A642A0;
  if ((off_284A642A0 & 0x8000000000000000) != 0)
  {
    v8 = (off_284A642A0 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(v6 + 3);
  v19 = v7;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v6[4].__m_.__sig, &v19);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6 + 3);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v14 = 0;
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_10:
  v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"D%@W%zu", *(a2 + 1), *a2];
  v18 = 0;
  v19 = v15;
  (*(*v13 + 16))(v13, &v18, v15);
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v18);
  v16 = *a3;
  v17 = v16;
  if (v16)
  {
    CFRetain(v16);
  }

  (*(*v13 + 24))(v13, &v17, v19);
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v17);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v19);
LABEL_13:
  if ((v14 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sub_23746BE2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v7 = va_arg(va1, const void *);
  v9 = va_arg(va1, void);
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(va);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(va1);
  if ((v5 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(a1);
}

uint64_t PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::any::reset[abi:ne200100]((a1 + 32));
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef((a1 + 16));
  return a1;
}

void PeriodicScheduler::handleTimerExpiration_sync(PeriodicScheduler *this, const SchedulerSpec *a2)
{
  v4 = *(this + 8);
  PeriodicScheduler::scheduleTimer_sync(this, a2, &v8);
  std::unordered_map<SchedulerSpec,std::unique_ptr<ctu::Timer>>::insert_or_assign[abi:ne200100]<std::unique_ptr<ctu::Timer>>((v4 + 24), a2, &v8);
  v5 = v8;
  v8 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 9);
  if (v6)
  {
    v7 = *(this + 2);
    v8 = *(this + 1);
    if (!v7 || (v9 = std::__shared_weak_count::lock(v7)) == 0)
    {
      std::__throw_bad_weak_ptr[abi:ne200100]();
    }

    (*(*v6 + 16))(v6, &v8, a2);
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }
}

void sub_23746BF90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void PeriodicScheduler::~PeriodicScheduler(PeriodicScheduler *this)
{
  PeriodicScheduler::~PeriodicScheduler(this);

  JUMPOUT(0x2383CBEF0);
}

{
  *this = &unk_284A6FBE8;
  v2 = *(this + 9);
  *(this + 9) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 8);
  *(this + 8) = 0;
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::__unordered_map_hasher<SchedulerSpec,std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::hash<SchedulerSpec>,std::equal_to<SchedulerSpec>,true>,std::__unordered_map_equal<SchedulerSpec,std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::equal_to<SchedulerSpec>,std::hash<SchedulerSpec>,true>,std::allocator<std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>>>::__deallocate_node(*(v3 + 40));
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
    if (v4)
    {
      operator delete(v4);
    }

    v6 = v3;
    std::vector<SchedulerSpec>::__destroy_vector::operator()[abi:ne200100](&v6);
    MEMORY[0x2383CBEF0](v3, 0x10A0C40E238633CLL);
  }

  v5 = *(this + 7);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MEMORY[0x2383CB6D0](this + 40);
  ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(this + 1);
}

void std::vector<SchedulerSpec>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::any::reset[abi:ne200100](v4 - 4);
        ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v4 - 6);
        v4 -= 56;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void *ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::SharedRef(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

uint64_t (**std::any::reset[abi:ne200100](uint64_t (**result)(void, void, void, void, void)))(void, void, void, void, void)
{
  if (*result)
  {
    return (*result)(0, result, 0, 0, 0);
  }

  return result;
}

void std::__hash_table<std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::__unordered_map_hasher<SchedulerSpec,std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::hash<SchedulerSpec>,std::equal_to<SchedulerSpec>,true>,std::__unordered_map_equal<SchedulerSpec,std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,std::equal_to<SchedulerSpec>,std::hash<SchedulerSpec>,true>,std::allocator<std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>>>::__deallocate_node(void *a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *v1;
      v3 = *(v1 + 9);
      *(v1 + 9) = 0;
      if (v3)
      {
        (*(*v3 + 8))(v3);
      }

      std::any::reset[abi:ne200100](v1 + 5);
      ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v1 + 3);
      operator delete(v1);
      v1 = v2;
    }

    while (v2);
  }
}

void std::__shared_ptr_pointer<PeriodicScheduler *,std::shared_ptr<PeriodicScheduler> ctu::SharedSynchronizable<PeriodicScheduler>::make_shared_ptr<PeriodicScheduler>(PeriodicScheduler*)::{lambda(PeriodicScheduler *)#1},std::allocator<PeriodicScheduler>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<PeriodicScheduler *,std::shared_ptr<PeriodicScheduler> ctu::SharedSynchronizable<PeriodicScheduler>::make_shared_ptr<PeriodicScheduler>(PeriodicScheduler*)::{lambda(PeriodicScheduler *)#1},std::allocator<PeriodicScheduler>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t std::shared_ptr<PeriodicScheduler> ctu::SharedSynchronizable<PeriodicScheduler>::make_shared_ptr<PeriodicScheduler>(PeriodicScheduler*)::{lambda(PeriodicScheduler*)#1}::operator() const(PeriodicScheduler*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<SchedulerSpec,std::unique_ptr<ctu::Timer>>,void *>>>::operator()[abi:ne200100](char a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 72);
    *(a2 + 72) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::any::reset[abi:ne200100]((a2 + 40));
    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef((a2 + 24));
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t std::__function::__func<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0,std::allocator<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_284A6FD60;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::any::reset[abi:ne200100]((a1 + 40));
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef((a1 + 24));
  return a1;
}

void std::__function::__func<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0,std::allocator<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0>,void ()(void)>::~__func(uint64_t a1)
{
  *a1 = &unk_284A6FD60;
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::any::reset[abi:ne200100]((a1 + 40));
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef((a1 + 24));

  JUMPOUT(0x2383CBEF0);
}

void sub_23746C564(_Unwind_Exception *a1)
{
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v1 + 3);
  operator delete(v1);
  _Unwind_Resume(a1);
}

void *std::__function::__func<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0,std::allocator<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *a2 = &unk_284A6FD60;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(a1 + 16);
  result = ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::SharedRef((a2 + 24), *(a1 + 24));
  v6 = *(a1 + 32);
  *(a2 + 40) = 0;
  *(a2 + 32) = v6;
  *(a2 + 48) = 0;
  v7 = *(a1 + 40);
  if (v7)
  {
    result = v7(1, a1 + 40);
  }

  v8 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

const void **std::__function::__func<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0,std::allocator<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0>,void ()(void)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::any::reset[abi:ne200100]((a1 + 40));

  return ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef((a1 + 24));
}

void std::__function::__func<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0,std::allocator<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0>,void ()(void)>::destroy_deallocate(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  std::any::reset[abi:ne200100]((a1 + 40));
  ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef((a1 + 24));

  operator delete(a1);
}

void std::__function::__func<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0,std::allocator<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0>,void ()(void)>::operator()(uint64_t a1)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 80);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 72))
      {
        v12 = *(a1 + 16);
        v5 = *(a1 + 24);
        if (v5)
        {
          CFRetain(v5);
        }

        v8 = *(a1 + 40);
        v7 = a1 + 40;
        v6 = v8;
        v13 = *(v7 - 8);
        v14[0] = 0;
        v14[1] = 0;
        if (v8)
        {
          v6(1, v7, v14, 0, 0);
        }

        v9 = *(v3 + 16);
        if (v9)
        {
          v10 = *(v3 + 8);
          if (std::__shared_weak_count::lock(v9))
          {
            operator new();
          }
        }

        std::__throw_bad_weak_ptr[abi:ne200100]();
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_23746C8A4(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0,std::allocator<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<PeriodicScheduler>::execute_wrapped<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1}>(PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1} &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1},dispatch_queue_s *::default_delete<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(PeriodicScheduler ***a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  PeriodicScheduler::handleTimerExpiration_sync(*v1, (v1 + 1));
  std::unique_ptr<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v4);
  return std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v3);
}

void sub_23746C970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  std::unique_ptr<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1},std::default_delete<PeriodicScheduler::scheduleTimer_sync(SchedulerSpec const&)::$_0::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::any::reset[abi:ne200100]((v2 + 32));
    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef((v2 + 16));
    MEMORY[0x2383CBEF0](v2, 0x10E2C4011A5A613);
  }

  return a1;
}

void PersonalityID::~PersonalityID(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void PersonalitiesTrackerHookup::~PersonalitiesTrackerHookup(PersonalitiesTrackerHookup *this)
{
  *this = &unk_284A6FE98;
  v2 = *(this + 3);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

{
  PersonalitiesTrackerHookup::~PersonalitiesTrackerHookup(this);

  JUMPOUT(0x2383CBEF0);
}

void PersonalitiesTracker::PersonalitiesTracker(uint64_t a1, void *a2, __int128 *a3)
{
  v4 = a2[1];
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 32) = *(a3 + 2);
    *(a1 + 16) = v5;
  }

  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  operator new();
}

void sub_23746CC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  v12 = *(v10 + 8);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  _Unwind_Resume(exception_object);
}

void PersonalitiesTracker::~PersonalitiesTracker(PersonalitiesTracker *this)
{
  PersonalitiesTracker::unbind(this);
  v2 = *(this + 20);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  std::__function::__value_func<void ()(Personalities const&)>::~__value_func[abi:ne200100](this + 120);
  std::__function::__value_func<void ()(PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::~__value_func[abi:ne200100](this + 88);
  std::__function::__value_func<void ()(dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::~__value_func[abi:ne200100](this + 56);
  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(this + 39) < 0)
  {
    operator delete(*(this + 2));
  }

  v4 = *(this + 1);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t PersonalitiesTracker::unbind(uint64_t this)
{
  v1 = *(this + 40);
  if (v1)
  {
    v2 = this;
    *(v1 + 32) = 0;
    v3 = *(this + 48);
    *(v2 + 40) = 0;
    *(v2 + 48) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    std::__function::__value_func<void ()(dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::operator=[abi:ne200100](v2 + 56);
    std::__function::__value_func<void ()(PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::operator=[abi:ne200100](v2 + 88);

    return std::__function::__value_func<void ()(Personalities const&)>::operator=[abi:ne200100](v2 + 120);
  }

  return this;
}

void PersonalitiesTracker::bind(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  PersonalitiesTracker::unbind(a1);
  std::__function::__value_func<void ()(dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::operator=[abi:ne200100]((a1 + 7));
  v10 = (a4 + 24);
  v11 = *(a4 + 24);
  if (v11)
  {
    if (v11 == a4)
    {
      a1[10] = a1 + 7;
      (*(**v10 + 24))(*v10, a1 + 7);
LABEL_7:
      std::__function::__value_func<void ()(PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::operator=[abi:ne200100]((a1 + 11));
      v12 = (a5 + 24);
      v13 = *(a5 + 24);
      if (v13)
      {
        if (v13 == a5)
        {
          a1[14] = a1 + 11;
          (*(**v12 + 24))(*v12, a1 + 11);
LABEL_13:
          std::__function::__value_func<void ()(Personalities const&)>::operator=[abi:ne200100]((a1 + 15));
          v14 = (a6 + 24);
          v15 = *(a6 + 24);
          if (v15)
          {
            if (v15 == a6)
            {
              a1[18] = a1 + 15;
              (*(**v14 + 24))(*v14, a1 + 15);
LABEL_19:
              operator new();
            }

            a1[18] = v15;
          }

          else
          {
            v14 = a1 + 18;
          }

          *v14 = 0;
          goto LABEL_19;
        }

        a1[14] = v13;
      }

      else
      {
        v12 = a1 + 14;
      }

      *v12 = 0;
      goto LABEL_13;
    }

    a1[10] = v11;
  }

  else
  {
    v10 = a1 + 10;
  }

  *v10 = 0;
  goto LABEL_7;
}

void sub_23746D0E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PersonalitiesTracker::updateEvent(uint64_t a1)
{
  result = *(a1 + 80);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t PersonalitiesTracker::updateDispatched(uint64_t a1)
{
  result = *(a1 + 112);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void PersonalitiesTracker::updateSet(void *a1, uint64_t *a2)
{
  v4 = a1[19];
  v3 = a1[20];
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a1[20];
  a1[19] = v6;
  a1[20] = v5;
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }

  v8 = a1[18];
  if (v8)
  {
    (*(*v8 + 48))(v8, v4);
  }

  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_23746D220(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SlotIdFromPersonalityId(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v4 = *(v3 + 24);
  v5 = "15PersonalityShop";
  if (("15PersonalityShop" & 0x8000000000000000) != 0)
  {
    v6 = ("15PersonalityShop" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(v4 + 3);
  v17 = v5;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v4[4].__m_.__sig, &v17);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4 + 3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v13 = 0;
      if (!v11)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4 + 3);
  v10 = 0;
  v13 = 1;
  if (!v11)
  {
LABEL_7:
    v14 = _MergedGlobals_4;
    if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v17) = 0;
      _os_log_error_impl(&dword_2373EA000, v14, OS_LOG_TYPE_ERROR, "PersonalityShop NOT found in registry", &v17, 2u);
    }

LABEL_16:
    a2 = 0;
    goto LABEL_17;
  }

LABEL_11:
  v17 = 0;
  v18 = 0;
  (**v11)(&v17, v11, a2);
  v15 = v17;
  if (v17)
  {
    a2 = *(v17 + 13);
  }

  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_17:
  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a2;
}

void sub_23746D3BC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SlotIdFromPersonalityId(const PersonalityID *a1)
{
  v2 = v6;
  v7[0] = v5;
  v7[1] = v6;
  v5 = 0;
  v6 = 0;
  v3 = SlotIdFromPersonalityId(v7, a1);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  return v3;
}

void sub_23746D44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void UuidFromPersonalityId(uint64_t *a1@<X0>, uint64_t a2@<X1>, CFUUIDRef *a3@<X8>)
{
  v5 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v6 = *(v5 + 24);
  v7 = "15PersonalityShop";
  if (("15PersonalityShop" & 0x8000000000000000) != 0)
  {
    v8 = ("15PersonalityShop" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(v6 + 3);
  v18 = v7;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v6[4].__m_.__sig, &v18);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6 + 3);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v15 = 0;
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  v15 = 1;
  if (!v13)
  {
LABEL_7:
    v16 = _MergedGlobals_4;
    if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v18) = 0;
      _os_log_fault_impl(&dword_2373EA000, v16, OS_LOG_TYPE_FAULT, "PersonalityShop NOT found in registry", &v18, 2u);
    }

    goto LABEL_18;
  }

LABEL_11:
  v18 = 0;
  v19 = 0;
  (**v13)(&v18, v13, a2);
  if (!v18)
  {
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v19);
    }

LABEL_18:
    v17 = 1;
    if (v15)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  PersonalityInfo::uuid(v18, a3);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  v17 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_19:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_20:
  if (v17)
  {
    *a3 = 0;
  }
}

void sub_23746D618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void PersonalityIdFromUuid(uint64_t *a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  v5 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v6 = *(v5 + 24);
  v7 = "15PersonalityShop";
  if (("15PersonalityShop" & 0x8000000000000000) != 0)
  {
    v8 = ("15PersonalityShop" & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(v6 + 3);
  v19 = v7;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v6[4].__m_.__sig, &v19);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6 + 3);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      v15 = 0;
      if (!v13)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  v15 = 1;
  if (!v13)
  {
LABEL_7:
    v16 = _MergedGlobals_4;
    if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_FAULT))
    {
      LOWORD(v19) = 0;
      _os_log_fault_impl(&dword_2373EA000, v16, OS_LOG_TYPE_FAULT, "PersonalityShop NOT found in registry", &v19, 2u);
    }

    goto LABEL_16;
  }

LABEL_11:
  v19 = 0;
  v20 = 0;
  (*(*v13 + 16))(&v19, v13, a2);
  if (!v19)
  {
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

LABEL_16:
    v18 = 1;
    if (v15)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v19[47] < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v19 + 3), *(v19 + 4));
  }

  else
  {
    v17 = *(v19 + 24);
    a3->__r_.__value_.__r.__words[2] = *(v19 + 5);
    *&a3->__r_.__value_.__l.__data_ = v17;
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  v18 = 0;
  if ((v15 & 1) == 0)
  {
LABEL_17:
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

LABEL_18:
  if (v18)
  {
    a3->__r_.__value_.__r.__words[0] = 0;
    a3->__r_.__value_.__l.__size_ = 0;
    a3->__r_.__value_.__r.__words[2] = 0;
  }
}

void sub_23746D818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if ((v11 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

void PersonalityIdFromSlotId(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  v4 = v6;
  v7[0] = v5;
  v7[1] = v6;
  v5 = 0;
  v6 = 0;
  PersonalityIdFromSlotId(v7, a1, a2);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_23746D8C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t isActive(uint64_t *a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (!v2)
  {
    v14 = 0;
    return v14 & 1;
  }

  v16 = 0;
  v17 = 0;
  v4 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v5 = *(v4 + 24);
  v6 = "15PersonalityShop";
  if (("15PersonalityShop" & 0x8000000000000000) != 0)
  {
    v7 = ("15PersonalityShop" & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(v5 + 3);
  v18 = v6;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v5[4].__m_.__sig, &v18);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_12;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_12:
    std::mutex::unlock(v5 + 3);
    v11 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5 + 3);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  v13 = 0;
LABEL_13:
  (**v12)(&v16, v12, a2);
  if ((v13 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  if (v16)
  {
    v14 = *(v16 + 48);
  }

  else
  {
    v14 = 0;
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  return v14 & 1;
}

void sub_23746DA3C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t SlotIdFromPersonalityIdEx(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v4 = *(v3 + 24);
  v5 = "15PersonalityShop";
  if (("15PersonalityShop" & 0x8000000000000000) != 0)
  {
    v6 = ("15PersonalityShop" & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(v4 + 3);
  v16 = v5;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v4[4].__m_.__sig, &v16);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4 + 3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v12 = 0;
      if (!v11)
      {
        goto LABEL_17;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4 + 3);
  v10 = 0;
  v12 = 1;
  if (!v11)
  {
LABEL_17:
    a2 = 0;
    goto LABEL_18;
  }

LABEL_10:
  v16 = 0;
  v17 = 0;
  (**v11)(&v16, v11, a2);
  v13 = v16;
  if (v16)
  {
    v14 = *(v16 + 13);
    if (v14 <= 1)
    {
      a2 = 1;
    }

    else
    {
      a2 = v14;
    }
  }

  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  if (!v13)
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a2;
}

void sub_23746DBA0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void UuidFromSlotIdEx(uint64_t *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v34 = *MEMORY[0x277D85DE8];
  if (a2 <= 1)
  {
    a2 = 1;
  }

  else
  {
    a2 = a2;
  }

  memset(&__p, 0, sizeof(__p));
  PersonalityIdFromSlotIdEx(a1, a2, &__p);
  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    *a3 = 0;
    goto LABEL_31;
  }

  v6 = *a1;
  Registry::throwIfNotInitialized(v6);
  v7 = *(v6 + 24);
  v8 = "15PersonalityShop";
  if (("15PersonalityShop" & 0x8000000000000000) != 0)
  {
    v9 = ("15PersonalityShop" & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(v7 + 3);
  *buf = v8;
  v12 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v7[4].__m_.__sig, buf);
  if (!v12)
  {
    v14 = 0;
LABEL_18:
    std::mutex::unlock(v7 + 3);
    v13 = 0;
    v16 = 1;
    if (!v14)
    {
      goto LABEL_13;
    }

LABEL_19:
    *buf = 0;
    v30 = 0;
    (**v14)(buf, v14, &__p);
    if (*buf)
    {
      v28 = 0;
      PersonalityInfo::uuid(*buf, &v28);
      if (v28)
      {
        ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::SharedRef(a3, &v28);
      }

      else
      {
        v20 = _MergedGlobals_4;
        if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_ERROR))
        {
          v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v25 = __p.__r_.__value_.__l.__size_;
          }

          p_p = &__p;
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          if (v25)
          {
            v27 = p_p;
          }

          else
          {
            v27 = "<invalid>";
          }

          *v32 = 136315138;
          v33 = v27;
          _os_log_error_impl(&dword_2373EA000, v20, OS_LOG_TYPE_ERROR, "UUID not found for personality: %s", v32, 0xCu);
        }

        *a3 = 0;
      }

      ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&v28);
    }

    else
    {
      v19 = _MergedGlobals_4;
      if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_ERROR))
      {
        v22 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v22 = __p.__r_.__value_.__l.__size_;
        }

        v23 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v23 = __p.__r_.__value_.__r.__words[0];
        }

        if (v22)
        {
          v24 = v23;
        }

        else
        {
          v24 = "<invalid>";
        }

        *v32 = 136315138;
        v33 = v24;
        _os_log_error_impl(&dword_2373EA000, v19, OS_LOG_TYPE_ERROR, "Can't find personality info for: %s", v32, 0xCu);
      }

      *a3 = 0;
    }

    if (v30)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v30);
    }

    goto LABEL_29;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7 + 3);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  v16 = 0;
  if (v14)
  {
    goto LABEL_19;
  }

LABEL_13:
  v17 = _MergedGlobals_4;
  if (os_log_type_enabled(_MergedGlobals_4, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2373EA000, v17, OS_LOG_TYPE_ERROR, "Personality Shop is not ready", buf, 2u);
  }

  *a3 = 0;
LABEL_29:
  if ((v16 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

LABEL_31:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void sub_23746DEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  if ((v20 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void PersonalitiesTrackerHookup::updateEvent(void *a1, NSObject **a2, NSObject **a3, uint64_t a4, uint64_t *a5)
{
  v9 = a1[2];
  v14 = a1[1];
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 16), 1uLL, memory_order_relaxed);
  }

  v10 = *a2;
  if (*a2)
  {
    dispatch_retain(v10);
    dispatch_group_enter(v10);
  }

  v11 = *a3;
  if (v11)
  {
    dispatch_retain(v11);
    dispatch_group_enter(v11);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
  }

  else
  {
    __p = *a4;
  }

  v16 = *(a4 + 24);
  v12 = a5[1];
  v17 = *a5;
  v18 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v13 = a1[3];
  operator new();
}

void sub_23746E14C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_group_t object, dispatch_group_t group)
{
  v15 = v13[4];
  if (v15)
  {
    dispatch_group_leave(v15);
    v16 = v13[4];
    if (v16)
    {
      dispatch_release(v16);
    }
  }

  v17 = v13[3];
  if (v17)
  {
    dispatch_group_leave(v17);
    v18 = v13[3];
    if (v18)
    {
      dispatch_release(v18);
    }
  }

  v19 = v13[2];
  if (v19)
  {
    std::__shared_weak_count::__release_weak(v19);
  }

  __clang_call_terminate(a1);
}

void PersonalitiesTrackerHookup::updateSet(void *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *a2;
  v5 = a2[1];
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = a1[3];
  operator new();
}

const void **ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::SharedRef(const void **a1, const void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  if (v3)
  {
    CFRetain(v3);
  }

  return a1;
}

uint64_t *std::unique_ptr<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 80);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(v2 + 63) < 0)
    {
      operator delete(*(v2 + 40));
    }

    v4 = *(v2 + 32);
    if (v4)
    {
      dispatch_group_leave(v4);
      v5 = *(v2 + 32);
      if (v5)
      {
        dispatch_release(v5);
      }
    }

    v6 = *(v2 + 24);
    if (v6)
    {
      dispatch_group_leave(v6);
      v7 = *(v2 + 24);
      if (v7)
      {
        dispatch_release(v7);
      }
    }

    v8 = *(v2 + 16);
    if (v8)
    {
      std::__shared_weak_count::__release_weak(v8);
    }

    MEMORY[0x2383CBEF0](v2, 0x1072C404557781ALL);
  }

  return a1;
}

uint64_t *dispatch::async<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v13[0] = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v3 + 32);
        if (v6)
        {
          v7 = *(v6 + 80);
          if (v7)
          {
            (*(*v7 + 48))(v7, a1 + 32, a1 + 40, a1 + 72);
            v5 = *(a1 + 8);
          }

          v13[1] = v3;
          v13[2] = v5;
          v8 = *(a1 + 16);
          v13[3] = v8;
          if (v8)
          {
            atomic_fetch_add_explicit((v8 + 16), 1uLL, memory_order_relaxed);
          }

          if (*(a1 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&__p, *(a1 + 40), *(a1 + 48));
          }

          else
          {
            __p = *(a1 + 40);
          }

          v15 = *(a1 + 64);
          v9 = *(a1 + 80);
          v16 = *(a1 + 72);
          v17 = v9;
          if (v9)
          {
            atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
          }

          v10 = *(a1 + 24);
          v11 = *(v3 + 24);
          operator new();
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  return std::unique_ptr<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](v13);
}

void sub_23746E560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, std::__shared_weak_count *a15)
{
  v18 = *(v16 + 16);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  MEMORY[0x2383CBEF0](v16, 0x1072C40B7BA7DBCLL);
  PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}::~(&a11);
  std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  std::unique_ptr<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 64);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (*(v2 + 47) < 0)
    {
      operator delete(*(v2 + 24));
    }

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x2383CBEF0](v2, 0x1072C40B7BA7DBCLL);
  }

  return a1;
}

uint64_t *dispatch::detail::group_notify<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>(dispatch_group_s *,dispatch_queue_s *,PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1} &&,std::integral_constant<BOOL,false>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v9 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 32);
        if (v6)
        {
          v7 = *(v6 + 112);
          if (v7)
          {
            (*(*v7 + 48))(v7, a1 + 3, a1 + 7);
          }
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return std::unique_ptr<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v9);
}

void sub_23746E6DC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::unique_ptr<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t PersonalitiesTrackerHookup::updateEvent(dispatch::group_session const&,dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)::{lambda(void)#1}::operator() const(void)::{lambda(void)#1}::~(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t *std::unique_ptr<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
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

    v4 = *(v2 + 16);
    if (v4)
    {
      std::__shared_weak_count::__release_weak(v4);
    }

    MEMORY[0x2383CBEF0](v2, 0x60C407F594E51);
  }

  return a1;
}

uint64_t *dispatch::async<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(void *a1)
{
  v8 = a1;
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[1])
      {
        v6 = *(v3 + 32);
        if (v6)
        {
          PersonalitiesTracker::updateSet(v6, a1 + 3);
        }
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }
  }

  return std::unique_ptr<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v8);
}

void sub_23746E818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  std::unique_ptr<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1},std::default_delete<PersonalitiesTrackerHookup::updateSet(std::shared_ptr<Personalities const> const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void ***std::unique_ptr<Personalities>::~unique_ptr[abi:ne200100](void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v4 = v2;
    std::vector<std::shared_ptr<PersonalityInfo const>>::__destroy_vector::operator()[abi:ne200100](&v4);
    MEMORY[0x2383CBEF0](v2, 0x1020C4034AC6F07);
  }

  return a1;
}

void std::__shared_ptr_pointer<Personalities *,std::shared_ptr<Personalities const>::__shared_ptr_default_delete<Personalities const,Personalities>,std::allocator<Personalities>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<Personalities *,std::shared_ptr<Personalities const>::__shared_ptr_default_delete<Personalities const,Personalities>,std::allocator<Personalities>>::__on_zero_shared(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    std::vector<std::shared_ptr<PersonalityInfo const>>::__destroy_vector::operator()[abi:ne200100](&v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<Personalities *,std::shared_ptr<Personalities const>::__shared_ptr_default_delete<Personalities const,Personalities>,std::allocator<Personalities>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::vector<std::shared_ptr<PersonalityInfo const>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 16;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__function::__value_func<void ()(dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Personalities const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(dispatch::group_session const&,PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(PersonalityEvent const&,std::shared_ptr<PersonalityInfo const> const&)>::operator=[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(Personalities const&)>::operator=[abi:ne200100](uint64_t a1)
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

void std::__shared_ptr_emplace<PersonalitiesTrackerHookup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A70168;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t _GLOBAL__sub_I_Personality_cpp()
{
  std::string::basic_string[abi:ne200100]<0>(__p, "emergency");
  if (SHIBYTE(v2) < 0)
  {
    std::string::__init_copy_ctor_external(&kEmergencyPersonalityId, __p[0], __p[1]);
    if (SHIBYTE(v2) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    kEmergencyPersonalityId = *__p;
    qword_280CE86D8 = v2;
  }

  __cxa_atexit(PersonalityID::~PersonalityID, &kEmergencyPersonalityId, &dword_2373EA000);
  std::string::basic_string[abi:ne200100]<0>(__p, "emergency2");
  if (SHIBYTE(v2) < 0)
  {
    std::string::__init_copy_ctor_external(&kEmergency2PersonalityId, __p[0], __p[1]);
    if (SHIBYTE(v2) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    kEmergency2PersonalityId = *__p;
    qword_280CE86F0 = v2;
  }

  return __cxa_atexit(PersonalityID::~PersonalityID, &kEmergency2PersonalityId, &dword_2373EA000);
}

void sub_23746EEBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *CSIEventString(unsigned int a1)
{
  if (a1 > 0x96)
  {
    return "???";
  }

  else
  {
    return kCSIEventTypeNames[a1];
  }
}

os_log_t sSetupOsLogSubsystem(void)
{
  result = os_log_create("com.apple.CommCenter", "default");
  sCTOsLogDefault = result;
  return result;
}

void launchURL(uint64_t *a1, const char *a2)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v5 = *(v4 + 24);
  v6 = off_284A65418;
  if ((off_284A65418 & 0x8000000000000000) != 0)
  {
    v7 = (off_284A65418 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(v5 + 3);
  __dst = v6;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v5[4].__m_.__sig, &__dst);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5 + 3);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
      if (!v12)
      {
LABEL_22:
        std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        goto LABEL_23;
      }
    }

    else
    {
      std::mutex::unlock(v5 + 3);
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    v21 = 0;
    v22 = 0;
    (*(*v12 + 16))(&v21, v12, a1);
    v13 = v21;
    if (v21)
    {
      v14 = strlen(a2);
      if (v14 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v15 = v14;
      if (v14 >= 0x17)
      {
        operator new();
      }

      v20 = v14;
      if (v14)
      {
        memcpy(&__dst, a2, v14);
      }

      *(&__dst + v15) = 0;
      v17[0] = 0;
      object = xpc_null_create();
      v23[0] = &unk_284A70630;
      v23[3] = v23;
      (*(*v13 + 16))(v13, &__dst, v17, v23);
      std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v23);
      xpc_release(object);
      object = 0;
      if (v20 < 0)
      {
        operator delete(__dst);
      }
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }

    if (v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
    std::mutex::unlock(v5 + 3);
  }

LABEL_23:
  v16 = *MEMORY[0x277D85DE8];
}

void sub_23746F3BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

uint64_t std::__function::__func<launchURL(std::shared_ptr<Registry const> const&,char const*)::$_0,std::allocator<launchURL(std::shared_ptr<Registry const> const&,char const*)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const char *sd::imsRegFailureReasonToString(unsigned int a1)
{
  if (a1 > 9)
  {
    return "Unknown";
  }

  else
  {
    return off_278A31C68[a1];
  }
}

const char *sd::asString(sd *this, Category a2)
{
  if ((this - 1) > 3)
  {
    return "kUnknown";
  }

  else
  {
    return off_278A31D38[this - 1];
  }
}

uint64_t sd::UEInfo::DeviceInfo::updateSimInfo(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  if (v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v4 = v2 + 4;
    do
    {
      v5 = *(v4 - 4) == 2;
      v6 = *(v4 - 4) == 2 || v4 == v3;
      v4 += 4;
    }

    while (!v6);
  }

  if (*(result + 296) != v5)
  {
    *(result + 296) = v5;
  }

  return result;
}

BOOL sd::UEInfo::DeviceInfo::operator==(void *a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = a1[1];
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = a2[1];
  }

  if (v3 != v4)
  {
    return 0;
  }

  v6 = a2;
  v7 = a1;
  if (v2 < 0)
  {
    a1 = *a1;
  }

  v8 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v3))
  {
    return 0;
  }

  v10 = *(v7 + 184);
  v11 = *(v6 + 184);
  if (v10 == v11 && *(v7 + 184))
  {
    if (CSIPhoneNumber::operator==((v7 + 3), (v6 + 3)))
    {
      goto LABEL_20;
    }

    return 0;
  }

  if (v10 != v11)
  {
    return 0;
  }

LABEL_20:
  if (*(v7 + 192) != *(v6 + 192))
  {
    return 0;
  }

  v12 = *(v7 + 223);
  if (v12 >= 0)
  {
    v13 = *(v7 + 223);
  }

  else
  {
    v13 = v7[26];
  }

  v14 = *(v6 + 223);
  v15 = v14;
  if ((v14 & 0x80u) != 0)
  {
    v14 = v6[26];
  }

  if (v13 != v14)
  {
    return 0;
  }

  v16 = v12 >= 0 ? v7 + 25 : v7[25];
  v17 = v15 >= 0 ? v6 + 25 : v6[25];
  if (memcmp(v16, v17, v13))
  {
    return 0;
  }

  v18 = *(v7 + 247);
  if (v18 >= 0)
  {
    v19 = *(v7 + 247);
  }

  else
  {
    v19 = v7[29];
  }

  v20 = *(v6 + 247);
  v21 = v20;
  if ((v20 & 0x80u) != 0)
  {
    v20 = v6[29];
  }

  if (v19 != v20)
  {
    return 0;
  }

  v22 = v18 >= 0 ? v7 + 28 : v7[28];
  v23 = v21 >= 0 ? v6 + 28 : v6[28];
  if (memcmp(v22, v23, v19))
  {
    return 0;
  }

  v24 = *(v7 + 271);
  if (v24 >= 0)
  {
    v25 = *(v7 + 271);
  }

  else
  {
    v25 = v7[32];
  }

  v26 = *(v6 + 271);
  v27 = v26;
  if ((v26 & 0x80u) != 0)
  {
    v26 = v6[32];
  }

  if (v25 != v26)
  {
    return 0;
  }

  v28 = v24 >= 0 ? v7 + 31 : v7[31];
  v29 = v27 >= 0 ? v6 + 31 : v6[31];
  if (memcmp(v28, v29, v25))
  {
    return 0;
  }

  result = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v7 + 34, v6 + 34);
  if (result)
  {
    return *(v7 + 296) == *(v6 + 296);
  }

  return result;
}

uint64_t sd::UEInfo::DeviceInfo::valid(sd::UEInfo::DeviceInfo *this)
{
  v1 = *(this + 23);
  if (v1 < 0)
  {
    v1 = *(this + 1);
  }

  if (v1)
  {
    v1 = *(this + 271);
    if (v1 < 0)
    {
      v1 = *(this + 32);
    }

    if (v1)
    {
      v1 = *(this + 295);
      if (v1 < 0)
      {
        v1 = *(this + 35);
      }

      if (v1)
      {
        LOBYTE(v1) = *(this + 184);
      }
    }
  }

  return v1 & 1;
}

uint64_t sd::UEInfo::DeviceInfo::clear(uint64_t this)
{
  if (*(this + 23) < 0)
  {
    **this = 0;
    *(this + 8) = 0;
  }

  else
  {
    *this = 0;
    *(this + 23) = 0;
  }

  *(this + 296) = 0;
  return this;
}

uint64_t sd::UEInfo::DeviceInfo::domainFromImsi@<X0>(sd::UEInfo::DeviceInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v28 = 0;
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  *__p = 0u;
  v25 = 0u;
  v22 = 0u;
  memset(v23, 0, sizeof(v23));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v22);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v22, "ims.mnc", 7);
  v21 = 48;
  v5 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, &v21);
  *(v5 + *(*v5 - 24) + 24) = 3;
  v6 = *(this + 295);
  if (v6 >= 0)
  {
    v7 = this + 272;
  }

  else
  {
    v7 = *(this + 34);
  }

  if (v6 >= 0)
  {
    v8 = *(this + 295);
  }

  else
  {
    v8 = *(this + 35);
  }

  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v7, v8);
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ".mcc", 4);
  v20 = 48;
  v11 = std::operator<<[abi:ne200100]<std::char_traits<char>>(v10, &v20);
  *(v11 + *(*v11 - 24) + 24) = 3;
  v14 = *(this + 31);
  v13 = this + 248;
  v12 = v14;
  v15 = v13[23];
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = v13[23];
  }

  else
  {
    v17 = *(v13 + 1);
  }

  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, v16, v17);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ".3gppnetwork.org", 16);
  std::ostringstream::str[abi:ne200100](&v22, a2);
  *&v22 = *MEMORY[0x277D82828];
  *(&v23[-1] + *(v22 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v22 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v22 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v23);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v27);
}

void sub_23746FAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void *std::operator<<[abi:ne200100]<std::char_traits<char>>(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, MEMORY[0x277D82680]);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

uint64_t sd::UEInfo::DeviceInfo::getThreeDigitMnc@<X0>(sd::UEInfo::DeviceInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v16 = 0;
  v14 = 0u;
  memset(v15, 0, sizeof(v15));
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  memset(v11, 0, sizeof(v11));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v9 = 48;
  v4 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v10, &v9);
  *(v4 + *(*v4 - 24) + 24) = 3;
  v5 = *(this + 295);
  if (v5 >= 0)
  {
    v6 = this + 272;
  }

  else
  {
    v6 = *(this + 34);
  }

  if (v5 >= 0)
  {
    v7 = *(this + 295);
  }

  else
  {
    v7 = *(this + 35);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  std::ostringstream::str[abi:ne200100](&v10, a2);
  *&v10 = *MEMORY[0x277D82828];
  *(&v11[-1] + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v10 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v10 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v15);
}

void sub_23746FD78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t sd::UEInfo::DeviceInfo::getThreeDigitMcc@<X0>(sd::UEInfo::DeviceInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v19 = 0;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  *__p = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  std::ostringstream::basic_ostringstream[abi:ne200100](&v13);
  v12 = 48;
  v4 = std::operator<<[abi:ne200100]<std::char_traits<char>>(&v13, &v12);
  *(v4 + *(*v4 - 24) + 24) = 3;
  v7 = *(this + 31);
  v6 = this + 248;
  v5 = v7;
  v8 = v6[23];
  if (v8 >= 0)
  {
    v9 = v6;
  }

  else
  {
    v9 = v5;
  }

  if (v8 >= 0)
  {
    v10 = v6[23];
  }

  else
  {
    v10 = *(v6 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v9, v10);
  std::ostringstream::str[abi:ne200100](&v13, a2);
  *&v13 = *MEMORY[0x277D82828];
  *(&v14[-1] + *(v13 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v13 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v13 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v14);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v18);
}

void sub_23746FF58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

uint64_t sd::UEInfo::DeviceInfo::privateIdentityFromImsi@<X0>(sd::UEInfo::DeviceInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  v18 = 0u;
  *v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v14 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v14);
  v4 = *(this + 23);
  if (v4 >= 0)
  {
    v5 = this;
  }

  else
  {
    v5 = *this;
  }

  if (v4 >= 0)
  {
    v6 = *(this + 23);
  }

  else
  {
    v6 = *(this + 1);
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "@", 1);
  sd::UEInfo::DeviceInfo::domainFromImsi(this, __p);
  if ((v13 & 0x80u) == 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v10 = v13;
  }

  else
  {
    v10 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  std::ostringstream::str[abi:ne200100](&v14, a2);
  *&v14 = *MEMORY[0x277D82828];
  *(&v15[-1] + *(v14 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v14 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v17) < 0)
  {
    operator delete(v16[1]);
  }

  *(&v14 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v15);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v19);
}

void sub_237470164(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

uint64_t sd::UEInfo::DeviceInfo::publicIdentityFromImsi@<X0>(sd::UEInfo::DeviceInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  v13 = 0u;
  v14 = 0u;
  *v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  std::ostringstream::basic_ostringstream[abi:ne200100](&v10);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v10, "sip:", 4);
  sd::UEInfo::DeviceInfo::privateIdentityFromImsi(this, __p);
  if ((v9 & 0x80u) == 0)
  {
    v5 = __p;
  }

  else
  {
    v5 = __p[0];
  }

  if ((v9 & 0x80u) == 0)
  {
    v6 = v9;
  }

  else
  {
    v6 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  std::ostringstream::str[abi:ne200100](&v10, a2);
  *&v10 = *MEMORY[0x277D82828];
  *(&v11[-1] + *(v10 - 24)) = *(MEMORY[0x277D82828] + 24);
  *(&v10 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  *(&v10 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v11);
  std::ostream::~ostream();
  return MEMORY[0x2383CBE70](v15);
}

void sub_237470368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  _Unwind_Resume(a1);
}

BOOL sd::UEInfo::IsimInfo::operator==(int *a1, int *a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 == 2)
  {
    if (v5 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 2)
    {
      return 0;
    }

    v6 = v4 != 1;
    if (v5 == 1)
    {
      v6 = 0;
    }

    if (v5 | v4)
    {
      v6 = 0;
    }

    v7 = v5 == 1 && v4 == 1;
    if (!v7 && !v6)
    {
      return 0;
    }
  }

  if (*(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v9 = *(a1 + 31);
  if (v9 >= 0)
  {
    v10 = *(a1 + 31);
  }

  else
  {
    v10 = *(a1 + 2);
  }

  v11 = *(a2 + 31);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 2);
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? a1 + 2 : *(a1 + 1);
  v14 = v12 >= 0 ? a2 + 2 : *(a2 + 1);
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(a1 + 4);
  v16 = *(a1 + 5);
  v17 = *(a2 + 4);
  if (v16 - v15 != *(a2 + 5) - v17)
  {
    return 0;
  }

  while (v15 != v16)
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v30, v15, v17);
    if (!result)
    {
      return result;
    }

    v15 += 3;
    v17 += 3;
  }

  v19 = *(a1 + 79);
  if (v19 >= 0)
  {
    v20 = *(a1 + 79);
  }

  else
  {
    v20 = *(a1 + 8);
  }

  v21 = *(a2 + 79);
  v22 = v21;
  if ((v21 & 0x80u) != 0)
  {
    v21 = *(a2 + 8);
  }

  if (v20 != v21)
  {
    return 0;
  }

  v23 = v19 >= 0 ? a1 + 14 : *(a1 + 7);
  v24 = v22 >= 0 ? a2 + 14 : *(a2 + 7);
  if (memcmp(v23, v24, v20))
  {
    return 0;
  }

  v27 = a1 + 20;
  v25 = *(a1 + 10);
  v26 = *(v27 + 1);
  v29 = a2 + 20;
  v28 = *(a2 + 10);
  if (v26 - v25 != *(v29 + 1) - v28)
  {
    return 0;
  }

  if (v25 == v26)
  {
    return 1;
  }

  do
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v31, v25, v28);
    if (!result)
    {
      break;
    }

    v25 += 3;
    v28 += 3;
  }

  while (v25 != v26);
  return result;
}

BOOL sd::UEInfo::IsimInfo::valid(sd::UEInfo::IsimInfo *this)
{
  if (*this != 1 || *(this + 4) != 1)
  {
    return 0;
  }

  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (!*(this + 2))
    {
      return 0;
    }
  }

  else if (!*(this + 31))
  {
    return 0;
  }

  if (*(this + 4) == *(this + 5))
  {
    return 0;
  }

  v1 = *(this + 79);
  if (v1 < 0)
  {
    v1 = *(this + 8);
  }

  return v1 != 0;
}

void sd::UEInfo::IsimInfo::clear(sd::UEInfo::IsimInfo *this)
{
  *this = 2;
  *(this + 4) = 0;
  if (*(this + 31) < 0)
  {
    **(this + 1) = 0;
    *(this + 2) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  std::vector<std::string>::clear[abi:ne200100](this + 4);
  if (*(this + 79) < 0)
  {
    **(this + 7) = 0;
    *(this + 8) = 0;
  }

  else
  {
    *(this + 56) = 0;
    *(this + 79) = 0;
  }

  std::vector<std::string>::clear[abi:ne200100](this + 10);
}

uint64_t sd::UEInfo::IsimInfo::markSimPresent(unsigned int *a1, unsigned int a2)
{
  v2 = *a1;
  v3 = a2;
  if (*a1)
  {
    if (v2 == 2)
    {
      if (a2)
      {
        if (a2 == 2)
        {
          return 0;
        }
      }

      else
      {
        v3 = 0;
      }
    }

    else if (a2 && a2 == 1 && v2 == 1)
    {
      return 0;
    }
  }

  if (v2 == 1 || v3 == 1 || (v2 | v3) != 0)
  {
    *a1 = a2;
    return 1;
  }

  return 0;
}

const void **sd::UEInfo::clear(sd::UEInfo *this)
{
  sd::UEInfo::IsimInfo::clear(this);
  if (*(this + 127) < 0)
  {
    **(this + 13) = 0;
    *(this + 14) = 0;
  }

  else
  {
    *(this + 104) = 0;
    *(this + 127) = 0;
  }

  *(this + 400) = 0;

  return sd::UEInfo::LazuliInfo::clear((this + 408));
}

const void **sd::UEInfo::LazuliInfo::clear(sd::UEInfo::LazuliInfo *this)
{
  if (*(this + 23) < 0)
  {
    **this = 0;
    *(this + 1) = 0;
  }

  else
  {
    *this = 0;
    *(this + 23) = 0;
  }

  std::vector<std::string>::clear[abi:ne200100](this + 9);
  if (*(this + 119) < 0)
  {
    **(this + 12) = 0;
    *(this + 13) = 0;
  }

  else
  {
    *(this + 96) = 0;
    *(this + 119) = 0;
  }

  std::vector<std::string>::clear[abi:ne200100](this + 15);
  v2 = *(this + 19);
  *(this + 19) = 0;
  v4 = v2;
  return ctu::SharedRef<__CFDictionary const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDictionary const>::~SharedRef(&v4);
}

unint64_t sd::UEInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (!sd::UEInfo::IsimInfo::operator==(a1, a2) || !sd::UEInfo::DeviceInfo::operator==((a1 + 104), (a2 + 104)))
  {
    return 0;
  }

  return sd::UEInfo::LazuliInfo::operator==((a1 + 408), (a2 + 408));
}

unint64_t sd::UEInfo::LazuliInfo::operator==(void *a1, void *a2)
{
  v4 = *(a1 + 23);
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = a2[1];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v27 = v2;
  v28 = v3;
  v8 = a2;
  v9 = a1;
  if (v4 < 0)
  {
    a1 = *a1;
  }

  v10 = *a2;
  if (v7 < 0)
  {
    a2 = *a2;
  }

  if (memcmp(a1, a2, v5))
  {
    return 0;
  }

  v11 = v9[9];
  v12 = v9[10];
  v13 = v8[9];
  if (v12 - v11 != v8[10] - v13)
  {
    return 0;
  }

  while (v11 != v12)
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v25, v11, v13);
    if (!result)
    {
      return result;
    }

    v11 += 3;
    v13 += 3;
  }

  v15 = *(v9 + 119);
  if (v15 >= 0)
  {
    v16 = *(v9 + 119);
  }

  else
  {
    v16 = v9[13];
  }

  v17 = *(v8 + 119);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = v8[13];
  }

  if (v16 != v17)
  {
    return 0;
  }

  v19 = v15 >= 0 ? v9 + 12 : v9[12];
  v20 = v18 >= 0 ? v8 + 12 : v8[12];
  if (memcmp(v19, v20, v16))
  {
    return 0;
  }

  v21 = v9[15];
  v22 = v9[16];
  v23 = v8[15];
  if (v22 - v21 != v8[16] - v23)
  {
    return 0;
  }

  while (v21 != v22)
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v26, v21, v23);
    if (!result)
    {
      return result;
    }

    v21 += 3;
    v23 += 3;
  }

  result = v9[19];
  if (result)
  {
    v24 = v8[19];
    if (v24)
    {
      return CFEqual(result, v24) != 0;
    }

    return 0;
  }

  return result;
}

uint64_t sd::ImsFeature::VoWiFi::isEnabled(sd::ImsFeature::VoWiFi *this)
{
  if (*this == 1 && (*(this + 1) & 1) == 0)
  {
    v1 = *(this + 2);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sd::ImsFeature::SMS::isEnabled(sd::ImsFeature::SMS *this, int a2)
{
  v2 = *this;
  if (v2 == 1 && a2 != 0)
  {
    LOBYTE(v2) = *(this + 1);
  }

  return v2 & 1;
}

BOOL sd::UEInfo::LazuliInfo::valid(sd::UEInfo::LazuliInfo *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (!*(this + 1))
    {
      return 0;
    }
  }

  else if (!*(this + 23))
  {
    return 0;
  }

  if (*(this + 9) != *(this + 10))
  {
    if ((*(this + 119) & 0x8000000000000000) != 0)
    {
      if (*(this + 13))
      {
        return *(this + 15) != *(this + 16);
      }
    }

    else if (*(this + 119))
    {
      return *(this + 15) != *(this + 16);
    }
  }

  return 0;
}

void subscriber::sDecodeIccid(subscriber *this@<X0>, const unsigned __int8 *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  if (a2 == 10)
  {
    ctu::hex(this, 0xA);
    LODWORD(v4) = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    v5 = a3->__r_.__value_.__r.__words[0];
    if ((v4 & 0x80u) != 0)
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    else
    {
      v5 = a3;
      size = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    if (size)
    {
      v7 = &v5->__r_.__value_.__s.__data_[1];
      do
      {
        if (size == 1)
        {
          break;
        }

        v8 = *(v7 - 1);
        *(v7 - 1) = *v7;
        *v7 = v8;
        v7 += 2;
        size -= 2;
      }

      while (size);
      LODWORD(v4) = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    if ((v4 & 0x80) != 0)
    {
      v4 = a3->__r_.__value_.__l.__size_;
      if (v4 && *(a3->__r_.__value_.__r.__words[0] + v4 - 1) == 102)
      {
        goto LABEL_16;
      }
    }

    else if (v4 && a3->__r_.__value_.__s.__data_[v4 - 1] == 102)
    {
      v4 = v4;
LABEL_16:
      std::string::resize(a3, v4 - 1, 0);
    }
  }
}

void sub_237470B08(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void subscriber::sDecodeImsi(subscriber *this@<X0>, const unsigned __int8 *a2@<X1>, std::string *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  v4 = a2 >= 2;
  v5 = a2 - 2;
  if (v4 && a2 - 1 == *this)
  {
    ctu::hex((this + 2), v5);
    *&a3->__r_.__value_.__l.__data_ = v15;
    a3->__r_.__value_.__r.__words[2] = v16;
    v8 = HIBYTE(v16);
    v9 = a3->__r_.__value_.__r.__words[0];
    if ((v16 & 0x8000000000000000) != 0)
    {
      size = a3->__r_.__value_.__l.__size_;
    }

    else
    {
      v9 = a3;
      size = HIBYTE(v16);
    }

    if (size)
    {
      v11 = &v9->__r_.__value_.__s.__data_[1];
      do
      {
        if (size == 1)
        {
          break;
        }

        v12 = *(v11 - 1);
        *(v11 - 1) = *v11;
        *v11 = v12;
        v11 += 2;
        size -= 2;
      }

      while (size);
      LODWORD(v8) = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    v13 = *(this + 1) >> 4;
    if (v13 != 15)
    {
      if ((v8 & 0x80u) == 0)
      {
        v14.__i_ = a3;
      }

      else
      {
        v14.__i_ = a3->__r_.__value_.__r.__words[0];
      }

      std::string::insert(a3, v14, v13 | 0x30);
      LODWORD(v8) = HIBYTE(a3->__r_.__value_.__r.__words[2]);
    }

    if ((v8 & 0x80) != 0)
    {
      v8 = a3->__r_.__value_.__l.__size_;
      if (v8 && *(a3->__r_.__value_.__r.__words[0] + v8 - 1) == 102)
      {
        goto LABEL_23;
      }
    }

    else if (v8 && a3->__r_.__value_.__s.__data_[v8 - 1] == 102)
    {
      v8 = v8;
LABEL_23:
      std::string::resize(a3, v8 - 1, 0);
    }
  }
}

void sub_237470C50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void subscriber::sParseMdn(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  if (*(a1 + 8) - *a1 >= 0xBuLL && (**a1 & 0xF) != 0)
  {
    v4 = ((**a1 & 0xF) + 1) >> 1;
    v5 = 1;
    do
    {
      v6 = *(*a1 + v5);
      if ((v6 & 0xF) == 0xA)
      {
        v7 = 48;
      }

      else
      {
        v7 = v6 & 0xF | 0x30;
      }

      if ((v6 & 0xF) - 11 >= 0xFFFFFFF6)
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }

      std::string::push_back(a2, v8);
      if (v6 >> 4 == 10)
      {
        LOBYTE(v9) = 48;
      }

      else
      {
        v9 = (v6 >> 4) | 0x30;
      }

      if ((v6 >> 4) - 11 >= 0xFFFFFFF6)
      {
        v10 = v9;
      }

      else
      {
        v10 = 0;
      }

      std::string::push_back(a2, v10);
      ++v5;
      --v4;
    }

    while (v4);
  }
}

void sub_237470D40(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void subscriber::sDecode1xImsi(subscriber *this@<X0>, const unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  if (a2 == 10)
  {
    subscriber::Bcd10Decoder(__p, *(this + 4));
    if (*(a3 + 23) < 0)
    {
      operator delete(*a3);
    }

    *a3 = *__p;
    *(a3 + 16) = v24;
    v5 = *(this + 6);
    __p[1] = 0;
    v24 = 0;
    __p[0] = 0;
    std::string::basic_string[abi:ne200100]<0>(__p, "xx");
    v6 = (v5 & 0x7F) + 11;
    v7 = v6 - 10 * ((205 * v6) >> 11);
    if (v24 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *(v8 + 1) = v7 | 0x30;
    if (v6 == 10 * ((205 * v6) >> 11))
    {
      LOBYTE(v7) = 10;
    }

    v9 = (v6 - v7);
    if (v9 >= 0x64)
    {
      v10 = ((205 * v9) >> 11) - 10;
    }

    else
    {
      v10 = (205 * v9) >> 11;
    }

    v11 = v10 | 0x30;
    if (v24 >= 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    *v12 = v11;
    if (v24 >= 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if (v24 >= 0)
    {
      v14 = HIBYTE(v24);
    }

    else
    {
      v14 = __p[1];
    }

    std::string::append(a3, v13, v14);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    subscriber::Bcd10Decoder(__p, *(this + 1));
    if (v24 >= 0)
    {
      v15 = __p;
    }

    else
    {
      v15 = __p[0];
    }

    if (v24 >= 0)
    {
      v16 = HIBYTE(v24);
    }

    else
    {
      v16 = __p[1];
    }

    std::string::append(a3, v15, v16);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    v17 = *(this + 3) | (*(this + 5) << 16);
    subscriber::Bcd10Decoder(__p, v17 >> 14);
    if (v24 >= 0)
    {
      v18 = __p;
    }

    else
    {
      v18 = __p[0];
    }

    if (v24 >= 0)
    {
      v19 = HIBYTE(v24);
    }

    else
    {
      v19 = __p[1];
    }

    std::string::append(a3, v18, v19);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if ((v17 & 0x3C00) == 0x2800)
    {
      v20 = 48;
    }

    else
    {
      v20 = (v17 >> 10) & 0xF | 0x30;
    }

    std::string::push_back(a3, v20);
    subscriber::Bcd10Decoder(__p, v17 & 0x3FF);
    if (v24 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v24 >= 0)
    {
      v22 = HIBYTE(v24);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(a3, v21, v22);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_237470F7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 23) < 0)
  {
    operator delete(*v15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *subscriber::Bcd10Decoder(subscriber *this, __int16 a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  result = std::string::basic_string[abi:ne200100]<0>(this, "xxx");
  v4 = (a2 + 111) % 0xAu;
  if (result[23] >= 0)
  {
    v5 = result;
  }

  else
  {
    v5 = *result;
  }

  v5[2] = v4 | 0x30;
  if (!((a2 + 111) % 0xAu))
  {
    v4 = 10;
  }

  v6 = (a2 + 111 - v4) / 0xAu;
  v7 = v6 - 10 * ((6554 * v6) >> 16);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  v8[1] = v7 | 0x30;
  if (v6 == 10 * ((6554 * v6) >> 16))
  {
    LOWORD(v7) = 10;
  }

  v9 = ((v6 - v7) / 0xAu - 10 * ((6554 * ((v6 - v7) / 0xAu)) >> 16)) | 0x30;
  if (result[23] >= 0)
  {
    v10 = result;
  }

  else
  {
    v10 = *result;
  }

  *v10 = v9;
  return result;
}

void subscriber::sDecodeUIMID(uint64_t a1, unsigned int a2, int a3)
{
  v3 = *(a1 + 8);
  v4 = v3 - (a2 - a3);
  v5 = v3 - a2;
  if ((v4 - v5) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  __p = 0;
  v11 = 0;
  v12 = 0;
  if ((v4 - v5) > 0x16)
  {
    operator new();
  }

  HIBYTE(v12) = v4 - v5;
  p_p = &__p;
  if (a3)
  {
    do
    {
      v7 = *--v4;
      *p_p = v7;
      p_p = (p_p + 1);
    }

    while (v4 != v5);
  }

  *p_p = 0;
  if (v12 >= 0)
  {
    v8 = &__p;
  }

  else
  {
    v8 = __p;
  }

  if (v12 >= 0)
  {
    v9 = HIBYTE(v12);
  }

  else
  {
    v9 = v11;
  }

  ctu::hex(v8, v9);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p);
  }
}

void sub_2374711B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL subscriber::sDecodeMccMnc(_BYTE *a1, uint64_t a2, std::string *this, std::string *a4)
{
  if (a2 == 3)
  {
    std::string::push_back(this, *a1 & 0xF | 0x30);
    std::string::push_back(this, (*a1 >> 4) | 0x30);
    std::string::push_back(this, a1[1] & 0xF | 0x30);
    std::string::push_back(a4, a1[2] & 0xF | 0x30);
    std::string::push_back(a4, (a1[2] >> 4) | 0x30);
    v8 = a1[1] >> 4;
    if (v8 != 15)
    {
      std::string::push_back(a4, v8 | 0x30);
    }
  }

  return a2 == 3;
}

void subscriber::sDecodePSISMSC(unsigned __int8 **a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 < v4)
  {
    v5 = *a1;
    do
    {
      v6 = *v5++;
      if (v6 == 128)
      {
        if (v5 == v4)
        {
          return;
        }

        v7 = *v5;
        v8 = &v5[v7];
        if (!v7 || v4 <= v8)
        {
          return;
        }

        v10 = (v3 + 2);
        __p = 0uLL;
        v12 = 0;
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v3 + 2, &v3[v7 + 2], v7);
        std::vector<std::string>::push_back[abi:ne200100](a2, &__p);
        if (SHIBYTE(v12) < 0)
        {
          operator delete(__p);
        }

        v5 = &v10[v7];
      }

      v3 = v5;
    }

    while (v5 < v4);
  }
}

void sub_237471374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void subscriber::sDecodeIsimTLVTransparent(NSObject **a1, uint64_t *a2, uint64_t *a3, std::string *this)
{
  v18 = *MEMORY[0x277D85DE8];
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v7 = *a3;
  v8 = a3[1];
  if (*a3 != v8)
  {
    v9 = *(v7 + 1);
    if (*(v7 + 1) && v8 > v9 + v7 + 1)
    {
      std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(this, (v7 + 2), (v9 + v7 + 2), v9);
      v12 = *a1;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        if (*(a2 + 23) < 0)
        {
          a2 = *a2;
        }

        if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = this;
        }

        else
        {
          v13 = this->__r_.__value_.__r.__words[0];
        }

        v14 = 136315394;
        v15 = a2;
        v16 = 2080;
        v17 = v13;
        _os_log_impl(&dword_2373EA000, v12, OS_LOG_TYPE_DEFAULT, "#I sDecodeIsimTLVTransparent() %s=%s", &v14, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void subscriber::sDecodeIsimTLVLinearFixed(os_log_t *a1, uint64_t *a2, unint64_t *a3, void ***a4)
{
  v26 = *MEMORY[0x277D85DE8];
  std::vector<std::string>::clear[abi:ne200100](a4);
  v8 = *a3;
  v9 = a3[1];
  if (*a3 < v9)
  {
    v10 = *a3;
    do
    {
      v11 = *v10++;
      if (v11 == 128)
      {
        v12 = *v10;
        v13 = &v10[v12];
        if (v12)
        {
          v14 = v9 > v13;
        }

        else
        {
          v14 = 0;
        }

        if (!v14)
        {
          break;
        }

        v15 = (v8 + 2);
        __p = 0uLL;
        v21 = 0;
        std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&__p, v8 + 2, &v8[v12 + 2], v12);
        std::vector<std::string>::push_back[abi:ne200100](a4, &__p);
        v16 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          v17 = a2;
          if (*(a2 + 23) < 0)
          {
            v17 = *a2;
          }

          p_p = &__p;
          if (v21 < 0)
          {
            p_p = __p;
          }

          *buf = 136315394;
          v23 = v17;
          v24 = 2080;
          v25 = p_p;
          _os_log_impl(&dword_2373EA000, v16, OS_LOG_TYPE_DEFAULT, "#I sDecodeIsimTLVLinearFixed() %s=%s", buf, 0x16u);
        }

        if (SHIBYTE(v21) < 0)
        {
          operator delete(__p);
        }

        v10 = &v15[v12];
      }

      v8 = v10;
    }

    while (v10 < v9);
  }

  v19 = *MEMORY[0x277D85DE8];
}

void sub_23747165C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void subscriber::sDecodePcscf(os_log_t *a1, unsigned __int8 **a2, std::string *this)
{
  v21 = *MEMORY[0x277D85DE8];
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    *this->__r_.__value_.__l.__data_ = 0;
    this->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    this->__r_.__value_.__s.__data_[0] = 0;
    *(&this->__r_.__value_.__s + 23) = 0;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = *a2 + 1;
  if (**a2 == 128 && v7 != v6)
  {
    v9 = *v7;
    if (*v7 && &v6[-v5 - 2] >= *v7)
    {
      if (v9 != 1)
      {
        std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(this, (v5 + 3), (v5 + 3 + (v9 - 1)), (v9 - 1));
        v14 = *a1;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if ((this->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v15 = this;
          }

          else
          {
            v15 = this->__r_.__value_.__r.__words[0];
          }

          v17 = 136315138;
          v18 = v15;
          v11 = "#I sDecodePcscf() Proxy=%s";
          v12 = v14;
          v13 = 12;
          goto LABEL_18;
        }
      }
    }

    else
    {
      v10 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 134218240;
        v18 = &v6[~v5];
        v19 = 1024;
        v20 = v9;
        v11 = "#I sDecodePcscf() Size mismatch. Data Size=%lu, Length from TLV=%d";
        v12 = v10;
        v13 = 18;
LABEL_18:
        _os_log_impl(&dword_2373EA000, v12, OS_LOG_TYPE_DEFAULT, v11, &v17, v13);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void subscriber::sDecodeEapAka(os_log_t *a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t a3@<X8>)
{
  v36 = 0;
  v37 = 0;
  v35 = &v36;
  v5 = *a2;
  v6 = a2[1];
  if (*a2 == v6)
  {
    v10 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v11 = "#I EAP-AKA response empty; dropping";
      goto LABEL_16;
    }

LABEL_17:
    v15 = 0;
    *a3 = 0;
    goto LABEL_18;
  }

  v7 = *v5;
  if (v7 == 219)
  {
    v34 = 5;
    *buf = &v34;
    v12 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(&v35, 5);
    if (v5 + 1 == v6 || (v13 = v5 + 2, v14 = v5[1], v6 - v13 < v14))
    {
      v10 = *a1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "#I EAP-AKA authentication missing RES field; dropping";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v12 + 5, v13, &v13[v14], v14);
    v34 = 6;
    *buf = &v34;
    v19 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(&v35, 6);
    v20 = &v13[v14];
    if (v20 == v6 || (v23 = *v20, v21 = (v20 + 1), v22 = v23, v6 - v21 < v23))
    {
      v10 = *a1;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v11 = "#I EAP-AKA authentication missing CK field; dropping";
      goto LABEL_16;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v19 + 5, v21, &v21[v22], v22);
    v34 = 7;
    *buf = &v34;
    v24 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(&v35, 7);
    v25 = &v21[v22];
    if (v25 == v6 || (v28 = *v25, v26 = (v25 + 1), v27 = v28, v6 - v26 < v28))
    {
      v10 = *a1;
      if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      *buf = 0;
      v11 = "#I EAP-AKA authentication missing IK field; dropping";
      goto LABEL_16;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v24 + 5, v26, &v26[v27], v27);
    v34 = 4;
    *buf = &v34;
    v29 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(&v35, 4);
    v30 = &v26[v27];
    if (v30 != v6)
    {
      v33 = *v30;
      v31 = (v30 + 1);
      v32 = v33;
      if (v6 - v31 >= v33)
      {
        std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v29 + 5, v31, &v31[v32], v32);
        v31 += v32;
      }

      if (v31 != v6)
      {
        v10 = *a1;
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        *buf = 0;
        v11 = "#I EAP-AKA authentication has extra bytes left over; dropping";
        goto LABEL_16;
      }
    }
  }

  else
  {
    if (v7 != 220)
    {
      v10 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "#I EAP-AKA authentication returned auth failure; dropping";
        goto LABEL_16;
      }

      goto LABEL_17;
    }

    v34 = 9;
    *buf = &v34;
    v8 = std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(&v35, 9);
    if (v5 + 1 == v6 || (v9 = v5[1], v6 - (v5 + 2) < v9))
    {
      v10 = *a1;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v11 = "#I EAP-AKA authentication missing AUTS field, dropping";
LABEL_16:
        _os_log_impl(&dword_2373EA000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
        goto LABEL_17;
      }

      goto LABEL_17;
    }

    std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(v8 + 5, v5 + 2, &v5[v9 + 2], v9);
  }

  v16 = v36;
  *a3 = v35;
  *(a3 + 8) = v16;
  v17 = a3 + 8;
  v18 = v37;
  *(a3 + 16) = v37;
  if (v18)
  {
    v16[2] = v17;
    v35 = &v36;
    v15 = 1;
    v36 = 0;
    v37 = 0;
  }

  else
  {
    *a3 = v17;
    v15 = 1;
  }

LABEL_18:
  *(a3 + 24) = v15;
  std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::destroy(&v35, v36);
}

void subscriber::sDecodePhoneBookFile(os_log_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v52 = *MEMORY[0x277D85DE8];
  v5 = *(a2 + 4);
  if (v5 != 4 && v5 != 15)
  {
    v20 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_19;
    }

    *buf = 136315138;
    *&buf[4] = subscriber::asString(v5);
    v17 = "Invalid file for decoding: %s";
    v18 = v20;
    v19 = 12;
    goto LABEL_29;
  }

  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  if (v7 == v8 || (v9 = *(a2 + 34), !*(a2 + 34)) || (v10 = *(a2 + 36), !*(a2 + 36)))
  {
    v16 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v17 = "Invalid file data, or invalid record info";
      v18 = v16;
      v19 = 2;
LABEL_29:
      _os_log_error_impl(&dword_2373EA000, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
    }

LABEL_19:
    *a3 = 0;
    *(a3 + 160) = 0;
    goto LABEL_20;
  }

  v11 = v8 - v7;
  if (*(a2 + 36) * *(a2 + 34) != v8 - v7)
  {
    v23 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109632;
      *&buf[4] = v10;
      *&buf[8] = 1024;
      *&buf[10] = v9;
      *&buf[14] = 2048;
      *&buf[16] = v11;
      v17 = "Invalid data size, expecting (%d * %d), have (%lu)";
      v18 = v23;
      v19 = 24;
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  v12 = &v7[v10];
  while (*v7 == 255)
  {
    if (++v7 == v12)
    {
      v13 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2373EA000, v13, OS_LOG_TYPE_DEFAULT, "#I No record data - valid but no number found", buf, 2u);
      }

      CSIPhoneNumber::CSIPhoneNumber(buf, &str_2_5);
      *a3 = *buf;
      *(a3 + 8) = *&buf[8];
      *(a3 + 24) = v39;
      *(a3 + 32) = v40;
      v14 = v42;
      *(a3 + 48) = v41;
      *(a3 + 56) = v14;
      *(a3 + 64) = v43;
      *(a3 + 96) = v46;
      v15 = v45;
      *(a3 + 80) = v44;
      *(a3 + 88) = v15;
      *(a3 + 104) = v47;
      *(a3 + 120) = v48;
      *(a3 + 128) = v49;
      *(a3 + 144) = v50;
      *(a3 + 152) = v51;
      *(a3 + 160) = 1;
      goto LABEL_20;
    }
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(&v35, v12 - 14, v12, 0xEuLL);
  v24 = *(v36 - 1);
  if (*(v36 - 1) && v24 != 255)
  {
    v26 = *a1;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v24;
      v27 = "NOT SUPPORTED - Phone Number too long (EXT record index 0x%02x";
      goto LABEL_37;
    }
  }

  else
  {
    v25 = *v35;
    if (v25 < 0xC)
    {
      v28 = *(v35 + 1);
      memset(&__p, 0, sizeof(__p));
      decodePackedBCDExtendedAddress(v35 + 2, (v25 - 1), &__p);
      CSIPhoneNumber::CSIPhoneNumber(buf, v28, &__p);
      *a3 = *buf;
      *(a3 + 8) = *&buf[8];
      *(a3 + 24) = v39;
      *&buf[8] = 0uLL;
      *(a3 + 32) = v40;
      v39 = 0;
      v40 = 0uLL;
      v29 = v41;
      v30 = v42;
      v41 = 0;
      *(a3 + 48) = v29;
      *(a3 + 56) = v30;
      *(a3 + 64) = v43;
      v43 = 0uLL;
      *(a3 + 96) = v46;
      v31 = v45;
      *(a3 + 80) = v44;
      *(a3 + 88) = v31;
      v32 = v47;
      *(a3 + 120) = v48;
      *(a3 + 104) = v32;
      v44 = 0;
      v47 = 0uLL;
      v33 = v49;
      *(a3 + 144) = v50;
      *(a3 + 128) = v33;
      v50 = 0;
      v48 = 0;
      v49 = 0uLL;
      *(a3 + 152) = v51;
      *(a3 + 160) = 1;
      CSIPhoneNumber::~CSIPhoneNumber(buf);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      goto LABEL_34;
    }

    v26 = *a1;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v25;
      v27 = "Warning - Invalid length (%d)";
LABEL_37:
      _os_log_error_impl(&dword_2373EA000, v26, OS_LOG_TYPE_ERROR, v27, buf, 8u);
    }
  }

  *a3 = 0;
  *(a3 + 160) = 0;
LABEL_34:
  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }

LABEL_20:
  v22 = *MEMORY[0x277D85DE8];
}

void sub_237472000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(_BYTE *result, char *a2, char *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    v6 = *a2++;
    *v5++ = v6;
  }

  *v5 = 0;
  return result;
}

void std::string::__assign_trivial[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(std::string *this, std::string::value_type *a2, std::string::value_type *a3, std::string::size_type a4)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    v9 = this;
    if (a4 <= 0x16)
    {
      goto LABEL_11;
    }

    v10 = 22;
    goto LABEL_6;
  }

  v11 = this->__r_.__value_.__r.__words[2];
  v10 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
  if (v10 < a4)
  {
    size = this->__r_.__value_.__l.__size_;
LABEL_6:
    std::string::__grow_by(this, v10, a4 - v10, size, 0, size, 0);
    this->__r_.__value_.__l.__size_ = 0;
    LOBYTE(v12) = *(&this->__r_.__value_.__s + 23);
    goto LABEL_8;
  }

  v12 = HIBYTE(v11);
LABEL_8:
  v9 = this;
  if ((v12 & 0x80) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[0];
  }

LABEL_11:
  while (a2 != a3)
  {
    v13 = *a2++;
    v9->__r_.__value_.__s.__data_[0] = v13;
    v9 = (v9 + 1);
  }

  v9->__r_.__value_.__s.__data_[0] = 0;
  if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
  {
    this->__r_.__value_.__l.__size_ = a4;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = a4 & 0x7F;
  }
}

void *std::vector<unsigned char>::__assign_with_size[abi:ne200100]<std::__wrap_iter<unsigned char const*>,std::__wrap_iter<unsigned char const*>>(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    v9 = 2 * v7;
    if (2 * v7 <= a4)
    {
      v9 = a4;
    }

    if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    std::vector<unsigned char>::__vallocate[abi:ne200100](v6, v10);
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v18 = a3 - __src;
    if (v18)
    {
      result = memmove(*result, __src, v18);
    }

    v17 = &v8[v18];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    v14 = v11;
    if (v13 != a3)
    {
      v14 = (&a3[v11] - v13);
      v15 = v11;
      do
      {
        v16 = *v13++;
        *v15++ = v16;
      }

      while (v13 != a3);
    }

    v17 = v14;
  }

  v6[1] = v17;
  return result;
}

uint64_t *std::__tree<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::__map_value_compare<subscriber::AuthInfo,std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>,std::less<subscriber::AuthInfo>,true>,std::allocator<std::__value_type<subscriber::AuthInfo,std::vector<unsigned char>>>>::__emplace_unique_key_args<subscriber::AuthInfo,std::piecewise_construct_t const&,std::tuple<subscriber::AuthInfo&&>,std::tuple<>>(uint64_t a1, int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void SchedulerSpec::dumpState(SchedulerSpec *this, os_log_t oslog)
{
  v15 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asString(*this);
    v5 = *(this + 1);
    v6 = *(this + 16);
    v9 = 136315650;
    if (v6)
    {
      v7 = "true";
    }

    else
    {
      v7 = "false";
    }

    v10 = v4;
    v11 = 2112;
    v12 = v5;
    v13 = 2080;
    v14 = v7;
    _os_log_impl(&dword_2373EA000, oslog, OS_LOG_TYPE_DEFAULT, "Scheduler spec - weekday: %s, date: %@, wake: %s", &v9, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];
}

void PeriodicSchedulerConfiguration::dumpState(PeriodicSchedulerConfiguration *this, os_log_t oslog)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 0x6DB6DB6DB6DB6DB7 * ((*(this + 1) - *this) >> 3);
    v8 = 134217984;
    v9 = v4;
    _os_log_impl(&dword_2373EA000, oslog, OS_LOG_TYPE_DEFAULT, "Scheduler configuration has %zu specs", &v8, 0xCu);
  }

  v6 = *this;
  v5 = *(this + 1);
  while (v6 != v5)
  {
    SchedulerSpec::dumpState(v6, oslog);
    v6 = (v6 + 56);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void computeDeadlineAfterDate(const SchedulerSpec *a1@<X0>, const __CFDate *a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 1);
  *a3 = 0;
  if (a2 && v4)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = objc_alloc(MEMORY[0x277CBEA80]);
    v9 = [v8 initWithCalendarIdentifier:*MEMORY[0x277CBE5D0]];
    v10 = *(a1 + 1);
    v11 = [v9 components:224 fromDate:v10];
    v12 = v11;
    v13 = *a1;
    if (v13 != 7)
    {
      [v11 setWeekday:v13 + 1];
    }

    v14 = [v9 nextDateAfterDate:a2 matchingComponents:v12 options:2];
    v15 = v14;
    if (v14)
    {
      CFRetain(v14);
    }

    *a3 = v15;
    v16 = 0;
    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v16);

    objc_autoreleasePoolPop(v7);
  }
}

void getCurrentDate(uint64_t *a1@<X0>, CFDateRef *a2@<X8>)
{
  v3 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v4 = *(v3 + 24);
  v5 = off_284A6A5C8;
  if ((off_284A6A5C8 & 0x8000000000000000) != 0)
  {
    v6 = (off_284A6A5C8 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(v4 + 3);
  v14 = v5;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v4[4].__m_.__sig, &v14);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4 + 3);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::__shared_weak_count::__release_shared[abi:ne200100](v10);
      v12 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4 + 3);
  v10 = 0;
  v12 = 1;
LABEL_9:
  v13 = (*(*v11 + 96))(v11);
  *a2 = CFDateCreate(*MEMORY[0x277CBECE8], v13);
  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }
}

void sub_23747288C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

int32x2_t CSIGetGmtTime(uint64_t a1)
{
  memset(&v6, 0, sizeof(v6));
  if (mach_get_times())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2373EA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failed to get mct", buf, 2u);
    }
  }

  else
  {
    *(a1 + 32) = 0;
    *buf = 0;
    localtime_r(buf, &v6);
    tm_isdst = v6.tm_isdst;
    *(a1 + 24) = SLODWORD(v6.tm_gmtoff) / 60;
    *(a1 + 28) = tm_isdst > 0;
    gmtime_r(buf, &v6);
    v4 = vrev64q_s32(*&v6.tm_sec);
    *a1 = vextq_s8(v4, v4, 0xCuLL);
    result = vadd_s32(*&v6.tm_mon, 0x76C00000001);
    *(a1 + 16) = result;
    *(a1 + 40) = 0;
  }

  return result;
}

time_t CSIDateToSeconds(uint64_t a1)
{
  memset(&v3.tm_wday, 0, 32);
  v1 = vrev64q_s32(*a1);
  *&v3.tm_sec = vextq_s8(v1, v1, 0xCuLL);
  *&v3.tm_mon = vadd_s32(*(a1 + 16), 0xFFFFF894FFFFFFFFLL);
  return timegm(&v3);
}

int32x2_t CSISecondsToDate(time_t a1, uint64_t a2)
{
  memset(&v6, 0, sizeof(v6));
  v5 = a1;
  gmtime_r(&v5, &v6);
  v3 = vrev64q_s32(*&v6.tm_sec);
  *a2 = vextq_s8(v3, v3, 0xCuLL);
  result = vadd_s32(*&v6.tm_mon, 0x76C00000001);
  *(a2 + 16) = result;
  return result;
}

uint64_t CSIDateToMilliseconds(uint64_t a1)
{
  memset(&v3.tm_wday, 0, 32);
  v1 = vrev64q_s32(*a1);
  *&v3.tm_sec = vextq_s8(v1, v1, 0xCuLL);
  *&v3.tm_mon = vadd_s32(*(a1 + 16), 0xFFFFF894FFFFFFFFLL);
  return *(a1 + 32) / 1000000 + 1000 * timegm(&v3);
}

int32x2_t CSIDateAddSeconds(uint64_t a1, void *a2)
{
  v3 = *a2 + CSIDateToSeconds(a1);

  return CSISecondsToDate(v3, a1);
}

unint64_t CSIMCTToNanoseconds(unint64_t a1, mach_timebase_info a2)
{
  v22 = *MEMORY[0x277D85DE8];
  if (a2.denom)
  {
    if (a2.denom >= a2.numer)
    {
      numer = a2.numer;
    }

    else
    {
      numer = a2.denom;
    }

    if (a2.denom <= a2.numer)
    {
      denom = a2.numer;
    }

    else
    {
      denom = a2.denom;
    }

    if (numer)
    {
      v6 = denom % numer;
      if (v6)
      {
        v7 = v6 >> __clz(__rbit32(v6));
        v8 = numer;
        do
        {
          v9 = v8 >> __clz(__rbit32(v8));
          v8 = v9 - v7;
          if (v7 > v9)
          {
            v8 = v7 - v9;
          }

          if (v7 >= v9)
          {
            v7 = v9;
          }
        }

        while (v8);
        numer = v7 << __clz(__rbit32(v6 | numer));
      }
    }

    else
    {
      numer = denom;
    }

    v10 = a2.numer / numer;
    v11 = a2.denom / numer;
    if (is_mul_ok(v10, a1))
    {
      v2 = v10 * a1 / v11;
    }

    else
    {
      v2 = a1 / (v11 / v10);
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        v14 = 134218752;
        v15 = v2;
        v16 = 2048;
        v17 = a1;
        v18 = 1024;
        v19 = v10;
        v20 = 1024;
        v21 = v11;
        _os_log_impl(&dword_2373EA000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "overflow detected, result: %llu, mct: %llu, timebase numer: %u, timebase denom: %u", &v14, 0x22u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      LOWORD(v14) = 0;
      _os_log_error_impl(&dword_2373EA000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "denom of timebase is 0", &v14, 2u);
    }

    v2 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v2;
}

BOOL isXLAT464Interface(const char *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    a1 = "pdp_ip0";
  }

  v4 = 0;
  v5 = 0;
  v6 = 0;
  getCLAT46IPv6Address(a1, &v8, v9, &v7, &v4);
  if (SHIBYTE(v6) < 0)
  {
    v1 = v5 != 0;
    operator delete(v4);
  }

  else
  {
    v1 = SHIBYTE(v6) != 0;
  }

  v2 = *MEMORY[0x277D85DE8];
  return v1;
}

_BYTE *getCLAT46IPv6Address@<X0>(const char *a1@<X0>, unsigned int *a2@<X1>, unsigned __int8 *a3@<X2>, const char **a4@<X3>, _BYTE *a5@<X8>)
{
  v41 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v9 = a1;
  }

  else
  {
    v9 = "pdp_ip0";
  }

  *a2 = 0;
  *a4 = 0;
  v10 = socket(2, 2, 0);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v10;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    *__dst = 0u;
    v23 = 0u;
    strlcpy(__dst, v9, 0x10uLL);
    if ((ioctl(v11, 0xC06069C1uLL, __dst) & 0x80000000) == 0)
    {
      v12 = 0;
      while (1)
      {
        v13 = *(&v24 + v12);
        if (v13)
        {
          break;
        }

        v12 += 20;
        if (v12 == 80)
        {
          goto LABEL_9;
        }
      }

      *a2 = v13;
      *a3 = *&__dst[v12 + 16];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      *__dst = 0u;
      v23 = 0u;
      *v38 = 0u;
      v39 = 0u;
      v40 = 0;
      strlcpy(v38, v9, 0x10uLL);
      if (ioctl(v11, 0xC02469C9uLL, v38) < 0)
      {
        if (*__error() != 2)
        {
          v20 = __error();
          syslog(4, "ioctl (SIOCGIFCLAT46ADDR): %d", *v20);
        }

        *a4 = "cannot ioctl SIOCGIFCLAT46ADDR";
        v19 = "";
      }

      else
      {
        v19 = __dst;
        if (!inet_ntop(30, &v39, __dst, 0x100u))
        {
          close(v11);
          v14 = "ipv6 addr not found";
          goto LABEL_10;
        }
      }

      close(v11);
      v16 = a5;
      v15 = v19;
      goto LABEL_21;
    }

LABEL_9:
    close(v11);
    v14 = "cannot ioctl SIOCGIFNAT64PREFIX";
LABEL_10:
    *a4 = v14;
    v15 = "";
    v16 = a5;
LABEL_21:
    result = std::string::basic_string[abi:ne200100]<0>(v16, v15);
    v21 = *MEMORY[0x277D85DE8];
    return result;
  }

  *a4 = "cannot open socket for XLAT";
  v17 = *MEMORY[0x277D85DE8];

  return std::string::basic_string[abi:ne200100]<0>(a5, "");
}

uint64_t getCLAT46IPv6AddressRemote(const unsigned __int8 *a1, size_t __n, const unsigned __int8 *__src, unsigned __int8 *__dst)
{
  result = 0;
  if (__n <= 0xC)
  {
    if (a1)
    {
      v6 = __n;
      if (__n)
      {
        if (__src && __dst)
        {
          memcpy(__dst, __src, __n);
          result = 0;
          if (v6 > 6)
          {
            if (v6 != 7)
            {
              if (v6 == 8)
              {
                *(__dst + 9) = *a1;
              }

              else
              {
                if (v6 != 12)
                {
                  return result;
                }

                *(__dst + 3) = *a1;
              }

              return 1;
            }

            __dst[7] = *a1;
            v8 = *(a1 + 1);
            __dst[11] = a1[3];
          }

          else
          {
            if (v6 == 4)
            {
              *(__dst + 1) = *a1;
              return 1;
            }

            if (v6 == 5)
            {
              v9 = *a1;
              __dst[7] = a1[2];
              *(__dst + 5) = v9;
              __dst[9] = a1[3];
              return 1;
            }

            if (v6 != 6)
            {
              return result;
            }

            *(__dst + 3) = *a1;
            v8 = *(a1 + 1);
          }

          *(__dst + 9) = v8;
          return 1;
        }
      }
    }
  }

  return result;
}

void convertUuidToIntegers(CFUUIDRef *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v3 = CFUUIDGetUUIDBytes(*a1);
  v7 = *&v3.byte0;
  std::vector<subscriber::HardwareSimSlot>::push_back[abi:ne200100](a2, &v7);
  v6 = *&v3.byte4;
  std::vector<subscriber::HardwareSimSlot>::push_back[abi:ne200100](a2, &v6);
  v5 = *&v3.byte8;
  std::vector<subscriber::HardwareSimSlot>::push_back[abi:ne200100](a2, &v5);
  v4 = *&v3.byte12;
  std::vector<subscriber::HardwareSimSlot>::push_back[abi:ne200100](a2, &v4);
}

void sub_2374731C8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFUUIDRef covertIntegersToUuid@<X0>(int byte8@<W2>, int byte12@<W3>, int a3@<W0>, int byte7@<W1>, CFUUIDRef *a5@<X8>)
{
  result = CFUUIDCreateWithBytes(*MEMORY[0x277CBECE8], a3, BYTE1(a3), BYTE2(a3), HIBYTE(a3), byte7, BYTE1(byte7), BYTE2(byte7), HIBYTE(byte7), byte8, BYTE1(byte8), BYTE2(byte8), HIBYTE(byte8), byte12, BYTE1(byte12), BYTE2(byte12), HIBYTE(byte12));
  *a5 = result;
  return result;
}

const void **toUuid@<X0>(const void **result@<X0>, CFUUIDRef *a2@<X8>)
{
  v2 = result;
  if ((*(result + 23) & 0x80000000) == 0)
  {
    if (!*(result + 23))
    {
      goto LABEL_7;
    }

LABEL_6:
    v4 = *MEMORY[0x277CBECE8];
    v5 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], v2, 0x8000100u);
    v6 = v5;
    *a2 = 0;
    *a2 = CFUUIDCreateFromString(v4, v5);
    return ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v6);
  }

  if (result[1])
  {
    v2 = *result;
    goto LABEL_6;
  }

LABEL_7:
  *a2 = 0;
  return result;
}

void sub_237473320(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

BOOL numberContainsAlphabet(char *a1)
{
  v1 = a1[23];
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 1);
  }

  if (!v1)
  {
    return 0;
  }

  v3 = v1 - 1;
  v4 = MEMORY[0x277D85DE0];
  do
  {
    v5 = *v2;
    if ((v5 & 0x80000000) != 0)
    {
      v6 = __maskrune(v5, 0x100uLL);
    }

    else
    {
      v6 = *(v4 + 4 * v5 + 60) & 0x100;
    }

    result = v6 != 0;
    ++v2;
    if (v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = v3 == 0;
    }

    --v3;
  }

  while (!v8);
  return result;
}

uint64_t getEmergencySetupTypeOf(int a1)
{
  if (((a1 - 2) & 0xFFFFFFFD) != 0)
  {
    return 2 * (a1 == 3);
  }

  else
  {
    return 1;
  }
}

const char *convertPhoneCallSubTypeToPublicString(char a1)
{
  if ((a1 - 1) > 7u)
  {
    return "Unknown";
  }

  else
  {
    return off_278A31F80[(a1 - 1)];
  }
}

uint64_t convertWirelessTechnologyToCallTechnology(int a1)
{
  if (a1 == 4)
  {
    v1 = 2;
  }

  else
  {
    v1 = 6;
  }

  if (a1 == 8)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 32)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t convertRadioTechnologyToRatType(int a1)
{
  if ((a1 - 2) > 8)
  {
    return 0;
  }

  else
  {
    return dword_2374B95B4[a1 - 2];
  }
}

void CallMetricRedial::dumpState(CallMetricRedial *this, os_log_t *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *this;
    v9 = 67109120;
    LODWORD(v10) = v5;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I From Rat: %u", &v9, 8u);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(this + 6);
    v9 = 67109120;
    LODWORD(v10) = v6;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I In Rat: %u", &v9, 8u);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 4);
    v9 = 134217984;
    v10 = v7;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I Redial Delay: %llu", &v9, 0xCu);
  }

  v8 = *MEMORY[0x277D85DE8];
}

BOOL CallInfo::operator==(CFUUIDRef *a1, CFUUIDRef *a2)
{
  if (*a1)
  {
    v3 = *a2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    return 0;
  }

  v5 = *MEMORY[0x277CBECE8];
  v6 = CFUUIDCreateString(*MEMORY[0x277CBECE8], *a1);
  v11 = v6;
  v7 = CFUUIDCreateString(v5, *a2);
  v10 = v7;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  v4 = !v8 && CFStringCompare(v6, v7, 0) == kCFCompareEqualTo;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v10);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v11);
  return v4;
}

void sub_237473AE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a9);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a10);
  _Unwind_Resume(a1);
}

_BYTE *CallInfo::toString@<X0>(CallInfo *this@<X0>, _BYTE *a2@<X8>)
{
  if (*this)
  {
    v104 = 0;
    v102 = 0u;
    memset(v103, 0, sizeof(v103));
    *v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    *__src = 0u;
    v96 = 0u;
    v97 = 0u;
    v95 = 0u;
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v95);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "UUID: ", 6);
    ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::SharedRef(&v92, this);
    printUuid(&v92, __p);
    if ((v94 & 0x80u) == 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    if ((v94 & 0x80u) == 0)
    {
      v6 = v94;
    }

    else
    {
      v6 = __p[1];
    }

    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, v6);
    std::ios_base::getloc((v7 + *(*v7 - 24)));
    v8 = std::locale::use_facet(&v105, MEMORY[0x277D82680]);
    (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(&v105);
    std::ostream::put();
    std::ostream::flush();
    if (v94 < 0)
    {
      operator delete(__p[0]);
    }

    ctu::SharedRef<__CFUUID const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFUUID const>::~SharedRef(&v92);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Call ID: ", 9);
    v10 = MEMORY[0x2383CBD30](v9, *(this + 2));
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Phone Number: ", 14);
    v13 = *(this + 47);
    if (v13 >= 0)
    {
      v14 = this + 24;
    }

    else
    {
      v14 = *(this + 3);
    }

    if (v13 >= 0)
    {
      v15 = *(this + 47);
    }

    else
    {
      v15 = *(this + 4);
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v14, v15);
    std::ios_base::getloc((v16 + *(*v16 - 24)));
    v17 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Phone Number Type: ", 19);
    v19 = asString(*(this + 12));
    v20 = strlen(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v19, v20);
    std::ios_base::getloc((v21 + *(*v21 - 24)));
    v22 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v22->__vftable[2].~facet_0)(v22, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Call Sub Type: ", 15);
    v24 = *(this + 52);
    if (v24 <= 3)
    {
      if (v24 == 1)
      {
        v25 = "Telephony";
        goto LABEL_31;
      }

      if (v24 == 2)
      {
        v25 = "Wifi";
        goto LABEL_31;
      }
    }

    else
    {
      switch(v24)
      {
        case 4u:
          v25 = "VoLTE";
          goto LABEL_31;
        case 8u:
          v25 = "VoNR";
          goto LABEL_31;
        case 0x10u:
          v25 = "SOSCall";
          goto LABEL_31;
      }
    }

    v25 = "Unknown";
LABEL_31:
    v27 = strlen(v25);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v27);
    std::ios_base::getloc((v28 + *(*v28 - 24)));
    v29 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v29->__vftable[2].~facet_0)(v29, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Caller Name: ", 13);
    v31 = *(this + 255);
    if (v31 >= 0)
    {
      v32 = this + 232;
    }

    else
    {
      v32 = *(this + 29);
    }

    if (v31 >= 0)
    {
      v33 = *(this + 255);
    }

    else
    {
      v33 = *(this + 30);
    }

    v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
    std::ios_base::getloc((v34 + *(*v34 - 24)));
    v35 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v35->__vftable[2].~facet_0)(v35, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Presentation Indicator: ", 24);
    v37 = *(this + 15);
    if (v37 > 2)
    {
      v38 = "???";
    }

    else
    {
      v38 = off_278A32178[v37];
    }

    v39 = strlen(v38);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v38, v39);
    std::ios_base::getloc((v40 + *(*v40 - 24)));
    v41 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v41->__vftable[2].~facet_0)(v41, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Call Duration: ", 15);
    v43 = MEMORY[0x2383CBD30](v42, *(this + 54));
    std::ios_base::getloc((v43 + *(*v43 - 24)));
    v44 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v44->__vftable[2].~facet_0)(v44, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "FirstCall: ", 11);
    v46 = MEMORY[0x2383CBD10](v45, *(this + 339));
    std::ios_base::getloc((v46 + *(*v46 - 24)));
    v47 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v47->__vftable[2].~facet_0)(v47, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "BB Disconnect Error Code: ", 26);
    v49 = MEMORY[0x2383CBD40](v48, *(this + 176));
    std::ios_base::getloc((v49 + *(*v49 - 24)));
    v50 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v50->__vftable[2].~facet_0)(v50, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "CC Disconnect Error Code: ", 26);
    if (*(this + 360) == 1)
    {
      v52 = *(this + 89);
    }

    else
    {
      v52 = 0;
    }

    v53 = MEMORY[0x2383CBD20](v51, v52);
    std::ios_base::getloc((v53 + *(*v53 - 24)));
    v54 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v54->__vftable[2].~facet_0)(v54, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Call Direction: ", 16);
    v56 = "Unknown";
    v57 = *(this + 3);
    if (v57 == 2)
    {
      v56 = "MobileTerminated";
    }

    if (v57 == 1)
    {
      v58 = "MobileOriginated";
    }

    else
    {
      v58 = v56;
    }

    v59 = strlen(v58);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, v58, v59);
    std::ios_base::getloc((v60 + *(*v60 - 24)));
    v61 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v61->__vftable[2].~facet_0)(v61, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Call Status: ", 13);
    v63 = asString(*(this + 5));
    v64 = strlen(v63);
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
    std::ios_base::getloc((v65 + *(*v65 - 24)));
    v66 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v66->__vftable[2].~facet_0)(v66, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Is in Multi-Pary call: ", 23);
    v68 = MEMORY[0x2383CBD10](v67, *(this + 340));
    std::ios_base::getloc((v68 + *(*v68 - 24)));
    v69 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v69->__vftable[2].~facet_0)(v69, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "SRVCC State: ", 13);
    v71 = *(this + 342);
    if (v71 > 2)
    {
      v72 = "???";
    }

    else
    {
      v72 = off_278A32190[v71];
    }

    v73 = strlen(v72);
    v74 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, v72, v73);
    std::ios_base::getloc((v74 + *(*v74 - 24)));
    v75 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v75->__vftable[2].~facet_0)(v75, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v76 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Sim Slot: ", 10);
    v77 = *(this + 4) - 1;
    if (v77 > 2)
    {
      v78 = "kUnknown";
    }

    else
    {
      v78 = off_278A321A8[v77];
    }

    v79 = strlen(v78);
    v80 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v76, v78, v79);
    std::ios_base::getloc((v80 + *(*v80 - 24)));
    v81 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v81->__vftable[2].~facet_0)(v81, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v82 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Spam Risk Level: ", 17);
    v83 = MEMORY[0x2383CBD30](v82, *(this + 78));
    std::ios_base::getloc((v83 + *(*v83 - 24)));
    v84 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v84->__vftable[2].~facet_0)(v84, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    v85 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v96, "Spam Category: ", 15);
    v86 = MEMORY[0x2383CBD30](v85, *(this + 79));
    std::ios_base::getloc((v86 + *(*v86 - 24)));
    v87 = std::locale::use_facet(__p, MEMORY[0x277D82680]);
    (v87->__vftable[2].~facet_0)(v87, 10);
    std::locale::~locale(__p);
    std::ostream::put();
    std::ostream::flush();
    if ((BYTE8(v102) & 0x10) != 0)
    {
      v89 = v102;
      if (v102 < __src[1])
      {
        *&v102 = __src[1];
        v89 = __src[1];
      }

      v90 = __src[0];
    }

    else
    {
      if ((BYTE8(v102) & 8) == 0)
      {
        v88 = 0;
        a2[23] = 0;
LABEL_67:
        a2[v88] = 0;
        *&v95 = *MEMORY[0x277D82818];
        v91 = *(MEMORY[0x277D82818] + 72);
        *(&v95 + *(v95 - 24)) = *(MEMORY[0x277D82818] + 64);
        *&v96 = v91;
        *(&v96 + 1) = MEMORY[0x277D82878] + 16;
        if (SHIBYTE(v101) < 0)
        {
          operator delete(v100[1]);
        }

        *(&v96 + 1) = MEMORY[0x277D82868] + 16;
        std::locale::~locale(&v97);
        std::iostream::~basic_iostream();
        return MEMORY[0x2383CBE70](v103);
      }

      v90 = *(&v97 + 1);
      v89 = *(&v98 + 1);
    }

    v88 = v89 - v90;
    if ((v89 - v90) >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v88 >= 0x17)
    {
      operator new();
    }

    a2[23] = v88;
    if (v88)
    {
      memmove(a2, v90, v88);
    }

    goto LABEL_67;
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, "<no call>");
}