uint64_t *std::unique_ptr<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1},std::default_delete<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(xpc::dict)>::~__value_func[abi:ne200100](v2 + 16);
    v3 = *(v2 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v2 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    xpc_release(*v2);
    *v2 = 0;
    MEMORY[0x2383CBEF0](v2, 0x10A0C40079592F6);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(xpc::dict)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

uint64_t *dispatch::async<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1},std::default_delete<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v5 = a1;
  v2 = *a1;
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = *(a1 + 40);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v3 + 48))(v3, &object);
  xpc_release(object);
  return std::unique_ptr<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1},std::default_delete<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&v5);
}

void sub_2374222E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  std::unique_ptr<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1},std::default_delete<ServiceManager::FunctorMigrationService::notifyServiceMigration(xpc::dict,dispatch::group const&)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<ServiceManager *,std::shared_ptr<ServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ServiceManager>(ServiceManager*)::{lambda(ServiceManager *)#1},std::allocator<ServiceManager>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_pointer<ServiceManager *,std::shared_ptr<ServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ServiceManager>(ServiceManager*)::{lambda(ServiceManager *)#1},std::allocator<ServiceManager>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

ServiceManager *std::shared_ptr<ServiceManager> ctu::SharedSynchronizable<ServiceManager>::make_shared_ptr<ServiceManager>(ServiceManager*)::{lambda(ServiceManager*)#1}::operator() const(ServiceManager*)::{lambda(void *)#1}::__invoke(ServiceManager *result)
{
  if (result)
  {
    ServiceManager::~ServiceManager(result);

    JUMPOUT(0x2383CBEF0);
  }

  return result;
}

void std::__shared_ptr_emplace<std::unique_ptr<ServiceManager::Service>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A67640;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__shared_ptr_emplace<std::unique_ptr<ServiceManager::Service>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  *(a1 + 24) = 0;
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t __copy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ServiceManagerEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_40c43_ZTSNSt3__110shared_ptrIK14ServiceManagerEE(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void dispatch::async<void ctu::SharedSynchronizable<ServiceManager>::execute_wrapped<ServiceManager::start(void)::$_0>(ServiceManager::start(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::start(void)::$_0,dispatch_queue_s *::default_delete<ServiceManager::start(void)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  *(v2 + 97) = 1;
  v3 = *(v2 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (*(v2 + 64) - *(v2 + 56)) >> 3;
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&dword_2373EA000, v3, OS_LOG_TYPE_DEFAULT, "#N Bootstrap %zu services in progress", buf, 0xCu);
  }

  v5 = *(v2 + 64) - *(v2 + 56);
  kdebug_trace();
  v8 = 0;
  v9 = 0;
  *buf = dispatch_group_create();
  std::allocate_shared[abi:ne200100]<ctu::TrackedGroup,std::allocator<ctu::TrackedGroup>,dispatch::group,0>();
}

void sub_237422D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23, dispatch_object_t a24, uint64_t a25, dispatch_object_t object, dispatch_object_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, dispatch_object_t a34, uint64_t a35)
{
  std::__function::__value_func<void ()(xpc::object)>::~__value_func[abi:ne200100](&a34);
  if (*(v35 - 137) < 0)
  {
    operator delete(*(v35 - 160));
  }

  if (a23)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a23);
  }

  std::unique_ptr<ServiceManager::start(void)::$_0,std::default_delete<ServiceManager::start(void)::$_0>>::~unique_ptr[abi:ne200100](&a14);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a13);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ServiceManager::start(void)::$_0,std::default_delete<ServiceManager::start(void)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v2 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    MEMORY[0x2383CBEF0](v2, 0x20C40A4A59CD2);
  }

  return a1;
}

void ctu::TrackedGroup::fork(NSObject **a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = dispatch_group_create();
  v3 = v2;
  *a1 = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v3);
    dispatch_release(v3);
  }

  operator new();
}

void sub_237423248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(va);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (v5)
  {
    dispatch_group_leave(v5);
    dispatch_release(v5);
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  if (v4)
  {
    dispatch_group_leave(v4);
    dispatch_release(v4);
  }

  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<ctu::TrackedGroup>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A676C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
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

void std::__function::__func<ServiceManager::start(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1},std::allocator<ServiceManager::start(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1}>,void ()(os_log_s *,unsigned long long)>::operator()(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_2373EA000, v4, OS_SIGNPOST_INTERVAL_END, v3, "Bootstrap", &unk_2374E4AB3, v5, 2u);
    }
  }
}

uint64_t std::__function::__func<ServiceManager::start(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1},std::allocator<ServiceManager::start(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1}>,void ()(os_log_s *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__shared_ptr_emplace<std::string>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_284A677A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2383CBEF0);
}

void std::__shared_ptr_emplace<std::string>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void *std::unique_ptr<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1},std::default_delete<ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}>>::~unique_ptr[abi:ne200100](void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    ctu::os::signpost_interval::~signpost_interval((v2 + 3));
    v3 = v2[2];
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = v2[2];
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    v5 = v2[1];
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    MEMORY[0x2383CBEF0](v2, 0x1020C400C53FE3ALL);
  }

  return a1;
}

void *ctu::TrackedGroup::fork(std::string,ctu::os::signpost_interval)::{lambda(void)#1}::~signpost_interval(void *a1)
{
  ctu::os::signpost_interval::~signpost_interval((a1 + 3));
  v2 = a1[2];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[2];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[1];
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  return a1;
}

uint64_t std::function<void ()(os_log_s *,unsigned long long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

std::__split_buffer<std::string>::pointer std::vector<std::string>::__emplace_back_slow_path<std::string const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
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

  v17.__end_cap_.__value_ = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v6);
  }

  begin = (24 * v2);
  v17.__first_ = 0;
  v17.__begin_ = (24 * v2);
  value = 0;
  v17.__end_ = (24 * v2);
  v17.__end_cap_.__value_ = 0;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(begin, *a2, *(a2 + 1));
    begin = v17.__begin_;
    end = v17.__end_;
    value = v17.__end_cap_.__value_;
  }

  else
  {
    v9 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *&begin->__r_.__value_.__l.__data_ = v9;
    end = (24 * v2);
  }

  v11 = end + 1;
  v12 = *(a1 + 8) - *a1;
  v13 = begin - v12;
  memcpy(begin - v12, *a1, v12);
  v14 = *a1;
  *a1 = v13;
  *(a1 + 8) = v11;
  v15 = *(a1 + 16);
  *(a1 + 16) = value;
  v17.__end_ = v14;
  v17.__end_cap_.__value_ = v15;
  v17.__first_ = v14;
  v17.__begin_ = v14;
  std::__split_buffer<std::string>::~__split_buffer(&v17);
  return v11;
}

uint64_t std::__function::__func<ctu::rest::property_sink_t<edu_mode>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_sink_t<edu_mode>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_284A677F8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ctu::rest::property_sink_t<edu_mode>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_sink_t<edu_mode>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::operator()(uint64_t a1, xpc *this)
{
  v2 = *(a1 + 8);
  result = xpc::dyn_cast_or_default(this, 0);
  *v2 = result;
  return result;
}

uint64_t std::__function::__func<ctu::rest::property_sink_t<edu_mode>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1},std::allocator<ctu::rest::property_sink_t<edu_mode>::bind(ctu::RestModule &)::{lambda(xpc::object const&)#1}>,void ()(xpc::object)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *dispatch::async<void ctu::SharedSynchronizable<ServiceManager>::execute_wrapped<ServiceManager::shutdown(void)::$_0>(ServiceManager::shutdown(void)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::shutdown(void)::$_0,dispatch_queue_s *::default_delete<ServiceManager::shutdown(void)::$_0>>)::{lambda(void *)#1}::__invoke(uint64_t *a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v31 = a1;
  v32 = v1;
  v2 = *v1;
  v3 = *(*v1 + 104);
  if (*v3 == 1)
  {
    v4 = v3[24];
    ctu::RestModule::disconnect((v3 + 8));
  }

  else
  {
    v4 = 0;
  }

  if (*(v2 + 40))
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ServiceManager shutdown phase");
    ctu::XpcJetsamAssertion::createActivity();
    v5 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (v38 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v5 = 0;
  }

  if ((*(v2 + 96) & 1) == 0)
  {
    *(v2 + 96) = 1;
    v6 = *(v2 + 32);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v7)
      {
        v8 = (*(v2 + 64) - *(v2 + 56)) >> 3;
        *buf = 134217984;
        *&buf[4] = v8;
        _os_log_impl(&dword_2373EA000, v6, OS_LOG_TYPE_DEFAULT, "#I Skip shutting down %zd services", buf, 0xCu);
      }
    }

    else
    {
      v30 = v5;
      if (v7)
      {
        *buf = 0;
        _os_log_impl(&dword_2373EA000, v6, OS_LOG_TYPE_DEFAULT, "#N Shutdown in progress", buf, 2u);
      }

      v36[0] = 0;
      v36[1] = 0;
      v35 = v36;
      v9 = *(v2 + 56);
      if (v9 != *(v2 + 64))
      {
        v10 = *(v2 + 64);
        do
        {
          memset(buf, 0, sizeof(buf));
          (*(**v9 + 24))(buf);
          v11 = *buf;
          v12 = *&buf[8];
          if (*buf != *&buf[8])
          {
            do
            {
              v13 = *v11;
              v14 = v36[0];
LABEL_18:
              if (!v14)
              {
LABEL_25:
                operator new();
              }

              while (1)
              {
                v15 = v14;
                v16 = *(v14 + 32);
                if (v16 > v13)
                {
                  v14 = *v15;
                  goto LABEL_18;
                }

                if (v16 >= v13)
                {
                  break;
                }

                v14 = v15[1];
                if (!v14)
                {
                  goto LABEL_25;
                }
              }

              v39 = *v9;
              std::vector<ServiceManager::Service const*>::push_back[abi:ne200100]((v15 + 5), &v39);
              ++v11;
            }

            while (v11 != v12);
            v11 = *buf;
          }

          if (v11)
          {
            *&buf[8] = v11;
            operator delete(v11);
          }

          ++v9;
        }

        while (v9 != v10);
        v17 = v35;
        if (v35 != v36)
        {
          do
          {
            v18 = *(v2 + 32);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              v19 = asString(*(v17 + 32));
              v20 = v17[6] - v17[5];
              *buf = 136315394;
              *&buf[4] = v19;
              *&buf[12] = 2048;
              *&buf[14] = v20;
              _os_log_impl(&dword_2373EA000, v18, OS_LOG_TYPE_DEFAULT, "#N ---- Shutdown stage %s: Pre-run info: :: %zu interested parties", buf, 0x16u);
            }

            v21 = v17[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v17[2];
                v23 = *v22 == v17;
                v17 = v22;
              }

              while (!v23);
            }

            v17 = v22;
          }

          while (v22 != v36);
          v17 = v35;
        }

        if (v17 != v36)
        {
          v24 = *(v2 + 32);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v25 = asString(*(v17 + 32));
            v26 = v17[6] - v17[5];
            *buf = 136315394;
            *&buf[4] = v25;
            *&buf[12] = 2048;
            *&buf[14] = v26;
            _os_log_impl(&dword_2373EA000, v24, OS_LOG_TYPE_DEFAULT, "#N ---- Shutdown stage %s: Notify :: %zu interested parties", buf, 0x16u);
          }

          v27 = *(v17 + 32);
          kdebug_trace();
          v33 = 0;
          v34 = 0;
          *buf = dispatch_group_create();
          std::allocate_shared[abi:ne200100]<ctu::TrackedGroup,std::allocator<ctu::TrackedGroup>,dispatch::group,0>();
        }
      }

      std::__tree<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::__map_value_compare<ServiceShutdownStage,std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::less<ServiceShutdownStage>,true>,std::allocator<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>>>::destroy(v36[0]);
      v5 = v30;
    }
  }

  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::unique_ptr<ServiceManager::start(void)::$_0,std::default_delete<ServiceManager::start(void)::$_0>>::~unique_ptr[abi:ne200100](&v32);
  result = std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&v31);
  v29 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_2374248F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va1, a14);
  va_start(va, a14);
  v15 = va_arg(va1, void);
  std::unique_ptr<ServiceManager::start(void)::$_0,std::default_delete<ServiceManager::start(void)::$_0>>::~unique_ptr[abi:ne200100](va1);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void std::vector<ServiceManager::Service const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
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

void std::__function::__func<ServiceManager::shutdown(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1},std::allocator<ServiceManager::shutdown(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1}>,void ()(os_log_s *,unsigned long long)>::operator()(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_2373EA000, v4, OS_SIGNPOST_INTERVAL_END, v3, "Shutdown", &unk_2374E4AB3, v5, 2u);
    }
  }
}

uint64_t std::__function::__func<ServiceManager::shutdown(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1},std::allocator<ServiceManager::shutdown(void)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1}>,void ()(os_log_s *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ServiceStage::~ServiceStage(ServiceStage *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(this + 2);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(this + 1);
  if (v4)
  {
    dispatch_group_leave(v4);
    v5 = *(this + 1);
    if (v5)
    {
      dispatch_release(v5);
    }
  }

  if (*this)
  {
    dispatch_group_leave(*this);
    if (*this)
    {
      dispatch_release(*this);
    }
  }
}

void std::__tree<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::__map_value_compare<ServiceShutdownStage,std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::less<ServiceShutdownStage>,true>,std::allocator<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::__map_value_compare<ServiceShutdownStage,std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::less<ServiceShutdownStage>,true>,std::allocator<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>>>::destroy(*a1);
    std::__tree<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::__map_value_compare<ServiceShutdownStage,std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>,std::less<ServiceShutdownStage>,true>,std::allocator<std::__value_type<ServiceShutdownStage,std::vector<ServiceManager::Service const*>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](uint64_t a1, uint64_t a2)
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

void dispatch::async<void ctu::SharedSynchronizable<ServiceManager>::execute_wrapped<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0>(ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0 &&)::{lambda(void)#1}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0,std::default_delete<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0>>)::{lambda(void *)#1}::__invoke(void **a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  v2 = **a1;
  if (v2[5])
  {
    std::string::basic_string[abi:ne200100]<0>(&__p, "ServiceManager migration phase");
    ctu::XpcJetsamAssertion::createActivity();
    *buf = 0;
    v9 = 0;
    if (v7 < 0)
    {
      operator delete(__p);
    }
  }

  v3 = v2[7];
  for (i = v2[8]; v3 != i; v3 += 8)
  {
    if ((*(**v3 + 40))())
    {
      (*(**v3 + 56))();
      operator new();
    }
  }

  std::__function::__value_func<void ()(BOOL)>::__value_func[abi:ne200100](buf, (v1 + 3));
  v10 = 0;
  v5 = v1[2];
  operator new();
}

void sub_2374258FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, xpc_object_t object, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (a49 < 0)
  {
    operator delete(__p);
  }

  std::unique_ptr<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0,std::default_delete<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](&a23);
  std::unique_ptr<void ctu::SharedSynchronizable<HelperRestServer>::execute_wrapped<HelperRestServer::init(void)::$_0>(HelperRestServer::init(void)::$_0 &&)::{lambda(void)#1},std::default_delete<HelperRestServer::init(void)::$_0 &&>>::~unique_ptr[abi:ne200100](&a22);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0,std::default_delete<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v2 + 24);
    v3 = *(v2 + 16);
    if (v3)
    {
      dispatch_release(v3);
    }

    xpc_release(*(v2 + 8));
    *(v2 + 8) = 0;
    MEMORY[0x2383CBEF0](v2, 0x10A0C4078F406E4);
  }

  return a1;
}

void std::__function::__func<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1},std::allocator<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1}>,void ()(os_log_s *,unsigned long long)>::operator()(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&dword_2373EA000, v4, OS_SIGNPOST_INTERVAL_END, v3, "Migration", &unk_2374E4AB3, v5, 2u);
    }
  }
}

uint64_t std::__function::__func<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1},std::allocator<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(os_log_s *,unsigned long long)#1}>,void ()(os_log_s *,unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *std::unique_ptr<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2},std::default_delete<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2}>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:ne200100](v2);
    MEMORY[0x2383CBEF0](v3, 0x1020C40345F54D7);
  }

  return a1;
}

uint64_t *dispatch::async<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2}>(dispatch_queue_s *,std::unique_ptr<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2},std::default_delete<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2}>>)::{lambda(void *)#1}::__invoke(uint64_t a1)
{
  v2 = a1;
  std::function<void ()(BOOL)>::operator()(a1, *(a1 + 32));
  return std::unique_ptr<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2},std::default_delete<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2}>>::~unique_ptr[abi:ne200100](&v2);
}

