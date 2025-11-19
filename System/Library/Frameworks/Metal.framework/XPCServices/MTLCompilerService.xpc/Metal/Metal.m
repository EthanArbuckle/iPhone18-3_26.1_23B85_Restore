void MTLConnectionCtx::MTLConnectionCtx(uint64_t a1, int a2)
{
  *a1 = 850045863;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = a2;
  operator new();
}

void MTLConnectionCtx::~MTLConnectionCtx(std::mutex *this)
{
  (*(this[1].__m_.__sig + 16))(*this[1].__m_.__opaque);
  sig = this[1].__m_.__sig;
  if (sig)
  {
    CompilerPluginInterface::~CompilerPluginInterface(sig);
    operator delete();
  }

  std::mutex::~mutex(this);
}

uint64_t MTLConnectionCtx::getLLVMVersion(std::mutex *this)
{
  std::mutex::lock(this);
  v2 = *&this[1].__m_.__opaque[8];
  std::mutex::unlock(this);
  return v2;
}

uint64_t MTLConnectionCtx::getService(std::mutex *this)
{
  std::mutex::lock(this);
  v2 = *this[1].__m_.__opaque;
  std::mutex::unlock(this);
  return v2;
}

uint64_t MTLConnectionCtx::getDispatch(std::mutex *this)
{
  std::mutex::lock(this);
  sig = this[1].__m_.__sig;
  std::mutex::unlock(this);
  return sig;
}

void MTLConnectionCtx::setInUse(std::mutex *this, char a2)
{
  std::mutex::lock(this);
  this[1].__m_.__opaque[12] = a2;

  std::mutex::unlock(this);
}

void CompilerPluginInterface::CompilerPluginInterface(CompilerPluginInterface *this, int a2)
{
  *(this + 10) = a2;
  v3 = "/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32023/MTLCompiler";
  if (a2 != 32023)
  {
    v3 = 0;
  }

  if (a2 == 32024)
  {
    v4 = "/System/Library/PrivateFrameworks/MTLCompiler.framework/Versions/32024/MTLCompiler";
  }

  else
  {
    v4 = v3;
  }

  v5 = dlopen(v4, 5);
  *this = v5;
  if (v5)
  {
    *(this + 1) = dlsym(v5, "MTLCodeGenServiceCreate");
    *(this + 2) = dlsym(*this, "MTLCodeGenServiceDestroy");
    *(this + 3) = dlsym(*this, "MTLCodeGenServiceBuildRequest");
    *(this + 4) = dlsym(*this, "MTLCodeGenServiceSetPluginPath");
  }

  else
  {
    v6 = dlerror();
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      CompilerPluginInterface::CompilerPluginInterface(v6);
    }

    *(this + 24) = 0u;
    *(this + 8) = 0u;
  }
}

void CompilerPluginInterface::~CompilerPluginInterface(void **this)
{
  v1 = *this;
  if (v1)
  {
    dlclose(v1);
  }
}

uint64_t MTLCompilerServiceTimer::MTLCompilerServiceTimer(uint64_t a1, int a2, char a3, uint64_t *a4, dispatch_queue_t *a5, void *a6)
{
  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 12) = 0;
  if (a2)
  {
    v10 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *a5);
    *a1 = v10;
    if (!v10)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        MTLCompilerServiceTimer::MTLCompilerServiceTimer(a4);
      }

      abort();
    }

    v11 = v10;
    v12 = dispatch_time(0, 1000000000 * *(a1 + 8));
    dispatch_source_set_timer(v11, v12, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*a1, a6);
    dispatch_activate(*a1);
    *(a1 + 12) = 1;
    if ((a3 & 1) == 0)
    {
      dispatch_suspend(*a1);
      *(a1 + 12) = 0;
    }
  }

  return a1;
}

void MTLCompilerServiceTimer::~MTLCompilerServiceTimer(NSObject **this)
{
  v2 = *this;
  if (v2)
  {
    if (*(this + 12) == 1)
    {
      dispatch_source_cancel(v2);
      v2 = *this;
    }

    dispatch_release(v2);
    *this = 0;
  }
}

void MTLCompilerServiceTimer::start(dispatch_object_t *this)
{
  v2 = *this;
  v3 = dispatch_time(0, 1000000000 * *(this + 2));
  dispatch_source_set_timer(v2, v3, 0xFFFFFFFFFFFFFFFFLL, 0);
  if ((*(this + 12) & 1) == 0)
  {
    dispatch_resume(*this);
    *(this + 12) = 1;
  }
}

void MTLCompilerServiceTimer::stop(dispatch_object_t *this)
{
  if (*(this + 12) == 1)
  {
    dispatch_suspend(*this);
    *(this + 12) = 0;
  }
}

