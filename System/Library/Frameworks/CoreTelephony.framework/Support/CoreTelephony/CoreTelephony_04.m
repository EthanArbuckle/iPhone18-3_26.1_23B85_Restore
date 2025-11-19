void sub_23740584C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void **ctu::SharedRef<os_log_s,ctu::os::os_retain_functor,ctu::os::os_release_functor,os_log_s>::~SharedRef(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    os_release(v2);
  }

  return a1;
}

ctu::llvm::StringRef *ctu::llvm::StringRef::StringRef(ctu::llvm::StringRef *this, const char *__s)
{
  *this = __s;
  if (!__s)
  {
    __assert_rtn("StringRef", "StringRef.h", 83, "Str && StringRef cannot be built from a NULL argument");
  }

  *(this + 1) = strlen(__s);
  return this;
}

void std::__shared_ptr_pointer<HelperRestServer *,std::shared_ptr<HelperRestServer> ctu::SharedSynchronizable<HelperRestServer>::make_shared_ptr<HelperRestServer>(HelperRestServer*)::{lambda(HelperRestServer *)#1},std::allocator<HelperRestServer>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<HelperRestServer *,std::shared_ptr<HelperRestServer> ctu::SharedSynchronizable<HelperRestServer>::make_shared_ptr<HelperRestServer>(HelperRestServer*)::{lambda(HelperRestServer *)#1},std::allocator<HelperRestServer>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL std::type_info::operator==[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == v3)
  {
    return 1;
  }

  if ((v3 & v2) < 0 != __OFSUB__(v2, v3))
  {
    return strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), (v3 & 0x7FFFFFFFFFFFFFFFLL)) == 0;
  }

  return 0;
}

uint64_t std::shared_ptr<HelperRestServer> ctu::SharedSynchronizable<HelperRestServer>::make_shared_ptr<HelperRestServer>(HelperRestServer*)::{lambda(HelperRestServer*)#1}::operator() const(HelperRestServer*)::{lambda(void *)#1}::__invoke(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 96);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    v3 = v1[10];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    if (v1[6])
    {
      std::vector<std::shared_ptr<ctu::RestListener>>::clear[abi:ne200100](v1 + 6);
      operator delete(v1[6]);
    }

    MEMORY[0x2383CB6D0](v1 + 4);
    ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(v1);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void std::vector<std::shared_ptr<ctu::RestListener>>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 16)
  {
    v4 = *(i - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  a1[1] = v2;
}

void *ctu::SharedSynchronizable<HelperRestServer>::~SharedSynchronizable(void *a1)
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

void std::__throw_bad_weak_ptr[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82830] + 16;
  __cxa_throw(exception, MEMORY[0x277D82708], MEMORY[0x277D82630]);
}

uint64_t *std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CBEF0](v2, 0x60C40A44E5E0CLL);
  }

  return a1;
}

void dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::init(void)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::init(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v2 = a1;
  v1 = **a1;
  operator new();
}

void sub_237405D6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  MEMORY[0x2383CBEF0](v12, 0x20C4093837F09);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ctu::TreeRestResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A63AE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

void std::__shared_ptr_emplace<ctu::ConnectionRestResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A63B30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0>(HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0,std::default_delete<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v2 + 104) != 1)
  {
    v6 = v2[1];
    if (v6)
    {
      v7 = *v2;
      v8 = std::__shared_weak_count::lock(v6);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v2[4];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2373EA000, v5, OS_LOG_TYPE_ERROR, "Attempted to add listener after call to start()", buf, 2u);
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_10:
  std::unique_ptr<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0,std::default_delete<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0>>::~unique_ptr[abi:ne200100](&v11);
  return std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
}

void sub_237406110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__shared_weak_count::__release_weak(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::unique_ptr<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0,std::default_delete<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0>>::~unique_ptr[abi:ne200100](&a12);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0,std::default_delete<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }

    MEMORY[0x2383CBEF0](v2, 0x20C40960023A9);
  }

  return a1;
}

void ctu::RestListenerDelegate<HelperRestServer>::~RestListenerDelegate(ctu::RestListenerDelegateBase *this)
{
  *this = &unk_284A63B80;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::RestListenerDelegateBase::~RestListenerDelegateBase(this);
}

{
  *this = &unk_284A63B80;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::RestListenerDelegateBase::~RestListenerDelegateBase(this);

  JUMPOUT(0x2383CBEF0);
}

void ctu::RestListenerDelegate<HelperRestServer>::handleRestMessage(uint64_t a1, uint64_t a2, xpc_object_t *a3)
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
        object = *a3;
        *a3 = xpc_null_create();
        HelperRestServer::handleRestMessage(v9, a2, &object);
        xpc_release(object);
        object = 0;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_2374062F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  _Unwind_Resume(a1);
}

void ctu::RestListenerDelegate<HelperRestServer>::handleRestMessageWithReply(uint64_t a1, uint64_t *a2, xpc_object_t *a3, uint64_t a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 16);
  if (v5)
  {
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = *(a1 + 8);
      if (v10)
      {
        object = *a3;
        *a3 = xpc_null_create();
        std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](v13, a4);
        HelperRestServer::handleRestMessageWithReply(v10, a2, &object, v13);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

void sub_2374063F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ctu::RestListenerDelegate<HelperRestServer>::handleDroppedConnection(uint64_t a1, uint64_t a2, void **a3)
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
        v10 = *a3;
        *a3 = xpc_null_create();
        HelperRestServer::handleDroppedConnection(v9, a2);
        xpc_release(v10);
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }
  }
}

void sub_2374064D8(_Unwind_Exception *a1)
{
  xpc_release(v2);
  std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::shared_ptr<ctu::RestListener>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::shared_ptr<ctu::RestListener>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  while (v2 != v3)
  {
    *(a1 + 16) = v2 - 16;
    v4 = *(v2 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 16;
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::addListener(std::shared_ptr<ctu::RestXpcListener>)::$_0>(HelperRestServer::addListener(std::shared_ptr<ctu::RestXpcListener>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::addListener(std::shared_ptr<ctu::RestXpcListener>)::$_0,std::default_delete<HelperRestServer::addListener(std::shared_ptr<ctu::RestXpcListener>)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (*(&v3 + 1))
  {
    atomic_fetch_add_explicit((*(&v3 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v2 + 104) != 1)
  {
    v6 = v2[1];
    if (v6)
    {
      v7 = *v2;
      v8 = std::__shared_weak_count::lock(v6);
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:ne200100](v8);
        operator new();
      }
    }

    std::__throw_bad_weak_ptr[abi:ne200100]();
  }

  v5 = v2[4];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2373EA000, v5, OS_LOG_TYPE_ERROR, "Attempted to add listener after call to start()", buf, 2u);
    if (!v4)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  if (v4)
  {
LABEL_6:
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

LABEL_10:
  std::unique_ptr<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0,std::default_delete<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0>>::~unique_ptr[abi:ne200100](&v11);
  return std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v10);
}

void sub_2374067D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  std::__shared_weak_count::__release_weak(v13);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  std::unique_ptr<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0,std::default_delete<HelperRestServer::addListener(std::shared_ptr<ctu::RestDispatchListener>)::$_0>>::~unique_ptr[abi:ne200100](&a12);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a11);
  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::start(void)::$_0>(HelperRestServer::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::start(void)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::start(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 32);
  if (*(v2 + 104) == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2373EA000, v3, OS_LOG_TYPE_ERROR, "start() called twice?", buf, 2u);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = (*(v2 + 56) - *(v2 + 48)) >> 4;
      *buf = 134217984;
      v11 = v4;
      _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#N Starting %zu listeners", buf, 0xCu);
    }

    v5 = *(v2 + 48);
    v6 = *(v2 + 56);
    while (v5 != v6)
    {
      (*(**v5 + 16))();
      v5 += 16;
    }

    *(v2 + 104) = 1;
  }

  MEMORY[0x2383CBEF0](v1, 0x20C4093837F09);
  result = std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v9);
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237406974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  MEMORY[0x2383CBEF0](v3, v2);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::stop(dispatch::group_session)::$_0>(HelperRestServer::stop(dispatch::group_session)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::stop(dispatch::group_session)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::stop(dispatch::group_session)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  std::vector<std::shared_ptr<ctu::RestListener>>::clear[abi:ne200100]((v2 + 48));
  v4 = v1[1];
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = v1[1];
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  MEMORY[0x2383CBEF0](v1, 0x20C40A4A59CD2);
  return std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v7);
}

void dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::installAssertionResource(char const*)::$_0>(HelperRestServer::installAssertionResource(char const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::installAssertionResource(char const*)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::installAssertionResource(char const*)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 72);
  ctu::llvm::StringRef::StringRef(v4, *(*a1 + 8));
  MEMORY[0x2383CB9B0](v3, v4[0], v4[1]);
  operator new();
}

void sub_237406B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MEMORY[0x2383CBEF0](v16, 0x70C404252BEB2);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ctu::AssertionRestResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A63BD0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

void dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::installTreeResource(char const*)::$_0>(HelperRestServer::installTreeResource(char const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::installTreeResource(char const*)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::installTreeResource(char const*)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 72);
  ctu::llvm::StringRef::StringRef(v4, *(*a1 + 8));
  MEMORY[0x2383CB9B0](v3, v4[0], v4[1]);
  operator new();
}

void sub_237406D2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v5 = *(v3 - 24);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  MEMORY[0x2383CBEF0](v2, 0x70C404252BEB2);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::installPropertyResource(char const*)::$_0>(HelperRestServer::installPropertyResource(char const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::installPropertyResource(char const*)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::installPropertyResource(char const*)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 72);
  ctu::llvm::StringRef::StringRef(v5, *(*a1 + 8));
  MEMORY[0x2383CB9B0](v4, v5[0], v5[1]);
  v3 = 1;
  std::allocate_shared[abi:ne200100]<ctu::PropertyRestResource,std::allocator<ctu::PropertyRestResource>,BOOL,0>();
}

void sub_237406E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v10 - 24);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  MEMORY[0x2383CBEF0](v9, 0x70C404252BEB2);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void sub_237406EE0(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ctu::PropertyRestResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A63C20;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

void dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::installEventResource(char const*)::$_0>(HelperRestServer::installEventResource(char const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::installEventResource(char const*)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::installEventResource(char const*)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 72);
  ctu::llvm::StringRef::StringRef(v5, *(*a1 + 8));
  MEMORY[0x2383CB9B0](v4, v5[0], v5[1]);
  v3 = 0;
  std::allocate_shared[abi:ne200100]<ctu::PropertyRestResource,std::allocator<ctu::PropertyRestResource>,BOOL,0>();
}

void sub_237407050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(v10 - 24);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  MEMORY[0x2383CBEF0](v9, 0x70C404252BEB2);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void dispatch::async<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::installRequestResource(char const*)::$_0>(HelperRestServer::installRequestResource(char const*)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<HelperRestServer::installRequestResource(char const*)::$_0,dispatch_queue_s *::default_delete<HelperRestServer::installRequestResource(char const*)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 72);
  ctu::llvm::StringRef::StringRef(v4, *(*a1 + 8));
  MEMORY[0x2383CB9B0](v3, v4[0], v4[1]);
  operator new();
}

void sub_237407180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  MEMORY[0x2383CBEF0](v16, 0x70C404252BEB2);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ctu::RequestRestResource>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A63C70;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::allocator<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_284A63CC0;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 2));
  return a1;
}

void std::__function::__func<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::allocator<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::~__func(void *a1)
{
  *a1 = &unk_284A63CC0;
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100]((a1 + 2));

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::allocator<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284A63CC0;
  a2[1] = v2;
  return std::__function::__value_func<void ()(xpc::object)>::__value_func[abi:ne200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::allocator<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](a1 + 16);

  operator delete(a1);
}

void std::__function::__func<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::allocator<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::operator()(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  object = v3;
  v4 = xpc_null_create();
  v5 = *(a1 + 40);
  if (!v5)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v5 + 48))(v5, &object);
  xpc_release(object);
  xpc_release(v4);
}

void sub_2374075AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v10);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0,std::allocator<HelperRestServer::handleRestMessageWithReply(std::shared_ptr<ctu::RestResourceConnection> const&,xpc::dict,std::function<void ()(xpc::object)>)::$_0>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ActivationStatus::ActivationStatus(ActivationStatus *this)
{
  *this = 0x300000002;
  *(this + 4) = 0;
}

{
  *this = 0x300000002;
  *(this + 4) = 0;
}