void sub_237425C94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::unique_ptr<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2},std::default_delete<ServiceManager::migrate(xpc::dict,dispatch::queue,std::function<void ()(BOOL)>)::$_0::operator() const(void)::{lambda(void)#2}>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(BOOL)>::operator()(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t std::__function::__value_func<void ()(xpc::dict)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, void *a2)
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

  if (v2 < 0)
  {
    a1 = *a1;
  }

  v6 = *a2;
  if (v5 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

xpc_object_t write_rest_value@<X0>(const char *a1@<X0>, void *a2@<X8>)
{
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  result = xpc_string_create(a1);
  *a2 = result;
  if (!result)
  {
    result = xpc_null_create();
    *a2 = result;
  }

  return result;
}

void read_rest_value(std::string *a1, const object *a2)
{
  memset(&__p, 0, sizeof(__p));
  xpc::dyn_cast_or_default();
  v3 = *v5;
  HIBYTE(v3) = v5[3];
  if (v6 < 0)
  {
    std::string::__init_copy_ctor_external(&__p, v4, *(&v4 + 1));
  }

  else
  {
    *&__p.__r_.__value_.__l.__data_ = v4;
    LODWORD(__p.__r_.__value_.__r.__words[2]) = v3;
    *(&__p.__r_.__value_.__r.__words[2] + 3) = *&v5[3];
    *(&__p.__r_.__value_.__s + 23) = v6;
  }

  std::string::operator=(a1, &__p);
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

LABEL_8:
    operator delete(v4);
    return;
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  if (v6 < 0)
  {
    goto LABEL_8;
  }
}

{
  fObj = a2->fObj;
  v16 = fObj;
  v4 = MEMORY[0x277D86468];
  if (fObj && MEMORY[0x2383CC760](fObj) == v4)
  {
    xpc_retain(fObj);
  }

  else
  {
    v16 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    __p = &v16;
    v20 = "accountId";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    read_rest_value(a1 + 1, object);
    xpc_release(object[0]);
    __p = &v16;
    v20 = "active";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[2].__r_.__value_.__s.__data_[0] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p = &v16;
    v20 = "type";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    v5 = MEMORY[0x2383CC760](object[0]);
    v7 = MEMORY[0x277D864C0];
    v8 = MEMORY[0x277D86448];
    if (v5 == MEMORY[0x277D864C0])
    {
      LOBYTE(v13) = a1[2].__r_.__value_.__s.__data_[1];
      ctu::rest::detail::read_enum_string_value(&v13, object, v6);
      a1[2].__r_.__value_.__s.__data_[1] = v13;
    }

    else if (v5 == MEMORY[0x277D86448] || v5 == MEMORY[0x277D86498] || v5 == MEMORY[0x277D864C8])
    {
      a1[2].__r_.__value_.__s.__data_[1] = xpc::dyn_cast_or_default(object, 0);
    }

    xpc_release(object[0]);
    __p = &v16;
    v20 = "slotId";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    v9 = MEMORY[0x2383CC760](object[0]);
    if (v9 == v7)
    {
      LODWORD(v13) = HIDWORD(a1[2].__r_.__value_.__r.__words[0]);
      ctu::rest::detail::read_enum_string_value(&v13, object, v10);
      HIDWORD(a1[2].__r_.__value_.__r.__words[0]) = v13;
    }

    else if (v9 == v8 || v9 == MEMORY[0x277D86498] || v9 == MEMORY[0x277D864C8])
    {
      HIDWORD(a1[2].__r_.__value_.__r.__words[0]) = xpc::dyn_cast_or_default(object, 0);
    }

    xpc_release(object[0]);
    __p = &v16;
    v20 = "idx";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    LODWORD(a1[2].__r_.__value_.__r.__words[1]) = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p = &v16;
    v20 = "isEapAka";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[2].__r_.__value_.__s.__data_[12] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p = &v16;
    v20 = "isESim";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[2].__r_.__value_.__s.__data_[13] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p = &v16;
    v20 = "provisioning";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[2].__r_.__value_.__s.__data_[14] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p = &v16;
    v20 = "offload";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[2].__r_.__value_.__s.__data_[15] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v13 = &v16;
    v14 = "uuidStr";
    xpc::dict::object_proxy::operator xpc::object(&v13, &v15);
    __p = 0;
    v20 = 0;
    v21 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a1->__r_.__value_.__l.__data_);
    }

    *&a1->__r_.__value_.__l.__data_ = *object;
    a1->__r_.__value_.__r.__words[2] = v18;
    xpc_release(v15);
    __p = &v16;
    v20 = "src_state";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    v11 = MEMORY[0x2383CC760](object[0]);
    if (v11 == v7)
    {
      LOBYTE(v13) = a1[2].__r_.__value_.__s.__data_[16];
      ctu::rest::detail::read_enum_string_value(&v13, object, v12);
      a1[2].__r_.__value_.__s.__data_[16] = v13;
    }

    else if (v11 == v8 || v11 == MEMORY[0x277D86498] || v11 == MEMORY[0x277D864C8])
    {
      a1[2].__r_.__value_.__s.__data_[16] = xpc::dyn_cast_or_default(object, 0);
    }

    xpc_release(object[0]);
    __p = &v16;
    v20 = "disabled_src";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[2].__r_.__value_.__s.__data_[17] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    __p = &v16;
    v20 = "unauthorized_src";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[2].__r_.__value_.__s.__data_[18] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v13 = &v16;
    v14 = "mdn";
    xpc::dict::object_proxy::operator xpc::object(&v13, &v15);
    __p = 0;
    v20 = 0;
    v21 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(a1[3].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(a1[3].__r_.__value_.__l.__data_);
    }

    *&a1[3].__r_.__value_.__l.__data_ = *object;
    a1[3].__r_.__value_.__r.__words[2] = v18;
    xpc_release(v15);
    __p = &v16;
    v20 = "data-only-plan";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    a1[4].__r_.__value_.__s.__data_[0] = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
  }

  xpc_release(v16);
}

void write_rest_value(const PersonalityInfo *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v51 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
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
  v51 = v6;
LABEL_9:
  xpc_release(v5);
  write_rest_value(a1 + 24, &v49);
  v47 = &v51;
  v48 = "accountId";
  xpc::dict::object_proxy::operator=(&v47, &v49, &v50);
  xpc_release(v50);
  v50 = 0;
  xpc_release(v49);
  v49 = 0;
  v45 = xpc_BOOL_create(*(a1 + 48));
  if (!v45)
  {
    v45 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "active";
  xpc::dict::object_proxy::operator=(&v47, &v45, &v46);
  xpc_release(v46);
  v46 = 0;
  xpc_release(v45);
  v45 = 0;
  v8 = *(a1 + 49);
  if (v8 > 3)
  {
    v9 = "???";
  }

  else
  {
    v9 = off_278A2F960[v8];
  }

  ctu::rest::detail::write_enum_string_value(v8, v9, v7);
  v47 = &v51;
  v48 = "type";
  xpc::dict::object_proxy::operator=(&v47, &v43, &v44);
  xpc_release(v44);
  v44 = 0;
  xpc_release(v43);
  v43 = 0;
  v11 = *(a1 + 13);
  if ((v11 - 1) > 2)
  {
    v12 = "kUnknown";
  }

  else
  {
    v12 = off_278A2F980[v11 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v41, v11, v12, v10);
  v47 = &v51;
  v48 = "slotId";
  xpc::dict::object_proxy::operator=(&v47, &v41, &v42);
  xpc_release(v42);
  v42 = 0;
  xpc_release(v41);
  v41 = 0;
  v39 = xpc_int64_create(*(a1 + 14));
  if (!v39)
  {
    v39 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "idx";
  xpc::dict::object_proxy::operator=(&v47, &v39, &v40);
  xpc_release(v40);
  v40 = 0;
  xpc_release(v39);
  v39 = 0;
  object = xpc_BOOL_create(*(a1 + 60));
  if (!object)
  {
    object = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isEapAka";
  xpc::dict::object_proxy::operator=(&v47, &object, &v38);
  xpc_release(v38);
  v38 = 0;
  xpc_release(object);
  object = 0;
  v35 = xpc_BOOL_create(*(a1 + 61));
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "isESim";
  xpc::dict::object_proxy::operator=(&v47, &v35, &v36);
  xpc_release(v36);
  v36 = 0;
  xpc_release(v35);
  v35 = 0;
  v33 = xpc_BOOL_create(*(a1 + 62));
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "provisioning";
  xpc::dict::object_proxy::operator=(&v47, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  xpc_release(v33);
  v33 = 0;
  v31 = xpc_BOOL_create(*(a1 + 63));
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "offload";
  xpc::dict::object_proxy::operator=(&v47, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  if (*(a1 + 23) >= 0)
  {
    v13 = a1;
  }

  else
  {
    v13 = *a1;
  }

  v29 = xpc_string_create(v13);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "uuidStr";
  xpc::dict::object_proxy::operator=(&v47, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  v15 = *(a1 + 64);
  if (v15 > 2)
  {
    v16 = "???";
  }

  else
  {
    v16 = off_278A2F998[v15];
  }

  ctu::rest::detail::write_enum_string_value(v15, v16, v14);
  v47 = &v51;
  v48 = "src_state";
  xpc::dict::object_proxy::operator=(&v47, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  v25 = xpc_BOOL_create(*(a1 + 65));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "disabled_src";
  xpc::dict::object_proxy::operator=(&v47, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(*(a1 + 66));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "unauthorized_src";
  xpc::dict::object_proxy::operator=(&v47, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  if (*(a1 + 95) >= 0)
  {
    v17 = a1 + 72;
  }

  else
  {
    v17 = *(a1 + 9);
  }

  v21 = xpc_string_create(v17);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "mdn";
  xpc::dict::object_proxy::operator=(&v47, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  v19 = xpc_BOOL_create(*(a1 + 96));
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v47 = &v51;
  v48 = "data-only-plan";
  xpc::dict::object_proxy::operator=(&v47, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v18 = v51;
  *a2 = v51;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v51);
}

void sub_237427008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_237427450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16)
{
  xpc_release(object);
  xpc_release(v16);
  xpc_release(a16);
  _Unwind_Resume(a1);
}

void write_rest_value(uint64_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v3 = *a1;
  if (v3)
  {

    write_rest_value(v3, a2);
  }

  else
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    if (v4 || (v4 = xpc_null_create()) != 0)
    {
      if (MEMORY[0x2383CC760](v4) == MEMORY[0x277D86468])
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
    *a2 = v5;
    if (v5)
    {
      xpc_retain(v5);
    }

    else
    {
      *a2 = xpc_null_create();
    }

    xpc_release(v5);
  }
}

void PersonalityInfo::uuid(PersonalityInfo *this@<X0>, CFUUIDRef *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *this, *(this + 1));
  }

  else
  {
    __p = *this;
  }

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
  v3 = *MEMORY[0x277CBECE8];
  if (ctu::cf::convert_copy())
  {
    v4 = v8;
    v8 = v11;
    v12 = v4;
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v12);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  v5 = v8;
  v7 = v8;
  v8 = 0;
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v8);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  *a2 = CFUUIDCreateFromString(0, v5);
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&v7);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23742770C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t PersonalityInfo::canHaveVoiceSupport(PersonalityInfo *this)
{
  v1 = *(this + 49);
  if (v1 != 3 && v1 != 2)
  {
    if (*(this + 49))
    {
      v2 = 1;
      return v2 & 1;
    }

    if ((*(this + 62) & 1) == 0 && (*(this + 63) & 1) == 0)
    {
      v2 = *(this + 96) ^ 1;
      return v2 & 1;
    }
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t PersonalityInfo::canHaveMessagingSupport(PersonalityInfo *this)
{
  if (*(this + 49) || (*(this + 62) & 1) != 0 || (*(this + 63) & 1) != 0)
  {
    v1 = 0;
  }

  else
  {
    v1 = *(this + 96) ^ 1;
  }

  return v1 & 1;
}

BOOL SimLabelContent::operator==(void *a1, void *a2)
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

  v9 = *(v7 + 47);
  if (v9 >= 0)
  {
    v10 = *(v7 + 47);
  }

  else
  {
    v10 = v7[4];
  }

  v11 = *(v6 + 47);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = v6[4];
  }

  if (v10 != v11)
  {
    return 0;
  }

  v15 = v7[3];
  v14 = v7 + 3;
  v13 = v15;
  if (v9 >= 0)
  {
    v16 = v14;
  }

  else
  {
    v16 = v13;
  }

  v19 = v6[3];
  v18 = v6 + 3;
  v17 = v19;
  if (v12 >= 0)
  {
    v20 = v18;
  }

  else
  {
    v20 = v17;
  }

  return memcmp(v16, v20, v10) == 0;
}

uint64_t asString@<X0>(const SimLabelContent *a1@<X0>, _BYTE *a2@<X8>)
{
  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v18);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "text:", 5);
  v5 = *(a1 + 23);
  if (v5 >= 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = *a1;
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 23);
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " tag:", 5);
  v12 = *(a1 + 3);
  v11 = a1 + 24;
  v10 = v12;
  v13 = v11[23];
  if (v13 >= 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = v10;
  }

  if (v13 >= 0)
  {
    v15 = v11[23];
  }

  else
  {
    v15 = *(v11 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v14, v15);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v18, a2);
  *&v18 = *MEMORY[0x277D82818];
  v16 = *(MEMORY[0x277D82818] + 72);
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v19 = v16;
  *(&v19 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v24);
}

BOOL SimLabel::operator==(uint64_t a1, uint64_t a2)
{
  result = SimLabelContent::operator==(a1, a2);
  if (result)
  {
    v5 = *(a1 + 71);
    if (v5 >= 0)
    {
      v6 = *(a1 + 71);
    }

    else
    {
      v6 = *(a1 + 56);
    }

    v7 = *(a2 + 71);
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 56);
    }

    if (v6 != v7)
    {
      return 0;
    }

    v9 = v5 >= 0 ? (a1 + 48) : *(a1 + 48);
    v10 = v8 >= 0 ? (a2 + 48) : *(a2 + 48);
    if (memcmp(v9, v10, v6) || *(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }

    v11 = *(a1 + 103);
    if (v11 >= 0)
    {
      v12 = *(a1 + 103);
    }

    else
    {
      v12 = *(a1 + 88);
    }

    v13 = *(a2 + 103);
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 88);
    }

    if (v12 != v13)
    {
      return 0;
    }

    v15 = v11 >= 0 ? (a1 + 80) : *(a1 + 80);
    v16 = v14 >= 0 ? (a2 + 80) : *(a2 + 80);
    if (memcmp(v15, v16, v12))
    {
      return 0;
    }

    v17 = *(a1 + 127);
    if (v17 >= 0)
    {
      v18 = *(a1 + 127);
    }

    else
    {
      v18 = *(a1 + 112);
    }

    v19 = *(a2 + 127);
    v20 = v19;
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(a2 + 112);
    }

    if (v18 != v19)
    {
      return 0;
    }

    v21 = v17 >= 0 ? (a1 + 104) : *(a1 + 104);
    v22 = v20 >= 0 ? (a2 + 104) : *(a2 + 104);
    if (memcmp(v21, v22, v18))
    {
      return 0;
    }

    v23 = *(a1 + 151);
    if (v23 >= 0)
    {
      v24 = *(a1 + 151);
    }

    else
    {
      v24 = *(a1 + 136);
    }

    v25 = *(a2 + 151);
    v26 = v25;
    if ((v25 & 0x80u) != 0)
    {
      v25 = *(a2 + 136);
    }

    if (v24 == v25)
    {
      v29 = *(a1 + 128);
      v28 = (a1 + 128);
      v27 = v29;
      if (v23 >= 0)
      {
        v30 = v28;
      }

      else
      {
        v30 = v27;
      }

      v33 = *(a2 + 128);
      v32 = (a2 + 128);
      v31 = v33;
      if (v26 >= 0)
      {
        v34 = v32;
      }

      else
      {
        v34 = v31;
      }

      return memcmp(v30, v34, v24) == 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL SimLabel::sameLabelName(size_t *this, const SimLabel *a2)
{
  v2 = a2;
  v3 = this;
  v4 = *(this + 47);
  if ((v4 & 0x8000000000000000) == 0)
  {
    if (*(this + 47))
    {
      goto LABEL_3;
    }

LABEL_18:
    v15 = *(this + 23);
    if (v15 >= 0)
    {
      v16 = *(this + 23);
    }

    else
    {
      v16 = this[1];
    }

    v17 = *(a2 + 23);
    v18 = v17;
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 1);
    }

    if (v16 == v17)
    {
      if (v15 < 0)
      {
        this = *this;
      }

      v19 = *a2;
      if (v18 < 0)
      {
        a2 = *a2;
      }

      if (!memcmp(this, a2, v16))
      {
        if ((v4 & 0x80000000) == 0)
        {
          v5 = v4;
        }

        else
        {
          v5 = *(v3 + 4);
        }

        v20 = *(v2 + 47);
        v21 = *(v2 + 4);
        if ((v20 & 0x80000000) == 0)
        {
          v21 = *(v2 + 47);
        }

        if (v5 == v21)
        {
          v8 = v20 >> 63;
          goto LABEL_10;
        }
      }
    }

    return 0;
  }

  if (!this[4])
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v4 & 0x80000000) == 0)
  {
    v5 = *(this + 47);
  }

  else
  {
    v5 = this[4];
  }

  v6 = *(a2 + 47);
  v7 = *(a2 + 4);
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a2 + 47);
  }

  if (v5 != v7)
  {
    return 0;
  }

  v8 = v6 >> 63;
LABEL_10:
  if ((v4 & 0x80000000) == 0)
  {
    v9 = v3 + 24;
  }

  else
  {
    v9 = *(v3 + 3);
  }

  v12 = *(v2 + 3);
  v11 = v2 + 24;
  v10 = v12;
  if (v8)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  return memcmp(v9, v13, v5) == 0;
}

BOOL SimLabel::sameLabelName(uint64_t *a1, void *a2, const void **a3)
{
  v4 = a1;
  v5 = *(a1 + 47);
  if ((v5 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 47))
    {
      goto LABEL_3;
    }

LABEL_18:
    v13 = *(a1 + 23);
    if (v13 >= 0)
    {
      v14 = *(a1 + 23);
    }

    else
    {
      v14 = a1[1];
    }

    v15 = *(a2 + 23);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = a2[1];
    }

    if (v14 == v15)
    {
      if (v13 < 0)
      {
        a1 = *a1;
      }

      v17 = *a2;
      if (v16 < 0)
      {
        a2 = *a2;
      }

      if (!memcmp(a1, a2, v14))
      {
        if ((v5 & 0x80000000) == 0)
        {
          v6 = v5;
        }

        else
        {
          v6 = v4[4];
        }

        v18 = *(a3 + 23);
        v19 = a3[1];
        if ((v18 & 0x80000000) == 0)
        {
          v19 = *(a3 + 23);
        }

        if (v6 == v19)
        {
          v9 = v18 >> 63;
          goto LABEL_10;
        }
      }
    }

    return 0;
  }

  if (!a1[4])
  {
    goto LABEL_18;
  }

LABEL_3:
  if ((v5 & 0x80000000) == 0)
  {
    v6 = *(a1 + 47);
  }

  else
  {
    v6 = a1[4];
  }

  v7 = *(a3 + 23);
  v8 = a3[1];
  if ((v7 & 0x80000000) == 0)
  {
    v8 = *(a3 + 23);
  }

  if (v6 != v8)
  {
    return 0;
  }

  v9 = v7 >> 63;
LABEL_10:
  if ((v5 & 0x80000000) == 0)
  {
    v10 = v4 + 3;
  }

  else
  {
    v10 = v4[3];
  }

  if (v9)
  {
    v11 = *a3;
  }

  else
  {
    v11 = a3;
  }

  return memcmp(v10, v11, v6) == 0;
}

BOOL SimLabel::sameContent(SimLabel *this, const SimLabel *a2)
{
  v2 = *(this + 71);
  if (v2 >= 0)
  {
    v3 = *(this + 71);
  }

  else
  {
    v3 = *(this + 7);
  }

  v4 = *(a2 + 71);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 7);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (v2 >= 0)
  {
    v8 = this + 48;
  }

  else
  {
    v8 = *(this + 6);
  }

  if (v5 >= 0)
  {
    v9 = a2 + 48;
  }

  else
  {
    v9 = *(a2 + 6);
  }

  if (memcmp(v8, v9, v3))
  {
    return 0;
  }

  v10 = *(this + 23);
  if (v10 >= 0)
  {
    v11 = *(this + 23);
  }

  else
  {
    v11 = *(this + 1);
  }

  v12 = *(a2 + 23);
  v13 = v12;
  if ((v12 & 0x80u) != 0)
  {
    v12 = *(a2 + 1);
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? this : *this;
  v15 = *a2;
  v16 = v13 >= 0 ? a2 : *a2;
  if (memcmp(v14, v16, v11))
  {
    return 0;
  }

  v17 = *(this + 47);
  if (v17 >= 0)
  {
    v18 = *(this + 47);
  }

  else
  {
    v18 = *(this + 4);
  }

  v19 = *(a2 + 47);
  v20 = v19;
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 4);
  }

  if (v18 != v19)
  {
    return 0;
  }

  v21 = v17 >= 0 ? (this + 24) : *(this + 3);
  v22 = v20 >= 0 ? (a2 + 24) : *(a2 + 3);
  if (memcmp(v21, v22, v18))
  {
    return 0;
  }

  v23 = *(this + 103);
  if (v23 >= 0)
  {
    v24 = *(this + 103);
  }

  else
  {
    v24 = *(this + 11);
  }

  v25 = *(a2 + 103);
  v26 = v25;
  if ((v25 & 0x80u) != 0)
  {
    v25 = *(a2 + 11);
  }

  if (v24 != v25)
  {
    return 0;
  }

  v27 = v23 >= 0 ? (this + 80) : *(this + 10);
  v28 = v26 >= 0 ? (a2 + 80) : *(a2 + 10);
  if (memcmp(v27, v28, v24))
  {
    return 0;
  }

  v29 = *(this + 127);
  if (v29 >= 0)
  {
    v30 = *(this + 127);
  }

  else
  {
    v30 = *(this + 14);
  }

  v31 = *(a2 + 127);
  v32 = v31;
  if ((v31 & 0x80u) != 0)
  {
    v31 = *(a2 + 14);
  }

  if (v30 != v31)
  {
    return 0;
  }

  v33 = v29 >= 0 ? (this + 104) : *(this + 13);
  v34 = v32 >= 0 ? (a2 + 104) : *(a2 + 13);
  if (memcmp(v33, v34, v30))
  {
    return 0;
  }

  v35 = *(this + 151);
  if (v35 >= 0)
  {
    v36 = *(this + 151);
  }

  else
  {
    v36 = *(this + 17);
  }

  v37 = *(a2 + 151);
  v38 = v37;
  if ((v37 & 0x80u) != 0)
  {
    v37 = *(a2 + 17);
  }

  if (v36 != v37)
  {
    return 0;
  }

  v41 = *(this + 16);
  v40 = this + 128;
  v39 = v41;
  if (v35 >= 0)
  {
    v42 = v40;
  }

  else
  {
    v42 = v39;
  }

  v45 = *(a2 + 16);
  v44 = a2 + 128;
  v43 = v45;
  if (v38 >= 0)
  {
    v46 = v44;
  }

  else
  {
    v46 = v43;
  }

  return memcmp(v42, v46, v36) == 0;
}