_BYTE *MTLCompilerServiceTimer::TimeoutTypeToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 2)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_100008400[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

_BYTE *std::string::basic_string[abi:ne200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t compileRequestMain(unsigned int *a1)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __compileRequestMain_block_invoke;
  v5[3] = &__block_descriptor_40_e20_v36__0I8r_v12Q20r_28l;
  v5[4] = a1;
  *(a1 + 6) = v5;
  v2 = *(MTLConnectionCtx::getDispatch(*(a1 + 7)) + 24);
  Service = MTLConnectionCtx::getService(*(a1 + 7));
  v2(Service, *a1, a1[1], *(a1 + 3), *(a1 + 1), *(a1 + 6));
  return 0;
}

void MTLCompilerService::sendReply(xpc_object_t *a1, xpc_object_t *a2, uint64_t value, void *bytes, size_t length, const char *a6)
{
  v7 = *a1;
  if (v7)
  {
    if (value)
    {
      xpc_dictionary_set_uint64(v7, "error", value);
      if (a6)
      {
        xpc_dictionary_set_string(*a1, "errorMessage", a6);
      }
    }

    else
    {
      v10 = xpc_data_create(bytes, length);
      xpc_dictionary_set_uint64(*a1, "error", 0);
      xpc_dictionary_set_value(*a1, "reply", v10);
      xpc_release(v10);
    }

    remote_connection = xpc_dictionary_get_remote_connection(*a2);
    v12 = *a1;

    xpc_connection_send_message(remote_connection, v12);
  }
}

void *MTLCompilerService::getInstance(MTLCompilerService *this)
{
  {
    MTLCompilerService::MTLCompilerService(&MTLCompilerService::getInstance(void)::instance);
    __cxa_atexit(MTLCompilerService::~MTLCompilerService, &MTLCompilerService::getInstance(void)::instance, &_mh_execute_header);
  }

  return &MTLCompilerService::getInstance(void)::instance;
}

uint64_t MTLCompilerService::isProbGuardMallocEnabled(MTLCompilerService *this)
{
  if (MTLCompilerService::isProbGuardMallocEnabled(void)::onceToken != -1)
  {
    MTLCompilerService::isProbGuardMallocEnabled();
  }

  return MTLCompilerService::isProbGuardMallocEnabled(void)::result;
}

void ___ZN18MTLCompilerService24isProbGuardMallocEnabledEv_block_invoke(id a1)
{
  if (malloc_num_zones >= 1)
  {
    v1 = 0;
    while (1)
    {
      zone_name = malloc_get_zone_name(*(malloc_zones + 8 * v1));
      if (!strncmp(zone_name, "ProbGuardMallocZone", 0x14uLL))
      {
        break;
      }

      if (++v1 >= malloc_num_zones)
      {
        return;
      }
    }

    MTLCompilerService::isProbGuardMallocEnabled(void)::result = 1;
  }
}

std::chrono::duration<long long, std::ratio<1, 1000000000>>::rep MTLCompilerService::spinWait(MTLCompilerService *this)
{
  v1.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_ + 1000000 * this;
  while (1)
  {
    result = std::chrono::steady_clock::now().__d_.__rep_;
    if (result >= v1.__d_.__rep_)
    {
      break;
    }

    sched_yield();
  }

  return result;
}

void MTLCompilerService::MTLCompilerService(MTLCompilerService *this)
{
  v2 = std::string::basic_string[abi:ne200100]<0>(this, &unk_1000056EB);
  *(v2 + 3) = 850045863;
  v3 = v2 + 24;
  *(v2 + 12) = 0;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 13) = dispatch_queue_create(0, 0);
  bzero(v3 + 88, 0x428uLL);
  *(v3 + 288) = 1065353216;
  v3[1160] = 0;
  *(v3 + 291) = 0;
  *(v3 + 80) = 0u;
  pthread_mutex_init((v3 + 1168), 0);
  pthread_cond_init((this + 1256), 0);
}

void sub_10000135C(_Unwind_Exception *a1)
{
  std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::~__hash_table(v2 + 1120);
  v5 = 1136;
  while (1)
  {
    v6 = *(v1 + v5);
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v6);
    }

    v5 -= 16;
    if (v5 == 112)
    {
      std::unique_ptr<MTLCompilerServiceTimer>::reset[abi:ne200100](v3, 0);
      std::unique_ptr<MTLCompilerServiceTimer>::reset[abi:ne200100]((v2 + 64), 0);
      std::mutex::~mutex(v2);
      if (*(v1 + 23) < 0)
      {
        operator delete(*v1);
      }

      _Unwind_Resume(a1);
    }
  }
}

void MTLCompilerService::~MTLCompilerService(MTLCompilerService *this)
{
  v2 = *(this + 13);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 13) = 0;
  }

  pthread_cond_destroy((this + 1256));
  pthread_mutex_destroy((this + 1192));
  std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::~__hash_table(this + 1144);
  for (i = 1136; i != 112; i -= 16)
  {
    v4 = *(this + i);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v4);
    }
  }

  std::unique_ptr<MTLCompilerServiceTimer>::reset[abi:ne200100](this + 12, 0);
  std::unique_ptr<MTLCompilerServiceTimer>::reset[abi:ne200100](this + 11, 0);
  std::mutex::~mutex((this + 24));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

uint64_t MTLCompilerService::initializeSandbox(MTLCompilerService *this)
{
  if (getenv("TMPDIR"))
  {
    unsetenv("TMPDIR");
  }

  bzero(v2, 0x400uLL);
  _set_user_dir_suffix();
  if (!confstr(65537, v2, 0x400uLL) && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    MTLCompilerService::initializeSandbox();
  }

  return 1;
}

void MTLCompilerService::createIdleTimer(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 1304);
  v4[0] = a1;
  v4[1] = a2;
  if (atomic_load_explicit(v3, memory_order_acquire) != -1)
  {
    v6 = v4;
    v5 = &v6;
    std::__call_once(v3, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<MTLCompilerService::createIdleTimer(NSObject  {objcproto17OS_dispatch_queue}* const&)::$_0 &&>>);
  }
}

void MTLCompilerService::createHangTimer(uint64_t a1)
{
  v2 = (a1 + 1312);
  v3 = a1;
  if (atomic_load_explicit(v2, memory_order_acquire) != -1)
  {
    v5 = &v3;
    v4 = &v5;
    std::__call_once(v2, &v4, std::__call_once_proxy[abi:ne200100]<std::tuple<MTLCompilerService::createHangTimer(NSObject  {objcproto13OS_xpc_object}* const&,NSObject {objcproto17OS_dispatch_queue}* const&)::$_0 &&>>);
  }
}

uint64_t MTLCompilerService::waitForAllActiveContextsToComplete(uint64_t a1, uint64_t *a2)
{
  pthread_mutex_lock((a1 + 1192));
  v4 = *(a1 + 112);
  if (v4 >= 1)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT) || (*(a2 + 23) >= 0 ? (v5 = a2) : (v5 = *a2), v8 = 134218242, v9 = v4, v10 = 2080, v11 = v5, _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MTLCompilerService: Waiting for %lld active compilations to complete. Reason: %s", &v8, 0x16u), *(a1 + 112) >= 1))
    {
      do
      {
        pthread_cond_wait((a1 + 1256), (a1 + 1192));
      }

      while (*(a1 + 112) > 0);
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v6 = a2;
      }

      else
      {
        v6 = *a2;
      }

      v8 = 136315138;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "MTLCompilerService: All active compilations have completed. Reason: %s", &v8, 0xCu);
    }
  }

  return pthread_mutex_unlock((a1 + 1192));
}