void ActivationStatus::dumpState(ActivationStatus *this, os_log_t *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(this + 1);
    if (v5 > 3)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_278A2E810[v5];
    }

    v12 = 136315138;
    v13 = v6;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I fManifestResult = %s", &v12, 0xCu);
    v4 = *a2;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 8);
    if (v7 > 4)
    {
      v8 = "???";
    }

    else
    {
      v8 = off_278A2E7E8[v7];
    }

    v9 = *(this + 9);
    if (v9 > 4)
    {
      v10 = "???";
    }

    else
    {
      v10 = off_278A2E7E8[v9];
    }

    v12 = 136315394;
    v13 = v8;
    v14 = 2080;
    v15 = v10;
    _os_log_impl(&dword_2373EA000, v4, OS_LOG_TYPE_DEFAULT, "#I s1: fServiceProvisionStatus = %s, s2: fServiceProvisionStatus = %s", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t DERDecoderInitialize(uint64_t a1, unsigned __int8 *a2, unsigned int *a3, unsigned int a4)
{
  if (!a1)
  {
    __assert_rtn("DERDecoderInitialize", "DERDecoder.c", 366, "decoder != NULL");
  }

  if (!a2)
  {
    __assert_rtn("DERDecoderInitialize", "DERDecoder.c", 367, "buffer != NULL");
  }

  if (!a3)
  {
    __assert_rtn("DERDecoderInitialize", "DERDecoder.c", 368, "ioBufferLength != NULL");
  }

  v8 = *a3;
  if (*a3)
  {
LABEL_5:
    if (v8 > a4)
    {
      return 3;
    }

    result = 0;
    *a3 = v8;
    *a1 = a2;
    *(a1 + 8) = v8;
    return result;
  }

  v12 = 0;
  v13 = 0;
  v11 = 0;
  result = _DERDecodeTag(a2, a4, &v13, &v12 + 1, &v12, &v11);
  if (!result)
  {
    v10 = v11;
    result = _DERDecodeLength(&a2[v11], a4 - v11, &v13 + 1, &v11);
    if (!result)
    {
      v8 = v11 + v10 + HIDWORD(v13);
      if (__CFADD__(v11 + v10, HIDWORD(v13)))
      {
        return 7;
      }

      goto LABEL_5;
    }
  }

  return result;
}

uint64_t _DERDecodeTag(unsigned __int8 *a1, int a2, unsigned int *a3, int *a4, int *a5, _DWORD *a6)
{
  if (!a1)
  {
    __assert_rtn("_DERDecodeTag", "DERDecoder.c", 63, "buffer != NULL");
  }

  if (!a3)
  {
    __assert_rtn("_DERDecodeTag", "DERDecoder.c", 64, "outTagClass != NULL");
  }

  if (!a4)
  {
    __assert_rtn("_DERDecodeTag", "DERDecoder.c", 65, "outTag != NULL");
  }

  if (!a5)
  {
    __assert_rtn("_DERDecodeTag", "DERDecoder.c", 66, "outIsConstructed != NULL");
  }

  if (!a6)
  {
    __assert_rtn("_DERDecodeTag", "DERDecoder.c", 67, "outConsumed != NULL");
  }

  if (!a2)
  {
    return 4;
  }

  v6 = *a1;
  *a3 = v6 >> 6;
  v7 = *a1;
  if ((~v6 & 0x1F) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *a5 = (v7 >> 5) & 1;
    v11 = a2 - 1;
    v12 = (a1 + 1);
    while (v11)
    {
      v13 = *v12;
      v14 = *v12 & 0x7F | (v8 << 7);
      v10 |= v14 != 0;
      if (v10)
      {
        v9 += 7;
        if (v9 > 0x20)
        {
          return 7;
        }
      }

      --v11;
      ++v12;
      v8 = v14;
      if ((v13 & 0x80000000) == 0)
      {
        *a4 = v14;
        goto LABEL_16;
      }
    }

    return 4;
  }

  *a4 = v7 & 0x1F;
  *a5 = (*a1 >> 5) & 1;
  v11 = a2 - 1;
LABEL_16:
  result = 0;
  *a6 = a2 - v11;
  return result;
}

uint64_t _DERDecodeLength(unsigned __int8 *a1, int a2, int *a3, _DWORD *a4)
{
  if (!a1)
  {
    __assert_rtn("_DERDecodeLength", "DERDecoder.c", 147, "buffer != NULL");
  }

  if (!a3)
  {
    __assert_rtn("_DERDecodeLength", "DERDecoder.c", 148, "outLength != NULL");
  }

  if (!a4)
  {
    __assert_rtn("_DERDecodeLength", "DERDecoder.c", 149, "outConsumed != NULL");
  }

  if (!a2)
  {
    return 5;
  }

  v4 = *a1;
  v5 = a2 - 1;
  if ((*a1 & 0x80000000) == 0)
  {
LABEL_6:
    result = 0;
    *a3 = v4;
    *a4 = a2 - v5;
    return result;
  }

  v7 = v4 & 0x7F;
  v8 = v5 >= v7;
  v5 -= v7;
  if (!v8)
  {
    return 5;
  }

  if ((v4 & 0x7F) == 0)
  {
    v4 = 0;
    goto LABEL_6;
  }

  v9 = 0;
  v10 = 0;
  v4 = 0;
  v11 = a1 + 1;
  while (1)
  {
    v12 = *v11++;
    v4 = v12 | (v4 << 8);
    v9 |= v4 != 0;
    if (v9)
    {
      v10 += 8;
      if (v10 > 0x20)
      {
        return 7;
      }
    }

    if (!--v7)
    {
      goto LABEL_6;
    }
  }
}

uint64_t DERDecoderGetDataWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    __assert_rtn("DERDecoderGetDataWithTag", "DERDecoder.c", 436, "decoder != NULL");
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!v14)
    {
      __assert_rtn("DERDecoderGetDataWithTag", "DERDecoder.c", 452, "callbackData.foundItem.data != NULL");
    }

    if (a5)
    {
      *a5 = v14;
    }

    if (a6)
    {
      *a6 = DWORD2(v14);
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t _DERDecoderTraverseAllItems(uint64_t a1, uint64_t (*a2)(unsigned __int8 **, uint64_t), uint64_t a3)
{
  if (!a1)
  {
    __assert_rtn("_DERDecoderTraverseAllItems", "DERDecoder.c", 224, "decoder != NULL");
  }

  v3 = *(a1 + 8);
  if (!v3)
  {
    return 2;
  }

  v6 = *a1;
  while (1)
  {
    v12 = 0;
    v14 = 0u;
    v15 = 0u;
    v13 = v6;
    result = _DERDecodeTag(v6, v3, &v14 + 1, &v14 + 2, &v15 + 3, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      __assert_rtn("_DERDecoderTraverseAllItems", "DERDecoder.c", 252, "nconsumed > 0");
    }

    v8 = v3 - v12;
    v9 = &v6[v12];
    result = _DERDecodeLength(v9, v8, &v15 + 2, &v12);
    if (result)
    {
      break;
    }

    if (!v12)
    {
      __assert_rtn("_DERDecoderTraverseAllItems", "DERDecoder.c", 269, "nconsumed > 0");
    }

    v10 = v8 - v12;
    if (v10 < DWORD2(v15))
    {
      return 3;
    }

    v11 = &v9[v12];
    *&v15 = v11;
    LODWORD(v14) = DWORD2(v15) + v11 - v13;
    result = a2(&v13, a3);
    if (result != 2)
    {
      return result;
    }

    v6 = &v11[DWORD2(v15)];
    v3 = v10 - DWORD2(v15);
    if (v10 == DWORD2(v15))
    {
      return 2;
    }
  }

  return result;
}

uint64_t _DERDecoderGetDataWithTagCallback(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 12) == *(a2 + 20) && *(a1 + 16) == *(a2 + 24) && *(a1 + 36) == *(a2 + 44) && *a2 >= *(a2 + 4))
  {
    v2 = 0;
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    ++*a2;
    return 2;
  }

  return v2;
}

uint64_t DERDecoderGetEncodingWithTag(uint64_t a1, unsigned int a2, unsigned int a3, int a4, void *a5, _DWORD *a6, int *a7)
{
  if (!a1)
  {
    __assert_rtn("DERDecoderGetEncodingWithTag", "DERDecoder.c", 486, "decoder != NULL");
  }

  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  *(&v13 + 4) = __PAIR64__(a3, a2);
  HIDWORD(v14) = a4;
  if (a7)
  {
    v10 = *a7;
  }

  else
  {
    v10 = 0;
  }

  DWORD1(v12) = v10;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataWithTagCallback, &v12);
  if (!result)
  {
    if (!*(&v12 + 1))
    {
      __assert_rtn("DERDecoderGetEncodingWithTag", "DERDecoder.c", 502, "callbackData.foundItem.buffer != NULL");
    }

    if (a5)
    {
      *a5 = *(&v12 + 1);
    }

    if (a6)
    {
      *a6 = v13;
    }

    if (a7)
    {
      *a7 = v12;
    }
  }

  return result;
}

uint64_t DERDecoderGetDataAt(uint64_t a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, void *a5, _DWORD *a6, int a7)
{
  if (!a1)
  {
    __assert_rtn("DERDecoderGetDataAt", "DERDecoder.c", 558, "decoder != NULL");
  }

  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  DWORD1(v14) = a7;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetDataAtCallback, &v14);
  if (!result)
  {
    v13 = v16;
    if (!v16)
    {
      __assert_rtn("DERDecoderGetDataAt", "DERDecoder.c", 571, "callbackData.foundItem.data != NULL");
    }

    if (a2)
    {
      *a2 = DWORD1(v15);
    }

    if (a3)
    {
      *a3 = DWORD2(v15);
    }

    if (a6)
    {
      *a6 = DWORD2(v16);
    }

    if (a4)
    {
      *a4 = HIDWORD(v16);
    }

    if (a5)
    {
      *a5 = v13;
    }
  }

  return result;
}

uint64_t _DERDecoderGetDataAtCallback(uint64_t a1, uint64_t a2)
{
  if (*a2 == *(a2 + 4))
  {
    result = 0;
    *(a2 + 20) = *(a1 + 12);
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
  }

  else
  {
    ++*a2;
    return 2;
  }

  return result;
}

uint64_t DERDecoderGetEncodingAt(uint64_t a1, int a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, void *a6, _DWORD *a7, void *a8, _DWORD *a9)
{
  if (!a1)
  {
    __assert_rtn("DERDecoderGetEncodingAt", "DERDecoder.c", 640, "decoder != NULL");
  }

  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  DWORD1(v17) = a2;
  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetEncodingAtCallback, &v17);
  if (!result)
  {
    v16 = *(&v17 + 1);
    if (!*(&v17 + 1))
    {
      __assert_rtn("DERDecoderGetEncodingAt", "DERDecoder.c", 653, "callbackData.foundItem.buffer != NULL");
    }

    if (a3)
    {
      *a3 = DWORD1(v18);
    }

    if (a4)
    {
      *a4 = DWORD2(v18);
    }

    if (a6)
    {
      *a6 = v19;
    }

    if (a7)
    {
      *a7 = DWORD2(v19);
    }

    if (a5)
    {
      *a5 = HIDWORD(v19);
    }

    if (a8)
    {
      *a8 = v16;
    }

    if (a9)
    {
      *a9 = v18;
    }
  }

  return result;
}

uint64_t _DERDecoderGetEncodingAtCallback(uint64_t a1, uint64_t a2)
{
  if (*a2 == *(a2 + 4))
  {
    result = 0;
    *(a2 + 24) = *(a1 + 16);
    *(a2 + 32) = *(a1 + 24);
    *(a2 + 40) = *(a1 + 32);
    *(a2 + 8) = *a1;
    *(a2 + 16) = *(a1 + 8);
  }

  else
  {
    ++*a2;
    return 2;
  }

  return result;
}

uint64_t DERDecoderGetCount(void *a1, _DWORD *a2)
{
  v4 = 0;
  if (!*a1)
  {
    return 3;
  }

  result = _DERDecoderTraverseAllItems(a1, _DERDecoderGetCountCallback, &v4);
  if (result == 2)
  {
    result = 0;
    if (a2)
    {
      *a2 = v4;
    }
  }

  return result;
}

uint64_t DERDecoderGetInteger32WithTag(uint64_t a1, unsigned int a2, unsigned int a3, _DWORD *a4)
{
  v6 = 0;
  if (!a1)
  {
    __assert_rtn("DERDecoderGetInteger32WithTag", "DERDecoder.c", 792, "decoder != NULL");
  }

  v8 = 0;
  v7 = 0;
  result = DERDecoderGetDataWithTag(a1, a2, a3, 0, &v8, &v7, &v6);
  if (!result)
  {
    result = 3;
    if (v8)
    {
      if (v7 == 4)
      {
        result = 0;
        if (a4)
        {
          *a4 = *v8;
        }
      }
    }
  }

  return result;
}

uint64_t DERDecoderGetInteger64WithTag(uint64_t a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = 0;
  if (!a1)
  {
    __assert_rtn("DERDecoderGetInteger64WithTag", "DERDecoder.c", 824, "decoder != NULL");
  }

  v8 = 0;
  v7 = 0;
  result = DERDecoderGetDataWithTag(a1, a2, a3, 0, &v8, &v7, &v6);
  if (!result)
  {
    result = 3;
    if (v8)
    {
      if (v7 == 8)
      {
        result = 0;
        if (a4)
        {
          *a4 = *v8;
        }
      }
    }
  }

  return result;
}

uint64_t DERDecoderParseSequence(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v31 = &a9;
  if (!a2)
  {
    v11 = 0;
    goto LABEL_18;
  }

  v10 = a2;
  v11 = 0;
  while (1)
  {
    v12 = v31++;
    v13 = *v12;
    v31 = v12 + 2;
    v14 = *(v12 + 2);
    v31 = v12 + 3;
    v15 = *(v12 + 4);
    v31 = v12 + 4;
    v16 = *(v12 + 6);
    v31 = v12 + 5;
    v17 = v12[4];
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v27 = 0;
    v26 = 0;
    v25 = 0;
    EncodingAt = DERDecoderGetEncodingAt(a1, v11, &v30 + 1, &v30, &v29, &v26, &v25, &v28, &v27);
    v19 = EncodingAt;
    if (EncodingAt != 2)
    {
      if (EncodingAt)
      {
        goto LABEL_17;
      }

      if (v30 == __PAIR64__(v14, v15) && v29 == v16)
      {
        ++v11;
        if (v17)
        {
          if (v16)
          {
            v20 = v26;
            v21 = v25;
            v22 = &v25;
          }

          else
          {
            v20 = v28;
            v21 = v27;
            v22 = &v27;
          }

          DERDecoderInitialize(v17, v20, v22, v21);
        }

        goto LABEL_11;
      }
    }

    if (v13)
    {
      break;
    }

LABEL_11:
    if (!--v10)
    {
      goto LABEL_17;
    }
  }

  v19 = 6;
LABEL_17:
  if ((v19 & 0xFFFFFFFD) == 0)
  {
LABEL_18:
    LODWORD(v28) = 0;
    if (*a1)
    {
      v23 = _DERDecoderTraverseAllItems(a1, _DERDecoderGetCountCallback, &v28);
      if (v23 == 2)
      {
        return v11 < v28;
      }

      else
      {
        return v23;
      }
    }

    else
    {
      return 3;
    }
  }

  return v19;
}

BOOL shouldRetrySMS(uint64_t a1, uint64_t *a2, int a3)
{
  theArray = 0;
  v5 = *a2;
  Registry::throwIfNotInitialized(*a2);
  v6 = *(v5 + 24);
  v7 = off_284A710A8;
  if ((off_284A710A8 & 0x8000000000000000) != 0)
  {
    v8 = (off_284A710A8 & 0x7FFFFFFFFFFFFFFFLL);
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
  v27 = v7;
  v11 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v6[4].__m_.__sig, &v27);
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
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 96))(&v25, v13, a1, 1, @"SMSNoRetryCauseCode", 0, 1);
  ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(&theArray, &v25);
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&v25);
  if ((v14 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (theArray && (Count = CFArrayGetCount(theArray), LODWORD(v27) = 0, Count >= 1))
  {
    v16 = 0;
    v17 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v16);
      v19 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v20 = CFGetTypeID(ValueAtIndex);
        if (v20 == CFNumberGetTypeID())
        {
          v22 = ctu::cf::assign(&v27, v19, v21);
          v23 = v27 == a3 ? v22 : 0;
          if (v23)
          {
            break;
          }
        }
      }

      v17 = Count <= ++v16;
    }

    while (Count != v16);
  }

  else
  {
    v17 = 1;
  }

  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(&theArray);
  return v17;
}

void sub_237408820(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::~SharedRef(va);
  _Unwind_Resume(a1);
}

void *ctu::cf::CFSharedRef<__CFArray const>::CFSharedRef<void const,void>(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFArrayGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *std::map<subscriber::SimSlot,BOOL>::map[abi:ne200100](void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::__emplace_hint_unique_key_args<subscriber::SimSlot,std::pair<subscriber::SimSlot const,BOOL> const&>(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::__emplace_hint_unique_key_args<subscriber::SimSlot,std::pair<subscriber::SimSlot const,BOOL> const&>(void *a1, uint64_t *a2, int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::__find_equal<subscriber::SimSlot>(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::__find_equal<subscriber::SimSlot>(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
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
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 7) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 28);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 7))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 28);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

uint64_t *std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

void std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<subscriber::SimSlot,BOOL>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,BOOL>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,BOOL>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

uint64_t _GLOBAL__sub_I_MMSRestResources_cpp()
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 1;
  v3 = 0;
  std::map<subscriber::SimSlot,BOOL>::map[abi:ne200100](rest::kDefaultMmsReadyStates, &v2, 1);
  result = __cxa_atexit(std::map<subscriber::SimSlot,BOOL>::~map[abi:ne200100], rest::kDefaultMmsReadyStates, &dword_2373EA000);
  v1 = *MEMORY[0x277D85DE8];
  return result;
}

void DNSServiceWrapper::~DNSServiceWrapper(DNSServiceWrapper *this)
{
  *this = &unk_284A63E38;
  v2 = *(this + 1);
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    *(this + 1) = 0;
  }
}

{
  DNSServiceWrapper::~DNSServiceWrapper(this);

  JUMPOUT(0x2383CBEF0);
}

void DNSServiceWrapper::disposeService(DNSServiceWrapper *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    *(this + 1) = 0;
  }
}

void StewieFeatureState::StewieFeatureState(StewieFeatureState *this, __int16 a2, __int16 a3, __int16 a4)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
}

{
  *this = a2;
  *(this + 1) = a3;
  *(this + 2) = a4;
}

void read_rest_value(StewieFeatureState *a1, const object *a2)
{
  fObj = a2->fObj;
  v8 = fObj;
  v4 = MEMORY[0x277D86468];
  if (fObj && MEMORY[0x2383CC760](fObj) == v4)
  {
    xpc_retain(fObj);
  }

  else
  {
    fObj = xpc_null_create();
    v8 = fObj;
  }

  if (MEMORY[0x2383CC760](fObj) == v4)
  {
    v5 = &v8;
    v6 = "allowedServices";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *a1 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v5 = &v8;
    v6 = "demoAllowedServices";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 1) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v5 = &v8;
    v6 = "activeServices";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    *(a1 + 2) = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    fObj = v8;
  }

  else
  {
    *a1 = 0;
    *(a1 + 2) = 0;
  }

  xpc_release(fObj);
}

void sub_23740906C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void write_rest_value(const StewieFeatureState *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v16 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_int64_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v12 = &v16;
  v13 = "allowedServices";
  xpc::dict::object_proxy::operator=(&v12, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v10 = xpc_int64_create(*(a1 + 1));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "demoAllowedServices";
  xpc::dict::object_proxy::operator=(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 2));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "activeServices";
  xpc::dict::object_proxy::operator=(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v16;
  *a2 = v16;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v16);
}