uint64_t asString@<X0>(const SimLabel *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = 0;
  v38 = 0u;
  memset(v39, 0, sizeof(v39));
  *v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v33 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v33);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "id:", 3);
  v5 = *(a1 + 71);
  if (v5 >= 0)
  {
    v6 = a1 + 48;
  }

  else
  {
    v6 = *(a1 + 6);
  }

  if (v5 >= 0)
  {
    v7 = *(a1 + 71);
  }

  else
  {
    v7 = *(a1 + 7);
  }

  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, v6, v7);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  asString(a1, __p);
  if ((v32 & 0x80u) == 0)
  {
    v10 = __p;
  }

  else
  {
    v10 = __p[0];
  }

  if ((v32 & 0x80u) == 0)
  {
    v11 = v32;
  }

  else
  {
    v11 = __p[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " mdn:", 5);
  v14 = *(a1 + 103);
  if (v14 >= 0)
  {
    v15 = a1 + 80;
  }

  else
  {
    v15 = *(a1 + 10);
  }

  if (v14 >= 0)
  {
    v16 = *(a1 + 103);
  }

  else
  {
    v16 = *(a1 + 11);
  }

  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v15, v16);
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " formatted:", 11);
  v19 = *(a1 + 127);
  if (v19 >= 0)
  {
    v20 = a1 + 104;
  }

  else
  {
    v20 = *(a1 + 13);
  }

  if (v19 >= 0)
  {
    v21 = *(a1 + 127);
  }

  else
  {
    v21 = *(a1 + 14);
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " carrier:", 9);
  v24 = *(a1 + 151);
  if (v24 >= 0)
  {
    v25 = a1 + 128;
  }

  else
  {
    v25 = *(a1 + 16);
  }

  if (v24 >= 0)
  {
    v26 = *(a1 + 151);
  }

  else
  {
    v26 = *(a1 + 17);
  }

  v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v25, v26);
  v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, " didSetup:", 10);
  MEMORY[0x2383CBD10](v28, *(a1 + 72));
  if (v32 < 0)
  {
    operator delete(__p[0]);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v33, a2);
  *&v33 = *MEMORY[0x277D82818];
  v29 = *(MEMORY[0x277D82818] + 72);
  *(&v33 + *(v33 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v34 = v29;
  *(&v34 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[1]);
  }

  *(&v34 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v35);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v39);
}

void write_rest_value(const SimLabel *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v33 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v33 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v33 = v5;
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
  v33 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 71) >= 0)
  {
    v7 = a1 + 48;
  }

  else
  {
    v7 = *(a1 + 6);
  }

  v31 = xpc_string_create(v7);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "unique_id";
  xpc::dict::object_proxy::operator=(&v29, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  if (*(a1 + 23) >= 0)
  {
    v8 = a1;
  }

  else
  {
    v8 = *a1;
  }

  object = xpc_string_create(v8);
  if (!object)
  {
    object = xpc_null_create();
  }

  v29 = &v33;
  v30 = "text";
  xpc::dict::object_proxy::operator=(&v29, &object, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(object);
  object = 0;
  if (*(a1 + 47) >= 0)
  {
    v9 = a1 + 24;
  }

  else
  {
    v9 = *(a1 + 3);
  }

  v25 = xpc_string_create(v9);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "tag";
  xpc::dict::object_proxy::operator=(&v29, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  v23 = xpc_BOOL_create(*(a1 + 72));
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "didSetup";
  xpc::dict::object_proxy::operator=(&v29, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  if (*(a1 + 103) >= 0)
  {
    v10 = a1 + 80;
  }

  else
  {
    v10 = *(a1 + 10);
  }

  v21 = xpc_string_create(v10);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "asisMdn";
  xpc::dict::object_proxy::operator=(&v29, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  if (*(a1 + 127) >= 0)
  {
    v11 = a1 + 104;
  }

  else
  {
    v11 = *(a1 + 13);
  }

  v19 = xpc_string_create(v11);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "formattedMdn";
  xpc::dict::object_proxy::operator=(&v29, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v14 = *(a1 + 16);
  v13 = a1 + 128;
  v12 = v14;
  if (v13[23] >= 0)
  {
    v15 = v13;
  }

  else
  {
    v15 = v12;
  }

  v17 = xpc_string_create(v15);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v29 = &v33;
  v30 = "carrierName";
  xpc::dict::object_proxy::operator=(&v29, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v33;
  *a2 = v33;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v33);
}

void read_rest_value(SimLabel *a1, const object *a2)
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
    p_fObj = &fObj;
    v13 = "unique_id";
    xpc::dict::object_proxy::operator xpc::object(&p_fObj, &v14);
    v4[0] = 0;
    v4[1] = 0;
    v5[0] = 0;
    xpc::dyn_cast_or_default();
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 6));
    }

    *(a1 + 3) = v16;
    *(a1 + 8) = v17;
    xpc_release(v14);
    p_fObj = &fObj;
    v13 = "text";
    xpc::dict::object_proxy::operator xpc::object(&p_fObj, &v14);
    v4[0] = 0;
    v4[1] = 0;
    v5[0] = 0;
    xpc::dyn_cast_or_default();
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v16;
    *(a1 + 2) = v17;
    xpc_release(v14);
    p_fObj = &fObj;
    v13 = "tag";
    xpc::dict::object_proxy::operator xpc::object(&p_fObj, &v14);
    v4[0] = 0;
    v4[1] = 0;
    v5[0] = 0;
    xpc::dyn_cast_or_default();
    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 3));
    }

    *(a1 + 24) = v16;
    *(a1 + 5) = v17;
    xpc_release(v14);
    v4[0] = &fObj;
    v4[1] = "didSetup";
    xpc::dict::object_proxy::operator xpc::object(v4, &v16);
    *(a1 + 72) = xpc::dyn_cast_or_default(&v16, 0);
    xpc_release(v16);
    p_fObj = &fObj;
    v13 = "asisMdn";
    xpc::dict::object_proxy::operator xpc::object(&p_fObj, &v14);
    v4[0] = 0;
    v4[1] = 0;
    v5[0] = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v5[0]) < 0)
    {
      operator delete(v4[0]);
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 10));
    }

    *(a1 + 5) = v16;
    *(a1 + 12) = v17;
    xpc_release(v14);
    p_fObj = &fObj;
    v13 = "formattedMdn";
    xpc::dict::object_proxy::operator xpc::object(&p_fObj, &v14);
    v4[0] = 0;
    v4[1] = 0;
    v5[0] = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v5[0]) < 0)
    {
      operator delete(v4[0]);
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 13));
    }

    *(a1 + 104) = v16;
    *(a1 + 15) = v17;
    xpc_release(v14);
    p_fObj = &fObj;
    v13 = "carrierName";
    xpc::dict::object_proxy::operator xpc::object(&p_fObj, &v14);
    v4[0] = 0;
    v4[1] = 0;
    v5[0] = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v5[0]) < 0)
    {
      operator delete(v4[0]);
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 16));
    }

    *(a1 + 8) = v16;
    *(a1 + 18) = v17;
    xpc_release(v14);
  }

  else
  {
    v6 = 0u;
    memset(v7, 0, sizeof(v7));
    *v4 = 0u;
    *v5 = 0u;
    *v8 = 0u;
    *v9 = 0u;
    v10 = 0u;
    memset(&__p, 0, sizeof(__p));
    std::string::operator=(a1, v4);
    std::string::operator=(a1 + 1, &v5[1]);
    std::string::operator=(a1 + 2, v7);
    *(a1 + 72) = v7[24];
    std::string::operator=((a1 + 80), v8);
    std::string::operator=((a1 + 104), &v9[1]);
    std::string::operator=((a1 + 128), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(v9[1]);
    }

    if (SHIBYTE(v9[0]) < 0)
    {
      operator delete(v8[0]);
    }

    if ((v7[23] & 0x80000000) != 0)
    {
      operator delete(*v7);
    }

    if (SHIBYTE(v6) < 0)
    {
      operator delete(v5[1]);
    }

    if (SHIBYTE(v5[0]) < 0)
    {
      operator delete(v4[0]);
    }
  }

  xpc_release(fObj);
}

void sub_237428C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v14 - 72));
  xpc_release(*(v14 - 64));
  _Unwind_Resume(a1);
}

void sub_2374291D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_237429C10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

xpc_object_t write_rest_value@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  if (v2)
  {
    return xpc_retain(v2);
  }

  result = xpc_null_create();
  *a2 = result;
  return result;
}

void read_rest_value(void **a1, void *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D86468];
  if (*a2 && MEMORY[0x2383CC760](*a2) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760](v3) == v4)
  {
    if (v3)
    {
      xpc_retain(v3);
      v8 = v3;
    }

    else
    {
      v8 = xpc_null_create();
    }

    v9 = *a1;
    *a1 = v8;
    xpc_release(v9);
  }

  else
  {
    v5 = xpc_null_create();
    v6 = xpc_null_create();
    v7 = *a1;
    *a1 = v5;
    xpc_release(v7);
    xpc_release(v6);
  }

  xpc_release(v3);
}

void sub_23742A090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void write_rest_value(unsigned __int8 *a1@<X0>, xpc_object_t *a2@<X8>)
{
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
  v7 = *(a1 + 2);
  v8 = asString(v7);
  ctu::rest::detail::write_enum_string_value(&object, v7, v8, v9);
  v21 = &v25;
  v22 = "callstate";
  xpc::dict::object_proxy::operator=(&v21, &object, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(object);
  object = 0;
  v11 = *a1;
  if (*a1 <= 3u)
  {
    if (v11 == 1)
    {
      v12 = "Telephony";
      goto LABEL_21;
    }

    if (v11 == 2)
    {
      v12 = "Wifi";
      goto LABEL_21;
    }
  }

  else
  {
    switch(v11)
    {
      case 4:
        v12 = "VoLTE";
        goto LABEL_21;
      case 8:
        v12 = "VoNR";
        goto LABEL_21;
      case 0x10:
        v12 = "SOSCall";
        goto LABEL_21;
    }
  }

  v12 = "Unknown";
LABEL_21:
  ctu::rest::detail::write_enum_string_value(v11, v12, v10);
  v21 = &v25;
  v22 = "subtype";
  xpc::dict::object_proxy::operator=(&v21, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v14 = *(a1 + 1);
  if ((v14 - 1) > 2)
  {
    v15 = "kUnknown";
  }

  else
  {
    v15 = off_278A2F9B0[v14 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v17, v14, v15, v13);
  v21 = &v25;
  v22 = "slot";
  xpc::dict::object_proxy::operator=(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v25;
  *a2 = v25;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v25);
}

{
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
  v8 = *a1;
  if (*a1 <= 3u)
  {
    if (v8 == 1)
    {
      v9 = "Telephony";
      goto LABEL_21;
    }

    if (v8 == 2)
    {
      v9 = "Wifi";
      goto LABEL_21;
    }
  }

  else
  {
    switch(v8)
    {
      case 4:
        v9 = "VoLTE";
        goto LABEL_21;
      case 8:
        v9 = "VoNR";
        goto LABEL_21;
      case 0x10:
        v9 = "SOSCall";
        goto LABEL_21;
    }
  }

  v9 = "Unknown";
LABEL_21:
  ctu::rest::detail::write_enum_string_value(v8, v9, v7);
  v21 = &v25;
  v22 = "subtype";
  xpc::dict::object_proxy::operator=(&v21, &object, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(object);
  object = 0;
  v11 = *(a1 + 1);
  if ((v11 - 1) > 2)
  {
    v12 = "kUnknown";
  }

  else
  {
    v12 = off_278A2F9B0[v11 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v19, v11, v12, v10);
  v21 = &v25;
  v22 = "slot";
  xpc::dict::object_proxy::operator=(&v21, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v13 = *(a1 + 2);
  v14 = asString(v13);
  ctu::rest::detail::write_enum_string_value(&v17, v13, v14, v15);
  v21 = &v25;
  v22 = "callType";
  xpc::dict::object_proxy::operator=(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v25;
  *a2 = v25;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v25);
}

{
  v23 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
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
  v23 = v6;
LABEL_9:
  xpc_release(v5);
  v8 = *a1;
  if (v8 > 2)
  {
    v9 = "???";
  }

  else
  {
    v9 = off_278A32398[v8];
  }

  ctu::rest::detail::write_enum_string_value(v8, v9, v7);
  v19 = &v23;
  v20 = "method";
  xpc::dict::object_proxy::operator=(&v19, &object, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(object);
  object = 0;
  v17 = xpc_BOOL_create(a1[1]);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "incoming_tty_calls";
  xpc::dict::object_proxy::operator=(&v19, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v12 = *(a1 + 1);
  v11 = a1 + 8;
  v10 = v12;
  if ((v11[23] & 0x80u) == 0)
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

  v19 = &v23;
  v20 = "relay_number";
  xpc::dict::object_proxy::operator=(&v19, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  v14 = v23;
  *a2 = v23;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

BOOL DisambiguationEmergencyNumber::operator==(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a1 + 24;
  v4[2] = a1 + 48;
  v3[0] = a2;
  v3[1] = a2 + 24;
  v3[2] = a2 + 48;
  return std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,std::string const&,std::optional<int> const&>,std::tuple<std::string const&,std::string const&,std::optional<int> const&>>(v4, v3);
}

BOOL DisambiguationEmergencyNumber::operator!=(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a1 + 24;
  v4[2] = a1 + 48;
  v3[0] = a2;
  v3[1] = a2 + 24;
  v3[2] = a2 + 48;
  return !std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,std::string const&,std::optional<int> const&>,std::tuple<std::string const&,std::string const&,std::optional<int> const&>>(v4, v3);
}

void sub_23742B68C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, xpc_object_t object)
{
  xpc_release(*(v20 - 56));
  xpc_release(object);
  _Unwind_Resume(a1);
}

void sub_23742B988(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742BCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742C0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742C44C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742C800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742CBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742D0BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742D468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742D85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742DBDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742DFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23742E408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(v22);
  xpc_release(v21);
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void ctu::rest::write_rest_value<std::string>(uint64_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  v5 = v4;
  if (v4)
  {
    object = v4;
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) == MEMORY[0x277D86440])
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  object = v6;
LABEL_9:
  xpc_release(v5);
  std::transform[abi:ne200100]<std::__wrap_iter<std::string const*>,std::back_insert_iterator<xpc::array>,xpc::object ctu::rest::write_rest_value<std::string>(std::vector<std::string> const&)::{lambda(std::string const&)#1}>(*a1, a1[1], &object);
  v7 = object;
  *a2 = object;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(object);
}

void sub_23742EAE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(*(v18 - 64));
  _Unwind_Resume(a1);
}

void ctu::rest::read_rest_value<std::string>(uint64_t a1, std::string **a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D86440];
  if (*a2 && MEMORY[0x2383CC760](*a2) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  std::vector<std::string>::clear[abi:ne200100](a1);
  if (MEMORY[0x2383CC760](v3) == v4)
  {
    object.__first_ = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object.__first_ = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v24, &object.__first_, 0);
    xpc_release(object.__first_);
    object.__first_ = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object.__first_ = xpc_null_create();
    }

    if (MEMORY[0x2383CC760](v3) == v4)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(v23, &object.__first_, count);
    xpc_release(object.__first_);
    for (i = v25; i != v23[1] || v24 != v23[0]; i = ++v25)
    {
      v22[0] = &v24;
      v22[1] = i;
      v7 = *(a1 + 8);
      v8 = *(a1 + 16);
      if (v7 >= v8)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *a1) >> 3);
        v11 = v10 + 1;
        if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
        }

        v12 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *a1) >> 3);
        if (2 * v12 > v11)
        {
          v11 = 2 * v12;
        }

        if (v12 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v13 = v11;
        }

        object.__end_cap_.__value_ = a1;
        if (v13)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(a1, v13);
        }

        v14 = 24 * v10;
        *v14 = 0;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        v9 = 24 * v10 + 24;
        v15 = *(a1 + 8) - *a1;
        v16 = 24 * v10 - v15;
        memcpy((v14 - v15), *a1, v15);
        v17 = *a1;
        *a1 = v16;
        *(a1 + 8) = v9;
        v18 = *(a1 + 16);
        *(a1 + 16) = 0;
        object.__end_ = v17;
        object.__end_cap_.__value_ = v18;
        object.__first_ = v17;
        object.__begin_ = v17;
        std::__split_buffer<std::string>::~__split_buffer(&object);
      }

      else
      {
        *v7 = 0;
        v7[1] = 0;
        v9 = (v7 + 3);
        v7[2] = 0;
      }

      *(a1 + 8) = v9;
      xpc::array::object_proxy::operator xpc::object(v22, &v21);
      memset(&object, 0, 24);
      xpc::dyn_cast_or_default();
      if (SHIBYTE(object.__end_) < 0)
      {
        operator delete(object.__first_);
      }

      v19 = (v9 - 24);
      if (*(v9 - 1) < 0)
      {
        operator delete(*v19);
      }

      v20 = v27;
      *(v9 - 8) = v28;
      *v19 = v20;
      xpc_release(v21);
    }

    xpc_release(v23[0]);
    xpc_release(v24);
  }

  xpc_release(v3);
}

void sub_23742EE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t object, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v22);
  _Unwind_Resume(a1);
}

void sub_23742F13C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

BOOL std::__tuple_equal<3ul>::operator()[abi:ne200100]<std::tuple<std::string const&,std::string const&,std::optional<int> const&>,std::tuple<std::string const&,std::string const&,std::optional<int> const&>>(void *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a1 + 23);
  if (v3 >= 0)
  {
    v4 = *(*a1 + 23);
  }

  else
  {
    v4 = *(*a1 + 8);
  }

  v5 = *(v2 + 23);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(v2 + 8);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = a1[1];
  v10 = a2[1];
  v11 = v3 >= 0 ? *a1 : **a1;
  v12 = v6 >= 0 ? *a2 : *v2;
  if (memcmp(v11, v12, v4))
  {
    return 0;
  }

  v13 = *(v9 + 23);
  if (v13 >= 0)
  {
    v14 = *(v9 + 23);
  }

  else
  {
    v14 = *(v9 + 8);
  }

  v15 = *(v10 + 23);
  v16 = v15;
  if ((v15 & 0x80u) != 0)
  {
    v15 = v10[1];
  }

  if (v14 != v15)
  {
    return 0;
  }

  v17 = v13 >= 0 ? v9 : *v9;
  v18 = *v10;
  v19 = v16 >= 0 ? v10 : *v10;
  if (memcmp(v17, v19, v14))
  {
    return 0;
  }

  v21 = a1[2];
  v22 = a2[2];
  v23 = *(v22 + 4);
  v24 = *(v21 + 4);
  result = v24 == v23;
  if (v24 == v23)
  {
    if (*(v21 + 4))
    {
      return *v21 == *v22;
    }
  }

  return result;
}