void MTLCompilerService::errorHandler(uint64_t a1, xpc_object_t object)
{
  if (*(a1 + 23) < 0)
  {
    v4 = *(a1 + 8);
    if (v4)
    {
      std::string::__init_copy_ctor_external(&v34, *a1, v4);
      goto LABEL_7;
    }
  }

  else if (*(a1 + 23))
  {
    v34 = *a1;
    goto LABEL_7;
  }

  std::string::basic_string[abi:ne200100]<0>(&v34, "(unknown client)");
LABEL_7:
  if (object == &_xpc_error_connection_invalid)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLCompilerService::errorHandler(&v34);
    }

    std::string::basic_string[abi:ne200100]<0>(&v30, "XPC_ERROR_CONNECTION_INVALID - Connection to host app '");
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v34;
    }

    else
    {
      v12 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v34.__r_.__value_.__l.__size_;
    }

    v14 = std::string::append(&v30, v12, size);
    v15 = *&v14->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(&v31, "' is invalid");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v33 = v16->__r_.__value_.__r.__words[2];
    *__p = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  else if (object == &_xpc_error_connection_interrupted)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLCompilerService::errorHandler(&v34);
    }

    std::string::basic_string[abi:ne200100]<0>(&v30, "XPC_ERROR_CONNECTION_INTERRUPTED - Host app '");
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v34;
    }

    else
    {
      v18 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v34.__r_.__value_.__l.__size_;
    }

    v20 = std::string::append(&v30, v18, v19);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    v22 = std::string::append(&v31, "' might have exited");
    v23 = *&v22->__r_.__value_.__l.__data_;
    v33 = v22->__r_.__value_.__r.__words[2];
    *__p = v23;
    v22->__r_.__value_.__l.__size_ = 0;
    v22->__r_.__value_.__r.__words[2] = 0;
    v22->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if (object != &_xpc_error_termination_imminent)
    {
      v5 = xpc_copy_description(object);
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        MTLCompilerService::errorHandler(&v34);
        if (!v5)
        {
          goto LABEL_13;
        }
      }

      else if (!v5)
      {
LABEL_13:
        std::string::basic_string[abi:ne200100]<0>(&v30, "Unknown XPC error from client '");
        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v6 = &v34;
        }

        else
        {
          v6 = v34.__r_.__value_.__r.__words[0];
        }

        if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v7 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v7 = v34.__r_.__value_.__l.__size_;
        }

        v8 = std::string::append(&v30, v6, v7);
        v9 = *&v8->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v9;
        v8->__r_.__value_.__l.__size_ = 0;
        v8->__r_.__value_.__r.__words[2] = 0;
        v8->__r_.__value_.__r.__words[0] = 0;
        v10 = std::string::append(&v31, "' - ensuring clean shutdown");
        v11 = *&v10->__r_.__value_.__l.__data_;
        v33 = v10->__r_.__value_.__r.__words[2];
        *__p = v11;
        v10->__r_.__value_.__l.__size_ = 0;
        v10->__r_.__value_.__r.__words[2] = 0;
        v10->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v31.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        goto LABEL_62;
      }

      free(v5);
      goto LABEL_13;
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLCompilerService::errorHandler(&v34);
    }

    std::string::basic_string[abi:ne200100]<0>(&v30, "XPC_ERROR_TERMINATION_IMMINENT - Compiler service for client '");
    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v24 = &v34;
    }

    else
    {
      v24 = v34.__r_.__value_.__r.__words[0];
    }

    if ((v34.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v25 = HIBYTE(v34.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v25 = v34.__r_.__value_.__l.__size_;
    }

    v26 = std::string::append(&v30, v24, v25);
    v27 = *&v26->__r_.__value_.__l.__data_;
    v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
    *&v31.__r_.__value_.__l.__data_ = v27;
    v26->__r_.__value_.__l.__size_ = 0;
    v26->__r_.__value_.__r.__words[2] = 0;
    v26->__r_.__value_.__r.__words[0] = 0;
    v28 = std::string::append(&v31, "' must terminate");
    v29 = *&v28->__r_.__value_.__l.__data_;
    v33 = v28->__r_.__value_.__r.__words[2];
    *__p = v29;
    v28->__r_.__value_.__l.__size_ = 0;
    v28->__r_.__value_.__r.__words[2] = 0;
    v28->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v30.__r_.__value_.__l.__data_);
    }
  }

LABEL_62:
  MTLCompilerService::waitForAllActiveContextsToComplete(a1, __p);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }
}

void sub_100001B1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (*(v28 - 25) < 0)
  {
    operator delete(*(v28 - 48));
  }

  _Unwind_Resume(exception_object);
}

void MTLCompilerService::eventHandler(uint64_t a1, xpc_connection_t connection)
{
  if (*(a1 + 1184) == 1)
  {
    xpc_connection_set_target_queue(connection, *(a1 + 104));
  }

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = ___ZN18MTLCompilerService12eventHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
  handler[3] = &__block_descriptor_40_e33_v16__0__NSObject_OS_xpc_object__8l;
  handler[4] = a1;
  xpc_connection_set_event_handler(connection, handler);
  xpc_connection_resume(connection);
}

void ___ZN18MTLCompilerService12eventHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, xpc_object_t object)
{
  v3 = *(a1 + 32);
  type = xpc_get_type(object);
  if (type == &_xpc_type_error)
  {

    MTLCompilerService::errorHandler(v3, object);
  }

  else
  {
    v5 = type;
    if (type == &_xpc_type_dictionary)
    {

      MTLCompilerService::messageHandler(v3, object);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ___ZN18MTLCompilerService12eventHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke_cold_1(v5);
    }
  }
}