void write_rest_value(const CSIPhoneNumber *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v19 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v16, *(a1 + 1), *(a1 + 2));
  }

  else
  {
    v16 = *(a1 + 8);
  }

  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v7 = &v16;
  }

  else
  {
    v7 = v16.__r_.__value_.__r.__words[0];
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15[0] = &v19;
  v15[1] = "base_number";
  xpc::dict::object_proxy::operator=(v15, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v13 = xpc_int64_create(*(a1 + 1));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v16.__r_.__value_.__r.__words[0] = &v19;
  v16.__r_.__value_.__l.__size_ = "type_of_address";
  xpc::dict::object_proxy::operator=(&v16, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_BOOL_create(*(a1 + 96));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v16.__r_.__value_.__r.__words[0] = &v19;
  v16.__r_.__value_.__l.__size_ = "supports_em_sms";
  xpc::dict::object_proxy::operator=(&v16, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_BOOL_create(*(a1 + 97));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v16.__r_.__value_.__r.__words[0] = &v19;
  v16.__r_.__value_.__l.__size_ = "supports_em_voice";
  xpc::dict::object_proxy::operator=(&v16, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v19;
  *a2 = v19;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

void read_rest_value(void **a1, const object *a2)
{
  fObj = a2->fObj;
  v3 = MEMORY[0x277D86468];
  if (fObj && MEMORY[0x2383CC760](fObj) == v3)
  {
    xpc_retain(fObj);
  }

  else
  {
    fObj = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v3)
  {
    v16[0] = 0;
    v16[1] = 0;
    v17 = 0;
    v14[0] = &fObj;
    v14[1] = "base_number";
    xpc::dict::object_proxy::operator xpc::object(v14, &object);
    __p = 0;
    v19 = 0uLL;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p);
    }

    *v16 = v35;
    v17 = v36;
    xpc_release(object);
    __p = &fObj;
    *&v19 = "type_of_address";
    xpc::dict::object_proxy::operator xpc::object(&__p, &v35);
    v6 = xpc::dyn_cast_or_default(&v35, 0);
    xpc_release(v35);
    __p = &fObj;
    *&v19 = "supports_em_sms";
    xpc::dict::object_proxy::operator xpc::object(&__p, &v35);
    v7 = xpc::dyn_cast_or_default(&v35, 0);
    xpc_release(v35);
    __p = &fObj;
    *&v19 = "supports_em_voice";
    xpc::dict::object_proxy::operator xpc::object(&__p, &v35);
    v8 = xpc::dyn_cast_or_default(&v35, 0);
    xpc_release(v35);
    CSIPhoneNumber::CSIPhoneNumber(&__p, v6, v16);
    *a1 = __p;
    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    *(a1 + 1) = v19;
    a1[3] = v20;
    HIBYTE(v20) = 0;
    LOBYTE(v19) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(a1[4]);
    }

    *(a1 + 2) = v21;
    a1[6] = v22;
    HIBYTE(v22) = 0;
    LOBYTE(v21) = 0;
    *(a1 + 14) = v23;
    *(a1 + 60) = v24;
    if (*(a1 + 87) < 0)
    {
      operator delete(a1[8]);
    }

    *(a1 + 4) = v25;
    v9 = v26;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    v10 = v27;
    a1[10] = v9;
    a1[11] = v10;
    *(a1 + 48) = v28;
    if (*(a1 + 127) < 0)
    {
      operator delete(a1[13]);
    }

    *(a1 + 13) = v29;
    a1[15] = v30;
    HIBYTE(v30) = 0;
    LOBYTE(v29) = 0;
    if (*(a1 + 151) < 0)
    {
      operator delete(a1[16]);
      v13 = SHIBYTE(v30);
      *(a1 + 8) = v31;
      a1[18] = v32;
      HIBYTE(v32) = 0;
      LOBYTE(v31) = 0;
      *(a1 + 38) = v33;
      if (v13 < 0)
      {
        operator delete(v29);
      }
    }

    else
    {
      *(a1 + 8) = v31;
      a1[18] = v32;
      HIBYTE(v32) = 0;
      LOBYTE(v31) = 0;
      *(a1 + 38) = v33;
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(v19);
    }

    *(a1 + 96) = v7;
    *(a1 + 97) = v8;
    if (SHIBYTE(v17) < 0)
    {
      v12 = v16[0];
      goto LABEL_46;
    }
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(&__p, &str_2_5);
    *a1 = __p;
    if (*(a1 + 31) < 0)
    {
      operator delete(a1[1]);
    }

    *(a1 + 1) = v19;
    a1[3] = v20;
    HIBYTE(v20) = 0;
    LOBYTE(v19) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(a1[4]);
    }

    *(a1 + 2) = v21;
    a1[6] = v22;
    HIBYTE(v22) = 0;
    LOBYTE(v21) = 0;
    *(a1 + 14) = v23;
    *(a1 + 60) = v24;
    if (*(a1 + 87) < 0)
    {
      operator delete(a1[8]);
    }

    *(a1 + 4) = v25;
    v4 = v26;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    v5 = v27;
    a1[10] = v4;
    a1[11] = v5;
    *(a1 + 48) = v28;
    if (*(a1 + 127) < 0)
    {
      operator delete(a1[13]);
    }

    *(a1 + 13) = v29;
    a1[15] = v30;
    HIBYTE(v30) = 0;
    LOBYTE(v29) = 0;
    if (*(a1 + 151) < 0)
    {
      operator delete(a1[16]);
      v11 = SHIBYTE(v30);
      *(a1 + 8) = v31;
      a1[18] = v32;
      HIBYTE(v32) = 0;
      LOBYTE(v31) = 0;
      *(a1 + 38) = v33;
      if (v11 < 0)
      {
        operator delete(v29);
      }
    }

    else
    {
      *(a1 + 8) = v31;
      a1[18] = v32;
      HIBYTE(v32) = 0;
      LOBYTE(v31) = 0;
      *(a1 + 38) = v33;
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21);
    }

    if (SHIBYTE(v20) < 0)
    {
      v12 = v19;
LABEL_46:
      operator delete(v12);
    }
  }

  xpc_release(fObj);
}

{
  v24 = *MEMORY[0x277D85DE8];
  fObj = a2->fObj;
  v12 = fObj;
  v4 = MEMORY[0x277D86468];
  if (fObj && MEMORY[0x2383CC760](fObj) == v4)
  {
    xpc_retain(fObj);
  }

  else
  {
    v12 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    __p[0] = &v12;
    __p[1] = "kProfileId";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    ctu::rest::detail::read_raw_binary_value(a1, 0x10, object, v5);
    xpc_release(object[0]);
    v9 = &v12;
    v10 = "kIccid";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 39) < 0)
    {
      operator delete(a1[2]);
    }

    *(a1 + 1) = *object;
    a1[4] = v14;
    xpc_release(v11);
    __p[0] = &v12;
    __p[1] = "kIsBootstrap";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    *(a1 + 89) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p[0] = &v12;
    __p[1] = "kIsActive";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    *(a1 + 90) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p[0] = &v12;
    __p[1] = "kState";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    v6 = MEMORY[0x2383CC760](object[0]);
    if (v6 == MEMORY[0x277D864C0])
    {
      LOBYTE(v9) = *(a1 + 88);
      ctu::rest::detail::read_enum_string_value(&v9, object, v7);
      *(a1 + 88) = v9;
    }

    else if (v6 == MEMORY[0x277D86448] || v6 == MEMORY[0x277D86498] || v6 == MEMORY[0x277D864C8])
    {
      *(a1 + 88) = xpc::dyn_cast_or_default(object, 0);
    }

    xpc_release(object[0]);
    __p[0] = &v12;
    __p[1] = "kDisableNotAllowed";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    *(a1 + 92) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p[0] = &v12;
    __p[1] = "kDeleteNotAllowed";
    xpc::dict::object_proxy::operator xpc::object(__p, object);
    *(a1 + 91) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v9 = &v12;
    v10 = "kMcc";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 119) < 0)
    {
      operator delete(a1[12]);
    }

    *(a1 + 6) = *object;
    a1[14] = v14;
    xpc_release(v11);
    v9 = &v12;
    v10 = "kMnc";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(a1[15]);
    }

    *(a1 + 15) = *object;
    a1[17] = v14;
    xpc_release(v11);
    v9 = &v12;
    v10 = "kGID1";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(a1[18]);
    }

    *(a1 + 9) = *object;
    a1[20] = v14;
    xpc_release(v11);
    v9 = &v12;
    v10 = "kGID2";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 191) < 0)
    {
      operator delete(a1[21]);
    }

    *(a1 + 21) = *object;
    a1[23] = v14;
    xpc_release(v11);
    v9 = &v12;
    v10 = "kProfileNickname";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 63) < 0)
    {
      operator delete(a1[5]);
    }

    *(a1 + 5) = *object;
    a1[7] = v14;
    xpc_release(v11);
    v9 = &v12;
    v10 = "kServiceProviderName";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 87) < 0)
    {
      operator delete(a1[8]);
    }

    *(a1 + 4) = *object;
    a1[10] = v14;
    xpc_release(v11);
    v9 = &v12;
    v10 = "kAssociatedImei";
    xpc::dict::object_proxy::operator xpc::object(&v9, &v11);
    __p[0] = 0;
    __p[1] = 0;
    *&v16 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v16) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(a1 + 215) < 0)
    {
      operator delete(a1[24]);
    }

    *(a1 + 12) = *object;
    a1[26] = v14;
    xpc_release(v11);
  }

  else
  {
    v16 = 0u;
    memset(v17, 0, 61);
    *__p = 0u;
    v18 = 0u;
    memset(v19, 0, sizeof(v19));
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v22 = 0u;
    v23 = 0;
    *a1 = 0;
    a1[1] = 0;
    if (*(a1 + 39) < 0)
    {
      operator delete(a1[2]);
    }

    *(a1 + 1) = v16;
    a1[4] = *&v17[0];
    BYTE7(v17[0]) = 0;
    LOBYTE(v16) = 0;
    if (*(a1 + 63) < 0)
    {
      operator delete(a1[5]);
    }

    *(a1 + 5) = *(v17 + 8);
    a1[7] = *(&v17[1] + 1);
    HIBYTE(v17[1]) = 0;
    BYTE8(v17[0]) = 0;
    if (*(a1 + 87) < 0)
    {
      operator delete(a1[8]);
    }

    *(a1 + 4) = v17[2];
    a1[10] = *&v17[3];
    BYTE7(v17[3]) = 0;
    LOBYTE(v17[2]) = 0;
    *(a1 + 22) = DWORD2(v17[3]);
    *(a1 + 92) = BYTE12(v17[3]);
    if (*(a1 + 119) < 0)
    {
      operator delete(a1[12]);
    }

    a1[12] = 0;
    a1[13] = 0;
    a1[14] = 0;
    HIBYTE(v19[0]) = 0;
    LOBYTE(v18) = 0;
    if (*(a1 + 143) < 0)
    {
      operator delete(a1[15]);
    }

    *(a1 + 15) = *&v19[1];
    a1[17] = v19[3];
    HIBYTE(v19[3]) = 0;
    LOBYTE(v19[1]) = 0;
    if (*(a1 + 167) < 0)
    {
      operator delete(a1[18]);
    }

    *(a1 + 9) = v20;
    a1[20] = v21[0];
    HIBYTE(v21[0]) = 0;
    LOBYTE(v20) = 0;
    if (*(a1 + 191) < 0)
    {
      operator delete(a1[21]);
    }

    *(a1 + 21) = *&v21[1];
    a1[23] = v21[3];
    HIBYTE(v21[3]) = 0;
    LOBYTE(v21[1]) = 0;
    if (*(a1 + 215) < 0)
    {
      operator delete(a1[24]);
    }

    *(a1 + 12) = v22;
    a1[26] = v23;
    HIBYTE(v23) = 0;
    LOBYTE(v22) = 0;
    VinylProfileDetails::~VinylProfileDetails(__p);
  }

  xpc_release(v12);
  v8 = *MEMORY[0x277D85DE8];
}

void sub_237409A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v25 - 96));
  _Unwind_Resume(a1);
}

const void *std::ostringstream::str[abi:ne200100]@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = std::stringbuf::view[abi:ne200100](a1 + 8);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a2[23] = v4;
  if (v4)
  {
    result = memmove(a2, result, v4);
  }

  a2[v5] = 0;
  return result;
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82828];
  v3 = *MEMORY[0x277D82828];
  *a1 = *MEMORY[0x277D82828];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));
  std::ostream::~ostream();
  MEMORY[0x2383CBE70](a1 + 112);
  return a1;
}

uint64_t operator<<(uint64_t a1, int a2)
{
  v3 = "Unknown";
  if (!a2)
  {
    v3 = "False";
  }

  if (a2 == 1)
  {
    v4 = "True";
  }

  else
  {
    v4 = v3;
  }

  MEMORY[0x2383CBA00](a1, v4);
  return a1;
}

void SubscriptionSlotConfiguration::SubscriptionSlotConfiguration(SubscriptionSlotConfiguration *this)
{
  *this = 0;
}

{
  *this = 0;
}

BOOL SubscriptionSlotConfiguration::isValid(capabilities::ct *a1, uint64_t *a2)
{
  if (!capabilities::ct::supportsDynamicSID(a1))
  {
LABEL_14:
    if (*a1)
    {
      v15 = *a1 == *(a1 + 1);
    }

    else
    {
      v15 = 0;
    }

    return !v15;
  }

  v4 = *a2;
  Registry::throwIfNotInitialized(v4);
  v5 = *(v4 + 24);
  v6 = off_284A6C8E8;
  if ((off_284A6C8E8 & 0x8000000000000000) != 0)
  {
    v7 = (off_284A6C8E8 & 0x7FFFFFFFFFFFFFFFLL);
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
  v17 = v6;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v5[4].__m_.__sig, &v17);
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
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5 + 3);
  v11 = 0;
LABEL_10:
  v13 = (*(*v12 + 80))(v12);
  if (v13)
  {
    v14 = capabilities::ct::supportsRegulatoryRestriction(v13);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    }

    if (v14)
    {
      goto LABEL_14;
    }
  }

  else if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  v15 = *a1 == 0;
  return !v15;
}