void std::vector<std::string>::__vdeallocate(std::vector<std::string> *this)
{
  if (this->__begin_)
  {
    std::vector<std::string>::clear[abi:ne200100](this);
    operator delete(this->__begin_);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
  }
}

void ctu::rest::detail::read_rest_value_impl<xpc::object>(void **a1, void *a2)
{
  v4 = xpc_null_create();
  if (MEMORY[0x2383CC760](*a2) == MEMORY[0x277D864B0])
  {
    v5 = v4;
  }

  else
  {
    v5 = *a2;
  }

  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  xpc_release(v4);
  v6 = *a1;
  *a1 = v5;
  xpc_release(v6);
}

xpc_object_t *std::transform[abi:ne200100]<std::__wrap_iter<std::string const*>,std::back_insert_iterator<xpc::array>,xpc::object ctu::rest::write_rest_value<std::string>(std::vector<std::string> const&)::{lambda(std::string const&)#1}>(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      if (*(v5 + 23) >= 0)
      {
        v6 = v5;
      }

      else
      {
        v6 = *v5;
      }

      v7 = xpc_string_create(v6);
      if (!v7)
      {
        v7 = xpc_null_create();
      }

      xpc_array_append_value(*a3, v7);
      xpc_release(v7);
      v5 += 24;
    }

    while (v5 != a2);
  }

  return a3;
}

void SubscriberUtilityInterface::getSubscriberMcc(uint64_t a1, void *a2)
{
  (*(*a1 + 16))(__p);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v7 = xpc_string_create(v3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v4[0] = *a2;
  v4[1] = "kSubscriberMcc";
  xpc::dict::object_proxy::operator=(v4, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
  v7 = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void SubscriberUtilityInterface::getSubscriberMnc(uint64_t a1, void *a2)
{
  (*(*a1 + 32))(__p);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v7 = xpc_string_create(v3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v4[0] = *a2;
  v4[1] = "kSubscriberMnc";
  xpc::dict::object_proxy::operator=(v4, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  xpc_release(v7);
  v7 = 0;
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }
}

void SubscriberUtilityInterface::getLastKnownSubscriberMcc(uint64_t a1, void *a2)
{
  v12[4] = *MEMORY[0x277D85DE8];
  __p[0] = 0;
  __p[1] = 0;
  v11 = 0;
  dsema = dispatch_semaphore_create(0);
  v12[0] = &unk_284A67E18;
  v12[1] = __p;
  v12[2] = &dsema;
  v12[3] = v12;
  (*(*a1 + 40))(a1, 1, v12);
  std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](v12);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if (v11 >= 0)
  {
    v4 = __p;
  }

  else
  {
    v4 = __p[0];
  }

  v7 = xpc_string_create(v4);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v6[0] = *a2;
  v6[1] = "kSubscriberLastKnownMcc";
  xpc::dict::object_proxy::operator=(v6, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  v7 = 0;
  if (dsema)
  {
    dispatch_release(dsema);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void sub_23742F788(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

__n128 std::__function::__func<SubscriberUtilityInterface::getLastKnownSubscriberMcc(xpc::auto_reply)::$_0,std::allocator<SubscriberUtilityInterface::getLastKnownSubscriberMcc(xpc::auto_reply)::$_0>,void ()(std::string)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_284A67E18;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<SubscriberUtilityInterface::getLastKnownSubscriberMcc(xpc::auto_reply)::$_0,std::allocator<SubscriberUtilityInterface::getLastKnownSubscriberMcc(xpc::auto_reply)::$_0>,void ()(std::string)>::operator()(uint64_t a1, std::string *a2)
{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  std::string::operator=(*(a1 + 8), &__p);
  dispatch_semaphore_signal(**(a1 + 16));
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_23742F8E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<SubscriberUtilityInterface::getLastKnownSubscriberMcc(xpc::auto_reply)::$_0,std::allocator<SubscriberUtilityInterface::getLastKnownSubscriberMcc(xpc::auto_reply)::$_0>,void ()(std::string)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(std::string)>::~__value_func[abi:ne200100](uint64_t a1)
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

void BasebandModeActionDoNothing::dumpState(uint64_t a1, os_log_t *a2)
{
  v2 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2373EA000, v2, OS_LOG_TYPE_DEFAULT, "#I Action: fixed to do nothing", v3, 2u);
  }
}

const char *asString(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return "kNoButton";
  }

  else
  {
    return off_278A2FA50[(a1 - 1)];
  }
}

{
  if ((a1 - 1) > 7u)
  {
    return "BundleUpdateCheckTrigger::kUnknown";
  }

  else
  {
    return off_278A30968[(a1 - 1)];
  }
}

{
  if ((a1 - 1) > 3u)
  {
    return "???";
  }

  else
  {
    return off_278A316C0[(a1 - 1)];
  }
}

{
  if ((a1 - 1) > 3u)
  {
    return "None";
  }

  else
  {
    return off_278A32158[(a1 - 1)];
  }
}

void sGetSubscriberSimInterface(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  Registry::throwIfNotInitialized(*a1);
  v6 = *(v4 + 24);
  v7 = "22SubscriberSimInterface";
  if (("22SubscriberSimInterface" & 0x8000000000000000) != 0)
  {
    v8 = ("22SubscriberSimInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
      if (!v13)
      {
        goto LABEL_8;
      }

LABEL_14:
      *a3 = v13;
      a3[1] = v12;
      return;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (a2)
  {
    v14 = *(a2 + 32);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v18 = 0;
    v15 = &v18;
    v16 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v17 = 0;
    v16 = MEMORY[0x277D86220];
    v15 = &v17;
  }

  _os_log_error_impl(&dword_2373EA000, v16, OS_LOG_TYPE_ERROR, "Could not get SubscriberSimController", v15, 2u);
LABEL_16:
  *a3 = 0;
  a3[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void sGetSubscriberSimInterface(uint64_t *a1@<X0>, NSObject **a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (!*a1)
  {
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  Registry::throwIfNotInitialized(*a1);
  v6 = *(v4 + 24);
  v7 = "22SubscriberSimInterface";
  if (("22SubscriberSimInterface" & 0x8000000000000000) != 0)
  {
    v8 = ("22SubscriberSimInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
      if (!v13)
      {
        goto LABEL_8;
      }

LABEL_14:
      *a3 = v13;
      a3[1] = v12;
      return;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6 + 3);
  v12 = 0;
  if (v13)
  {
    goto LABEL_14;
  }

LABEL_8:
  if (a2)
  {
    v14 = *a2;
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v18 = 0;
    v15 = &v18;
    v16 = v14;
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_16;
    }

    v17 = 0;
    v16 = MEMORY[0x277D86220];
    v15 = &v17;
  }

  _os_log_error_impl(&dword_2373EA000, v16, OS_LOG_TYPE_ERROR, "Could not get SubscriberSimController", v15, 2u);
LABEL_16:
  *a3 = 0;
  a3[1] = 0;
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }
}

void SubscriberSimInterface::observeFile(uint64_t a1, int a2)
{
  v3 = a2;
  std::set<subscriber::SimFilePath>::set[abi:ne200100](v4, &v3, 1);
  (*(*a1 + 160))(a1, v4);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(v4[1]);
}

void SubscriberSimInterface::observeFile(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  std::set<subscriber::SimFilePath>::set[abi:ne200100](v6, &v5, 1);
  (*(*a1 + 168))(a1, a2, v6);
  std::__tree<std::__value_type<subscriber::SimSlot,unsigned long long>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,unsigned long long>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,unsigned long long>>>::destroy(v6[1]);
}

void *std::set<subscriber::SimFilePath>::set[abi:ne200100](void *result, int *a2, uint64_t a3)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  if (a3)
  {
    v3 = a2;
    v4 = 0;
    v5 = result + 1;
    while (1)
    {
      v6 = result + 1;
      if (v5 == result + 1)
      {
        goto LABEL_9;
      }

      v7 = v4;
      v8 = result + 1;
      if (v4)
      {
        do
        {
          v6 = v7;
          v7 = v7[1];
        }

        while (v7);
      }

      else
      {
        do
        {
          v6 = v8[2];
          v9 = *v6 == v8;
          v8 = v6;
        }

        while (v9);
      }

      v10 = *v3;
      if (*(v6 + 7) < *v3)
      {
LABEL_9:
        if (v4)
        {
          v11 = v6 + 1;
        }

        else
        {
          v11 = result + 1;
        }

        if (!*v11)
        {
LABEL_20:
          operator new();
        }
      }

      else
      {
        if (!v4)
        {
          goto LABEL_20;
        }

        while (1)
        {
          while (1)
          {
            v12 = v4;
            v13 = *(v4 + 28);
            if (v13 <= v10)
            {
              break;
            }

            v4 = *v12;
            if (!*v12)
            {
              goto LABEL_20;
            }
          }

          if (v13 >= v10)
          {
            break;
          }

          v4 = v12[1];
          if (!v4)
          {
            goto LABEL_20;
          }
        }
      }

      if (++v3 == &a2[a3])
      {
        break;
      }

      v5 = *result;
      v4 = result[1];
    }
  }

  return result;
}

_DWORD *UMTSProvisioningSlotInfo::PriVersion::PriVersion(_DWORD *this)
{
  *this = 0;
  return this;
}

{
  *this = 0;
  return this;
}

void UMTSProvisioningSlotInfo::UMTSProvisioningSlotInfo(UMTSProvisioningSlotInfo *this)
{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 80) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 112) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 144) = 0;
  *(this + 156) = 0;
  *(this + 38) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 158) = 0;
}

{
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 48) = 0;
  *(this + 5) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 80) = 0;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 11) = 0;
  *(this + 112) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  *(this + 144) = 0;
  *(this + 156) = 0;
  *(this + 38) = 0;
  *this = 0;
  *(this + 1) = 0;
  *(this + 4) = 0;
  *(this + 158) = 0;
}

void UMTSProvisioningSlotInfo::dumpState(UMTSProvisioningSlotInfo *this, os_log_t *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v19[0] = 0;
  v19[1] = 0;
  v20 = 0;
  memset(&v18, 0, sizeof(v18));
  memset(&__p, 0, sizeof(__p));
  if (*(this + 8) == 1)
  {
    *buf = createActivationStringFromData(this, 8);
    ctu::cf::assign();
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(buf);
  }

  if (*(this + 19) == 1)
  {
    *buf = 0;
    *buf = createActivationStringFromData((this + 9), 0xA);
    ctu::cf::assign();
    ctu::SharedRef<__CFString const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFString const>::~SharedRef(buf);
  }

  if (*(this + 48) == 1)
  {
    ctu::hex(*(this + 3), (*(this + 4) - *(this + 3)));
    *v21 = *buf;
    v22 = *&buf[16];
  }

  if (*(this + 80) == 1)
  {
    ctu::hex(*(this + 7), (*(this + 8) - *(this + 7)));
    *v19 = *buf;
    v20 = *&buf[16];
  }

  if (*(this + 112) == 1)
  {
    std::string::operator=(&v18, (this + 88));
  }

  if (*(this + 144) == 1)
  {
    std::string::operator=(&__p, this + 5);
  }

  v4 = "false";
  if (*(this + 159) == 1)
  {
    if (*(this + 158))
    {
      v4 = "true";
    }

    else
    {
      v4 = "false";
    }
  }

  if (*(this + 161) == 1)
  {
    if (*(this + 160))
    {
      v5 = "true";
    }

    else
    {
      v5 = "false";
    }
  }

  else
  {
    v5 = "unknown";
  }

  v6 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(this + 154);
    v8 = *(this + 155);
    v9 = *(this + 76);
    *buf = 67109632;
    *&buf[4] = v7;
    *&buf[8] = 1024;
    *&buf[10] = v8;
    *&buf[14] = 1024;
    *&buf[16] = v9;
    _os_log_impl(&dword_2373EA000, v6, OS_LOG_TYPE_DEFAULT, "#I fPriVersion = %d.%d.%d", buf, 0x14u);
    v6 = *a2;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v23;
    if (v24 < 0)
    {
      v10 = v23[0];
    }

    v11 = v25;
    if (v26 < 0)
    {
      v11 = v25[0];
    }

    *buf = 136315394;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = v11;
    _os_log_impl(&dword_2373EA000, v6, OS_LOG_TYPE_DEFAULT, "#I fIccid = %s, fImsi = %s", buf, 0x16u);
    v6 = *a2;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v21;
    if (v22 < 0)
    {
      v12 = v21[0];
    }

    v13 = v19;
    if (v20 < 0)
    {
      v13 = v19[0];
    }

    v14 = &v18;
    if ((v18.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v14 = v18.__r_.__value_.__r.__words[0];
    }

    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136315906;
    *&buf[4] = v12;
    *&buf[12] = 2080;
    *&buf[14] = v13;
    *&buf[22] = 2080;
    v28 = v14;
    v29 = 2080;
    v30 = p_p;
    _os_log_impl(&dword_2373EA000, v6, OS_LOG_TYPE_DEFAULT, "#I fSimGid1 = %s, fSimGid2 = %s, fGid1 = %s, fGid2 = %s", buf, 0x2Au);
    v6 = *a2;
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&dword_2373EA000, v6, OS_LOG_TYPE_DEFAULT, "#I fIsEmbedded = %s, fIsBootstrap = %s", buf, 0x16u);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void sub_2374305BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(exception_object);
}

void sub_2374311B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void read_rest_value(BasicSimInfo *a1, const object *a2)
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
    object[0] = &fObj;
    object[1] = "instance";
    xpc::dict::object_proxy::operator xpc::object(object, v75);
    v7 = MEMORY[0x2383CC760](*v75);
    v9 = MEMORY[0x277D86448];
    if (v7 == MEMORY[0x277D864C0])
    {
      LODWORD(v73) = *a1;
      ctu::rest::detail::read_enum_string_value(&v73, v75, v8);
      *a1 = v73;
    }

    else if (v7 == MEMORY[0x277D86448] || v7 == MEMORY[0x277D86498] || v7 == MEMORY[0x277D864C8])
    {
      *a1 = xpc::dyn_cast_or_default(v75, 0);
    }

    xpc_release(*v75);
    object[0] = &fObj;
    object[1] = "phy_slot";
    xpc::dict::object_proxy::operator xpc::object(object, v75);
    v10 = MEMORY[0x2383CC760](*v75);
    if (v10 == MEMORY[0x277D864C0])
    {
      LODWORD(v73) = *(a1 + 1);
      ctu::rest::detail::read_enum_string_value(&v73, v75, v11);
      *(a1 + 1) = v73;
    }

    else if (v10 == v9 || v10 == MEMORY[0x277D86498] || v10 == MEMORY[0x277D864C8])
    {
      *(a1 + 1) = xpc::dyn_cast_or_default(v75, 0);
    }

    xpc_release(*v75);
    object[0] = &fObj;
    object[1] = "state";
    xpc::dict::object_proxy::operator xpc::object(object, v75);
    v12 = MEMORY[0x2383CC760](*v75);
    if (v12 == MEMORY[0x277D864C0])
    {
      LODWORD(v73) = *(a1 + 2);
      ctu::rest::detail::read_enum_string_value(&v73, v75, v13);
      *(a1 + 2) = v73;
    }

    else if (v12 == v9 || v12 == MEMORY[0x277D86498] || v12 == MEMORY[0x277D864C8])
    {
      *(a1 + 2) = xpc::dyn_cast_or_default(v75, 0);
    }

    xpc_release(*v75);
    object[0] = &fObj;
    object[1] = "tray_state";
    xpc::dict::object_proxy::operator xpc::object(object, v75);
    v14 = MEMORY[0x2383CC760](*v75);
    if (v14 == MEMORY[0x277D864C0])
    {
      LODWORD(v73) = *(a1 + 3);
      ctu::rest::detail::read_enum_string_value(&v73, v75, v15);
      *(a1 + 3) = v73;
    }

    else if (v14 == v9 || v14 == MEMORY[0x277D86498] || v14 == MEMORY[0x277D864C8])
    {
      *(a1 + 3) = xpc::dyn_cast_or_default(v75, 0);
    }

    xpc_release(*v75);
    p_fObj = &fObj;
    v72 = "types";
    xpc::dict::object_proxy::operator xpc::object(&p_fObj, v65);
    v16 = v65[0];
    v17 = MEMORY[0x277D86440];
    if (v65[0] && MEMORY[0x2383CC760](v65[0]) == v17)
    {
      xpc_retain(v16);
    }

    else
    {
      v16 = xpc_null_create();
    }

    *(a1 + 3) = *(a1 + 2);
    if (MEMORY[0x2383CC760](v16) == v17)
    {
      *v75 = v16;
      if (v16)
      {
        xpc_retain(v16);
      }

      else
      {
        *v75 = xpc_null_create();
      }

      xpc::array::iterator::iterator(object, v75, 0);
      xpc_release(*v75);
      v73 = v16;
      if (v16)
      {
        xpc_retain(v16);
      }

      else
      {
        v73 = xpc_null_create();
      }

      v56 = v16;
      if (MEMORY[0x2383CC760](v16) == v17)
      {
        count = xpc_array_get_count(v16);
      }

      else
      {
        count = 0;
      }

      xpc::array::iterator::iterator(v75, &v73, count);
      xpc_release(v73);
      v19 = object[1];
      v20 = MEMORY[0x277D86498];
      v21 = MEMORY[0x277D864C8];
      while (v19 != *&v75[2] || object[0] != *v75)
      {
        v73 = object;
        v74 = v19;
        v23 = *(a1 + 3);
        v22 = *(a1 + 4);
        if (v23 >= v22)
        {
          v25 = *(a1 + 2);
          v26 = v23 - v25;
          v27 = (v23 - v25) >> 2;
          v28 = v27 + 1;
          if ((v27 + 1) >> 62)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v29 = v22 - v25;
          if (v29 >> 1 > v28)
          {
            v28 = v29 >> 1;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v30 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v30 = v28;
          }

          if (v30)
          {
            if (!(v30 >> 62))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v31 = v27;
          v32 = (4 * v27);
          v33 = &v32[-v31];
          *v32 = 0;
          v24 = v32 + 1;
          memcpy(v33, v25, v26);
          *(a1 + 2) = v33;
          *(a1 + 3) = v24;
          *(a1 + 4) = 0;
          if (v25)
          {
            operator delete(v25);
          }

          v9 = MEMORY[0x277D86448];
        }

        else
        {
          *v23 = 0;
          v24 = v23 + 4;
        }

        *(a1 + 3) = v24;
        xpc::array::object_proxy::operator xpc::object(&v73, v69);
        v34 = MEMORY[0x2383CC760](*v69);
        if (v34 == MEMORY[0x277D864C0])
        {
          LODWORD(v68) = *(v24 - 1);
          ctu::rest::detail::read_enum_string_value(&v68, v69, v35);
          *(v24 - 1) = v68;
        }

        else if (v34 == v9 || v34 == v20 || v34 == v21)
        {
          *(v24 - 1) = xpc::dyn_cast_or_default(v69, 0);
        }

        xpc_release(*v69);
        v19 = ++object[1];
      }

      xpc_release(*v75);
      xpc_release(object[0]);
      v17 = MEMORY[0x277D86440];
      v16 = v56;
    }

    xpc_release(v16);
    xpc_release(v65[0]);
    v65[0] = &fObj;
    v65[1] = "np";
    xpc::dict::object_proxy::operator xpc::object(v65, &v66);
    v36 = v66;
    if (v66 && MEMORY[0x2383CC760](v66) == v17)
    {
      xpc_retain(v36);
    }

    else
    {
      v36 = xpc_null_create();
    }

    std::vector<subscriber::NpAppInfo>::clear[abi:ne200100](a1 + 5);
    v37 = MEMORY[0x2383CC760](v36);
    v38 = MEMORY[0x277D864B0];
    if (v37 == v17)
    {
      object[0] = v36;
      if (v36)
      {
        xpc_retain(v36);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      xpc::array::iterator::iterator(&v73, object, 0);
      xpc_release(object[0]);
      object[0] = v36;
      if (v36)
      {
        xpc_retain(v36);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      if (MEMORY[0x2383CC760](v36) == v17)
      {
        v39 = xpc_array_get_count(v36);
      }

      else
      {
        v39 = 0;
      }

      xpc::array::iterator::iterator(&p_fObj, object, v39);
      xpc_release(object[0]);
      for (i = v74; i != v72 || v73 != p_fObj; i = ++v74)
      {
        *v69 = &v73;
        v70 = i;
        v42 = *(a1 + 6);
        v41 = *(a1 + 7);
        if (v42 >= v41)
        {
          v44 = *(a1 + 5);
          v45 = 0xCCCCCCCCCCCCCCCDLL * ((v42 - v44) >> 3) + 1;
          if (v45 > 0x666666666666666)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v46 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v44) >> 3);
          if (2 * v46 > v45)
          {
            v45 = 2 * v46;
          }

          if (v46 >= 0x333333333333333)
          {
            v47 = 0x666666666666666;
          }

          else
          {
            v47 = v45;
          }

          if (v47)
          {
            if (v47 <= 0x666666666666666)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v48 = 8 * ((v42 - v44) >> 3);
          *(v48 + 32) = 0;
          *v48 = 0u;
          *(v48 + 16) = 0u;
          v49 = v48 - (v42 - v44);
          if (v44 != v42)
          {
            v50 = v44;
            v51 = v48 - (v42 - v44);
            do
            {
              *v51 = *v50;
              *(v51 + 16) = 0;
              *(v51 + 24) = 0;
              *(v51 + 8) = *(v50 + 1);
              *(v51 + 24) = v50[3];
              v50[1] = 0;
              v50[2] = 0;
              v50[3] = 0;
              *(v51 + 32) = *(v50 + 8);
              v50 += 5;
              v51 += 40;
            }

            while (v50 != v42);
            do
            {
              v52 = v44[1];
              if (v52)
              {
                v44[2] = v52;
                operator delete(v52);
              }

              v44 += 5;
            }

            while (v44 != v42);
            v44 = *(a1 + 5);
          }

          v43 = v48 + 40;
          *(a1 + 5) = v49;
          *(a1 + 6) = v48 + 40;
          *(a1 + 7) = 0;
          if (v44)
          {
            operator delete(v44);
          }

          v38 = MEMORY[0x277D864B0];
        }

        else
        {
          *(v42 + 32) = 0;
          v43 = v42 + 40;
          *v42 = 0u;
          *(v42 + 16) = 0u;
        }

        *(a1 + 6) = v43;
        xpc::array::object_proxy::operator xpc::object(v69, &v68);
        if (MEMORY[0x2383CC760](v68) != v38)
        {
          *(v43 - 40) = 0;
          object[0] = 0;
          object[1] = 0;
          *&v58 = 0;
          xpc::dyn_cast_or_default();
          if (object[0])
          {
            object[1] = object[0];
            operator delete(object[0]);
          }

          v53 = *(v43 - 32);
          if (v53)
          {
            *(v43 - 24) = v53;
            operator delete(v53);
            *(v43 - 32) = 0;
            *(v43 - 24) = 0;
            *(v43 - 16) = 0;
          }

          *(v43 - 32) = *v75;
          *(v43 - 16) = v76;
        }

        xpc_release(v68);
      }

      xpc_release(p_fObj);
      xpc_release(v73);
      v9 = MEMORY[0x277D86448];
    }

    xpc_release(v36);
    xpc_release(v66);
    object[0] = &fObj;
    object[1] = "vinyl_capability";
    xpc::dict::object_proxy::operator xpc::object(object, v75);
    v54 = MEMORY[0x2383CC760](*v75);
    if (v54 == MEMORY[0x277D864C0])
    {
      LODWORD(v73) = *(a1 + 16);
      ctu::rest::detail::read_enum_string_value(&v73, v75, v55);
      *(a1 + 16) = v73;
    }

    else if (v54 == v9 || v54 == MEMORY[0x277D86498] || v54 == MEMORY[0x277D864C8])
    {
      *(a1 + 16) = xpc::dyn_cast_or_default(v75, 0);
    }

    xpc_release(*v75);
    object[0] = &fObj;
    object[1] = "vinyl_capabilities";
    xpc::dict::object_proxy::operator xpc::object(object, v75);
    if (MEMORY[0x2383CC760](*v75) == v38)
    {
      if (*(a1 + 69))
      {
        *(a1 + 69) = 0;
      }
    }

    else
    {
      if ((*(a1 + 69) & 1) == 0)
      {
        *(a1 + 34) = 256;
      }

      *(a1 + 68) = xpc::dyn_cast_or_default(v75, 0);
    }

    xpc_release(*v75);
    v73 = &fObj;
    v74 = "iccid";
    xpc::dict::object_proxy::operator xpc::object(&v73, &p_fObj);
    object[0] = 0;
    object[1] = 0;
    *&v58 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v58) < 0)
    {
      operator delete(object[0]);
    }

    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 9));
    }

    *(a1 + 72) = *v75;
    *(a1 + 11) = v76;
    xpc_release(p_fObj);
    v73 = &fObj;
    v74 = "imsi";
    xpc::dict::object_proxy::operator xpc::object(&v73, &p_fObj);
    object[0] = 0;
    object[1] = 0;
    *&v58 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v58) < 0)
    {
      operator delete(object[0]);
    }

    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 12));
    }

    *(a1 + 6) = *v75;
    *(a1 + 14) = v76;
    xpc_release(p_fObj);
    v73 = &fObj;
    v74 = "gid1";
    xpc::dict::object_proxy::operator xpc::object(&v73, &p_fObj);
    object[0] = 0;
    object[1] = 0;
    *&v58 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v58) < 0)
    {
      operator delete(object[0]);
    }

    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 15));
    }

    *(a1 + 120) = *v75;
    *(a1 + 17) = v76;
    xpc_release(p_fObj);
    v73 = &fObj;
    v74 = "gid2";
    xpc::dict::object_proxy::operator xpc::object(&v73, &p_fObj);
    object[0] = 0;
    object[1] = 0;
    *&v58 = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v58) < 0)
    {
      operator delete(object[0]);
    }

    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 18));
    }

    *(a1 + 9) = *v75;
    *(a1 + 20) = v76;
    xpc_release(p_fObj);
  }

  else
  {
    v59 = 0u;
    memset(v60, 0, 22);
    *object = 0u;
    v58 = 0u;
    v61 = 0u;
    memset(v62, 0, sizeof(v62));
    v63 = 0u;
    memset(v64, 0, sizeof(v64));
    *a1 = 0;
    *(a1 + 1) = 0;
    v5 = (a1 + 16);
    v4 = *(a1 + 2);
    if (v4)
    {
      *(a1 + 3) = v4;
      operator delete(v4);
      *v5 = 0;
      *(a1 + 3) = 0;
      *(a1 + 4) = 0;
    }

    *v5 = 0;
    *(a1 + 3) = 0;
    *(a1 + 4) = 0;
    *&v59 = 0;
    v58 = 0uLL;
    v6 = (a1 + 40);
    if (*(a1 + 5))
    {
      std::vector<subscriber::NpAppInfo>::clear[abi:ne200100](a1 + 5);
      operator delete(*v6);
      *v6 = 0;
      *(a1 + 6) = 0;
      *(a1 + 7) = 0;
    }

    *v6 = 0;
    *(a1 + 6) = 0;
    *(a1 + 7) = 0;
    *(a1 + 16) = v60[4];
    *(a1 + 34) = v60[5];
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 9));
    }

    *(a1 + 9) = 0;
    *(a1 + 10) = 0;
    *(a1 + 11) = 0;
    if (*(a1 + 119) < 0)
    {
      operator delete(*(a1 + 12));
    }

    *(a1 + 6) = *(v62 + 8);
    *(a1 + 14) = *(&v62[1] + 1);
    if (*(a1 + 143) < 0)
    {
      operator delete(*(a1 + 15));
    }

    *(a1 + 120) = v63;
    *(a1 + 17) = v64[0];
    if (*(a1 + 167) < 0)
    {
      operator delete(*(a1 + 18));
    }

    *(a1 + 9) = *&v64[1];
    *(a1 + 20) = v64[3];
  }

  xpc_release(fObj);
}