void MTLCompilerService::messageHandler(uint64_t a1, xpc_object_t xdict)
{
  xdicta = xdict;
  uint64 = xpc_dictionary_get_uint64(xdict, "connectionId");
  reply = xpc_dictionary_create_reply(xdict);
  object = reply;
  v6 = xpc_dictionary_get_uint64(xdict, "requestType");
  if (v6 == 9)
  {
    if (MTLCompilerService::isProbGuardMallocEnabled(void)::onceToken != -1)
    {
      MTLCompilerService::isProbGuardMallocEnabled();
    }

    if (MTLCompilerService::isProbGuardMallocEnabled(void)::result == 1)
    {
      xpc_dictionary_set_BOOL(reply, "ProbGuardMalloc", 1);
    }

    remote_connection = xpc_dictionary_get_remote_connection(xdict);
    xpc_connection_send_message(remote_connection, reply);

    xpc_release(reply);
  }

  else
  {
    xpc_dictionary_get_value(xdict, "sandboxTokens");
    v8 = xpc_dictionary_get_uint64(xdict, "llvmVersion");
    string = xpc_dictionary_get_string(xdict, "pluginPath");
    MTLSandboxExtensionContainer::MTLCompilerSandboxExtensions(string);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = ___ZN18MTLCompilerService14messageHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
    block[3] = &unk_1000084A0;
    block[4] = xdict;
    block[5] = a1;
    if (MTLCompilerService::messageHandler(NSObject  {objcproto13OS_xpc_object}*)::onceToken != -1)
    {
      dispatch_once(&MTLCompilerService::messageHandler(NSObject  {objcproto13OS_xpc_object}*)::onceToken, block);
    }

    MTLCompilerService::createIdleTimer(a1, a1 + 104);
    v25 = a1;
    if (atomic_load_explicit((a1 + 1312), memory_order_acquire) != -1)
    {
      v21 = &v25;
      v26 = &v21;
      std::__call_once((a1 + 1312), &v26, std::__call_once_proxy[abi:ne200100]<std::tuple<MTLCompilerService::createHangTimer(NSObject  {objcproto13OS_xpc_object}* const&,NSObject {objcproto17OS_dispatch_queue}* const&)::$_0 &&>>);
    }

    ConnectionCtxInstance = MTLCompilerService::getConnectionCtxInstance(a1, v8, uint64);
    v11 = xdicta;
    if (!string)
    {
      goto LABEL_19;
    }

    value = xpc_dictionary_get_value(xdicta, "targetData");
    length = value;
    if (value)
    {
      bytes_ptr = xpc_data_get_bytes_ptr(value);
      length = xpc_data_get_length(length);
    }

    else
    {
      bytes_ptr = 0;
    }

    pthread_mutex_lock((a1 + 1192));
    v15 = *(MTLConnectionCtx::getDispatch(ConnectionCtxInstance) + 32);
    Service = MTLConnectionCtx::getService(ConnectionCtxInstance);
    v17 = v15(Service, string, bytes_ptr, length);
    pthread_mutex_unlock((a1 + 1192));
    if (v17 != -1)
    {
LABEL_19:
      v18 = xpc_dictionary_get_value(v11, "data");
      if (xpc_get_type(v18) == &_xpc_type_data)
      {
        v19 = xpc_data_get_bytes_ptr(v18);
        xpc_data_get_length(v18);
      }

      else
      {
        v19 = 0;
      }

      if (v6 == 16)
      {
        v20 = xpc_dictionary_get_value(v11, "machOFD");
        if (xpc_get_type(v20) == &_xpc_type_fd)
        {
          v19[3] = xpc_fd_dup(v20);
          *(v19 + 129) = 0;
        }
      }

      xpc_dictionary_get_uint64(v11, "setRelaxedMath");
      operator new();
    }

    v21 = 0;
    asprintf_l(&v21, 0, "- Could not load compiler plugin at %s", string);
    MTLCompilerService::sendReply(&object, &xdicta, 2uLL, 0, 0, v21);
    xpc_release(object);
    free(v21);
  }
}

__n128 ___ZN18MTLCompilerService14messageHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  string = xpc_dictionary_get_string(*(a1 + 32), "client_name");
  if (string)
  {
    v3 = string;
  }

  else
  {
    v3 = "(unknown client)";
  }

  std::string::basic_string[abi:ne200100]<0>(&v5, v3);
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  result = v5;
  *(v1 + 16) = v6;
  *v1 = result;
  return result;
}

uint64_t MTLCompilerService::getConnectionCtxInstance(MTLCompilerService *this, unint64_t a2, uint64_t a3)
{
  pthread_mutex_lock((this + 1192));
  v8[0] = a2;
  v8[2] = v8;
  v6 = &std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(this + 143, v8)[a3];
  pthread_mutex_unlock((this + 1192));
  result = v6[3];
  if (!result)
  {
    operator new();
  }

  return result;
}

void MTLCompilerService::assignContextToArray(uint64_t a1, void *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a1 + 16 * *(*a2 + 16);
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(v4 + 128);
  *(v4 + 120) = v2;
  *(v4 + 128) = v3;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }
}

void MTLCompilerService::beginCompilation(MTLCompilerService *this, int a2)
{
  if (!*(this + 14))
  {
    v4 = *(this + 11);
    if (v4)
    {
      MTLCompilerServiceTimer::stop(v4);
    }

    v5 = *(this + 12);
    if (v5)
    {
      MTLCompilerServiceTimer::start(v5);
    }
  }

  if (a2)
  {
    if (!atomic_load(this + 297))
    {
      setenv("MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH", "1", 1);
    }

    atomic_fetch_add(this + 297, 1u);
  }

  ++*(this + 14);
}

void MTLCompilerService::removeContextFromArray(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 120;
  v4 = (a1 + 120 + 16 * *(*a2 + 16));
  v5 = v4[1];
  *v4 = 0;
  v4[1] = 0;
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  v6 = (v3 + 16 * *(*a2 + 16));
  v7 = v6[1];
  *v6 = 0;
  v6[1] = 0;
  if (v7)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v7);
  }
}