void sub_237409EFC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void SubscriptionSlotConfiguration::log(SubscriptionSlotConfiguration *this, os_log_t *a2, const char *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *this - 1;
    if (v6 > 2)
    {
      v7 = "kUnknown";
    }

    else
    {
      v7 = off_278A2E9D8[v6];
    }

    v8 = *(this + 1) - 1;
    if (v8 > 2)
    {
      v9 = "kUnknown";
    }

    else
    {
      v9 = off_278A2E9D8[v8];
    }

    v11 = 136315650;
    v12 = a3;
    v13 = 2080;
    v14 = v7;
    v15 = 2080;
    v16 = v9;
    _os_log_impl(&dword_2373EA000, v5, OS_LOG_TYPE_DEFAULT, "#I %s: Primary sub slot: %s, Secondary sub slot %s", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void FeatureConfiguration::FeatureConfiguration(FeatureConfiguration *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A64348;
}

{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A64348;
}

void FeatureConfiguration::~FeatureConfiguration(FeatureConfiguration *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

{
  v1 = *(this + 2);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__shared_ptr_pointer<FeatureConfiguration *,std::shared_ptr<FeatureConfiguration>::__shared_ptr_default_delete<FeatureConfiguration,FeatureConfiguration>,std::allocator<FeatureConfiguration>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<FeatureConfiguration *,std::shared_ptr<FeatureConfiguration>::__shared_ptr_default_delete<FeatureConfiguration,FeatureConfiguration>,std::allocator<FeatureConfiguration>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<FeatureConfiguration *,std::shared_ptr<FeatureConfiguration>::__shared_ptr_default_delete<FeatureConfiguration,FeatureConfiguration>,std::allocator<FeatureConfiguration>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

const char *sd::asString(int a1)
{
  if ((a1 - 1) > 2)
  {
    return "kHelperCT";
  }

  else
  {
    return off_278A2EA18[a1 - 1];
  }
}

{
  if ((a1 - 1) > 6)
  {
    return "kUnknown";
  }

  else
  {
    return off_278A2EA30[a1 - 1];
  }
}

{
  if ((a1 - 1) > 3)
  {
    return "kNotRegistered";
  }

  else
  {
    return off_278A2EA68[a1 - 1];
  }
}

{
  v1 = "kNone";
  if (a1 == 1)
  {
    v1 = "kReprovisionRequested";
  }

  if (a1 == 2)
  {
    return "kRefreshRequested";
  }

  else
  {
    return v1;
  }
}

{
  v1 = "kNone";
  if (a1 > 4095)
  {
    v10 = "kE2EE";
    v11 = "kPush";
    v12 = "kPrivateRelay";
    if (a1 != 0x100000)
    {
      v12 = "kNone";
    }

    if (a1 != 0x80000)
    {
      v11 = v12;
    }

    if (a1 != 0x40000)
    {
      v10 = v11;
    }

    v13 = "kSessionOnly";
    v14 = "kCpmSystemMsg";
    if (a1 != 0x20000)
    {
      v14 = "kNone";
    }

    if (a1 != 0x10000)
    {
      v13 = v14;
    }

    if (a1 < 0x40000)
    {
      v10 = v13;
    }

    v15 = "kVideoSharing";
    v16 = "kIMChat";
    if (a1 != 0x8000)
    {
      v16 = "kNone";
    }

    if (a1 != 0x4000)
    {
      v15 = v16;
    }

    if (a1 == 0x2000)
    {
      v1 = "kImageSharing";
    }

    if (a1 == 4096)
    {
      v1 = "kGeolocation";
    }

    if (a1 >= 0x4000)
    {
      v1 = v15;
    }

    if (a1 < 0x10000)
    {
      return v1;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    v2 = "kCpmOnly";
    v3 = "kLargeMsgOnly";
    v4 = "kFileTransfer";
    if (a1 != 2048)
    {
      v4 = "kNone";
    }

    if (a1 != 1024)
    {
      v3 = v4;
    }

    if (a1 != 512)
    {
      v2 = v3;
    }

    v5 = "kChat";
    v6 = "kChatbot";
    if (a1 != 256)
    {
      v6 = "kNone";
    }

    if (a1 != 128)
    {
      v5 = v6;
    }

    if (a1 <= 511)
    {
      v2 = v5;
    }

    v7 = "kSms";
    v8 = "kPagerMode";
    if (a1 != 64)
    {
      v8 = "kNone";
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1 == 1)
    {
      v1 = "kVoice";
    }

    if (a1 == -1)
    {
      v1 = "kMax";
    }

    if (a1 > 1)
    {
      v1 = v7;
    }

    if (a1 <= 127)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

{
  if (a1 <= 4159)
  {
    if (a1 <= 319)
    {
      if (a1 > 63)
      {
        if (a1 > 191)
        {
          if (a1 == 192)
          {
            return "Pg+Chat";
          }

          if (a1 == 256)
          {
            return "Chatbot";
          }
        }

        else
        {
          if (a1 == 64)
          {
            return "Pager";
          }

          if (a1 == 128)
          {
            return "Chat";
          }
        }
      }

      else if (a1 > 1)
      {
        if (a1 == 2)
        {
          return "Sms";
        }

        if (a1 == 3)
        {
          return "Voice+Sms";
        }
      }

      else
      {
        if (!a1)
        {
          return "None";
        }

        if (a1 == 1)
        {
          return "Voice";
        }
      }
    }

    else if (a1 <= 2175)
    {
      if (a1 > 2047)
      {
        if (a1 == 2048)
        {
          return "FT";
        }

        if (a1 == 2112)
        {
          return "Pg+FT";
        }
      }

      else
      {
        if (a1 == 320)
        {
          return "Pg+Bot";
        }

        if (a1 == 448)
        {
          return "Pg+Chat+Bot";
        }
      }
    }

    else if (a1 <= 2367)
    {
      if (a1 == 2176)
      {
        return "Chat+FT";
      }

      if (a1 == 2240)
      {
        return "Pg+Chat+FT";
      }
    }

    else
    {
      switch(a1)
      {
        case 2368:
          return "Pg+Bot+FT";
        case 2496:
          return "Pg+Chat+Bot+FT";
        case 4096:
          return "GeoPush";
      }
    }
  }

  else if (a1 > 6527)
  {
    if (a1 < 0x8000)
    {
      if (a1 >= 0x2000)
      {
        if (a1 == 0x2000 || a1 == 0x4000)
        {
          return "Image";
        }
      }

      else
      {
        if (a1 == 6528)
        {
          return "Chat+Bot+FT+Geo";
        }

        if (a1 == 6592)
        {
          return "Pg+Chat+Bot+FT+Geo";
        }
      }
    }

    else if (a1 <= 326079)
    {
      if (a1 == 0x8000)
      {
        return "IM";
      }

      if (a1 == 0x40000)
      {
        return "E2EE";
      }
    }

    else
    {
      switch(a1)
      {
        case 0x4F9C0:
          return "Pg+Chat+Bot+FT+Geo+Image+Video+IM";
        case 0x80000:
          return "Push";
        case 0x100000:
          return "PrivateRelay";
      }
    }
  }

  else if (a1 <= 4543)
  {
    if (a1 > 4287)
    {
      if (a1 == 4288)
      {
        return "Pg+Chat+Geo";
      }

      if (a1 == 4416)
      {
        return "Pg+Bot+Geo";
      }
    }

    else
    {
      if (a1 == 4160)
      {
        return "Pg+Geo";
      }

      if (a1 == 4224)
      {
        return "Chat+Geo";
      }
    }
  }

  else if (a1 <= 6271)
  {
    if (a1 == 4544)
    {
      return "Pg+Chat+Bot+Geo";
    }

    if (a1 == 6208)
    {
      return "Pg+FT+Geo";
    }
  }

  else
  {
    switch(a1)
    {
      case 6272:
        return "Chat+FT+Geo";
      case 6336:
        return "Pg+Chat+FT+Geo";
      case 6464:
        return "Pg+Bot+FT+Geo";
    }
  }

  if (a1 == -1)
  {
    return "Unknown";
  }

  else
  {
    return "Invalid";
  }
}

{
  if ((a1 - 1) > 0xF)
  {
    return "Enabled";
  }

  else
  {
    return off_278A31CB8[a1 - 1];
  }
}

uint64_t PersonalityIDToSimSlot(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v4 = *(v3 + 24);
  v5 = off_284A70050;
  if ((off_284A70050 & 0x8000000000000000) != 0)
  {
    v6 = (off_284A70050 & 0x7FFFFFFFFFFFFFFFLL);
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
      v12 = 0;
      if (!v11)
      {
        goto LABEL_20;
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
LABEL_20:
    a2 = 0;
    goto LABEL_21;
  }

LABEL_10:
  v17 = 0;
  v18 = 0;
  v13 = (**v11)(&v17, v11, a2);
  v14 = v17;
  if (v17)
  {
    v15 = v17;
    if (v17[49] != 1)
    {
LABEL_14:
      a2 = *(v15 + 52);
      goto LABEL_17;
    }

    if (capabilities::ct::supportsMultipleThumpers(v13))
    {
      v15 = v17;
      goto LABEL_14;
    }

    a2 = 1;
  }

LABEL_17:
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_21:
  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a2;
}

void sub_23740AAD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t sd::IsDataConnectionImSupportedByDevice(sd *this)
{
  if (capabilities::ct::supportsVoiceCall(this))
  {
    return 1;
  }

  return MEMORY[0x2821F6130]();
}

uint64_t sd::isSimPersonality(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  Registry::throwIfNotInitialized(*a1);
  v4 = *(v3 + 24);
  v5 = off_284A70050;
  if ((off_284A70050 & 0x8000000000000000) != 0)
  {
    v6 = (off_284A70050 & 0x7FFFFFFFFFFFFFFFLL);
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
  v15 = v5;
  v9 = std::__hash_table<std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::shared_ptr<void>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::shared_ptr<void>>>>::find<unsigned long>(&v4[4].__m_.__sig, &v15);
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
        goto LABEL_15;
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
LABEL_15:
    LOBYTE(a2) = 0;
    goto LABEL_16;
  }

LABEL_10:
  v15 = 0;
  v16 = 0;
  (**v11)(&v15, v11, a2);
  v13 = v15;
  if (v15)
  {
    LOBYTE(a2) = v15[49] == 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_16:
  if ((v12 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  return a2 & 1;
}

void sub_23740AC88(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

void rest::carrier_space::read_rest_value(_BYTE *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (MEMORY[0x2383CC760](v3) == v4)
  {
    v5[0] = &v7;
    v5[1] = "roaming_plan";
    xpc::dict::object_proxy::operator xpc::object(v5, &object);
    *a1 = xpc::dyn_cast_or_default(&object, 0);
    xpc_release(object);
    v3 = v7;
  }

  else
  {
    *a1 = 0;
  }

  xpc_release(v3);
}

void sub_23740B220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void rest::carrier_space::write_rest_value(BOOL *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v11 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v11 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v11 = v6;
LABEL_9:
  xpc_release(v5);
  v9 = xpc_BOOL_create(*a1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v8[0] = &v11;
  v8[1] = "roaming_plan";
  xpc::dict::object_proxy::operator=(v8, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  v7 = v11;
  *a2 = v11;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v11);
}

const char *rest::carrier_space::asString(unsigned int a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_278A2EAA0[a1];
  }
}

void rest::carrier_space::write_rest_value(unsigned int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v26 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v26 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v26 = v6;
LABEL_9:
  xpc_release(v5);
  v8 = *a1;
  if (v8 > 3)
  {
    v9 = "???";
  }

  else
  {
    v9 = off_278A2EAA0[v8];
  }

  ctu::rest::detail::write_enum_string_value(&object, v8, v9, v7);
  v22 = &v26;
  v23 = "hour_type";
  xpc::dict::object_proxy::operator=(&v22, &object, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(object);
  object = 0;
  v10 = MEMORY[0x2383CB1C0](*(a1 + 1));
  v20 = xpc_int64_create((v10 * 1000000000.0));
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "start_date";
  xpc::dict::object_proxy::operator=(&v22, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v11 = MEMORY[0x2383CB1C0](*(a1 + 2));
  v18 = xpc_int64_create((v11 * 1000000000.0));
  if (!v18)
  {
    v18 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "end_date";
  xpc::dict::object_proxy::operator=(&v22, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v12 = a1[6];
  v13 = asString(v12);
  ctu::rest::detail::write_enum_string_value(&v16, v12, v13, v14);
  v22 = &v26;
  v23 = "weekday";
  xpc::dict::object_proxy::operator=(&v22, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v15 = v26;
  *a2 = v26;
  if (v15)
  {
    xpc_retain(v15);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v26);
}

void rest::carrier_space::read_rest_value(uint64_t a1, void **a2)
{
  v3 = *a2;
  v27 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v27 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    v23 = &v27;
    v24 = "hour_type";
    xpc::dict::object_proxy::operator xpc::object(&v23, v28);
    v7 = MEMORY[0x2383CC760](*v28);
    v9 = MEMORY[0x277D864C0];
    v10 = MEMORY[0x277D86448];
    if (v7 == MEMORY[0x277D864C0])
    {
      LODWORD(v22) = *a1;
      ctu::rest::detail::read_enum_string_value(&v22, v28, v8);
      *a1 = v22;
    }

    else if (v7 == MEMORY[0x277D86448] || v7 == MEMORY[0x277D86498] || v7 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(v28, 0);
    }

    xpc_release(*v28);
    v23 = &v27;
    v24 = "start_date";
    xpc::dict::object_proxy::operator xpc::object(&v23, &object);
    v11 = xpc::dyn_cast_or_default(&object, 0);
    v12 = *MEMORY[0x277CBECE8];
    v13 = CFDateCreate(*MEMORY[0x277CBECE8], v11 / 1000000000.0);
    v22 = v13;
    v14 = (a1 + 8);
    if ((a1 + 8) != &v22)
    {
      *v28 = *v14;
      *v14 = v13;
      v22 = 0;
      ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v28);
    }

    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v22);
    xpc_release(object);
    object = 0;
    v23 = &v27;
    v24 = "end_date";
    xpc::dict::object_proxy::operator xpc::object(&v23, &v20);
    v15 = xpc::dyn_cast_or_default(&v20, 0);
    v16 = CFDateCreate(v12, v15 / 1000000000.0);
    v22 = v16;
    v17 = (a1 + 16);
    if ((a1 + 16) != &v22)
    {
      *v28 = *v17;
      *v17 = v16;
      v22 = 0;
      ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v28);
    }

    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v22);
    xpc_release(v20);
    v20 = 0;
    v23 = &v27;
    v24 = "weekday";
    xpc::dict::object_proxy::operator xpc::object(&v23, v28);
    v18 = MEMORY[0x2383CC760](*v28);
    if (v18 == v9)
    {
      LODWORD(v22) = *(a1 + 24);
      ctu::rest::detail::read_enum_string_value(&v22, v28, v19);
      *(a1 + 24) = v22;
    }

    else if (v18 == v10 || v18 == MEMORY[0x277D86498] || v18 == MEMORY[0x277D864C8])
    {
      *(a1 + 24) = xpc::dyn_cast_or_default(v28, 0);
    }

    xpc_release(*v28);
  }

  else
  {
    LODWORD(v23) = 0;
    v24 = 0;
    v25 = 0;
    v5 = 7;
    v26 = 7;
    *a1 = 0;
    if (&v23 != a1)
    {
      *v28 = *(a1 + 8);
      *(a1 + 8) = 0;
      v24 = 0;
      v6 = ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v28);
      *v28 = *(a1 + 16);
      *(a1 + 16) = v25;
      v25 = 0;
      ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v6);
      v5 = v26;
    }

    *(a1 + 24) = v5;
    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v25);
    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v24);
  }

  xpc_release(v27);
}

void rest::carrier_space::write_rest_value(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v20 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v20 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) != MEMORY[0x277D86468])
  {
    v6 = xpc_null_create();
LABEL_8:
    v20 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v7) == MEMORY[0x277D86440])
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
  v9 = *a1;
  v10 = *(a1 + 8);
  while (v9 != v10)
  {
    rest::carrier_space::write_rest_value(v9, &value);
    v11 = value;
    xpc_array_append_value(v8, value);
    xpc_release(v11);
    v9 += 8;
  }

  v18 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v8);
  value = &v20;
  v17 = "time_windows";
  xpc::dict::object_proxy::operator=(&value, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v12 = MEMORY[0x2383CB1C0](*(a1 + 24));
  v14 = xpc_int64_create((v12 * 1000000000.0));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  value = &v20;
  v17 = "expiration_date";
  xpc::dict::object_proxy::operator=(&value, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v20;
  *a2 = v20;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v20);
}

void rest::carrier_space::read_rest_value(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v33 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v33 = v3;
  }

  if (MEMORY[0x2383CC760](v3) == v4)
  {
    v27[0] = &v33;
    v27[1] = "time_windows";
    xpc::dict::object_proxy::operator xpc::object(v27, &v28);
    v5 = v28;
    v6 = MEMORY[0x277D86440];
    if (v28 && MEMORY[0x2383CC760](v28) == v6)
    {
      xpc_retain(v5);
    }

    else
    {
      v5 = xpc_null_create();
    }

    std::vector<rest::carrier_space::TimeWindow>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    if (MEMORY[0x2383CC760](v5) == v6)
    {
      v36[0] = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        v36[0] = xpc_null_create();
      }

      xpc::array::iterator::iterator(&__p, v36, 0);
      xpc_release(v36[0]);
      object[0] = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      v25 = v5;
      if (MEMORY[0x2383CC760](v5) == v6)
      {
        count = xpc_array_get_count(v5);
      }

      else
      {
        count = 0;
      }

      xpc::array::iterator::iterator(v36, object, count);
      xpc_release(object[0]);
      for (i = v30; i != v36[1] || __p != v36[0]; i = ++v30)
      {
        object[0] = &__p;
        object[1] = i;
        v10 = *(a1 + 8);
        v9 = *(a1 + 16);
        if (v10 >= v9)
        {
          v12 = *a1;
          v13 = (v10 - *a1) >> 5;
          v14 = v13 + 1;
          if ((v13 + 1) >> 59)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v15 = v9 - v12;
          if (v15 >> 4 > v14)
          {
            v14 = v15 >> 4;
          }

          if (v15 >= 0x7FFFFFFFFFFFFFE0)
          {
            v16 = 0x7FFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v14;
          }

          if (v16)
          {
            if (!(v16 >> 59))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v17 = (v10 - *a1) >> 5;
          v18 = 32 * v13;
          *v18 = 0u;
          *(v18 + 16) = 0u;
          *(v18 + 24) = 7;
          v19 = v18 - 32 * v17;
          if (v12 != v10)
          {
            v20 = v12;
            v21 = v19;
            do
            {
              *v21 = *v20;
              *(v21 + 8) = v20[1];
              v20[1] = 0;
              *(v21 + 16) = v20[2];
              v20[2] = 0;
              *(v21 + 24) = *(v20 + 6);
              v20 += 4;
              v21 += 32;
            }

            while (v20 != v10);
            do
            {
              ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v12 + 2);
              ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v12 + 1);
              v12 += 4;
            }

            while (v12 != v10);
            v12 = *a1;
          }

          v11 = v18 + 32;
          *a1 = v19;
          *(a1 + 8) = v11;
          *(a1 + 16) = 0;
          if (v12)
          {
            operator delete(v12);
          }
        }

        else
        {
          *v10 = 0u;
          *(v10 + 16) = 0u;
          v11 = v10 + 32;
          *(v10 + 24) = 7;
        }

        *(a1 + 8) = v11;
        xpc::array::object_proxy::operator xpc::object(object, &v34);
        rest::carrier_space::read_rest_value(v11 - 32, &v34);
        xpc_release(v34);
      }

      xpc_release(v36[0]);
      xpc_release(__p);
      v5 = v25;
    }

    xpc_release(v5);
    xpc_release(v28);
    __p = &v33;
    v30 = "expiration_date";
    xpc::dict::object_proxy::operator xpc::object(&__p, &v26);
    v22 = xpc::dyn_cast_or_default(&v26, 0);
    v23 = CFDateCreate(*MEMORY[0x277CBECE8], v22 / 1000000000.0);
    object[0] = v23;
    v24 = (a1 + 24);
    if ((a1 + 24) != object)
    {
      v36[0] = *v24;
      *v24 = v23;
      object[0] = 0;
      ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v36);
    }

    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(object);
    xpc_release(v26);
    v26 = 0;
    v3 = v33;
  }

  else
  {
    v32 = 0;
    if (*a1)
    {
      std::vector<rest::carrier_space::TimeWindow>::__base_destruct_at_end[abi:ne200100](a1, *a1);
      operator delete(*a1);
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
    }

    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v30 = 0;
    v31 = 0;
    __p = 0;
    if (&__p != a1)
    {
      v36[0] = *(a1 + 24);
      *(a1 + 24) = 0;
      v32 = 0;
      ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(v36);
    }

    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(&v32);
    if (__p)
    {
      std::vector<rest::carrier_space::TimeWindow>::__base_destruct_at_end[abi:ne200100](&__p, __p);
      operator delete(__p);
    }
  }

  xpc_release(v3);
}

void sub_23740C16C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(a10);
  xpc_release(a14);
  xpc_release(a19);
  _Unwind_Resume(a1);
}