void sub_237432744(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, xpc_object_t a35, uint64_t a36, xpc_object_t a37)
{
  xpc_release(object);
  xpc_release(*(v37 - 144));
  xpc_release(a10);
  xpc_release(a37);
  xpc_release(*(v37 - 192));
  _Unwind_Resume(a1);
}

void rest::write_rest_value(const void **a1@<X0>, xpc_object_t *a2@<X8>)
{
  v24 = 0;
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
  v8 = *a1;
  if ((v8 - 1) > 2)
  {
    v9 = "kUnknown";
  }

  else
  {
    v9 = off_278A2FC30[v8 - 1];
  }

  ctu::rest::detail::write_enum_string_value(&v22, v8, v9, v7);
  v20 = &v24;
  v21 = "slot";
  xpc::dict::object_proxy::operator=(&v20, &v22, &v23);
  xpc_release(v23);
  v23 = 0;
  xpc_release(v22);
  v22 = 0;
  v10 = *(a1 + 1);
  v11 = subscriber::asString(*(a1 + 1));
  ctu::rest::detail::write_enum_string_value(v10, v11, v12);
  v20 = &v24;
  v21 = "file";
  xpc::dict::object_proxy::operator=(&v20, &v18, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v18);
  v18 = 0;
  v16 = xpc_data_create(a1[1], a1[2] - a1[1]);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v20 = &v24;
  v21 = "data";
  xpc::dict::object_proxy::operator=(&v20, &v16, &v17);
  xpc_release(v17);
  v17 = 0;
  xpc_release(v16);
  v16 = 0;
  rest::write_rest_value((a1 + 4), &v14);
  v20 = &v24;
  v21 = "attributes";
  xpc::dict::object_proxy::operator=(&v20, &v14, &v15);
  xpc_release(v15);
  v15 = 0;
  xpc_release(v14);
  v14 = 0;
  v13 = v24;
  *a2 = v24;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v24);
}

void sub_237433130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_2374332F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void std::vector<subscriber::NpAppInfo>::clear[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 40)
  {
    v4 = *(i - 32);
    if (v4)
    {
      *(i - 24) = v4;
      operator delete(v4);
    }
  }

  a1[1] = v2;
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(char *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*a1);
    std::__tree<std::__value_type<subscriber::SimSlot,std::string>,std::__map_value_compare<subscriber::SimSlot,std::__value_type<subscriber::SimSlot,std::string>,std::less<subscriber::SimSlot>,true>,std::allocator<std::__value_type<subscriber::SimSlot,std::string>>>::destroy(*(a1 + 1));
    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    operator delete(a1);
  }
}

void _GLOBAL__sub_I_SubscriberRestResource_cpp()
{
  v0 = *MEMORY[0x277D85DE8];
  qword_280CE8D00 = 0;
  qword_280CE8CF8 = 0;
  rest::kDefaultPsiSmscValues = &qword_280CE8CF8;
  operator new();
}

_BYTE *convertOtaspStatusToString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0xB)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_278A2FCD0[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

_BYTE *otaspStatusAsExternalString@<X0>(unsigned int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 > 0xB)
  {
    v2 = "Unknown";
  }

  else
  {
    v2 = off_278A2FD30[a1];
  }

  return std::string::basic_string[abi:ne200100]<0>(a2, v2);
}

const char *printers::asString(printers *this, const BOOL *a2)
{
  if (*this)
  {
    return "true";
  }

  else
  {
    return "false";
  }
}

const char *printers::asString(_BYTE *a1)
{
  if (*a1)
  {
    v1 = "true";
  }

  else
  {
    v1 = "false";
  }

  if (a1[1])
  {
    return v1;
  }

  else
  {
    return "unknown";
  }
}

void printers::asString(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v3 != v2)
  {
    v5 = *v3;
    memset(__s, 0, sizeof(__s));
    v13 = 0;
    ctu::cf::assign();
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 15) = 0;
    *(a2 + 23) = HIBYTE(v13);
    for (i = v3 + 1; i != v2; ++i)
    {
      HIBYTE(v13) = 1;
      strcpy(__s, ",");
      std::string::append(a2, __s, 1uLL);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(*__s);
      }

      v7 = *i;
      memset(__s, 0, sizeof(__s));
      v13 = 0;
      ctu::cf::assign();
      v11 = v13;
      *__p = *__s;
      if (v13 >= 0)
      {
        v8 = __p;
      }

      else
      {
        v8 = *__s;
      }

      if (v13 >= 0)
      {
        v9 = HIBYTE(v13);
      }

      else
      {
        v9 = *&__s[8];
      }

      std::string::append(a2, v8, v9);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_237433D94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellMonitorInterface::getAreaCode(CellMonitorInterface *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  v8[2] = v3;
  v9 = 0;
  v8[0] = &unk_284A68788;
  v8[1] = &v7;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v9 = v8;
  (*(*this + 56))(this, 1, v8);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v8);
  if (v3)
  {
    dispatch_release(v3);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
    dispatch_release(v3);
  }

  else
  {
    dispatch_semaphore_wait(0, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_237433F20(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t CellMonitorInterface::getAreaCode(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A68818;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 56))(a1, 1, v6);
  result = std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237434004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t CellMonitorInterface::getCellId(CellMonitorInterface *this)
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = 0;
  v2 = dispatch_semaphore_create(0);
  v3 = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }

  v8[2] = v3;
  v9 = 0;
  v8[0] = &unk_284A68898;
  v8[1] = &v7;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v9 = v8;
  (*(*this + 64))(this, 1, v8);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v8);
  if (v3)
  {
    dispatch_release(v3);
    dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
    dispatch_release(v3);
  }

  else
  {
    dispatch_semaphore_wait(0, 0xFFFFFFFFFFFFFFFFLL);
    v4 = v7;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

void sub_23743413C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  if (v2)
  {
    dispatch_release(v2);
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t CellMonitorInterface::getCellId(uint64_t a1, uint64_t *a2)
{
  v6[4] = *MEMORY[0x277D85DE8];
  v3 = *a2;
  v2 = a2[1];
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v6[0] = &unk_284A68918;
  v6[1] = v3;
  v6[2] = v2;
  v6[3] = v6;
  (*(*a1 + 64))(a1, 1, v6);
  result = std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](v6);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void sub_237434220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__function::__func<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFArray const>)>::~__func(void *a1)
{
  *a1 = &unk_284A686F8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFArray const>)>::~__func(void *a1)
{
  *a1 = &unk_284A686F8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__function::__func<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFArray const>)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t std::__function::__func<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCurrentCellInfo(xpc::auto_reply)::$_0>,void ()(ctu::cf::CFSharedRef<__CFArray const>)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<CellMonitorInterface::getAreaCode(void)::$_0,std::allocator<CellMonitorInterface::getAreaCode(void)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68788;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<CellMonitorInterface::getAreaCode(void)::$_0,std::allocator<CellMonitorInterface::getAreaCode(void)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68788;
  v1 = a1[2];
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__function::__func<CellMonitorInterface::getAreaCode(void)::$_0,std::allocator<CellMonitorInterface::getAreaCode(void)::$_0>,void ()(unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284A68788;
  a2[1] = v2;
  v3 = *(a1 + 16);
  a2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<CellMonitorInterface::getAreaCode(void)::$_0,std::allocator<CellMonitorInterface::getAreaCode(void)::$_0>,void ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<CellMonitorInterface::getAreaCode(void)::$_0,std::allocator<CellMonitorInterface::getAreaCode(void)::$_0>,void ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<CellMonitorInterface::getAreaCode(void)::$_0,std::allocator<CellMonitorInterface::getAreaCode(void)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *v3 = *a2;
  return dispatch_semaphore_signal(v2);
}

uint64_t std::__function::__func<CellMonitorInterface::getAreaCode(void)::$_0,std::allocator<CellMonitorInterface::getAreaCode(void)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *std::__function::__func<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68818;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68818;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A68818;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1, int *a2)
{
  v4 = xpc_int64_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kRegistrationLAC";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t std::__function::__func<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getAreaCode(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<CellMonitorInterface::getCellId(void)::$_0,std::allocator<CellMonitorInterface::getCellId(void)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68898;
  v2 = a1[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void std::__function::__func<CellMonitorInterface::getCellId(void)::$_0,std::allocator<CellMonitorInterface::getCellId(void)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68898;
  v1 = a1[2];
  if (v1)
  {
    dispatch_release(v1);
  }

  JUMPOUT(0x2383CBEF0);
}

void std::__function::__func<CellMonitorInterface::getCellId(void)::$_0,std::allocator<CellMonitorInterface::getCellId(void)::$_0>,void ()(unsigned long long)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_284A68898;
  a2[1] = v2;
  v3 = *(a1 + 16);
  a2[2] = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }
}

void std::__function::__func<CellMonitorInterface::getCellId(void)::$_0,std::allocator<CellMonitorInterface::getCellId(void)::$_0>,void ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void std::__function::__func<CellMonitorInterface::getCellId(void)::$_0,std::allocator<CellMonitorInterface::getCellId(void)::$_0>,void ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t std::__function::__func<CellMonitorInterface::getCellId(void)::$_0,std::allocator<CellMonitorInterface::getCellId(void)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *v3 = *a2;
  return dispatch_semaphore_signal(v2);
}

uint64_t std::__function::__func<CellMonitorInterface::getCellId(void)::$_0,std::allocator<CellMonitorInterface::getCellId(void)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__func<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68918;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void std::__function::__func<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::~__func(void *a1)
{
  *a1 = &unk_284A68918;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x2383CBEF0);
}

uint64_t std::__function::__func<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_284A68918;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void std::__function::__func<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

void std::__function::__func<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::operator()(uint64_t a1, int *a2)
{
  v4 = xpc_int64_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kRegistrationCellId";
  xpc::dict::object_proxy::operator=(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t std::__function::__func<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0,std::allocator<CellMonitorInterface::getCellId(xpc::auto_reply)::$_0>,void ()(unsigned long long)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_2374350E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t rest::getDataUsageParameters::getDataUsageParameters(uint64_t a1, uint64_t a2, int a3, int a4, char a5, CFTypeRef *a6, CFTypeRef *a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef((a1 + 24), *a6);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef((a1 + 32), *a7);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 12) = a4;
  *(a1 + 16) = a5;
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef((a1 + 24), *a6);
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef((a1 + 32), *a7);
  return a1;
}

void sub_237435774(_Unwind_Exception *a1)
{
  xpc_release(v1);
  xpc_release(*(v2 - 40));
  _Unwind_Resume(a1);
}

void sub_237435B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object, xpc_object_t a16, xpc_object_t a17)
{
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a16);
  xpc_release(object);
  xpc_release(v18);
  xpc_release(v17);
  xpc_release(*(v19 - 48));
  _Unwind_Resume(a1);
}