uint64_t MTLCompilerService::endCompilation(uint64_t this, int a2)
{
  v3 = this;
  v4 = *(this + 112) - 1;
  *(this + 112) = v4;
  if (v4)
  {
    if (!a2)
    {
      return this;
    }

    goto LABEL_9;
  }

  v5 = *(this + 96);
  if (v5)
  {
    MTLCompilerServiceTimer::stop(v5);
  }

  v6 = *(v3 + 88);
  if (v6)
  {
    MTLCompilerServiceTimer::start(v6);
  }

  this = pthread_cond_broadcast((v3 + 1256));
  if (a2)
  {
LABEL_9:
    atomic_fetch_add((v3 + 1188), 0xFFFFFFFF);
    if (!atomic_load((v3 + 1188)))
    {

      return setenv("MTL_REPLACE_FAST_MATH_WITH_RELAXED_MATH", "0", 0);
    }
  }

  return this;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

MTLCompilerServiceTimer *std::unique_ptr<MTLCompilerServiceTimer>::reset[abi:ne200100](MTLCompilerServiceTimer **a1, MTLCompilerServiceTimer *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MTLCompilerServiceTimer::~MTLCompilerServiceTimer(result);

    operator delete();
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      for (i = 66; i != 2; --i)
      {
        std::unique_ptr<MTLConnectionCtx>::reset[abi:ne200100](&v2[i], 0);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<MTLCompilerService::createIdleTimer(NSObject  {objcproto17OS_dispatch_queue}* const&)::$_0 &&>>(uint64_t ***a1)
{
  v1 = **a1;
  v2 = *v1;
  v3 = std::string::basic_string[abi:ne200100]<0>(&v7, "Idle");
  std::string::assign(v3, "iOS");
  if (MTLEnvVarAggregator::GET_MTL_IDLE_EXIT_TIMEOUT_SECONDS(0, 0))
  {
    v4 = v1[1];
    v6 = 2;
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&__p, v7.__r_.__value_.__l.__data_, v7.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v7;
    }

    operator new();
  }

  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }
}

void sub_100002850(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLEnvVarAggregator::GET_MTL_IDLE_EXIT_TIMEOUT_SECONDS(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_IDLE_EXIT_TIMEOUT_SECONDS();
  }

  if (MTLEnvVarAggregator::GET_MTL_IDLE_EXIT_TIMEOUT_SECONDS(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_IDLE_EXIT_TIMEOUT_SECONDS(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

void ___ZZN18MTLCompilerService15createIdleTimerERKPU28objcproto17OS_dispatch_queue8NSObjectENK3__0clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  std::string::basic_string[abi:ne200100]<0>(&v36, "Compiler service for client ");
  v3 = *(v2 + 23);
  if (v3 >= 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = *v2;
  }

  if (v3 >= 0)
  {
    v5 = *(v2 + 23);
  }

  else
  {
    v5 = *(v2 + 8);
  }

  v6 = std::string::append(&v36, v4, v5);
  v7 = *&v6->__r_.__value_.__l.__data_;
  v37.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v37.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  v8 = std::string::append(&v37, " exited after ");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v38.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v38.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v35, *(a1 + 40));
  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v35;
  }

  else
  {
    v10 = v35.__r_.__value_.__r.__words[0];
  }

  if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v35.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v38, v10, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v39, " seconds. Idle timeout type was ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v40.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v40.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  MTLCompilerServiceTimer::TimeoutTypeToString(*(a1 + 72), __p);
  if ((v34 & 0x80u) == 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v17 = v34;
  }

  else
  {
    v17 = __p[1];
  }

  v18 = std::string::append(&v40, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v41.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
  *&v41.__r_.__value_.__l.__data_ = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  v20 = std::string::append(&v41, ". Reason: ");
  v21 = *&v20->__r_.__value_.__l.__data_;
  v42.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v42.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v24 = *(a1 + 48);
  v23 = a1 + 48;
  v22 = v24;
  v25 = *(v23 + 23);
  if (v25 >= 0)
  {
    v26 = v23;
  }

  else
  {
    v26 = v22;
  }

  if (v25 >= 0)
  {
    v27 = *(v23 + 23);
  }

  else
  {
    v27 = *(v23 + 8);
  }

  v28 = std::string::append(&v42, v26, v27);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v45.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
  *&v45.__r_.__value_.__l.__data_ = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  v30 = std::string::append(&v45, ".");
  v31 = *&v30->__r_.__value_.__l.__data_;
  v44 = v30->__r_.__value_.__r.__words[2];
  v43 = v31;
  v30->__r_.__value_.__l.__size_ = 0;
  v30->__r_.__value_.__r.__words[2] = 0;
  v30->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v45.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v45.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v42.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v41.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v41.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v36.__r_.__value_.__l.__data_);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v32 = &v43;
    if (v44 < 0)
    {
      v32 = v43;
    }

    LODWORD(v45.__r_.__value_.__l.__data_) = 136446210;
    *(v45.__r_.__value_.__r.__words + 4) = v32;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", &v45, 0xCu);
  }

  _Exit(0);
}

void sub_100002C08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, void *a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 73) < 0)
  {
    operator delete(*(v54 - 96));
  }

  _Unwind_Resume(exception_object);
}

void __copy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(std::string *a1, uint64_t a2)
{
  if (*(a2 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 2, *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v2 = *(a2 + 48);
    a1[2].__r_.__value_.__r.__words[2] = *(a2 + 64);
    *&a1[2].__r_.__value_.__l.__data_ = v2;
  }
}

void __destroy_helper_block_e8_48c66_ZTSNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEE(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }
}

uint64_t MTLEnvVarAggregator::isInternalBuild(MTLEnvVarAggregator *this)
{
  if (this)
  {
    v1 = 1;
  }

  else
  {
    {
      MTLEnvVarAggregator::isInternalBuild(BOOL)::isInternalBuild = os_variant_has_internal_diagnostics();
    }

    v1 = MTLEnvVarAggregator::isInternalBuild(BOOL)::isInternalBuild;
  }

  return v1 & 1;
}

uint64_t std::__call_once_proxy[abi:ne200100]<std::tuple<MTLCompilerService::createHangTimer(NSObject  {objcproto13OS_xpc_object}* const&,NSObject {objcproto17OS_dispatch_queue}* const&)::$_0 &&>>(uint64_t ***a1)
{
  v1 = ***a1;
  result = MTLEnvVarAggregator::GET_MTL_HANG_TIMER_LENGTH_IN_SECONDS(0, 700);
  if (result)
  {
    v4 = _NSConcreteStackBlock;
    v5 = 3221225472;
    v6 = ___ZZN18MTLCompilerService15createHangTimerERKPU24objcproto13OS_xpc_object8NSObjectRKPU28objcproto17OS_dispatch_queueS0_ENK3__0clEv_block_invoke;
    v7 = &__block_descriptor_44_e5_v8__0l;
    if (result == 700)
    {
      v3 = 0;
    }

    else
    {
      v3 = 2;
    }

    v8 = v1;
    v9 = v3;
    operator new();
  }

  return result;
}