uint64_t rest::carrier_space::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if ((v4 != 0) == (v5 == 0))
  {
    return 0;
  }

  if (v4 | v5)
  {
    result = CFEqual(v4, v5);
    if (!result)
    {
      return result;
    }
  }

  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if ((v7 != 0) == (v8 == 0))
  {
    return 0;
  }

  if (!(v7 | v8))
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  result = CFEqual(v7, v8);
  if (result)
  {
    return *(a1 + 24) == *(a2 + 24);
  }

  return result;
}

uint64_t rest::carrier_space::operator==(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  if (v3 - *a1 != a2[1] - *a2)
  {
    return 0;
  }

  while (v2 != v3)
  {
    result = rest::carrier_space::operator==(v2, v4);
    if (!result)
    {
      return result;
    }

    v2 += 32;
    v4 += 32;
  }

  v8 = a1[3];
  v9 = a2[3];
  if ((v8 != 0) == (v9 == 0))
  {
    return 0;
  }

  if (v8 | v9)
  {
    return CFEqual(v8, v9) != 0;
  }

  return 1;
}

const void **std::vector<rest::carrier_space::TimeWindow>::__base_destruct_at_end[abi:ne200100](const void **result, const void **a2)
{
  v3 = result;
  for (i = result[1]; i != a2; i -= 4)
  {
    ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(i - 2);
    result = ctu::SharedRef<__CFDate const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFDate const>::~SharedRef(i - 3);
  }

  v3[1] = a2;
  return result;
}

void *operator<<(void *a1, __int16 *a2)
{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[", 1);
  v16 = *a2;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v17, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v17 = *(a2 + 4);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v18, v17.__r_.__value_.__l.__data_, v17.__r_.__value_.__l.__size_);
  }

  else
  {
    v18 = v17;
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v18;
  }

  else
  {
    v5 = v18.__r_.__value_.__r.__words[0];
  }

  if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v18.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v18.__r_.__value_.__l.__size_;
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v5, size);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "]-[", 3);
  v13 = a2[16];
  if (*(a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 5), *(a2 + 6));
  }

  else
  {
    __p = *(a2 + 20);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v15 = __p;
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v15;
  }

  else
  {
    v9 = v15.__r_.__value_.__r.__words[0];
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v15.__r_.__value_.__l.__size_;
  }

  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "]", 1);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  return a1;
}

void sub_23740C6B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v29 - 41) < 0)
  {
    operator delete(*(v29 - 64));
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(exception_object);
}

void MCCAndMNC::getMcc(MCCAndMNC *this@<X0>, _WORD *a2@<X8>)
{
  *a2 = *this;
  v2 = (a2 + 4);
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(this + 1), *(this + 2));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(this + 8);
    v2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void MCC::getStringValue(MCC *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *(this + 1), *(this + 2));
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 8);
    a2->__r_.__value_.__r.__words[2] = *(this + 3);
  }
}

void MCCAndMNC::getMnc(MCCAndMNC *this@<X0>, _WORD *a2@<X8>)
{
  *a2 = *(this + 16);
  v2 = (a2 + 4);
  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(this + 5), *(this + 6));
  }

  else
  {
    *&v2->__r_.__value_.__l.__data_ = *(this + 40);
    v2->__r_.__value_.__r.__words[2] = *(this + 7);
  }
}

uint64_t _is3DigitMNCWithIMSI(int a1, _BYTE *a2)
{
  if (a1 <= 343)
  {
    if (a1 == 330)
    {
      if (!a2 || a2[3] != 49 || a2[4] - 49 > 1)
      {
        goto LABEL_88;
      }

      goto LABEL_84;
    }

    if (a1 == 334)
    {
      if (!a2)
      {
        goto LABEL_88;
      }

      v4 = a2[3];
      if (v4 == 49)
      {
        if (a2[4] != 52)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v4 != 48)
        {
          goto LABEL_88;
        }

        v5 = a2[4];
        if (v5 != 50 && v5 != 57 && v5 != 53)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_84;
    }
  }

  else
  {
    switch(a1)
    {
      case 344:
        if (a2 && a2[3] == 48 && a2[4] == 51)
        {
          v6 = a2[5];
LABEL_71:
          v11 = v6 == 48;
          goto LABEL_96;
        }

LABEL_72:
        LOBYTE(v10) = 1;
        return v10 & 1;
      case 738:
        if (!a2 || a2[3] != 48 || a2[4] != 48)
        {
          goto LABEL_88;
        }

        v7 = a2[5];
LABEL_28:
        v8 = v7 == 50;
        goto LABEL_85;
      case 405:
        if (!a2)
        {
          goto LABEL_72;
        }

        v2 = a2[3];
        if (v2 > 0x33)
        {
          if (a2[3] <= 0x35u)
          {
            if (v2 != 52)
            {
              if (v2 == 53)
              {
                v3 = __CFADD__(a2[4] - 55, 6);
                goto LABEL_63;
              }

              goto LABEL_72;
            }

            v11 = a2[4] == 56;
LABEL_96:
            LOBYTE(v10) = !v11;
            return v10 & 1;
          }

          if (v2 == 54)
          {
            v11 = (a2[4] & 0xFE) == 54;
            goto LABEL_96;
          }

          if (v2 == 55)
          {
            v6 = a2[4];
            goto LABEL_71;
          }

          goto LABEL_72;
        }

        if (v2 == 48)
        {
          v13 = a2[4];
          v3 = v13 >= 0x3A;
          v10 = 0x1DFFFFFFFFFFFFuLL >> v13;
          if (v3)
          {
            LOBYTE(v10) = 1;
          }

          return v10 & 1;
        }

        if (v2 != 49)
        {
          if (v2 == 50)
          {
            v3 = __CFADD__(a2[4] - 53, 5);
LABEL_63:
            LOBYTE(v10) = !v3;
            return v10 & 1;
          }

          goto LABEL_72;
        }

LABEL_88:
        LOBYTE(v10) = 0;
        return v10 & 1;
    }
  }

  if (a1 == 722 && a2 && a2[3] == 48 && a2[4] == 55)
  {
    goto LABEL_88;
  }

  if (a1)
  {
    v9 = a1 == 101;
  }

  else
  {
    v9 = 1;
  }

  if (v9 && a2 && a2[3] == 70 && a2[4] == 65 && a2[5] == 67)
  {
    goto LABEL_72;
  }

  if (a1 > 543)
  {
    if (a1 != 544)
    {
      if (a1 == 708)
      {
        if (!a2 || a2[3] != 48 || a2[4] != 48)
        {
          goto LABEL_88;
        }

        v8 = a2[5] == 49;
LABEL_85:
        LOBYTE(v10) = v8;
        return v10 & 1;
      }

      if (a1 == 714)
      {
        if (!a2 || a2[3] != 48)
        {
          goto LABEL_88;
        }

LABEL_83:
        if (a2[4] != 50)
        {
          goto LABEL_88;
        }

        goto LABEL_84;
      }

      return _is3DigitMNC(a1);
    }

    if (!a2 || a2[3] != 49 || a2[4] != 49)
    {
      goto LABEL_88;
    }

LABEL_84:
    v8 = a2[5] == 48;
    goto LABEL_85;
  }

  if (a1 == 262)
  {
    if (!a2 || a2[3] != 56)
    {
      goto LABEL_88;
    }

    goto LABEL_83;
  }

  if (a1 == 502)
  {
    if (!a2 || a2[3] != 49 || a2[4] != 53)
    {
      goto LABEL_88;
    }

    v7 = a2[5] & 0xFE;
    goto LABEL_28;
  }

  return _is3DigitMNC(a1);
}

_BYTE *createPLMN@<X0>(int a1@<W2>, _BYTE *a2@<X8>)
{
  v7 = *MEMORY[0x277D85DE8];
  *__str = 0;
  v6 = 0;
  if (a1)
  {
    snprintf(__str, 0x10uLL, "%03d%03d");
  }

  else
  {
    snprintf(__str, 0x10uLL, "%03d%02d");
  }

  result = std::string::basic_string[abi:ne200100]<0>(a2, __str);
  v4 = *MEMORY[0x277D85DE8];
  return result;
}

_BYTE *createPLMN@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v7 = 0;
  sscanf(a1, "%d", &v7 + 4);
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  sscanf(v5, "%d", &v7);
  return createPLMN(SHIDWORD(v7), v7, a3);
}

void createCFPLMN(const MCC *a1@<X0>, const MNC *a2@<X1>, void *a3@<X8>)
{
  formPLMN(a1, a2, &__p);
  v4 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v9 = __p;
  }

  v8 = 0;
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v10, v9.__r_.__value_.__l.__data_, v9.__r_.__value_.__l.__size_);
  }

  else
  {
    v10 = v9;
  }

  v11 = 0;
  v5 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v6 = v8;
    v8 = v11;
    v12 = v6;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v12);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  *a3 = v8;
  v8 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v8);
  if ((SHIBYTE(v9.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v4 & 0x80000000) == 0)
    {
      return;
    }

LABEL_15:
    operator delete(__p.__r_.__value_.__l.__data_);
    return;
  }

  operator delete(v9.__r_.__value_.__l.__data_);
  if (v4 < 0)
  {
    goto LABEL_15;
  }
}

void sub_23740CCC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, const void *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

void formPLMN(uint64_t a1@<X0>, uint64_t a2@<X1>, std::string *a3@<X8>)
{
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v9 = *(a1 + 8);
  }

  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
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

  v7 = std::string::append(&v9, p_p, size);
  *a3 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_23740CDF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MCC::MCC(MCC *this)
{
  *this = -1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
}

{
  *this = -1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
}