uint64_t rest::getDefaultDataUsageParameters::getDefaultDataUsageParameters(uint64_t a1, uint64_t a2, char a3, CFTypeRef *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef((a1 + 16), *a4);
  return a1;
}

{
  *a1 = a2;
  *(a1 + 8) = a3;
  ctu::SharedRef<__CFArray const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFArray const>::SharedRef((a1 + 16), *a4);
  return a1;
}

void sub_23743619C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, const void *a13, xpc_object_t a14, xpc_object_t a15)
{
  ctu::SharedRef<void const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,void const>::~SharedRef(&a13);
  xpc_release(object);
  xpc_release(v15);
  xpc_release(a15);
  _Unwind_Resume(a1);
}

const void **rest::getDataUsageResponse::getDataUsageResponse(const void **a1, const void **a2, int a3)
{
  result = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(a1, a2);
  *(result + 2) = a3;
  return result;
}

{
  result = ctu::SharedRef<__CFData const,ctu::cf::cfretain_functor,ctu::cf::cfrelease_functor,__CFData const>::SharedRef(a1, a2);
  *(result + 2) = a3;
  return result;
}

void sub_23743664C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, xpc_object_t object, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(*(v15 - 40));
  xpc_release(a15);
  _Unwind_Resume(a1);
}

uint64_t rest::logDataUsageParameters::logDataUsageParameters(uint64_t this, char a2, int a3)
{
  *this = a2;
  *(this + 4) = a3;
  return this;
}

{
  *this = a2;
  *(this + 4) = a3;
  return this;
}

void sub_237436984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t rest::LASDServerUpdateParameters::LASDServerUpdateParameters(uint64_t a1, int a2, __int128 *a3, uint64_t a4)
{
  *a1 = a2;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v6;
  }

  std::unordered_map<LASDDatabaseType,std::string>::unordered_map(a1 + 32, a4);
  return a1;
}

void sub_237436A44(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void ctu::rest::write_rest_value<LASDDatabaseType,std::string>(xpc_object_t *a1, uint64_t a2)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v4) == MEMORY[0x277D86440])
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
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = MEMORY[0x277D86468];
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v19 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v19 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_16;
        }
      }

      if (MEMORY[0x2383CC760](v9) != v7)
      {
        v10 = xpc_null_create();
LABEL_16:
        v19 = v10;
        goto LABEL_17;
      }

      xpc_retain(v9);
LABEL_17:
      xpc_release(v9);
      v17 = xpc_int64_create(*(v6 + 4));
      if (!v17)
      {
        v17 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "first";
      xpc::dict::object_proxy::operator=(&v15, &v17, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v17);
      v17 = 0;
      if (*(v6 + 47) >= 0)
      {
        v11 = (v6 + 3);
      }

      else
      {
        v11 = v6[3];
      }

      v13 = xpc_string_create(v11);
      if (!v13)
      {
        v13 = xpc_null_create();
      }

      v15 = &v19;
      v16 = "second";
      xpc::dict::object_proxy::operator=(&v15, &v13, &v14);
      xpc_release(v14);
      v14 = 0;
      xpc_release(v13);
      v13 = 0;
      v12 = v19;
      if (v19)
      {
        xpc_retain(v19);
      }

      else
      {
        v12 = xpc_null_create();
      }

      xpc_release(v19);
      xpc_array_append_value(v5, v12);
      xpc_release(v12);
      v6 = *v6;
    }

    while (v6);
  }

  *a1 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_237436EF8(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  _Unwind_Resume(a1);
}

void sub_237437138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  xpc_release(object);
  xpc_release(*(v26 - 40));
  _Unwind_Resume(a1);
}

void ctu::rest::read_rest_value<LASDDatabaseType,std::string>(void *a1, void *a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277D86440];
  if (a2 && (v4 = a2, MEMORY[0x2383CC760](a2) == v3))
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
  }

  std::__hash_table<std::__hash_value_type<LASDDatabaseType,std::string>,std::__unordered_map_hasher<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::hash<LASDDatabaseType>,std::equal_to<LASDDatabaseType>,true>,std::__unordered_map_equal<LASDDatabaseType,std::__hash_value_type<LASDDatabaseType,std::string>,std::equal_to<LASDDatabaseType>,std::hash<LASDDatabaseType>,true>,std::allocator<std::__hash_value_type<LASDDatabaseType,std::string>>>::clear(a1);
  if (MEMORY[0x2383CC760](v4) == v3)
  {
    object = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v24, &object, 0);
    xpc_release(object);
    object = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      object = xpc_null_create();
    }

    v21 = v4;
    if (MEMORY[0x2383CC760](v4) == v3)
    {
      count = xpc_array_get_count(v4);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(v23, &object, count);
    xpc_release(object);
    v6 = v25;
    v7 = MEMORY[0x277D86468];
    while (1)
    {
      if (v6 == v23[1] && v24 == v23[0])
      {
        xpc_release(v23[0]);
        xpc_release(v24);
        v4 = v21;
        break;
      }

      v22 = 0;
      object = &v24;
      v33 = v6;
      xpc::array::object_proxy::operator xpc::dict(&object, &v22);
      if (MEMORY[0x2383CC760](v22) != v7)
      {
        goto LABEL_50;
      }

      memset(v35, 0, 15);
      v8 = v22;
      if (v22)
      {
        xpc_retain(v22);
        v28 = v8;
      }

      else
      {
        v8 = xpc_null_create();
        v28 = v8;
        if (!v8)
        {
          v9 = xpc_null_create();
          v8 = 0;
          goto LABEL_26;
        }
      }

      if (MEMORY[0x2383CC760](v8) == v7)
      {
        xpc_retain(v8);
        v9 = v8;
        goto LABEL_27;
      }

      v9 = xpc_null_create();
LABEL_26:
      v28 = v9;
LABEL_27:
      if (MEMORY[0x2383CC760](v9) == v7)
      {
        object = &v28;
        v33 = "first";
        xpc::dict::object_proxy::operator xpc::object(&object, &v29);
        v13 = xpc::dyn_cast_or_default(&v29, 0);
        xpc_release(v29);
        v26[0] = &v28;
        v26[1] = "second";
        xpc::dict::object_proxy::operator xpc::object(v26, &v27);
        object = 0;
        v33 = 0;
        v34 = 0;
        xpc::dyn_cast_or_default();
        if (SHIBYTE(v34) < 0)
        {
          operator delete(object);
        }

        v11 = v29;
        v35[0] = *v30;
        *(v35 + 7) = *&v30[7];
        v12 = v31;
        xpc_release(v27);
        v9 = v28;
        v10 = v13;
      }

      else
      {
        v10 = 0;
        v11 = 0;
        v12 = 0;
      }

      xpc_release(v9);
      xpc_release(v8);
      v14 = a1[1];
      if (!v14)
      {
        goto LABEL_49;
      }

      v15 = vcnt_s8(v14);
      v15.i16[0] = vaddlv_u8(v15);
      if (v15.u32[0] > 1uLL)
      {
        v16 = v10;
        if (v14 <= v10)
        {
          v16 = v10 % v14;
        }
      }

      else
      {
        v16 = (v14 - 1) & v10;
      }

      v17 = *(*a1 + 8 * v16);
      if (!v17 || (v18 = *v17) == 0)
      {
LABEL_49:
        operator new();
      }

      while (1)
      {
        v19 = v18[1];
        if (v19 == v10)
        {
          break;
        }

        if (v15.u32[0] > 1uLL)
        {
          if (v19 >= v14)
          {
            v19 %= v14;
          }
        }

        else
        {
          v19 &= v14 - 1;
        }

        if (v19 != v16)
        {
          goto LABEL_49;
        }

LABEL_48:
        v18 = *v18;
        if (!v18)
        {
          goto LABEL_49;
        }
      }

      if (*(v18 + 4) != v10)
      {
        goto LABEL_48;
      }

      if (v12 < 0)
      {
        operator delete(v11);
      }

LABEL_50:
      xpc_release(v22);
      v6 = ++v25;
    }
  }

  xpc_release(v4);
  v20 = *MEMORY[0x277D85DE8];
}

void sub_2374376F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20, xpc_object_t a21, uint64_t a22, uint64_t a23, xpc_object_t object, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  __clang_call_terminate(exception_object);
}

std::string *rest::LASDLocalUpdateParameters::LASDLocalUpdateParameters(std::string *a1, void *a2, __int128 *a3, uint64_t a4)
{
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  a1->__r_.__value_.__r.__words[0] = &a1->__r_.__value_.__l.__size_;
  v5 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      size = a1->__r_.__value_.__l.__size_;
      p_size = &a1->__r_.__value_.__l.__size_;
      if (a1->__r_.__value_.__l.__data_ == &a1->__r_.__value_.__r.__words[1])
      {
        goto LABEL_8;
      }

      v8 = a1->__r_.__value_.__l.__size_;
      v9 = &a1->__r_.__value_.__l.__size_;
      if (size)
      {
        do
        {
          p_size = v8;
          v8 = *(v8 + 8);
        }

        while (v8);
      }

      else
      {
        do
        {
          p_size = v9[2];
          v10 = *p_size == v9;
          v9 = p_size;
        }

        while (v10);
      }

      v11 = *(v5 + 8);
      if (*(p_size + 8) < v11)
      {
LABEL_8:
        if (size)
        {
          v12 = p_size + 1;
        }

        else
        {
          v12 = &a1->__r_.__value_.__l.__size_;
        }

        if (!*v12)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!size)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v13 = size;
            v14 = *(size + 32);
            if (v14 <= v11)
            {
              break;
            }

            size = *v13;
            if (!*v13)
            {
              goto LABEL_19;
            }
          }

          if (v14 >= v11)
          {
            break;
          }

          size = v13[1];
          if (!size)
          {
            goto LABEL_19;
          }
        }
      }

      v15 = v5[1];
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
          v16 = v5[2];
          v10 = *v16 == v5;
          v5 = v16;
        }

        while (!v10);
      }

      v5 = v16;
    }

    while (v16 != a2 + 1);
  }

  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  }

  else
  {
    v17 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v17;
  }

  std::unordered_map<LASDDatabaseType,std::string>::unordered_map(&a1[2], a4);
  return a1;
}

void sub_2374384F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t __p, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t a21, uint64_t a22, uint64_t a23, xpc_object_t object, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  xpc_release(object);
  xpc_release(a21);
  xpc_release(v29);
  xpc_release(*(v30 - 128));
  xpc_release(*(v30 - 120));
  _Unwind_Resume(a1);
}

double *rest::LocationCoordinate::LocationCoordinate(double *this, double a2, double a3)
{
  *this = a2;
  this[1] = a3;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  return this;
}

void sub_237438944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_237438ED4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

double *rest::RegionDescription::RegionDescription(double *this, double a2, double a3, double a4)
{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

{
  *this = a2;
  this[1] = a3;
  this[2] = a4;
  return this;
}

void sub_2374391C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void rest::write_rest_value(rest *a1@<X0>, xpc_object_t *a2@<X8>)
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

  if (MEMORY[0x2383CC760](v5) != MEMORY[0x277D86468])
  {
    v6 = xpc_null_create();
LABEL_8:
    v18 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
  rest::write_rest_value(a1, &v16);
  value = &v18;
  v15 = "location";
  xpc::dict::object_proxy::operator=(&value, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
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
  v10 = *(a1 + 2);
  v9 = *(a1 + 3);
  while (v10 != v9)
  {
    rest::write_rest_value(v10, &value);
    xpc_array_append_value(v8, value);
    xpc_release(value);
    v10 = (v10 + 24);
  }

  v12 = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    v12 = xpc_null_create();
  }

  value = &v18;
  v15 = "regions";
  xpc::dict::object_proxy::operator=(&value, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v18;
  *a2 = v18;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v8);
  xpc_release(v18);
}

void sub_237439448(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v12);
  xpc_release(*(v13 - 40));
  _Unwind_Resume(a1);
}

void xpc::dict::object_proxy::operator xpc::array(void *a1, xpc_object_t xdict, char *key)
{
  value = xpc_dictionary_get_value(xdict, key);
  if (value)
  {
    v5 = value;
    xpc_retain(value);
    *a1 = v5;
  }

  else
  {
    v5 = xpc_null_create();
    *a1 = v5;
    if (!v5)
    {
      v6 = xpc_null_create();
      v5 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v5) != MEMORY[0x277D86440])
  {
    v6 = xpc_null_create();
LABEL_8:
    *a1 = v6;
    goto LABEL_9;
  }

  xpc_retain(v5);
LABEL_9:
  xpc_release(v5);
}

uint64_t rest::RegulatoryRegionDescription::RegulatoryRegionDescription(uint64_t this, double a2, double a3, double a4, int a5)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 24) = a5;
  return this;
}

{
  *this = a2;
  *(this + 8) = a3;
  *(this + 16) = a4;
  *(this + 24) = a5;
  return this;
}

void sub_237439B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

std::string *rest::HttpRequestParams::HttpRequestParams(std::string *this, __int128 *a2, std::string::value_type a3, std::string::value_type a4)
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

  this[1].__r_.__value_.__s.__data_[0] = a3;
  this[1].__r_.__value_.__s.__data_[1] = a4;
  this[1].__r_.__value_.__l.__size_ = 0;
  return this;
}

void sub_23743A1C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, xpc_object_t a19, uint64_t a20, xpc_object_t a21)
{
  if (*(v21 - 33) < 0)
  {
    operator delete(*(v21 - 56));
  }

  xpc_release(*(v21 - 64));
  _Unwind_Resume(a1);
}

void sub_23743A6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23743AA90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23743ADC4(_Unwind_Exception *a1)
{
  xpc_release(v1);
  xpc_release(v2);
  xpc_release(*(v3 - 56));
  _Unwind_Resume(a1);
}

void sub_23743B288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, xpc_object_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19)
{
  xpc_release(object);
  xpc_release(a19);
  xpc_release(a9);
  xpc_release(a12);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void rest::read_rest_value(std::vector<std::string> *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v8 = v3;
  v4 = MEMORY[0x277D86468];
  if (v3 && MEMORY[0x2383CC760](v3) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v8 = v3;
  }

  if (MEMORY[0x2383CC760](v3) == v4)
  {
    v5 = &v8;
    v6 = "recordIDs";
    xpc::dict::object_proxy::operator xpc::object(&v5, &object);
    ctu::rest::read_rest_value<std::string>(a1, &object);
    xpc_release(object);
    v3 = v8;
  }

  else
  {
    std::vector<std::string>::__vdeallocate(a1);
    a1->__begin_ = 0;
    a1->__end_ = 0;
    a1->__end_cap_.__value_ = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    object = &v5;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&object);
  }

  xpc_release(v3);
}

void sub_23743B5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_23743B848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void rest::CellularPlanBlacklistParams::serializeAdditionalProperties(rest::CellularPlanBlacklistParams *this@<X0>, void *a2@<X8>)
{
  if (*(this + 192) == 1)
  {
    codec::toJSONString<rest::CellularPlanBlacklistAdditionalProperties>(this + 36);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }
}

void rest::CellularPlanBlacklistParams::deserializeAdditionalProperties(uint64_t a1, uint64_t a2)
{
  codec::fromJSONString<rest::CellularPlanBlacklistAdditionalProperties>(a2, v3);
  std::__optional_storage_base<rest::CellularPlanBlacklistAdditionalProperties,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rest::CellularPlanBlacklistAdditionalProperties,false>>(a1 + 144, v3);
  if (v6 == 1 && v5 < 0)
  {
    operator delete(__p);
  }
}

void ctu::rest::write_rest_value<rest::CellularPlanBlacklistParams>(xpc_object_t *a1, rest **a2)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v4) == MEMORY[0x277D86440])
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
  v6 = *a2;
  v7 = a2[1];
  while (v6 != v7)
  {
    rest::write_rest_value(v6, &value);
    v8 = value;
    xpc_array_append_value(v5, value);
    xpc_release(v8);
    v6 = (v6 + 200);
  }

  *a1 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a1 = xpc_null_create();
  }

  xpc_release(v5);
}

