void sub_2371DC118(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, uint64_t a16, uint64_t a17, void *__p, xpc_object_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void sub_2371DC214(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x2371DC220);
  }

  JUMPOUT(0x2371DC204);
}

void swix::connection::description(swix::connection *this, uint64_t a2)
{
  swix::connection::state::xpc_connection(&v7, a2);
  v3 = v7;
  v4 = MEMORY[0x2383C9190](v7);
  v5 = MEMORY[0x277D86450];
  if (v4 == MEMORY[0x277D86450])
  {
    v6 = MEMORY[0x2383C9080](v3);
    std::string::basic_string[abi:ne200100]<0>(this, v6);
    free(v6);
  }

  xpc_release(v3);
  if (v4 != v5)
  {

    std::string::basic_string[abi:ne200100]<0>(this, "(destroyed connection)");
  }
}

void swix::connection::state::cancel_connection(uint64_t a1, int a2)
{
  v25 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1 + 152));
  v4 = *(a1 + 160);
  *(a1 + 160) = 0;
  os_unfair_lock_unlock((a1 + 152));
  if (v4)
  {
    swix::detail::connection_impl::get(&v20, *(v4 + 16));
    v5 = v20;
    if (MEMORY[0x2383C9190](v20) == MEMORY[0x277D86450])
    {
      v6 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        applesauce::xpc::connection::to_debug_string(block, *(v4 + 16));
        v13 = SHIBYTE(v16) >= 0 ? block : block[0];
        *buf = 136315138;
        *&buf[4] = v13;
        _os_log_debug_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "canceling connection %s", buf, 0xCu);
        if (SHIBYTE(v16) < 0)
        {
          operator delete(block[0]);
        }
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 1174405120;
      v16 = ___ZN4swix6detail15connection_impl6cancelENS_19CancellationContextE_block_invoke;
      v17 = &__block_descriptor_tmp_18;
      v18 = v4;
      object = v5;
      if (v5)
      {
        xpc_retain(v5);
      }

      else
      {
        object = xpc_null_create();
      }

      v7 = *(v4 + 8);
      if (a2)
      {
        if (v7)
        {
          dispatch_retain(*(v4 + 8));
        }

        dispatch_assert_queue_not_V2(v7);
        if (v7)
        {
          dispatch_release(v7);
        }

        v8 = *(v4 + 8);
        if (v8)
        {
          dispatch_retain(*(v4 + 8));
          dispatch_barrier_async_and_wait(v8, block);
          dispatch_release(v8);
        }

        else
        {
          dispatch_barrier_async_and_wait(0, block);
        }
      }

      else
      {
        if (v7)
        {
          dispatch_retain(*(v4 + 8));
        }

        dispatch_assert_queue_V2(v7);
        if (v7)
        {
          dispatch_release(v7);
        }

        v16(block);
      }

      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEBUG))
      {
        applesauce::xpc::connection::to_debug_string(buf, *(v4 + 16));
        if (v22 >= 0)
        {
          v14 = buf;
        }

        else
        {
          v14 = *buf;
        }

        *v23 = 136315138;
        v24 = v14;
        _os_log_debug_impl(&dword_2371C2000, v9, OS_LOG_TYPE_DEBUG, "proceeding after canceling %s", v23, 0xCu);
        if (v22 < 0)
        {
          operator delete(*buf);
        }
      }

      v10 = xpc_null_create();
      v11 = xpc_null_create();
      v12 = *(v4 + 16);
      *(v4 + 16) = v10;
      xpc_release(v12);
      xpc_release(v11);
      xpc_release(object);
      object = 0;
    }

    xpc_release(v5);
  }
}

void sub_2371DC6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

xpc_object_t swix::detail::connection_impl::get(swix::detail::connection_impl *this, void *a2)
{
  *this = a2;
  if (a2)
  {
    return xpc_retain(a2);
  }

  result = xpc_null_create();
  *this = result;
  return result;
}

void applesauce::xpc::connection::to_debug_string(applesauce::xpc::connection *this, uint64_t a2)
{
  v3 = MEMORY[0x2383C9080](a2);
  std::string::basic_string[abi:ne200100]<0>(this, v3);

  free(v3);
}

void ___ZN4swix6detail15connection_impl6cancelENS_19CancellationContextE_block_invoke(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  xpc_connection_set_event_handler(*(a1 + 40), &__block_literal_global_17);
  xpc_connection_cancel(*(a1 + 40));
  v3 = *v2;
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_DEBUG))
  {
    applesauce::xpc::connection::to_debug_string(__p, *(v2 + 16));
    if (v6 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v8 = v4;
    _os_log_debug_impl(&dword_2371C2000, v3, OS_LOG_TYPE_DEBUG, "canceled connection %s", buf, 0xCu);
    if (v6 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

xpc_object_t __copy_helper_block_e8_40c35_ZTSKN10applesauce3xpc10connectionE(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

uint64_t std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](uint64_t a1)
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

void swix::connection::state::xpc_connection(swix::connection::state *this, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 152));
  v4 = *(a2 + 160);
  if (v4)
  {
    swix::detail::connection_impl::get(this, *(v4 + 16));
  }

  else
  {
    *this = xpc_null_create();
  }

  os_unfair_lock_unlock((a2 + 152));
}

void swix::connection::xpc_connection(swix::connection *this, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  swix::connection::state::xpc_connection(&v14, *(a2 + 8));
  v4 = v14;
  if (MEMORY[0x2383C9190](v14) == MEMORY[0x277D86450])
  {
    *this = v4;
    v11 = xpc_null_create();
    v14 = v11;
  }

  else
  {
    v5 = *(a2 + 8);
    v6 = *(v5 + 89);
    v7 = *(v5 + 80);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6 != 1)
    {
      if (v8)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&dword_2371C2000, v7, OS_LOG_TYPE_ERROR, "null connection", &buf, 2u);
      }

      exception = __cxa_allocate_exception(0x18uLL);
      std::string::basic_string[abi:ne200100]<0>(&buf, "null connection");
      std::runtime_error::runtime_error(exception, &buf);
      exception->__vftable = &unk_284A45958;
      LODWORD(exception[1].__vftable) = -2;
    }

    if (v8)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_2371C2000, v7, OS_LOG_TYPE_ERROR, "rebuilding null connection", &buf, 2u);
      v5 = *(a2 + 8);
    }

    v13[0] = a2;
    v13[1] = caulk::function_ref<void ()(applesauce::xpc::connection const&)>::functor_invoker<swix::connection::xpc_connection(void)::$_0>;
    v13[2] = v13;
    os_unfair_lock_lock((v5 + 152));
    v9 = *(v5 + 160);
    if (!v9)
    {
      swix::connection_config::connection_config(&buf, (v5 + 16));
      swix::make_connection(this, &buf);
      swix::detail::connection_impl::create(&buf, this, v10);
    }

    swix::detail::connection_impl::get(this, *(v9 + 16));
    os_unfair_lock_unlock((v5 + 152));
    v11 = v14;
  }

  xpc_release(v11);
}

void sub_2371DCCFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void swix::connection::send(swix::connection *this, const swix::encode_message *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  swix::connection::xpc_connection(&connection, this);
  swix::encode_message::xpc_message(&message, a2);
  v4 = *(this + 1);
  if (*(v4 + 88))
  {
    v5 = *(v4 + 80);
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    v7 = message;
    if (v6)
    {
      v8 = connection;
      v9 = MEMORY[0x2383C9080](message);
      std::string::basic_string[abi:ne200100]<0>(__p, v9);
      free(v9);
      if (v12 >= 0)
      {
        v10 = __p;
      }

      else
      {
        v10 = __p[0];
      }

      *buf = 134218242;
      v16 = v8;
      v17 = 2080;
      v18 = v10;
      _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEFAULT, "%p send msg %s", buf, 0x16u);
      if (v12 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    v7 = message;
  }

  xpc_connection_send_message(connection, v7);
  xpc_release(v7);
  xpc_release(connection);
}

void sub_2371DCEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(v14);
  xpc_release(object);
  _Unwind_Resume(a1);
}

void swix::exception::~exception(std::runtime_error *this)
{
  std::runtime_error::~runtime_error(this);

  JUMPOUT(0x2383C8250);
}

std::string *swix::connection_config::connection_config(std::string *this, const swix::connection_config *a2)
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

  if (*(a2 + 47) < 0)
  {
    std::string::__init_copy_ctor_external(this + 1, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    this[1].__r_.__value_.__r.__words[2] = *(a2 + 5);
    *&this[1].__r_.__value_.__l.__data_ = v5;
  }

  v6 = *(a2 + 6);
  this[2].__r_.__value_.__r.__words[0] = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    this[2].__r_.__value_.__r.__words[0] = xpc_null_create();
  }

  v7 = *(a2 + 7);
  this[2].__r_.__value_.__l.__size_ = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *(a2 + 8);
  LOWORD(this[3].__r_.__value_.__l.__data_) = *(a2 + 36);
  this[2].__r_.__value_.__r.__words[2] = v8;
  std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](&this[3].__r_.__value_.__s.__data_[8], a2 + 80);
  return this;
}

void sub_2371DD03C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void swix::make_connection(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x2383C9190](*(a2 + 48));
  v5 = MEMORY[0x277D86450];
  v6 = v4 == MEMORY[0x277D86450];
  v7 = *(a2 + 23);
  v8 = *(a2 + 8);
  if (v7 >= 0)
  {
    v8 = *(a2 + 23);
  }

  v9 = *(a2 + 47);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = *(a2 + 32);
  }

  if (v8)
  {
    ++v6;
  }

  if (v9)
  {
    ++v6;
  }

  if (v6 != 1)
  {
    std::terminate();
  }

  if (v8)
  {
    if (v7 >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    mach_service = xpc_connection_create_mach_service(v11, 0, 0);
    if (mach_service)
    {
      v13 = mach_service;
      *a1 = mach_service;
      goto LABEL_23;
    }

    v13 = xpc_null_create();
    *a1 = v13;
    if (v13)
    {
LABEL_23:
      if (MEMORY[0x2383C9190](v13) != v5)
      {
        goto LABEL_29;
      }

LABEL_30:
      xpc_retain(v13);
      goto LABEL_31;
    }
  }

  else
  {
    if (!v9)
    {
      v16 = xpc_null_create();
      *a1 = *(a2 + 48);
      *(a2 + 48) = xpc_null_create();
      v17 = xpc_null_create();
      v18 = *(a2 + 48);
      *(a2 + 48) = v16;
      xpc_release(v18);
      xpc_release(v17);
      return;
    }

    if (v10 >= 0)
    {
      v14 = (a2 + 24);
    }

    else
    {
      v14 = *(a2 + 24);
    }

    v15 = xpc_connection_create(v14, 0);
    v13 = v15;
    if (v15)
    {
      *a1 = v15;
    }

    else
    {
      v13 = xpc_null_create();
      *a1 = v13;
      if (!v13)
      {
        goto LABEL_29;
      }
    }

    if (MEMORY[0x2383C9190](v13) == v5)
    {
      goto LABEL_30;
    }
  }

LABEL_29:
  *a1 = xpc_null_create();
LABEL_31:
  xpc_release(v13);
}

void sub_2371DD3F4(_Unwind_Exception *a1)
{
  applesauce::xpc::connection::~connection(v3);
  v5 = *(v2 + 8);
  if (v5)
  {
    dispatch_release(v5);
  }

  MEMORY[0x2383C8250](v2, v1);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

void swix::connection_config::~connection_config(swix::connection_config *this)
{
  if (*(this + 120) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  }

  v2 = *(this + 7);
  if (v2)
  {
    dispatch_release(v2);
  }

  xpc_release(*(this + 6));
  *(this + 6) = 0;
  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

{
  if (*(this + 120) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](this + 88);
  }

  v2 = *(this + 7);
  *(this + 7) = 0;

  v3 = *(this + 6);
  *(this + 6) = 0;

  if (*(this + 47) < 0)
  {
    operator delete(*(this + 3));
  }

  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

os_log_t *swix::detail::connection_impl::connection_impl(swix::connection_config const&,applesauce::xpc::connection const&)::{lambda(void *)#1}::__invoke(os_log_t *result)
{
  v6 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (os_log_type_enabled(*result, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = v1;
      _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEFAULT, "destructor connimpl %p", &v4, 0xCu);
    }

    xpc_release(v1[2]);
    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      dispatch_release(v3);
    }

    JUMPOUT(0x2383C8250);
  }

  return result;
}

void sub_2371DD680(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

_BYTE *std::__optional_copy_base<swix::timeout_config,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    *a1 = *a2;
    std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100]((a1 + 8), a2 + 8);
    a1[40] = 1;
  }

  return a1;
}

void sub_2371DD6E8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void swix::ipc_endpoint::~ipc_endpoint(swix::ipc_endpoint *this)
{
  *this = &unk_284A459D8;
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](this + 24);
  *this = &unk_284A45A00;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A459D8;
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](this + 24);
  *this = &unk_284A45A00;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

{
  *this = &unk_284A459D8;
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100](this + 24);
  *this = &unk_284A45A00;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

uint64_t ___ZN4swix6detail14watchdog_timerC2ENS_14timeout_configE_block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 48);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void std::__shared_ptr_emplace<swix::detail::watchdog_timer>::__on_zero_shared(uint64_t a1)
{
  dispatch_source_cancel(*(a1 + 88));
  dispatch_sync(*(a1 + 80), &__block_literal_global_274);
  v2 = *(a1 + 88);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    dispatch_release(v3);
  }

  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 48);
  v4 = *(a1 + 32);
  if (v4)
  {

    std::__shared_weak_count::__release_weak(v4);
  }
}

void std::__shared_ptr_emplace<swix::detail::watchdog_timer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A45710;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383C8250);
}

void swix::connection::connection(swix::connection *this, const swix::connection_config *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_284A45A00;
  swix::connection_config::connection_config(&v5, a2);
  if (!object)
  {
    v2 = dispatch_queue_create("", 0);
    v3 = object;
    object = v2;
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  swix::make_connection(&v4, &v5);
  operator new();
}

void sub_2371DDE64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  std::__shared_weak_count::~__shared_weak_count(v19);
  operator delete(v21);
  v22 = v18[7].__vftable;
  if (v22)
  {
    _Block_release(v22);
  }

  swix::connection_config::~connection_config(&v18[1].__shared_weak_owners_);
  shared_owners = v18[1].__shared_owners_;
  if (shared_owners)
  {
    std::__shared_weak_count::__release_weak(shared_owners);
  }

  std::__shared_weak_count::~__shared_weak_count(v18);
  operator delete(v24);
  xpc_release(object);
  swix::connection_config::~connection_config(&a17);
  v25 = *(v17 + 16);
  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v25);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<swix::connection::state>::__on_zero_shared(uint64_t a1)
{
  swix::connection::state::cancel_connection(a1 + 24, 1);
  v2 = *(a1 + 200);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 168);
  if (v3)
  {
    _Block_release(v3);
  }

  if (*(a1 + 160) == 1)
  {
    std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](a1 + 128);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    dispatch_release(v4);
  }

  xpc_release(*(a1 + 88));
  *(a1 + 88) = 0;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v5 = *(a1 + 32);
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void std::__shared_ptr_emplace<swix::connection::state>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A45748;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383C8250);
}

void swix::connection::send_and_await_reply(swix::connection *this, const swix::encode_message *a2, int *a3)
{
  v43 = *MEMORY[0x277D85DE8];
  swix::connection::xpc_connection(&connection, a2);
  swix::encode_message::xpc_message(&message, a3);
  v6 = *(a2 + 1);
  if (*(v6 + 88))
  {
    v7 = *(v6 + 80);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    v9 = message;
    if (v8)
    {
      v10 = connection;
      v11 = MEMORY[0x2383C9080](message);
      std::string::basic_string[abi:ne200100]<0>(&v41, v11);
      free(v11);
      v12 = (v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v41 : v41.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
      *(buf.__r_.__value_.__r.__words + 4) = v10;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v12;
      _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEFAULT, "%p send msg %s", &buf, 0x16u);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }
  }

  else
  {
    v9 = message;
  }

  v13 = xpc_connection_send_message_with_reply_sync(connection, v9);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v14 = *(a2 + 1);
  if (*(v14 + 88) == 1)
  {
    v15 = *(v14 + 80);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = connection;
      v17 = MEMORY[0x2383C9080](v13);
      std::string::basic_string[abi:ne200100]<0>(&v41, v17);
      free(v17);
      v18 = (v41.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v41 : v41.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 134218242;
      *(buf.__r_.__value_.__r.__words + 4) = v16;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v18;
      _os_log_impl(&dword_2371C2000, v15, OS_LOG_TYPE_DEFAULT, "%p msg reply %s", &buf, 0x16u);
      if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v41.__r_.__value_.__l.__data_);
      }
    }
  }

  swix::connection::check_valid_reply(a2, v13);
  if (v13 && MEMORY[0x2383C9190](v13) == MEMORY[0x277D86468])
  {
    xpc_retain(v13);
    v19 = v13;
  }

  else
  {
    v19 = xpc_null_create();
  }

  swix::decode_message::decode_message(this, v19, *(*(a2 + 1) + 80));
  xpc_release(v19);
  v20 = *a3;
  if (*this + *a3)
  {
    v21 = *(this + 3);
    std::string::basic_string[abi:ne200100]<0>(&v38, "unexpected message ID (");
    std::to_string(&v37, -v20);
    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v22 = &v37;
    }

    else
    {
      v22 = v37.__r_.__value_.__r.__words[0];
    }

    if ((v37.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v37.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v37.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&v38, v22, size);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v39.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
    *&v39.__r_.__value_.__l.__data_ = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    v26 = std::string::append(&v39, "/", 1uLL);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v40.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v40.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    std::to_string(&v36, *this);
    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v28 = &v36;
    }

    else
    {
      v28 = v36.__r_.__value_.__r.__words[0];
    }

    if ((v36.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v29 = HIBYTE(v36.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v29 = v36.__r_.__value_.__l.__size_;
    }

    v30 = std::string::append(&v40, v28, v29);
    v31 = *&v30->__r_.__value_.__l.__data_;
    buf.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
    *&buf.__r_.__value_.__l.__data_ = v31;
    v30->__r_.__value_.__l.__size_ = 0;
    v30->__r_.__value_.__r.__words[2] = 0;
    v30->__r_.__value_.__r.__words[0] = 0;
    v32 = std::string::append(&buf, ")", 1uLL);
    v33 = *&v32->__r_.__value_.__l.__data_;
    v41.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
    *&v41.__r_.__value_.__l.__data_ = v33;
    v32->__r_.__value_.__l.__size_ = 0;
    v32->__r_.__value_.__r.__words[2] = 0;
    v32->__r_.__value_.__r.__words[0] = 0;
    swix::decode_message::throw_error(v21, -301, &v41);
  }

  xpc_release(v13);
  xpc_release(message);
  xpc_release(connection);
}

void sub_2371DE3EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  if (*(v44 - 121) < 0)
  {
    operator delete(*(v44 - 144));
  }

  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  swix::decode_message::~decode_message(v42);
  xpc_release(v43);
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void swix::connection::check_valid_reply(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a2 == MEMORY[0x277D863F0])
  {
    v3 = *(*(a1 + 8) + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = a1;
      v4 = "%p reply: XPC_ERROR_CONNECTION_INTERRUPTED";
      goto LABEL_8;
    }
  }

  else if (a2 == MEMORY[0x277D863F8])
  {
    v3 = *(*(a1 + 8) + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = 134217984;
      v6 = a1;
      v4 = "%p reply: XPC_ERROR_CONNECTION_INVALID";
LABEL_8:
      _os_log_error_impl(&dword_2371C2000, v3, OS_LOG_TYPE_ERROR, v4, &v5, 0xCu);
    }
  }
}

void swix::decode_message::throw_error(NSObject *a1, int a2, std::string *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    if ((a3->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v6 = a3;
    }

    else
    {
      v6 = a3->__r_.__value_.__r.__words[0];
    }

    v8 = 136315138;
    v9 = v6;
    _os_log_error_impl(&dword_2371C2000, a1, OS_LOG_TYPE_ERROR, "throwing swix::exception: %s", &v8, 0xCu);
  }

  exception = __cxa_allocate_exception(0x18uLL);
  swix::exception::exception(exception, a2, a3);
}

std::runtime_error *swix::exception::exception(std::runtime_error *a1, int a2, std::string *a3)
{
  result = std::runtime_error::runtime_error(a1, a3);
  result->__vftable = &unk_284A45958;
  LODWORD(result[1].__vftable) = a2;
  return result;
}

uint64_t ___ZN4swix10connection21send_with_async_replyERKNS_14encode_messageEU13block_pointerFvPvE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v4 = *(a1 + 40);
  if (object)
  {
    xpc_retain(object);
    v5 = object;
  }

  else
  {
    v5 = xpc_null_create();
  }

  swix::connection::check_valid_reply(v4, v5);
  xpc_release(v5);
  v6 = *(*(a1 + 32) + 16);

  return v6();
}

void ___ZN4swix8listenerC2ERKNS_17connection_configE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v2 = object;
  v19 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  if (object)
  {
    xpc_retain(object);
    v4 = v2;
  }

  else
  {
    v4 = xpc_null_create();
  }

  v5 = *(v3[1] + 80);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    swix::connection::xpc_connection(&objecta, v3);
    v6 = objecta;
    v7 = MEMORY[0x2383C9080](v4);
    std::string::basic_string[abi:ne200100]<0>(__p, v7);
    free(v7);
    if (v13 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 134218242;
    v16 = v6;
    v17 = 2080;
    v18 = v8;
    _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEFAULT, "%p connection event %s", buf, 0x16u);
    if (v13 < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(objecta);
  }

  v9 = MEMORY[0x277D86450];
  if (v2)
  {
    xpc_retain(v2);
    __p[0] = v2;
  }

  else
  {
    v2 = xpc_null_create();
    __p[0] = v2;
    if (!v2)
    {
LABEL_15:
      __p[0] = xpc_null_create();
      goto LABEL_17;
    }
  }

  if (MEMORY[0x2383C9190](v2) != v9)
  {
    goto LABEL_15;
  }

  xpc_retain(v2);
LABEL_17:
  xpc_release(v2);
  if (MEMORY[0x2383C9190](__p[0]) == v9)
  {
    if ((*(*v3 + 24))(v3, __p))
    {
      xpc_connection_activate(__p[0]);
    }

    else
    {
      v11 = *(v3[1] + 80);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2371C2000, v11, OS_LOG_TYPE_ERROR, "rejecting connection", buf, 2u);
      }

      xpc_connection_cancel(__p[0]);
    }
  }

  else
  {
    v10 = *(v3[1] + 80);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2371C2000, v10, OS_LOG_TYPE_ERROR, "object not a connection?", buf, 2u);
    }
  }

  xpc_release(__p[0]);
  xpc_release(v4);
}

void sub_2371DEB3C(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

void ___ZN4swix12ipc_endpointC2ERKNS_17connection_configERNS_13ipc_interfaceE_block_invoke(uint64_t a1, xpc_object_t object)
{
  v2 = *(a1 + 32);
  objecta = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    objecta = xpc_null_create();
  }

  swix::ipc_endpoint::handle_event_or_error(v2, &objecta);
  xpc_release(objecta);
}

void *swix::ipc_interface::ipc_interface(void *result, uint64_t a2)
{
  *result = &unk_284A459B0;
  result[1] = 0;
  if (*(a2 + 128) == 1)
  {
    operator new();
  }

  return result;
}

void sub_2371DED00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t object)
{
  xpc_release(object);
  std::__function::__value_func<void ()(swix::ipc_endpoint &,applesauce::xpc::object const&)>::~__value_func[abi:ne200100]((v15 + 3));
  *v15 = &unk_284A45A00;
  v17 = v15[2];
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v17);
  }

  MEMORY[0x2383C8250](v15, 0x10A1C404C29359ELL);
  v18 = *(v14 + 8);
  *(v14 + 8) = 0;
  if (v18)
  {
    (*(*v18 + 8))(v18);
  }

  _Unwind_Resume(a1);
}

void AsyncMessenger::addCallback(uint64_t a1, char a2, uint64_t a3)
{
  v13[3] = *MEMORY[0x277D85DE8];
  std::mutex::lock((a1 + 24));
  v6 = *(a3 + 24);
  if (!v6)
  {
    goto LABEL_4;
  }

  if (v6 != a3)
  {
    v6 = (*(*v6 + 16))(v6);
LABEL_4:
    v12 = v6;
    goto LABEL_6;
  }

  v12 = v11;
  (*(*v6 + 24))(v6, v11);
LABEL_6:
  v7 = a1 + 32 * (a2 & 1);
  v8 = v7 + 176;
  if ((v7 + 176) != v11)
  {
    v9 = v12;
    v10 = *(v7 + 200);
    if (v12 == v11)
    {
      if (v10 == v8)
      {
        (*(*v12 + 24))();
        (*(*v12 + 32))(v12);
        v12 = 0;
        (*(**(v8 + 24) + 24))(*(v8 + 24), v11);
        (*(**(v8 + 24) + 32))(*(v8 + 24));
        *(v8 + 24) = 0;
        v12 = v11;
        (*(v13[0] + 24))(v13, v8);
        (*(v13[0] + 32))(v13);
      }

      else
      {
        (*(*v12 + 24))();
        (*(*v12 + 32))(v12);
        v12 = *(v8 + 24);
      }

      *(v8 + 24) = v8;
    }

    else if (v10 == v8)
    {
      (*(*v10 + 24))(*(v8 + 24), v11);
      (*(**(v8 + 24) + 32))(*(v8 + 24));
      *(v8 + 24) = v12;
      v12 = v11;
    }

    else
    {
      v12 = *(v8 + 24);
      *(v8 + 24) = v9;
    }
  }

  std::__function::__value_func<void ()(unsigned int,MIDIEventList const*)>::~__value_func[abi:ne200100](v11);

  std::mutex::unlock((a1 + 24));
}