_WORD *MCC::MCC(_WORD *a1, __int16 a2, __int128 *a3)
{
  *a1 = a2;
  v4 = (a1 + 4);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    v4->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

{
  *a1 = a2;
  v4 = (a1 + 4);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    v4->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void MCC::MCC(MCC *this, const MCC *a2)
{
  *this = *a2;
  v2 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v3 = *(a2 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

{
  *this = *a2;
  v2 = (this + 8);
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(v2, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v3 = *(a2 + 8);
    v2->__r_.__value_.__r.__words[2] = *(a2 + 3);
    *&v2->__r_.__value_.__l.__data_ = v3;
  }
}

uint64_t MCC::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  return a1;
}

uint64_t MCC::clear(uint64_t this)
{
  *this = -1;
  if (*(this + 31) < 0)
  {
    **(this + 8) = 0;
    *(this + 16) = 0;
  }

  else
  {
    *(this + 8) = 0;
    *(this + 31) = 0;
  }

  return this;
}

BOOL MCC::valid(MCC *this)
{
  if (*this == -1)
  {
    return 0;
  }

  v1 = *(this + 31);
  if (v1 < 0)
  {
    v1 = *(this + 2);
  }

  return v1 != 0;
}

void MNC::MNC(MNC *this)
{
  *this = -1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
}

{
  *this = -1;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
}

_WORD *MNC::MNC(_WORD *a1, __int16 a2, __int128 *a3)
{
  *a1 = a2;
  v4 = (a1 + 4);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    v4->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

{
  *a1 = a2;
  v4 = (a1 + 4);
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(v4, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    v4->__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&v4->__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void MNC::MNC(MNC *this, __int16 a2, const MCC *a3, int a4)
{
  v14 = *MEMORY[0x277D85DE8];
  MCC::MCC(this, a2);
  memset(&v11, 0, sizeof(v11));
  v7 = *a3;
  *&__str.__r_.__value_.__l.__data_ = 0uLL;
  if (a4)
  {
    snprintf(&__str, 0x10uLL, "%03d%03d");
  }

  else
  {
    snprintf(&__str, 0x10uLL, "%03d%02d");
  }

  std::string::basic_string[abi:ne200100]<0>(&v11, &__str);
  size = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  v9 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  if ((v11.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v11.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::basic_string(&__str, &v11, 3uLL, 0xFFFFFFFFFFFFFFFFLL, &v12);
    if (*(this + 31) < 0)
    {
      operator delete(*(this + 1));
    }

    *(this + 8) = __str;
    v9 = HIBYTE(v11.__r_.__value_.__r.__words[2]);
  }

  if (v9 < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23740D234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (*(v16 + 31) < 0)
  {
    operator delete(*(v16 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MNC::getIntegerWidth(MNC *this)
{
  v1 = *(this + 31);
  if (v1 < 0)
  {
    v1 = *(this + 2);
  }

  if (v1 == 3)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

BOOL MNC::isThreeDigit(MNC *this)
{
  v1 = *(this + 31);
  if (v1 < 0)
  {
    v1 = *(this + 2);
  }

  return v1 == 3;
}

void MCCAndMNC::MCCAndMNC(MCCAndMNC *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  MCCAndMNC::MCCAndMNC(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

{
  std::string::basic_string[abi:ne200100]<0>(__p, "");
  MCCAndMNC::MCCAndMNC(this, __p);
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_23740D300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23740D374(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MCCAndMNC::MCCAndMNC(MCCAndMNC *this, __int16 a2, int a3)
{
  *this = -1;
  *(this + 1) = 0;
  v5 = (this + 8);
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 16) = -1;
  *(this + 5) = 0;
  v6 = (this + 40);
  *(this + 6) = 0;
  *(this + 7) = 0;
  MCC::MCC(&v7, a2);
  *this = v7;
  std::string::operator=(v5, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  MNC::MNC(&v7, a3, this);
  *(this + 16) = v7;
  std::string::operator=(v6, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23740D45C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 63) < 0)
  {
    operator delete(*v17);
  }

  if (*(v15 + 31) < 0)
  {
    operator delete(*v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MCCAndMNC::MCCAndMNC(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v5 = MCC::MCC(a1, a2);
  MCC::MCC(v5 + 32, a3);
  return a1;
}

void sub_23740D4E4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MCCAndMNC::operator<(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    v15 = *(a1 + 8);
  }

  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
  }

  else
  {
    __p = *(a2 + 8);
  }

  v4 = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v15.__r_.__value_.__l.__size_;
  }

  v6 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v7 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = __p.__r_.__value_.__l.__size_;
  }

  if (size != v6)
  {
    v10 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_26;
    }

LABEL_22:
    if (v4 < 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

  if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v15;
  }

  else
  {
    v8 = v15.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v10 = memcmp(v8, p_p, size) == 0;
  if ((v7 & 0x80000000) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((*(&v15.__r_.__value_.__s + 23) & 0x80) != 0)
  {
LABEL_27:
    operator delete(v15.__r_.__value_.__l.__data_);
    if (!v10)
    {
      goto LABEL_28;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v10)
  {
LABEL_28:
    if (*(a1 + 31) < 0)
    {
      std::string::__init_copy_ctor_external(&v15, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      v15 = *(a1 + 8);
    }

    if ((*(a2 + 31) & 0x80000000) == 0)
    {
      *&__p.__r_.__value_.__l.__data_ = *(a2 + 8);
      v11 = *(a2 + 24);
      goto LABEL_36;
    }

    std::string::__init_copy_ctor_external(&__p, *(a2 + 8), *(a2 + 16));
    goto LABEL_39;
  }

LABEL_24:
  if (*(a1 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v15, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    v15 = *(a1 + 40);
  }

  if ((*(a2 + 63) & 0x80000000) == 0)
  {
    *&__p.__r_.__value_.__l.__data_ = *(a2 + 40);
    v11 = *(a2 + 56);
LABEL_36:
    __p.__r_.__value_.__r.__words[2] = v11;
    goto LABEL_39;
  }

  std::string::__init_copy_ctor_external(&__p, *(a2 + 40), *(a2 + 48));
LABEL_39:
  v12 = std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v15, &__p.__r_.__value_.__l.__data_);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  return (v12 >> 7) & 1;
}

void sub_23740D6F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void **a2)
{
  v2 = *(a1 + 23);
  v3 = a1[1];
  if ((v2 & 0x80u) != 0)
  {
    a1 = *a1;
    v2 = v3;
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  return std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(a1, v2, v5, v6);
}

BOOL MCCAndMNC::operator==(unsigned __int16 *a1, unsigned __int16 *a2)
{
  result = MCC::operator==(a1, a2);
  if (result)
  {

    return MCC::operator==(a1 + 16, a2 + 16);
  }

  return result;
}

BOOL MCCAndMNC::valid(MCCAndMNC *this)
{
  if (*this == -1)
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

  if (*(this + 16) == -1)
  {
    return 0;
  }

  v1 = *(this + 63);
  if (v1 < 0)
  {
    v1 = *(this + 6);
  }

  return v1 != 0;
}

void MCCAndMNC::getStringValue(MCCAndMNC *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 31) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *(this + 1), *(this + 2));
  }

  else
  {
    v8 = *(this + 8);
  }

  if (*(this + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *(this + 5), *(this + 6));
  }

  else
  {
    __p = *(this + 40);
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
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

  v6 = std::string::append(&v8, p_p, size);
  *a2 = *v6;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_23740D910(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::ostringstream::~ostringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[3];
  *(a1 + 8) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  *(a1 + 8) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

uint64_t std::istringstream::~istringstream(uint64_t a1)
{
  v2 = MEMORY[0x277D82820];
  v3 = *MEMORY[0x277D82820];
  *a1 = *MEMORY[0x277D82820];
  *(a1 + *(v3 - 24)) = *(v2 + 24);
  *(a1 + 16) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 16) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 24));

  return std::istream::~istream();
}

uint64_t std::operator<=>[abi:ne200100]<char,std::char_traits<char>>(const void *a1, size_t a2, void *__s2, size_t a4)
{
  if (a4 >= a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = a4;
  }

  v8 = memcmp(a1, __s2, v7);
  if (v8)
  {
    if ((v8 & 0x80000000) == 0)
    {
      return 1;
    }
  }

  else
  {
    if (a2 == a4)
    {
      return 0;
    }

    if (a2 >= a4)
    {
      return 1;
    }
  }

  return 255;
}

void asString(objc_object *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    std::string::basic_string[abi:ne200100]<0>(a2, -[objc_object UTF8String](v4, "UTF8String"));
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(objc_object *)v4 description];
    std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);
  }

  else
  {
LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

LABEL_7:
}

void asString(NSObject *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1;
  if (!v4)
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    std::string::basic_string[abi:ne200100]<0>(a2, -[NSObject UTF8String](v4, "UTF8String"));
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v4 description];
    std::string::basic_string[abi:ne200100]<0>(a2, [v3 UTF8String]);
  }

  else
  {
LABEL_6:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

LABEL_7:
}

uint64_t RatSelectionType::RatSelectionType(uint64_t result, char a2, char a3, int a4)
{
  *result = a2;
  *(result + 1) = a3;
  *(result + 2) = 0;
  *(result + 4) = a4;
  return result;
}

{
  *result = a2;
  *(result + 1) = a3;
  *(result + 2) = 0;
  *(result + 4) = a4;
  return result;
}

void RatSelectionType::RatSelectionType(RatSelectionType *this)
{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 1;
}

{
  *this = 0;
  *(this + 2) = 0;
  *(this + 1) = 1;
}

void RatSelectionType::dumpState(RatSelectionType *this, os_log_t *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    ratSelectionAsStr(*this, v13);
    v4 = v14;
    v5 = v13[0];
    ratSelectionAsStr(*(this + 1), __p);
    v6 = v13;
    if (v4 < 0)
    {
      v6 = v5;
    }

    v7 = *(this + 2);
    v8 = __p[0];
    if (v12 >= 0)
    {
      v8 = __p;
    }

    *buf = 136446722;
    v16 = v6;
    if (v7)
    {
      v9 = "true";
    }

    else
    {
      v9 = "false";
    }

    v17 = 2082;
    v18 = v8;
    v19 = 2080;
    v20 = v9;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#I selection (%{public}s) preferred (%{public}s) internal (%s)", buf, 0x20u);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

void sub_23740E0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *getDataUsageLog(void)
{
  if ((atomic_load_explicit(&qword_280CE8328, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_280CE8328))
  {
    ctu::OsLogLogger::OsLogLogger(&_MergedGlobals, "com.apple.CommCenter", "cu.data");
    __cxa_guard_release(&qword_280CE8328);
  }

  return &_MergedGlobals;
}

void CSIPacketAddress::CSIPacketAddress(CSIPacketAddress *this)
{
  *(this + 4) = 2;
  *(this + 20) = -1;
  *this = 0;
  *(this + 1) = 0;
}

{
  *(this + 4) = 2;
  *(this + 20) = -1;
  *this = 0;
  *(this + 1) = 0;
}

uint64_t CSIPacketAddress::init(uint64_t this, int a2)
{
  *(this + 16) = a2;
  *(this + 20) = -1;
  *this = 0;
  *(this + 8) = 0;
  return this;
}

void CSIPacketAddress::CSIPacketAddress(CSIPacketAddress *this, const CSIPacketAddress *a2)
{
  *(this + 4) = *(a2 + 4);
  *(this + 20) = *(a2 + 20);
  *this = *a2;
}

{
  *(this + 4) = *(a2 + 4);
  *(this + 20) = *(a2 + 20);
  *this = *a2;
}

unsigned __int8 *CSIPacketAddress::CSIPacketAddress(unsigned __int8 *a1, char *a2)
{
  CSIPacketAddress::parseDottedDecimal(a1, a2);
  if (*(a1 + 4) == 30 && *a1 == 254 && a1[1] < 0)
  {
    a1[20] = 10;
  }

  return a1;
}

uint64_t CSIPacketAddress::parseDottedDecimal(uint64_t result, char *__s)
{
  v2 = __s;
  v3 = result;
  *(result + 16) = 2;
  *(result + 20) = -1;
  *result = 0;
  *(result + 8) = 0;
  if (__s[23] < 0)
  {
    if (!*(__s + 1))
    {
      return result;
    }

    v2 = *__s;
  }

  else if (!__s[23])
  {
    return result;
  }

  if (*v2)
  {
    if (strchr(v2, 58) && (result = inet_pton(30, v2, v3), result == 1))
    {
      v3[4] = 30;
    }

    else
    {

      return inet_pton(2, v2, v3);
    }
  }

  return result;
}

uint64_t CSIPacketAddress::setPrefixLen(uint64_t this, unsigned int a2)
{
  v2 = *(this + 16);
  if (a2 >= 0x20)
  {
    v3 = 32;
  }

  else
  {
    v3 = a2;
  }

  if (v2 != 2)
  {
    v3 = a2;
  }

  if (v2 == 30 && a2 > 0x80)
  {
    v5 = 0x80;
  }

  else
  {
    v5 = v3;
  }

  *(this + 20) = v5;
  return this;
}

uint64_t CSIPacketAddress::CSIPacketAddress(uint64_t a1, char *a2, unsigned int a3)
{
  CSIPacketAddress::parseDottedDecimal(a1, a2);
  v5 = *(a1 + 16);
  if (a3 >= 0x20)
  {
    v6 = 32;
  }

  else
  {
    v6 = a3;
  }

  if (v5 != 2)
  {
    v6 = a3;
  }

  if (v5 == 30 && a3 > 0x80)
  {
    v8 = 0x80;
  }

  else
  {
    v8 = v6;
  }

  *(a1 + 20) = v8;
  return a1;
}

{
  CSIPacketAddress::parseDottedDecimal(a1, a2);
  v5 = *(a1 + 16);
  if (a3 >= 0x20)
  {
    v6 = 32;
  }

  else
  {
    v6 = a3;
  }

  if (v5 != 2)
  {
    v6 = a3;
  }

  if (v5 == 30 && a3 > 0x80)
  {
    v8 = 0x80;
  }

  else
  {
    v8 = v6;
  }

  *(a1 + 20) = v8;
  return a1;
}

__n128 CSIPacketAddress::operator=(__n128 *a1, __n128 *a2)
{
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  a1[1].n128_u8[4] = a2[1].n128_u8[4];
  result = *a2;
  *a1 = *a2;
  return result;
}

void *operator<<(void *a1, _BYTE *a2)
{
  if (a2[20] && a2[20] != 255)
  {
    CSIPacketAddress::operator std::string(a2, &__p);
    if ((v15 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v15 & 0x80u) == 0)
    {
      v8 = v15;
    }

    else
    {
      v8 = v14;
    }

    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, p_p, v8);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "/", 1);
    v6 = MEMORY[0x2383CBD30](v10, a2[20]);
  }

  else
  {
    CSIPacketAddress::operator std::string(a2, &__p);
    if ((v15 & 0x80u) == 0)
    {
      v4 = &__p;
    }

    else
    {
      v4 = __p;
    }

    if ((v15 & 0x80u) == 0)
    {
      v5 = v15;
    }

    else
    {
      v5 = v14;
    }

    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v4, v5);
  }

  v11 = v6;
  if (v15 < 0)
  {
    operator delete(__p);
  }

  return v11;
}

void sub_23740E530(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

_BYTE *CSIPacketAddress::operator std::string@<X0>(_DWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v9 = *MEMORY[0x277D85DE8];
  memset(v8, 0, 47);
  v4 = a1[4];
  if (v4 == 30 || v4 == 2)
  {
    inet_ntop(v4, a1, v8, 0x2Fu);
  }

  result = std::string::basic_string[abi:ne200100]<0>(a2, v8);
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL CSIPacketAddress::operator==(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[4];
  if (v2 != a2[4])
  {
    return 0;
  }

  if (v2 == 30)
  {
    v3 = 16;
  }

  else
  {
    v3 = 4;
  }

  return memcmp(a1, a2, v3) == 0;
}

BOOL CSIPacketAddress::fullMatch(CSIPacketAddress *this, const CSIPacketAddress *a2)
{
  v2 = *(this + 4);
  if (__PAIR64__(*(this + 20), v2) != __PAIR64__(*(a2 + 20), *(a2 + 4)))
  {
    return 0;
  }

  if (v2 == 30)
  {
    v3 = 16;
  }

  else
  {
    v3 = 4;
  }

  return memcmp(this, a2, v3) == 0;
}

BOOL CSIPacketAddress::operator!=(_DWORD *a1, _DWORD *a2)
{
  v2 = a1[4];
  if (v2 != a2[4])
  {
    return 1;
  }

  if (v2 == 30)
  {
    v3 = 16;
  }

  else
  {
    v3 = 4;
  }

  return memcmp(a1, a2, v3) != 0;
}

uint64_t CSIPacketAddress::operator<(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a2 + 4);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 > v3)
  {
    return 0;
  }

  v6 = a1[20];
  v7 = a2[20];
  if (v6 < v7)
  {
    return 1;
  }

  if (v6 > v7)
  {
    return 0;
  }

  v8 = 15;
  if (v2 != 30)
  {
    v8 = 3;
  }

  do
  {
    v10 = *a1++;
    v9 = v10;
    v12 = *a2++;
    v11 = v12;
    v4 = v9 < v12;
    if (v9 < v12)
    {
      break;
    }
  }

  while (v9 <= v11 && v8-- != 0);
  return v4;
}

uint64_t CSIPacketAddress::toIPv4(CSIPacketAddress *this)
{
  if (*(this + 4) == 2)
  {
    return *this;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CSIPacketAddress::toIPv4LE(CSIPacketAddress *this)
{
  if (*(this + 4) == 2)
  {
    return bswap32(*this);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t CSIPacketAddress::toIPv6(CSIPacketAddress *this, unsigned __int8 *a2, unint64_t a3)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a3 >= 0x10 && *(this + 4) == 30)
  {
    result = 0;
    *a2 = *this;
  }

  return result;
}

uint64_t CSIPacketAddress::setIPv4Address(uint64_t this, int a2)
{
  *(this + 20) = -1;
  *(this + 12) = 0x200000000;
  *(this + 4) = 0;
  *this = a2;
  return this;
}

uint64_t CSIPacketAddress::setIPv4AddressLE(uint64_t this, unsigned int a2)
{
  *(this + 20) = -1;
  *(this + 12) = 0x200000000;
  *(this + 4) = 0;
  *this = bswap32(a2);
  return this;
}

void *CSIPacketAddress::setIPv6Address(CSIPacketAddress *this, const unsigned __int8 *a2, size_t a3)
{
  *(this + 4) = 30;
  *(this + 20) = -1;
  *this = 0;
  *(this + 1) = 0;
  if (a3 >= 0x10)
  {
    a3 = 16;
  }

  return memmove(this, a2, a3);
}

uint64_t CSIPacketAddress::maskToPrefix(CSIPacketAddress *this)
{
  v1 = 0;
  if (*(this + 4) == 30)
  {
    v2 = 16;
  }

  else
  {
    v2 = 4;
  }

  v3 = 8 * v2;
  while (1)
  {
    v5 = *this;
    this = (this + 1);
    v4 = v5;
    if (v5 != -1)
    {
      break;
    }

    v1 += 8;
    if (!--v2)
    {
      return v3;
    }
  }

  if (v4 < 0)
  {
    do
    {
      ++v1;
      LOBYTE(v4) = 2 * v4;
    }

    while ((v4 & 0x80) != 0);
  }

  return v1;
}

void CSIPacketAddress::applyMaskPrefix(CSIPacketAddress *this, unsigned int a2)
{
  v2 = *(this + 4);
  if (v2 == 2 && a2 > 0x20)
  {
    v4 = 32;
  }

  else
  {
    v4 = a2;
  }

  v5 = v2 == 30;
  if (v2 == 30)
  {
    v6 = 16;
  }

  else
  {
    v6 = 4;
  }

  if (v5 && a2 > 0x80)
  {
    v8 = 0x80;
  }

  else
  {
    v8 = v4;
  }

  *(this + 20) = v8;
  v9 = v8 >> 3;
  if (v9 < v6)
  {
    *(this + v9) &= kMaskbit[v8 & 7];
    if (v9 + 1 < v6)
    {
      bzero(this + (v8 >> 3) + 1, v6 - v9 - 2 + 1);
    }
  }
}

uint64_t CSIPacketAddress::ipv4PrefixLenToMask(CSIPacketAddress *this)
{
  v1 = *(this + 20);
  if (!*(this + 20))
  {
    return 0;
  }

  if (v1 >= 0x21)
  {
    v2 = -1;
  }

  else
  {
    v2 = -1 << -v1;
  }

  return bswap32(v2);
}

uint64_t CSIPacketAddress::ipv4PrefixLenToMaskAddr@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 20) = 0;
  v2 = *(this + 20);
  v3 = -1 << -v2;
  if (v2 >= 0x21)
  {
    v3 = -1;
  }

  v4 = bswap32(v3);
  if (!*(this + 20))
  {
    v4 = 0;
  }

  *(a2 + 4) = 0;
  *(a2 + 12) = 0x200000000;
  *a2 = v4;
  if (v2 >= 0x20)
  {
    LOBYTE(v2) = 32;
  }

  *(a2 + 20) = v2;
  return this;
}

BOOL CSIPacketAddress::setIPv6InterfaceID(CSIPacketAddress *this, const CSIPacketAddress *a2)
{
  v3 = *(this + 4) == 30 && *(a2 + 4) == 30;
  result = v3;
  if (v3)
  {
    v5 = 0;
    v6 = this + 8;
    do
    {
      v6[v5] = *(a2 + v5 + 8);
      ++v5;
    }

    while (v5 != 8);
  }

  return result;
}

void CSIPacketAddress::toLocalLinkId(CSIPacketAddress *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  std::string::basic_string[abi:ne200100]<0>(__p, "fe80::");
  CSIPacketAddress::CSIPacketAddress(a2, __p);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  if (*(this + 4) == 30)
  {
    *(a2 + 8) = *(this + 1);
  }
}

void sub_23740EA64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CSIPacketAddress::hasSamePrefix(CSIPacketAddress *this, const CSIPacketAddress *a2)
{
  if (*(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(this + 20);
  if (v2 != *(a2 + 20))
  {
    return 0;
  }

  v3 = v2 >> 3;
  if (v2 >= 8)
  {
    v4 = v2 >> 3;
    v5 = this;
    v6 = a2;
    do
    {
      v8 = *v5;
      v5 = (v5 + 1);
      v7 = v8;
      v9 = *v6;
      v6 = (v6 + 1);
      if (v7 != v9)
      {
        return 0;
      }
    }

    while (--v4);
  }

  v10 = v2 & 7;
  if (v10)
  {
    if (((*(a2 + v3) ^ *(this + v3)) & kMaskbit[v10]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t CSIPacketAddress::matchSubnet(CSIPacketAddress *this, const CSIPacketAddress *a2)
{
  if (*(this + 4) != *(a2 + 4))
  {
    return 0;
  }

  v2 = *(a2 + 20);
  if (*(this + 20) && *(this + 20) < v2)
  {
    return 0;
  }

  v4 = v2 >> 3;
  if (v2 >= 8)
  {
    v5 = v2 >> 3;
    v6 = this;
    v7 = a2;
    do
    {
      v9 = *v6;
      v6 = (v6 + 1);
      v8 = v9;
      v10 = *v7;
      v7 = (v7 + 1);
      if (v8 != v10)
      {
        return 0;
      }
    }

    while (--v5);
  }

  v11 = v2 & 7;
  if (v11)
  {
    if (((*(a2 + v4) ^ *(this + v4)) & kMaskbit[v11]) != 0)
    {
      return 0;
    }
  }

  return 1;
}

void AudioCodecInfo::AudioCodecInfo(AudioCodecInfo *this)
{
  *this = 0;
  *(this + 4) = -1;
  *(this + 2) = 0;
  *(this + 6) = -1;
  *(this + 2) = 0;
}

{
  *this = 0;
  *(this + 4) = -1;
  *(this + 2) = 0;
  *(this + 6) = -1;
  *(this + 2) = 0;
}

uint64_t AudioCodecInfo::AudioCodecInfo(uint64_t result, int a2, char a3, int a4, char a5, char a6, int a7, int a8)
{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 13) = a6;
  *(result + 16) = a7;
  *(result + 20) = a8;
  return result;
}

{
  *result = a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 12) = a5;
  *(result + 13) = a6;
  *(result + 16) = a7;
  *(result + 20) = a8;
  return result;
}

_BYTE *AudioCodecInfo::getEvsBitrate@<X0>(AudioCodecInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 13);
  if (v4 > 0xB)
  {
    v5 = "Unknown EVS bitrate";
  }

  else
  {
    v5 = off_278A2EB90[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

_BYTE *AudioCodecInfo::getEvsBandwidth@<X0>(AudioCodecInfo *this@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(this + 12);
  if (v4 > 3)
  {
    v5 = "Unknown EVS bandwidth";
  }

  else
  {
    v5 = off_278A2EBF0[v4];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v5);
}

void sub_23740EEAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void rest::write_rest_value(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v19 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "id";
  xpc::dict::object_proxy::operator=(&v15, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v13 = xpc_BOOL_create(*(a1 + 24));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "connected";
  xpc::dict::object_proxy::operator=(&v15, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_BOOL_create(*(a1 + 25));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "tinker";
  xpc::dict::object_proxy::operator=(&v15, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_BOOL_create(*(a1 + 26));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "green tea";
  xpc::dict::object_proxy::operator=(&v15, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v19;
  *a2 = v19;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

{
  v26 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v26 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v26 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v24 = xpc_string_create(v7);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "number";
  xpc::dict::object_proxy::operator=(&v22, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (*(a1 + 47) >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v20 = xpc_string_create(v8);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "qualified_number";
  xpc::dict::object_proxy::operator=(&v22, &v20, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v20);
  v20 = 0;
  v10 = *(a1 + 48);
  if ((v10 - 1) > 4)
  {
    v11 = "Unknown";
  }

  else
  {
    v11 = off_278A2ECA0[v10 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v18, v10, v11, v9);
  v22 = &v26;
  v23 = "qualified_src";
  xpc::dict::object_proxy::operator=(&v22, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  if (*(a1 + 79) >= 0)
  {
    v12 = (a1 + 56);
  }

  else
  {
    v12 = *(a1 + 56);
  }

  v16 = xpc_string_create(v12);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "trusted_number";
  xpc::dict::object_proxy::operator=(&v22, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v14 = xpc_BOOL_create(*(a1 + 80));
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v22 = &v26;
  v23 = "read_attempted";
  xpc::dict::object_proxy::operator=(&v22, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v26;
  *a2 = v26;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v26);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v24 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v24 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v24 = v6;
LABEL_9:
  xpc_release(v5);
  v22 = xpc_BOOL_create(*a1);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  value = &v24;
  v21 = "forAllSims";
  xpc::dict::object_proxy::operator=(&value, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v7) == MEMORY[0x277D86440])
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
  v10 = *(a1 + 8);
  v11 = (a1 + 16);
  if (v10 != v11)
  {
    do
    {
      v12 = *(v10 + 7);
      v13 = "kUnknown";
      if ((v12 - 1) <= 2)
      {
        v13 = off_278A2ED00[v12 - 1];
      }

      ctu::rest::detail::write_enum_string_value(&value, v12, v13, v9);
      xpc_array_append_value(v8, value);
      xpc_release(value);
      v14 = v10[1];
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
          v15 = v10[2];
          v16 = *v15 == v10;
          v10 = v15;
        }

        while (!v16);
      }

      v10 = v15;
    }

    while (v15 != v11);
  }

  v18 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v8);
  value = &v24;
  v21 = "turnedOffSlots";
  xpc::dict::object_proxy::operator=(&value, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  v17 = v24;
  *a2 = v24;
  if (v17)
  {
    xpc_retain(v17);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v24);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v12 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v12 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v10 = xpc_string_create(v7);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v9[0] = &v12;
  v9[1] = "iccid";
  xpc::dict::object_proxy::operator=(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = v12;
  *a2 = v12;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v12);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "mcc";
  xpc::dict::object_proxy::operator=(&v15, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v8 = v10;
  if (*(v9 + 23) >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v13 = xpc_string_create(v11);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "mnc";
  xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v19;
  *a2 = v19;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "mcc";
  xpc::dict::object_proxy::operator=(&v15, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v8 = v10;
  if (*(v9 + 23) >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v13 = xpc_string_create(v11);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "mnc";
  xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v19;
  *a2 = v19;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

{
  v22 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v22 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v22 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v22 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  object = xpc_string_create(v7);
  if (!object)
  {
    object = xpc_null_create();
  }

  v18 = &v22;
  v19 = "from";
  xpc::dict::object_proxy::operator=(&v18, &object, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(object);
  object = 0;
  if (*(a1 + 47) >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v16 = xpc_string_create(v8);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v18 = &v22;
  v19 = "to";
  xpc::dict::object_proxy::operator=(&v18, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v11 = *(a1 + 48);
  v10 = a1 + 48;
  v9 = v11;
  if (*(v10 + 23) >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v14 = xpc_string_create(v12);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v18 = &v22;
  v19 = "phoneNumber";
  xpc::dict::object_proxy::operator=(&v18, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v22;
  *a2 = v22;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v22);
}

{
  v16 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_BOOL_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v12 = &v16;
  v13 = "writable";
  xpc::dict::object_proxy::operator=(&v12, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v10 = xpc_int64_create(*(a1 + 2));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "total_records";
  xpc::dict::object_proxy::operator=(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 4));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "record_size";
  xpc::dict::object_proxy::operator=(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v16;
  *a2 = v16;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v16);
}

{
  v27 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v27 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v27 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v27 = v6;
LABEL_9:
  xpc_release(v5);
  v25 = xpc_int64_create(*a1);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v23 = &v27;
  v24 = "periods";
  xpc::dict::object_proxy::operator=(&v23, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v21 = xpc_int64_create(*(a1 + 8));
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v23 = &v27;
  v24 = "currentEffectiveSubtag";
  xpc::dict::object_proxy::operator=(&v23, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_int64_create(*(a1 + 12));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v23 = &v27;
  v24 = "currentSubtag";
  xpc::dict::object_proxy::operator=(&v23, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_BOOL_create(*(a1 + 16));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v23 = &v27;
  v24 = "isGreenTeaCapable";
  xpc::dict::object_proxy::operator=(&v23, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  ctu::cf_to_xpc(&v23, *(a1 + 24), v7);
  v8 = v23;
  v9 = MEMORY[0x277D86440];
  if (v23 && MEMORY[0x2383CC760](v23) == v9)
  {
    xpc_retain(v8);
  }

  else
  {
    v8 = xpc_null_create();
  }

  xpc_release(v23);
  v15 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v15 = xpc_null_create();
  }

  v23 = &v27;
  v24 = "preferredLanguages";
  xpc::dict::object_proxy::operator=(&v23, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  ctu::cf_to_xpc(&v23, *(a1 + 32), v10);
  v11 = v23;
  if (v23 && MEMORY[0x2383CC760](v23) == v9)
  {
    xpc_retain(v11);
  }

  else
  {
    v11 = xpc_null_create();
  }

  xpc_release(v23);
  v13 = v11;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    v13 = xpc_null_create();
  }

  v23 = &v27;
  v24 = "billingEndDates";
  xpc::dict::object_proxy::operator=(&v23, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v27;
  *a2 = v27;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v11);
  xpc_release(v8);
  xpc_release(v27);
}

{
  v18 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_int64_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v14 = &v18;
  v15 = "periods";
  xpc::dict::object_proxy::operator=(&v14, &object, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(object);
  object = 0;
  v12 = xpc_BOOL_create(*(a1 + 8));
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "isGreenTeaCapable";
  xpc::dict::object_proxy::operator=(&v14, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  ctu::cf_to_xpc(&v14, *(a1 + 16), v7);
  v8 = v14;
  if (v14 && MEMORY[0x2383CC760](v14) == MEMORY[0x277D86440])
  {
    xpc_retain(v8);
  }

  else
  {
    v8 = xpc_null_create();
  }

  xpc_release(v14);
  v10 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v10 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "preferredLanguages";
  xpc::dict::object_proxy::operator=(&v14, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v9 = v18;
  *a2 = v18;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v8);
  xpc_release(v18);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = 0;
  ctu::cf_to_xpc(&object, *a1, v7);
  v13 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v13 = xpc_null_create();
  }

  v11 = &v16;
  v12 = "deviceDataUsage";
  xpc::dict::object_proxy::operator=(&v11, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v9 = xpc_int64_create(*(a1 + 8));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v11 = &v16;
  v12 = "errCode";
  xpc::dict::object_proxy::operator=(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v16;
  *a2 = v16;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(object);
  xpc_release(v16);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x277D86468];
  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v26 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) != v6)
  {
    v7 = xpc_null_create();
LABEL_8:
    v26 = v7;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v8) == MEMORY[0x277D86440])
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
  v10 = *a1;
  if (*a1 != a1 + 8)
  {
    do
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      v12 = v11;
      if (v11)
      {
        v33 = v11;
      }

      else
      {
        v12 = xpc_null_create();
        v33 = v12;
        if (!v12)
        {
          v13 = xpc_null_create();
          v12 = 0;
          goto LABEL_23;
        }
      }

      if (MEMORY[0x2383CC760](v12) != v6)
      {
        v13 = xpc_null_create();
LABEL_23:
        v33 = v13;
        goto LABEL_24;
      }

      xpc_retain(v12);
LABEL_24:
      xpc_release(v12);
      v31 = xpc_int64_create(*(v10 + 8));
      if (!v31)
      {
        v31 = xpc_null_create();
      }

      v29 = &v33;
      v30 = "first";
      xpc::dict::object_proxy::operator=(&v29, &v31, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v31);
      v31 = 0;
      write_rest_value((v10 + 5), &v27);
      v29 = &v33;
      v30 = "second";
      xpc::dict::object_proxy::operator=(&v29, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      v14 = v33;
      if (v33)
      {
        xpc_retain(v33);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v33);
      xpc_array_append_value(v9, v14);
      xpc_release(v14);
      v15 = v10[1];
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
          v16 = v10[2];
          v17 = *v16 == v10;
          v10 = v16;
        }

        while (!v17);
      }

      v10 = v16;
    }

    while (v16 != (a1 + 8));
  }

  v24 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v24 = xpc_null_create();
  }

  xpc_release(v9);
  v29 = &v26;
  v30 = "updateInfo";
  xpc::dict::object_proxy::operator=(&v29, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  if (*(a1 + 47) >= 0)
  {
    v18 = (a1 + 24);
  }

  else
  {
    v18 = *(a1 + 24);
  }

  v22 = xpc_string_create(v18);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v29 = &v26;
  v30 = "baseDirPath";
  xpc::dict::object_proxy::operator=(&v29, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  ctu::rest::write_rest_value<LASDDatabaseType,std::string>(&v20, a1 + 48);
  v29 = &v26;
  v30 = "dbPathsDict";
  xpc::dict::object_proxy::operator=(&v29, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  v19 = v26;
  *a2 = v26;
  if (v19)
  {
    xpc_retain(v19);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v26);
}

{
  v25 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v25 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v25 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v25 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v23 = xpc_string_create(v7);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "countryCode";
  xpc::dict::object_proxy::operator=(&v21, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  if (*(a1 + 47) >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v19 = xpc_string_create(v8);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "state";
  xpc::dict::object_proxy::operator=(&v21, &v19, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v19);
  v19 = 0;
  if (*(a1 + 71) >= 0)
  {
    v9 = (a1 + 48);
  }

  else
  {
    v9 = *(a1 + 48);
  }

  v17 = xpc_string_create(v9);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "city";
  xpc::dict::object_proxy::operator=(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v12 = *(a1 + 72);
  v11 = a1 + 72;
  v10 = v12;
  if (*(v11 + 23) >= 0)
  {
    v13 = v11;
  }

  else
  {
    v13 = v10;
  }

  v15 = xpc_string_create(v13);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v21 = &v25;
  v22 = "postalCode";
  xpc::dict::object_proxy::operator=(&v21, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v14 = v25;
  *a2 = v25;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v25);
}

{
  v21 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v21 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v21 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v21 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v19 = xpc_string_create(v7);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "url";
  xpc::dict::object_proxy::operator=(&v17, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v15 = xpc_BOOL_create(*(a1 + 24));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "background";
  xpc::dict::object_proxy::operator=(&v17, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v13 = xpc_BOOL_create(*(a1 + 25));
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "use_pinning_policy";
  xpc::dict::object_proxy::operator=(&v17, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  ctu::cf_to_xpc(&v17, *(a1 + 32), v8);
  v9 = v17;
  if (v17 && MEMORY[0x2383CC760](v17) == MEMORY[0x277D86440])
  {
    xpc_retain(v9);
  }

  else
  {
    v9 = xpc_null_create();
  }

  xpc_release(v17);
  v11 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    v11 = xpc_null_create();
  }

  v17 = &v21;
  v18 = "keys_to_use";
  xpc::dict::object_proxy::operator=(&v17, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v21;
  *a2 = v21;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v9);
  xpc_release(v21);
}

{
  v17 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v17 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v17 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  object = xpc_string_create(v7);
  if (!object)
  {
    object = xpc_null_create();
  }

  v13 = &v17;
  v14 = "key";
  xpc::dict::object_proxy::operator=(&v13, &object, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(object);
  object = 0;
  v11 = xpc_data_create(*(a1 + 24), *(a1 + 32) - *(a1 + 24));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "value";
  xpc::dict::object_proxy::operator=(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_double_create(*(a1 + 48));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "modified_at";
  xpc::dict::object_proxy::operator=(&v13, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v17;
  *a2 = v17;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

{
  v16 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_BOOL_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v12 = &v16;
  v13 = "result";
  xpc::dict::object_proxy::operator=(&v12, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v10 = xpc_BOOL_create(*(a1 + 1));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "ck_modified";
  xpc::dict::object_proxy::operator=(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = xpc_int64_create(*(a1 + 4));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "error_code";
  xpc::dict::object_proxy::operator=(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v16;
  *a2 = v16;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v16);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v21 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v21 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v21 = v6;
LABEL_9:
  xpc_release(v5);
  v19 = xpc_BOOL_create(*a1);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  value = &v21;
  v18 = "result";
  xpc::dict::object_proxy::operator=(&value, &v19, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v19);
  v19 = 0;
  v15 = xpc_int64_create(*(a1 + 4));
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  value = &v21;
  v18 = "error_code";
  xpc::dict::object_proxy::operator=(&value, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v7) == MEMORY[0x277D86440])
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
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  while (v9 != v10)
  {
    rest::write_rest_value(v9, &value);
    v11 = value;
    xpc_array_append_value(v8, value);
    xpc_release(v11);
    v9 += 56;
  }

  v13 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v13 = xpc_null_create();
  }

  xpc_release(v8);
  value = &v21;
  v18 = "records";
  xpc::dict::object_proxy::operator=(&value, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v21;
  *a2 = v21;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v21);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v12 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v12 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v12 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v10 = xpc_string_create(v7);
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v9[0] = &v12;
  v9[1] = "zoneId";
  xpc::dict::object_proxy::operator=(v9, &v10, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = v12;
  *a2 = v12;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v12);
}

{
  v22 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v22 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v22 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v22 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  object = xpc_string_create(v7);
  if (!object)
  {
    object = xpc_null_create();
  }

  v18 = &v22;
  v19 = "IMEI";
  xpc::dict::object_proxy::operator=(&v18, &object, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(object);
  object = 0;
  if (*(a1 + 47) >= 0)
  {
    v8 = (a1 + 24);
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v16 = xpc_string_create(v8);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v18 = &v22;
  v19 = "EID";
  xpc::dict::object_proxy::operator=(&v18, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  v11 = *(a1 + 48);
  v10 = a1 + 48;
  v9 = v11;
  if (*(v10 + 23) >= 0)
  {
    v12 = v10;
  }

  else
  {
    v12 = v9;
  }

  v14 = xpc_string_create(v12);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v18 = &v22;
  v19 = "ICCID";
  xpc::dict::object_proxy::operator=(&v18, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v22;
  *a2 = v22;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v22);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v16 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v16 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  object = xpc_BOOL_create(*a1);
  if (!object)
  {
    object = xpc_null_create();
  }

  v12 = &v16;
  v13 = "result";
  xpc::dict::object_proxy::operator=(&v12, &object, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(object);
  object = 0;
  v10 = xpc_int64_create(*(a1 + 4));
  if (!v10)
  {
    v10 = xpc_null_create();
  }

  v12 = &v16;
  v13 = "error_code";
  xpc::dict::object_proxy::operator=(&v12, &v10, &v11);
  xpc_release(v11);
  v11 = 0;
  xpc_release(v10);
  v10 = 0;
  v8 = 0;
  ctu::rest::write_rest_value<rest::CellularPlanBlacklistParams>(&v8, (a1 + 8));
  v12 = &v16;
  v13 = "records";
  xpc::dict::object_proxy::operator=(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v16;
  *a2 = v16;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v16);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) != MEMORY[0x277D86468])
  {
    v6 = xpc_null_create();
LABEL_8:
    v19 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  v17 = 0;
  ctu::rest::write_rest_value<rest::CellularPlanBlacklistParams>(&v17, a1);
  value = &v19;
  v16 = "saveBlacklistPlans";
  xpc::dict::object_proxy::operator=(&value, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v13 = 0;
  v7 = xpc_array_create(0, 0);
  if (v7 || (v7 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v7) == MEMORY[0x277D86440])
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
  v9 = *(a1 + 24);
  v10 = *(a1 + 32);
  while (v9 != v10)
  {
    rest::write_rest_value(v9, &value);
    v11 = value;
    xpc_array_append_value(v8, value);
    xpc_release(v11);
    v9 += 72;
  }

  v13 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v13 = xpc_null_create();
  }

  xpc_release(v8);
  value = &v19;
  v16 = "deleteBlacklistPlans";
  xpc::dict::object_proxy::operator=(&value, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v19;
  *a2 = v19;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

{
  v51 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x277D86468];
  if (v4)
  {
    v51 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v51 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v51 = v7;
LABEL_9:
  xpc_release(v5);
  v49 = xpc_BOOL_create(*a1);
  if (!v49)
  {
    v49 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isESimModificationAllowed";
  xpc::dict::object_proxy::operator=(&v47, &v49, &v50);
  xpc_release(v50);
  v50 = 0;
  xpc_release(v49);
  v49 = 0;
  v45 = xpc_BOOL_create(*(a1 + 1));
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isESimOutgoingTransferAllowed";
  xpc::dict::object_proxy::operator=(&v47, &v45, &v46);
  xpc_release(v46);
  v46 = 0;
  xpc_release(v45);
  v45 = 0;
  v43 = xpc_BOOL_create(*(a1 + 2));
  if (!v43)
  {
    v43 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isSupervised";
  xpc::dict::object_proxy::operator=(&v47, &v43, &v44);
  xpc_release(v44);
  v44 = 0;
  xpc_release(v43);
  v43 = 0;
  object = xpc_BOOL_create(*(a1 + 3));
  if (!object)
  {
    object = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isRCSMessagingAllowedForDevice";
  xpc::dict::object_proxy::operator=(&v47, &object, &v42);
  xpc_release(v42);
  v42 = 0;
  xpc_release(object);
  object = 0;
  v39 = xpc_BOOL_create(*(a1 + 4));
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isIDSAllowedForDevice";
  xpc::dict::object_proxy::operator=(&v47, &v39, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(v39);
  v39 = 0;
  v37 = xpc_BOOL_create(*(a1 + 5));
  if (!v37)
  {
    v37 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isSatelliteConnectionAllowed";
  xpc::dict::object_proxy::operator=(&v47, &v37, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(v37);
  v37 = 0;
  ctu::rest::write_rest_value<std::string>((a1 + 8), &v35);
  v47 = &v51;
  v48 = "blockedBundleIds";
  xpc::dict::object_proxy::operator=(&v47, &v35, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(v35);
  v35 = 0;
  ctu::rest::write_rest_value<std::string>((a1 + 32), &v33);
  v47 = &v51;
  v48 = "managedBundleIds";
  xpc::dict::object_proxy::operator=(&v47, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v33);
  v33 = 0;
  ctu::rest::write_rest_value<std::string,std::string>((a1 + 56), &v31);
  v47 = &v51;
  v48 = "managedSliceBundleIds";
  xpc::dict::object_proxy::operator=(&v47, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v30 = 0;
  v31 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v30 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v30 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_28;
    }
  }

  if (MEMORY[0x2383CC760](v9) == v6)
  {
    xpc_retain(v9);
    goto LABEL_29;
  }

  v10 = xpc_null_create();
LABEL_28:
  v30 = v10;
LABEL_29:
  xpc_release(v9);
  v11 = *(a1 + 80);
  v12 = (a1 + 88);
  if (v11 != (a1 + 88))
  {
    do
    {
      v29 = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        v29 = v13;
      }

      else
      {
        v14 = xpc_null_create();
        v29 = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_37;
        }
      }

      if (MEMORY[0x2383CC760](v14) != v6)
      {
        v15 = xpc_null_create();
LABEL_37:
        v29 = v15;
        goto LABEL_38;
      }

      xpc_retain(v14);
LABEL_38:
      xpc_release(v14);
      v27 = xpc_BOOL_create(*(v11 + 56));
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      v47 = &v29;
      v48 = "isRCSMessagingAllowed";
      xpc::dict::object_proxy::operator=(&v47, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v27 = 0;
      v25 = xpc_BOOL_create(*(v11 + 57));
      if (!v25)
      {
        v25 = xpc_null_create();
      }

      v47 = &v29;
      v48 = "isIDSAllowed";
      xpc::dict::object_proxy::operator=(&v47, &v25, &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v25);
      v25 = 0;
      v23 = v29;
      if (v29)
      {
        xpc_retain(v29);
      }

      else
      {
        v23 = xpc_null_create();
      }

      v16 = (v11 + 4);
      if (*(v11 + 55) < 0)
      {
        v16 = *v16;
      }

      v47 = &v30;
      v48 = v16;
      xpc::dict::object_proxy::operator=(&v47, &v23, &v24);
      xpc_release(v24);
      v24 = 0;
      xpc_release(v23);
      v23 = 0;
      xpc_release(v29);
      v17 = v11[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v11[2];
          v19 = *v18 == v11;
          v11 = v18;
        }

        while (!v19);
      }

      v11 = v18;
    }

    while (v18 != v12);
  }

  v21 = v30;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v21 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "iccidPolicies";
  xpc::dict::object_proxy::operator=(&v47, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v20 = v51;
  *a2 = v51;
  if (v20)
  {
    xpc_retain(v20);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v30);
  xpc_release(v51);
}

{
  v19 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  v17 = xpc_data_create(*(a1 + 24), *(a1 + 32) - *(a1 + 24));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "autn";
  xpc::dict::object_proxy::operator=(&v15, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v13 = xpc_string_create(v7);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "iccid";
  xpc::dict::object_proxy::operator=(&v15, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_data_create(*(a1 + 72), *(a1 + 80) - *(a1 + 72));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "nonce";
  xpc::dict::object_proxy::operator=(&v15, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v9 = xpc_data_create(*(a1 + 48), *(a1 + 56) - *(a1 + 48));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "rand";
  xpc::dict::object_proxy::operator=(&v15, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v19;
  *a2 = v19;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  v6 = MEMORY[0x277D86468];
  if (v4)
  {
    v26 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v26 = v5;
    if (!v5)
    {
      v7 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == v6)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v26 = v7;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 24) == 1)
  {
    v8 = xpc_array_create(0, 0);
    if (v8 || (v8 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x2383CC760](v8) == MEMORY[0x277D86440])
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
    v10 = *a1;
    if (*a1 != a1 + 8)
    {
      do
      {
        v11 = xpc_dictionary_create(0, 0, 0);
        v12 = v11;
        if (v11)
        {
          v33 = v11;
        }

        else
        {
          v12 = xpc_null_create();
          v33 = v12;
          if (!v12)
          {
            v13 = xpc_null_create();
            v12 = 0;
            goto LABEL_25;
          }
        }

        if (MEMORY[0x2383CC760](v12) != v6)
        {
          v13 = xpc_null_create();
LABEL_25:
          v33 = v13;
          goto LABEL_26;
        }

        xpc_retain(v12);
LABEL_26:
        xpc_release(v12);
        v14 = *(v10 + 8);
        v15 = subscriber::asString(v14);
        ctu::rest::detail::write_enum_string_value(&v31, v14, v15, v16);
        v29 = &v33;
        v30 = "first";
        xpc::dict::object_proxy::operator=(&v29, &v31, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v31);
        v31 = 0;
        v27 = xpc_data_create(v10[5], v10[6] - v10[5]);
        if (!v27)
        {
          v27 = xpc_null_create();
        }

        v29 = &v33;
        v30 = "second";
        xpc::dict::object_proxy::operator=(&v29, &v27, &v28);
        xpc_release(v28);
        v28 = 0;
        xpc_release(v27);
        v27 = 0;
        v17 = v33;
        if (v33)
        {
          xpc_retain(v33);
        }

        else
        {
          v17 = xpc_null_create();
        }

        xpc_release(v33);
        xpc_array_append_value(v9, v17);
        xpc_release(v17);
        v18 = v10[1];
        if (v18)
        {
          do
          {
            v19 = v18;
            v18 = *v18;
          }

          while (v18);
        }

        else
        {
          do
          {
            v19 = v10[2];
            v20 = *v19 == v10;
            v10 = v19;
          }

          while (!v20);
        }

        v10 = v19;
      }

      while (v19 != (a1 + 8));
    }

    v24 = v9;
    if (v9)
    {
      xpc_retain(v9);
    }

    else
    {
      v24 = xpc_null_create();
    }

    xpc_release(v9);
  }

  else
  {
    v24 = xpc_null_create();
  }

  v29 = &v26;
  v30 = "auth-result";
  xpc::dict::object_proxy::operator=(&v29, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  v22 = xpc_data_create(*(a1 + 32), *(a1 + 40) - *(a1 + 32));
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v29 = &v26;
  v30 = "secure-intent-rsp";
  xpc::dict::object_proxy::operator=(&v29, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v21 = v26;
  *a2 = v26;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v26);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v15 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v13 = xpc_string_create(v7);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "device_id";
  xpc::dict::object_proxy::operator=(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v9 = xpc_BOOL_create(*(a1 + 24));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "active";
  xpc::dict::object_proxy::operator=(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v15;
  *a2 = v15;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v15);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v15 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v13 = xpc_string_create(v7);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "reason";
  xpc::dict::object_proxy::operator=(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v9 = xpc_BOOL_create(*(a1 + 24));
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "wantLogs";
  xpc::dict::object_proxy::operator=(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v15;
  *a2 = v15;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v15);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v15 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v15 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86468])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v15 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v13 = xpc_string_create(v7);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v11 = &v15;
  v12 = "cmd";
  xpc::dict::object_proxy::operator=(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  ctu::rest::write_rest_value<std::string,std::string>((a1 + 24), &v9);
  v11 = &v15;
  v12 = "options";
  xpc::dict::object_proxy::operator=(&v11, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  v8 = v15;
  *a2 = v15;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v15);
}