void rest::read_rest_value(void ***a1, void *a2)
{
  v4 = a1[1];
  v5 = *a1;
  while (v4 != v5)
  {
    rest::CellularPlanBlacklistParams::~CellularPlanBlacklistParams(v4 - 25);
  }

  a1[1] = v5;
  v6 = *a2;
  v7 = MEMORY[0x277D86440];
  if (*a2 && MEMORY[0x2383CC760](*a2) == v7)
  {
    xpc_retain(v6);
  }

  else
  {
    v6 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760](v6) == v7)
  {
    v10 = *a2;
    if (v10 && MEMORY[0x2383CC760](v10) == v7)
    {
      xpc_retain(v10);
    }

    else
    {
      v10 = xpc_null_create();
    }

    v12 = *a1;
      ;
    }

    a1[1] = v12;
    if (MEMORY[0x2383CC760](v10) == v7)
    {
      object[0] = v10;
      if (v10)
      {
        xpc_retain(v10);
      }

      else
      {
        object[0] = xpc_null_create();
      }

      xpc::array::iterator::iterator(&v40, object, 0);
      xpc_release(object[0]);
      v38[0] = v10;
      if (v10)
      {
        xpc_retain(v10);
      }

      else
      {
        v38[0] = xpc_null_create();
      }

      v36 = v10;
      if (MEMORY[0x2383CC760](v10) == v7)
      {
        count = xpc_array_get_count(v10);
      }

      else
      {
        count = 0;
      }

      xpc::array::iterator::iterator(object, v38, count);
      xpc_release(v38[0]);
      for (j = v41; j != object[1] || v40 != object[0]; j = ++v41)
      {
        v38[0] = &v40;
        v38[1] = j;
        v16 = a1[1];
        v15 = a1[2];
        if (v16 >= v15)
        {
          v18 = *a1;
          v19 = v16 - *a1;
          v20 = 0x8F5C28F5C28F5C29 * (v19 >> 3) + 1;
          if (v20 > 0x147AE147AE147AELL)
          {
            std::vector<DataConnectionType>::__throw_length_error[abi:ne200100]();
          }

          v21 = 0x8F5C28F5C28F5C29 * (v15 - v18);
          if (2 * v21 > v20)
          {
            v20 = 2 * v21;
          }

          if (v21 >= 0xA3D70A3D70A3D7)
          {
            v22 = 0x147AE147AE147AELL;
          }

          else
          {
            v22 = v20;
          }

          if (v22)
          {
            if (v22 <= 0x147AE147AE147AELL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v23 = 8 * (v19 >> 3);
          *(v23 + 192) = 0;
          *(v23 + 160) = 0u;
          *(v23 + 176) = 0u;
          *(v23 + 128) = 0u;
          *(v23 + 144) = 0u;
          *(v23 + 96) = 0u;
          *(v23 + 112) = 0u;
          *(v23 + 64) = 0u;
          *(v23 + 80) = 0u;
          *(v23 + 32) = 0u;
          *(v23 + 48) = 0u;
          *v23 = 0u;
          *(v23 + 16) = 0u;
          if (v18 != v16)
          {
            v24 = 0;
            do
            {
              v25 = &v18[v24 / 8];
              v26 = *&v18[v24 / 8];
              *(v24 + 16) = v18[v24 / 8 + 2];
              *v24 = v26;
              v25[1] = 0;
              v25[2] = 0;
              *v25 = 0;
              v27 = *&v18[v24 / 8 + 3];
              *(v24 + 40) = v18[v24 / 8 + 5];
              *(v24 + 24) = v27;
              v25[4] = 0;
              v25[5] = 0;
              v25[3] = 0;
              v28 = *&v18[v24 / 8 + 6];
              *(v24 + 64) = v18[v24 / 8 + 8];
              *(v24 + 48) = v28;
              v25[7] = 0;
              v25[8] = 0;
              v25[6] = 0;
              v29 = *&v18[v24 / 8 + 9];
              *(v24 + 88) = v18[v24 / 8 + 11];
              *(v24 + 72) = v29;
              v25[9] = 0;
              v25[10] = 0;
              v25[11] = 0;
              v30 = *&v18[v24 / 8 + 12];
              *(v24 + 112) = v18[v24 / 8 + 14];
              *(v24 + 96) = v30;
              v25[12] = 0;
              v25[13] = 0;
              v25[14] = 0;
              v31 = *&v18[v24 / 8 + 15];
              *(v24 + 136) = v18[v24 / 8 + 17];
              *(v24 + 120) = v31;
              v25[15] = 0;
              v25[16] = 0;
              v25[17] = 0;
              *(v24 + 144) = 0;
              *(v24 + 192) = 0;
              if (LOBYTE(v18[v24 / 8 + 24]) == 1)
              {
                *(v24 + 144) = *(v25 + 9);
                v32 = *(v25 + 10);
                *(v24 + 176) = v25[22];
                *(v24 + 160) = v32;
                v25[21] = 0;
                v25[22] = 0;
                v25[20] = 0;
                *(v24 + 184) = *(v25 + 184);
                *(v24 + 192) = 1;
              }

              v24 += 200;
            }

            while (v25 + 25 != v16);
            do
            {
              rest::CellularPlanBlacklistParams::~CellularPlanBlacklistParams(v18);
              v18 = (v33 + 200);
            }

            while (v18 != v16);
            v18 = *a1;
          }

          v34 = v23 - v19;
          v17 = v23 + 200;
          *a1 = v34;
          a1[1] = (v23 + 200);
          a1[2] = 0;
          if (v18)
          {
            operator delete(v18);
          }
        }

        else
        {
          v16[24] = 0;
          *(v16 + 10) = 0u;
          *(v16 + 11) = 0u;
          *(v16 + 8) = 0u;
          *(v16 + 9) = 0u;
          *(v16 + 6) = 0u;
          *(v16 + 7) = 0u;
          *(v16 + 4) = 0u;
          *(v16 + 5) = 0u;
          *(v16 + 2) = 0u;
          *(v16 + 3) = 0u;
          v17 = (v16 + 25);
          *v16 = 0u;
          *(v16 + 1) = 0u;
        }

        a1[1] = v17;
        xpc::array::object_proxy::operator xpc::object(v38, &v37);
        rest::read_rest_value((v17 - 200), &v37, v35);
        xpc_release(v37);
      }

      xpc_release(object[0]);
      xpc_release(v40);
      v10 = v36;
    }

    xpc_release(v10);
  }

  else
  {
    v9 = *a1;
      ;
    }

    a1[1] = v9;
  }

  xpc_release(v6);
}

void sub_23743BF18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, xpc_object_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(a17);
  xpc_release(a11);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void rest::read_rest_value(void **this, xpc_object_t *a2, const object *a3)
{
  v14 = *a2;
  v4 = MEMORY[0x277D86468];
  if (v14 && MEMORY[0x2383CC760](v14) == v4)
  {
    xpc_retain(v14);
  }

  else
  {
    v14 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    *&v12 = &v14;
    *(&v12 + 1) = "key";
    xpc::dict::object_proxy::operator xpc::object(&v12, v10);
    xpc::dyn_cast_or_default();
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = v15;
    this[2] = v16;
    xpc_release(v10[0]);
    *&v12 = &v14;
    *(&v12 + 1) = "blacklistIMEI";
    xpc::dict::object_proxy::operator xpc::object(&v12, v10);
    xpc::dyn_cast_or_default();
    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    *(this + 3) = v15;
    this[5] = v16;
    xpc_release(v10[0]);
    *&v12 = &v14;
    *(&v12 + 1) = "blacklistEid";
    xpc::dict::object_proxy::operator xpc::object(&v12, v10);
    xpc::dyn_cast_or_default();
    if (*(this + 71) < 0)
    {
      operator delete(this[6]);
    }

    *(this + 3) = v15;
    this[8] = v16;
    xpc_release(v10[0]);
    *&v12 = &v14;
    *(&v12 + 1) = "blacklistIccid";
    xpc::dict::object_proxy::operator xpc::object(&v12, v10);
    xpc::dyn_cast_or_default();
    if (*(this + 95) < 0)
    {
      operator delete(this[9]);
    }

    *(this + 9) = v15;
    this[11] = v16;
    xpc_release(v10[0]);
    *&v12 = &v14;
    *(&v12 + 1) = "uploaderIMEI";
    xpc::dict::object_proxy::operator xpc::object(&v12, v10);
    xpc::dyn_cast_or_default();
    if (*(this + 119) < 0)
    {
      operator delete(this[12]);
    }

    *(this + 6) = v15;
    this[14] = v16;
    xpc_release(v10[0]);
    *&v12 = &v14;
    *(&v12 + 1) = "uploaderEid";
    xpc::dict::object_proxy::operator xpc::object(&v12, v10);
    xpc::dyn_cast_or_default();
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }

    *(this + 15) = v15;
    this[17] = v16;
    xpc_release(v10[0]);
    v12 = 0uLL;
    v13 = 0;
    v10[0] = &v14;
    v10[1] = "additionalProperties";
    xpc::dict::object_proxy::operator xpc::object(v10, &v11);
    xpc::dyn_cast_or_default();
    v12 = v15;
    v13 = v16;
    xpc_release(v11);
    rest::CellularPlanBlacklistParams::deserializeAdditionalProperties(this, &v12);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }
  }

  else
  {
    v9 = 0;
    memset(v5, 0, 24);
    memset(&v5[6], 0, 24);
    memset(&v5[12], 0, 24);
    v6[0] = 0;
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = 0;
    this[1] = 0;
    this[2] = 0;
    if (*(this + 47) < 0)
    {
      operator delete(this[3]);
    }

    *(this + 3) = *&v5[1];
    this[5] = 0;
    if (*(this + 71) < 0)
    {
      operator delete(this[6]);
    }

    *(this + 3) = 0u;
    this[8] = v5[6];
    if (*(this + 95) < 0)
    {
      operator delete(this[9]);
    }

    *(this + 9) = *&v5[7];
    this[11] = 0;
    if (*(this + 119) < 0)
    {
      operator delete(this[12]);
    }

    *(this + 6) = 0u;
    this[14] = v5[12];
    if (*(this + 143) < 0)
    {
      operator delete(this[15]);
    }

    *(this + 15) = *&v5[13];
    this[17] = 0;
    std::__optional_storage_base<rest::CellularPlanBlacklistAdditionalProperties,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<rest::CellularPlanBlacklistAdditionalProperties,false>>((this + 18), v6);
    if (v9 == 1 && v8 < 0)
    {
      operator delete(__p);
    }
  }

  xpc_release(v14);
}

{
  v4 = *a2;
  v10 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v10 = v4;
  }

  if (MEMORY[0x2383CC760](v4) == v5)
  {
    v8[0] = &v10;
    v8[1] = "Language";
    xpc::dict::object_proxy::operator xpc::object(v8, &object);
    __p = 0;
    v14 = 0;
    v15 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v15) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = *v11;
    this[2] = v12;
    xpc_release(object);
    __p = &v10;
    v14 = "Probability";
    xpc::dict::object_proxy::operator xpc::object(&__p, v11);
    xpc::dyn_cast_or_default(v11, v6, 0.0);
    this[3] = v7;
    xpc_release(v11[0]);
    v4 = v10;
  }

  else
  {
    if (*(this + 23) < 0)
    {
      operator delete(*this);
    }

    *this = 0;
    this[1] = 0;
    this[2] = 0;
    this[3] = 0x7FF8000000000000;
  }

  xpc_release(v4);
}

{
  v4 = *a2;
  v8 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v8 = v4;
  }

  if (MEMORY[0x2383CC760](v4) == v5)
  {
    __p = &v8;
    v12 = "CodecId";
    xpc::dict::object_proxy::operator xpc::object(&__p, object);
    *this = xpc::dyn_cast_or_default(object, 0);
    xpc_release(object[0]);
    v6[0] = &v8;
    v6[1] = "CodecPath";
    xpc::dict::object_proxy::operator xpc::object(v6, &v7);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(this + 31) < 0)
    {
      operator delete(this[1]);
    }

    *(this + 1) = *object;
    this[3] = v10;
    xpc_release(v7);
    v4 = v8;
  }

  else
  {
    *this = 0;
    if (*(this + 31) < 0)
    {
      operator delete(this[1]);
    }

    this[1] = 0;
    this[2] = 0;
    this[3] = 0;
  }

  xpc_release(v4);
}

void sub_23743C920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 73) < 0)
  {
    operator delete(*(v14 - 96));
  }

  xpc_release(*(v14 - 64));
  _Unwind_Resume(a1);
}

BOOL rest::DeleteCloudCellularPlanBlacklistRecord::operator==(const void **a1, const void **a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = *(a1 + 47);
  if (v4 >= 0)
  {
    v5 = *(a1 + 47);
  }

  else
  {
    v5 = a1[4];
  }

  v6 = *(a2 + 47);
  v7 = v6;
  if (v6 < 0)
  {
    v6 = a2[4];
  }

  if (v5 != v6)
  {
    return 0;
  }

  v8 = v4 >= 0 ? a1 + 3 : a1[3];
  v9 = v7 >= 0 ? (a2 + 3) : a2[3];
  if (memcmp(v8, v9, v5))
  {
    return 0;
  }

  v10 = *(a1 + 71);
  if (v10 >= 0)
  {
    v11 = *(a1 + 71);
  }

  else
  {
    v11 = a1[7];
  }

  v12 = *(a2 + 71);
  v13 = v12;
  if (v12 < 0)
  {
    v12 = a2[7];
  }

  if (v11 != v12)
  {
    return 0;
  }

  v14 = v10 >= 0 ? a1 + 6 : a1[6];
  v15 = v13 >= 0 ? (a2 + 6) : a2[6];
  if (memcmp(v14, v15, v11))
  {
    return 0;
  }

  v16 = *(a1 + 23);
  if (v16 >= 0)
  {
    v17 = *(a1 + 23);
  }

  else
  {
    v17 = a1[1];
  }

  v18 = *(a2 + 23);
  v19 = v18;
  if (v18 < 0)
  {
    v18 = a2[1];
  }

  if (v17 != v18)
  {
    return 0;
  }

  if (v16 >= 0)
  {
    v20 = a1;
  }

  else
  {
    v20 = *a1;
  }

  v21 = *a2;
  if (v19 >= 0)
  {
    v22 = a2;
  }

  else
  {
    v22 = *a2;
  }

  return memcmp(v20, v22, v17) == 0;
}

void sub_23743D018(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_23743D434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t a13, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

void sub_23743DC50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t a20, xpc_object_t a21, xpc_object_t a22, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(a12);
  xpc_release(a11);
  xpc_release(a10);
  xpc_release(a20);
  xpc_release(a21);
  _Unwind_Resume(a1);
}

uint64_t rest::asString@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v69 = 0;
  v67 = 0u;
  memset(v68, 0, sizeof(v68));
  *__p = 0u;
  v66 = 0u;
  v63 = 0u;
  *__src = 0u;
  v61 = 0u;
  v62 = 0u;
  v60 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v60);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "{", 1);
  v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " fIsESimModificationAllowed:", 28);
  v6 = MEMORY[0x2383CBD10](v5, *a1);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, " fIsESimOutgoingTransferAllowed:", 32);
  v8 = MEMORY[0x2383CBD10](v7, a1[1]);
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " fIsSupervised:", 15);
  v10 = MEMORY[0x2383CBD10](v9, a1[2]);
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " fIsRCSMessagingAllowedForDevice:", 33);
  v12 = MEMORY[0x2383CBD10](v11, a1[3]);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " fIsIDSAllowedForDevice:", 24);
  v14 = MEMORY[0x2383CBD10](v13, a1[4]);
  v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " fIsSatelliteConnectionAllowed:", 31);
  v16 = MEMORY[0x2383CBD10](v15, a1[5]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " fBlockedBundleIds:[", 20);
  v17 = *(a1 + 1);
  for (i = *(a1 + 2); v17 != i; v17 += 24)
  {
    v19 = *(v17 + 23);
    if (v19 >= 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = *v17;
    }

    if (v19 >= 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v21 = *(v17 + 8);
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, v20, v21);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ",", 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "], fManagedBundleIds:[", 22);
  v23 = *(a1 + 4);
  for (j = *(a1 + 5); v23 != j; v23 += 24)
  {
    v25 = *(v23 + 23);
    if (v25 >= 0)
    {
      v26 = v23;
    }

    else
    {
      v26 = *v23;
    }

    if (v25 >= 0)
    {
      v27 = *(v23 + 23);
    }

    else
    {
      v27 = *(v23 + 8);
    }

    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, v26, v27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ",", 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "], fManagedSliceBundleIds:[", 27);
  v29 = *(a1 + 7);
  if (v29 != a1 + 64)
  {
    do
    {
      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "(", 1);
      v31 = v29[55];
      if (v31 >= 0)
      {
        v32 = (v29 + 32);
      }

      else
      {
        v32 = *(v29 + 4);
      }

      if (v31 >= 0)
      {
        v33 = v29[55];
      }

      else
      {
        v33 = *(v29 + 5);
      }

      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, v32, v33);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, ",", 1);
      v36 = v29[79];
      if (v36 >= 0)
      {
        v37 = (v29 + 56);
      }

      else
      {
        v37 = *(v29 + 7);
      }

      if (v36 >= 0)
      {
        v38 = v29[79];
      }

      else
      {
        v38 = *(v29 + 8);
      }

      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "),", 2);
      v40 = *(v29 + 1);
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = *(v29 + 2);
          v42 = *v41 == v29;
          v29 = v41;
        }

        while (!v42);
      }

      v29 = v41;
    }

    while (v41 != a1 + 64);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "], fICCIDPolicies:[", 19);
  v43 = *(a1 + 10);
  if (v43 != a1 + 88)
  {
    do
    {
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "(", 1);
      v45 = v43[55];
      if (v45 >= 0)
      {
        v46 = (v43 + 32);
      }

      else
      {
        v46 = *(v43 + 4);
      }

      if (v45 >= 0)
      {
        v47 = v43[55];
      }

      else
      {
        v47 = *(v43 + 5);
      }

      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ": {fIsRCSMessagingAllowed:", 26);
      v50 = MEMORY[0x2383CBD10](v49, v43[56]);
      v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ", fIsIDSAllowed:", 16);
      v52 = MEMORY[0x2383CBD10](v51, v43[57]);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "}),", 3);
      v53 = *(v43 + 1);
      if (v53)
      {
        do
        {
          v54 = v53;
          v53 = *v53;
        }

        while (v53);
      }

      else
      {
        do
        {
          v54 = *(v43 + 2);
          v42 = *v54 == v43;
          v43 = v54;
        }

        while (!v42);
      }

      v43 = v54;
    }

    while (v54 != a1 + 88);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v61, "]}", 2);
  if ((BYTE8(v67) & 0x10) != 0)
  {
    v56 = v67;
    if (v67 < __src[1])
    {
      *&v67 = __src[1];
      v56 = __src[1];
    }

    v57 = __src[0];
  }

  else
  {
    if ((BYTE8(v67) & 8) == 0)
    {
      v55 = 0;
      a2[23] = 0;
      goto LABEL_62;
    }

    v57 = *(&v62 + 1);
    v56 = *(&v63 + 1);
  }

  v55 = v56 - v57;
  if ((v56 - v57) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v55 >= 0x17)
  {
    operator new();
  }

  a2[23] = v55;
  if (v55)
  {
    memmove(a2, v57, v55);
  }

LABEL_62:
  a2[v55] = 0;
  *&v60 = *MEMORY[0x277D82818];
  v58 = *(MEMORY[0x277D82818] + 72);
  *(&v60 + *(v60 - 24)) = *(MEMORY[0x277D82818] + 64);
  *&v61 = v58;
  *(&v61 + 1) = MEMORY[0x277D82878] + 16;
  if (SHIBYTE(v66) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v61 + 1) = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v62);
  std::iostream::~basic_iostream();
  return MEMORY[0x2383CBE70](v68);
}

void sub_23743E2DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a9, MEMORY[0x277D82818]);
  MEMORY[0x2383CBE70](&a25);
  _Unwind_Resume(a1);
}

void ctu::rest::write_rest_value<std::string,std::string>(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (MEMORY[0x2383CC760](v4) == MEMORY[0x277D86440])
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
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      ctu::rest::write_rest_value<std::string const,std::string>((v7 + 4), &value);
      xpc_array_append_value(v5, value);
      xpc_release(value);
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

      v7 = v10;
    }

    while (v10 != v6);
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_23743F00C(_Unwind_Exception *a1)
{
  xpc_release(v1);
  xpc_release(*(v2 - 80));
  _Unwind_Resume(a1);
}

void ctu::rest::read_rest_value<std::string,std::string>(uint64_t a1, void *a2)
{
  v3 = *a2;
  v4 = MEMORY[0x277D86440];
  if (*a2 && MEMORY[0x2383CC760](*a2) == v4)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::destroy(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (MEMORY[0x2383CC760](v3) == v4)
  {
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    xpc::array::iterator::iterator(&v14, object, 0);
    xpc_release(object[0]);
    object[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      object[0] = xpc_null_create();
    }

    if (MEMORY[0x2383CC760](v3) == v4)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    xpc::array::iterator::iterator(v13, object, count);
    xpc_release(object[0]);
    v6 = v15;
    v7 = MEMORY[0x277D86468];
    while (v6 != v13[1] || v14 != v13[0])
    {
      v12 = 0;
      object[0] = &v14;
      object[1] = v6;
      xpc::array::object_proxy::operator xpc::dict(object, &v12);
      if (MEMORY[0x2383CC760](v12) == v7)
      {
        *__p = 0u;
        v11 = 0u;
        *object = 0u;
        v8 = v12;
        if (v12)
        {
          xpc_retain(v12);
        }

        else
        {
          v8 = xpc_null_create();
        }

        ctu::rest::read_rest_value<std::string,std::string>(object, &v8);
        xpc_release(v8);
        std::__tree<std::__value_type<std::string,std::string>,std::__map_value_compare<std::string,std::__value_type<std::string,std::string>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::string>>>::__emplace_unique_key_args<std::string,std::pair<std::string,std::string>>(a1, object);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v12);
      v6 = ++v15;
    }

    xpc_release(v13[0]);
    xpc_release(v14);
  }

  xpc_release(v3);
}

void sub_23743F36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(*(v19 - 48));
  xpc_release(v18);
  _Unwind_Resume(a1);
}