void sub_2371DF0BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__value_func<void ()(unsigned int,MIDIEventList const*)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t std::__function::__value_func<UMPStream::EndpointPair const* ()(unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__value_func<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x277D85DE8];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
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

  return result;
}

void sub_2371DF438(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t std::__function::__value_func<UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::~__value_func[abi:ne200100](uint64_t a1)
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

void std::vector<std::unique_ptr<UMPStream::EndpointPair>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 152);
    std::vector<std::unique_ptr<UMPStream::FunctionBlock>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(v2 + 143) < 0)
    {
      operator delete(*(v2 + 120));
    }

    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    *v2 = &unk_284A46EC0;
    XCFObject<__CFDictionary const*>::~XCFObject(v2 + 24);
    BaseOpaqueObject::~BaseOpaqueObject(v2);

    JUMPOUT(0x2383C8250);
  }

  return result;
}

void std::vector<std::unique_ptr<UMPStream::FunctionBlock>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = std::unique_ptr<UMPStream::FunctionBlock>::~unique_ptr[abi:ne200100](v4 - 1);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::unique_ptr<UMPStream::FunctionBlock>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(v2 + 95) < 0)
    {
      operator delete(*(v2 + 72));
    }

    *v2 = &unk_284A46EC0;
    XCFObject<__CFDictionary const*>::~XCFObject(v2 + 24);
    BaseOpaqueObject::~BaseOpaqueObject(v2);
    MEMORY[0x2383C8250]();
  }

  return a1;
}

uint64_t std::__function::__func<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_3,std::allocator<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_3>,UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(uint64_t a1, int *a2, int *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  std::mutex::lock((v7 + 32));
  Pair = UMPCIManager<UMPStream::EndpointPair>::getPair(v7, v4, v5);
  if (!Pair)
  {
    goto LABEL_8;
  }

  v9 = *(Pair + 152);
  v10 = *(Pair + 160);
  if (v9 != v10)
  {
    while (*(*v9 + 104) != v6)
    {
      if (++v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  if (v9 == v10)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    v11 = *v9;
  }

  std::mutex::unlock((v7 + 32));
  return v11;
}

uint64_t UMPCIManager<UMPStream::EndpointPair>::getPair(uint64_t a1, int a2, int a3)
{
  if (!(a3 | a2))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    while (1)
    {
      v5 = *v3;
      if (!a3 && *(v5 + 100) == a2)
      {
        break;
      }

      if (!a2 && *(v5 + 104) == a3 || *(v5 + 100) == a2 && *(v5 + 104) == a3)
      {
        break;
      }

      if (++v3 == v4)
      {
        return 0;
      }
    }
  }

  if (v3 == v4)
  {
    return 0;
  }

  else
  {
    return *v3;
  }
}

uint64_t std::__function::__func<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_3,std::allocator<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_3>,UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47D98;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_2,std::allocator<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_2>,UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::operator()(uint64_t a1, int *a2, int *a3, unsigned __int8 *a4)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *a4;
  v7 = *(a1 + 8);
  std::mutex::lock((v7 + 32));
  Pair = UMPCIManager<UMPStream::EndpointPair>::getPair(v7, v4, v5);
  if (!Pair)
  {
    goto LABEL_8;
  }

  v9 = *(Pair + 152);
  v10 = *(Pair + 160);
  if (v9 != v10)
  {
    while (*(*v9 + 96) != v6)
    {
      if (++v9 == v10)
      {
        goto LABEL_8;
      }
    }
  }

  if (v9 == v10)
  {
LABEL_8:
    v11 = 0;
  }

  else
  {
    v11 = *v9;
  }

  std::mutex::unlock((v7 + 32));
  return v11;
}

uint64_t std::__function::__func<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_2,std::allocator<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_2>,UMPStream::FunctionBlock const* ()(unsigned int,unsigned int,unsigned char)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47D50;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_1,std::allocator<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_1>,UMPStream::EndpointPair const* ()(unsigned int,unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47D08;
  a2[1] = v2;
  return result;
}

void std::__function::__func<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_0,std::allocator<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_0>,void ()(unsigned int,MIDIEventList const*)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3)
{
  v74 = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8);
  std::mutex::lock((v5 + 32));
  if (v3)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *(v4 + 4);
    if (v7)
    {
      v8 = *(v4 + 8);
      v9 = (v4 + 20);
      v10 = v4 + 20 + 4 * *(v4 + 16);
    }

    else
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
    }

    while (1)
    {
      if (v9 == v10)
      {
        if (v7 < 2)
        {
          break;
        }

        --v7;
        v8 = *v10;
        v9 = (v10 + 12);
        v10 += 12 + 4 * *(v10 + 8);
      }

      if (v9 == v10)
      {
        break;
      }

      v65 = v3;
      v64 = v8;
      v11 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<MIDIEndpoint>::sRTTI, v3);
      if (!v11)
      {
        gMIDIUMPEndpointLog();
        v22 = gMIDIUMPEndpointLog(void)::logCat;
        if (!os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
        {
          goto LABEL_40;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
        *(buf.__r_.__value_.__r.__words + 4) = "EndpointManager.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 298;
        v23 = v22;
        v24 = OS_LOG_TYPE_INFO;
        v25 = "%25s:%-5d NOTICE: Failed to dereference source";
LABEL_31:
        v26 = 18;
LABEL_34:
        _os_log_impl(&dword_2371C2000, v23, v24, v25, &buf, v26);
        goto LABEL_40;
      }

      v12 = v11;
      v13 = *(v11 + 11);
      v63 = v13;
      PairedEndpoint = MIDIEndpoint::GetPairedEndpoint(v11);
      v62 = PairedEndpoint;
      if (!PairedEndpoint)
      {
        gMIDIUMPEndpointLog();
        v27 = gMIDIUMPEndpointLog(void)::logCat;
        if (!os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
        *(buf.__r_.__value_.__r.__words + 4) = "EndpointManager.cpp";
        WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = 305;
        WORD1(buf.__r_.__value_.__r.__words[2]) = 1024;
        HIDWORD(buf.__r_.__value_.__r.__words[2]) = v3;
        v23 = v27;
        v24 = OS_LOG_TYPE_ERROR;
        v25 = "%25s:%-5d Unable to find paired destination for source %u";
        v26 = 24;
        goto LABEL_34;
      }

      v15 = PairedEndpoint;
      Pair = UMPCIManager<UMPStream::EndpointPair>::getPair(v5, v3, 0);
      if (Pair)
      {
        v17 = Pair;
        *(Pair + 56) = v8;
        v18 = *v9;
        if (*v9 >> 28 != 15)
        {
          goto LABEL_40;
        }

        v19 = HIWORD(v18) & 0x3FF;
        if (v19 <= 4)
        {
          if ((HIWORD(v18) & 0x3FF) > 2u)
          {
            if (v19 == 3)
            {
              v40 = *(Pair + 95);
              if ((v40 & 0x80u) != 0)
              {
                v40 = *(Pair + 80);
              }

              if (v40 < 0x62 || (v18 & 0x8000000) == 0)
              {
                v41 = v9[2];
                v42 = bswap64(v9[3]);
                *__s = (v41 << 24) & 0xFF000000000000 | (BYTE2(v41) << 56) | (v9[1] << 40) | (BYTE1(v9[1]) << 32) | (BYTE2(v9[1]) << 24) | (v9[1] >> 8) & 0xFF0000 | (*v9 << 8) | BYTE1(*v9);
                *&__s[12] = HIWORD(v42);
                *&__s[8] = (v42 >> 16) & 0xFFFF0000 | (bswap32(v41) >> 16);
                if (HIBYTE(v42))
                {
                  *(&buf.__r_.__value_.__s + 23) = 14;
                  buf.__r_.__value_.__r.__words[0] = *__s;
                  *(buf.__r_.__value_.__r.__words + 6) = *&__s[6];
                  buf.__r_.__value_.__s.__data_[14] = 0;
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(&buf, __s);
                }

                if (((*v9 >> 26) & 3) >= 2)
                {
                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    p_buf = &buf;
                  }

                  else
                  {
                    p_buf = buf.__r_.__value_.__r.__words[0];
                  }

                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    size = buf.__r_.__value_.__l.__size_;
                  }

                  std::string::append((v17 + 72), p_buf, size);
                }

                else
                {
                  std::string::operator=((v17 + 72), &buf);
                }

                goto LABEL_124;
              }
            }

            else if (v19 == 4)
            {
              v34 = *(Pair + 143);
              if ((v34 & 0x80u) != 0)
              {
                v34 = *(Pair + 128);
              }

              if (v34 < 0x62 || (v18 & 0x8000000) == 0)
              {
                v35 = v9[2];
                v36 = bswap64(v9[3]);
                *__s = (v35 << 24) & 0xFF000000000000 | (BYTE2(v35) << 56) | (v9[1] << 40) | (BYTE1(v9[1]) << 32) | (BYTE2(v9[1]) << 24) | (v9[1] >> 8) & 0xFF0000 | (*v9 << 8) | BYTE1(*v9);
                *&__s[12] = HIWORD(v36);
                *&__s[8] = (v36 >> 16) & 0xFFFF0000 | (bswap32(v35) >> 16);
                if (HIBYTE(v36))
                {
                  *(&buf.__r_.__value_.__s + 23) = 14;
                  buf.__r_.__value_.__r.__words[0] = *__s;
                  *(buf.__r_.__value_.__r.__words + 6) = *&__s[6];
                  buf.__r_.__value_.__s.__data_[14] = 0;
                }

                else
                {
                  std::string::basic_string[abi:ne200100]<0>(&buf, __s);
                }

                if (((*v9 >> 26) & 3) >= 2)
                {
                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v53 = &buf;
                  }

                  else
                  {
                    v53 = buf.__r_.__value_.__r.__words[0];
                  }

                  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                  {
                    v54 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  }

                  else
                  {
                    v54 = buf.__r_.__value_.__l.__size_;
                  }

                  std::string::append((v17 + 120), v53, v54);
                }

                else
                {
                  std::string::operator=((v17 + 120), &buf);
                }

                goto LABEL_124;
              }
            }
          }

          else if (v19)
          {
            if (v19 == 2)
            {
              v29 = v9[2];
              v30 = (v9 + 3);
              v31 = vld1q_dup_f32(v30);
              v32.i64[0] = vshlq_u32(v31, xmmword_23726C370).u64[0];
              v32.i64[1] = vshlq_u32(v31, xmmword_23726C380).i64[1];
              v33 = vandq_s8(v32, xmmword_23726C390);
              *v33.i8 = vorr_s8(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
              v61 = v61 & 0xFF000000 | v9[1] & 0xFF00 | (v9[1] << 16) & 0xFFFFFF | BYTE2(v9[1]);
              *(Pair + 108) = v61;
              *(Pair + 112) = HIBYTE(v29) & 0x7F | ((BYTE2(v29) & 0x7F) << 7);
              *(Pair + 114) = (v29 >> 8) & 0x7F | ((v29 & 0x7F) << 7);
              *(Pair + 116) = v33.i32[0] | v33.i32[1];
            }
          }

          else
          {
            gMIDIUMPEndpointLog();
            v39 = gMIDIUMPEndpointLog(void)::logCat;
            if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
              *(buf.__r_.__value_.__r.__words + 4) = "EndpointManager.cpp";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = 347;
              v23 = v39;
              v24 = OS_LOG_TYPE_INFO;
              v25 = "%25s:%-5d NOTICE: Unexpected discovery message request..";
              goto LABEL_31;
            }
          }
        }

        else if ((HIWORD(v18) & 0x3FF) <= 0xFu)
        {
          if (v19 == 5)
          {
            gMIDIUMPEndpointLog();
            v44 = gMIDIUMPEndpointLog(void)::logCat;
            if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
              *(buf.__r_.__value_.__r.__words + 4) = "EndpointManager.cpp";
              WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = 367;
              v23 = v44;
              v24 = OS_LOG_TYPE_INFO;
              v25 = "%25s:%-5d NOTICE: Unexpectedly received stream configuration request message...";
              goto LABEL_31;
            }
          }

          else if (v19 == 6)
          {
            v37 = *(Pair + 64);
            if ((v18 & 3) != 0 || BYTE1(v18) != v13)
            {
              if (v37 == 2)
              {
                *(Pair + 64) = 3;
                gMIDIUMPEndpointLog();
                v51 = gMIDIUMPEndpointLog(void)::logCat;
                if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                  *(buf.__r_.__value_.__r.__words + 4) = "EndpointManager.cpp";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = 393;
                  v23 = v51;
                  v24 = OS_LOG_TYPE_INFO;
                  v25 = "%25s:%-5d NOTICE: Device configuration mismatch, we have already sent a request. Will not try again..";
                  goto LABEL_31;
                }
              }

              else
              {
                gMIDIUMPEndpointLog();
                v52 = gMIDIUMPEndpointLog(void)::logCat;
                if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
                {
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                  *(buf.__r_.__value_.__r.__words + 4) = "EndpointManager.cpp";
                  WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
                  *(&buf.__r_.__value_.__r.__words[1] + 6) = 384;
                  _os_log_impl(&dword_2371C2000, v52, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: Received stream configuration notification, but it does not match the current configuration.", &buf, 0x12u);
                }

                UMPStream::EndpointManager::sendStreamConfigurationRequestMessage(v5, v62, v63);
                *(v17 + 64) = 2;
              }
            }

            else if (v37 != 4 && *(Pair + 176) == (*(Pair + 160) - *(Pair + 152)) >> 3)
            {
              *(Pair + 64) = 4;
              if (*(v12 + 96))
              {
                v38 = 1;
              }

              else
              {
                v38 = (*(v12 + 98) & 1) != 0 ? 3 : 2 * (*(v12 + 8) != 0);
              }

              *(Pair + 177) = v38;
              *(Pair + 147) = 1;
              v59 = *v5;
              v60 = *(v17 + 8);
              buf.__r_.__value_.__r.__words[0] = 0;
              UMPCIServerContext::sendNotificationForObject(v59, 0, v60, &buf.__r_.__value_.__l.__data_);
              if (buf.__r_.__value_.__r.__words[0])
              {
                CFRelease(buf.__r_.__value_.__l.__data_);
              }
            }
          }
        }

        else
        {
          switch(v19)
          {
            case 0x10u:
              gMIDIUMPEndpointLog();
              v43 = gMIDIUMPEndpointLog(void)::logCat;
              if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
              {
                LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
                *(buf.__r_.__value_.__r.__words + 4) = "EndpointManager.cpp";
                WORD2(buf.__r_.__value_.__r.__words[1]) = 1024;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = 400;
                v23 = v43;
                v24 = OS_LOG_TYPE_INFO;
                v25 = "%25s:%-5d NOTICE: Unexpectedly received function block discovery message...";
                goto LABEL_31;
              }

              break;
            case 0x11u:
              operator new();
            case 0x12u:
              v20 = *(Pair + 152);
              v21 = *(Pair + 160);
              if (v20 != v21)
              {
                while (*(*v20 + 96) != BYTE1(v18))
                {
                  if (++v20 == v21)
                  {
                    goto LABEL_40;
                  }
                }
              }

              if (v20 != v21)
              {
                v45 = *v20;
                if (*v20)
                {
                  v46 = *(v45 + 95);
                  if ((v46 & 0x80u) != 0)
                  {
                    v46 = *(v45 + 80);
                  }

                  if (v46 < 0x62 || (v18 & 0x8000000) == 0)
                  {
                    v48 = v9[1];
                    v49 = v9[3];
                    v50 = v9[2] | (HIBYTE(v49) << 8);
                    *__s = (v9[2] << 48) & 0xFF00000000000000 | (BYTE2(v9[2]) << 48) | (HIBYTE(v9[2]) << 40) | (v9[1] << 32) | (BYTE1(v48) << 24) | v48 & 0xFF0000 | (v48 >> 16) & 0xFF00 | *v9;
                    __s[12] = v49;
                    *&__s[8] = v49 & 0xFF0000 | v50 & 0xFFFFFF | (BYTE1(v49) << 24);
                    if (v49)
                    {
                      *(&buf.__r_.__value_.__s + 23) = 13;
                      buf.__r_.__value_.__r.__words[0] = *__s;
                      *(buf.__r_.__value_.__r.__words + 5) = *&__s[5];
                      buf.__r_.__value_.__s.__data_[13] = 0;
                    }

                    else
                    {
                      std::string::basic_string[abi:ne200100]<0>(&buf, __s);
                    }

                    if (((*v9 >> 26) & 3) >= 2)
                    {
                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v57 = &buf;
                      }

                      else
                      {
                        v57 = buf.__r_.__value_.__r.__words[0];
                      }

                      if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                      {
                        v58 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                      }

                      else
                      {
                        v58 = buf.__r_.__value_.__l.__size_;
                      }

                      std::string::append((v45 + 72), v57, v58);
                    }

                    else
                    {
                      std::string::operator=((v45 + 72), &buf);
                    }

LABEL_124:
                    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                    {
                      operator delete(buf.__r_.__value_.__l.__data_);
                    }
                  }
                }
              }

              break;
          }
        }
      }

      else
      {
        buf.__r_.__value_.__r.__words[0] = v5;
        buf.__r_.__value_.__l.__size_ = &v65;
        buf.__r_.__value_.__r.__words[2] = &v62;
        v67 = &v63;
        v68 = &v64;
        v69 = v5;
        v70 = &v62;
        v71 = v5;
        v72 = &v62;
        if (*v9 >> 28 != 15)
        {
          goto LABEL_39;
        }

        v28 = HIWORD(*v9) & 0x3FF;
        if (v28 == 1)
        {
          UMPStream::EndpointManager::processBackground(unsigned int,MIDI::MIDIEvent const&)::$_0::operator()();
        }

        if (v28)
        {
LABEL_39:
          UMPStream::EndpointManager::sendEndpointDiscoveryMessage(v5, v15);
        }

        else
        {
          UMPStream::EndpointManager::sendEndpointInfoNotificationMessage(v5, v15);
        }
      }

LABEL_40:
      v9 += MIDI::UniversalPacket::word_sizes[*v9 >> 28];
    }
  }

  std::mutex::unlock((v5 + 32));
}

void sub_2371E0620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void gMIDIUMPEndpointLog(void)
{
  {
    gMIDIUMPEndpointLog(void)::logCat = os_log_create("com.apple.coremidi", "server-endpoint-manager");
  }
}

void UMPStream::EndpointManager::sendEndpointDiscoveryMessage(UMPStream::EndpointManager *this, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = xmmword_23726C3A0;
  MIDI::SingleUMPEventList::SingleUMPEventList(v10, &v5);
  if ((*(*this + 408))(*(*this + 404), a2, v10))
  {
    gMIDIUMPEndpointLog();
    v4 = gMIDIUMPEndpointLog(void)::logCat;
    if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v7 = "EndpointManager.cpp";
      v8 = 1024;
      v9 = 231;
      _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: Failed to send endpoint discovery message", buf, 0x12u);
    }
  }
}

void UMPStream::EndpointManager::sendEndpointInfoNotificationMessage(UMPStream::EndpointManager *this, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = xmmword_23726C3B0;
  MIDI::SingleUMPEventList::SingleUMPEventList(v10, &v5);
  if ((*(*this + 408))(*(*this + 404), a2, v10))
  {
    gMIDIUMPEndpointLog();
    v4 = gMIDIUMPEndpointLog(void)::logCat;
    if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v7 = "EndpointManager.cpp";
      v8 = 1024;
      v9 = 243;
      _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: Failed to send endpoint discovery message", buf, 0x12u);
    }
  }
}

void sub_2371E0B80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](va, 0);
  std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](va1, 0);
  _Unwind_Resume(a1);
}

void UMPStream::EndpointManager::sendStreamConfigurationRequestMessage(UMPStream::EndpointManager *this, uint64_t a2, MIDIProtocolID a3)
{
  v9 = *MEMORY[0x277D85DE8];
  v6 = (a3 << 8) | 0xF0050000;
  *v7 = 0;
  *&v7[4] = 0;
  MIDI::SingleUMPEventList::SingleUMPEventList(v8, &v6);
  if ((*(*this + 408))(*(*this + 404), a2, v8))
  {
    gMIDIUMPEndpointLog();
    v5 = gMIDIUMPEndpointLog(void)::logCat;
    if (os_log_type_enabled(gMIDIUMPEndpointLog(void)::logCat, OS_LOG_TYPE_INFO))
    {
      v6 = 136315394;
      *v7 = "EndpointManager.cpp";
      *&v7[8] = 1024;
      *&v7[10] = 255;
      _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_INFO, "%25s:%-5d NOTICE: Failed to send stream configuration request", &v6, 0x12u);
    }
  }
}

uint64_t MIDI::SingleUMPEventList::SingleUMPEventList(uint64_t result, _DWORD *a2)
{
  if (*a2 >> 28 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  *result = v2;
  *(result + 4) = 0;
  *(result + 16) = 0;
  v3 = *a2;
  v4 = MIDI::UniversalPacket::word_sizes[*a2 >> 28];
  if ((v4 - 5) >= 0xFFFFFFFC)
  {
    *(result + 4) = 1;
    *(result + 8) = 0;
    v5 = (result + 20);
    v6 = &v9;
    *(result + 16) = 0;
    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v7) = v3;
      }

      else
      {
        v7 = HIDWORD(v3);
        v6 = &v9 + 4;
        v5 = (result + 24);
        *(result + 20) = v3;
      }

      v8 = *(v6 + 1);
      v6 += 4;
      LODWORD(v3) = v8;
      *v5++ = v7;
    }

    else if (v4 == 1)
    {
      goto LABEL_13;
    }

    *v5++ = v3;
    LODWORD(v3) = *(v6 + 1);
LABEL_13:
    *v5 = v3;
    *(result + 16) += v4;
  }

  return result;
}

void UMPCIServerContext::sendNotificationForObject(uint64_t a1, int a2, unsigned int a3, const void **a4)
{
  v8 = BaseOpaqueObject::ResolveOpaqueRef(&TOpaqueRTTI<UMPCIObject>::sRTTI, a3);
  if (v8)
  {
    (*(*v8 + 88))(&v12);
    v9 = *a4;
    *a4 = v12;
    v12 = v9;
    if (v9)
    {
      CFRelease(v9);
    }
  }

  else if (a2 != 2)
  {
    v11 = CAVerboseAbort();
    __clang_call_terminate(v11);
  }

  v10 = *a4;
  if (v10)
  {
    CFRetain(v10);
  }

  std::function<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::operator()(*(a1 + 360), a2, a3);
  if (v10)
  {
    CFRelease(v10);
  }
}

uint64_t std::function<void ()(UMPCIObjectEvent,unsigned int,applesauce::CF::DictionaryRef)>::operator()(uint64_t a1, int a2, int a3)
{
  v5 = a2;
  v4 = a3;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v5, &v4);
}

uint64_t UMPCIManager<UMPStream::EndpointPair>::addPair(void *a1, uint64_t *a2)
{
  v4 = *a2;
  Pair = UMPCIManager<UMPStream::EndpointPair>::getPair(a1, *(*a2 + 100), *(*a2 + 104));
  if (!Pair)
  {
    Pair = v4;
    *a2 = 0;
    v19 = v4;
    v7 = a1[2];
    v6 = a1[3];
    if (v7 >= v6)
    {
      v9 = a1[1];
      v10 = v7 - v9;
      v11 = (v7 - v9) >> 3;
      v12 = v11 + 1;
      if ((v11 + 1) >> 61)
      {
        std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
      }

      v13 = v6 - v9;
      if (v13 >> 2 > v12)
      {
        v12 = v13 >> 2;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFF8)
      {
        v14 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        if (!(v14 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v15 = (v7 - v9) >> 3;
      v16 = (8 * v11);
      v19 = 0;
      v17 = (8 * v11 - 8 * v15);
      *v16 = Pair;
      v8 = v16 + 1;
      memcpy(v17, v9, v10);
      a1[1] = v17;
      a1[2] = v8;
      a1[3] = 0;
      if (v9)
      {
        operator delete(v9);
      }
    }

    else
    {
      v19 = 0;
      *v7 = v4;
      v8 = v7 + 1;
    }

    a1[2] = v8;
    std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](&v19, 0);
  }

  return Pair;
}

void sub_2371E1004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](va, 0);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_0,std::allocator<UMPStream::EndpointManager::EndpointManager(UMPCIServerContext &)::$_0>,void ()(unsigned int,MIDIEventList const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47CC0;
  a2[1] = v2;
  return result;
}

uint64_t *std::__tree<unsigned int>::__insert_node_at(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
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

uint64_t *std::vector<std::unique_ptr<UMPStream::EndpointPair>>::erase(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *(a1 + 8);
    v7 = a2;
    if (a3 != v6)
    {
      do
      {
        v8 = *v4;
        *v4++ = 0;
        std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](v7++, v8);
      }

      while (v4 != v6);
      v6 = *(a1 + 8);
    }

    while (v6 != v7)
    {
      std::unique_ptr<UMPStream::EndpointPair>::reset[abi:ne200100](--v6, 0);
    }

    *(a1 + 8) = v7;
  }

  return a2;
}