void sub_100002EF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

uint64_t MTLEnvVarAggregator::GET_MTL_HANG_TIMER_LENGTH_IN_SECONDS(MTLEnvVarAggregator *this, uint64_t a2)
{
  if (!MTLEnvVarAggregator::isInternalBuild(this))
  {
    return 0;
  }

  {
    MTLEnvVarAggregator::GET_MTL_HANG_TIMER_LENGTH_IN_SECONDS();
  }

  if (MTLEnvVarAggregator::GET_MTL_HANG_TIMER_LENGTH_IN_SECONDS(BOOL,int)::ev)
  {
    return strtol(MTLEnvVarAggregator::GET_MTL_HANG_TIMER_LENGTH_IN_SECONDS(BOOL,int)::ev, 0, 0);
  }

  return a2;
}

uint64_t ___ZZN18MTLCompilerService15createHangTimerERKPU24objcproto13OS_xpc_object8NSObjectRKPU28objcproto17OS_dispatch_queueS0_ENK3__0clEv_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = pthread_mutex_lock((v2 + 1192));
  MTLCompilerService::getInstance(v3);
  for (i = 0; i != 1024; i += 16)
  {
    v5 = *(&MTLCompilerService::getInstance(void)::instance + i + 120);
    if (v5)
    {
      v7 = *(v5 + 32);
      v6 = (v5 + 32);
      if (v7)
      {
        if (v6[1])
        {
          MTLCompilerService::sendReply(v6 + 1, v6, 3uLL, 0, 0, "Compiler service hung");
          xpc_release(v6[1]);
          v6[1] = 0;
        }
      }
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v23, "Compiler service plugin hung while serving ");
  v8 = *(v2 + 23);
  if (v8 >= 0)
  {
    v9 = v2;
  }

  else
  {
    v9 = *v2;
  }

  if (v8 >= 0)
  {
    v10 = *(v2 + 23);
  }

  else
  {
    v10 = *(v2 + 8);
  }

  v11 = std::string::append(&v23, v9, v10);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v24.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  v13 = std::string::append(&v24, ". Timeout type was ");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  MTLCompilerServiceTimer::TimeoutTypeToString(*(a1 + 40), __p);
  if ((v22 & 0x80u) == 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if ((v22 & 0x80u) == 0)
  {
    v16 = v22;
  }

  else
  {
    v16 = __p[1];
  }

  v17 = std::string::append(&v27, v15, v16);
  v18 = *&v17->__r_.__value_.__l.__data_;
  v26 = v17->__r_.__value_.__r.__words[2];
  v25 = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v24.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v19 = &v25;
    if (v26 < 0)
    {
      v19 = v25;
    }

    LODWORD(v27.__r_.__value_.__l.__data_) = 136446210;
    *(v27.__r_.__value_.__r.__words + 4) = v19;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "%{public}s", &v27, 0xCu);
  }

  pthread_mutex_unlock((v2 + 1192));
  result = abort_with_reason();
  __break(1u);
  return result;
}

void sub_1000031B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<MTLCompilationContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = off_100008520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void MTLCompilationContext::~MTLCompilationContext(MTLCompilationContext *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    xpc_release(v2);
    *(this + 5) = 0;
  }
}

void *std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long &&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::__unordered_map_hasher<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::hash<long long>,std::equal_to<long long>,true>,std::__unordered_map_equal<long long,std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,std::equal_to<long long>,std::hash<long long>,true>,std::allocator<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long long,std::array<std::unique_ptr<MTLConnectionCtx>,64ul>>,void *>>>::operator()[abi:ne200100](uint64_t a1, MTLConnectionCtx **__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p + 66;
    v4 = -512;
    do
    {
      std::unique_ptr<MTLConnectionCtx>::reset[abi:ne200100](v3--, 0);
      v4 += 8;
    }

    while (v4);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

MTLConnectionCtx *std::unique_ptr<MTLConnectionCtx>::reset[abi:ne200100](MTLConnectionCtx **a1, MTLConnectionCtx *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    MTLConnectionCtx::~MTLConnectionCtx(result);

    operator delete();
  }

  return result;
}

uint64_t *OUTLINED_FUNCTION_0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  if (*(result + 23) < 0)
  {
    v3 = *result;
  }

  return result;
}

__int128 *MTLSandboxExtensionContainer::MTLCompilerSandboxExtensions(MTLSandboxExtensionContainer *this)
{
  if ((atomic_load_explicit(&_MergedGlobals, memory_order_acquire) & 1) == 0)
  {
    MTLSandboxExtensionContainer::MTLCompilerSandboxExtensions();
  }

  return &xmmword_10000C580;
}

void MTLSandboxExtensionContainer::~MTLSandboxExtensionContainer(MTLSandboxExtensionContainer *this)
{
  v2 = *(this + 6);
  if (v2)
  {
    *(this + 7) = v2;
    operator delete(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    *(this + 4) = v3;
    operator delete(v3);
  }

  v4 = this;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v4);
}

uint64_t MTLSandboxExtensionContainer::setSandbox(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_array)
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2020000000;
      v10 = 1;
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = ___ZN28MTLSandboxExtensionContainer10setSandboxEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
      v6[3] = &unk_100008568;
      v6[4] = &v7;
      v6[5] = a1;
      xpc_array_apply(object, v6);
      v4 = *(v8 + 24);
      _Block_object_dispose(&v7, 8);
    }

    else
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        MTLSandboxExtensionContainer::setSandbox();
      }

      v4 = 0;
    }
  }

  else
  {
    v4 = 1;
  }

  return v4 & 1;
}