uint64_t ___ZN4rest15read_rest_valueERNS_24ManagedConfigurationInfoERKN3xpc6objectE_block_invoke(uint64_t a1, char *a2, xpc_object_t object)
{
  v5 = MEMORY[0x277D86468];
  if (object)
  {
    v6 = object;
    xpc_retain(object);
    v20 = v6;
  }

  else
  {
    v6 = xpc_null_create();
    v20 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (MEMORY[0x2383CC760](v6) == v5)
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v20 = v7;
LABEL_9:
  xpc_release(v6);
  v8 = v20;
  if (MEMORY[0x2383CC760](v20) == v5)
  {
    __p[0] = &v20;
    __p[1] = "isRCSMessagingAllowed";
    xpc::dict::object_proxy::operator xpc::object(__p, &objecta);
    v9 = xpc::dyn_cast_or_default(&objecta, 0);
    xpc_release(objecta);
    __p[0] = &v20;
    __p[1] = "isIDSAllowed";
    xpc::dict::object_proxy::operator xpc::object(__p, &objecta);
    v10 = xpc::dyn_cast_or_default(&objecta, 0);
    xpc_release(objecta);
    v11 = *(a1 + 32);
    std::string::basic_string[abi:ne200100]<0>(__p, a2);
    v13 = (v11 + 88);
    v12 = *(v11 + 88);
    if (!v12)
    {
      goto LABEL_16;
    }

    while (1)
    {
      while (1)
      {
        v14 = v12;
        if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, (v12 + 32)) & 0x80) == 0)
        {
          break;
        }

        v12 = *v14;
        v13 = v14;
        if (!*v14)
        {
          goto LABEL_16;
        }
      }

      if ((std::operator<=>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v14 + 4, __p) & 0x80) == 0)
      {
        break;
      }

      v13 = v14 + 1;
      v12 = v14[1];
      if (!v12)
      {
        goto LABEL_16;
      }
    }

    if (!*v13)
    {
LABEL_16:
      operator new();
    }

    if (v10)
    {
      v15 = 256;
    }

    else
    {
      v15 = 0;
    }

    *(*v13 + 56) = v15 | v9;
    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p[0]);
    }

    v8 = v20;
  }

  xpc_release(v8);
  return 1;
}

void sub_23743F640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, xpc_object_t a16, xpc_object_t object)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  _Unwind_Resume(a1);
}

double rest::RecognizeLanguageArg::RecognizeLanguageArg(rest::RecognizeLanguageArg *this)
{
  *this = 1;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = 1;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

uint64_t rest::RecognizeLanguageArg::RecognizeLanguageArg(uint64_t a1, __int16 a2, __int128 *a3, uint64_t *a4)
{
  *a1 = a2;
  v5 = *a3;
  *(a1 + 24) = *(a3 + 2);
  *(a1 + 8) = v5;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0;
  *a3 = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v6 = a1 + 32;
  *(v6 + 16) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(v6, *a4, a4[1], 0xAAAAAAAAAAAAAAABLL * ((a4[1] - *a4) >> 3));
  return a1;
}

void sub_23743F794(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

BOOL rest::RecognizeLanguageArg::isValid(rest::RecognizeLanguageArg *this)
{
  if (!*this)
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

BOOL rest::operator==(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  v6 = *(a1 + 31);
  if (v6 >= 0)
  {
    v7 = *(a1 + 31);
  }

  else
  {
    v7 = *(a1 + 2);
  }

  v8 = *(a2 + 31);
  v9 = v8;
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 2);
  }

  if (v7 != v8)
  {
    return 0;
  }

  v10 = v6 >= 0 ? a1 + 4 : *(a1 + 1);
  v11 = v9 >= 0 ? a2 + 4 : *(a2 + 1);
  if (memcmp(v10, v11, v7))
  {
    return 0;
  }

  v14 = a1 + 16;
  v12 = *(a1 + 4);
  v13 = *(v14 + 1);
  v16 = a2 + 16;
  v15 = *(a2 + 4);
  if (v13 - v12 != *(v16 + 1) - v15)
  {
    return 0;
  }

  if (v12 == v13)
  {
    return 1;
  }

  do
  {
    result = std::__equal_to::operator()[abi:ne200100]<std::string,std::string>(&v18, v12, v15);
    if (!result)
    {
      break;
    }

    v12 += 3;
    v15 += 3;
  }

  while (v12 != v13);
  return result;
}

void sub_23743FAA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(*(v17 - 56));
  xpc_release(*(v17 - 64));
  _Unwind_Resume(a1);
}

void *rest::RecognizeLanguageResult::RecognizeLanguageResult(void *this)
{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0x7FF8000000000000;
  return this;
}

{
  *this = 0;
  this[1] = 0;
  this[2] = 0;
  this[3] = 0x7FF8000000000000;
  return this;
}

uint64_t rest::RecognizeLanguageResult::RecognizeLanguageResult(uint64_t result, __int128 *a2, double a3)
{
  v3 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = a3;
  return result;
}

{
  v3 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v3;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(result + 24) = a3;
  return result;
}

uint64_t rest::RecognizeLanguageResult::isValid(rest::RecognizeLanguageResult *this)
{
  if ((*(this + 23) & 0x8000000000000000) != 0)
  {
    if (*(this + 1))
    {
      goto LABEL_3;
    }
  }

  else if (*(this + 23))
  {
LABEL_3:
    v1 = *(this + 3);
    return 1;
  }

  return 0;
}

BOOL rest::operator==(double *a1, double *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  else
  {
    v3 = *(a1 + 1);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
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

  return !memcmp(a1, a2, v3) && v7[3] == v6[3];
}

void sub_23743FFCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t rest::CompressionCodecInfo::CompressionCodecInfo(uint64_t this)
{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

{
  *this = 0;
  *(this + 16) = 0;
  *(this + 24) = 0;
  *(this + 8) = 0;
  return this;
}

__n128 rest::CompressionCodecInfo::CompressionCodecInfo(uint64_t a1, int a2, __n128 *a3)
{
  *a1 = a2;
  result = *a3;
  *(a1 + 24) = a3[1].n128_u64[0];
  *(a1 + 8) = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  return result;
}

{
  *a1 = a2;
  result = *a3;
  *(a1 + 24) = a3[1].n128_u64[0];
  *(a1 + 8) = result;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  a3->n128_u64[0] = 0;
  return result;
}

BOOL rest::CompressionCodecInfo::isValid(rest::CompressionCodecInfo *this)
{
  if ((*(this + 31) & 0x8000000000000000) != 0)
  {
    if (*(this + 2))
    {
      return *this != 0;
    }
  }

  else if (*(this + 31))
  {
    return *this != 0;
  }

  return 0;
}

void sub_237440440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, xpc_object_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

double rest::CompressTextArg::CompressTextArg(rest::CompressTextArg *this)
{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

{
  result = 0.0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  return result;
}

__n128 rest::CompressTextArg::CompressTextArg(void *a1, uint64_t a2, __n128 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  result = *a3;
  *(a1 + 3) = *a3;
  a1[5] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = *a2;
  a1[2] = *(a2 + 16);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  result = *a3;
  *(a1 + 3) = *a3;
  a1[5] = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

void rest::read_rest_value(std::vector<std::string> *this, xpc_object_t *a2, const object *a3)
{
  v4 = *a2;
  v16 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v16 = v4;
  }

  if (MEMORY[0x2383CC760](v4) == v5)
  {
    __p = &v16;
    v13 = "Input";
    xpc::dict::object_proxy::operator xpc::object(&__p, &v17);
    if (MEMORY[0x2383CC760](v17) == MEMORY[0x277D86458])
    {
      length = xpc_data_get_length(v17);
      begin = this->__begin_;
      end = this->__end_;
      v11 = end - this->__begin_;
      if (length <= v11)
      {
        if (length < v11)
        {
          end = (begin + length);
          this->__end_ = (begin + length);
        }
      }

      else
      {
        std::vector<unsigned char>::__append(this, length - v11);
        begin = this->__begin_;
        end = this->__end_;
      }

      ctu::rest::detail::read_raw_binary_value(begin, (end - begin), &v17, v7);
    }

    xpc_release(v17);
    __p = &v16;
    v13 = "CodecPaths";
    xpc::dict::object_proxy::operator xpc::object(&__p, &v17);
    ctu::rest::read_rest_value<std::string>(&this[1], &v17);
    xpc_release(v17);
    v4 = v16;
  }

  else
  {
    v6 = this->__begin_;
    if (this->__begin_)
    {
      this->__end_ = v6;
      operator delete(v6);
      this->__begin_ = 0;
      this->__end_ = 0;
      this->__end_cap_.__value_ = 0;
    }

    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    v13 = 0;
    v14 = 0;
    __p = 0;
    std::vector<std::string>::__vdeallocate(this + 1);
    this[1].__begin_ = 0;
    this[1].__end_ = 0;
    this[1].__end_cap_.__value_ = 0;
    memset(v15, 0, sizeof(v15));
    v17 = v15;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v17);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }
  }

  xpc_release(v4);
}

{
  v43 = *a2;
  v4 = MEMORY[0x277D86468];
  if (v43 && MEMORY[0x2383CC760](v43) == v4)
  {
    xpc_retain(v43);
  }

  else
  {
    v43 = xpc_null_create();
  }

  if (MEMORY[0x2383CC760]() == v4)
  {
    v27[0] = &v43;
    v27[1] = "Identifier";
    xpc::dict::object_proxy::operator xpc::object(v27, &object);
    __p[0] = 0;
    __p[1] = 0;
    *&v33[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v33[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(this->__end_cap_.__value_) < 0)
    {
      operator delete(this->__begin_);
    }

    *&this->__begin_ = v44;
    this->__end_cap_.__value_ = v45;
    xpc_release(object);
    v27[0] = &v43;
    v27[1] = "Title";
    xpc::dict::object_proxy::operator xpc::object(v27, &object);
    __p[0] = 0;
    __p[1] = 0;
    *&v33[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v33[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(this[1].__end_cap_.__value_) < 0)
    {
      operator delete(this[1].__begin_);
    }

    *&this[1].__begin_ = v44;
    this[1].__end_cap_.__value_ = v45;
    xpc_release(object);
    v27[0] = &v43;
    v27[1] = "DepartureAirportCode";
    xpc::dict::object_proxy::operator xpc::object(v27, &object);
    __p[0] = 0;
    __p[1] = 0;
    *&v33[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v33[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(this[2].__end_cap_.__value_) < 0)
    {
      operator delete(this[2].__begin_);
    }

    *&this[2].__begin_ = v44;
    this[2].__end_cap_.__value_ = v45;
    xpc_release(object);
    v27[0] = &v43;
    v27[1] = "ArrivalAirportCode";
    xpc::dict::object_proxy::operator xpc::object(v27, &object);
    __p[0] = 0;
    __p[1] = 0;
    *&v33[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v33[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(this[4].__end_cap_.__value_) < 0)
    {
      operator delete(this[4].__begin_);
    }

    *&this[4].__begin_ = v44;
    this[4].__end_cap_.__value_ = v45;
    xpc_release(object);
    __p[0] = &v43;
    __p[1] = "DepartureAirportLat";
    xpc::dict::object_proxy::operator xpc::object(__p, &v44);
    xpc::dyn_cast_or_default(&v44, v6, 0.0);
    this[6].__begin_ = v7;
    xpc_release(v44);
    __p[0] = &v43;
    __p[1] = "DepartureAirportLong";
    xpc::dict::object_proxy::operator xpc::object(__p, &v44);
    xpc::dyn_cast_or_default(&v44, v8, 0.0);
    this[6].__end_ = v9;
    xpc_release(v44);
    __p[0] = &v43;
    __p[1] = "DepartureTime";
    xpc::dict::object_proxy::operator xpc::object(__p, &v44);
    xpc::dyn_cast_or_default(&v44, v10, 0.0);
    this[6].__end_cap_.__value_ = v11;
    xpc_release(v44);
    __p[0] = &v43;
    __p[1] = "ArrivalAirportLat";
    xpc::dict::object_proxy::operator xpc::object(__p, &v44);
    xpc::dyn_cast_or_default(&v44, v12, 0.0);
    this[7].__begin_ = v13;
    xpc_release(v44);
    __p[0] = &v43;
    __p[1] = "ArrivalAirportLong";
    xpc::dict::object_proxy::operator xpc::object(__p, &v44);
    xpc::dyn_cast_or_default(&v44, v14, 0.0);
    this[7].__end_ = v15;
    xpc_release(v44);
    __p[0] = &v43;
    __p[1] = "ArrivalTime";
    xpc::dict::object_proxy::operator xpc::object(__p, &v44);
    xpc::dyn_cast_or_default(&v44, v16, 0.0);
    this[7].__end_cap_.__value_ = v17;
    xpc_release(v44);
    v27[0] = &v43;
    v27[1] = "ExtractionSource";
    xpc::dict::object_proxy::operator xpc::object(v27, &object);
    __p[0] = 0;
    __p[1] = 0;
    *&v33[0] = 0;
    xpc::dyn_cast_or_default();
    if (SBYTE7(v33[0]) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(this[9].__end_cap_.__value_) < 0)
    {
      operator delete(this[9].__begin_);
    }

    *&this[9].__begin_ = v44;
    this[9].__end_cap_.__value_ = v45;
    xpc_release(object);
    v31 = 0;
    xpc::dict::object_proxy::operator xpc::array(&v31, v43, "PassengerNames");
    std::vector<std::string>::clear[abi:ne200100](&this[8]);
    object = 0;
    v30 = 0;
    v18 = v31;
    __p[0] = v31;
    if (v31)
    {
      xpc_retain(v31);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    xpc::array::iterator::iterator(&object, __p, 0);
    xpc_release(__p[0]);
    v19 = MEMORY[0x277D86440];
    while (1)
    {
      *&v44 = v18;
      if (v18)
      {
        xpc_retain(v18);
      }

      else
      {
        *&v44 = xpc_null_create();
      }

      v20 = MEMORY[0x2383CC760](v18) == v19 ? xpc_array_get_count(v18) : 0;
      xpc::array::iterator::iterator(__p, &v44, v20);
      xpc_release(v44);
      v21 = object;
      v22 = v30;
      v23 = __p[0];
      v24 = __p[1];
      xpc_release(__p[0]);
      if (v22 == v24 && v21 == v23)
      {
        break;
      }

      v27[0] = 0;
      v27[1] = 0;
      v28 = 0;
      v25[0] = &object;
      v25[1] = v30;
      xpc::array::object_proxy::operator xpc::object(v25, &v26);
      __p[0] = 0;
      __p[1] = 0;
      *&v33[0] = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v33[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      *v27 = v44;
      v28 = v45;
      xpc_release(v26);
      std::vector<std::string>::push_back[abi:ne200100](&this[8], v27);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(v27[0]);
      }

      ++v30;
    }

    xpc_release(object);
    xpc_release(v18);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    memset(v37, 0, sizeof(v37));
    v36 = 0u;
    memset(v35, 0, sizeof(v35));
    v34 = 0u;
    *__p = 0u;
    memset(v33, 0, sizeof(v33));
    if (SHIBYTE(this->__end_cap_.__value_) < 0)
    {
      operator delete(this->__begin_);
    }

    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    BYTE7(v33[0]) = 0;
    LOBYTE(__p[0]) = 0;
    if (SHIBYTE(this[1].__end_cap_.__value_) < 0)
    {
      operator delete(this[1].__begin_);
    }

    *&this[1].__begin_ = *(v33 + 8);
    this[1].__end_cap_.__value_ = *(&v33[1] + 1);
    HIBYTE(v33[1]) = 0;
    BYTE8(v33[0]) = 0;
    if (SHIBYTE(this[2].__end_cap_.__value_) < 0)
    {
      operator delete(this[2].__begin_);
    }

    *&this[2].__begin_ = v34;
    this[2].__end_cap_.__value_ = v35[0];
    HIBYTE(v35[0]) = 0;
    LOBYTE(v34) = 0;
    if (SHIBYTE(this[3].__end_cap_.__value_) < 0)
    {
      operator delete(this[3].__begin_);
    }

    *&this[3].__begin_ = *&v35[1];
    this[3].__end_cap_.__value_ = v35[3];
    HIBYTE(v35[3]) = 0;
    LOBYTE(v35[1]) = 0;
    if (SHIBYTE(this[4].__end_cap_.__value_) < 0)
    {
      operator delete(this[4].__begin_);
    }

    *&this[4].__begin_ = v36;
    this[4].__end_cap_.__value_ = v37[0];
    HIBYTE(v37[0]) = 0;
    LOBYTE(v36) = 0;
    if (SHIBYTE(this[5].__end_cap_.__value_) < 0)
    {
      operator delete(this[5].__begin_);
    }

    *&this[5].__begin_ = *&v37[1];
    this[5].__end_cap_.__value_ = v37[3];
    HIBYTE(v37[3]) = 0;
    LOBYTE(v37[1]) = 0;
    v5 = v39;
    *&this[6].__begin_ = v38;
    *&this[6].__end_cap_.__value_ = v5;
    *&this[7].__end_ = v40;
    std::vector<std::string>::__vdeallocate(this + 8);
    this[8].__begin_ = 0;
    this[8].__end_ = 0;
    this[8].__end_cap_.__value_ = 0;
    v42[0] = 0;
    v41 = 0uLL;
    if (SHIBYTE(this[9].__end_cap_.__value_) < 0)
    {
      operator delete(this[9].__begin_);
    }

    *&this[9].__begin_ = *&v42[1];
    this[9].__end_cap_.__value_ = v42[3];
    HIBYTE(v42[3]) = 0;
    LOBYTE(v42[1]) = 0;
    rest::FlightInfo::~FlightInfo(__p);
  }

  xpc_release(v43);
}

{
  v4 = *a2;
  v9 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v9 = v4;
  }

  if (MEMORY[0x2383CC760](v4) == v5)
  {
    v6 = &v9;
    v7 = "ContactKeys";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    ctu::rest::read_rest_value<std::string>(this, &object);
    xpc_release(object);
    v4 = v9;
  }

  else
  {
    std::vector<std::string>::__vdeallocate(this);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    object = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&object);
  }

  xpc_release(v4);
}

{
  v4 = *a2;
  v9 = v4;
  v5 = MEMORY[0x277D86468];
  if (v4 && MEMORY[0x2383CC760](v4) == v5)
  {
    xpc_retain(v4);
  }

  else
  {
    v4 = xpc_null_create();
    v9 = v4;
  }

  if (MEMORY[0x2383CC760](v4) == v5)
  {
    v6 = &v9;
    v7 = "MyCardNames";
    xpc::dict::object_proxy::operator xpc::object(&v6, &object);
    ctu::rest::read_rest_value<std::string>(this, &object);
    xpc_release(object);
    v4 = v9;
  }

  else
  {
    std::vector<std::string>::__vdeallocate(this);
    this->__begin_ = 0;
    this->__end_ = 0;
    this->__end_cap_.__value_ = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    object = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&object);
  }

  xpc_release(v4);
}

void sub_237440970(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, xpc_object_t object)
{
  xpc_release(*(v15 - 40));
  xpc_release(object);
  _Unwind_Resume(a1);
}

double rest::CompressTextResult::CompressTextResult(rest::CompressTextResult *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  return result;
}

__n128 rest::CompressTextResult::CompressTextResult(uint64_t a1, uint64_t a2, __n128 *a3)
{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = *a3;
  *(a1 + 32) = *a3;
  *(a1 + 48) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}

{
  *a1 = *a2;
  v3 = *(a2 + 8);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 8) = v3;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  result = *a3;
  *(a1 + 32) = *a3;
  *(a1 + 48) = a3[1].n128_u64[0];
  a3->n128_u64[0] = 0;
  a3->n128_u64[1] = 0;
  a3[1].n128_u64[0] = 0;
  return result;
}