void std::vector<unsigned int>::push_back[abi:ne200100](uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void UMPCIObject::updateDescription(uint64_t a1, void *a2, const __CFDictionary **a3)
{
  if (!*a3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  v6 = applesauce::CF::details::find_at_key_or_optional<UMPCIObjectType,char const* const&>(*a3, "type");
  if (!(v6 >> 32) || (*(*a2 + 96))(a2) != v6)
  {
    goto LABEL_11;
  }

  if (!*a3)
  {
    v15 = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(v15);
  }

  v7 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,char const* const&>(*a3, "timestamp");
  if ((v8 & 1) != 0 && v7 > a2[7])
  {
    if (!*a3)
    {
      v16 = __cxa_allocate_exception(0x10uLL);
      applesauce::CF::construct_error(v16);
    }

    v9 = applesauce::CF::details::find_at_key_or_optional<unsigned long long,char const* const&>(*a3, "timestamp");
    if ((v10 & 1) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    a2[7] = v9;
    (*(*a2 + 80))(&v17, a2, a3);
    v11 = v18;
    *a1 = v17;
    *(a1 + 8) = v11;
    v12 = a1 + 8;
    v13 = v19;
    *(a1 + 16) = v19;
    if (v13)
    {
      *(v11 + 16) = v12;
      v17 = &v18;
      v18 = 0;
      v19 = 0;
      v11 = 0;
    }

    else
    {
      *a1 = v12;
    }

    *(a1 + 24) = 1;
    std::__tree<std::string>::destroy(v11);
  }

  else
  {
LABEL_11:
    *a1 = 0;
    *(a1 + 24) = 0;
  }
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
    }

    operator delete(a1);
  }
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<UMPCIObjectType,char const* const&>(const __CFDictionary *a1, char *a2)
{
  result = applesauce::CF::details::at_key<char const* const&>(a1, a2);
  if (result)
  {
    v3 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v3))
    {
      valuePtr = 0;
      if (CFNumberGetValue(v3, kCFNumberIntType, &valuePtr))
      {
        return (valuePtr | 0x100000000);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const __CFNumber *applesauce::CF::details::find_at_key_or_optional<unsigned long long,char const* const&>(const __CFDictionary *a1, char *a2)
{
  result = applesauce::CF::details::at_key<char const* const&>(a1, a2);
  if (result)
  {
    return applesauce::CF::convert_as<unsigned long long,0>(result);
  }

  return result;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x277D82908] + 16;
}

const void *applesauce::CF::details::at_key<char const* const&>(const __CFDictionary *a1, char *__s)
{
  v4 = strlen(__s);
  if (__s)
  {
    v5 = CFStringCreateWithBytes(0, __s, v4, 0x8000100u, 0);
    cf = v5;
    if (!v5)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }
  }

  else
  {
    v5 = 0;
    cf = 0;
  }

  Value = CFDictionaryGetValue(a1, v5);
  if (cf)
  {
    CFRelease(cf);
  }

  return Value;
}

void sub_2371E1658(void *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  applesauce::CF::ObjectRef<__CFString const*>::~ObjectRef(va);
  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x2371E1644);
}

const __CFNumber *applesauce::CF::convert_as<unsigned long long,0>(const __CFNumber *result)
{
  if (result)
  {
    v1 = result;
    TypeID = CFNumberGetTypeID();
    if (TypeID == CFGetTypeID(v1))
    {
      switch(CFNumberGetType(v1))
      {
        case kCFNumberSInt8Type:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberSInt8Type, &valuePtr);
          goto LABEL_25;
        case kCFNumberSInt16Type:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberSInt16Type, &valuePtr);
          goto LABEL_20;
        case kCFNumberSInt32Type:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberSInt32Type, &valuePtr);
          goto LABEL_38;
        case kCFNumberSInt64Type:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberSInt64Type, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloat32Type:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloat32Type, &valuePtr);
          goto LABEL_12;
        case kCFNumberFloat64Type:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberFloat64Type, &valuePtr);
          goto LABEL_22;
        case kCFNumberCharType:
          LOBYTE(valuePtr) = 0;
          Value = CFNumberGetValue(v1, kCFNumberCharType, &valuePtr);
LABEL_25:
          v15 = Value != 0;
          if (Value)
          {
            LOBYTE(v16) = LOBYTE(valuePtr);
          }

          else
          {
            LOBYTE(v16) = 0;
          }

          v17 = SLOBYTE(valuePtr) < 0 && v15;
          v18 = v17 << 63 >> 63;
          return (v16 | (v18 << 8));
        case kCFNumberShortType:
          LOWORD(valuePtr) = 0;
          v11 = CFNumberGetValue(v1, kCFNumberShortType, &valuePtr);
LABEL_20:
          v12 = v11 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLOWORD(valuePtr);
          goto LABEL_39;
        case kCFNumberIntType:
          LODWORD(valuePtr) = 0;
          v10 = CFNumberGetValue(v1, kCFNumberIntType, &valuePtr);
LABEL_38:
          v12 = v10 == 0;
          v13 = LOBYTE(valuePtr);
          v14 = SLODWORD(valuePtr);
LABEL_39:
          v19 = v14 & 0xFFFFFFFFFFFFFF00 | v13;
          if (v12)
          {
            v16 = 0;
          }

          else
          {
            v16 = v19;
          }

          goto LABEL_42;
        case kCFNumberLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberLongLongType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberLongLongType, &valuePtr);
          goto LABEL_33;
        case kCFNumberFloatType:
          LODWORD(valuePtr) = 0;
          v6 = CFNumberGetValue(v1, kCFNumberFloatType, &valuePtr);
LABEL_12:
          v7 = v6 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberDoubleType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberDoubleType, &valuePtr);
          goto LABEL_22;
        case kCFNumberCFIndexType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberCFIndexType, &valuePtr);
          goto LABEL_33;
        case kCFNumberNSIntegerType:
          valuePtr = 0.0;
          v5 = CFNumberGetValue(v1, kCFNumberNSIntegerType, &valuePtr);
LABEL_33:
          v7 = v5 == 0;
          v8 = *&valuePtr;
          goto LABEL_34;
        case kCFNumberCGFloatType:
          valuePtr = 0.0;
          v9 = CFNumberGetValue(v1, kCFNumberCGFloatType, &valuePtr);
LABEL_22:
          v7 = v9 == 0;
          v8 = valuePtr;
LABEL_34:
          if (v7)
          {
            v16 = 0;
          }

          else
          {
            v16 = v8;
          }

LABEL_42:
          v18 = v16 >> 8;
          break;
        default:
          v18 = 0;
          LOBYTE(v16) = 0;
          break;
      }

      return (v16 | (v18 << 8));
    }

    else
    {
      v4 = CFBooleanGetTypeID();
      if (v4 == CFGetTypeID(v1))
      {
        return CFBooleanGetValue(v1);
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<applesauce::CF::DictionaryRef>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::vector<applesauce::CF::DictionaryRef>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = *v7;
      *v7++ = 0;
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
      std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v9);
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<applesauce::CF::DictionaryRef>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 8);
    *(a1 + 16) = i - 8;
    std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v4);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<applesauce::CF::DictionaryRef>(const void ***a1)
{
  std::vector<void const*>::vector[abi:ne200100](&__p, a1[1] - *a1);
  v2 = *a1;
  v3 = a1[1];
  v4 = __p;
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2++;
      *v4++ = v5;
    }

    while (v2 != v3);
    v4 = __p;
  }

  CFArray = applesauce::CF::details::make_CFArrayRef<void const*>(v4, v9);
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  return CFArray;
}

void sub_2371E1BAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<applesauce::CF::DictionaryRef>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 8;
        std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(v6);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void applesauce::CF::ArrayRef::~ArrayRef(const void **this)
{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  v1 = *this;
  if (v1)
  {
    CFRelease(v1);
  }
}

void std::__destroy_at[abi:ne200100]<applesauce::CF::DictionaryRef,0>(const void *a1)
{
  if (a1)
  {
    CFRelease(a1);
  }
}

void *std::vector<void const*>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<void const*>>(a2);
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_2371E1D10(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

CFArrayRef applesauce::CF::details::make_CFArrayRef<void const*>(const void **values, uint64_t a2)
{
  result = CFArrayCreate(0, values, (a2 - values) >> 3, MEMORY[0x277CBF128]);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    applesauce::CF::construct_error(exception);
  }

  return result;
}

uint64_t AsyncMessenger::push(uint64_t a1, char a2, int a3, uint64_t a4, unsigned int *a5)
{
  *&v27[12] = *MEMORY[0x277D85DE8];
  v8 = *a5;
  if (v8 >> 28 == 2)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  __src = v9;
  v23 = 0;
  v25 = 0;
  v10 = MIDI::UniversalPacket::word_sizes[v8 >> 28];
  if ((v10 - 5) < 0xFFFFFFFC)
  {
    v11 = &v24;
    goto LABEL_14;
  }

  v23 = 1;
  v24 = a4;
  v12 = &v26;
  if (v10 > 2)
  {
    if (v10 != 3)
    {
      v26 = v8;
      v13 = a5[1];
      ++a5;
      LODWORD(v8) = v13;
      v12 = v27;
    }

    *v12++ = v8;
    v14 = a5[1];
    ++a5;
    LODWORD(v8) = v14;
  }

  else if (v10 == 1)
  {
    goto LABEL_13;
  }

  *v12++ = v8;
  LODWORD(v8) = a5[1];
LABEL_13:
  *v12 = v8;
  v25 += v10;
  v11 = &v27[4 * v25 - 4];
LABEL_14:
  v15 = v11 - &__src;
  v16 = (*(**(a1 + 168) + 16))(*(a1 + 168), v11 - &__src + 13, 8);
  *(v16 + 8) = a2;
  *(v16 + 9) = a3;
  memcpy((v16 + 13), &__src, v15);
  v17 = *(a1 + 96);
  atomic_store(v17, v16);
  v18 = v17;
  atomic_compare_exchange_strong((a1 + 96), &v18, v16);
  if (v18 != v17)
  {
    v19 = v18;
    do
    {
      atomic_store(v18, v16);
      atomic_compare_exchange_strong((a1 + 96), &v19, v16);
      v20 = v19 == v18;
      v18 = v19;
    }

    while (!v20);
  }

  return caulk::mach::semaphore::signal_all_or_error((a1 + 12));
}

void sub_2371E1F54(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void MIDIObject::MIDIObject(MIDIObject *this)
{
  BaseOpaqueObject::BaseOpaqueObject(this);
  *v2 = &unk_284A46EC0;
  v2[2] = 0;
  *(this + 3) = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  *(this + 16) = 257;
}

uint64_t MIDIDriverPlugin_CFPlugin::SendEventList(MIDIDriverPlugin_CFPlugin *this, const MIDIEventList *a2, void *a3, void *a4)
{
  if (*(this + 16) >= 3)
  {
    return (*(**(this + 9) + 96))(*(this + 9), a2, a3, a4);
  }

  else
  {
    return 4294956452;
  }
}

uint64_t MIDIDriverPlugin_CFPlugin::MonitorEvents(uint64_t this, uint64_t a2, MIDIEventList *a3)
{
  if (*(this + 64) > 2)
  {
    return (*(**(this + 72) + 104))(*(this + 72), a2, a3);
  }

  v3 = *(this + 80);
  if (v3)
  {
    *(this + 96) = a2;
    return MIDI::MIDIPacketList_Deliverer::operator()(v3, a3);
  }

  return this;
}

uint64_t MIDI::MIDIPacketList_Deliverer::operator()(uint64_t a1, _DWORD *a2)
{
  __dst[1] = *MEMORY[0x277D85DE8];
  v60 = *(a1 + 8);
  (*(v60 + 8))(&v61, a1 + 16);
  v63 = 0;
  v62 = &v64;
  v51 = a2;
  if (*a2 == 2)
  {
    if (!a2[1])
    {
      return MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(&v60);
    }

    v27 = 0;
    v28 = a2 + 2;
    v49 = a1 + 64;
LABEL_93:
    v50 = v27;
    v29 = v28[2];
    v56 = v28 + 3;
    v57 = v29;
    v58 = *v28;
    v59 = 0;
    while (1)
    {
      do
      {
        while (1)
        {
          do
          {
            v54 = 0;
            v55 = 0;
            v53 = 0;
            if (!MIDI::EventList::PacketReader::read(&v56, &v55, &v53))
            {
              v28 += v28[2] + 3;
              v27 = v50 + 1;
              if ((v50 + 1) >= v51[1])
              {
                return MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(&v60);
              }

              goto LABEL_93;
            }

            __dst[0] = v55;
            v30 = v53;
            if (((1 << (v53 >> 28)) & 0xA02F) != 0)
            {
              v31 = HIDWORD(v53);
              goto LABEL_97;
            }
          }

          while (v53 >> 28 != 4);
          v32 = BYTE3(v53) & 0xF | 0x20;
          v33 = HIDWORD(v53);
          v34 = BYTE2(v53) >> 4;
          if (v34 <= 0xB)
          {
            break;
          }

          switch(v34)
          {
            case 0xCu:
              v45 = v32 << 24;
              v46 = BYTE2(v53) << 16;
              if (v53)
              {
                v47 = (v46 - 0x100000) | (v32 << 24);
                MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>((v46 - 0x100000) & 0xFFFFFF80 | (v32 << 24) | (HIDWORD(v53) >> 8) & 0x7F, 0, &v60, __dst);
                MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v47 | v33 & 0x7F | 0x2000, 0, &v60, __dst);
              }

              v31 = 0;
              v30 = HIWORD(v33) & 0x7F00 | v45 | v46;
LABEL_97:
              MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v30, v31, &v60, __dst);
              break;
            case 0xDu:
              v31 = 0;
              v30 = (BYTE2(v53) << 16) | (v32 << 24) | (HIDWORD(v53) >> 25 << 8);
              goto LABEL_97;
            case 0xEu:
              v31 = 0;
              v30 = (HIDWORD(v53) >> 10) & 0x7F00 | (BYTE2(v53) << 16) | (v32 << 24) | (HIDWORD(v53) >> 25);
              goto LABEL_97;
          }
        }

        if (v34 - 8 < 4)
        {
          v31 = 0;
          v35 = v34 == 9;
          if (HIDWORD(v53) >> 25)
          {
            v35 = HIDWORD(v53) >> 25;
          }

          v30 = v35 | (BYTE2(v53) << 16) | (v32 << 24) | v53 & 0x7F00;
          goto LABEL_97;
        }
      }

      while (v34 - 2 >= 2);
      v36 = (v53 >> 16) & 0xF;
      v37 = (v49 + 48 * (BYTE3(v53) & 0xF) + 3 * v36);
      v38 = (v53 >> 8) & 0x7F;
      v39 = v53 & 0x7F;
      v40 = (v53 & 0x100000) != 0 ? 2 : 1;
      if (v40 != *v37 || v38 != v37[1])
      {
        break;
      }

      v41 = v36 | 0xB0;
      if (v39 != v37[2])
      {
        goto LABEL_117;
      }

      v42 = (v32 << 24) | (v41 << 16);
LABEL_121:
      MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v42 | (v33 >> 25) | 0x600, 0, &v60, __dst);
      v44 = (v33 >> 18) & 0x7F;
      if (v44)
      {
        v31 = 0;
        v30 = v44 | v42 | 0x2600u;
        goto LABEL_97;
      }
    }

    v41 = v36 | 0xB0;
LABEL_117:
    if ((v53 & 0x100000) != 0)
    {
      v43 = 25344;
    }

    else
    {
      v43 = 25856;
    }

    v42 = (v32 << 24) | (v41 << 16);
    MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(v42 | v43 | v38, 0, &v60, __dst);
    MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>((v43 + v42 + v39 - 256), 0, &v60, __dst);
    *v37 = v40;
    v37[1] = v38;
    v37[2] = v39;
    goto LABEL_121;
  }

  if (*a2 != 1)
  {
    std::terminate();
  }

  if (a2[1])
  {
    v4 = 0;
    v5 = a2 + 2;
    do
    {
      v6 = v5[2];
      v56 = v5 + 3;
      v57 = v6;
      v58 = *v5;
      v59 = 0;
      while (1)
      {
        v52 = 0;
        v53 = 0;
        v54 = 0;
        if (!MIDI::EventList::PacketReader::read(&v56, &v52, &v53))
        {
          break;
        }

        v7 = v52;
        v8 = v53;
        v9 = v53 >> 28;
        if (v53 >> 28 == 3)
        {
          v17 = (v53 >> 16) & 0xF;
          if (v17 <= 6 && BYTE2(v53) <= 0x3Fu)
          {
            v55 = _byteswap_uint64(__PAIR64__(v53, HIDWORD(v53)));
            if (BYTE2(v53) > 0x1Fu)
            {
              v10 = 0;
              v18 = __dst;
              if (!v17)
              {
                goto LABEL_49;
              }

LABEL_48:
              memcpy(v18, &v55 + 2, (v53 >> 16) & 0xF);
              v10 += (v17 - 1) + 1;
              goto LABEL_49;
            }

            LOBYTE(__dst[0]) = -16;
            v18 = (__dst + 1);
            v10 = 1;
            if (v17)
            {
              goto LABEL_48;
            }

LABEL_49:
            if ((((v8 >> 20) + 3) & 2) != 0)
            {
              *(__dst + v10++) = -9;
            }

            v11 = v62;
            if (v63)
            {
              if (*v62 == v7)
              {
                v21 = *(v62 + 4);
                if (*(v62 + v21 + 9) != 247 && LOBYTE(__dst[0]) != 240)
                {
                  if (v62 + v10 + v21 + 10 > __dst)
                  {
                    goto LABEL_60;
                  }

                  goto LABEL_62;
                }
              }

              else
              {
                v21 = *(v62 + 4);
              }

              v11 = (v62 + v21 + 13) & 0xFFFFFFFFFFFFFFFCLL;
            }

            if (v11 + v10 + 10 > __dst)
            {
LABEL_60:
              v22 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v60, v7, __dst, v10);
LABEL_74:
              v11 = v22;
              goto LABEL_85;
            }

            v21 = 0;
            ++v63;
            *v11 = v7;
            *(v11 + 8) = 0;
LABEL_62:
            v23 = (v11 + v21 + 10);
            v24 = __dst;
            if (v10 > 1)
            {
              if (v10 != 2)
              {
                if (v10 != 3)
                {
                  if (v10 != 4)
                  {
                    goto LABEL_88;
                  }

                  goto LABEL_80;
                }

LABEL_81:
                v25 = *v24;
                v24 = (v24 + 1);
                *v23++ = v25;
              }

LABEL_82:
              v26 = *v24;
              v24 = (v24 + 1);
              *v23++ = v26;
              goto LABEL_83;
            }

            if (v10)
            {
              if (v10 != 1)
              {
                goto LABEL_88;
              }

              goto LABEL_83;
            }

LABEL_84:
            *(v11 + 8) += v10;
LABEL_85:
            v62 = v11;
          }
        }

        else if (v9 == 2)
        {
          v13 = v53 & 0xE00000;
          LOBYTE(__dst[0]) = BYTE2(v53);
          BYTE1(__dst[0]) = BYTE1(v53) & 0x7F;
          if ((v53 & 0xE00000) == 0xC00000)
          {
            v14 = 2;
          }

          else
          {
            v14 = 3;
          }

          if (v13 != 12582912)
          {
            BYTE2(__dst[0]) = v53 & 0x7F;
          }

          v15 = v62;
          if (v63)
          {
            if (*v62 == v52)
            {
              v16 = *(v62 + 4);
              if (BYTE2(v53) != 240 && *(v62 + v16 + 9) != 247)
              {
                if (v62 + v14 + v16 + 10 > __dst)
                {
                  goto LABEL_40;
                }

                goto LABEL_42;
              }
            }

            else
            {
              v16 = *(v62 + 4);
            }

            v15 = (v62 + v16 + 13) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (v15 + v14 + 10 > __dst)
          {
LABEL_40:
            v15 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v60, v52, __dst, v14);
            goto LABEL_46;
          }

          v16 = 0;
          ++v63;
          *v15 = v52;
          *(v15 + 8) = 0;
LABEL_42:
          v19 = (v15 + v16 + 10);
          if (v13 == 12582912)
          {
            v20 = __dst;
          }

          else
          {
            *v19 = __dst[0];
            v19 = (v15 + v16 + 11);
            v20 = (__dst + 1);
          }

          *v19 = *v20;
          v19[1] = *(v20 + 1);
          *(v15 + 8) += v14;
LABEL_46:
          v62 = v15;
        }

        else if (v9 == 1 && BYTE2(v53) >= 0xF0u && ((0x22B1uLL >> (BYTE2(v53) + 16)) & 1) == 0)
        {
          v10 = MIDI::_gMessageSize[BYTE2(v53) - 240];
          LOBYTE(__dst[0]) = BYTE2(v53);
          if (((0xDD40uLL >> (BYTE2(v53) + 16)) & 1) == 0)
          {
            BYTE1(__dst[0]) = BYTE1(v53) & 0x7F;
            if (BYTE2(v53) == 242)
            {
              BYTE2(__dst[0]) = v53 & 0x7F;
            }
          }

          v11 = v62;
          if (v63)
          {
            if (*v62 == v52)
            {
              v12 = *(v62 + 4);
              if (BYTE2(v53) != 240 && *(v62 + v12 + 9) != 247)
              {
                if (v62 + v12 + v10 + 10 > __dst)
                {
                  goto LABEL_73;
                }

                goto LABEL_76;
              }
            }

            else
            {
              v12 = *(v62 + 4);
            }

            v11 = (v62 + v12 + 13) & 0xFFFFFFFFFFFFFFFCLL;
          }

          if (v11 + v10 + 10 > __dst)
          {
LABEL_73:
            v22 = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(&v60, v52, __dst, v10);
            goto LABEL_74;
          }

          v12 = 0;
          ++v63;
          *v11 = v52;
          *(v11 + 8) = 0;
LABEL_76:
          v23 = (v11 + v12 + 10);
          v24 = __dst;
          if (v10 > 1)
          {
            if (v10 != 2)
            {
              if (v10 != 3)
              {
                if (v10 != 4)
                {
LABEL_88:
                  memmove(v23, __dst, v10);
                  goto LABEL_84;
                }

LABEL_80:
                *v23++ = __dst[0];
                v24 = (__dst + 1);
              }

              goto LABEL_81;
            }

            goto LABEL_82;
          }

          if (!v10)
          {
            goto LABEL_84;
          }

LABEL_83:
          *v23 = *v24;
          goto LABEL_84;
        }
      }

      v5 += v5[2] + 3;
      ++v4;
    }

    while (v4 < v51[1]);
  }

  return MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(&v60);
}

uint64_t MIDI::PacketizerBase<MIDI::LegacyPacketList>::~PacketizerBase(uint64_t a1)
{
  if (*(a1 + 64))
  {
    v3 = a1 + 64;
    (**a1)(a1 + 8, &v3);
  }

  *(a1 + 64) = 0;
  *(a1 + 56) = a1 + 68;
  (*(*a1 + 24))(a1 + 8);
  return a1;
}

uint64_t MIDI::EventList::PacketReader::read(void *a1, void *a2, _DWORD *a3)
{
  v3 = a1[1];
  v4 = a1[3];
  if (v4 >= v3)
  {
    return 0;
  }

  v5 = (*a1 + 4 * v4);
  v6 = *v5;
  v7 = MIDI::UniversalPacket::word_sizes[v6 >> 28];
  v8 = v4 + v7;
  if (v8 > v3)
  {
    return 0;
  }

  *a2 = a1[2];
  if (v7 > 1)
  {
    if (v7 != 2)
    {
      if (v7 != 3)
      {
        if (v7 != 4)
        {
          std::terminate();
        }

        *a3++ = v6;
        v10 = v5[1];
        ++v5;
        LODWORD(v6) = v10;
      }

      *a3++ = v6;
      v11 = v5[1];
      ++v5;
      LODWORD(v6) = v11;
    }

    *a3++ = v6;
    LODWORD(v6) = v5[1];
    goto LABEL_12;
  }

  if (v7)
  {
LABEL_12:
    *a3 = v6;
  }

  a1[3] = v8;
  return 1;
}