void sub_100003A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___ZN28MTLSandboxExtensionContainer10setSandboxEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, int a2, xpc_object_t object)
{
  v5 = *(a1 + 40);
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ___ZN28MTLSandboxExtensionContainer10setSandboxEPU24objcproto13OS_xpc_object8NSObject_block_invoke_cold_1();
    }

    goto LABEL_4;
  }

  string_ptr = xpc_string_get_string_ptr(object);
  if (!string_ptr || (MTLSandboxExtensionContainer::extendSandbox(v5, string_ptr) & 1) == 0)
  {
LABEL_4:
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  return 1;
}

uint64_t MTLSandboxExtensionContainer::extendSandbox(MTLSandboxExtensionContainer *this, const char *__s)
{
  v42 = __s;
  v4 = *this;
  v5 = *(this + 1) - *this;
  if (v5)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v5 >> 3);
    v7 = strlen(__s);
    v8 = 0;
    if (v6 <= 1)
    {
      v6 = 1;
    }

    do
    {
      v9 = *(v4 + 23);
      if (v9 < 0)
      {
        if (v7 != v4[1])
        {
          goto LABEL_11;
        }

        if (v7 == -1)
        {
          std::string::__throw_out_of_range[abi:ne200100]();
        }

        v10 = *v4;
      }

      else
      {
        v10 = v4;
        if (v7 != v9)
        {
          goto LABEL_11;
        }
      }

      if (!memcmp(v10, __s, v7))
      {
        ++*(*(this + 3) + 8 * v8);
        return 1;
      }

LABEL_11:
      ++v8;
      v4 += 3;
    }

    while (v6 != v8);
  }

  v11 = sandbox_extension_consume();
  if (v11 == -1)
  {
    NSLog(@"Failed to consume extension: %s", __s, v42);
    return 0;
  }

  else
  {
    v13 = *(this + 7);
    v12 = *(this + 8);
    if (v13 >= v12)
    {
      v16 = *(this + 6);
      v17 = v13 - v16;
      v18 = (v13 - v16) >> 3;
      v19 = v18 + 1;
      if ((v18 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      v20 = v12 - v16;
      if (v20 >> 2 > v19)
      {
        v19 = v20 >> 2;
      }

      v21 = v20 >= 0x7FFFFFFFFFFFFFF8;
      v22 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v22 = v19;
      }

      if (v22)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(this + 48, v22);
      }

      v23 = (v13 - v16) >> 3;
      v24 = (8 * v18);
      v25 = (8 * v18 - 8 * v23);
      *v24 = v11;
      v14 = v24 + 1;
      memcpy(v25, v16, v17);
      v26 = *(this + 6);
      *(this + 6) = v25;
      *(this + 7) = v14;
      *(this + 8) = 0;
      if (v26)
      {
        operator delete(v26);
      }
    }

    else
    {
      *v13 = v11;
      v14 = v13 + 1;
    }

    *(this + 7) = v14;
    v27 = *(this + 1);
    if (v27 >= *(this + 2))
    {
      v28 = std::vector<std::string>::__emplace_back_slow_path<char const*&>(this, &v42);
    }

    else
    {
      std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*&,0>(this, *(this + 1), &v42);
      v28 = v27 + 24;
      *(this + 1) = v27 + 24;
    }

    *(this + 1) = v28;
    v30 = *(this + 4);
    v29 = *(this + 5);
    if (v30 >= v29)
    {
      v32 = *(this + 3);
      v33 = v30 - v32;
      v34 = (v30 - v32) >> 3;
      v35 = v34 + 1;
      if ((v34 + 1) >> 61)
      {
        std::vector<long long>::__throw_length_error[abi:ne200100]();
      }

      v36 = v29 - v32;
      if (v36 >> 2 > v35)
      {
        v35 = v36 >> 2;
      }

      v21 = v36 >= 0x7FFFFFFFFFFFFFF8;
      v37 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v21)
      {
        v37 = v35;
      }

      if (v37)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(this + 24, v37);
      }

      v38 = (v30 - v32) >> 3;
      v39 = (8 * v34);
      v40 = (8 * v34 - 8 * v38);
      *v39 = 1;
      v31 = v39 + 1;
      memcpy(v40, v32, v33);
      v41 = *(this + 3);
      *(this + 3) = v40;
      *(this + 4) = v31;
      *(this + 5) = 0;
      if (v41)
      {
        operator delete(v41);
      }
    }

    else
    {
      *v30 = 1;
      v31 = v30 + 8;
    }

    *(this + 4) = v31;
    return 1;
  }
}

void MTLSandboxExtensionContainer::resetSandbox(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    if (xpc_get_type(object) == &_xpc_type_array)
    {
      applier[0] = _NSConcreteStackBlock;
      applier[1] = 3221225472;
      applier[2] = ___ZN28MTLSandboxExtensionContainer12resetSandboxEPU24objcproto13OS_xpc_object8NSObject_block_invoke;
      applier[3] = &__block_descriptor_40_e36_B24__0Q8__NSObject_OS_xpc_object__16l;
      applier[4] = a1;
      xpc_array_apply(object, applier);
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      MTLSandboxExtensionContainer::setSandbox();
    }
  }
}