uint64_t MIDI::LegacyPacketList::write_UP<MIDI::MIDIPacketList_Deliverer::operator()(MIDI::EventList const*)::{lambda(unsigned long long,MIDI::UniversalPacket const&)#2}::operator() const(unsigned long long,MIDI::UniversalPacket const&)::{lambda(MIDI::UniversalPacket const&)#1}::operator() const(MIDI::UniversalPacket const&)::{lambda(std::span<unsigned char const,18446744073709551615ul>)#1}>(uint64_t result, unsigned int a2, uint64_t a3, uint64_t *a4)
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = BYTE2(result);
  v7 = result >> 28;
  v8 = &v34;
  if (result >> 28 == 3)
  {
    v21 = WORD1(result) & 0xF;
    if (v21 > 6 || BYTE2(result) > 0x3Fu)
    {
      return result;
    }

    v22 = (result >> 20) + 3;
    v32[0] = bswap32(result);
    v32[1] = bswap32(a2);
    if (BYTE2(result) > 0x1Fu)
    {
      v9 = 0;
      p_dst = &__dst;
      if (!v21)
      {
        goto LABEL_43;
      }
    }

    else
    {
      __dst = -16;
      v9 = 1;
      p_dst = &v34;
      if (!v21)
      {
LABEL_43:
        if ((v22 & 2) != 0)
        {
          *(&__dst + v9++) = -9;
        }

        v25 = *a4;
        v11 = *(a3 + 56);
        v26 = a3 + 1088;
        v27 = *(a3 + 64);
        if (v27)
        {
          if (*v11 == v25)
          {
            v28 = *(v11 + 8);
            if (*(v28 + v11 + 10 - 1) != 247 && __dst != 240)
            {
              if (v11 + 10 + v9 + v28 <= v26)
              {
LABEL_56:
                result = v11 + v28 + 10;
                v29 = &__dst;
                if (v9 <= 1)
                {
                  if (!v9)
                  {
LABEL_80:
                    *(v11 + 8) += v9;
                    goto LABEL_81;
                  }

                  if (v9 == 1)
                  {
LABEL_79:
                    *result = *v29;
                    goto LABEL_80;
                  }

                  goto LABEL_85;
                }

                if (v9 != 2)
                {
                  if (v9 != 3)
                  {
                    if (v9 == 4)
                    {
LABEL_74:
                      *result++ = __dst;
LABEL_77:
                      v31 = *v8;
                      v30 = v8 + 1;
                      *result++ = v31;
                      goto LABEL_78;
                    }

LABEL_85:
                    result = memmove(result, &__dst, v9);
                    goto LABEL_80;
                  }

LABEL_76:
                  v8 = &__dst;
                  goto LABEL_77;
                }

LABEL_75:
                v30 = &__dst;
LABEL_78:
                *result++ = *v30;
                v29 = v30 + 1;
                goto LABEL_79;
              }

              goto LABEL_54;
            }
          }

          else
          {
            v28 = *(v11 + 8);
          }

          v11 = (v11 + v28 + 13) & 0xFFFFFFFFFFFFFFFCLL;
        }

        if (v11 + v9 + 10 <= v26)
        {
          LODWORD(v28) = 0;
          *(a3 + 64) = v27 + 1;
          *v11 = v25;
          *(v11 + 8) = 0;
          goto LABEL_56;
        }

LABEL_54:
        result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v25, &__dst, v9);
LABEL_68:
        v11 = result;
LABEL_81:
        *(a3 + 56) = v11;
        return result;
      }
    }

    memcpy(p_dst, v32 + 2, v21);
    v9 += (v21 - 1) + 1;
    goto LABEL_43;
  }

  if (v7 == 2)
  {
    v15 = result & 0xE00000;
    __dst = BYTE2(result);
    v34 = BYTE1(result) & 0x7F;
    if ((result & 0xE00000) == 0xC00000)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    if (v15 != 12582912)
    {
      v35 = result & 0x7F;
    }

    v17 = *a4;
    result = *(a3 + 56);
    v18 = a3 + 1088;
    v19 = *(a3 + 64);
    if (v19)
    {
      if (*result == v17)
      {
        v20 = *(result + 8);
        if (v6 != 240 && *(v20 + result + 10 - 1) != 247)
        {
          if (result + 10 + v16 + v20 <= v18)
          {
            goto LABEL_36;
          }

          goto LABEL_34;
        }
      }

      else
      {
        v20 = *(result + 8);
      }

      result = (result + v20 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (result + v16 + 10 <= v18)
    {
      LODWORD(v20) = 0;
      *(a3 + 64) = v19 + 1;
      *result = v17;
      *(result + 8) = 0;
LABEL_36:
      v24 = (result + v20 + 10);
      if (v15 == 12582912)
      {
        v8 = &__dst;
      }

      else
      {
        *v24 = __dst;
        v24 = (result + v20 + 11);
      }

      *v24 = *v8;
      v24[1] = v8[1];
      *(result + 8) += v16;
      goto LABEL_40;
    }

LABEL_34:
    result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v17, &__dst, v16);
LABEL_40:
    *(a3 + 56) = result;
    return result;
  }

  if (v7 == 1 && BYTE2(result) >= 0xF0u && ((0x22B1uLL >> (BYTE2(result) + 16)) & 1) == 0)
  {
    v9 = MIDI::_gMessageSize[BYTE2(result) - 240];
    __dst = BYTE2(result);
    if (((0xDD40uLL >> (BYTE2(result) + 16)) & 1) == 0)
    {
      v34 = BYTE1(result) & 0x7F;
      if (BYTE2(result) == 242)
      {
        v35 = result & 0x7F;
      }
    }

    v10 = *a4;
    v11 = *(a3 + 56);
    v12 = a3 + 1088;
    v13 = *(a3 + 64);
    if (v13)
    {
      if (*v11 == v10)
      {
        v14 = *(v11 + 8);
        if (BYTE2(result) != 240 && *(v14 + v11 + 10 - 1) != 247)
        {
          if (v11 + 10 + v14 + v9 <= v12)
          {
LABEL_70:
            result = v11 + v14 + 10;
            v29 = &__dst;
            if (v9 <= 1)
            {
              if (!v9)
              {
                goto LABEL_80;
              }

              goto LABEL_79;
            }

            if (v9 != 2)
            {
              if (v9 != 3)
              {
                if (v9 == 4)
                {
                  goto LABEL_74;
                }

                goto LABEL_85;
              }

              goto LABEL_76;
            }

            goto LABEL_75;
          }

LABEL_67:
          result = MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(a3, v10, &__dst, v9);
          goto LABEL_68;
        }
      }

      else
      {
        v14 = *(v11 + 8);
      }

      v11 = (v11 + v14 + 13) & 0xFFFFFFFFFFFFFFFCLL;
    }

    if (v11 + v9 + 10 <= v12)
    {
      LODWORD(v14) = 0;
      *(a3 + 64) = v13 + 1;
      *v11 = v10;
      *(v11 + 8) = 0;
      goto LABEL_70;
    }

    goto LABEL_67;
  }

  return result;
}

uint64_t MIDI::PacketizerBase<MIDI::LegacyPacketList>::begin_new_packet(uint64_t a1, uint64_t a2, char *a3, int64_t a4)
{
  if (*(a1 + 64))
  {
    v16 = (a1 + 64);
    (**a1)(a1 + 8, &v16);
    *(a1 + 64) = 0;
    if (a4 <= 1010)
    {
      *(a1 + 64) = 1;
      v9 = a1 + 68;
      *(a1 + 68) = a2;
      *(a1 + 76) = 0;
      v10 = (a1 + 78);
      if (a4 <= 1)
      {
        if (!a4)
        {
LABEL_15:
          v14 = 0;
          goto LABEL_16;
        }

        if (a4 == 1)
        {
          goto LABEL_13;
        }
      }

      else
      {
        switch(a4)
        {
          case 2:
LABEL_10:
            v13 = *a3++;
            *v10++ = v13;
LABEL_13:
            *v10 = *a3;
            v14 = *(a1 + 76);
LABEL_16:
            *(a1 + 76) = v14 + a4;
            return v9;
          case 3:
LABEL_9:
            v12 = *a3++;
            *v10++ = v12;
            goto LABEL_10;
          case 4:
            v11 = *a3++;
            v10 = (a1 + 79);
            *(a1 + 78) = v11;
            goto LABEL_9;
        }
      }

      memmove(v10, a3, a4);
      goto LABEL_15;
    }
  }

  v8 = malloc_type_malloc(a4 + 14, 0x100004013C699A6uLL);
  *v8 = 1;
  *(v8 + 4) = a2;
  *(v8 + 6) = a4;
  memcpy(v8 + 14, a3, a4);
  v16 = v8;
  (**a1)(a1 + 8, &v16);
  free(v8);
  v9 = a1 + 68;
  *(a1 + 56) = a1 + 68;
  *(a1 + 64) = 0;
  return v9;
}

uint64_t MIDIDriverPlugin_CFPlugin::Monitor(uint64_t this, uint64_t a2, const MIDIPacketList *a3)
{
  if (*(this + 64) >= 2)
  {
    return (*(**(this + 72) + 88))(*(this + 72), a2, a3);
  }

  return this;
}

uint64_t MIDIDriverPlugin_CFPlugin::Flush(uint64_t this, uint64_t a2, void *a3, void *a4)
{
  if (*(this + 64) >= 2)
  {
    return (*(**(this + 72) + 80))(*(this + 72), a2, a3, a4);
  }

  return this;
}

uint64_t MIDIDriverPlugin_CFPlugin::PrintObject(MIDIDriverPlugin_CFPlugin *this, __sFILE *a2)
{
  fprintf(a2, "<%s 0x%x [%p]>", "MIDIDriverPlugin_CFPlugin", *(this + 2), this);
  fprintf(a2, " parent=0x%X", *(this + 2));

  return fputc(10, a2);
}

void MIDIDriverPlugin_CFPlugin::~MIDIDriverPlugin_CFPlugin(MIDIDriverPlugin_CFPlugin *this)
{
  MIDIDriverPlugin_CFPlugin::~MIDIDriverPlugin_CFPlugin(this);

  JUMPOUT(0x2383C8250);
}

{
  v2 = *(this + 9);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(this + 10))
  {
    v3 = *(this + 11);
    *(this + 10) = 0;
    *(this + 11) = 0;
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v3);
    }
  }

  v4 = *(this + 11);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *this = &unk_284A46880;
  XCFObject<__CFString const*>::~XCFObject(this + 48);
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

uint64_t XCFObject<__CFString const*>::~XCFObject(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    v2 = *a1;
    if (*a1)
    {
      CFRelease(v2);
    }
  }

  return a1;
}

void MIDIDriverPlugin::~MIDIDriverPlugin(MIDIDriverPlugin *this)
{
  *this = &unk_284A46880;
  XCFObject<__CFString const*>::~XCFObject(this + 48);
  *this = &unk_284A46EC0;
  XCFObject<__CFDictionary const*>::~XCFObject(this + 24);

  BaseOpaqueObject::~BaseOpaqueObject(this);
}

void CFPlugin::~CFPlugin(CFPlugin *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*this)
  {
    CFRelease(*this);
  }
}

uint64_t applesauce::raii::v1::detail::ScopeGuard<CFPlugin::open(__CFURL const*,__CFUUID const*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(uint64_t a1)
{
  v2 = **a1;
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = **(a1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

DIR *findPluginsInDirectory(const char *a1, uint64_t *a2)
{
  v55 = *MEMORY[0x277D85DE8];
  result = opendir(a1);
  if (result)
  {
    v5 = result;
    gDriverPlugin();
    v6 = &IOKittenLibraryCore(char **)::frameworkLibrary;
    v7 = gDriverPlugin(void)::drvtbl;
    if (os_log_type_enabled(gDriverPlugin(void)::drvtbl, OS_LOG_TYPE_DEBUG))
    {
      LODWORD(buf.d_ino) = 136315650;
      *(&buf.d_ino + 4) = "MIDIDriverPlugin_CFPlugin.cpp";
      WORD2(buf.d_seekoff) = 1024;
      *(&buf.d_seekoff + 6) = 351;
      buf.d_namlen = 2080;
      *&buf.d_type = a1;
      _os_log_impl(&dword_2371C2000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d Scanning directory %s for plugins", &buf, 0x1Cu);
    }

    v8 = strlen(a1);
    v9 = CFURLCreateFromFileSystemRepresentation(0, a1, v8, 1u);
    if (v9)
    {
      v10 = ".plugin";
      while (1)
      {
        v47 = 0;
        if (readdir_r(v5, &buf, &v47))
        {
          break;
        }

        v11 = v47;
        if (!v47)
        {
          break;
        }

        v12 = strlen(v47->d_name);
        if ((v12 + 14) >= 21)
        {
          v13 = v12;
          if (!strcmp(&v47->d_seekoff + v12 + 6, v10))
          {
            v14 = MEMORY[0x2383C7AC0](0, v11->d_name, v13, 0, v9);
            if (v14)
            {
              v15 = CFUUIDGetConstantUUIDWithBytes(0, 0xECu, 0xDEu, 0x95u, 0x74u, 0xFu, 0xE4u, 0x11u, 0xD4u, 0xBBu, 0x1Au, 0, 0x50u, 0xE4u, 0xCEu, 0xA5u, 0x26u);
              theArray = 0;
              v50 = 0;
              v48[0] = &theArray;
              v48[1] = &v50;
              v16 = CFPlugInCreate(0, v14);
              v50 = v16;
              if (v16 && (FactoriesForPlugInTypeInPlugIn = CFPlugInFindFactoriesForPlugInTypeInPlugIn(v15, v16), (theArray = FactoriesForPlugInTypeInPlugIn) != 0) && CFArrayGetCount(FactoriesForPlugInTypeInPlugIn))
              {
                v18 = v10;
                ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
                v20 = v50;
                *v51 = v14;
                CFRetain(v14);
                *&v51[8] = v20;
                CFRetain(v20);
                *&v51[16] = ValueAtIndex;
                CFRetain(ValueAtIndex);
                *&v44 = v14;
                *(&v44 + 1) = v20;
                memset(v51, 0, 24);
                cf1 = ValueAtIndex;
                v46 = 1;
                CFPlugin::~CFPlugin(v51);
                v10 = v18;
              }

              else
              {
                LOBYTE(v44) = 0;
                v46 = 0;
              }

              applesauce::raii::v1::detail::ScopeGuard<CFPlugin::open(__CFURL const*,__CFUUID const*)::$_0,applesauce::raii::v1::detail::StackExitPolicy>::~ScopeGuard(v48);
              if (v46 == 1)
              {
                v21 = *a2;
                v22 = a2[1];
                if (*a2 == v22)
                {
LABEL_21:
                  gDriverPlugin();
                  v24 = v6[5];
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
                  {
                    *v51 = 136315906;
                    *&v51[4] = "MIDIDriverPlugin_CFPlugin.cpp";
                    *&v51[12] = 1024;
                    *&v51[14] = 386;
                    *&v51[18] = 2112;
                    *&v51[20] = v14;
                    v52 = 2112;
                    d_name = cf1;
                    _os_log_impl(&dword_2371C2000, v24, OS_LOG_TYPE_DEBUG, "%25s:%-5d Identified MIDI plugin: %@ (%@)", v51, 0x26u);
                  }

                  v25 = a2[1];
                  v26 = a2[2];
                  if (v25 >= v26)
                  {
                    v29 = 0xAAAAAAAAAAAAAAABLL * ((v25 - *a2) >> 3);
                    v30 = v29 + 1;
                    if (v29 + 1 > 0xAAAAAAAAAAAAAAALL)
                    {
                      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
                    }

                    v31 = 0xAAAAAAAAAAAAAAABLL * ((v26 - *a2) >> 3);
                    if (2 * v31 > v30)
                    {
                      v30 = 2 * v31;
                    }

                    if (v31 >= 0x555555555555555)
                    {
                      v32 = 0xAAAAAAAAAAAAAAALL;
                    }

                    else
                    {
                      v32 = v30;
                    }

                    if (v32)
                    {
                      if (v32 <= 0xAAAAAAAAAAAAAAALL)
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v33 = 24 * v29;
                    *v33 = 0;
                    *(v33 + 8) = 0;
                    *(v33 + 16) = 0;
                    if ((24 * v29) != &v44)
                    {
                      *v33 = v44;
                      v44 = 0uLL;
                      *(24 * v29 + 0x10) = cf1;
                      cf1 = 0;
                    }

                    v34 = *a2;
                    v35 = a2[1];
                    v36 = v33 + *a2 - v35;
                    if (v35 != *a2)
                    {
                      v37 = *a2;
                      v38 = (v33 + *a2 - v35);
                      do
                      {
                        *v38 = 0;
                        *(v38 + 1) = 0;
                        *(v38 + 2) = 0;
                        if (v38 != v37)
                        {
                          *v38 = *v37;
                          *v37 = 0;
                          v39 = *(v38 + 1);
                          *(v38 + 1) = *(v37 + 1);
                          *(v37 + 1) = v39;
                          v40 = *(v38 + 2);
                          *(v38 + 2) = *(v37 + 2);
                          *(v37 + 2) = v40;
                        }

                        v37 = (v37 + 24);
                        v38 = (v38 + 24);
                      }

                      while (v37 != v35);
                      do
                      {
                        CFPlugin::~CFPlugin(v34);
                        v34 = (v41 + 24);
                      }

                      while (v34 != v35);
                    }

                    v27 = v33 + 24;
                    v42 = *a2;
                    *a2 = v36;
                    *(a2 + 1) = (v33 + 24);
                    if (v42)
                    {
                      operator delete(v42);
                    }

                    v6 = &IOKittenLibraryCore(char **)::frameworkLibrary;
                    v10 = ".plugin";
                  }

                  else
                  {
                    *v25 = 0;
                    *(v25 + 8) = 0;
                    *(v25 + 16) = 0;
                    if (v25 != &v44)
                    {
                      *v25 = v44;
                      v44 = 0uLL;
                      *(v25 + 16) = cf1;
                      cf1 = 0;
                    }

                    v27 = v25 + 24;
                  }

                  a2[1] = v27;
                }

                else
                {
                  v23 = cf1;
                  while (!CFEqual(v23, *(v21 + 2)))
                  {
                    v21 = (v21 + 24);
                    if (v21 == v22)
                    {
                      goto LABEL_21;
                    }
                  }
                }
              }

              if (v46 == 1)
              {
                CFPlugin::~CFPlugin(&v44);
              }

              CFRelease(v14);
            }

            else
            {
              gDriverPlugin();
              v28 = v6[5];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
              {
                *v51 = 136315906;
                *&v51[4] = "MIDIDriverPlugin_CFPlugin.cpp";
                *&v51[12] = 1024;
                *&v51[14] = 373;
                *&v51[18] = 2080;
                *&v51[20] = a1;
                v52 = 2080;
                d_name = v47->d_name;
                _os_log_impl(&dword_2371C2000, v28, OS_LOG_TYPE_INFO, "%25s:%-5d CFURLCreateWithFileSystemPathRelativeToBase failed for '%s/%s'", v51, 0x26u);
              }
            }
          }
        }
      }

      CFRelease(v9);
    }

    else
    {
      gDriverPlugin();
      v43 = gDriverPlugin(void)::drvtbl;
      if (os_log_type_enabled(gDriverPlugin(void)::drvtbl, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf.d_ino) = 136315650;
        *(&buf.d_ino + 4) = "MIDIDriverPlugin_CFPlugin.cpp";
        WORD2(buf.d_seekoff) = 1024;
        *(&buf.d_seekoff + 6) = 354;
        buf.d_namlen = 2080;
        *&buf.d_type = a1;
        _os_log_impl(&dword_2371C2000, v43, OS_LOG_TYPE_INFO, "%25s:%-5d CFURLCreateWithFileSystemPath failed for '%s'", &buf, 0x1Cu);
      }
    }

    return closedir(v5);
  }

  return result;
}

void sub_2371E3904(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a16)
  {
    CFPlugin::~CFPlugin(&a13);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<CFPlugin>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        CFPlugin::~CFPlugin((v4 - 24));
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void gDriverPlugin(void)
{
  {
    gDriverPlugin(void)::drvtbl = os_log_create("com.apple.coremidi", "drvplug");
  }
}

void driverMap(void)
{
  {
    qword_27DE97048 = 0;
    qword_27DE97040 = 0;
    driverMap(void)::sDriverMap = &qword_27DE97040;
  }
}

MIDIDriverPlugin_CFPlugin **std::unique_ptr<MIDIDriverPlugin_CFPlugin>::~unique_ptr[abi:ne200100](MIDIDriverPlugin_CFPlugin **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    MIDIDriverPlugin_CFPlugin::~MIDIDriverPlugin_CFPlugin(v2);
    MEMORY[0x2383C8250]();
  }

  return a1;
}

void std::vector<std::unique_ptr<MIDIDriverPlugin>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::unique_ptr<MIDIDriverPlugin>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *std::vector<std::unique_ptr<MIDIDriverPlugin>>::clear[abi:ne200100](void *result)
{
  v1 = result;
  v2 = *result;
  v3 = result[1];
  while (v3 != v2)
  {
    v4 = *--v3;
    result = v4;
    *v3 = 0;
    if (v4)
    {
      result = (*(*result + 8))(result);
    }
  }

  v1[1] = v2;
  return result;
}

void *MIDI::MIDIPacketList_Deliverer::MIDIPacketList_Deliverer(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = &caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::empty;
  *a1 = &unk_284A46348;
  a1[1] = v3;
  (*(v3 + 16))(a1 + 2, a2 + 1);
  bzero(a1 + 8, 0x300uLL);
  return a1;
}

void MIDI::MIDIPacketList_Deliverer::~MIDIPacketList_Deliverer(MIDI::MIDIPacketList_Deliverer *this)
{
  *this = &unk_284A46348;
  (*(*(this + 1) + 24))(this + 16);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46348;
  (*(*(this + 1) + 24))(this + 16);
}

uint64_t caulk::inplace_function_detail::rt_vtable<void,MIDI::LegacyPacketList const*>::rt_vtable<MIDIDriverPlugin_CFPlugin::MIDIDriverPlugin_CFPlugin(__CFString const*,__CFString const*,MIDIDriverInterface **,int)::{lambda(MIDIPacketList const*)#1}>(caulk::inplace_function_detail::wrapper<MIDIDriverPlugin_CFPlugin::MIDIDriverPlugin_CFPlugin(__CFString const*,__CFString const*,MIDIDriverInterface **,int)::{lambda(MIDIPacketList const*)#1}>)::{lambda(void *,MIDI::LegacyPacketList const*&&)#1}::__invoke(uint64_t *a1, void *a2)
{
  v2 = *a1;
  result = *(*a1 + 72);
  if (result)
  {
    return (*(*result + 88))(result, *(v2 + 96), *a2);
  }

  return result;
}

void std::__shared_ptr_emplace<MIDI::MIDIPacketList_Deliverer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A46238;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383C8250);
}

uint64_t driverRefToPlugin(MIDIDriverInterface **a1)
{
  driverMap();
  v2 = qword_27DE97040;
  if (!qword_27DE97040)
  {
    return 0;
  }

  v3 = &qword_27DE97040;
  do
  {
    v4 = *(v2 + 32);
    v5 = v4 >= a1;
    v6 = v4 < a1;
    if (v5)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * v6);
  }

  while (v2);
  if (v3 != &qword_27DE97040 && v3[4] <= a1)
  {
    return v3[5];
  }

  else
  {
    return 0;
  }
}

MIDIPacket *__cdecl MIDIPacketListAdd(MIDIPacketList *pktlist, ByteCount listSize, MIDIPacket *curPacket, MIDITimeStamp time, ByteCount nData, const Byte *data)
{
  v6 = nData;
  v7 = curPacket;
  v8 = (pktlist + listSize);
  if (pktlist->numPackets)
  {
    if (curPacket->timeStamp == time)
    {
      length = curPacket->length;
      if (curPacket->data[length - 1] != 247 && *data != 240)
      {
        if (&curPacket->data[length + nData] <= v8)
        {
LABEL_12:
          v10 = &v7->data[length];
          if (nData <= 1)
          {
            if (!nData)
            {
LABEL_22:
              v7->length += v6;
              return v7;
            }

            if (nData == 1)
            {
LABEL_21:
              *v10 = *data;
              goto LABEL_22;
            }
          }

          else
          {
            switch(nData)
            {
              case 2uLL:
LABEL_18:
                v13 = *data++;
                *v10++ = v13;
                goto LABEL_21;
              case 3uLL:
LABEL_17:
                v12 = *data++;
                *v10++ = v12;
                goto LABEL_18;
              case 4uLL:
                v11 = *data++;
                *v10 = v11;
                v10 = &v7->data[length + 1];
                goto LABEL_17;
            }
          }

          memmove(v10, data, nData);
          goto LABEL_22;
        }

        return 0;
      }
    }

    else
    {
      length = curPacket->length;
    }

    v7 = (&curPacket->data[length + 3] & 0xFFFFFFFFFFFFFFFCLL);
  }

  if (&v7->data[nData] <= v8)
  {
    LODWORD(length) = 0;
    ++pktlist->numPackets;
    v7->timeStamp = time;
    v7->length = 0;
    goto LABEL_12;
  }

  return 0;
}

MIDIEventPacket *__cdecl MIDIEventListInit(MIDIEventList *evtlist, MIDIProtocolID protocol)
{
  evtlist->protocol = protocol;
  evtlist->numPackets = 0;
  return evtlist->packet;
}

MIDIEventPacket *__cdecl MIDIEventListAdd(MIDIEventList *evtlist, ByteCount listSize, MIDIEventPacket *curPacket, MIDITimeStamp time, ByteCount wordCount, const UInt32 *words)
{
  v6 = curPacket;
  if (wordCount)
  {
    v7 = wordCount;
    v8 = (evtlist + listSize);
    v9 = *words & 0xF0000000;
    numPackets = evtlist->numPackets;
    if (curPacket && numPackets)
    {
      v11 = curPacket->wordCount;
      v12 = v11 >= 2;
      v13 = v11 - 2;
      if (v12 && curPacket->words[0] >> 28 == 3)
      {
        v14 = curPacket->words[v13];
        if (v14 >> 28 == 3)
        {
          v15 = (v14 >> 20) & 0xF;
        }

        else
        {
          v15 = 255;
        }

        if (v15)
        {
          v16 = v15 == 3;
        }

        else
        {
          v16 = 1;
        }

        v17 = v16;
        v18 = 1;
LABEL_20:
        v19 = v9 == 805306368;
        if (curPacket->timeStamp == time && ((v19 ^ v18) & 1) == 0 && (*words & 0xF0E00000) != 0x30000000 && (v17 & 1) == 0)
        {
LABEL_24:
          v20 = curPacket->wordCount;
          if (&curPacket->words[v20 + wordCount] <= v8)
          {
LABEL_31:
            v21 = &v6->words[v20];
            if (wordCount > 2)
            {
              if (wordCount != 3)
              {
                if (wordCount != 4)
                {
LABEL_43:
                  memmove(v21, words, 4 * wordCount);
                  goto LABEL_41;
                }

                v22 = *words++;
                *v21 = v22;
                v21 = &v6->words[v20 + 1];
              }

              v23 = *words++;
              *v21++ = v23;
            }

            else
            {
              if (wordCount == 1)
              {
LABEL_40:
                *v21 = *words;
LABEL_41:
                v6->wordCount += v7;
                return v6;
              }

              if (wordCount != 2)
              {
                goto LABEL_43;
              }
            }

            v24 = *words++;
            *v21++ = v24;
            goto LABEL_40;
          }

          return 0;
        }

        goto LABEL_27;
      }
    }

    else
    {
      if (!numPackets)
      {
        goto LABEL_28;
      }

      if (!curPacket)
      {
        if (v9 != 805306368)
        {
          goto LABEL_24;
        }

LABEL_27:
        v6 = &curPacket->words[curPacket->wordCount];
LABEL_28:
        if (&v6->words[wordCount] <= v8)
        {
          LODWORD(v20) = 0;
          evtlist->numPackets = numPackets + 1;
          v6->timeStamp = time;
          v6->wordCount = 0;
          goto LABEL_31;
        }

        return 0;
      }
    }

    v18 = 0;
    v17 = 0;
    goto LABEL_20;
  }

  return v6;
}

void MIDIEventListForEachEvent(const MIDIEventList *evtlist, MIDIEventVisitor visitor, void *visitorContext)
{
  v73 = *MEMORY[0x277D85DE8];
  numPackets = evtlist->numPackets;
  if (numPackets)
  {
    packet = evtlist->packet;
    while (1)
    {
      words = packet->words;
      wordCount = packet->wordCount;
      if (wordCount)
      {
        break;
      }

      v67 = 0;
LABEL_132:
      packet = &words[v67];
      if (!--numPackets)
      {
        return;
      }
    }

    v68 = numPackets;
    timeStamp = packet->timeStamp;
    v10 = &words[wordCount];
    while (1)
    {
      v11 = *words;
      v12 = v11 >> 28;
      if (v11 >> 28 > 2)
      {
        if (v12 != 3)
        {
          if (v12 == 4)
          {
            v49 = BYTE3(v11) & 0xF;
            LODWORD(v50) = (v11 >> 20) & 0xF;
            v51 = (v11 >> 16) & 0xF;
            if (v50 > 7)
            {
              if (((v11 >> 20) & 0xF) > 0xB)
              {
                if (((v11 >> 20) & 0xF) > 0xD)
                {
                  v52 = 0;
                  if (v50 == 14)
                  {
                    LOWORD(v56) = 0;
                    v55 = 0;
                    v54 = words[1];
                    LODWORD(v11) = v54 >> 8;
                    v53 = v54 & 0xFFFF0000;
                    v65 = 4;
                    LODWORD(v50) = 14;
                  }

                  else
                  {
                    v53 = 0;
                    LOWORD(v56) = 0;
                    v55 = 0;
                    v54 = (v11 >> 8) & 0x7F;
                    v65 = 4;
                    LODWORD(v50) = 15;
                  }
                }

                else
                {
                  v52 = 0;
                  if (v50 == 12)
                  {
                    v53 = 0;
                    v55 = 0;
                    v54 = *words;
                    LODWORD(v11) = HIBYTE(words[1]) & 0x7F;
                    v56 = words[1] & 0x7F | (((words[1] >> 8) & 0x7F) << 7);
                    v65 = 4;
                    LODWORD(v50) = 12;
                  }

                  else
                  {
                    LOWORD(v56) = 0;
                    v55 = 0;
                    v54 = words[1];
                    LODWORD(v11) = v54 >> 8;
                    v53 = v54 & 0xFFFF0000;
                    v65 = 4;
                    LODWORD(v50) = 13;
                  }
                }

                goto LABEL_128;
              }

              if ((v50 - 8) < 2)
              {
                v52 = 0;
                v55 = 0;
                v54 = (v11 >> 8) & 0x7F;
                v56 = words[1];
                v53 = v56 & 0xFFFF0000;
                goto LABEL_116;
              }

              v52 = 0;
              v53 = 0;
              v54 = (v11 >> 8) & 0x7F;
              v56 = words[1];
              v55 = v56 & 0xFFFF0000;
              v65 = 4;
              if (v50 == 10)
              {
                LODWORD(v50) = 10;
              }

              else
              {
                LODWORD(v50) = 11;
              }
            }

            else
            {
              if (((v11 >> 20) & 0xF) <= 5)
              {
                v52 = 0;
                v53 = 0;
                v54 = (v11 >> 8) & 0x7F;
                if ((v50 - 2) < 4)
                {
                  LOBYTE(v11) = v11 & 0x7F;
                }

                v56 = words[1];
                v55 = v56 & 0xFFFF0000;
LABEL_116:
                v65 = 4;
LABEL_128:
                LODWORD(v71) = v65;
                BYTE4(v71) = v49;
                *(&v71 + 5) = 0;
                HIBYTE(v71) = 0;
                *v72 = v52 | (v51 << 32) | v50;
                *&v72[8] = v53 | (v11 << 8) | v54;
                *&v72[12] = v55 | v56;
                *&v72[16] = 0;
                (visitor)(visitorContext, timeStamp, &v71);
                goto LABEL_129;
              }

              if (v50 != 6)
              {
                LOBYTE(v54) = 0;
                LOBYTE(v11) = 0;
                v53 = 0;
                LOWORD(v56) = 0;
                v55 = 0;
                v50 = *words;
                v51 = BYTE4(*words);
                v52 = *words & 0xFFFFFF0000000000;
                v65 = 255;
                goto LABEL_128;
              }

              v52 = 0;
              v53 = 0;
              v54 = (v11 >> 8) & 0x7F;
              v56 = words[1];
              v55 = v56 & 0xFFFF0000;
              v65 = 4;
              LODWORD(v50) = 6;
            }

            LOBYTE(v11) = 0;
            goto LABEL_128;
          }

          if (v12 != 5)
          {
LABEL_54:
            __dst = 0uLL;
            v70 = 0;
            if (MIDI::UniversalPacket::word_sizes[*words >> 28])
            {
              memmove(&__dst, words, 4 * MIDI::UniversalPacket::word_sizes[*words >> 28]);
            }

            v71 = 0xFF000000FFLL;
            *v72 = __dst;
            *&v72[16] = v70;
            (visitor)(visitorContext, timeStamp, &v71);
            goto LABEL_129;
          }

          v23 = (v11 >> 20) & 0xF;
          *(&__dst + 5) = 0;
          *&__dst = 0;
          if (v23 < 4)
          {
            v24 = WORD1(v11) & 0xF;
            v25 = *(words + 3);
            v26 = *(words + 1);
            v27 = v11 >> 8;
            goto LABEL_109;
          }

          if (v23 - 8 >= 2)
          {
            v23 = *words;
            LOBYTE(v24) = *(words + 4);
            LOBYTE(v27) = *(words + 5);
            v66 = *(words + 6);
            WORD4(__dst) = *(words + 7);
            *&__dst = v66;
            v64 = 255;
          }

          else
          {
            v24 = WORD1(v11) & 0xF;
            LOBYTE(v27) = *(words + 2);
            v25 = *(words + 3);
            v26 = *(words + 1);
LABEL_109:
            *(&__dst + 5) = v26;
            *&__dst = v25;
            v64 = 5;
          }

          LODWORD(v71) = v64;
          BYTE4(v71) = BYTE3(v11) & 0xF;
          *(&v71 + 5) = 0;
          HIBYTE(v71) = 0;
          *v72 = v23;
          v72[4] = v24;
          v72[5] = v27;
          *&v72[6] = __dst;
          *&v72[11] = *(&__dst + 5);
          v72[19] = 0;
          (visitor)(visitorContext, timeStamp, &v71);
          goto LABEL_129;
        }

        v35 = words[1];
        LODWORD(v71) = 3;
        BYTE4(v71) = BYTE3(v11) & 0xF;
        *(&v71 + 5) = 0;
        HIBYTE(v71) = 0;
        *v72 = (v11 >> 20) & 0xF;
        v72[4] = BYTE2(v11) & 0xF;
        v72[5] = BYTE1(v11) & 0x7F;
        v72[6] = v11 & 0x7F;
        v72[7] = HIBYTE(v35) & 0x7F;
        v72[8] = BYTE2(v35) & 0x7F;
        v72[9] = BYTE1(v35) & 0x7F;
        *&v72[10] = v35 & 0x7F;
        (visitor)(visitorContext, timeStamp, &v71);
      }

      else
      {
        switch(v12)
        {
          case 0u:
            v28 = (v11 >> 20) & 0xF;
            v29 = *words;
            if (v28 == 1)
            {
              v30 = *words;
            }

            else
            {
              v30 = 0;
            }

            if (v28 == 1)
            {
              LODWORD(v11) = 1;
              v31 = 0;
            }

            else
            {
              v31 = 255;
            }

            v32 = v28 == 2;
            if (v28 == 2)
            {
              v33 = 0;
            }

            else
            {
              v33 = v31;
            }

            LODWORD(v71) = v33;
            BYTE4(v71) = -1;
            *(&v71 + 5) = 0;
            HIBYTE(v71) = 0;
            if (v32)
            {
              LODWORD(v11) = 2;
            }

            *v72 = v11;
            if (v32)
            {
              v34 = v29;
            }

            else
            {
              v34 = v30;
            }

            *&v72[4] = v34;
            *&v72[6] = 0;
            *&v72[12] = 0;
            (visitor)(visitorContext, timeStamp, &v71);
            break;
          case 1u:
            v36 = BYTE3(v11) & 0xF;
            v37 = BYTE2(v11);
            v38 = (v11 >> 8) & 0x7F;
            v39 = (v11 << 7) | v38;
            v40 = (v11 >> 1) & 0x3F;
            v41 = BYTE2(v11) == 241;
            if (BYTE2(v11) == 241)
            {
              LODWORD(v11) = 241;
              v42 = v38;
            }

            else
            {
              v42 = 0;
            }

            if (v41)
            {
              v43 = 1;
            }

            else
            {
              v43 = 255;
            }

            if (v37 == 242)
            {
              LODWORD(v11) = 242;
              v44 = 1;
            }

            else
            {
              v39 = v42;
              LOWORD(v40) = 0;
              v44 = v43;
            }

            v45 = v37 == 243;
            if (v37 == 243)
            {
              LODWORD(v11) = 243;
              v46 = v38;
            }

            else
            {
              v46 = v39;
            }

            if (v45)
            {
              v47 = 0;
            }

            else
            {
              v47 = v40;
            }

            if (v45)
            {
              v48 = 1;
            }

            else
            {
              v48 = v44;
            }

            LODWORD(v71) = v48;
            BYTE4(v71) = v36;
            *(&v71 + 5) = 0;
            HIBYTE(v71) = 0;
            *v72 = v11;
            *&v72[4] = v46 | (v47 << 8);
            *&v72[6] = 0;
            *&v72[12] = 0;
            (visitor)(visitorContext, timeStamp, &v71);
            break;
          case 2u:
            v13 = (v11 >> 20) & 0xF;
            if (v13 > 0xB)
            {
              v57 = (v11 >> 8) & 0x7F;
              v58 = (v11 << 7) | v57;
              v59 = (v11 >> 1) & 0x3F;
              if (v13 == 14)
              {
                v60 = 14;
              }

              else
              {
                v60 = *words;
              }

              if (v13 == 14)
              {
                v61 = 2;
              }

              else
              {
                v58 = 0;
                LOWORD(v59) = 0;
                v61 = 255;
              }

              if (v13 == 13)
              {
                v60 = 13;
                v62 = v57;
              }

              else
              {
                v62 = v58;
              }

              if (v13 == 13)
              {
                LOWORD(v59) = 0;
                v61 = 2;
              }

              v63 = v13 == 12;
              if (v13 == 12)
              {
                v15 = 12;
              }

              else
              {
                v15 = v60;
              }

              if (v13 == 12)
              {
                v20 = v57;
              }

              else
              {
                v20 = v62;
              }

              if (v63)
              {
                v21 = 0;
              }

              else
              {
                v21 = v59;
              }

              if (v63)
              {
                v22 = 2;
              }

              else
              {
                v22 = v61;
              }
            }

            else
            {
              v14 = v13 - 8;
              if (v13 == 11)
              {
                v15 = 11;
              }

              else
              {
                v15 = *words;
              }

              if (v13 == 11)
              {
                v16 = BYTE1(v11) & 0x7F;
              }

              else
              {
                v16 = 0;
              }

              if (v13 == 11)
              {
                v17 = v11 & 0x7F;
              }

              else
              {
                v17 = 0;
              }

              if (v13 == 11)
              {
                v18 = 2;
              }

              else
              {
                v18 = 255;
              }

              if (v13 == 10)
              {
                v15 = 10;
                v16 = BYTE1(v11) & 0x7F;
                v17 = v11 & 0x7F;
                v18 = 2;
              }

              v19 = v14 >= 2;
              if (v14 >= 2)
              {
                v20 = v16;
              }

              else
              {
                v15 = (v11 >> 20) & 0xF;
                v20 = BYTE1(v11) & 0x7F;
              }

              if (v14 >= 2)
              {
                v21 = v17;
              }

              else
              {
                v21 = v11 & 0x7F;
              }

              if (v19)
              {
                v22 = v18;
              }

              else
              {
                v22 = 2;
              }
            }

            LODWORD(v71) = v22;
            BYTE4(v71) = BYTE3(v11) & 0xF;
            *(&v71 + 5) = 0;
            HIBYTE(v71) = 0;
            *v72 = v15;
            v72[4] = BYTE2(v11) & 0xF;
            *&v72[5] = 0;
            v72[7] = 0;
            *&v72[8] = v20 | (v21 << 8);
            *&v72[10] = 0;
            *&v72[18] = 0;
            (visitor)(visitorContext, timeStamp, &v71);
            break;
          default:
            goto LABEL_54;
        }
      }

LABEL_129:
      words += MIDI::UniversalPacket::word_sizes[*words >> 28];
      if (words == v10)
      {
        v67 = packet->wordCount;
        numPackets = v68;
        words = packet->words;
        goto LABEL_132;
      }
    }
  }
}

void *std::vector<unsigned char>::reserve(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void std::vector<unsigned char>::push_back[abi:ne200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t midi::universal_sysex::identity_reply::identity_reply(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 4);
  v5 = *(a2 + 6);
  v6 = *(a2 + 8);
  v18 = 127;
  *a1 = 8257536;
  *(a1 + 8) = 0;
  v7 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  if (v3 >= 0x10000)
  {
    v8 = 12;
  }

  else
  {
    v8 = 14;
  }

  std::vector<unsigned char>::reserve((a1 + 8), v8);
  std::vector<unsigned char>::push_back[abi:ne200100](v7, &v18);
  v17 = 6;
  std::vector<unsigned char>::push_back[abi:ne200100](v7, &v17);
  std::vector<unsigned char>::push_back[abi:ne200100](v7, midi::universal_sysex::subtype::identity_reply);
  if (HIWORD(v3))
  {
    v13 = BYTE2(v3) & 0x7F;
    std::vector<unsigned char>::push_back[abi:ne200100](v7, &v13);
  }

  else
  {
    v16 = 0;
    std::vector<unsigned char>::push_back[abi:ne200100](v7, &v16);
    v15 = BYTE1(v3) & 0x7F;
    std::vector<unsigned char>::push_back[abi:ne200100](v7, &v15);
    v14 = v3 & 0x7F;
    std::vector<unsigned char>::push_back[abi:ne200100](v7, &v14);
  }

  if (v4 >> 14 || (__src[0] = v4 & 0x7F, __src[1] = v4 >> 7, std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7, *(a1 + 16), __src, v20, 2), v5 >> 14))
  {
    v10 = "value <= uint14_max";
    v11 = 224;
    v12 = "add_uint14";
    goto LABEL_13;
  }

  v20[0] = v5 & 0x7F;
  v20[1] = v5 >> 7;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7, *(a1 + 16), v20, v21, 2);
  if (v6 >> 28)
  {
    v10 = "value <= uint28_max";
    v11 = 238;
    v12 = "add_uint28";
LABEL_13:
    __assert_rtn(v12, "sysex.h", v11, v10);
  }

  v21[0] = v6 & 0x7F;
  v21[1] = (v6 >> 7) & 0x7F;
  v21[2] = (v6 >> 14) & 0x7F;
  v21[3] = v6 >> 21;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(v7, *(a1 + 16), v21, &v22, 4);
  return a1;
}

void sub_2371E4BF0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

swix::encode_message *swix::encode_message::encode_message(swix::encode_message *this, int a2)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  if (!v4)
  {
    v4 = xpc_null_create();
    if (!v4)
    {
      v5 = 0;
      goto LABEL_7;
    }
  }

  if (MEMORY[0x2383C9190](v4) != MEMORY[0x277D86468])
  {
    v5 = v4;
LABEL_7:
    v4 = xpc_null_create();
    goto LABEL_8;
  }

  xpc_retain(v4);
  v5 = v4;
LABEL_8:
  xpc_release(v5);
  *this = a2;
  *(this + 1) = 0;
  *(this + 1) = v4;
  v6 = xpc_null_create();
  *(this + 2) = 0;
  xpc_release(v6);
  xpc_dictionary_set_int64(*(this + 1), "#", *this);
  return this;
}

swix::encode_message *swix::encode_message::encode_message(swix::encode_message *this, xpc_object_t *a2)
{
  reply = xpc_dictionary_create_reply(a2[1]);
  if ((reply || (reply = xpc_null_create()) != 0) && MEMORY[0x2383C9190](reply) == MEMORY[0x277D86468])
  {
    xpc_retain(reply);
    v5 = reply;
  }

  else
  {
    v5 = xpc_null_create();
  }

  *this = -*a2;
  *(this + 1) = v5;
  v6 = xpc_null_create();
  *(this + 2) = 0;
  xpc_release(v6);
  xpc_release(reply);
  xpc_dictionary_set_int64(*(this + 1), "#", *this);
  return this;
}

xpc_object_t swix::encode_message::xpc_message(swix::encode_message *this, uint64_t a2)
{
  if (*(a2 + 4))
  {
    xpc_dictionary_set_uint64(*(a2 + 8), ".optionals", *(a2 + 16));
  }

  v4 = *(a2 + 8);
  *this = v4;
  if (v4)
  {
    return xpc_retain(v4);
  }

  result = xpc_null_create();
  *this = result;
  return result;
}

void gsl::narrowing_error::~narrowing_error(std::exception *this)
{
  std::exception::~exception(this);

  JUMPOUT(0x2383C8250);
}

uint64_t swix::decode_message::decode_message(uint64_t a1, xpc_object_t object, uint64_t a3)
{
  if (object)
  {
    v5 = object;
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  *a1 = 0;
  *(a1 + 8) = v5;
  v6 = xpc_null_create();
  *(a1 + 16) = 0;
  xpc_release(v6);
  *(a1 + 24) = a3;
  if (MEMORY[0x2383C9190](*(a1 + 8)) != MEMORY[0x277D86468])
  {
    v9 = *(a1 + 24);
    std::string::basic_string[abi:ne200100]<0>(&v12, "!(is_valid())");
    swix::decode_message::throw_error(v9, -304, &v12);
  }

  int64 = xpc_dictionary_get_int64(*(a1 + 8), "#");
  if (int64 != int64)
  {
    exception = __cxa_allocate_exception(8uLL);
    *exception = &unk_284A463D8;
  }

  *a1 = int64;
  if (!int64)
  {
    v11 = *(a1 + 24);
    std::string::basic_string[abi:ne200100]<0>(&v12, "!(mMessageID != 0)");
    swix::decode_message::throw_error(v11, -303, &v12);
  }

  return a1;
}

void sub_2371E4FE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  swix::message::~message(v15);
  _Unwind_Resume(a1);
}

uint64_t CADeprecated::CAMutex::Try(CADeprecated::CAMutex *this, BOOL *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  *a2 = 0;
  v4 = pthread_self();
  if (pthread_equal(v4, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    v5 = 0;
  }

  else
  {
    v6 = pthread_mutex_trylock((this + 24));
    if (v6 == 16)
    {
      v5 = 0;
      result = 0;
      goto LABEL_7;
    }

    if (v6)
    {
      v10[0] = HIBYTE(v6);
      v10[1] = BYTE2(v6);
      v10[2] = BYTE1(v6);
      v8 = v6;
      v10[3] = v6;
      v10[4] = 0;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v12 = "CAMutex.cpp";
        v13 = 1024;
        v14 = 224;
        v15 = 1024;
        v16 = v8;
        v17 = 2080;
        v18 = v10;
        _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Try: call to pthread_mutex_trylock failed, Error: %d (%s)", buf, 0x22u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_284A46E20;
      exception[2] = v8;
    }

    atomic_store(v4, this + 2);
    v5 = 1;
  }

  result = 1;
LABEL_7:
  *a2 = v5;
  return result;
}

void CADeprecated::CAMutex::Unlock(CADeprecated::CAMutex *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  if (pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire)))
  {
    atomic_store(0, this + 2);
    v3 = pthread_mutex_unlock((this + 24));
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v6 = 136315394;
        v7 = "CAMutex.cpp";
        v8 = 1024;
        v9 = 152;
        _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Unlock: Could not unlock the mutex", &v6, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_284A46E20;
      exception[2] = v4;
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315394;
    v7 = "CAMutex.cpp";
    v8 = 1024;
    v9 = 160;
    _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%25s:%-5d  CAMutex::Unlock: A thread is attempting to unlock a Mutex it doesn't own", &v6, 0x12u);
  }
}

BOOL CADeprecated::CAMutex::Lock(CADeprecated::CAMutex *this)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = pthread_self();
  v3 = pthread_equal(v2, atomic_load_explicit(this + 2, memory_order_acquire));
  if (!v3)
  {
    v4 = pthread_mutex_lock((this + 24));
    if (v4)
    {
      v6 = v4;
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v8 = 136315394;
        v9 = "CAMutex.cpp";
        v10 = 1024;
        v11 = 106;
        _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::Lock: Could not lock the mutex", &v8, 0x12u);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      *exception = &unk_284A46E20;
      exception[2] = v6;
    }

    atomic_store(v2, this + 2);
  }

  return v3 == 0;
}

void CADeprecated::CAMutex::~CAMutex(CADeprecated::CAMutex *this)
{
  CADeprecated::CAMutex::~CAMutex(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46460;
  pthread_mutex_destroy((this + 24));
}

CADeprecated::CAMutex *CADeprecated::CAMutex::CAMutex(CADeprecated::CAMutex *this, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  *this = &unk_284A46460;
  *(this + 1) = a2;
  *(this + 2) = 0;
  v3 = pthread_mutex_init((this + 24), 0);
  if (v3)
  {
    v5 = v3;
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "CAMutex.cpp";
      v9 = 1024;
      v10 = 56;
      _os_log_impl(&dword_2371C2000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%25s:%-5d  CAMutex::CAMutex: Could not init the mutex", &v7, 0x12u);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    *exception = &unk_284A46E20;
    exception[2] = v5;
  }

  return this;
}

void _InitMIDIProperties(void)
{
  if ((_InitMIDIProperties(void)::inited & 1) == 0)
  {
    _InitMIDIProperties(void)::inited = 1;
    kMIDIPropertyName = @"name";
    kMIDIPropertyManufacturer = @"manufacturer";
    kMIDIPropertyModel = @"model";
    kMIDIPropertyUniqueID = @"uniqueID";
    kMIDIPropertyDeviceID = @"deviceID";
    kMIDIPropertyReceiveChannels = @"receiveChannels";
    kMIDIPropertyMaxSysExSpeed = @"maxSysExSpeed";
    kMIDIPropertyAdvanceScheduleTimeMuSec = @"scheduleAheadMuSec";
    kMIDIPropertyDriverOwner = @"driver";
    kMIDIPropertyIsEmbeddedEntity = @"embedded";
    kMIDIPropertyConnectionUniqueID = @"connUniqueID";
    kMIDIPropertyOffline = @"offline";
    kMIDIPropertyPrivate = @"private";
    kMIDIPropertyIsBroadcast = @"broadcast";
    kMIDIPropertyNameConfiguration = @"nameConfiguration";
    kMIDIPropertyNameConfigurationDictionary = @"nameConfigurationDictionary";
    kMIDIPropertyImage = @"image";
    kMIDIPropertyTransmitChannels = @"transmitChannels";
    kMIDIPropertyDriverVersion = @"driverVersion";
    kMIDIPropertySupportsGeneralMIDI = @"supports General MIDI";
    kMIDIPropertySupportsMMC = @"supports MMC";
    kMIDIPropertyCanRoute = @"can route";
    kMIDIPropertyReceivesClock = @"receives clock";
    kMIDIPropertyReceivesMTC = @"receives MTC";
    kMIDIPropertyReceivesNotes = @"receives notes";
    kMIDIPropertyReceivesProgramChanges = @"receives program changes";
    kMIDIPropertyReceivesBankSelectMSB = @"receives bank select MSB";
    kMIDIPropertyReceivesBankSelectLSB = @"receives bank select LSB";
    kMIDIPropertyTransmitsClock = @"transmits clock";
    kMIDIPropertyTransmitsMTC = @"transmits MTC";
    kMIDIPropertyTransmitsNotes = @"transmits notes";
    kMIDIPropertyTransmitsProgramChanges = @"transmits program changes";
    kMIDIPropertyTransmitsBankSelectMSB = @"transmits bank select MSB";
    kMIDIPropertyTransmitsBankSelectLSB = @"transmits bank select LSB";
    kMIDIPropertyPanDisruptsStereo = @"pan disrupts stereo";
    kMIDIPropertyIsSampler = @"is sampler";
    kMIDIPropertyIsDrumMachine = @"is drum machine";
    kMIDIPropertyIsMixer = @"is mixer";
    kMIDIPropertyIsEffectUnit = @"is effect unit";
    kMIDIPropertyMaxReceiveChannels = @"max receive channels";
    kMIDIPropertyMaxTransmitChannels = @"max transmit channels";
    kMIDIPropertySingleRealtimeEntity = @"single realtime entity";
    kMIDIPropertyDriverDeviceEditorApp = @"editorApp";
    kMIDIPropertySupportsShowControl = @"supports MSC";
    kMIDIPropertyDisplayName = @"displayName";
    kMIDIPropertyProtocolID = @"protocol";
    kMIDIPropertyUMPActiveGroupBitmap = @"active group bitmap";
    kMIDIPropertyUMPCanTransmitGroupless = @"ump endpoint";
    kMIDIPropertyAssociatedEndpoint = @"associated endpoint";
  }
}

uint64_t std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t std::function<void ()(unsigned char,midi::sysex7 const&)>::operator()(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E14_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A482E8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E13_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A482A0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E12_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48258;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E11_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48210;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E10_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A481C8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E9_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48180;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E8_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48138;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E7_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A480F0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E6_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A480A8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E5_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48060;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E4_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A48018;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E3_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47FD0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E2_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47F88;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E1_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47F40;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E0_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47EF8;
  a2[1] = v2;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN6MIDICI14SysexCollectorC1ENS_8functionIFvhRKN4midi6sysex7EEEEENK3__0clIJLm0ELm1ELm2ELm3ELm4ELm5ELm6ELm7ELm8ELm9ELm10ELm11ELm12ELm13ELm14ELm15EEEEDaNS_16integer_sequenceImJXspT_EEEEEUlS8_E_NS_9allocatorISG_EEFvS8_EE7__cloneEPNS0_6__baseISJ_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A47EB0;
  a2[1] = v2;
  return result;
}

uint64_t MIDICI::SysexCollector::SysexCollector(uint64_t a1, uint64_t a2)
{
  v20[4] = *MEMORY[0x277D85DE8];
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

  v20[0] = &unk_284A47EB0;
  v20[1] = a1;
  v20[3] = v20;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 80, v20);
  v19[0] = &unk_284A47EF8;
  v19[1] = a1;
  v19[3] = v19;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 160, v19);
  v18[0] = &unk_284A47F40;
  v18[1] = a1;
  v18[3] = v18;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 240, v18);
  v17[0] = &unk_284A47F88;
  v17[1] = a1;
  v17[3] = v17;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 320, v17);
  v16[0] = &unk_284A47FD0;
  v16[1] = a1;
  v16[3] = v16;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 400, v16);
  v15[0] = &unk_284A48018;
  v15[1] = a1;
  v15[3] = v15;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 480, v15);
  v14[0] = &unk_284A48060;
  v14[1] = a1;
  v14[3] = v14;
  *(a1 + 512) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 560, v14);
  v13[0] = &unk_284A480A8;
  v13[1] = a1;
  v13[3] = v13;
  *(a1 + 592) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 640, v13);
  v12[0] = &unk_284A480F0;
  v12[1] = a1;
  v12[3] = v12;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 720, v12);
  v11[0] = &unk_284A48138;
  v11[1] = a1;
  v11[3] = v11;
  *(a1 + 752) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0u;
  *(a1 + 792) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 800, v11);
  v10[0] = &unk_284A48180;
  v10[1] = a1;
  v10[3] = v10;
  *(a1 + 832) = 0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 880, v10);
  v9[0] = &unk_284A481C8;
  v9[1] = a1;
  v9[3] = v9;
  *(a1 + 912) = 0;
  *(a1 + 920) = 0u;
  *(a1 + 936) = 0u;
  *(a1 + 952) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 960, v9);
  v8[0] = &unk_284A48210;
  v8[1] = a1;
  v8[3] = v8;
  *(a1 + 992) = 0;
  *(a1 + 1000) = 0u;
  *(a1 + 1016) = 0u;
  *(a1 + 1032) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 1040, v8);
  v7[0] = &unk_284A48258;
  v7[1] = a1;
  v7[3] = v7;
  *(a1 + 1072) = 0;
  *(a1 + 1080) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 1120, v7);
  v6[0] = &unk_284A482A0;
  v6[1] = a1;
  v6[3] = v6;
  *(a1 + 1152) = 0;
  *(a1 + 1160) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1192) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 1200, v6);
  v5[0] = &unk_284A482E8;
  v5[1] = a1;
  v5[3] = v5;
  *(a1 + 1232) = 0;
  *(a1 + 1240) = 0u;
  *(a1 + 1256) = 0u;
  *(a1 + 1272) = 16;
  std::__function::__value_func<void ()(midi::sysex7 const&)>::__value_func[abi:ne200100](a1 + 1280, v5);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v5);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v6);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v7);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v8);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v9);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v10);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v11);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v12);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v13);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v14);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v15);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v16);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v17);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v18);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v19);
  std::__function::__value_func<void ()(midi::sysex7 const&)>::~__value_func[abi:ne200100](v20);
  return a1;
}