uint64_t ___ZN28MTLSandboxExtensionContainer12resetSandboxEPU24objcproto13OS_xpc_object8NSObject_block_invoke(uint64_t a1, int a2, xpc_object_t object)
{
  v4 = *(a1 + 32);
  if (xpc_get_type(object) != &_xpc_type_string)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      ___ZN28MTLSandboxExtensionContainer10setSandboxEPU24objcproto13OS_xpc_object8NSObject_block_invoke_cold_1();
    }

    return 1;
  }

  string_ptr = xpc_string_get_string_ptr(object);
  if (!string_ptr)
  {
    return 1;
  }

  v7 = *v4;
  v8 = v4[1] - *v4;
  if (!v8)
  {
    return 1;
  }

  v9 = string_ptr;
  v10 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 3);
  v11 = strlen(string_ptr);
  v12 = 0;
  v13 = 0;
  if (v10 <= 1)
  {
    v10 = 1;
  }

  while (1)
  {
    v14 = (v7 + v12);
    v15 = *(v7 + v12 + 23);
    if ((v15 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (v11 == v14[1])
    {
      if (v11 == -1)
      {
        std::string::__throw_out_of_range[abi:ne200100]();
      }

      v14 = *v14;
      goto LABEL_15;
    }

LABEL_16:
    ++v13;
    v12 += 24;
    if (v10 == v13)
    {
      return 1;
    }
  }

  if (v11 != v15)
  {
    goto LABEL_16;
  }

LABEL_15:
  if (memcmp(v14, v9, v11))
  {
    goto LABEL_16;
  }

  v16 = v4[3];
  v17 = *(v16 + 8 * v13) - 1;
  *(v16 + 8 * v13) = v17;
  if (!v17)
  {
    v18 = *(v4[6] + 8 * v13);
    sandbox_extension_release();
    v19 = v4[1];
    if (v13 < 0xAAAAAAAAAAAAAAABLL * ((v19 - *v4) >> 3) - 1)
    {
      v20 = *v4 + v12;
      if (*(v20 + 23) < 0)
      {
        operator delete(*v20);
      }

      v21 = *(v19 - 24);
      *(v20 + 16) = *(v19 - 8);
      *v20 = v21;
      *(v19 - 1) = 0;
      *(v19 - 24) = 0;
      *(v4[3] + 8 * v13) = *(v4[4] - 8);
      *(v4[6] + 8 * v13) = *(v4[7] - 8);
      v19 = v4[1];
    }

    v22 = (v19 - 24);
    if (*(v19 - 1) < 0)
    {
      operator delete(*v22);
    }

    v4[1] = v22;
    v4[4] -= 8;
    v4[7] -= 8;
  }

  return 1;
}

void std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::string>::clear[abi:ne200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void std::vector<std::string>::clear[abi:ne200100](void ***a1)
{
  v2 = *a1;
  v3 = a1[1];
  while (v3 != v2)
  {
    v4 = *(v3 - 1);
    v3 -= 3;
    if (v4 < 0)
    {
      operator delete(*v3);
    }
  }

  a1[1] = v2;
}

void std::__throw_out_of_range[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::out_of_range::out_of_range[abi:ne200100](exception, a1);
}

std::logic_error *std::out_of_range::out_of_range[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<std::string>::__emplace_back_slow_path<char const*&>(uint64_t a1, const char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<long long>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v13.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  v13.__first_ = 0;
  v13.__begin_ = (24 * v2);
  v13.__end_ = (24 * v2);
  v13.__end_cap_.__value_ = 0;
  std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*&,0>(a1, (24 * v2), a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy(v13.__begin_ - v8, *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v13.__end_cap_.__value_;
  v13.__end_ = v10;
  v13.__end_cap_.__value_ = v11;
  v13.__first_ = v10;
  v13.__begin_ = v10;
  std::__split_buffer<std::string>::~__split_buffer(&v13);
  return v7;
}

size_t std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,char const*&,0>(uint64_t a1, _BYTE *a2, const char **a3)
{
  v4 = *a3;
  result = strlen(*a3);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  a2[23] = result;
  if (result)
  {
    result = memmove(a2, v4, result);
  }

  a2[v6] = 0;
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::string>::~__split_buffer(std::__split_buffer<std::string> *this)
{
  std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](this, &this->__begin_->__r_.__value_.__l.__data_);
  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

void std::__split_buffer<std::string>::__destruct_at_end[abi:ne200100](uint64_t a1, void **a2)
{
  v2 = *(a1 + 16);
  if (v2 != a2)
  {
    do
    {
      v5 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v5);
        v5 = *(a1 + 16);
      }

      v2 = v5;
    }

    while (v5 != a2);
  }
}

void main::$_0::__invoke(MTLCompilerService *a1)
{
  Instance = MTLCompilerService::getInstance(a1);

  MTLCompilerService::eventHandler(Instance, a1);
}

void CompilerPluginInterface::CompilerPluginInterface(uint64_t a1)
{
  v1 = 136315138;
  v2 = a1;
  _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Failed to dlopen MTLCompiler framework with error: %s", &v1, 0xCu);
}

void MTLCompilerServiceTimer::MTLCompilerServiceTimer(uint64_t *a1)
{
  if (*(a1 + 23) >= 0)
  {
    v1 = a1;
  }

  else
  {
    v1 = *a1;
  }

  v2 = 136446210;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Unable to create timer, exit %{public}s is disabled.", &v2, 0xCu);
}

void MTLCompilerService::initializeSandbox()
{
  v5 = *__error();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

void MTLCompilerService::errorHandler(uint64_t *a1)
{
  OUTLINED_FUNCTION_0(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

{
  OUTLINED_FUNCTION_0(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_0(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

{
  OUTLINED_FUNCTION_0(a1, __stack_chk_guard);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void ___ZN18MTLCompilerService12eventHandlerEPU24objcproto13OS_xpc_object8NSObject_block_invoke_cold_1(const _xpc_type_s *a1)
{
  xpc_type_get_name(a1);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

void MTLEnvVarAggregator::GET_MTL_IDLE_EXIT_TIMEOUT_SECONDS()
{
  {
    MTLEnvVarAggregator::GET_MTL_IDLE_EXIT_TIMEOUT_SECONDS(BOOL,int)::ev = getenv("MTL_IDLE_EXIT_TIMEOUT_SECONDS");
  }
}

void MTLEnvVarAggregator::GET_MTL_HANG_TIMER_LENGTH_IN_SECONDS()
{
  {
    MTLEnvVarAggregator::GET_MTL_HANG_TIMER_LENGTH_IN_SECONDS(BOOL,int)::ev = getenv("MTL_HANG_TIMER_LENGTH_IN_SECONDS");
  }
}

void MTLSandboxExtensionContainer::MTLCompilerSandboxExtensions()
{
  if (__cxa_guard_acquire(&_MergedGlobals))
  {
    qword_10000C5C0 = 0;
    *&algn_10000C590[32] = 0u;
    *&algn_10000C590[16] = 0u;
    *algn_10000C590 = 0u;
    xmmword_10000C580 = 0u;
    __cxa_atexit(MTLSandboxExtensionContainer::~MTLSandboxExtensionContainer, &xmmword_10000C580, &_mh_execute_header);

    __cxa_guard_release(&_MergedGlobals);
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}