void MIDICI::SysexCollector::feed(MIDICI::SysexCollector *this, const MIDIEventList *a2)
{
  numPackets = a2->numPackets;
  if (numPackets)
  {
    words = a2->packet[0].words;
    v4 = &a2->packet[0].words[a2->packet[0].wordCount];
  }

  else
  {
    words = 0;
    v4 = 0;
  }

  v26 = this + 32;
  while (1)
  {
    if (words == v4)
    {
      if (numPackets < 2)
      {
        return;
      }

      --numPackets;
      words = v4 + 3;
      v4 += v4[2] + 3;
    }

    if (words == v4)
    {
      break;
    }

    __dst[0] = 0;
    __dst[1] = 0;
    v5 = *words;
    v6 = v5 >> 28;
    if (MIDI::UniversalPacket::word_sizes[v5 >> 28])
    {
      memmove(__dst, words, 4 * MIDI::UniversalPacket::word_sizes[v5 >> 28]);
      LODWORD(v5) = *words;
      LODWORD(v6) = *words >> 28;
    }

    if (v6)
    {
      v7 = v6 == 15;
    }

    else
    {
      v7 = 1;
    }

    v8 = BYTE3(v5) & 0xF;
    if (v7)
    {
      v8 = 255;
    }

    v9 = LODWORD(__dst[0]);
    if (LODWORD(__dst[0]) >> 28 == 3)
    {
      v10 = BYTE2(__dst[0]) & 0xF0;
      if (v10 <= 0x30 && (HIWORD(LODWORD(__dst[0])) & 0xFu) <= 6)
      {
        v11 = &v26[80 * v8];
        if ((BYTE2(__dst[0]) & 0xE0 | 0x10) == 0x10)
        {
          if (v11[40] != 16)
          {
            midi::sysex::clear(v11);
            *(v11 + 20) = 16;
          }
        }

        else if (v11[40] != 32)
        {
          goto LABEL_53;
        }

        v12 = (v9 >> 16) & 0xF;
        v13 = *(v11 + 1);
        v14 = *(v11 + 3) - v13;
        if (*(v11 + 2) - v13 + v12 > v14)
        {
          v15 = *(v11 + 4);
          v16 = 2 * v14;
          if (v16 <= 0x80)
          {
            v17 = 128;
          }

          else
          {
            v17 = v16;
          }

          if (v15)
          {
            if (v15 < v17)
            {
              v17 = *(v11 + 4);
            }

            std::vector<unsigned char>::reserve(v11 + 1, v17);
            if ((*(v11 + 2) + v12 - *(v11 + 1)) > *(v11 + 3) - *(v11 + 1))
            {
              v11[40] = 16;
              goto LABEL_55;
            }
          }

          else
          {
            std::vector<unsigned char>::reserve(v11 + 1, v17);
          }
        }

        v27 = numPackets;
        if (v12)
        {
          v18 = -v12;
          v19 = 16;
          v20 = 2;
          while (1)
          {
            if (v20 == 16)
            {
              __assert_rtn("get_byte", "universal_packet.h", 432, "b < 16");
            }

            v21 = *(__dst + (v20 & 0xFFFFFFFFFFFFFFFCLL)) >> (~v19 & 0x18);
            v29 = v21;
            v22 = v11[41];
            if (v22 == 2)
            {
              break;
            }

            if (v22 != 1)
            {
              if (v11[41])
              {
                std::vector<unsigned char>::push_back[abi:ne200100]((v11 + 8), &v29);
                goto LABEL_46;
              }

              if (v21)
              {
                v23 = v21 << 16;
                goto LABEL_43;
              }

              v24 = 1;
LABEL_44:
              v11[41] = v24;
              goto LABEL_46;
            }

            *v11 = v21 << 8;
            v11[41] = 2;
LABEL_46:
            ++v20;
            v19 += 8;
            if (v18 + v20 == 2)
            {
              goto LABEL_49;
            }
          }

          v23 = *v11 | v21;
LABEL_43:
          *v11 = v23;
          v24 = 3;
          goto LABEL_44;
        }

LABEL_49:
        if (!v10 || v10 == 48)
        {
          v25 = *(v11 + 9);
          numPackets = v27;
          if (v25)
          {
            (*(*v25 + 48))(v25, v11);
          }

LABEL_53:
          midi::sysex::clear(v11);
          *(v11 + 20) = 16;
          goto LABEL_55;
        }

        v11[40] = 32;
        numPackets = v27;
      }
    }

LABEL_55:
    words += MIDI::UniversalPacket::word_sizes[*words >> 28];
  }
}

void sub_2371E85D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, void *a11, void *a12, void *a13, void *a14)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_2371E882C(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void gSysexSender(void)
{
  {
    gSysexSender(void)::ssxsnd = os_log_create("com.apple.coremidi", "ssxsnd");
  }
}

OSStatus MIDISendSysex(MIDISysexSendRequest *request)
{
  v9 = *MEMORY[0x277D85DE8];
  result = -50;
  if (request && (gAborting & 1) == 0)
  {
    request->reserved[0] = 0;
    gSysexSender();
    v3 = gSysexSender(void)::ssxsnd;
    if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "SysexSender.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 268;
      *&buf[18] = 2048;
      *&buf[20] = request;
      _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SendSysex(req: %p)", buf, 0x1Cu);
    }

    std::mutex::lock(&gCreateDisposeLock);
    v4 = SysexSender<MIDISysexSendRequest,false>::sInstance;
    if (!SysexSender<MIDISysexSendRequest,false>::sInstance)
    {
      operator new();
    }

    std::mutex::unlock(&gCreateDisposeLock);
    std::mutex::lock(&gCreateDisposeLock);
    if (!gClientState)
    {
      std::mutex::lock(&stru_27DE96DE8);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = __MIDIClientCreate_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_3165;
      *&buf[32] = 0;
      v8 = 0;
      if (MIDIClientCreateWithBlockInternal(&stru_284A49B90, &gClientState, buf))
      {
        std::mutex::unlock(&stru_27DE96DE8);
        goto LABEL_13;
      }

      gSysexSender();
      v6 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "SysexSender.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 70;
        *&buf[18] = 2048;
        *&buf[20] = v4;
        *&buf[28] = 1024;
        *&buf[30] = gClientState;
        _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::PrepareOutputPort() - created client %d", buf, 0x22u);
      }

      std::mutex::unlock(&stru_27DE96DE8);
    }

    if (!dword_27DE96DE4)
    {
      MIDIOutputPortCreate(gClientState, &stru_284A49B90, &dword_27DE96DE4);
      gSysexSender();
      v5 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "SysexSender.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 74;
        *&buf[18] = 2048;
        *&buf[20] = v4;
        *&buf[28] = 1024;
        *&buf[30] = dword_27DE96DE4;
        _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::PrepareOutputPort() - created output port %d", buf, 0x22u);
      }
    }

LABEL_13:
    (*(*(v4 + 144) + 16))(v4 + 144);
    operator new();
  }

  return result;
}

void sub_2371E8D40(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *std::__list_imp<MIDISysexSendRequest *>::clear(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

void SysexSender<MIDISysexSendRequest,false>::RunTask(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 320);
  gSysexSender();
  v5 = gSysexSender(void)::ssxsnd;
  v6 = os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 320);
      buf.numPackets = 136316162;
      buf.packet[0].timeStamp = "SysexSender.cpp";
      buf.packet[0].length = 1024;
      *buf.packet[0].data = 143;
      *&buf.packet[0].data[4] = 2048;
      *&buf.packet[0].data[6] = a1;
      *&buf.packet[0].data[14] = 2048;
      *&buf.packet[0].data[16] = a2;
      *&buf.packet[0].data[24] = 1024;
      *&buf.packet[0].data[26] = v7;
      _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - mQueue starting with %d items", &buf, 0x2Cu);
    }

    v28 = a2;
    while (1)
    {
      v8 = *(*(a1 + 312) + 16);
      if (!*(v8 + 20))
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          break;
        }
      }

      gSysexSender();
      v10 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        v11 = "true";
        if (!*(v8 + 20))
        {
          v11 = "false";
        }

        v12 = *(v8 + 16);
        buf.numPackets = 136316162;
        buf.packet[0].timeStamp = "SysexSender.cpp";
        buf.packet[0].length = 1024;
        *buf.packet[0].data = 153;
        *&buf.packet[0].data[4] = 2048;
        *&buf.packet[0].data[6] = v8;
        *&buf.packet[0].data[14] = 2080;
        *&buf.packet[0].data[16] = v11;
        *&buf.packet[0].data[24] = 1024;
        *&buf.packet[0].data[26] = v12;
        _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d     req %p: complete = %s, toSend = %d", &buf, 0x2Cu);
      }

      SysexSender<MIDISysexSendRequest,false>::currentRequestComplete(a1, v8);
      if (!*(a1 + 320))
      {
        gSysexSender();
        v5 = gSysexSender(void)::ssxsnd;
        if (!os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        buf.numPackets = 136315906;
        buf.packet[0].timeStamp = "SysexSender.cpp";
        buf.packet[0].length = 1024;
        *buf.packet[0].data = 157;
        *&buf.packet[0].data[4] = 2048;
        *&buf.packet[0].data[6] = a1;
        *&buf.packet[0].data[14] = 2048;
        *&buf.packet[0].data[16] = a2;
        v13 = "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - queue is now empty; done";
LABEL_16:
        _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, v13, &buf, 0x26u);
        return;
      }
    }

    buf.numPackets = 1;
    memset(buf.packet, 0, sizeof(buf.packet));
    if (v9 >= 0x100)
    {
      v14 = 256;
    }

    else
    {
      v14 = v9;
    }

    buf.packet[0].length = v14;
    memcpy(buf.packet[0].data, *(v8 + 8), v14);
    std::mutex::lock(&stru_27DE96DE8);
    MIDISend(dword_27DE96DE4, *v8, &buf);
    *(v8 + 8) += v14;
    *(v8 + 16) -= v14;
    gSysexSender();
    v15 = gSysexSender(void)::ssxsnd;
    if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v8;
      v17 = *(v8 + 16);
      *v30 = 136316674;
      v31 = "SysexSender.cpp";
      v32 = 1024;
      v33 = 176;
      v34 = 2048;
      v35 = a1;
      v36 = 2048;
      v37 = v28;
      v38 = 1024;
      v39 = v14;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      _os_log_impl(&dword_2371C2000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - sent %d bytes to destination %d (%d remain)", v30, 0x38u);
    }

    std::mutex::unlock(&stru_27DE96DE8);
    v18 = *v8;
    if (*v8 == *(a1 + 328))
    {
      numPackets = *(a1 + 332);
      if (numPackets)
      {
LABEL_25:
        v20 = mach_absolute_time();
        CADeprecated::Task::WakeUpAt(a1, v20 + 3 * (1000000000 * v14 / numPackets) / 0x7D);
        return;
      }
    }

    else
    {
      *(a1 + 328) = v18;
      buf.numPackets = 0;
      if (MIDIObjectGetIntegerProperty(v18, kMIDIPropertyMaxSysExSpeed, &buf))
      {
        numPackets = 3125;
      }

      else
      {
        numPackets = buf.numPackets;
      }

      *&buf.numPackets = 0;
      if (!MIDIObjectGetDataProperty(*v8, kMIDIPropertyConnectionUniqueID, &buf))
      {
        Length = CFDataGetLength(*&buf.numPackets);
        BytePtr = CFDataGetBytePtr(*&buf.numPackets);
        if ((Length >> 2) >= 1)
        {
          v23 = BytePtr;
          v24 = (Length >> 2) + 1;
          do
          {
            v25 = bswap32(*v23);
            *outObjectType = 0;
            if (!MIDIObjectFindByUniqueID(v25, &outObjectType[1], outObjectType))
            {
              *v30 = 0;
              IntegerProperty = MIDIObjectGetIntegerProperty(outObjectType[1], kMIDIPropertyMaxSysExSpeed, v30);
              v27 = *v30;
              if (IntegerProperty)
              {
                v27 = 3125;
              }

              if (v27 < numPackets)
              {
                numPackets = v27;
              }
            }

            ++v23;
            --v24;
          }

          while (v24 > 1);
        }

        CFRelease(*&buf.numPackets);
      }

      *(a1 + 332) = numPackets;
      if (numPackets)
      {
        goto LABEL_25;
      }
    }

    numPackets = 3125;
    *(a1 + 332) = 3125;
    goto LABEL_25;
  }

  if (v6)
  {
    buf.numPackets = 136315906;
    buf.packet[0].timeStamp = "SysexSender.cpp";
    buf.packet[0].length = 1024;
    *buf.packet[0].data = 140;
    *&buf.packet[0].data[4] = 2048;
    *&buf.packet[0].data[6] = a1;
    *&buf.packet[0].data[14] = 2048;
    *&buf.packet[0].data[16] = a2;
    v13 = "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - nothing to do; returning";
    goto LABEL_16;
  }
}

void sub_2371E93B8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SysexSender<MIDISysexSendRequest,false>::currentRequestComplete(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *(a2 + 20) = 1;
  if (!*(a2 + 21))
  {
    v4 = *(a2 + 24);
    if (v4)
    {
      v4(a2);
    }
  }

  v5 = (*(a1[18] + 16))(a1 + 18);
  v6 = a1[39];
  v7 = a1[40];
  v9 = *v6;
  v8 = v6[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  a1[40] = v7 - 1;
  operator delete(v6);
  gSysexSender();
  v10 = gSysexSender(void)::ssxsnd;
  if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[40];
    v12 = 136316162;
    v13 = "SysexSender.cpp";
    v14 = 1024;
    v15 = 105;
    v16 = 2048;
    v17 = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::currentRequestComplete(%p) - mQueue now contains %d items", &v12, 0x2Cu);
  }

  if (v5)
  {
    (*(a1[18] + 24))(a1 + 18);
  }
}

void sub_2371E9570(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SysexSender<MIDISysexSendRequest,false>::~SysexSender(void *a1)
{
  SysexSender<MIDISysexSendRequest,false>::~SysexSender(a1);

  JUMPOUT(0x2383C8250);
}

void *SysexSender<MIDISysexSendRequest,false>::~SysexSender(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A460A8;
  gSysexSender();
  v2 = gSysexSender(void)::ssxsnd;
  if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "SysexSender.cpp";
    v6 = 1024;
    v7 = 42;
    v8 = 2048;
    v9 = a1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p) dtor", &v4, 0x1Cu);
  }

  while (a1[40])
  {
    SysexSender<MIDISysexSendRequest,false>::currentRequestComplete(a1, *(a1[39] + 16));
  }

  std::__list_imp<MIDISysexSendRequest *>::clear(a1 + 38);
  *a1 = &unk_284A46518;
  CADeprecated::CAGuard::~CAGuard((a1 + 18));
  return a1;
}

void sub_2371E96E4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

OSStatus MIDISendUMPSysex(MIDISysexSendRequestUMP *umpRequest)
{
  v8 = *MEMORY[0x277D85DE8];
  result = -50;
  if (umpRequest && (gAborting & 1) == 0)
  {
    std::mutex::lock(&gCreateDisposeLockUMP);
    v3 = SysexSender<MIDISysexSendRequestUMP,false>::sInstance;
    if (!SysexSender<MIDISysexSendRequestUMP,false>::sInstance)
    {
      operator new();
    }

    std::mutex::unlock(&gCreateDisposeLockUMP);
    std::mutex::lock(&gCreateDisposeLockUMP);
    if (!gClientState)
    {
      std::mutex::lock(&stru_27DE96DE8);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = __MIDIClientCreate_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_3165;
      *&buf[32] = 0;
      v7 = 0;
      if (MIDIClientCreateWithBlockInternal(&stru_284A49B90, &gClientState, buf))
      {
        std::mutex::unlock(&stru_27DE96DE8);
        goto LABEL_11;
      }

      gSysexSender();
      v5 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "SysexSender.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 70;
        *&buf[18] = 2048;
        *&buf[20] = v3;
        *&buf[28] = 1024;
        *&buf[30] = gClientState;
        _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::PrepareOutputPort() - created client %d", buf, 0x22u);
      }

      std::mutex::unlock(&stru_27DE96DE8);
    }

    if (!dword_27DE96DE4)
    {
      MIDIOutputPortCreate(gClientState, &stru_284A49B90, &dword_27DE96DE4);
      gSysexSender();
      v4 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "SysexSender.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 74;
        *&buf[18] = 2048;
        *&buf[20] = v3;
        *&buf[28] = 1024;
        *&buf[30] = dword_27DE96DE4;
        _os_log_impl(&dword_2371C2000, v4, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::PrepareOutputPort() - created output port %d", buf, 0x22u);
      }
    }

LABEL_11:
    (*(*(v3 + 144) + 16))(v3 + 144);
    operator new();
  }

  return result;
}

void sub_2371E9B08(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SysexSender<MIDISysexSendRequestUMP,false>::RunTask(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 320);
  gSysexSender();
  v5 = gSysexSender(void)::ssxsnd;
  v6 = os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 320);
      buf.protocol = 136316162;
      *&buf.numPackets = "SysexSender.cpp";
      WORD2(buf.packet[0].timeStamp) = 1024;
      *(&buf.packet[0].timeStamp + 6) = 143;
      HIWORD(buf.packet[0].wordCount) = 2048;
      *buf.packet[0].words = a1;
      LOWORD(buf.packet[0].words[2]) = 2048;
      *(&buf.packet[0].words[2] + 2) = a2;
      HIWORD(buf.packet[0].words[4]) = 1024;
      buf.packet[0].words[5] = v7;
      _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - mQueue starting with %d items", &buf, 0x2Cu);
    }

    v28 = a2;
    while (1)
    {
      v8 = *(*(a1 + 312) + 16);
      if (!*(v8 + 20))
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          break;
        }
      }

      gSysexSender();
      v10 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        v11 = "true";
        if (!*(v8 + 20))
        {
          v11 = "false";
        }

        v12 = *(v8 + 16);
        buf.protocol = 136316162;
        *&buf.numPackets = "SysexSender.cpp";
        WORD2(buf.packet[0].timeStamp) = 1024;
        *(&buf.packet[0].timeStamp + 6) = 153;
        HIWORD(buf.packet[0].wordCount) = 2048;
        *buf.packet[0].words = v8;
        LOWORD(buf.packet[0].words[2]) = 2080;
        *(&buf.packet[0].words[2] + 2) = v11;
        HIWORD(buf.packet[0].words[4]) = 1024;
        buf.packet[0].words[5] = v12;
        _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d     req %p: complete = %s, toSend = %d", &buf, 0x2Cu);
      }

      SysexSender<MIDISysexSendRequestUMP,false>::currentRequestComplete(a1, v8);
      if (!*(a1 + 320))
      {
        gSysexSender();
        v5 = gSysexSender(void)::ssxsnd;
        if (!os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        buf.protocol = 136315906;
        *&buf.numPackets = "SysexSender.cpp";
        WORD2(buf.packet[0].timeStamp) = 1024;
        *(&buf.packet[0].timeStamp + 6) = 157;
        HIWORD(buf.packet[0].wordCount) = 2048;
        *buf.packet[0].words = a1;
        LOWORD(buf.packet[0].words[2]) = 2048;
        *(&buf.packet[0].words[2] + 2) = a2;
        v13 = "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - queue is now empty; done";
LABEL_16:
        _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, v13, &buf, 0x26u);
        return;
      }
    }

    memset(buf.packet[0].words, 0, sizeof(buf.packet[0].words));
    *&buf.protocol = 0x100000002;
    buf.packet[0].timeStamp = 0;
    if (v9 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = v9;
    }

    buf.packet[0].wordCount = v14;
    memmove(buf.packet[0].words, *(v8 + 8), 4 * v14);
    std::mutex::lock(&stru_27DE96DE8);
    MIDISendEventList(dword_27DE96DE4, *v8, &buf);
    *(v8 + 8) += 4 * v14;
    *(v8 + 16) -= v14;
    gSysexSender();
    v15 = gSysexSender(void)::ssxsnd;
    if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v8;
      v17 = *(v8 + 16);
      *v30 = 136316674;
      v31 = "SysexSender.cpp";
      v32 = 1024;
      v33 = 191;
      v34 = 2048;
      v35 = a1;
      v36 = 2048;
      v37 = v28;
      v38 = 1024;
      v39 = v14;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      _os_log_impl(&dword_2371C2000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - sent %d words to destination %d (%d remain)", v30, 0x38u);
    }

    std::mutex::unlock(&stru_27DE96DE8);
    v18 = *v8;
    if (*v8 == *(a1 + 328))
    {
      protocol = *(a1 + 332);
      if (protocol)
      {
LABEL_25:
        v20 = mach_absolute_time();
        CADeprecated::Task::WakeUpAt(a1, v20 + (((3 * (1000000000 * (4 * v14) / protocol) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4));
        return;
      }
    }

    else
    {
      *(a1 + 328) = v18;
      buf.protocol = 0;
      if (MIDIObjectGetIntegerProperty(v18, kMIDIPropertyMaxSysExSpeed, &buf))
      {
        protocol = 3125;
      }

      else
      {
        protocol = buf.protocol;
      }

      *&buf.protocol = 0;
      if (!MIDIObjectGetDataProperty(*v8, kMIDIPropertyConnectionUniqueID, &buf))
      {
        Length = CFDataGetLength(*&buf.protocol);
        BytePtr = CFDataGetBytePtr(*&buf.protocol);
        if ((Length >> 2) >= 1)
        {
          v23 = BytePtr;
          v24 = (Length >> 2) + 1;
          do
          {
            v25 = bswap32(*v23);
            *outObjectType = 0;
            if (!MIDIObjectFindByUniqueID(v25, &outObjectType[1], outObjectType))
            {
              *v30 = 0;
              IntegerProperty = MIDIObjectGetIntegerProperty(outObjectType[1], kMIDIPropertyMaxSysExSpeed, v30);
              v27 = *v30;
              if (IntegerProperty)
              {
                v27 = 3125;
              }

              if (v27 < protocol)
              {
                protocol = v27;
              }
            }

            ++v23;
            --v24;
          }

          while (v24 > 1);
        }

        CFRelease(*&buf.protocol);
      }

      *(a1 + 332) = protocol;
      if (protocol)
      {
        goto LABEL_25;
      }
    }

    protocol = 3125;
    *(a1 + 332) = 3125;
    goto LABEL_25;
  }

  if (v6)
  {
    buf.protocol = 136315906;
    *&buf.numPackets = "SysexSender.cpp";
    WORD2(buf.packet[0].timeStamp) = 1024;
    *(&buf.packet[0].timeStamp + 6) = 140;
    HIWORD(buf.packet[0].wordCount) = 2048;
    *buf.packet[0].words = a1;
    LOWORD(buf.packet[0].words[2]) = 2048;
    *(&buf.packet[0].words[2] + 2) = a2;
    v13 = "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - nothing to do; returning";
    goto LABEL_16;
  }
}

void sub_2371EA110(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SysexSender<MIDISysexSendRequestUMP,false>::currentRequestComplete(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *(a2 + 20) = 1;
  v4 = *(a2 + 24);
  if (v4)
  {
    v4(a2);
  }

  v5 = (*(a1[18] + 16))(a1 + 18);
  v6 = a1[39];
  v7 = a1[40];
  v9 = *v6;
  v8 = v6[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  a1[40] = v7 - 1;
  operator delete(v6);
  gSysexSender();
  v10 = gSysexSender(void)::ssxsnd;
  if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[40];
    v12 = 136316162;
    v13 = "SysexSender.cpp";
    v14 = 1024;
    v15 = 105;
    v16 = 2048;
    v17 = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::currentRequestComplete(%p) - mQueue now contains %d items", &v12, 0x2Cu);
  }

  if (v5)
  {
    (*(a1[18] + 24))(a1 + 18);
  }
}

void sub_2371EA2C0(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SysexSender<MIDISysexSendRequestUMP,false>::~SysexSender(void *a1)
{
  SysexSender<MIDISysexSendRequestUMP,false>::~SysexSender(a1);

  JUMPOUT(0x2383C8250);
}

void *SysexSender<MIDISysexSendRequestUMP,false>::~SysexSender(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A46068;
  gSysexSender();
  v2 = gSysexSender(void)::ssxsnd;
  if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "SysexSender.cpp";
    v6 = 1024;
    v7 = 42;
    v8 = 2048;
    v9 = a1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p) dtor", &v4, 0x1Cu);
  }

  while (a1[40])
  {
    SysexSender<MIDISysexSendRequestUMP,false>::currentRequestComplete(a1, *(a1[39] + 16));
  }

  std::__list_imp<MIDISysexSendRequest *>::clear(a1 + 38);
  *a1 = &unk_284A46518;
  CADeprecated::CAGuard::~CAGuard((a1 + 18));
  return a1;
}

void sub_2371EA434(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

OSStatus MIDISendUMPSysex8(MIDISysexSendRequestUMP *umpRequest)
{
  v9 = *MEMORY[0x277D85DE8];
  result = -50;
  if (umpRequest && (gAborting & 1) == 0)
  {
    gSysexSender();
    v3 = gSysexSender(void)::ssxsnd;
    if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      *&buf[4] = "SysexSender.cpp";
      *&buf[12] = 1024;
      *&buf[14] = 304;
      *&buf[18] = 2048;
      *&buf[20] = umpRequest;
      _os_log_impl(&dword_2371C2000, v3, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SendSysexUMP8(umpRequest: %p)", buf, 0x1Cu);
    }

    std::mutex::lock(&gCreateDisposeLockUMP8);
    v4 = SysexSender<MIDISysexSendRequestUMP,true>::sInstance;
    if (!SysexSender<MIDISysexSendRequestUMP,true>::sInstance)
    {
      operator new();
    }

    std::mutex::unlock(&gCreateDisposeLockUMP8);
    std::mutex::lock(&gCreateDisposeLockUMP8);
    if (!gClientState)
    {
      std::mutex::lock(&stru_27DE96DE8);
      *buf = MEMORY[0x277D85DD0];
      *&buf[8] = 0x40000000;
      *&buf[16] = __MIDIClientCreate_block_invoke;
      *&buf[24] = &__block_descriptor_tmp_3165;
      *&buf[32] = 0;
      v8 = 0;
      if (MIDIClientCreateWithBlockInternal(&stru_284A49B90, &gClientState, buf))
      {
        std::mutex::unlock(&stru_27DE96DE8);
        goto LABEL_13;
      }

      gSysexSender();
      v6 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "SysexSender.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 70;
        *&buf[18] = 2048;
        *&buf[20] = v4;
        *&buf[28] = 1024;
        *&buf[30] = gClientState;
        _os_log_impl(&dword_2371C2000, v6, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::PrepareOutputPort() - created client %d", buf, 0x22u);
      }

      std::mutex::unlock(&stru_27DE96DE8);
    }

    if (!dword_27DE96DE4)
    {
      MIDIOutputPortCreate(gClientState, &stru_284A49B90, &dword_27DE96DE4);
      gSysexSender();
      v5 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315906;
        *&buf[4] = "SysexSender.cpp";
        *&buf[12] = 1024;
        *&buf[14] = 74;
        *&buf[18] = 2048;
        *&buf[20] = v4;
        *&buf[28] = 1024;
        *&buf[30] = dword_27DE96DE4;
        _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::PrepareOutputPort() - created output port %d", buf, 0x22u);
      }
    }

LABEL_13:
    (*(*(v4 + 144) + 16))(v4 + 144);
    operator new();
  }

  return result;
}

void sub_2371EA8C8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SysexSender<MIDISysexSendRequestUMP,true>::RunTask(uint64_t a1, uint64_t a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 320);
  gSysexSender();
  v5 = gSysexSender(void)::ssxsnd;
  v6 = os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 320);
      buf.protocol = 136316162;
      *&buf.numPackets = "SysexSender.cpp";
      WORD2(buf.packet[0].timeStamp) = 1024;
      *(&buf.packet[0].timeStamp + 6) = 143;
      HIWORD(buf.packet[0].wordCount) = 2048;
      *buf.packet[0].words = a1;
      LOWORD(buf.packet[0].words[2]) = 2048;
      *(&buf.packet[0].words[2] + 2) = a2;
      HIWORD(buf.packet[0].words[4]) = 1024;
      buf.packet[0].words[5] = v7;
      _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - mQueue starting with %d items", &buf, 0x2Cu);
    }

    v28 = a2;
    while (1)
    {
      v8 = *(*(a1 + 312) + 16);
      if (!*(v8 + 20))
      {
        v9 = *(v8 + 16);
        if (v9)
        {
          break;
        }
      }

      gSysexSender();
      v10 = gSysexSender(void)::ssxsnd;
      if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
      {
        v11 = "true";
        if (!*(v8 + 20))
        {
          v11 = "false";
        }

        v12 = *(v8 + 16);
        buf.protocol = 136316162;
        *&buf.numPackets = "SysexSender.cpp";
        WORD2(buf.packet[0].timeStamp) = 1024;
        *(&buf.packet[0].timeStamp + 6) = 153;
        HIWORD(buf.packet[0].wordCount) = 2048;
        *buf.packet[0].words = v8;
        LOWORD(buf.packet[0].words[2]) = 2080;
        *(&buf.packet[0].words[2] + 2) = v11;
        HIWORD(buf.packet[0].words[4]) = 1024;
        buf.packet[0].words[5] = v12;
        _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d     req %p: complete = %s, toSend = %d", &buf, 0x2Cu);
      }

      SysexSender<MIDISysexSendRequestUMP,true>::currentRequestComplete(a1, v8);
      if (!*(a1 + 320))
      {
        gSysexSender();
        v5 = gSysexSender(void)::ssxsnd;
        if (!os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
        {
          return;
        }

        buf.protocol = 136315906;
        *&buf.numPackets = "SysexSender.cpp";
        WORD2(buf.packet[0].timeStamp) = 1024;
        *(&buf.packet[0].timeStamp + 6) = 157;
        HIWORD(buf.packet[0].wordCount) = 2048;
        *buf.packet[0].words = a1;
        LOWORD(buf.packet[0].words[2]) = 2048;
        *(&buf.packet[0].words[2] + 2) = a2;
        v13 = "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - queue is now empty; done";
LABEL_16:
        _os_log_impl(&dword_2371C2000, v5, OS_LOG_TYPE_DEBUG, v13, &buf, 0x26u);
        return;
      }
    }

    memset(buf.packet[0].words, 0, sizeof(buf.packet[0].words));
    *&buf.protocol = 0x100000002;
    buf.packet[0].timeStamp = 0;
    if (v9 >= 0x40)
    {
      v14 = 64;
    }

    else
    {
      v14 = v9;
    }

    buf.packet[0].wordCount = v14;
    memmove(buf.packet[0].words, *(v8 + 8), 4 * v14);
    std::mutex::lock(&stru_27DE96DE8);
    MIDISendEventList(dword_27DE96DE4, *v8, &buf);
    *(v8 + 8) += 4 * v14;
    *(v8 + 16) -= v14;
    gSysexSender();
    v15 = gSysexSender(void)::ssxsnd;
    if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
    {
      v16 = *v8;
      v17 = *(v8 + 16);
      *v30 = 136316674;
      v31 = "SysexSender.cpp";
      v32 = 1024;
      v33 = 191;
      v34 = 2048;
      v35 = a1;
      v36 = 2048;
      v37 = v28;
      v38 = 1024;
      v39 = v14;
      v40 = 1024;
      v41 = v16;
      v42 = 1024;
      v43 = v17;
      _os_log_impl(&dword_2371C2000, v15, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - sent %d words to destination %d (%d remain)", v30, 0x38u);
    }

    std::mutex::unlock(&stru_27DE96DE8);
    v18 = *v8;
    if (*v8 == *(a1 + 328))
    {
      protocol = *(a1 + 332);
      if (protocol)
      {
LABEL_25:
        v20 = mach_absolute_time();
        CADeprecated::Task::WakeUpAt(a1, v20 + (((3 * (1000000000 * (4 * v14) / protocol) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4));
        return;
      }
    }

    else
    {
      *(a1 + 328) = v18;
      buf.protocol = 0;
      if (MIDIObjectGetIntegerProperty(v18, kMIDIPropertyMaxSysExSpeed, &buf))
      {
        protocol = 3125;
      }

      else
      {
        protocol = buf.protocol;
      }

      *&buf.protocol = 0;
      if (!MIDIObjectGetDataProperty(*v8, kMIDIPropertyConnectionUniqueID, &buf))
      {
        Length = CFDataGetLength(*&buf.protocol);
        BytePtr = CFDataGetBytePtr(*&buf.protocol);
        if ((Length >> 2) >= 1)
        {
          v23 = BytePtr;
          v24 = (Length >> 2) + 1;
          do
          {
            v25 = bswap32(*v23);
            *outObjectType = 0;
            if (!MIDIObjectFindByUniqueID(v25, &outObjectType[1], outObjectType))
            {
              *v30 = 0;
              IntegerProperty = MIDIObjectGetIntegerProperty(outObjectType[1], kMIDIPropertyMaxSysExSpeed, v30);
              v27 = *v30;
              if (IntegerProperty)
              {
                v27 = 3125;
              }

              if (v27 < protocol)
              {
                protocol = v27;
              }
            }

            ++v23;
            --v24;
          }

          while (v24 > 1);
        }

        CFRelease(*&buf.protocol);
      }

      *(a1 + 332) = protocol;
      if (protocol)
      {
        goto LABEL_25;
      }
    }

    protocol = 3125;
    *(a1 + 332) = 3125;
    goto LABEL_25;
  }

  if (v6)
  {
    buf.protocol = 136315906;
    *&buf.numPackets = "SysexSender.cpp";
    WORD2(buf.packet[0].timeStamp) = 1024;
    *(&buf.packet[0].timeStamp + 6) = 140;
    HIWORD(buf.packet[0].wordCount) = 2048;
    *buf.packet[0].words = a1;
    LOWORD(buf.packet[0].words[2]) = 2048;
    *(&buf.packet[0].words[2] + 2) = a2;
    v13 = "%25s:%-5d [?] SysExSender(%p)::RunTask(%llu) - nothing to do; returning";
    goto LABEL_16;
  }
}

void sub_2371EAED8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void SysexSender<MIDISysexSendRequestUMP,true>::currentRequestComplete(void *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  *(a2 + 20) = 1;
  v4 = *(a2 + 24);
  if (v4)
  {
    v4(a2);
  }

  v5 = (*(a1[18] + 16))(a1 + 18);
  v6 = a1[39];
  v7 = a1[40];
  v9 = *v6;
  v8 = v6[1];
  *(v9 + 8) = v8;
  *v8 = v9;
  a1[40] = v7 - 1;
  operator delete(v6);
  gSysexSender();
  v10 = gSysexSender(void)::ssxsnd;
  if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
  {
    v11 = a1[40];
    v12 = 136316162;
    v13 = "SysexSender.cpp";
    v14 = 1024;
    v15 = 105;
    v16 = 2048;
    v17 = a1;
    v18 = 2048;
    v19 = a2;
    v20 = 1024;
    v21 = v11;
    _os_log_impl(&dword_2371C2000, v10, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p)::currentRequestComplete(%p) - mQueue now contains %d items", &v12, 0x2Cu);
  }

  if (v5)
  {
    (*(a1[18] + 24))(a1 + 18);
  }
}

void sub_2371EB088(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

void SysexSender<MIDISysexSendRequestUMP,true>::~SysexSender(void *a1)
{
  SysexSender<MIDISysexSendRequestUMP,true>::~SysexSender(a1);

  JUMPOUT(0x2383C8250);
}

void *SysexSender<MIDISysexSendRequestUMP,true>::~SysexSender(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  *a1 = &unk_284A46028;
  gSysexSender();
  v2 = gSysexSender(void)::ssxsnd;
  if (os_log_type_enabled(gSysexSender(void)::ssxsnd, OS_LOG_TYPE_DEBUG))
  {
    v4 = 136315650;
    v5 = "SysexSender.cpp";
    v6 = 1024;
    v7 = 42;
    v8 = 2048;
    v9 = a1;
    _os_log_impl(&dword_2371C2000, v2, OS_LOG_TYPE_DEBUG, "%25s:%-5d [?] SysExSender(%p) dtor", &v4, 0x1Cu);
  }

  while (a1[40])
  {
    SysexSender<MIDISysexSendRequestUMP,true>::currentRequestComplete(a1, *(a1[39] + 16));
  }

  std::__list_imp<MIDISysexSendRequest *>::clear(a1 + 38);
  *a1 = &unk_284A46518;
  CADeprecated::CAGuard::~CAGuard((a1 + 18));
  return a1;
}

void sub_2371EB1FC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

OSStatus MIDIEventPacketSysexBytesForGroup(const MIDIEventPacket *pkt, UInt8 groupIndex, CFDataRef *outData)
{
  wordCount = pkt->wordCount;
  if (wordCount)
  {
    v6 = 0;
    words = pkt->words;
    v8 = 4 * wordCount;
    for (i = pkt->words; ; i += 2)
    {
      v10 = *i;
      if (v10 >> 28 != 3)
      {
        break;
      }

      if ((BYTE3(v10) & 0xF) == groupIndex)
      {
        v11 = (v10 >> 20) & 0xF;
        if (v11 > 3)
        {
          v12 = 0;
        }

        else
        {
          v12 = qword_23726C540[v11];
        }

        v6 += v12 + (WORD1(v10) & 0xF);
      }

      v8 -= 8;
      if (!v8)
      {
        if (!v6)
        {
          return -50;
        }

        std::vector<unsigned char>::vector[abi:ne200100](bytes, v6);
        v13 = pkt->wordCount;
        v14 = bytes[0];
        if (v13)
        {
          v15 = 0;
          v16 = &pkt->words[v13];
          v17 = LODWORD(bytes[0]) + v6;
          v18.i64[0] = 0x500000005;
          v18.i64[1] = 0x500000005;
          v19 = vdupq_n_s64(4uLL);
          v20.i64[0] = 0x200000002;
          v20.i64[1] = 0x200000002;
          v21.i64[0] = 0x2800000028;
          v21.i64[1] = 0x2800000028;
          v22.i64[0] = 0x800000008;
          v22.i64[1] = 0x800000008;
          v23.i64[0] = 0x400000004;
          v23.i64[1] = 0x400000004;
          do
          {
            if (v6 <= v15)
            {
              std::terminate();
            }

            v24 = *words;
            v25 = &bytes[0][v15];
            if (*words >> 28 == 3)
            {
              v26 = (*words >> 20) & 0xF;
            }

            else
            {
              v26 = 255;
            }

            v27 = HIWORD(v24) & 0xF;
            if (v26 < 2)
            {
              ++v27;
            }

            if (v26)
            {
              v28 = v26 == 3;
            }

            else
            {
              v28 = 1;
            }

            if (v28)
            {
              ++v27;
            }

            if (v27 <= v17 - v25)
            {
              v29 = words[1];
              v30 = v26 == 3 || v26 == 0;
              v31 = v27;
              if (v30)
              {
                v25[v27 - 1] = -9;
                v31 = v27 - 1;
              }

              if (v26 <= 1)
              {
                *v25++ = -16;
                --v31;
              }

              if (v31 >= 1)
              {
                v32 = v31;
                v33 = (v31 + 3) & 0xFFFFFFFC;
                v34 = vdupq_n_s64(v32 - 1);
                v35 = vdupq_n_s32(v24);
                v36 = vdupq_n_s32(v29);
                v37 = v25 + 3;
                v38 = xmmword_23726C3D0;
                v39 = xmmword_23726C3C0;
                v40 = xmmword_23726C3E0;
                do
                {
                  v41 = vcgeq_u64(v34, v38);
                  v42 = vcgeq_u64(v34, v39);
                  v43 = vuzp1q_s32(v41, v42);
                  v44 = vmovn_s32(v43).u8[0];
                  v45 = vcgtq_u32(v20, v40);
                  v46 = vbic_s8(vmovn_s32(vshlq_u32(vbslq_s8(v45, v35, v36), vsubq_s32(vshlq_n_s32(v40, 3uLL), vbslq_s8(v45, v22, v21)))), vmovn_s32(vandq_s8(v43, vcgtq_u32(v40, v18))));
                  if (v44)
                  {
                    *(v37 - 3) = v46.i8[0];
                  }

                  if (vuzp1_s16(vmovn_s64(*&v41), 2).i8[2])
                  {
                    *(v37 - 2) = v46.i8[2];
                  }

                  if (vuzp1_s16(2, vmovn_s64(*&v42)).i32[1])
                  {
                    *(v37 - 1) = v46.i8[4];
                    *v37 = v46.i8[6];
                  }

                  v39 = vaddq_s64(v39, v19);
                  v38 = vaddq_s64(v38, v19);
                  v40 = vaddq_s32(v40, v23);
                  v37 += 4;
                  v33 -= 4;
                }

                while (v33);
              }
            }

            else
            {
              v27 = 0;
            }

            v15 += v27;
            words += MIDI::UniversalPacket::word_sizes[*words >> 28];
          }

          while (words != v16);
          v14 = bytes[0];
        }

        v47 = CFDataCreate(0, v14, v6);
        v48 = v47;
        if (!v47)
        {
          exception = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383C7ED0](exception, "Could not construct");
        }

        v49 = CFGetTypeID(v47);
        if (v49 != CFDataGetTypeID())
        {
          v52 = __cxa_allocate_exception(0x10uLL);
          MEMORY[0x2383C7ED0](v52, "Could not construct");
        }

        *outData = v48;
        if (bytes[0])
        {
          bytes[1] = bytes[0];
          operator delete(bytes[0]);
        }

        return 0;
      }
    }
  }

  return -50;
}

void sub_2371EB570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  __cxa_free_exception(v11);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a9);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void MIDIRingBuffer::~MIDIRingBuffer(MIDIRingBuffer *this)
{
  MIDIRingBuffer::~MIDIRingBuffer(this);

  JUMPOUT(0x2383C8250);
}

{
  *this = &unk_284A46AF0;
  if (*(this + 40) == 1)
  {
    v2 = *(this + 11);
    if (v2 != this + 44)
    {
      munmap(v2, *(this + 8) + 32);
    }

    if (*(this + 36))
    {
      v3 = this + 8;
      if (*(this + 31) < 0)
      {
        v3 = *v3;
      }

      shm_unlink(v3);
    }
  }

  if ((*(this + 36) & 2) != 0)
  {
    free(*(this + 11));
  }

  if (*(this + 31) < 0)
  {
    operator delete(*(this + 1));
  }
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

uint64_t MIDIRingBuffer::Write(MIDIRingBuffer *this, char *a2, int a3)
{
  v3 = *(this + 11);
  v4 = atomic_load(v3);
  v5 = atomic_load(v3 + 1);
  v7 = v4 - v5;
  v6 = v4 < v5;
  v8 = *(this + 8);
  if (v6)
  {
    v9 = *(this + 8);
  }

  else
  {
    v9 = 0;
  }

  v10 = (v7 + v9);
  if (v10 + a3 >= v8)
  {
    return 0xFFFFFFFFLL;
  }

  v14 = v4;
  v15 = v8 - v4;
  if (v15 >= a3)
  {
    v16 = a3;
  }

  else
  {
    v16 = v15;
  }

  memcpy(v3 + v14 + 32, a2, v16);
  if (v16 + v14 == *(this + 8))
  {
    v17 = 0;
  }

  else
  {
    v17 = v16 + v14;
  }

  v18 = (a3 - v16);
  if (v18 >= 1)
  {
    memcpy(v3 + 8, &a2[v16], v18);
    v17 += v18;
  }

  atomic_store(v17, v3);
  return v10;
}

uint64_t MIDIRingBuffer::Peek(MIDIRingBuffer *this, char *__dst, int a3)
{
  v6 = *(this + 11);
  v7 = atomic_load(v6);
  v8 = atomic_load(v6 + 1);
  v9 = __OFSUB__(v7, v8);
  v10 = v7 - v8;
  if (v10 < 0 != v9)
  {
    v10 += *(this + 8);
  }

  if (v10 < a3)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = v8;
  v13 = *(this + 8) - v8;
  if (v13 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v13;
  }

  v15 = v6 + 8;
  memcpy(__dst, v6 + v12 + 32, v14);
  if (v14 + v12 == *(this + 8))
  {
    v11 = 0;
  }

  else
  {
    v11 = (v14 + v12);
  }

  v16 = (a3 - v14);
  if (v16 >= 1)
  {
    memcpy(&__dst[v14], v15, v16);
    v11 = (v11 + v16);
  }

  if ((v11 & 0x80000000) != 0 || v11 >= *(this + 8))
  {
    std::terminate();
  }

  return v11;
}

void MIDIThruConnectionParamsInitialize(MIDIThruConnectionParams *inConnectionParams)
{
  *&inConnectionParams->destinations[6].uniqueID = 0u;
  *&inConnectionParams->channelMap[4] = 0u;
  *inConnectionParams->reserved2 = 0u;
  *&inConnectionParams->noteNumber.transform = 0u;
  *&inConnectionParams->programChange.transform = 0u;
  *&inConnectionParams->destinations[2].uniqueID = 0u;
  *&inConnectionParams->destinations[4].uniqueID = 0u;
  *&inConnectionParams->sources[7].endpointRef = 0u;
  *&inConnectionParams->destinations[0].uniqueID = 0u;
  *&inConnectionParams->sources[3].endpointRef = 0u;
  *&inConnectionParams->sources[5].endpointRef = 0u;
  *&inConnectionParams->version = 0u;
  *&inConnectionParams->sources[1].endpointRef = 0u;
  *inConnectionParams->channelMap = xmmword_23726C3F0;
  inConnectionParams->highNote = 127;
}

uint64_t MIDIConfigCheckVirginState(const __CFString *a1, int *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  obj = 0;
  str = 0;
  MIDISetupGetCurrent_Priv(&obj, a2);
  if (MIDIObjectGetStringProperty(obj, kMIDIPropertyName, &str) || CFStringGetLength(str) <= 0)
  {
    MIDIConfigGetFullPathToFile(a1, v8);
    if (lstat(v8, &v7))
    {
      v3 = MIDIObjectSetStringProperty(obj, kMIDIPropertyName, a1);
    }

    else
    {
      v3 = 1685418094;
    }
  }

  else
  {
    v3 = 0;
  }

  if (str)
  {
    CFRelease(str);
  }

  return v3;
}

BOOL MIDIConfigExists(const __CFString *a1)
{
  v4 = *MEMORY[0x277D85DE8];
  MIDIConfigGetFullPathToFile(a1, v3);
  return lstat(v3, &v2) == 0;
}

uint64_t MIDIConfigNew(const __CFString *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  MIDIConfigGetFullPathToFile(a1, v11);
  if (!lstat(v11, &v10))
  {
    return 1685418094;
  }

  v10.st_dev = 0;
  if (gInMIDIServer)
  {
    _MIDISetupCreate(&v10);
  }

  *v11 = 0;
  v3 = MIDIProcess::CheckInitialization(v11, v2);
  v4 = *v11;
  if (!*v11)
  {
    v5 = v3;
    v6 = ClientInterface::global(v3);
    v4 = ((*v6)[38])(v6, &v10);
    ObjectTreeCache::Invalidate((v5 + 36));
    if (!v4)
    {
      v7 = MIDIObjectSetStringProperty(v10.st_dev, kMIDIPropertyName, a1);
      if (!v7)
      {
        return MIDISetupInstall_Priv(v10.st_dev, v8);
      }

      return v7;
    }
  }

  return v4;
}

__CFArray *MIDIConfigGetList()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
  MIDIConfigDirectory();
  v1 = opendir(MIDIConfigDirectory(void)::configDir);
  if (v1)
  {
    v2 = v1;
    while (1)
    {
      v3 = readdir(v2);
      if (!v3)
      {
        break;
      }

      d_name = v3->d_name;
      v5 = strrchr(v3->d_name, 46);
      if (v5)
      {
        v6 = v5;
        if (!strcmp(v5, ".mcfg"))
        {
          v7 = CFURLCreateFromFileSystemRepresentation(0, d_name, v6 - d_name, 0);
          if (v7)
          {
            v8 = v7;
            PathComponent = CFURLCopyLastPathComponent(v7);
            CFRelease(v8);
            CFArrayAppendValue(Mutable, PathComponent);
            CFRelease(PathComponent);
          }
        }
      }
    }

    closedir(v2);
  }

  else
  {
    CFRelease(Mutable);
    return 0;
  }

  return Mutable;
}

uint64_t MIDIConfigInstall(const __CFString *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  MIDIConfigGetFullPathToFile(a1, v14);
  FileIntoCFData = ReadFileIntoCFData(v14);
  if (FileIntoCFData)
  {
    v4 = FileIntoCFData;
    obj = 0;
    if (gInMIDIServer)
    {
      v6 = _MIDISetupFromData(FileIntoCFData, &obj);
      if (v6)
      {
LABEL_11:
        CFRelease(v4);
        return v6;
      }
    }

    else
    {
      v13 = 0;
      v7 = MIDIProcess::CheckInitialization(&v13, v3);
      v6 = v13;
      if (v13)
      {
        goto LABEL_11;
      }

      v8 = v7;
      v9 = ClientInterface::global(v7);
      v6 = ((*v9)[41])(v9, v4, &obj);
      ObjectTreeCache::Invalidate((v8 + 36));
      if (v6)
      {
        goto LABEL_11;
      }
    }

    v10 = MIDISetupInstall_Priv(obj, v5);
    if (!v10)
    {
      v10 = MIDIObjectSetStringProperty(obj, kMIDIPropertyName, a1);
    }

    v6 = v10;
    goto LABEL_11;
  }

  return 560362084;
}

uint64_t MIDIConfigDuplicate(const __CFString *a1, const __CFString *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = 560362084;
  MIDIConfigGetFullPathToFile(a1, v7);
  FileIntoCFData = ReadFileIntoCFData(v7);
  if (FileIntoCFData)
  {
    v5 = FileIntoCFData;
    MIDIConfigGetFullPathToFile(a2, v7);
    if (WriteFileFromCFData(v7, v5))
    {
      v3 = 0;
    }

    else
    {
      v3 = 560363378;
    }

    CFRelease(v5);
  }

  return v3;
}

uint64_t MIDIConfigRename(const __CFString *a1, CFStringRef theString)
{
  v13 = *MEMORY[0x277D85DE8];
  obj = 0;
  str = 0;
  CFStringGetCString(theString, buffer, 512, 0x8000100u);
  while (1)
  {
    v3 = strchr(buffer, 47);
    if (!v3)
    {
      break;
    }

    *v3 = 32;
  }

  while (1)
  {
    v4 = strchr(buffer, 58);
    if (!v4)
    {
      break;
    }

    *v4 = 32;
  }

  v5 = CFStringCreateWithCString(0, buffer, 0x8000100u);
  Current_Priv = MIDISetupGetCurrent_Priv(&obj, v6);
  if (!Current_Priv)
  {
    Current_Priv = MIDIObjectGetStringProperty(obj, kMIDIPropertyName, &str);
    if (!Current_Priv)
    {
      if (!CFEqual(str, a1))
      {
        MIDIConfigFileRenameOrDelete(a1, v5);
        v8 = 0;
        goto LABEL_12;
      }

      Current_Priv = MIDIObjectSetStringProperty(obj, kMIDIPropertyName, v5);
    }
  }

  v8 = Current_Priv;
LABEL_12:
  CFRelease(v5);
  CFRelease(str);
  return v8;
}

uint64_t MIDIConfigGetCurrent(void *a1, int *a2)
{
  obj = 0;
  v4 = 0;
  result = MIDISetupGetCurrent_Priv(&obj, a2);
  if (!result)
  {
    result = MIDIObjectGetStringProperty(obj, kMIDIPropertyName, &v4);
    if (!result)
    {
      *a1 = v4;
    }
  }

  return result;
}

void MIDIConfigDirectory(void)
{
  if ((MIDIConfigDirectory(void)::inited & 1) == 0)
  {
    MIDIConfigDirectory(void)::configDir[0] = 0;
    v0 = getenv("HOME");
    if (v0)
    {
      snprintf(MIDIConfigDirectory(void)::configDir, 0x400uLL, "%s%s", v0, "/Library/Audio");
      v1 = opendir(MIDIConfigDirectory(void)::configDir);
      if (v1)
      {
        closedir(v1);
      }

      else
      {
        mkdir(MIDIConfigDirectory(void)::configDir, 0x1EDu);
      }

      snprintf(MIDIConfigDirectory(void)::configDir, 0x400uLL, "%s/%s", MIDIConfigDirectory(void)::configDir, "MIDI Configurations");
      v2 = opendir(MIDIConfigDirectory(void)::configDir);
      if (v2)
      {
        closedir(v2);
      }

      else
      {
        mkdir(MIDIConfigDirectory(void)::configDir, 0x1EDu);
      }

      *&MIDIConfigDirectory(void)::configDir[strlen(MIDIConfigDirectory(void)::configDir)] = 47;
      MIDIConfigDirectory(void)::inited = 1;
    }
  }
}

size_t MIDIConfigGetFullPathToFile(const __CFString *a1, char *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  CFStringGetCString(a1, buffer, 256, 0x8000100u);
  MIDIConfigDirectory();
  v3 = strcpy(a2, MIDIConfigDirectory(void)::configDir);
  v4 = strcat(v3, buffer);
  result = strlen(v4);
  strcpy(&a2[result], ".mcfg");
  return result;
}

void MIDIConfigFileRenameOrDelete(const __CFString *a1, const __CFString *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  MIDIConfigGetFullPathToFile(a1, &__from);
  if (CFStringGetLength(a2) < 1)
  {
    unlink(&__from);
  }

  else
  {
    MIDIConfigGetFullPathToFile(a2, &__to);
    rename(&__from, &__to, v3);
  }
}

void midi::sysex::clear(midi::sysex *this)
{
  *this = 0;
  v3 = (this + 8);
  v2 = *(this + 1);
  *(this + 2) = v2;
  if (*(this + 3) - v2 > 0x4000uLL)
  {
    *v3 = 0;
    v3[1] = 0;
    v3[2] = 0;
    if (v2)
    {
      operator delete(v2);
    }
  }
}

void midi::sysex7::add_device_identity(uint64_t a1, uint64_t a2)
{
  if ((*a2 & 0xFF808080) != 0)
  {
    __assert_rtn("add_device_identity", "sysex.cpp", 85, "(identity.manufacturer & 0xFF808080) == 0");
  }

  if (*(a2 + 4) >= 0x4000u)
  {
    __assert_rtn("add_device_identity", "sysex.cpp", 86, "(identity.family & 0xC000) == 0");
  }

  if (*(a2 + 6) >= 0x4000u)
  {
    __assert_rtn("add_device_identity", "sysex.cpp", 87, "(identity.model & 0xC000) == 0");
  }

  if (*(a2 + 8) >> 28)
  {
    __assert_rtn("add_device_identity", "sysex.cpp", 88, "(identity.revision & 0xF0000000) == 0");
  }

  v9 = BYTE2(*a2);
  std::vector<unsigned char>::push_back[abi:ne200100](a1 + 8, &v9);
  v8 = *(a2 + 1) & 0x7F;
  std::vector<unsigned char>::push_back[abi:ne200100](a1 + 8, &v8);
  v7 = *a2 & 0x7F;
  std::vector<unsigned char>::push_back[abi:ne200100](a1 + 8, &v7);
  v4 = *(a2 + 4);
  if (v4 >= 0x4000 || (__src[0] = v4 & 0x7F, __src[1] = v4 >> 7, std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1 + 8, *(a1 + 16), __src, v11, 2), v5 = *(a2 + 6), v5 >= 0x4000))
  {
    __assert_rtn("add_uint14", "sysex.h", 224, "value <= uint14_max");
  }

  v11[0] = v5 & 0x7F;
  v11[1] = v5 >> 7;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1 + 8, *(a1 + 16), v11, v12, 2);
  v6 = *(a2 + 8);
  if (v6 >> 28)
  {
    __assert_rtn("add_uint28", "sysex.h", 238, "value <= uint28_max");
  }

  v12[0] = v6 & 0x7F;
  v12[1] = (v6 >> 7) & 0x7F;
  v12[2] = (v6 >> 14) & 0x7F;
  v12[3] = v6 >> 21;
  std::vector<unsigned char>::__insert_with_size[abi:ne200100]<unsigned char const*,unsigned char const*>(a1 + 8, *(a1 + 16), v12, &v13, 4);
}

unint64_t midi::sysex7::make_device_identity(midi::sysex7 *this, uint64_t a2)
{
  if ((a2 - this) <= 0x16)
  {
    __assert_rtn("make_device_identity", "sysex.cpp", 103, "data_pos + 10 < data.size()");
  }

  return (*(this + 12) << 16) | (*(this + 13) << 8) | *(this + 14) | (*(this + 15) << 32) | (*(this + 16) << 39) | (*(this + 18) << 55) | (*(this + 17) << 48);
}

void ProfileDetailsTransaction::complete(SetupManager *a1, int a2, UInt8 *bytes, CFIndex length)
{
  if (bytes)
  {
    v4 = length == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    a2 = 1;
  }

  if (a2 == 1)
  {
    v6 = 0;
  }

  else
  {
    v7 = CFDataCreate(0, bytes, length);
    v6 = v7;
    if (!v7)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](exception, "Could not construct");
    }

    v8 = CFGetTypeID(v7);
    if (v8 != CFDataGetTypeID())
    {
      v11 = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x2383C7ED0](v11, "Could not construct");
    }

    a1 = CFRetain(v6);
  }

  v9 = SetupManager::instance(a1);
  SetupManager::AddNotification(v9);
  if ((a2 & 1) == 0)
  {
    CFRelease(v6);
  }
}

void sub_2371EC750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, const void *a12, const void *a13)
{
  __cxa_free_exception(v13);
  applesauce::CF::ObjectRef<__CFData const*>::~ObjectRef(&a13);
  applesauce::CF::DataRef::~DataRef(&a12);
  _Unwind_Resume(a1);
}

void applesauce::CF::details::find_at_key_or_optional<std::vector<unsigned long long>,char const* const&>(_BYTE *a1, const __CFDictionary *a2, char *__s)
{
  v4 = applesauce::CF::details::at_key<char const* const&>(a2, __s);
  if (v4)
  {

    applesauce::CF::convert_as<std::vector<unsigned long long>,0>(a1, v4);
  }

  else
  {
    *a1 = 0;
    a1[24] = 0;
  }
}

void applesauce::CF::convert_as<std::vector<unsigned long long>,0>(uint64_t a1, const __CFArray *a2)
{
  TypeID = CFArrayGetTypeID();
  if (TypeID == CFGetTypeID(a2))
  {
    Count = CFArrayGetCount(a2);
    if (Count << 32)
    {
      if (!(Count >> 61))
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(Count);
      }

      std::vector<CADeprecated::XMachServer::Client *>::__throw_length_error[abi:ne200100]();
    }

    if (Count < 1)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *(a1 + 24) = 1;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
      applesauce::CF::convert_as<unsigned long long,0>(ValueAtIndex);
      if (v7)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(1uLL);
      }

      *a1 = 0;
      *(a1 + 24) = 0;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 24) = 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t applesauce::CF::convert_as<unsigned int,0>(const __CFNumber *a1)
{
  TypeID = CFNumberGetTypeID();
  if (TypeID == CFGetTypeID(a1))
  {
    switch(CFNumberGetType(a1))
    {
      case kCFNumberSInt8Type:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberSInt8Type, &valuePtr);
        goto LABEL_26;
      case kCFNumberSInt16Type:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberSInt16Type, &valuePtr);
        goto LABEL_19;
      case kCFNumberSInt32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt32Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberSInt64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberSInt64Type, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloat32Type:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat32Type, &valuePtr);
        goto LABEL_11;
      case kCFNumberFloat64Type:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberFloat64Type, &valuePtr);
        goto LABEL_23;
      case kCFNumberCharType:
        LOBYTE(valuePtr) = 0;
        Value = CFNumberGetValue(a1, kCFNumberCharType, &valuePtr);
LABEL_26:
        LOBYTE(v11) = LOBYTE(valuePtr);
        if (!Value)
        {
          LOBYTE(v11) = 0;
        }

        v12 = SLOBYTE(valuePtr) < 0 && Value != 0;
        v13.i64[0] = Value != 0;
        v13.i64[1] = v12 << 63 >> 63;
        break;
      case kCFNumberShortType:
        LOWORD(valuePtr) = 0;
        v10 = CFNumberGetValue(a1, kCFNumberShortType, &valuePtr);
LABEL_19:
        if (v10)
        {
          v11 = SLOWORD(valuePtr) & 0xFFFFFFFFLL | 0x100000000;
        }

        else
        {
          v11 = 0;
        }

        goto LABEL_37;
      case kCFNumberIntType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberIntType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberLongLongType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberLongLongType, &valuePtr);
        goto LABEL_34;
      case kCFNumberFloatType:
        LODWORD(valuePtr) = 0;
        v8 = CFNumberGetValue(a1, kCFNumberFloatType, &valuePtr);
LABEL_11:
        v9 = *&valuePtr;
        goto LABEL_35;
      case kCFNumberDoubleType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberDoubleType, &valuePtr);
        goto LABEL_23;
      case kCFNumberCFIndexType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr);
        goto LABEL_34;
      case kCFNumberNSIntegerType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberNSIntegerType, &valuePtr);
LABEL_34:
        v9 = LODWORD(valuePtr);
        goto LABEL_35;
      case kCFNumberCGFloatType:
        valuePtr = 0.0;
        v8 = CFNumberGetValue(a1, kCFNumberCGFloatType, &valuePtr);
LABEL_23:
        v9 = valuePtr;
LABEL_35:
        v11 = v9 | 0x100000000;
        if (!v8)
        {
          v11 = 0;
        }

LABEL_37:
        v13 = vshlq_u64(vdupq_n_s64(v11), xmmword_23726C340);
        break;
      default:
        LOBYTE(v11) = 0;
        v13 = 0uLL;
        break;
    }

    v14 = vandq_s8(vshlq_u64(v13, xmmword_23726C350), xmmword_23726C360);
    v7 = v14.i64[0] | v11 | v14.i64[1];
  }

  else
  {
    v4 = CFBooleanGetTypeID();
    if (v4 == CFGetTypeID(a1))
    {
      v5 = CFBooleanGetValue(a1);
      v6 = 0x100000000;
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }

    v7 = v6 | v5;
  }

  return v7 & 0xFFFFFFFFFFLL;
}

CFDataRef MIDIProcessMIG::GetObjectTree(MIDIProcessMIG *this, int *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = *((**this)(this) + 468);
  memset(&msg[20], 0, 44);
  *&msg[4] = 0u;
  *&msg[24] = *MEMORY[0x277D85EF8];
  reply_port = mig_get_reply_port();
  *&msg[8] = v3;
  *&msg[12] = reply_port;
  *msg = 5395;
  *&msg[16] = 0x1F4900000000;
  if (MEMORY[0x28223BE58])
  {
    voucher_mach_msg_set(msg);
    v5 = *&msg[12];
  }

  else
  {
    v5 = reply_port;
  }

  v6 = mach_msg(msg, 275, 0x24u, 0x40u, v5, 0x493E0u, 0);
  v7 = v6;
  if ((v6 - 268435458) <= 0xE && ((1 << (v6 - 2)) & 0x4003) != 0)
  {
    mig_put_reply_port(*&msg[12]);
  }

  else
  {
    if (!v6)
    {
      if (*&msg[20] == 71)
      {
        v8 = -308;
      }

      else if (*&msg[20] == 8109)
      {
        if ((*msg & 0x80000000) == 0)
        {
          if (*&msg[4] == 36)
          {
            v8 = -300;
            if (*&msg[32])
            {
              if (*&msg[8])
              {
                v8 = -300;
              }

              else
              {
                v8 = *&msg[32];
              }
            }
          }

          else
          {
            v8 = -300;
          }

          goto LABEL_30;
        }

        v8 = -300;
        if (*&msg[24] == 1 && *&msg[4] == 56 && !*&msg[8] && msg[39] == 1)
        {
          v10 = *&msg[40];
          if (*&msg[40] == *&msg[52])
          {
            v11 = *&msg[28];
            *a2 = 0;
            *msg = v11;
            *&msg[8] = v10;
            *&msg[12] = 0;
            *&msg[16] = 0;
            v9 = CFDataCreate(0, v11, v10);
            IPCBufferReader::~IPCBufferReader(msg);
            return v9;
          }
        }
      }

      else
      {
        v8 = -301;
      }

LABEL_30:
      mach_msg_destroy(msg);
      v9 = 0;
      *a2 = v8;
      return v9;
    }

    mig_dealloc_reply_port(*&msg[12]);
  }

  v8 = 268435460;
  if (v7 == 268435460)
  {
    if ((*msg & 0x1F00) == 0x1100)
    {
      mach_port_deallocate(*MEMORY[0x277D85F48], *&msg[12]);
    }

    goto LABEL_30;
  }

  v9 = 0;
  *a2 = v7;
  return v9;
}

void sub_2371ECF80(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  IPCBufferReader::~IPCBufferReader(va);
  _Unwind_Resume(a1);
}

uint64_t MIDIProcessMIG::InitOnce(MIDIProcessMIG *this)
{
  v3 = this;
  if (atomic_load_explicit(&MIDIProcessMIG::InitOnce(void)::onceflag, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(&MIDIProcessMIG::InitOnce(void)::onceflag, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<MIDIProcessMIG::InitOnce(void)::$_0 &&>>);
  }

  return *(this + 2);
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<MIDIProcessMIG::InitOnce(void)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  result = (*(*v1 + 32))(v1);
  *(v1 + 8) = result;
  atomic_store(1u, (v1 + 12));
  return result;
}

uint64_t MIDIProcessMIG::Uninitialize(MIDIProcessMIG *this)
{
  *(this + 14) = 1;
  atomic_store(0, this + 12);
  if (*(this + 117))
  {
    *(this + 117) = 0;
  }

  v2 = (this + 24);
  if (*(this + 3))
  {
    std::unique_ptr<XClientMachPort>::reset[abi:ne200100](v2, 0);
  }

  *(this + 116) = 0;
  MIDIProcess::deleteInThread(this);

  return MIDIProcess::deleteIOBuffers(this);
}

void MIDIProcessMIG::~MIDIProcessMIG(MIDIProcessMIG *this)
{
  MIDIProcess::~MIDIProcess(this);

  JUMPOUT(0x2383C8250);
}

void MIDIProcess::MIDIProcess(MIDIProcess *this)
{
  *this = &unk_284A460E8;
  *(this + 1) = 0u;
  *(this + 2) = 0;
  *(this + 11) = 0;
  *(this + 2) = 0u;
  *(this + 6) = 0;
  CADeprecated::CAMutex::CAMutex((this + 56), "LocalClientList");
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 9) = 0u;
  CADeprecated::CAMutex::CAMutex((this + 192), "LocalMIDIReceiverList");
  *(this + 35) = 0;
  CADeprecated::CAMutex::CAMutex((this + 288), "mObjectCacheLock");
  *(this + 47) = 0;
  *(this + 48) = &unk_284A48A38;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCPtrKeyCallbacks, &kCPtrValueCallbacks);
  *(this + 48) = &unk_284A488C0;
  *(this + 49) = Mutable;
  *(this + 50) = &unk_284A48A38;
  v3 = CFDictionaryCreateMutable(0, 0, &kCPtrKeyCallbacks, &kCPtrValueCallbacks);
  *(this + 50) = &unk_284A488E0;
  *(this + 51) = v3;
  *(this + 56) = 0;
  *(this + 57) = 0;
}

void sub_2371ED5CC(_Unwind_Exception *a1)
{
  TCFDictionaryBase::~TCFDictionaryBase(v3);
  CADeprecated::CAMutex::~CAMutex((v1 + 288));
  LocalMIDIReceiverList::~LocalMIDIReceiverList((v1 + 168));
  LocalClientList::~LocalClientList((v1 + 56));
  v5 = *(v1 + 48);
  *(v1 + 48) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(v1 + 40);
  *(v1 + 40) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(v1 + 32);
  *(v1 + 32) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v8)
  {
    XClientMachPort::~XClientMachPort(v8);
    MEMORY[0x2383C8250]();
  }

  v9 = *v2;
  *v2 = 0;
  if (v9)
  {
    XServerMachPort::~XServerMachPort(v9);
    MEMORY[0x2383C8250]();
  }

  _Unwind_Resume(a1);
}

void LocalMIDIReceiverList::~LocalMIDIReceiverList(const void ****this)
{
  v3 = *this;
  v2 = this[1];
  if (*this != v2)
  {
    do
    {
      if (*v3)
      {
        LocalMIDIReceiver::~LocalMIDIReceiver(*v3);
        MEMORY[0x2383C8250]();
        v2 = this[1];
      }

      ++v3;
    }

    while (v3 != v2);
  }

  CADeprecated::CAMutex::~CAMutex((this + 3));
  v4 = *this;
  if (*this)
  {
    this[1] = v4;
    operator delete(v4);
  }
}

void LocalClientList::~LocalClientList(LocalClientList *this)
{
  v2 = (this + 88);
  std::vector<std::shared_ptr<LocalMIDIClient>>::__destroy_vector::operator()[abi:ne200100](&v2);

  CADeprecated::CAMutex::~CAMutex(this);
}

void XClientMachPort::~XClientMachPort(mach_port_name_t *this)
{
  if (*this)
  {
    mach_port_deallocate(*MEMORY[0x277D85F48], *this);
  }
}

void std::vector<std::shared_ptr<LocalMIDIClient>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::shared_ptr<LocalMIDIClient>>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::shared_ptr<LocalMIDIClient>>::clear[abi:ne200100](uint64_t *a1)
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

void TCFDictionaryBase::~TCFDictionaryBase(TCFDictionaryBase *this)
{
  *this = &unk_284A48A38;
  v1 = *(this + 1);
  if (v1)
  {
    CFRelease(v1);
  }
}

{
  TCFDictionaryBase::~TCFDictionaryBase(this);

  JUMPOUT(0x2383C8250);
}

void TCFDictionary_C2C<unsigned int,unsigned int>::~TCFDictionary_C2C(TCFDictionaryBase *a1)
{
  TCFDictionaryBase::~TCFDictionaryBase(a1);

  JUMPOUT(0x2383C8250);
}

void TCFDictionary_C2C<unsigned int,ObjectTreeCache::ObjectArray *>::~TCFDictionary_C2C(TCFDictionaryBase *a1)
{
  TCFDictionaryBase::~TCFDictionaryBase(a1);

  JUMPOUT(0x2383C8250);
}

void MIDIProcessMIG::MIDIProcessMIG(MIDIProcessMIG *this)
{
  MIDIProcess::MIDIProcess(MIDIProcess::defaultInstance(int)::migImpl);
  MIDIProcess::defaultInstance(int)::migImpl[0] = &unk_284A45F68;
  qword_27DE98058 = 0;
  _InitMIDIProperties();
  v1 = MEMORY[0x277D85F48];
  mach_port_allocate(*MEMORY[0x277D85F48], 1u, &qword_27DE98058);
  mach_port_insert_right(*v1, qword_27DE98058, qword_27DE98058, 0x14u);
  v2 = MSHCreateMIGServerSource(&MIDIClientCallbackListener_MIDIClientCallbacks_subsystem, 0, qword_27DE98058, MIDIProcess::defaultInstance(int)::migImpl);
  v3 = qword_27DE98050;
  qword_27DE98050 = v2;
  if (v3)
  {
    CFRelease(v3);
  }

  Current = CFRunLoopGetCurrent();
  MIDIProcess::SetCallbackRunLoop(MIDIProcess::defaultInstance(int)::migImpl, Current);
  MIDIProcess::createInPort(MIDIProcess::defaultInstance(int)::migImpl);
}

void sub_2371EDDB8(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_2371EDF68(_Unwind_Exception *a1)
{
  os_unfair_recursive_lock_unlock();

  _Unwind_Resume(a1);
}

void sub_2371EDFD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = MIDIUMPMutableFunctionBlock;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_2371EE76C(_Unwind_Exception *a1)
{
  v6 = v4;

  _Unwind_Resume(a1);
}

void gSessionManager(void)
{
  {
    caulk::log_category::log_category(&gSessionManager(void)::cisrvr, "com.apple.coremidi", "cisrvr");
  }
}

void MIDICIMUIDList::~MIDICIMUIDList(MIDICIMUIDList *this)
{
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  CADeprecated::CAMutex::~CAMutex((this + 24));
  v3 = *this;
  if (*this)
  {
    *(this + 1) = v3;
    operator delete(v3);
  }
}

void MIDICISessionList::~MIDICISessionList(MIDICISessionList *this)
{
  *this = &unk_284A46860;
  v2 = (this + 32);
  OwnedPtrVector<MIDICIServerSession *>::~OwnedPtrVector(this + 120);
  CADeprecated::CAMutex::~CAMutex(v2);

  OwnedPtrVector<MIDICIServerSession *>::~OwnedPtrVector(this);
}

{
  MIDICISessionList::~MIDICISessionList(this);

  JUMPOUT(0x2383C8250);
}