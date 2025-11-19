void sub_101558844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, xpc_object_t object, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1015588E4(uint64_t a1)
{
  if (*(a1 + 112) && *(a1 + 80))
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = 136315138;
      v4 = radioStateAsString();
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Silence assertion has been requested; radio state is %s [not Online] -- time to party", &v3, 0xCu);
    }

    sub_101558308(a1, 0, 0.0);
  }
}

void sub_1015589B0(uint64_t a1, xpc_object_t *a2)
{
  if (*a2)
  {
    xpc_retain(*a2);
  }

  else
  {
    xpc_null_create();
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101558AD0(uint64_t a1, void **a2, uint64_t *a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__p, *a4, *(a4 + 8));
  }

  else
  {
    *__p = *a4;
    __p[2] = *(a4 + 16);
  }

  v7 = *a2;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  v8 = a3[1];
  v12 = *a3;
  v13 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 16);
  if (v9)
  {
    if (std::__shared_weak_count::lock(v9))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_101558C94(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10155A378;
  v5[3] = &unk_101F4CB68;
  v5[4] = a1 + 8;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 24;
  v1 = *(a1 + 24);
  if (*(v2 + 8))
  {
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10155A3CC;
    v10 = &unk_101F4CBA8;
    v11 = &v13;
    v12 = &v6;
    v13 = 0;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_10155A390;
    v10 = &unk_101F4CB88;
    v11 = &v13;
    v12 = &v6;
    v13 = 0;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_101558EB8(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101558F8C);
  __cxa_rethrow();
}

void sub_101558EF8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101558F4C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101558F8C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101558FBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101559010(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101559050(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10155907C(ServiceManager::Service *this)
{
  *this = off_101F4C978;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1015590D8(ServiceManager::Service *this)
{
  *this = off_101F4C978;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101559158@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_101559198(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_101557DD8(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_101557DD8(v4, 0);
}

uint64_t sub_10155923C(uint64_t result, int a2, ServiceStage *this)
{
  if (!a2)
  {
    v3 = *(result + 8);
    ServiceStage::holdOffStage(&object, this);
    v4 = object;
    if (object)
    {
      dispatch_retain(object);
      dispatch_group_enter(v4);
    }

    v5 = *(v3 + 16);
    if (v5)
    {
      if (std::__shared_weak_count::lock(v5))
      {
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

void sub_101559368(char *a1)
{
  if (a1)
  {
    sub_101559368(*a1);
    sub_101559368(*(a1 + 1));
    v2 = *(a1 + 9);
    if (v2)
    {
      sub_100004A34(v2);
    }

    if (a1[63] < 0)
    {
      operator delete(*(a1 + 5));
    }

    xpc_release(*(a1 + 4));

    operator delete(a1);
  }
}

void sub_1015593E4(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/events/dump_state");
  operator new();
}

void sub_10155959C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  sub_1000062D4(&a19);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101559678(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4C9F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015596B0(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1015596F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1015597C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F4CA78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1015597F8(void *a1, xpc *this, uint64_t a3)
{
  v4 = a1[1];
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  return v5(v7);
}

uint64_t sub_101559880(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1015598CC(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 64));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_101559914(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101559930(uint64_t a1)
{
  v5 = a1;
  v1 = *a1;
  v3 = *(*a1 + 8);
  v2 = *(*a1 + 16);
  v6[0] = *v1;
  v6[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_101557FD8(v2, v6);
    sub_100004A34(v3);
  }

  else
  {
    sub_101557FD8(v2, v6);
  }

  v4 = v1[1];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

uint64_t *sub_1015599C0(xpc_object_t **a1)
{
  v1 = *a1;
  v14 = a1;
  v15 = v1;
  v2 = *v1;
  v3 = *(*v1 + 5);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v2[20] - v2[19]) >> 3;
    *buf = 134217984;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Request to release silence assertion; current holders: %lu", buf, 0xCu);
  }

  v6 = v2[19];
  v5 = v2[20];
  while (1)
  {
    if (v6 == v5)
    {
      v6 = v5;
      goto LABEL_8;
    }

    if (xpc_equal(*v6, v1[1]))
    {
      break;
    }

    ++v6;
  }

  if (v6 != v5)
  {
    for (i = v6 + 1; i != v5; ++i)
    {
      if (!xpc_equal(*i, v1[1]))
      {
        v12 = *i;
        *i = xpc_null_create();
        v13 = *v6;
        *v6 = v12;
        xpc_release(v13);
        ++v6;
      }
    }
  }

LABEL_8:
  v7 = v2[20];
  if (v6 != v7)
  {
    while (v7 != v6)
    {
      sub_101558DBC(--v7);
    }

    v2[20] = v6;
  }

  if (v2[19] == v6)
  {
    v8 = v2[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Release limit to cmas assertion as no more clients need it", buf, 2u);
    }

    v9 = v2[15];
    v2[14] = 0;
    v2[15] = 0;
    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  sub_101559BF8(&v15);
  return sub_1000049E0(&v14);
}

void sub_101559BB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t *sub_101559BF8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_101559C50(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (v1 + 8);
    if (*(v1 + 31) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Request for silence assertion from client [%s]", buf, 0xCu);
  }

  sub_101557CE0(v2);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v5 = *(v1 + 8);
    v27 = *(v1 + 24);
    *__p = v5;
  }

  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (SHIBYTE(v27) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v29 = v27;
  }

  v30 = v7;
  v31 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(v2 + 136);
  if (!v8)
  {
LABEL_22:
    operator new();
  }

  v9 = *(v1 + 32);
  while (1)
  {
    while (1)
    {
      v10 = v8;
      v11 = v8[4];
      if (v11 <= v9)
      {
        break;
      }

      v8 = *v10;
      if (!*v10)
      {
        goto LABEL_22;
      }
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = v10[1];
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(*buf);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  v12 = *(v2 + 104);
  if (v12 == 0.0)
  {
    v15 = *(v2 + 112);
    if (v15)
    {
      v16 = *(v15 + 68);
      v17 = *(v2 + 40);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      if (v16 == 2)
      {
        if (v18)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Limit to cmas assertion is already granted; grant silence assertion to client right away", buf, 2u);
        }

        sub_1015581A8(v2, 1);
      }

      else if (v18)
      {
        v22 = *(v2 + 144);
        *buf = 134217984;
        *&buf[4] = v22;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Waiting for limit to cmas assertion be granted; pending client requests [%lu]", buf, 0xCu);
      }
    }

    else
    {
      v19 = *(v2 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Acquiring limit to cmas assertion", buf, 2u);
      }

      sub_10000501C(buf, "/cc/assertions/limit_to_cmas_mode");
      ctu::rest::AssertionHandle::create();
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*buf);
      }

      v20 = v25;
      v25 = 0uLL;
      v21 = *(v2 + 120);
      *(v2 + 112) = v20;
      if (v21)
      {
        sub_100004A34(v21);
        if (*(&v25 + 1))
        {
          sub_100004A34(*(&v25 + 1));
        }
      }

      *buf = off_101F4CAF8;
      *&buf[8] = v2;
      v30 = buf;
      ctu::rest::AssertionHandle::setHandler_impl();
      sub_10000FF50(buf);
    }
  }

  else
  {
    v13 = *(v2 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      *&buf[4] = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E Prevent detach timer active [%f secs]; cannot grant silence assertion", buf, 0xCu);
      v12 = *(v2 + 104);
    }

    sub_101558308(v2, 0x2300000001uLL, v12);
  }

  sub_10155A150(&v24);
  return sub_1000049E0(&v23);
}

void sub_10155A0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_10000FF50(&__p);
  sub_10155A150(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10155A150(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      sub_100004A34(v2);
    }

    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_10155A234(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4CAF8;
  a2[1] = v2;
  return result;
}

void sub_10155A260(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "rejected";
    if (v2)
    {
      v5 = "granted";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Limit to cmas assertion is %s", &v6, 0xCu);
  }

  sub_1015581A8(v3, v2);
}

uint64_t sub_10155A32C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10155A390(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10155A3CC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_10155A408@<X0>(_BYTE *a1@<X8>)
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  *__p = 0u;
  v10 = 0u;
  v7 = 0u;
  memset(v8, 0, sizeof(v8));
  v6 = 0u;
  sub_10000C320(&v6);
  *(&v6 + *(v6 - 24) + 16) = 14;
  sub_10000C030(&v7);
  v2 = std::ostream::operator<<();
  sub_10000C030(v2);
  v3 = std::ostream::operator<<();
  sub_10000C030(v3);
  std::ostream::operator<<();
  sub_100061574(&v6, a1);
  *&v7 = v4;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v8);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

uint64_t sub_10155A648(uint64_t a1, void *a2, dispatch_object_t *a3)
{
  *a1 = off_101F145F8;
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "rm.op.act");
  *v6 = 0;
  v6[1] = 0;
  v7 = *a3;
  *(a1 + 24) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v14, &v13);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v14);
  ctu::OsLogLogger::~OsLogLogger(v14);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101F4CBD8;
  v8 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "OperatingModeManagerAction");
  v10 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return a1;
}

void sub_10155A7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v20 = *(v17 + 56);
  if (v20)
  {
    sub_100004A34(v20);
  }

  ctu::OsLogLogger::~OsLogLogger((v17 + 40));
  sub_1000C0544(v18);
  _Unwind_Resume(a1);
}

void *sub_10155A830(void *a1)
{
  *a1 = off_101F4CBD8;
  sub_10155B1D0((a1 + 20));
  sub_1002FED80((a1 + 15));
  sub_10155B150((a1 + 10));
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_10155A8B0(void *a1)
{
  sub_10155A830(a1);

  operator delete();
}

void sub_10155A8E8(uint64_t a1)
{
  if (capabilities::ct::supportsCMASCampOnlyMode(a1))
  {
    v2 = (a1 + 80);
    v11 = off_101F4CCB8;
    v12 = a1 + 64;
    v13 = &v11;
    if (&v11 != (a1 + 80))
    {
      v3 = *(a1 + 104);
      if (v3 == v2)
      {
        v15 = a1 + 64;
        v16 = 0;
        v13 = 0;
        v14 = off_101F4CCB8;
        ((*v3)[3])(v3, &v11);
        (*(**(a1 + 104) + 32))(*(a1 + 104));
        *(a1 + 104) = 0;
        v13 = &v11;
        (v14[3])(&v14, a1 + 80);
        (v14[4])(&v14);
      }

      else
      {
        *(a1 + 80) = off_101F4CCB8;
        *(a1 + 88) = a1 + 64;
        v13 = v3;
      }

      *(a1 + 104) = v2;
    }

    sub_10155B150(&v11);
    v4 = *(a1 + 104);
    if (v4)
    {
      (*(*v4 + 48))(v4, a1 + 112);
    }
  }

  v11 = off_101F4CD48;
  v12 = a1 + 64;
  v13 = &v11;
  sub_100300158(&v11, (a1 + 120));
  sub_1002FED80(&v11);
  v5 = *(a1 + 144);
  if (v5)
  {
    (*(*v5 + 48))(v5, a1 + 152);
  }

  v6 = (a1 + 160);
  v11 = off_101F4CDC8;
  v12 = a1 + 64;
  v13 = &v11;
  if (&v11 != (a1 + 160))
  {
    v7 = *(a1 + 184);
    if (v7 == v6)
    {
      v15 = a1 + 64;
      v16 = 0;
      v13 = 0;
      v14 = off_101F4CDC8;
      ((*v7)[3])(v7, &v11);
      (*(**(a1 + 184) + 32))(*(a1 + 184));
      *(a1 + 184) = 0;
      v13 = &v11;
      (v14[3])(&v14, a1 + 160);
      (v14[4])(&v14);
    }

    else
    {
      *(a1 + 160) = off_101F4CDC8;
      *(a1 + 168) = a1 + 64;
      v13 = v7;
    }

    *(a1 + 184) = v6;
  }

  sub_10155B1D0(&v11);
  v8 = *(a1 + 184);
  if (v8)
  {
    (*(*v8 + 48))(v8, a1 + 192);
  }

  Registry::createRestModuleOneTimeUseConnection(&v9, *(a1 + 48));
  ctu::RestModule::connect();
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10155ACCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155AD00(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 196) == 1)
    {
      v3 = asString();
    }

    else
    {
      v3 = "<uninitialized_value>";
    }

    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I  -- triggeredOperatingModeType=%s, inCampOnly=%s", &v4, 0x16u);
  }
}

void sub_10155ADDC(uint64_t a1, int a2)
{
  if (a2 == 1)
  {
    if (capabilities::ct::requiresSeparateOperatingModeForStewie(a1))
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = a2;
    if (a2 == 2)
    {
      if (capabilities::ct::supportsCMASCampOnlyMode(a1))
      {
        v5 = a1 + 112;
        if (*(a1 + 112) != 3)
        {
          v6 = 3;
LABEL_10:
          *(a1 + 112) = v6;
          v7 = *(a1 + 104);
          if (v7)
          {
            (*(*v7 + 48))(v7, v5);
          }
        }
      }

LABEL_12:
      v3 = 2;
      goto LABEL_16;
    }

    if (a2 == 3)
    {
      v4 = capabilities::ct::supportsCMASCampOnlyMode(a1);
      if (v4)
      {
        v5 = a1 + 112;
        if (*(a1 + 112) != 1)
        {
          v6 = 1;
          goto LABEL_10;
        }

        goto LABEL_12;
      }

      if ((capabilities::ct::supportsCampOnlyMode(v4) & 1) == 0)
      {
        v22 = *(a1 + 40);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Camp only mode not supported", v23, 2u);
        }

        return;
      }

      v3 = 3;
    }
  }

LABEL_16:
  if (*(a1 + 196) != 1 || *(a1 + 192) != v3)
  {
    active = isActiveLowPowerMode();
    v9 = *(a1 + 40);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 136315138;
      *&v23[4] = asString();
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I [    ] requesting radio operating mode %s", v23, 0xCu);
    }

    if (*(a1 + 152) != active)
    {
      *(a1 + 152) = active;
      v10 = *(a1 + 144);
      if (v10)
      {
        (*(*v10 + 48))(v10, a1 + 152);
      }
    }

    if (*(a1 + 196) != 1 || *(a1 + 192) != v3)
    {
      *(a1 + 192) = v3;
      *(a1 + 196) = 1;
      v11 = *(a1 + 184);
      if (v11)
      {
        (*(*v11 + 48))(v11);
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 48));
    v13 = ServiceMap;
    if (v14 < 0)
    {
      v15 = (v14 & 0x7FFFFFFFFFFFFFFFLL);
      v16 = 5381;
      do
      {
        v14 = v16;
        v17 = *v15++;
        v16 = (33 * v16) ^ v17;
      }

      while (v17);
    }

    std::mutex::lock(ServiceMap);
    *v23 = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, v23);
    if (v18)
    {
      v20 = v18[3];
      v19 = v18[4];
      if (v19)
      {
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v19);
        v21 = 0;
        if (!v20)
        {
LABEL_37:
          if ((v21 & 1) == 0)
          {
            sub_100004A34(v19);
          }

          return;
        }

LABEL_36:
        (*(*v20 + 480))(v20, active ^ 1u, 2);
        goto LABEL_37;
      }
    }

    else
    {
      v20 = 0;
    }

    std::mutex::unlock(v13);
    v19 = 0;
    v21 = 1;
    if (!v20)
    {
      goto LABEL_37;
    }

    goto LABEL_36;
  }
}

void sub_10155B11C(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10155B150(uint64_t a1)
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

uint64_t sub_10155B1D0(uint64_t a1)
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

uint64_t sub_10155B2C0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4CCB8;
  a2[1] = v2;
  return result;
}

void sub_10155B2EC(uint64_t a1, int *a2)
{
  v2 = *a2;
  v9 = 0;
  v3 = v2;
  v4 = asString();
  ctu::rest::detail::write_enum_string_value(&v9, v3, v4, v5);
  sub_10000501C(&__p, "/cc/props/cmas_camp_only_mode");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10155B3A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10155B3E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10155B4A0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4CD48;
  a2[1] = v2;
  return result;
}

void sub_10155B4CC(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/airplane_mode");
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v2);
}

void sub_10155B57C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_10155B5C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10155B680(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4CDC8;
  a2[1] = v2;
  return result;
}

void sub_10155B6AC(uint64_t a1, int *a2)
{
  v2 = *a2;
  v3 = *(a2 + 4);
  v9 = 0;
  if (v3 == 1)
  {
    v4 = asString();
    ctu::rest::detail::write_enum_string_value(&v9, v2, v4, v5);
  }

  else
  {
    v9 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/operating_mode_request");
  object = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v8 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v9);
}

void sub_10155B77C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10155B7C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10155B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject **a7, void **a8)
{
  v12 = *(a3 + 16);
  *__p = *a3;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v8 = *a7;
  *a7 = 0;
  aBlock = *a8;
  object = v8;
  *a8 = 0;
  (*(*a2 + 16))(a2, __p, a4, a5, a6, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10155B8D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10155B90C(uint64_t a1)
{
  sub_10155B950(*(a1 + 32));
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

void sub_10155B950(unint64_t a1)
{
  if (!*(a1 + 32))
  {
    return;
  }

  if (*(a1 + 40))
  {
    v2 = *(a1 + 48);
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (v2)
    {

      sub_100004A34(v2);
    }

    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v4 = ServiceMap;
  if ((v5 & 0x8000000000000000) != 0)
  {
    v6 = (v5 & 0x7FFFFFFFFFFFFFFFLL);
    v7 = 5381;
    do
    {
      v5 = v7;
      v8 = *v6++;
      v7 = (33 * v7) ^ v8;
    }

    while (v8);
  }

  std::mutex::lock(ServiceMap);
  __dst.__r_.__value_.__r.__words[0] = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &__dst);
  if (!v9)
  {
    v11 = 0;
LABEL_15:
    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_35;
    }

LABEL_16:
    memset(&v18, 0, sizeof(v18));
    sub_10155C3DC(&v18, a1);
    v17 = 0;
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v15, v18.__r_.__value_.__l.__data_, v18.__r_.__value_.__l.__size_);
    }

    else
    {
      v15 = v18;
    }

    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v15.__r_.__value_.__l.__data_, v15.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v15;
    }

    v19 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = __p;
    }

    v22 = 0;
    if (ctu::cf::convert_copy())
    {
      v13 = v19;
      v19 = v22;
      v23 = v13;
      sub_100005978(&v23);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v14 = v19;
    v16 = v19;
    v19 = 0;
    sub_100005978(&v19);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(*v11 + 16))(v11, &v17, v14);
    sub_100005978(&v16);
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    sub_1003EC530(&v17);
    if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v18.__r_.__value_.__l.__data_);
    }

    goto LABEL_35;
  }

  v11 = v9[3];
  v10 = v9[4];
  if (!v10)
  {
    goto LABEL_15;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v4);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v12 = 0;
  if (v11)
  {
    goto LABEL_16;
  }

LABEL_35:
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }
}

void sub_10155BBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1003EC530(&a18);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  _Unwind_Resume(a1);
}

void *sub_10155BC7C(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 40) = result;
  return result;
}

void sub_10155BCB0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_10155BCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject **a7, void **a8)
{
  v20 = a4;
  v21 = a5;
  ctu::TimerService::throwIfPeriodIsZero();
  *__p = *a3;
  v19 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  v13 = v20;
  v14 = v21;
  v15 = *a7;
  *a7 = 0;
  aBlock = *a8;
  object = v15;
  *a8 = 0;
  (*(*a2 + 24))(a2, __p, v13, v14, a6, &object, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10155BDC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10155BE00(uint64_t a1)
{
  v2 = *(a1 + 32);
  sub_10155B950(v2);
  sub_10155BE58(v2, *(a1 + 40), *(a1 + 56));
  v3 = *(*(a1 + 48) + 16);

  return v3();
}

void sub_10155BE58(unint64_t a1, uint64_t a2, char a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 16));
  v7 = ServiceMap;
  if ((v8 & 0x8000000000000000) != 0)
  {
    v9 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
    v10 = 5381;
    do
    {
      v8 = v10;
      v11 = *v9++;
      v10 = (33 * v10) ^ v11;
    }

    while (v11);
  }

  std::mutex::lock(ServiceMap);
  buf.__r_.__value_.__r.__words[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &buf);
  if (v12)
  {
    v14 = v12[3];
    v13 = v12[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v7);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v15 = 0;
      if (!v14)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (!v14)
  {
LABEL_7:
    v16 = *(a1 + 8);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Fail to schedule wake. Missing power assertion provider", &buf, 2u);
      if (v15)
      {
        return;
      }

      goto LABEL_43;
    }

LABEL_42:
    if (v15)
    {
      return;
    }

    goto LABEL_43;
  }

LABEL_12:
  memset(&v28, 0, sizeof(v28));
  sub_10155C3DC(&v28, a1);
  if (a2 <= 2 && (a3 & 1) == 0)
  {
    v17 = (v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v28 : v28.__r_.__value_.__r.__words[0];
    (*(*v14 + 8))(&buf, v14, v17, a2);
    v18 = *&buf.__r_.__value_.__l.__data_;
    memset(&buf, 0, 16);
    v19 = *(a1 + 48);
    *(a1 + 40) = v18;
    if (v19)
    {
      sub_100004A34(v19);
      if (buf.__r_.__value_.__l.__size_)
      {
        sub_100004A34(buf.__r_.__value_.__l.__size_);
      }
    }
  }

  if (!*(a1 + 40))
  {
    Current = CFAbsoluteTimeGetCurrent();
    v21 = CFDateCreate(0, Current + a2);
    v26 = v21;
    v27 = v21;
    if (v21)
    {
      CFRetain(v21);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v24, v28.__r_.__value_.__l.__data_, v28.__r_.__value_.__l.__size_);
    }

    else
    {
      v24 = v28;
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v24.__r_.__value_.__l.__data_, v24.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v24;
    }

    v29 = 0;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __p;
    }

    v32 = 0;
    if (ctu::cf::convert_copy())
    {
      v22 = v29;
      v29 = v32;
      v33 = v22;
      sub_100005978(&v33);
    }

    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    v23 = v29;
    v25 = v29;
    v29 = 0;
    sub_100005978(&v29);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    (*(*v14 + 24))(v14, &v26, v23);
    sub_100005978(&v25);
    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    sub_1003EC530(&v26);
    sub_1003EC530(&v27);
  }

  if ((SHIBYTE(v28.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_42;
  }

  operator delete(v28.__r_.__value_.__l.__data_);
  if (v15)
  {
    return;
  }

LABEL_43:
  sub_100004A34(v13);
}

void sub_10155C1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, const void *a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_100005978(&a25);
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1003EC530(&a17);
  sub_1003EC530(&a18);
  if (a24 < 0)
  {
    operator delete(a19);
  }

  if ((v39 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(a1);
}

void *sub_10155C258(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_10155C28C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    _Block_release(v1);
  }
}

void *sub_10155C2B0(void *a1)
{
  sub_10155C334(a1);
  v2 = a1[6];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[4];
  a1[4] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::Timer::~Timer(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  return a1;
}

uint64_t sub_10155C334(unint64_t a1)
{
  sub_10155B950(a1);
  result = *(a1 + 32);
  *(a1 + 32) = 0;
  if (result)
  {
    v3 = *(*result + 8);

    return v3();
  }

  return result;
}

void sub_10155C3A4(void *a1)
{
  sub_10155C2B0(a1);

  operator delete();
}

void sub_10155C3DC(std::string *a1, unint64_t __val)
{
  if ((atomic_load_explicit(&qword_101FCAD10, memory_order_acquire) & 1) == 0)
  {
    v7 = __val;
    v6 = __cxa_guard_acquire(&qword_101FCAD10);
    __val = v7;
    if (v6)
    {
      __cxa_atexit(&std::string::~string, aWakingtimer, &_mh_execute_header);
      __cxa_guard_release(&qword_101FCAD10);
      __val = v7;
    }
  }

  std::to_string(&v8, __val);
  if (byte_101FB9CA7 >= 0)
  {
    v3 = aWakingtimer;
  }

  else
  {
    v3 = aWakingtimer[0];
  }

  if (byte_101FB9CA7 >= 0)
  {
    v4 = byte_101FB9CA7;
  }

  else
  {
    v4 = aWakingtimer[1];
  }

  v5 = std::string::insert(&v8, 0, v3, v4);
  *a1 = *v5;
  v5->__r_.__value_.__l.__size_ = 0;
  v5->__r_.__value_.__r.__words[2] = 0;
  v5->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v8.__r_.__value_.__l.__data_);
  }
}

void sub_10155C4C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10155C4E0(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(*v1 + 24))();
  }

  else
  {
    return 1;
  }
}

void *sub_10155C59C(void *a1, void *a2)
{
  v4 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "wk.timer.srvc");
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger(v4, v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = off_101F4CEE8;
  v5 = a2[1];
  a1[2] = *a2;
  a1[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_10155C66C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  CTWakingTimerInterface::~CTWakingTimerInterface(v2);
  _Unwind_Resume(a1);
}

void sub_10155C6A0(void *a1)
{
  *a1 = off_101F4CEE8;
  v2 = a1[3];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  CTWakingTimerInterface::~CTWakingTimerInterface(a1);
}

void sub_10155C708(void *a1)
{
  sub_10155C6A0(a1);

  operator delete();
}

void sub_10155CE74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, void *a13, int a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, void *a22, uint64_t a23, uint64_t a24, void *aBlock, dispatch_object_t object, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void **sub_10155D09C(void **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10155C2B0(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_10155D15C(uint64_t a1)
{
  v4 = 0;
  v5 = 0;
  Registry::getTimerService(&v4, *(a1 + 16));
  v2 = v4;
  if (v4)
  {
    v1 = (**v4)(v4);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v2)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

void sub_10155D1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155D1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, NSObject **a5, void **a6)
{
  v20 = 0;
  v21 = 0;
  Registry::getTimerService(&v20, *(a1 + 16));
  v12 = v20;
  if (v20)
  {
    *__p = *a2;
    v19 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v13 = *a5;
    *a5 = 0;
    aBlock = *a6;
    object = v13;
    *a6 = 0;
    sub_100E34D88(v12, __p, a3, a4, &object, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Fail to schedule block. Missing timer service provider", v15, 2u);
    }
  }

  if (v21)
  {
    sub_100004A34(v21);
  }
}

void sub_10155D318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *aBlock, dispatch_object_t object, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155D35C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, NSObject **a6@<X5>, void **a7@<X6>, void *a8@<X8>)
{
  *buf = 0;
  v24 = 0;
  Registry::getTimerService(buf, *(a1 + 16));
  v16 = *buf;
  if (*buf)
  {
    *__p = *a2;
    v22 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v17 = *a6;
    *a6 = 0;
    aBlock = *a7;
    object = v17;
    *a7 = 0;
    sub_10155B80C(a8, v16, __p, a3, a4, a5, &object, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  if (!v16)
  {
    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Fail to create one-shot timer. Missing timer service provider", buf, 2u);
    }

    *a8 = 0;
  }
}

void sub_10155D4A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155D4EC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, NSObject **a6@<X5>, void **a7@<X6>, void *a8@<X8>)
{
  *buf = 0;
  v24 = 0;
  Registry::getTimerService(buf, *(a1 + 16));
  v16 = *buf;
  if (*buf)
  {
    *__p = *a2;
    v22 = *(a2 + 16);
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v17 = *a6;
    *a6 = 0;
    aBlock = *a7;
    object = v17;
    *a7 = 0;
    sub_10155BCD4(a8, v16, __p, a3, a4, a5, &object, &aBlock);
    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v24)
  {
    sub_100004A34(v24);
  }

  if (!v16)
  {
    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Fail to create periodic timer. Missing timer service provider", buf, 2u);
    }

    *a8 = 0;
  }
}

void sub_10155D638(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, dispatch_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155D6E4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 72))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155D720(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10155D758(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t sub_10155D788(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10155DEF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155E01C(os_log_t *a1, void *a2)
{
  if (a2)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v11 objects:v17 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            v9 = [*(*(&v11 + 1) + 8 * i) UTF8String];
            *buf = 136315138;
            v16 = v9;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I      %s", buf, 0xCu);
          }
        }

        v5 = [a2 countByEnumeratingWithState:&v11 objects:v17 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v10 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I      (no device uuids)", buf, 2u);
    }
  }
}

void sub_10155E1AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) devices];
  v3 = IDSCopyLocalDeviceUniqueID();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10155E248;
  block[3] = &unk_101EA49D0;
  v4 = *(a1 + 40);
  block[4] = *(a1 + 32);
  block[5] = v3;
  block[6] = v2;
  dispatch_async(v4, block);
}

void sub_10155E248(id *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1[4] + 8);
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[5] UTF8String];
    v6 = "unknown";
    if (v5)
    {
      v6 = v5;
    }

    *buf = 136315138;
    v24 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I  Local IDS device ID is %s", buf, 0xCu);
    v3 = *(a1[4] + 8);
    v4 = *v3;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [a1[6] count];
    *buf = 134217984;
    v24 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I  Initial full set of registered devices: %lu devices", buf, 0xCu);
    v3 = *(a1[4] + 8);
  }

  sub_10155E500(v3, a1[6]);
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = a1[6];
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if (v14 && [*(*(&v18 + 1) + 8 * i) isLocallyPaired] && objc_msgSend(v14, "isConnected"))
        {
          [v8 addObject:v14];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = *(a1[4] + 8);
  v16 = *v15;
  if (os_log_type_enabled(*v15, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [v8 count];
    *buf = 134217984;
    v24 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I  Initial set of connected devices: %lu devices", buf, 0xCu);
    v15 = *(a1[4] + 8);
  }

  sub_10155E500(v15, v8);
  [a1[4] setFConnectedDevices:v8];
  if ([v8 count])
  {
    [a1[4] invokeDeviceChangedCallback:v8];
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10155E500(os_log_t *a1, void *a2)
{
  context = objc_autoreleasePoolPush();
  if (a2)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [a2 countByEnumeratingWithState:&v18 objects:v32 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v19;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v19 != v6)
          {
            objc_enumerationMutation(a2);
          }

          v8 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            v9 = *(*(&v18 + 1) + 8 * i);
            v10 = [v9 uniqueIDOverride];
            v11 = IDSCopyIDForDevice();
            v12 = a1;
            v13 = a2;
            v14 = [v9 name];
            v15 = [v9 modelIdentifier];
            *buf = 134219010;
            v23 = v9;
            v24 = 2112;
            v25 = v10;
            v26 = 2112;
            v27 = v11;
            v28 = 2112;
            v29 = v14;
            a2 = v13;
            a1 = v12;
            v30 = 2112;
            v31 = v15;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I      (%p) - %@ %@ %@ (%@)", buf, 0x34u);
          }
        }

        v5 = [a2 countByEnumeratingWithState:&v18 objects:v32 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v16 = *a1;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I      (no devices)", buf, 2u);
    }
  }

  objc_autoreleasePoolPop(context);
}

void sub_10155E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void sub_10155EE70(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v5 = *(v3 + 88);
  v4 = *(v3 + 96);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    v3 = a1[4];
  }

  v7 = a1[5];
  v6 = a1[6];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(v3 + 96);
  *(v3 + 88) = v7;
  *(v3 + 96) = v6;
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = a1[5];
  if ((v5 != 0) != (v9 != 0))
  {
    goto LABEL_41;
  }

  if (v9)
  {
    v10 = *(v9 + 23);
    if (v10 >= 0)
    {
      v11 = *(v9 + 23);
    }

    else
    {
      v11 = *(v9 + 8);
    }

    v12 = *(v5 + 23);
    v13 = v12;
    if ((v12 & 0x80u) != 0)
    {
      v12 = *(v5 + 8);
    }

    if (v11 != v12)
    {
      goto LABEL_41;
    }

    v14 = v10 >= 0 ? a1[5] : *v9;
    v15 = v13 >= 0 ? v5 : *v5;
    if (memcmp(v14, v15, v11) || *(v9 + 24) != *(v5 + 24))
    {
      goto LABEL_41;
    }

    v16 = *(v9 + 55);
    if (v16 >= 0)
    {
      v17 = *(v9 + 55);
    }

    else
    {
      v17 = *(v9 + 40);
    }

    v18 = *(v5 + 55);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = *(v5 + 40);
    }

    if (v17 != v18 || (v16 >= 0 ? (v20 = (v9 + 32)) : (v20 = *(v9 + 32)), v19 >= 0 ? (v21 = (v5 + 32)) : (v21 = *(v5 + 32)), memcmp(v20, v21, v17) || (v22 = *(v9 + 64), v23 = *(v5 + 64), (v22 != 0) == (v23 == 0)) || v22 && !CFEqual(v22, v23) || *(v9 + 56) != *(v5 + 56) || *(v9 + 72) != *(v5 + 72)))
    {
LABEL_41:
      v24 = *(a1[4] + 32);
      if (v24)
      {
        v25 = a1[6];
        v26 = a1[5];
        v27 = v25;
        if (v25)
        {
          atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(v24 + 16))(v24, &v26);
        if (v27)
        {
          sub_100004A34(v27);
        }
      }
    }
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10155F074(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10155F0A0(uint64_t result, uint64_t a2)
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

void sub_10155F0BC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10155F20C(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1[4] + 24);
  if (v3)
  {
    (*(v3 + 16))(v3, a1[5], a1[6], a1[7]);
  }

  objc_autoreleasePoolPop(v2);
}

const void **sub_10155F268(const void **a1, const void **a2)
{
  sub_10005C7A4(a1 + 5, a2 + 5);
  sub_10005C7A4(a1 + 6, a2 + 6);

  return sub_100060E84(a1 + 7, a2 + 7);
}

const void **sub_10155F2BC(const void **a1)
{
  sub_10000A1EC(a1 + 7);
  sub_100005978(a1 + 6);

  return sub_100005978(a1 + 5);
}

void sub_10155F47C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v20 = 1;
  v3 = *(a1 + 32);
  v4 = *(v3 + 48);
  if (v4 && ((*(v4 + 16))(v4, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), &v20), v3 = *(a1 + 32), (v20 & 1) == 0))
  {
    v12 = **(v3 + 64);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_msgSend(*(a1 + 64) "description")];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I ownership on %s delegated to IDSTransactionManager", &buf, 0xCu);
    }
  }

  else
  {
    [v3 fTopic];
    memset(&buf, 0, sizeof(buf));
    ctu::cf::assign();
    v16 = buf;
    v5 = std::string::insert(&v16, 0, "IDSP2PSync: ", 0xCuLL);
    v6 = *&v5->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v6;
    v5->__r_.__value_.__l.__size_ = 0;
    v5->__r_.__value_.__r.__words[2] = 0;
    v5->__r_.__value_.__r.__words[0] = 0;
    v7 = std::string::append(&v17, " filemanager queue", 0x12uLL);
    v8 = *&v7->__r_.__value_.__l.__data_;
    v19 = v7->__r_.__value_.__r.__words[2];
    v18 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v17.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    if (v19 >= 0)
    {
      v9 = &v18;
    }

    else
    {
      v9 = v18;
    }

    v10 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v11 = dispatch_queue_create(v9, v10);
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3321888768;
    v14[2] = sub_10155F730;
    v14[3] = &unk_101F4D0C8;
    sub_1002030F8(&v15, (a1 + 64));
    v14[4] = *(a1 + 32);
    dispatch_async(v11, v14);
    sub_1002030AC(&v15);
    if (v11)
    {
      dispatch_release(v11);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18);
    }
  }

  objc_autoreleasePoolPop(v2);
}

void sub_10155F6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_10155F730(uint64_t a1)
{
  v11 = 0;
  v2 = [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:*(a1 + 40), &v11];
  v3 = **(*(a1 + 32) + 64);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (!v4)
    {
      return;
    }

    v5 = [objc_msgSend(*(a1 + 40) "description")];
    *buf = 136315138;
    v13 = v5;
    v6 = "#I removed %s";
    v7 = v3;
    v8 = 12;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v9 = [objc_msgSend(*(a1 + 40) "description")];
    v10 = [objc_msgSend(v11 "description")];
    *buf = 136315394;
    v13 = v9;
    v14 = 2080;
    v15 = v10;
    v6 = "#I Failed to delete resource %s, err %s";
    v7 = v3;
    v8 = 22;
  }

  _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v6, buf, v8);
}

const void **sub_10155F880(const void **a1, const void **a2)
{
  sub_10005C7A4(a1 + 5, a2 + 5);
  sub_10005C7A4(a1 + 6, a2 + 6);
  sub_100060E84(a1 + 7, a2 + 7);

  return sub_1002030F8(a1 + 8, a2 + 8);
}

const void **sub_10155F8E0(const void **a1)
{
  sub_1002030AC(a1 + 8);
  sub_10000A1EC(a1 + 7);
  sub_100005978(a1 + 6);

  return sub_100005978(a1 + 5);
}

void sub_10155FA34(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v6 = *(v3 + 112);
  v4 = v3 + 112;
  v5 = v6;
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v4;
  do
  {
    v8 = CFStringCompare(*(v5 + 32), *(a1 + 40), 0);
    if (v8 != kCFCompareLessThan)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (v8 == kCFCompareLessThan));
  }

  while (v5);
  if (v7 == v4 || CFStringCompare(*(a1 + 40), *(v7 + 32), 0) == kCFCompareLessThan)
  {
LABEL_8:
    v7 = v4;
  }

  v9 = *(a1 + 32);
  if (v7 == v9 + 112)
  {
    v13 = **(v9 + 64);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 40) UTF8String];
      v20 = 136315138;
      v21 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Ack block missing for identifier %s", &v20, 0xCu);
    }
  }

  else
  {
    v10 = *(v7 + 40);
    if (v10)
    {
      v11 = *(a1 + 40);
      if (*(a1 + 48))
      {
        Code = CFErrorGetCode(*(a1 + 48));
        v10 = *(v7 + 40);
      }

      else
      {
        Code = 0;
      }

      (*(v10 + 16))(v10, v11, *(a1 + 56), Code);
      v9 = *(a1 + 32);
    }

    v15 = *(v7 + 8);
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
      v17 = v7;
      do
      {
        v16 = v17[2];
        v18 = *v16 == v17;
        v17 = v16;
      }

      while (!v18);
    }

    if (*(v9 + 104) == v7)
    {
      *(v9 + 104) = v16;
    }

    v19 = *(v9 + 112);
    --*(v9 + 120);
    sub_100018288(v19, v7);
    sub_101564CAC(v7 + 32);
    operator delete(v7);
  }

  objc_autoreleasePoolPop(v2);
}

CFTypeRef sub_10155FC10(uint64_t a1, uint64_t a2)
{
  sub_10005C7A4((a1 + 40), (a2 + 40));
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

const void **sub_10155FC54(uint64_t a1)
{
  sub_1003A5A8C((a1 + 48));

  return sub_100005978((a1 + 40));
}

void sub_10155FD00(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = *v3[8];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I  Watch pairing complete", v5, 2u);
    v3 = *(a1 + 32);
  }

  [v3 invokeDeviceChangedCallback:{objc_msgSend(v3, "fConnectedDevices")}];
  objc_autoreleasePoolPop(v2);
}

void sub_10155FFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_1000296E0(&a9);
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

void sub_101560594(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015605F0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = **(*(a1 + 32) + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I  INVITE delivery failed", &v9, 2u);
    }
  }

  [objc_msgSend(*(a1 + 32) "fInvitedDevices")];
  v5 = *(a1 + 32);
  v6 = v5[8];
  v7 = *v6;
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [objc_msgSend(v5 "fInvitedDevices")];
    v9 = 134217984;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I  Set of InvitedDevices become: %lu devices", &v9, 0xCu);
    v5 = *(a1 + 32);
    v6 = v5[8];
  }

  sub_10155E01C(v6, [v5 fInvitedDevices]);
}

CFComparisonResult sub_10156071C(uint64_t a1, CFStringRef *a2)
{
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_7;
  }

  while (1)
  {
    while (1)
    {
      v5 = v3;
      if (CFStringCompare(*a2, v3[4], 0) != kCFCompareLessThan)
      {
        break;
      }

      v3 = *v5;
      v4 = v5;
      if (!*v5)
      {
        goto LABEL_7;
      }
    }

    result = CFStringCompare(v5[4], *a2, 0);
    if (result != kCFCompareLessThan)
    {
      break;
    }

    v4 = v5 + 1;
    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }

  if (!*v4)
  {
LABEL_7:
    operator new();
  }

  return result;
}

const void **sub_10156081C(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return sub_100005978(a1);
}

void sub_101560C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, const void *);
  sub_100005978(va1);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

void sub_101560CEC(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v4 = *(a1 + 32);
    v5 = **(v4 + 64);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I  INTRO delivery failed", v6, 2u);
      v4 = *(a1 + 32);
    }

    *(v4 + 128) = 1;
  }
}

void sub_101560E34(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  if (v3[129] == 1)
  {
    [v3 whitelistDevice:*(a1 + 40) with:&__NSDictionary0__struct];
    [*(a1 + 32) invokeDeviceChangedCallback:{objc_msgSend(*(a1 + 32), "fConnectedDevices")}];
    v3 = *(a1 + 32);
  }

  v3[128] = 1;
  [*(a1 + 32) introduceMyselfIfNeeded:*(a1 + 48)];

  objc_autoreleasePoolPop(v2);
}

void sub_101560FC4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  Value = CFDictionaryGetValue(*(a1 + 40), @"capable");
  if (Value && (v4 = Value, v5 = CFGetTypeID(Value), v5 == CFBooleanGetTypeID()))
  {
    if (CFBooleanGetValue(v4))
    {
      v6 = CFDictionaryGetValue(*(a1 + 40), @"devinfo");
      if (v6)
      {
        v7 = v6;
        v8 = CFGetTypeID(v6);
        if (v8 == CFDictionaryGetTypeID())
        {
          v9 = v7;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }

      [*(a1 + 32) whitelistDevice:*(a1 + 48) with:v9];
      [*(a1 + 32) invokeDeviceChangedCallback:{objc_msgSend(*(a1 + 32), "fConnectedDevices")}];
    }

    else
    {
      [*(a1 + 32) blacklistDevice:*(a1 + 48)];
    }
  }

  else
  {
    v10 = **(*(a1 + 32) + 64);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 48) UTF8String];
      v12 = 136315394;
      v13 = v11;
      v14 = 2080;
      v15 = [@"capable" UTF8String];
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I  INTRO from %s doesnt have '%s' field", &v12, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v2);
}

const void **sub_101561148(uint64_t a1, uint64_t a2)
{
  sub_100010024((a1 + 40), (a2 + 40));

  return sub_10005C7A4((a1 + 48), (a2 + 48));
}

const void **sub_101561190(uint64_t a1)
{
  sub_100005978((a1 + 48));

  return sub_10001021C((a1 + 40));
}

id sub_101561538(os_log_t *a1, void *a2)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(a2);
        }

        v8 = *a1;
        if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [*(*(&v10 + 1) + 8 * v7) UTF8String];
          *buf = 136315138;
          v15 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I      %s", buf, 0xCu);
        }

        v7 = v7 + 1;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v10 objects:v16 count:16];
      v5 = result;
    }

    while (result);
  }

  return result;
}

id sub_101561E50(os_log_t *a1, void *a2)
{
  v4 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      v8 = 0;
      do
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a2);
        }

        v9 = IDSCopyIDForDevice();
        if (v9)
        {
          [v4 addObject:v9];
        }

        else
        {
          v10 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            v12[0] = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I  IDSCopyForDevice returned nil in sCreateDestinationSet", v12, 2u);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [a2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v4;
}

void sub_1015623E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101562644(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101562710(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(a1 + 32) count];
  v4 = *(*(a1 + 40) + 64);
  v5 = *v4;
  if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v43 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I  Set of registered devices changed: %lu device(s)", buf, 0xCu);
    v4 = *(*(a1 + 40) + 64);
  }

  sub_10155E500(v4, *(a1 + 32));
  v6 = [*(a1 + 40) fBlacklistedDeviceUuids];
  v7 = *(a1 + 40);
  if (v6)
  {
    v8 = sub_101562BD8([v7 fBlacklistedDeviceUuids], *(a1 + 32));
    v9 = [v8 count] ? v8 : 0;
    [*(a1 + 40) setFBlacklistedDeviceUuids:v9];
    v7 = *(a1 + 40);
    if (v7[130] == 1)
    {
      DevicePersistentSaveValue([v7 fBlacklistedDeviceUuidsKey], objc_msgSend(*(a1 + 40), "fBlacklistedDeviceUuids"));
      v7 = *(a1 + 40);
    }
  }

  v36 = 0;
  DevicePersistentCopyValue(buf, [v7 fWhitelistedDevicesKey], 0);
  sub_100010180(&v36, buf);
  sub_10000A1EC(buf);
  if (v36)
  {
    [*(a1 + 40) setFWhitelistedDeviceUuids:{objc_msgSend(sub_101562BD8(objc_msgSend(*(a1 + 40), "fWhitelistedDeviceUuids"), *(a1 + 32)), "mutableCopy")}];
    v10 = v36;
    v11 = *(a1 + 32);
    v12 = objc_opt_new();
    v13 = [v10 keyEnumerator];
    for (i = [v13 nextObject]; ; i = objc_msgSend(v13, "nextObject"))
    {
      v15 = i;
      if (!i)
      {
        break;
      }

      if ((sub_1015648D0(i, v11) & 1) == 0)
      {
        [v12 addObject:v15];
      }
    }

    if ([v12 count])
    {
      v10 = [v10 mutableCopy];
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v16 = [v12 countByEnumeratingWithState:&v37 objects:buf count:16];
      if (v16)
      {
        v17 = *v38;
        do
        {
          for (j = 0; j != v16; j = j + 1)
          {
            if (*v38 != v17)
            {
              objc_enumerationMutation(v12);
            }

            [v10 removeObjectForKey:*(*(&v37 + 1) + 8 * j)];
          }

          v16 = [v12 countByEnumeratingWithState:&v37 objects:buf count:16];
        }

        while (v16);
      }
    }

    v19 = [*(a1 + 40) fWhitelistedDevicesKey];
    if ([v10 count])
    {
      v20 = v10;
    }

    else
    {
      v20 = 0;
    }

    DevicePersistentSaveValue(v19, v20);
  }

  if ([*(a1 + 40) fInvitedDevices])
  {
    v21 = sub_101562BD8([*(a1 + 40) fInvitedDevices], *(a1 + 32));
    if ([v21 count])
    {
      v22 = [v21 mutableCopy];
    }

    else
    {
      v22 = 0;
    }

    [*(a1 + 40) setFInvitedDevices:v22];
  }

  v23 = objc_opt_new();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v24 = *(a1 + 32);
  v25 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
  if (v25)
  {
    v26 = *v33;
    do
    {
      for (k = 0; k != v25; k = k + 1)
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v32 + 1) + 8 * k);
        if (v28 && [*(*(&v32 + 1) + 8 * k) isLocallyPaired] && objc_msgSend(v28, "isConnected"))
        {
          [v23 addObject:v28];
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v32 objects:v41 count:16];
    }

    while (v25);
  }

  v29 = *(*(a1 + 40) + 64);
  v30 = *v29;
  if (os_log_type_enabled(*v29, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v23 count];
    *buf = 134217984;
    v43 = v31;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I  Set of connected devices changed (devicesChanged): %lu device(s)", buf, 0xCu);
    v29 = *(*(a1 + 40) + 64);
  }

  sub_10155E500(v29, v23);
  [*(a1 + 40) setFConnectedDevices:v23];
  [*(a1 + 40) invokeDeviceChangedCallback:v23];

  sub_10001021C(&v36);
  objc_autoreleasePoolPop(v2);
}

void sub_101562B84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

id sub_101562BD8(id a1, void *a2)
{
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ((sub_1015648D0(v9, a2) & 1) == 0)
        {
          [v4 addObject:v9];
        }
      }

      v6 = [a1 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  if ([v4 count])
  {
    a1 = [a1 mutableCopy];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (j = 0; j != v11; j = j + 1)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v4);
          }

          [a1 removeObject:*(*(&v15 + 1) + 8 * j)];
        }

        v11 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v11);
    }
  }

  return a1;
}

void sub_101562E0C(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 40);
  if (v3)
  {
    v4 = [v3 uniqueIDOverride];
    v5 = [*(a1 + 40) modelIdentifier];
    v6 = *(a1 + 48);
    v7 = **(v6 + 64);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v8)
    {
      buf = 138412546;
      *buf_4 = v4;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I  Active device changed: %@, %@", &buf, 0x16u);
      v6 = *(a1 + 48);
    }

    if (v4 && v5)
    {
      if (*(v6 + 40) && capabilities::ct::supportsP2PAsPhone(v8) && [+[NRPairedDeviceRegistry deviceForIDSDevice:"deviceForIDSDevice:"]
      {
        operator new();
      }
    }

    else
    {
      v9 = **(v6 + 64);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 40);
        buf = 138412290;
        *buf_4 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I ignored activePairedDevice because of incomplete descripton: %@", &buf, 0xCu);
      }
    }
  }

  (*(*(a1 + 56) + 16))();
  objc_autoreleasePoolPop(v2);
}

void sub_1015630C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1015630F8(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  v3 = a2;
  v4 = a3;
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(a1 + 16))(a1, &v3);
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_10156314C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015631D4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry getActivePairedDevice];
  if (v3)
  {
    v4 = -[NRPairedDeviceRegistry deviceForNRDevice:fromIDSDevices:](+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry, "sharedInstance"), "deviceForNRDevice:fromIDSDevices:", v3, [*(*(a1 + 32) + 8) devices]);
    if (v4)
    {
      v5 = v4;
      v6 = [v4 modelIdentifier];
      v7 = [v5 uniqueIDOverride];
      if (v6)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        operator new();
      }

      v9 = **(*(a1 + 32) + 64);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        buf = 138412290;
        *buf_4 = v5;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I ignored active device on start because of incomplete descripton: %@", &buf, 0xCu);
      }
    }
  }

  v10 = *(*(a1 + 32) + 40);
  if (v10)
  {
    sub_1015630F8(v10, 0, 0);
  }

  objc_autoreleasePoolPop(v2);
}

void sub_101563470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1015635EC(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  [*(a1 + 32) setFConnectedDevices:*(a1 + 40)];
  [*(a1 + 32) invokeDeviceChangedCallback:*(a1 + 40)];

  objc_autoreleasePoolPop(v2);
}

void sub_101563ADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100007E44(va);
  _Unwind_Resume(a1);
}

void sub_101563F10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  FileSystemInterface::~FileSystemInterface(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1015640F4(uint64_t a1)
{
  *a1 = off_101F4D248;

  sub_10001021C((a1 + 48));
  sub_100005978((a1 + 32));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101564160(uint64_t a1)
{
  sub_1015640F4(a1);

  operator delete();
}

id sub_101564198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = [IDSP2PDelegate alloc];
  v14 = *(a1 + 24);
  v13 = *(a1 + 32);
  v15 = *(a1 + 16);
  v19 = *(a1 + 8);
  v20 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  LOBYTE(v18) = *(a1 + 56);
  v16 = [(IDSP2PDelegate *)v12 initWithServiceName:v13 logPrefix:v14 onDeviceState:a3 onActiveDeviceChange:a4 onMessage:a5 onURL:a6 queue:a2 registry:&v19 capable:v18];
  *(a1 + 40) = v16;
  if (v20)
  {
    sub_100004A34(v20);
    v16 = *(a1 + 40);
  }

  if (*(a1 + 48))
  {
    [(IDSP2PDelegate *)v16 setIntroductionInfo:?];
    v16 = *(a1 + 40);
  }

  return [(IDSP2PDelegate *)v16 postActiveDeviceIdOnStart];
}

void sub_10156425C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

id sub_1015643D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  result = *(a1 + 40);
  if (result)
  {
    return [result sendMessage:a4 withName:a3 withOptions:a5 withAck:a6 toDevice:a2];
  }

  *a7 = 0;
  return result;
}

const void **sub_1015643F4(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v18 = 0;
    sub_1000296E0(&v18);
    Mutable = theDict;
  }

  if (a5)
  {
    CFDictionaryAddValue(Mutable, IDSSendMessageOptionQueueOneIdentifierKey, a3);
    Mutable = theDict;
  }

  v15 = &kCFBooleanFalse;
  if (!a6)
  {
    v15 = &kCFBooleanTrue;
  }

  CFDictionaryAddValue(Mutable, IDSSendMessageOptionNonWakingKey, *v15);
  (*(*a1 + 72))(a1, a2, a3, a4, theDict, a7);
  return sub_1000296E0(&theDict);
}

id sub_10156455C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  result = *(a1 + 40);
  if (result)
  {
    return [result sendFile:a4 withMessage:a5 withName:a3 withOptions:a6 withAck:a7 toDevice:a2];
  }

  *a8 = 0;
  return result;
}

const void **sub_101564584(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5, int a6, int a7, uint64_t a8)
{
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v20 = 0;
    sub_1000296E0(&v20);
    Mutable = theDict;
  }

  if (a6)
  {
    CFDictionaryAddValue(Mutable, IDSSendMessageOptionQueueOneIdentifierKey, a3);
    Mutable = theDict;
  }

  v17 = &kCFBooleanFalse;
  if (!a7)
  {
    v17 = &kCFBooleanTrue;
  }

  CFDictionaryAddValue(Mutable, IDSSendMessageOptionNonWakingKey, *v17);
  (*(*a1 + 96))(a1, a2, a3, a4, a5, theDict, a8);
  return sub_1000296E0(&theDict);
}

id sub_1015646FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 40);
  if (result)
  {
    return [result getDeviceInProximity];
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

id sub_101564710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 40);
  if (result)
  {
    return [result getAllRegisteredDevicesUuids];
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

id sub_101564728(uint64_t a1, const void *a2)
{
  v4 = a2;
  sub_1002A2218((a1 + 48), &v4);
  result = *(a1 + 40);
  if (result)
  {
    return [result setIntroductionInfo:*(a1 + 48)];
  }

  return result;
}

uint64_t sub_101564770(uint64_t a1, char **a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_1000CE3D4();
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

  v17 = a1;
  if (v6)
  {
    sub_100005348(a1, v6);
  }

  v13 = 0;
  v14 = 24 * v2;
  v15 = 24 * v2;
  v16 = 0;
  sub_10000501C((24 * v2), *a2);
  v7 = 24 * v2 + 24;
  v8 = *(a1 + 8) - *a1;
  v9 = 24 * v2 - v8;
  memcpy((v14 - v8), *a1, v8);
  v10 = *a1;
  *a1 = v9;
  *(a1 + 8) = v7;
  v11 = *(a1 + 16);
  *(a1 + 16) = v16;
  v15 = v10;
  v16 = v11;
  v13 = v10;
  v14 = v10;
  sub_1000054E0(&v13);
  return v7;
}

void sub_10156487C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000054E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101564890(uint64_t a1, const void **a2, void **a3)
{
  sub_10005C7A4(a1, a2);
  v5 = *a3;
  if (*a3)
  {
    v5 = _Block_copy(v5);
  }

  *(a1 + 8) = v5;
  return a1;
}

uint64_t sub_1015648D0(void *a1, void *a2)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v9;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(a2);
        }

        if ([a1 isEqualToString:{objc_msgSend(*(*(&v8 + 1) + 8 * v7), "uniqueIDOverride")}])
        {
          return 1;
        }

        ++v7;
      }

      while (v5 != v7);
      result = [a2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v5 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void *sub_101564A5C(void *a1, char *a2, uint64_t *a3, uint64_t *a4, CFTypeRef *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F4D310;
  sub_101564B60((a1 + 3), *a2, a3, *a4, *a5);
  return a1;
}

void sub_101564AE4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4D310;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101564B60(uint64_t a1, char a2, uint64_t *a3, uint64_t a4, CFTypeRef cf)
{
  v8 = *a3;
  v7 = a3[1];
  *a1 = off_101F4D248;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = a4;
  sub_100060E4C((a1 + 32), cf);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = a2;
  return a1;
}

void sub_101564BF4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F4D360;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101564C48(uint64_t a1)
{
  sub_10001021C((a1 + 88));
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    v2 = *(a1 + 24);

    operator delete(v2);
  }
}

const void **sub_101564CAC(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return sub_100005978(a1);
}

void sub_101564CF4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101564D34(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101564D74(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10001021C((result + 64));
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_101564E58(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F4D428;
  a2[1] = v2;
  return result;
}

void sub_101564E84(uint64_t a1, uint64_t *a2)
{
  v3 = **(**(a1 + 8) + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_101564F3C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F4D488))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101564F88(void *a1)
{
  if (a1)
  {
    sub_101564F88(*a1);
    sub_101564F88(a1[1]);
    sub_101564CAC((a1 + 4));

    operator delete(a1);
  }
}

uint64_t sub_101564FDC(uint64_t a1, void *a2, uint64_t a3)
{
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "wea");
  ctu::OsLogLogger::OsLogLogger(v10, &v9);
  ctu::OsLogLogger::OsLogLogger(a1, v10);
  ctu::OsLogLogger::~OsLogLogger(v10);
  ctu::OsLogContext::~OsLogContext(&v9);
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  sub_101684818((a1 + 40));
  v6 = *(a3 + 16);
  *(a1 + 64) = *a3;
  *(a1 + 80) = v6;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  v7 = a2[1];
  *(a1 + 112) = *a2;
  *(a1 + 120) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1015650A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  v14 = *(v12 + 4);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(v12 + 2);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_1015650EC(uint64_t a1, void *a2, uint64_t *a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "wea");
  ctu::OsLogLogger::OsLogLogger(v9, &v8);
  ctu::OsLogLogger::OsLogLogger(a1, v9);
  ctu::OsLogLogger::~OsLogLogger(v9);
  ctu::OsLogContext::~OsLogContext(&v8);
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  sub_101684468(a3, (a1 + 40));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 64) = 0u;
  sub_100ECB804(a1 + 88, *a3, a3[1], (a3[1] - *a3) >> 4);
  v6 = a2[1];
  *(a1 + 112) = *a2;
  *(a1 + 120) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_1015651BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (*(v12 + 63) < 0)
  {
    operator delete(*(v12 + 40));
  }

  v14 = *(v12 + 32);
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(v12 + 16);
  if (v15)
  {
    std::__shared_weak_count::__release_weak(v15);
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

void sub_101565220(ctu::OsLogLogger *this)
{
  v2 = *(this + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(this + 11);
  if (v3)
  {
    *(this + 12) = v3;
    operator delete(v3);
  }

  if (*(this + 63) < 0)
  {
    operator delete(*(this + 5));
  }

  v4 = *(this + 4);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 2);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

BOOL sub_101565298(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    v4 = *a1;
    result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_1015653F8(a1, __p);
    if (v9 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v11 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s Invalid region pointer...", buf, 0xCu);
    goto LABEL_14;
  }

  if (*v2 > 1u)
  {
    return 1;
  }

  v6 = *a1;
  result = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    sub_1015653F8(a1, __p);
    if (v9 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    *buf = 136446210;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %{public}s <-- Waiting for results...", buf, 0xCu);
LABEL_14:
    if (v9 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_1015653F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  __p = 0;
  v16 = 0uLL;
  v4 = *(a1 + 24);
  if (v4)
  {
    *(&v13.__r_.__value_.__s + 23) = 3;
    LODWORD(v13.__r_.__value_.__l.__data_) = 3811360;
    v5 = *v4;
    if (v5 > 3)
    {
      v6 = "???";
    }

    else
    {
      v6 = off_101F4D498[v5];
    }

    v7 = strlen(v6);
    v8 = std::string::append(&v13, v6, v7);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v14.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
    *&v14.__r_.__value_.__l.__data_ = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    v10 = std::string::append(&v14, ":)", 2uLL);
    v11 = v10->__r_.__value_.__r.__words[0];
    v17[0] = v10->__r_.__value_.__l.__size_;
    *(v17 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    *(&v16 + 7) = *(v17 + 7);
    __p = v11;
    *&v16 = v17[0];
    HIBYTE(v16) = v12;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    HIBYTE(v16) = 7;
    qmemcpy(&__p, " (null)", 7);
  }

  sub_100168A48((a1 + 40), &__p, a2);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p);
  }
}

void sub_101565578(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015655C0(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 112);
        if (v5)
        {
          v6 = *(a1 + 32);
          v11 = *(a1 + 24);
          v12 = v6;
          if (v6)
          {
            atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (*(a1 + 63) < 0)
          {
            sub_100005F2C(v9, *(a1 + 40), *(a1 + 48));
          }

          else
          {
            *v9 = *(a1 + 40);
            v10 = *(a1 + 56);
          }

          (*(*v5 + 56))(v5, &v11, v9);
          if (SHIBYTE(v10) < 0)
          {
            operator delete(v9[0]);
          }

          if (v12)
          {
            sub_100004A34(v12);
          }
        }

        sub_100004A34(v4);
      }
    }
  }

  else
  {
    v7 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1015653F8(a1, __p);
      v8 = v14 >= 0 ? __p : __p[0];
      *buf = 136446210;
      v16 = v8;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}s Invalid region pointer...", buf, 0xCu);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void sub_101565750(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

BOOL sub_101565790(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    return *v1 == 2;
  }

  v4 = *a1;
  result = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_1015653F8(a1, __p);
    if (v7 >= 0)
    {
      v5 = __p;
    }

    else
    {
      v5 = __p[0];
    }

    *buf = 136446210;
    v9 = v5;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s Invalid region pointer...", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    return 0;
  }

  return result;
}

void sub_101565884(NSObject **a1)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = *a1;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1015653F8(a1, __p);
      v5 = __p[0];
      if (v8 >= 0)
      {
        v5 = __p;
      }

      *buf = 136446466;
      v10 = v5;
      v11 = 2082;
      v12 = "U";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s -> %{public}s", buf, 0x16u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = a1[3];
    }

    LODWORD(v2->isa) = 1;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1015653F8(a1, __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s Null region pointer..", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1015659FC(NSObject **a1)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = *a1;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1015653F8(a1, __p);
      v5 = __p[0];
      if (v8 >= 0)
      {
        v5 = __p;
      }

      *buf = 136446466;
      v10 = v5;
      v11 = 2082;
      v12 = "I";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s -> %{public}s", buf, 0x16u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = a1[3];
    }

    LODWORD(v2->isa) = 2;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1015653F8(a1, __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s Null region pointer..", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_101565B74(NSObject **a1)
{
  v2 = a1[3];
  v3 = *a1;
  v4 = *a1;
  if (v2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      sub_1015653F8(a1, __p);
      v5 = __p[0];
      if (v8 >= 0)
      {
        v5 = __p;
      }

      *buf = 136446466;
      v10 = v5;
      v11 = 2082;
      v12 = "O";
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %{public}s -> %{public}s", buf, 0x16u);
      if (v8 < 0)
      {
        operator delete(__p[0]);
      }

      v2 = a1[3];
    }

    LODWORD(v2->isa) = 3;
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_1015653F8(a1, __p);
    v6 = v8 >= 0 ? __p : __p[0];
    *buf = 136446210;
    v10 = v6;
    _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%{public}s Null region pointer..", buf, 0xCu);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_101565CEC(uint64_t a1, int a2)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *v2 = a2;
  }

  else
  {
    v4 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      sub_1015653F8(a1, __p);
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136446210;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%{public}s Null region pointer..", buf, 0xCu);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

BOOL sub_101565DD4(uint64_t a1)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  v4 = *(a1 + 88);
  v3 = *(a1 + 96);
  v5 = *(a1 + 120);
  if (v3 == v4)
  {
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v8 = *(a1 + 112);
        if (v8)
        {
          v9 = *(a1 + 64);
          v10 = *(a1 + 72);
          v11 = *(a1 + 80);
          if (*(a1 + 63) < 0)
          {
            sub_100005F2C(v20, *(a1 + 40), *(a1 + 48));
          }

          else
          {
            *v20 = *(a1 + 40);
            v21 = *(a1 + 56);
          }

          (*(*v8 + 40))(v22, v8, v20, v9, v10, v11);
          v17 = *v22;
          v22[0] = 0;
          v22[1] = 0;
          v18 = *(a1 + 32);
          *(a1 + 24) = v17;
          if (v18)
          {
            sub_100004A34(v18);
            if (v22[1])
            {
              sub_100004A34(v22[1]);
            }
          }

          if (SHIBYTE(v21) < 0)
          {
            operator delete(v20[0]);
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    sub_1015653F8(a1, v22);
    if (v23 >= 0)
    {
      v19 = v22;
    }

    else
    {
      v19 = v22[0];
    }

    *buf = 136446210;
    v30 = v19;
    v16 = "#I Geofence created (circ): %{public}s ";
  }

  else
  {
    if (v5)
    {
      v6 = std::__shared_weak_count::lock(v5);
      if (v6)
      {
        v7 = *(a1 + 112);
        if (v7)
        {
          v27 = 0;
          v28 = 0;
          v26 = 0;
          sub_100ECB804(&v26, *(a1 + 88), *(a1 + 96), (*(a1 + 96) - *(a1 + 88)) >> 4);
          if (*(a1 + 63) < 0)
          {
            sub_100005F2C(__p, *(a1 + 40), *(a1 + 48));
          }

          else
          {
            *__p = *(a1 + 40);
            v25 = *(a1 + 56);
          }

          (*(*v7 + 48))(v22, v7, &v26, __p);
          v12 = *v22;
          v22[0] = 0;
          v22[1] = 0;
          v13 = *(a1 + 32);
          *(a1 + 24) = v12;
          if (v13)
          {
            sub_100004A34(v13);
            if (v22[1])
            {
              sub_100004A34(v22[1]);
            }
          }

          if (SHIBYTE(v25) < 0)
          {
            operator delete(__p[0]);
          }

          if (v26)
          {
            v27 = v26;
            operator delete(v26);
          }
        }
      }
    }

    else
    {
      v6 = 0;
    }

    v14 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_42;
    }

    sub_1015653F8(a1, v22);
    if (v23 >= 0)
    {
      v15 = v22;
    }

    else
    {
      v15 = v22[0];
    }

    *buf = 136446210;
    v30 = v15;
    v16 = "#I Geofence created (poly): %{public}s ";
  }

  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
  if (v23 < 0)
  {
    operator delete(v22[0]);
  }

LABEL_42:
  if (v6)
  {
    sub_100004A34(v6);
  }

  return *(a1 + 24) != 0;
}

void sub_101566150(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v2 = *a1;
  v3 = a1[1];
  if (*a1 != v3)
  {
    do
    {
      v5 = *v2;
      if (*(*v2 + 96) == *(*v2 + 88))
      {
        v7 = *(a2 + 32);
        v6 = *(a2 + 40);
        if (v7 >= v6)
        {
          v10 = *(a2 + 24);
          v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v10) >> 3);
          v12 = v11 + 1;
          if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            sub_1000CE3D4();
          }

          v13 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v10) >> 3);
          if (2 * v13 > v12)
          {
            v12 = 2 * v13;
          }

          if (v13 >= 0x555555555555555)
          {
            v14 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v14 = v12;
          }

          if (v14)
          {
            sub_100105F20(a2 + 24, v14);
          }

          v15 = 24 * v11;
          v16 = *(v5 + 64);
          *(v15 + 16) = *(v5 + 80);
          *v15 = v16;
          v9 = 24 * v11 + 24;
          v17 = *(a2 + 24);
          v18 = *(a2 + 32) - v17;
          v19 = v15 - v18;
          memcpy((v15 - v18), v17, v18);
          v20 = *(a2 + 24);
          *(a2 + 24) = v19;
          *(a2 + 32) = v9;
          *(a2 + 40) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          v8 = *(v5 + 64);
          *(v7 + 16) = *(v5 + 80);
          *v7 = v8;
          v9 = v7 + 24;
        }

        *(a2 + 32) = v9;
      }

      else
      {
        sub_100FD8724(a2, (*v2 + 88));
      }

      v2 += 2;
    }

    while (v2 != v3);
  }
}

uint64_t sub_1015662D0(uint64_t result, uint64_t a2, int a3)
{
  *(result + 8) = a2;
  *(result + 16) = a3;
  *(result + 20) = 0;
  return result;
}

double sub_1015662DC(ctu::OsLogLogger *a1, uint64_t a2, int a3, int a4)
{
  v7 = ctu::OsLogLogger::OsLogLogger(a1, "com.apple.telephony", "msg.mms.pdu");
  *&result = 0x6A0000006ALL;
  *(v7 + 24) = 0x6A0000006ALL;
  *(v7 + 32) = 1;
  *(v7 + 34) = 1;
  *(v7 + 36) = a4;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  *(v7 + 20) = 0;
  return result;
}

uint64_t sub_101566340(ctu::OsLogLogger *a1, uint64_t a2, unint64_t a3)
{
  result = ctu::OsLogLogger::OsLogLogger(a1, "com.apple.telephony", "msg.mms.pdu");
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  *(result + 33) = *(a2 + 33);
  *(result + 34) = *(a2 + 34);
  *(result + 36) = *(a2 + 36);
  v6 = *(a2 + 20);
  v7 = (*(a2 + 16) - v6);
  if (v7 >= a3)
  {
    LODWORD(v7) = a3;
  }

  *(result + 8) = *(a2 + 8) + v6;
  *(result + 16) = v7;
  *(result + 20) = 0;
  return result;
}

BOOL sub_1015663C4(uint64_t a1, _BYTE *a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  if (v2 < v3)
  {
    v4 = *(a1 + 8);
    *(a1 + 20) = v2 + 1;
    *a2 = *(v4 + v2);
  }

  return v2 < v3;
}

uint64_t sub_1015663F0(uint64_t result)
{
  v1 = *(result + 20);
  if (v1 < *(result + 16))
  {
    *(result + 20) = v1 + 1;
  }

  return result;
}

uint64_t sub_101566408(uint64_t a1, std::string *a2)
{
  result = sub_1015664B4(a1, a2, 0xFFFFFFFF);
  if (result)
  {
    if (*(a1 + 33) == 1 && ((v5 = SHIBYTE(a2->__r_.__value_.__r.__words[2]), v5 >= 0) ? (size = HIBYTE(a2->__r_.__value_.__r.__words[2])) : (size = a2->__r_.__value_.__l.__size_), size))
    {
      v7 = 0;
      if (v5 >= 0)
      {
        v8 = a2;
      }

      else
      {
        v8 = a2->__r_.__value_.__r.__words[0];
      }

      v9 = 1;
      while (1)
      {
        v10 = v8->__r_.__value_.__s.__data_[v7];
        if (v10 < 0 || memchr("()<>@,;:\\/[]?={} \t", v10, 0x14uLL))
        {
          break;
        }

        v7 = v9;
        if (size <= v9++)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1015664B4(uint64_t a1, std::string *__dst, unsigned int a3)
{
  if (a3 == -1)
  {
    v5 = *(a1 + 20);
    v6 = (*(a1 + 16) - v5);
    if (v6)
    {
      v7 = 0;
      while (*(*(a1 + 8) + v5 + v7))
      {
        if (v6 == ++v7)
        {
          goto LABEL_18;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    if (v7 == v6 || *(*(a1 + 8) + v5 + v7))
    {
      goto LABEL_18;
    }

    v4 = v7 + 1;
  }

  else
  {
    v4 = a3;
    if (!a3)
    {
      if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
      {
        *__dst->__r_.__value_.__l.__data_ = 0;
        __dst->__r_.__value_.__l.__size_ = 0;
      }

      else
      {
        __dst->__r_.__value_.__s.__data_[0] = 0;
        *(&__dst->__r_.__value_.__s + 23) = 0;
      }

      return 1;
    }

    LODWORD(v5) = *(a1 + 20);
    LODWORD(v6) = *(a1 + 16) - v5;
  }

  if (v4 <= v6)
  {
    sub_1000167D4(__dst, (*(a1 + 8) + v5), v4 - 1);
    *(a1 + 20) += v4;
    return 1;
  }

LABEL_18:
  result = 0;
  if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
  {
    *__dst->__r_.__value_.__l.__data_ = 0;
    __dst->__r_.__value_.__l.__size_ = 0;
  }

  else
  {
    __dst->__r_.__value_.__s.__data_[0] = 0;
    *(&__dst->__r_.__value_.__s + 23) = 0;
  }

  return result;
}

uint64_t sub_1015665C0(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 20);
  if (v2 >= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(*(a1 + 8) + v2);
  if (*(a1 + 33) == 1 && v3 < 0)
  {
    return 0;
  }

  if (v3 == 127)
  {
    *(a1 + 20) = v2 + 1;
  }

  return sub_1015664B4(a1, a2, 0xFFFFFFFF);
}

uint64_t sub_101566604(uint64_t a1, int *a2)
{
  v2 = *(a1 + 20);
  if (v2 >= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  *(a1 + 20) = v2 + 1;
  v4 = *(v3 + v2);
  if (v4 > 0x1F)
  {
    return 0;
  }

  if (v4 == 31)
  {
    return sub_101566644(a1, a2);
  }

  *a2 = v4;
  return 1;
}

uint64_t sub_101566644(uint64_t a1, int *a2)
{
  v2 = 0;
  *a2 = 0;
  v3 = 5;
  while (1)
  {
    v5 = *(a1 + 16);
    v4 = *(a1 + 20);
    if (v5 == v4)
    {
      return 0;
    }

    if (v4 >= v5)
    {
      break;
    }

    v6 = *(a1 + 8);
    *(a1 + 20) = v4 + 1;
    v7 = *(v6 + v4);
    v2 = v7 & 0x7F | (*a2 << 7);
    *a2 = v2;
    if ((v7 & 0x80) == 0)
    {
      return 1;
    }

    if (!--v3)
    {
      return 0;
    }
  }

  *a2 = v2 << 7;
  return 1;
}

uint64_t sub_1015666A8(uint64_t a1, int *a2)
{
  v3 = *(a1 + 16);
  v2 = *(a1 + 20);
  if (v2 >= v3)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = v2 + 1;
  *(a1 + 20) = v2 + 1;
  v6 = *(v4 + v2);
  if (v6 > 0x1E || v3 - v5 < v6)
  {
    return 0;
  }

  *a2 = 0;
  if (v6)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v10 = *(a1 + 20);
      if (v10 < *(a1 + 16))
      {
        *(a1 + 20) = v10 + 1;
        v9 = *(v4 + v10);
        v8 = *a2;
      }

      v8 = v9 | (v8 << 8);
      *a2 = v8;
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t sub_101566724(uint64_t a1, int *a2)
{
  v2 = *(a1 + 20);
  if (v2 >= *(a1 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 8);
  if ((*(v3 + v2) & 0x80000000) == 0)
  {
    return sub_1015666A8(a1, a2);
  }

  *(a1 + 20) = v2 + 1;
  v5 = *(v3 + v2);
  if ((v5 & 0x80000000) == 0)
  {
    return 0;
  }

  *a2 = v5 & 0x7F;
  return 1;
}

uint64_t sub_10156676C(uint64_t a1, std::string *__dst, unsigned int *a3, _DWORD *a4)
{
  v4 = *(a1 + 20);
  if (v4 >= *(a1 + 16))
  {
    return 0;
  }

  if (*(*(a1 + 8) + v4) == 127)
  {
    *(a1 + 20) = v4 + 1;
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      *__dst->__r_.__value_.__l.__data_ = 0;
      __dst->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __dst->__r_.__value_.__s.__data_[0] = 0;
      *(&__dst->__r_.__value_.__s + 23) = 0;
    }

    v13 = sub_1015664B4(a1, __dst, 0xFFFFFFFF);
    v27 = 4;
    *a3 = 4;
    if (a4)
    {
      *a4 = 4;
      v27 = *a3;
    }

    v28 = *(a1 + 24);
    if (v27 != v28 && v28)
    {
      if (v27 == 3 && v28 == 106)
      {
        goto LABEL_48;
      }

      if (sub_1014F7EA0(__dst, __dst, v27, v28))
      {
LABEL_50:
        v29 = *(a1 + 24);
        goto LABEL_51;
      }
    }

    v16 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      return v13;
    }

    v30 = sub_101540E9C(*a3);
    v31 = *a3;
    v32 = sub_101540E9C(*(a1 + 24));
    v33 = *(a1 + 24);
    *buf = 136315906;
    v44 = v30;
    v45 = 1024;
    v46 = v31;
    v47 = 2080;
    v48 = v32;
    v49 = 1024;
    v50 = v33;
    v21 = "unable to convert from charset %s (%d) to %s (%d)";
    goto LABEL_54;
  }

  if (!*(*(a1 + 8) + v4))
  {
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      *__dst->__r_.__value_.__l.__data_ = 0;
      __dst->__r_.__value_.__l.__size_ = 0;
    }

    else
    {
      __dst->__r_.__value_.__s.__data_[0] = 0;
      *(&__dst->__r_.__value_.__s + 23) = 0;
    }

    v25 = *(a1 + 24);
    if (!v25)
    {
      v25 = 106;
    }

    *a3 = v25;
    if (a4)
    {
      *a4 = v25;
    }

    v26 = *(a1 + 20);
    if (v26 < *(a1 + 16))
    {
      *(a1 + 20) = v26 + 1;
    }

    return 1;
  }

  v42 = 0;
  if (!sub_101566604(a1, &v42))
  {
    *(a1 + 20) = v4;
    *a3 = 106;
    if (a4)
    {
      *a4 = 106;
    }

    v13 = sub_1015665C0(a1, __dst);
    if (v13)
    {
      v22 = *a3;
      v23 = *(a1 + 24);
      if (*a3 != v23)
      {
        if (v23)
        {
          if (v22 == 3 && v23 == 106)
          {
            v24 = 106;
LABEL_57:
            *a3 = v24;
            return 1;
          }

          if (sub_1014F7EA0(__dst, __dst, v22, v23))
          {
            v24 = *(a1 + 24);
            goto LABEL_57;
          }
        }
      }
    }

    v36 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      return v13;
    }

    v38 = sub_101540E9C(*a3);
    v39 = *a3;
    v40 = sub_101540E9C(*(a1 + 24));
    v41 = *(a1 + 24);
    *buf = 136316162;
    v44 = v38;
    v45 = 1024;
    v46 = v39;
    v47 = 2080;
    v48 = v40;
    v49 = 1024;
    v50 = v41;
    v51 = 1024;
    v52 = v13;
    v21 = "unable to convert from charset %s (%d) to %s (%d) decodeWspSuccess = (%d)";
    v34 = v36;
    v35 = 40;
LABEL_61:
    _os_log_error_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, v21, buf, v35);
    return v13;
  }

  v9 = v42;
  if (v42 < 2)
  {
    return 0;
  }

  v10 = *(a1 + 16) - *(a1 + 20);
  if (v10 < v42 || !sub_101566724(a1, a3))
  {
    return 0;
  }

  if (a4)
  {
    *a4 = *a3;
  }

  v11 = *(a1 + 16);
  v12 = *(a1 + 20);
  if (v12 < v11 && *(*(a1 + 8) + v12) == 127)
  {
    *(a1 + 20) = ++v12;
  }

  v13 = sub_1015664B4(a1, __dst, v9 + v11 - (v10 + v12));
  v14 = *a3;
  v15 = *(a1 + 24);
  if (*a3 != v15 && v15)
  {
    if (v14 != 3 || v15 != 106)
    {
      if (!sub_1014F7EA0(__dst, __dst, v14, v15))
      {
        goto LABEL_22;
      }

      goto LABEL_50;
    }

LABEL_48:
    v29 = 106;
LABEL_51:
    *a3 = v29;
    return v13;
  }

LABEL_22:
  v16 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    v17 = sub_101540E9C(*a3);
    v18 = *a3;
    v19 = sub_101540E9C(*(a1 + 24));
    v20 = *(a1 + 24);
    *buf = 136315906;
    v44 = v17;
    v45 = 1024;
    v46 = v18;
    v47 = 2080;
    v48 = v19;
    v49 = 1024;
    v50 = v20;
    v21 = "unable to convert from charset %s (%d) to %s (%d)";
LABEL_54:
    v34 = v16;
    v35 = 34;
    goto LABEL_61;
  }

  return v13;
}

uint64_t sub_101566BAC(uint64_t result, unsigned int a2)
{
  v2 = *(result + 20);
  v3 = *(result + 16) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  *(result + 20) = v3 + v2;
  return result;
}

std::string *sub_101566BC8(std::string *result, unsigned int a2, unsigned int a3, std::string *a4)
{
  v4 = a3 - a2;
  if (a3 > a2)
  {
    v6 = result;
    v11 = 0;
    *__str = 0;
    v7 = a3 - 1;
    v8 = a2;
    do
    {
      snprintf(__str, 0xAuLL, "%.2hhx", *(v6->__r_.__value_.__l.__size_ + v8));
      v9 = strlen(__str);
      result = std::string::append(a4, __str, v9);
      if (v7 != v8)
      {
        result = std::string::append(a4, " ", 1uLL);
      }

      ++v8;
      --v4;
    }

    while (v4);
  }

  return result;
}

void sub_1015670EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101567144(uint64_t a1, uint64_t a2)
{
  memset(&v25, 0, sizeof(v25));
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v3 >= v4)
  {
LABEL_16:
    v14 = 0;
    goto LABEL_17;
  }

  v6 = *(a1 + 8);
  v7 = v3 + 1;
  *(a1 + 20) = v3 + 1;
  v8 = *(v6 + v3) & 0x7F;
  v10 = a2 + 8;
  v9 = *(a2 + 8);
  if (v8 >= (*(v10 + 8) - v9) >> 3 || (v11 = *(v9 + 8 * v8)) == 0)
  {
    if (v4 - v7 >= 0x1E)
    {
      v18 = 30;
    }

    else
    {
      v18 = v4 - v7;
    }

    sub_101566BC8(a1, v3, v18 + v7, &v25);
    v19 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v21 = *(a1 + 20);
      v22 = &v25;
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v22 = v25.__r_.__value_.__r.__words[0];
      }

      *buf = 67109890;
      *v27 = v8;
      *&v27[4] = 1024;
      *&v27[6] = v21;
      *v28 = 1024;
      *&v28[2] = v18;
      LOWORD(v29[0]) = 2080;
      *(v29 + 2) = v22;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "unknown header encoding 0x%.2x at byte %u: next %d bytes %s", buf, 0x1Eu);
    }

    goto LABEL_16;
  }

  sub_101566BC8(a1, v3, v7, &v25);
  v12 = *(a1 + 20);
  v13 = (*(**(v11 + 32) + 96))(*(v11 + 32));
  v14 = v13;
  if (v13)
  {
    v15 = *(a1 + 20);
    if (((*(*v13 + 24))(v13, a1) & 1) == 0)
    {
      if ((*(a1 + 16) - *(a1 + 20)) >= 0x1E)
      {
        v16 = 30;
      }

      else
      {
        v16 = *(a1 + 16) - *(a1 + 20);
      }

      std::string::append(&v25, " ", 1uLL);
      sub_101566BC8(a1, *(a1 + 20) - 1, *(a1 + 20) + v16, &v25);
      v17 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        v23 = (*(*v14 + 64))(v14);
        v24 = &v25;
        if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v24 = v25.__r_.__value_.__r.__words[0];
        }

        *buf = 136315650;
        *v27 = v23;
        *&v27[8] = 1024;
        *v28 = v16;
        *&v28[4] = 2080;
        v29[0] = v24;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "unable to decode encoded header '%s': next %d bytes: %s", buf, 0x1Cu);
      }

      (*(*v14 + 8))(v14);
      v14 = 0;
      *(a1 + 20) = v15;
    }

    std::string::append(&v25, ": ", 2uLL);
    sub_101566BC8(a1, v12, *(a1 + 20), &v25);
  }

LABEL_17:
  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  return v14;
}

void sub_101567458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101567484(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 20);
  if (v2 >= *(a1 + 16))
  {
    return 0;
  }

  if ((*(*(a1 + 8) + v2) & 0x80000000) == 0)
  {
    if (*(a1 + 34) == 1)
    {
      sub_101566CB8();
    }

    return 0;
  }

  return sub_101567144(a1, a2);
}

uint64_t sub_1015674B8(uint64_t a1, void *a2)
{
  while (1)
  {
    if (*(a1 + 16) == *(a1 + 20))
    {
      return 1;
    }

    v4 = (*(*a2 + 16))(a2);
    v5 = sub_101567484(a1, v4);
    if (!v5)
    {
      break;
    }

    v6 = v5;
    v7 = 1;
    sub_1013D7A0C(a2, v5, 1);
    v8 = (*(*v6 + 64))(v6);
    if (!strcmp(v8, "Content-Type"))
    {
      return v7;
    }
  }

  return 0;
}

void sub_101567598(uint64_t a1, uint64_t a2)
{
  v4 = sub_1013D8420(a2, "Content-Type");
  if (v4)
  {
    v5 = v4[3];
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1013D84A0(v5 + 8, "charset");
  v7 = (v6 + 20);
  if (!v6)
  {
    v7 = &unk_101988A6C;
  }

  v8 = *v7;
  if (!*v7)
  {
    v8 = *(a1 + 28);
    sub_1011F3158((v5 + 8), v8);
  }

  if (v8 != *(a1 + 24))
  {
    memset(&__p, 0, sizeof(__p));
    sub_1000167D4(&__p, *(a2 + 72), *(a2 + 96));
    v9 = *(a1 + 24);
    if (v8 != v9 && v9 != 0)
    {
      if (v8 == 3 && v9 == 106 || sub_1014F7EA0(&__p, &__p, v8, v9))
      {
        goto LABEL_21;
      }

      v9 = *(a1 + 24);
    }

    if (!sub_1014F7EA0(&__p, &__p, v9, v9) && !sub_1014F7EA0(&__p, &__p, 3u, *(a1 + 24)))
    {
      v11 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        v12 = sub_101540E9C(v8);
        v13 = sub_101540E9C(*(a1 + 24));
        v14 = *(a1 + 24);
        *buf = 136315906;
        *&buf[4] = v12;
        *&buf[12] = 1024;
        *&buf[14] = v8;
        *&buf[18] = 2080;
        *&buf[20] = v13;
        v28 = 1024;
        v29 = v14;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "unable to convert from charset %s (%d) to %s (%d)", buf, 0x22u);
      }

      goto LABEL_28;
    }

LABEL_21:
    v15 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
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
      v15 = __p.__r_.__value_.__r.__words[1];
    }

    sub_100EA264C(a2, p_p, v15);
    sub_1011F3158((v5 + 8), *(a1 + 24));
    v17 = sub_1013D8420(a2, "Content-Disposition");
    if (v17)
    {
      sub_1011F3158(v17 + 4, *(a1 + 24));
    }

LABEL_28:
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  v18 = sub_1013D84A0(v5 + 8, "charset");
  v19 = v18 + 20;
  if (!v18)
  {
    v19 = &unk_101988A6C;
  }

  if (*v19 == 106)
  {
    memset(buf, 0, 24);
    sub_1000167D4(buf, *(a2 + 72), *(a2 + 96));
    v20 = *a1;
    v21 = os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "About to decode the body private -> public", &__p, 2u);
    }

    v22 = *(a1 + 36);
    Registry::get(&v25, v21);
    *&__p.__r_.__value_.__l.__data_ = v25;
    v25 = 0uLL;
    sub_100839978(v22, &__p, buf, 1);
    if (__p.__r_.__value_.__l.__size_)
    {
      sub_100004A34(__p.__r_.__value_.__l.__size_);
    }

    if (*(&v25 + 1))
    {
      sub_100004A34(*(&v25 + 1));
    }

    v23 = buf[23];
    if (buf[23] >= 0)
    {
      v24 = buf;
    }

    else
    {
      v24 = *buf;
    }

    if (buf[23] < 0)
    {
      v23 = *&buf[8];
    }

    sub_100EA264C(a2, v24, v23);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }
}

void sub_1015678D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101567938(NSObject **a1, int a2)
{
  __p = 0;
  v12 = 0;
  v13 = 0;
  if (sub_101567AE4(a1, &__p))
  {
    v4 = __p;
    if (v12 != __p)
    {
      v5 = 0;
      v6 = 0;
      v7 = 1;
      while (1)
      {
        if (v6)
        {
          if (sub_101567D38(v6, v4[v5]) < 1)
          {
            v4 = __p;
            v8 = *(__p + v5);
            if (v8)
            {
              (*(*v8 + 8))(v8);
              v4 = __p;
            }

            goto LABEL_8;
          }

          (*(*v6 + 8))(v6);
          v4 = __p;
        }

        v6 = v4[v5];
LABEL_8:
        v5 = v7++;
        if (v5 >= (v12 - v4) >> 3)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v9 = *a1;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v15 = a2;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "unable to decode multipart/alternative part %u", buf, 8u);
  }

  v6 = 0;
LABEL_15:
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  return v6;
}

void sub_101567AC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_101567AE4(uint64_t a1, void *a2)
{
  v16 = 0;
  v4 = *(a1 + 20);
  if (sub_101566644(a1, &v16))
  {
    memset(&__p, 0, sizeof(__p));
    sub_101566BC8(a1, v4, *(a1 + 20), &__p);
    v5 = v16;
    if (v16)
    {
      v6 = 0;
      v7 = 0;
      while (1)
      {
        *buf = sub_101567DD0(a1, v7);
        if (!*buf)
        {
          break;
        }

        sub_1013D7F94(a2, buf);
        v6 = ++v7 >= v5;
        if (v5 == v7)
        {
          goto LABEL_6;
        }
      }

      v12 = *a2;
      v13 = a2[1];
      if (*a2 != v13)
      {
        do
        {
          if (*v12)
          {
            (*(**v12 + 8))(*v12);
          }

          ++v12;
        }

        while (v12 != v13);
        v12 = *a2;
      }

      a2[1] = v12;
    }

    else
    {
LABEL_6:
      v8 = *(a1 + 20);
      if (*(a1 + 16) != v8)
      {
        v9 = 0;
        do
        {
          *buf = sub_101567DD0(a1, v5);
          if (!*buf)
          {
            *(a1 + 20) = v8;
            goto LABEL_23;
          }

          sub_1013D7F94(a2, buf);
          v8 = *(a1 + 20);
          --v9;
        }

        while (*(a1 + 16) != v8);
        if (v9)
        {
          v10 = *a1;
          if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109376;
            *&buf[4] = v5 - v9;
            v18 = 1024;
            v19 = v5;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I found %u actual entries with nEntries = %u", buf, 0xEu);
          }
        }
      }

LABEL_23:
      v6 = 1;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "unable to decode nEntries for multipart message", &__p, 2u);
    }

    return 0;
  }

  return v6;
}

void sub_101567D14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101567D38(uint64_t a1, uint64_t a2)
{
  v3 = sub_1013D8420(a1, "Content-Type");
  if (v3 && (v4 = v3[3]) != 0)
  {
    v5 = !sub_100E5F430(v4, "text", "plain");
  }

  else
  {
    v5 = 100;
  }

  v6 = sub_1013D8420(a2, "Content-Type");
  if (v6 && (v7 = v6[3]) != 0)
  {
    v8 = sub_100E5F430(v7, "text", "plain") - 1;
  }

  else
  {
    v8 = -100;
  }

  return (v8 + v5);
}

uint64_t sub_101567DD0(uint64_t a1, unsigned int a2)
{
  v4 = *(a1 + 20);
  if (*(a1 + 16) != v4)
  {
    v26 = 0;
    if (sub_101566644(a1, &v26))
    {
      memset(&__p, 0, sizeof(__p));
      sub_101566BC8(a1, v4, *(a1 + 20), &__p);
      v24 = 0;
      v5 = *(a1 + 20);
      if (*(a1 + 16) == v5 || (sub_101566644(a1, &v24) & 1) == 0)
      {
        v8 = *a1;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 67109120;
        v28 = a2;
        v10 = "Couldn't decode dataLen for part %u";
      }

      else
      {
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          *__p.__r_.__value_.__l.__data_ = 0;
          __p.__r_.__value_.__l.__size_ = 0;
        }

        else
        {
          __p.__r_.__value_.__s.__data_[0] = 0;
          *(&__p.__r_.__value_.__s + 23) = 0;
        }

        sub_101566BC8(a1, v5, *(a1 + 20), &__p);
        v9 = *(a1 + 20);
        if (*(a1 + 16) != v9)
        {
          v11 = sub_1013D76B8();
          v12 = (*(**(v11 + 32) + 96))(*(v11 + 32));
          if ((*(*v12 + 24))(v12, a1))
          {
            v14 = *(a1 + 16);
            v13 = *(a1 + 20);
            v15 = v9 - v13 + v26;
            v26 = v15;
            v16 = v14 - v13;
            if (v15 <= v14 - v13)
            {
              operator new();
            }

            v17 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109376;
              v28 = v15;
              v29 = 1024;
              v30 = v16;
              _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "HeadersLen %u > remaining %u", buf, 0xEu);
            }

            sub_10000501C(v20, "");
            sub_1015685C4(a1, "bad_part_headersfLen", v20);
            if ((v21 & 0x80000000) == 0)
            {
              goto LABEL_11;
            }

            v18 = v20[0];
          }

          else
          {
            v19 = *a1;
            if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              v28 = a2;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Couldn't decode Content-Type for part %u", buf, 8u);
            }

            sub_10000501C(v22, "");
            sub_1015685C4(a1, "bad_part_content_type", v22);
            if ((v23 & 0x80000000) == 0)
            {
              goto LABEL_11;
            }

            v18 = v22[0];
          }

          operator delete(v18);
LABEL_11:
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          return 0;
        }

        v8 = *a1;
        if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_11;
        }

        *buf = 67109120;
        v28 = a2;
        v10 = "out of buffer before Content-Type for part %u";
      }

      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, v10, buf, 8u);
      goto LABEL_11;
    }
  }

  v6 = *a1;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v28 = a2;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Couldn't decode headersLen for part %u", buf, 8u);
  }

  return 0;
}

void sub_101568500(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015685C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v7 = *(a3 + 16);
  }

  sub_101569C5C(a2, v4, v5, __p);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101568648(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101568664(uint64_t a1)
{
  v1 = *(a1 + 20);
  if (v1 >= *(a1 + 16))
  {
    return 0;
  }

  if (*(*(a1 + 8) + v1) < 0)
  {
    *(a1 + 20) = v1 + 1;
    operator new();
  }

  v18 = 0;
  if (sub_101566604(a1, &v18))
  {
    v3 = *(a1 + 20);
    v17 = 0;
    if (sub_101566724(a1, &v17))
    {
      operator new();
    }

    *(a1 + 20) = v3;
    __p[0] = 0;
    __p[1] = 0;
    *&v15 = 0;
    v6 = sub_1015664B4(a1, __p, 0xFFFFFFFF);
    if (v6)
    {
      if ((SBYTE7(v15) & 0x80u) == 0)
      {
        v7 = __p;
      }

      else
      {
        v7 = __p[0];
      }

      v5 = sub_100E5F8A8(v7);
      if (v5)
      {
LABEL_19:
        if (SBYTE7(v15) < 0)
        {
          operator delete(__p[0]);
        }

        if (v6)
        {
          v9 = *(a1 + 20);
          v10 = v3 - v9 + v18;
          v18 = v10;
          if (v5)
          {
            v16 = 0;
            *__p = 0u;
            v15 = 0u;
            sub_101566340(__p, a1, v10);
            if ((sub_1015674B8(__p, v5 + 1) & 1) == 0)
            {
              (*(*v5 + 8))(v5);
              v5 = 0;
            }

            ctu::OsLogLogger::~OsLogLogger(__p);
            v10 = v18;
            v9 = *(a1 + 20);
          }

          if (*(a1 + 16) - v9 < v10)
          {
            v10 = *(a1 + 16) - v9;
          }

          *(a1 + 20) = v10 + v9;
          return v5;
        }

        return 0;
      }

      v8 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        v13 = __p;
        if (SBYTE7(v15) < 0)
        {
          v13 = __p[0];
        }

        *buf = 136315138;
        v20 = v13;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%s is not a valid content type", buf, 0xCu);
      }
    }

    v5 = 0;
    goto LABEL_19;
  }

  *(a1 + 20) = v1;
  __p[0] = 0;
  __p[1] = 0;
  *&v15 = 0;
  if (sub_1015664B4(a1, __p, 0xFFFFFFFF))
  {
    if ((SBYTE7(v15) & 0x80u) == 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    v5 = sub_100E5F8A8(v4);
  }

  else
  {
    v12 = *a1;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "couldn't decode contentType", buf, 2u);
    }

    v5 = 0;
  }

  if (SBYTE7(v15) < 0)
  {
    operator delete(__p[0]);
  }

  return v5;
}

void sub_10156949C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101569588(uint64_t a1, void *a2, std::string *a3, std::string *a4, std::string *a5, std::string *a6)
{
  v13 = 0;
  result = sub_101566724(a1, &v13);
  if (result)
  {
    result = sub_1015664B4(a1, a3, 0xFFFFFFFF);
    if (result)
    {
      result = sub_1015664B4(a1, a4, 0xFFFFFFFF);
      if (result)
      {
        result = sub_1015664B4(a1, a5, 0xFFFFFFFF);
        if (result)
        {
          result = sub_1015664B4(a1, a6, 0xFFFFFFFF);
        }
      }
    }
  }

  *a2 = v13;
  return result;
}

uint64_t sub_101569638(uint64_t a1, _DWORD *a2)
{
  *a2 = -1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 20);
  if (v4 - v3 <= 2)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      v6 = "unable to decode wap push: bodylen = %u";
LABEL_33:
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, buf, 8u);
      return 0;
    }

    return 0;
  }

  if (v4 > v3)
  {
    *(a1 + 20) = ++v3;
  }

  if (v3 >= v4)
  {
    v9 = 0;
  }

  else
  {
    v8 = *(a1 + 8);
    *(a1 + 20) = v3 + 1;
    v9 = *(v8 + v3++);
  }

  if (v3 >= v4)
  {
    v11 = 0;
  }

  else
  {
    v10 = *(a1 + 8);
    *(a1 + 20) = v3 + 1;
    v11 = *(v10 + v3++);
  }

  if (v9 != 6)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v9;
      v6 = "unable to decode wap push: unknown PDU type %u";
      goto LABEL_33;
    }

    return 0;
  }

  if (v4 - v3 >= v11)
  {
    v33 = 0;
    *buf = 0u;
    v32 = 0u;
    v13 = sub_101566340(buf, a1, v11);
    v14 = sub_101568664(v13);
    if (!v14)
    {
      v18 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *v27 = 0;
        _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "unable to decode wap push: bad content type", v27, 2u);
      }

      goto LABEL_51;
    }

    *v27 = 0;
    v28 = 0;
    v29 = 0;
    sub_10000501C(v27, "application/vnd.wap.mms-message");
    __p = 0;
    v25 = 0;
    v26 = 0;
    if (!sub_100E5F108(v14, &__p))
    {
LABEL_46:
      v22 = *a1;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        p_p = &__p;
        if (v26 < 0)
        {
          p_p = __p;
        }

        *v30 = 136315138;
        *&v30[4] = p_p;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Ignoring WAP push with content type [%s]", v30, 0xCu);
      }

      *a2 = 1;
      (*(*v14 + 8))(v14);
      if (SHIBYTE(v26) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v29) < 0)
      {
        operator delete(*v27);
      }

LABEL_51:
      ctu::OsLogLogger::~OsLogLogger(buf);
      return 0;
    }

    if (v29 >= 0)
    {
      v15 = HIBYTE(v29);
    }

    else
    {
      v15 = v28;
    }

    if ((SHIBYTE(v26) & 0x8000000000000000) != 0)
    {
      if (v15 != -1)
      {
        v17 = __p;
        if (v25 >= v15)
        {
          v16 = v15;
        }

        else
        {
          v16 = v25;
        }

        goto LABEL_38;
      }
    }

    else if (v15 != -1)
    {
      if (SHIBYTE(v26) >= v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = SHIBYTE(v26);
      }

      v17 = &__p;
LABEL_38:
      if (v29 >= 0)
      {
        v19 = v27;
      }

      else
      {
        v19 = *v27;
      }

      if (!memcmp(v17, v19, v16) && v16 == v15)
      {
        (*(*v14 + 8))(v14);
        v20 = *(a1 + 20);
        v21 = *(a1 + 16) - v20;
        if (v21 >= v11)
        {
          v21 = v11;
        }

        *(a1 + 20) = v21 + v20;
        sub_1015689C4();
      }

      goto LABEL_46;
    }

    sub_10013C334();
  }

  v5 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = v11;
    v6 = "unable to decode wap push: bad wspHeaderLen %u";
    goto LABEL_33;
  }

  return 0;
}

void sub_101569C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 - 96));
  _Unwind_Resume(a1);
}

uint64_t sub_101569C5C(const char *a1, const void *a2, size_t a3, uint64_t a4)
{
  result = sub_1000B1374();
  if (!result)
  {
    return result;
  }

  result = sub_1001883A0();
  if (!result)
  {
    return result;
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  *__src = 0u;
  v26 = 0u;
  v27 = 0u;
  sub_10000D518(&v26);
  __p = 0;
  v25 = 0uLL;
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v23, WirelessUserDirectory);
  v10 = std::string::append(&v23, "/Library/Logs/CrashReporter/", 0x1CuLL);
  v11 = v10->__r_.__value_.__r.__words[0];
  v43[0] = v10->__r_.__value_.__l.__size_;
  *(v43 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
  v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  __p = v11;
  *&v25 = v43[0];
  *(&v25 + 7) = *(v43 + 7);
  HIBYTE(v25) = v12;
  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (*(a4 + 23) < 0)
  {
    if (*(a4 + 8))
    {
      goto LABEL_9;
    }
  }

  else if (*(a4 + 23))
  {
LABEL_9:
    v13 = sub_10000C030(&v26);
    strlen(a1);
    v14 = sub_10000C030(v13);
    sub_10000C030(v14);
    time(0);
    goto LABEL_12;
  }

  v15 = sub_10000C030(&v26);
  strlen(a1);
  v16 = sub_10000C030(v15);
  sub_10000C030(v16);
  time(0);
LABEL_12:
  v17 = std::ostream::operator<<();
  sub_10000C030(v17);
  memset(&v23, 0, sizeof(v23));
  if ((BYTE8(v32) & 0x10) != 0)
  {
    v19 = v32;
    if (v32 < __src[1])
    {
      *&v32 = __src[1];
      v19 = __src[1];
    }

    v20 = __src[0];
    goto LABEL_19;
  }

  if ((BYTE8(v32) & 8) != 0)
  {
    v20 = *(&v27 + 1);
    v19 = *(&v28 + 1);
LABEL_19:
    v18 = v19 - v20;
    if ((v19 - v20) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v18 >= 0x17)
    {
      operator new();
    }

    *(&v23.__r_.__value_.__s + 23) = v19 - v20;
    if (v18)
    {
      memmove(&v23, v20, v18);
    }

    goto LABEL_25;
  }

  v18 = 0;
LABEL_25:
  v23.__r_.__value_.__s.__data_[v18] = 0;
  if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = &v23;
  }

  else
  {
    v21 = v23.__r_.__value_.__r.__words[0];
  }

  v22 = fopen(v21, "w");
  if (v22)
  {
    fwrite(a2, 1uLL, a3, v22);
    fclose(v22);
  }

  if (SHIBYTE(v23.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[1]);
  }

  std::locale::~locale(&v27);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10156A0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_10156A220(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a9)
  {
    (*(*a9 + 8))(a9);
    if (!v9)
    {
LABEL_3:
      if (v10)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v9)
  {
    goto LABEL_3;
  }

  dispatch_release(v9);
  if (v10)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

void sub_10156A280(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156A380(uint64_t a1, uint64_t a2, dispatch_object_t *a3)
{
  v5 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
    dispatch_group_enter(v5);
  }

  v6 = *(a2 + 8);
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 16);
  if (v7)
  {
    if (std::__shared_weak_count::lock(v7))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10156A4A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t SuppServicesHandler::SuppServicesHandler(uint64_t a1, uint64_t a2, dispatch_object_t *a3, uint64_t *a4)
{
  v8 = (a1 + 8);
  v9 = *a3;
  if (*a3)
  {
    dispatch_retain(*a3);
  }

  v36 = a1;
  ctu::OsLogContext::OsLogContext(&v51, kCtLoggingSystemName, "set.supp");
  if (v9)
  {
    dispatch_retain(v9);
  }

  initially_inactive = dispatch_queue_attr_make_initially_inactive(0);
  v11 = dispatch_queue_create_with_target_V2("SuppServicesHandler", initially_inactive, v9);
  dispatch_set_qos_class_floor(v11, QOS_CLASS_UTILITY, 0);
  dispatch_activate(v11);
  *v8 = 0;
  v8[1] = 0;
  *(a1 + 24) = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  *(a1 + 32) = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  if (v9)
  {
    dispatch_release(v9);
  }

  ctu::OsLogLogger::OsLogLogger(&v38, &v51);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), &v38);
  ctu::OsLogLogger::~OsLogLogger(&v38);
  ctu::OsLogContext::~OsLogContext(&v51);
  if (v9)
  {
    dispatch_release(v9);
  }

  v50[0] = off_101E2B528;
  v50[1] = sub_10156B0B8;
  v50[3] = v50;
  *(a1 + 48) = 0;
  if ((capabilities::ct::supportsGemini(v12) & 1) == 0)
  {
    operator new();
  }

  if (!*(a1 + 48))
  {
    operator new();
  }

  sub_1000A8744(v50);
  *a1 = off_101F4D4C8;
  *(a1 + 56) = off_101F4D730;
  *(a1 + 64) = off_101F4D778;
  *(a1 + 72) = a1 + 72;
  *(a1 + 80) = a1 + 72;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  v13 = *(a2 + 8);
  *(a1 + 104) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  v14 = *a4;
  v15 = *(a1 + 24);
  object = v15;
  if (v15)
  {
    dispatch_retain(v15);
  }

  (*(*v14 + 56))(&v51, v14, &object);
  *(a1 + 112) = v51;
  v51.var0 = 0;
  v51.var1.fRef = 0;
  if (object)
  {
    dispatch_release(object);
  }

  v16 = *a4;
  *a4 = 0;
  *(a1 + 128) = v16;
  Registry::getCommandDriversFactory(&v51, *a2);
  var0 = v51.var0;
  v18 = *(a1 + 24);
  v48 = v18;
  if (v18)
  {
    dispatch_retain(v18);
  }

  (*(*var0 + 160))(var0, &v48);
  if (v48)
  {
    dispatch_release(v48);
  }

  if (v51.var1.fRef)
  {
    sub_100004A34(v51.var1.fRef);
  }

  v19 = *(a1 + 128);
  v20 = *(a1 + 24);
  v47 = v20;
  if (v20)
  {
    dispatch_retain(v20);
  }

  (*(*v19 + 16))(v19, &v47);
  if (v47)
  {
    dispatch_release(v47);
  }

  v21 = *(a1 + 128);
  v22 = *(a1 + 24);
  v46 = v22;
  if (v22)
  {
    dispatch_retain(v22);
  }

  (*(*v21 + 24))(v21, &v46);
  if (v46)
  {
    dispatch_release(v46);
  }

  *(a1 + 240) = 0;
  v23 = (a1 + 240);
  *(a1 + 232) = a1 + 240;
  *(a1 + 248) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  v24 = *(a1 + 128);
  v25 = *(a1 + 24);
  v45 = v25;
  if (v25)
  {
    dispatch_retain(v25);
  }

  (*(*v24 + 32))(v24, &v45);
  if (v45)
  {
    dispatch_release(v45);
  }

  sub_10000501C(&__p, "SuppServicesHandler");
  v26 = *(a1 + 24);
  v42 = v26;
  if (v26)
  {
    dispatch_retain(v26);
  }

  v27 = *a3;
  v41 = v27;
  if (v27)
  {
    dispatch_retain(v27);
  }

  ctu::RestModule::RestModule();
  if (v41)
  {
    dispatch_release(v41);
  }

  if (v42)
  {
    dispatch_release(v42);
  }

  if (v44 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0;
  *(a1 + 416) = 0u;
  *(a1 + 448) = a1 + 456;
  *(a1 + 488) = 0u;
  *(a1 + 480) = a1 + 488;
  *(a1 + 512) = 0u;
  *(a1 + 504) = a1 + 512;
  *(a1 + 536) = 0u;
  *(a1 + 528) = a1 + 536;
  *(a1 + 560) = 0u;
  *(a1 + 552) = a1 + 560;
  sub_100AE91C4((a1 + 576), &rest::kDefaultBundles);
  *(a1 + 608) = 0u;
  *(a1 + 600) = a1 + 608;
  *(a1 + 624) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 632) = a1 + 640;
  *(a1 + 656) = 0;
  *(a1 + 672) = 0u;
  *(a1 + 664) = a1 + 672;
  subscriber::makeSimSlotRange();
  v29 = v38;
  v28 = v39;
  if (v38 != v39)
  {
    v30 = v40;
    do
    {
      if (v30(*v29))
      {
        break;
      }

      ++v29;
    }

    while (v29 != v28);
    v37 = v39;
    while (v29 != v37)
    {
      v31 = *v29;
      v32 = *v23;
      if (!*v23)
      {
LABEL_64:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v33 = v32;
          v34 = *(v32 + 32);
          if (v34 <= v31)
          {
            break;
          }

          v32 = *v33;
          if (!*v33)
          {
            goto LABEL_64;
          }
        }

        if (v34 >= v31)
        {
          break;
        }

        v32 = v33[1];
        if (!v32)
        {
          goto LABEL_64;
        }
      }

      do
      {
        ++v29;
      }

      while (v29 != v28 && (v30(*v29) & 1) == 0);
    }
  }

  return v36;
}

const char *sub_10156B0B8(int a1)
{
  v1 = "set.supp.?";
  if (a1 == 2)
  {
    v1 = "set.supp.2";
  }

  if (a1 == 1)
  {
    return "set.supp.1";
  }

  else
  {
    return v1;
  }
}

void sub_10156B0E4(uint64_t a1)
{
  *a1 = off_101F4D4C8;
  v2 = (a1 + 56);
  *(a1 + 56) = off_101F4D730;
  v3 = (a1 + 64);
  *(a1 + 64) = off_101F4D778;
  sub_100009970(a1 + 664, *(a1 + 672));
  sub_100170380(a1 + 632, *(a1 + 640));
  sub_10013DF64(a1 + 600, *(a1 + 608));
  sub_10032D3A4(a1 + 576, *(a1 + 584));
  sub_100009970(a1 + 552, *(a1 + 560));
  sub_100009970(a1 + 528, *(a1 + 536));
  sub_1001A904C(a1 + 504, *(a1 + 512));
  sub_100009970(a1 + 480, *(a1 + 488));
  sub_100034450(*(a1 + 456));
  sub_101577224(a1 + 416);
  v4 = *(a1 + 408);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 392);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 368);
  *(a1 + 368) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  sub_101577308(a1 + 320);
  v7 = *(a1 + 304);
  *(a1 + 304) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_101577438(a1 + 256);
  sub_10157B658(*(a1 + 240));
  v8 = *(a1 + 224);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  v9 = *(a1 + 208);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(a1 + 192);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 176);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(a1 + 160);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(a1 + 144);
  if (v13)
  {
    sub_100004A34(v13);
  }

  v14 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v14)
  {
    (*(*v14 + 8))(v14);
  }

  v15 = *(a1 + 120);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(a1 + 104);
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_1000FEFCC((a1 + 72));
  SuppServicesDriverEventHandlerInterface::~SuppServicesDriverEventHandlerInterface(v3);
  SuppServicesPreferencesDelegateInterface::~SuppServicesPreferencesDelegateInterface(v2);
  v17 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v17)
  {
    (*(*v17 + 8))(v17);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  SuppServicesInterface::~SuppServicesInterface(a1);
}

void sub_10156B378(uint64_t a1)
{
  sub_10156B0E4(a1);

  operator delete();
}

void sub_10156B3B0(uint64_t a1)
{
  sub_10156B0E4(a1 - 56);

  operator delete();
}

void sub_10156B3EC(uint64_t a1)
{
  sub_10156B0E4(a1 - 64);

  operator delete();
}

void sub_10156B428(uint64_t a1, _DWORD *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *v23 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v23);
  if (!v10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
LABEL_8:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
LABEL_9:
  if (!*a2 || !v12)
  {
    goto LABEL_26;
  }

  if ((*(*v12 + 48))(v12))
  {
    sub_10156D3B4(a1, *a2);
    goto LABEL_26;
  }

  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Call waiting not supported. Clear Call Waiting Value", v23, 2u);
  }

  v15 = *a2;
  for (i = *(a1 + 240); i; i = *i)
  {
    v17 = *(i + 8);
    if (v17 <= v15)
    {
      if (v17 >= v15)
      {
        v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v15);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Clearing Call Waiting status", v23, 2u);
        }

        v22 = sub_10000BA08(*(a1 + 240), v15) + 8;
        sub_100034450(*v22);
        *v22 = 0;
        v22[1] = 0;
        *(v22 - 1) = v22;
        sub_10156D634(a1, v15);
        goto LABEL_26;
      }

      ++i;
    }
  }

  v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = subscriber::asString();
    *v23 = 136315138;
    *&v23[4] = v19;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v23, 0xCu);
  }

LABEL_26:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_10156B728(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156B754(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v5);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
    if (!v12)
    {
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
      }

      goto LABEL_34;
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  std::mutex::unlock(v5);
  if (!v12)
  {
LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

LABEL_12:
  v14 = *(a1 + 480);
  if (v14 != (a1 + 488))
  {
    do
    {
      v15 = sub_100007A6C(a2, v14 + 4);
      v16 = *(v14 + 56);
      if (a2 + 8 == v15 || v16 != *(v15 + 56))
      {
        *buf = 0;
        v24 = 0;
        (**v12)(buf, v12, (v14 + 4));
        if (*buf && !*(*buf + 49))
        {
          v17 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*buf + 52));
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = "disabled";
            if (v16)
            {
              v18 = "enabled";
            }

            *v25 = 136315138;
            v26 = v18;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I VoLTE provisioning status: %s", v25, 0xCu);
          }

          sub_10156DD80(a1, *(*buf + 52));
        }

        if (v24)
        {
          sub_100004A34(v24);
        }
      }

      v19 = v14[1];
      if (v19)
      {
        do
        {
          v20 = v19;
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        do
        {
          v20 = v14[2];
          v21 = *v20 == v14;
          v14 = v20;
        }

        while (!v21);
      }

      v14 = v20;
    }

    while (v20 != (a1 + 488));
  }

  if (v11)
  {
    sub_100004A34(v11);
LABEL_34:
    sub_100004A34(v11);
  }
}

void sub_10156BA6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156BAB4(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v5);
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v11);
    if (!v12)
    {
      v21 = *(a1 + 40);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
      }

      goto LABEL_35;
    }

    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  std::mutex::unlock(v5);
  if (!v12)
  {
LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

LABEL_12:
  v14 = *(a1 + 504);
  if (v14 != (a1 + 512))
  {
    do
    {
      v15 = sub_100007A6C(a2, v14 + 4);
      if (a2 + 8 == v15 || !sub_1011D44D8((v14 + 7), v15 + 56))
      {
        v24 = 0;
        v25 = 0;
        (**v12)(&v24, v12, (v14 + 4));
        if (v24 && !*(v24 + 49))
        {
          v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(v24 + 52));
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            asString();
            v17 = buf;
            if (v23 < 0)
            {
              v17 = *buf;
            }

            *v26 = 136315138;
            v27 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I VoWiFi provisioning status: %s", v26, 0xCu);
            if (v23 < 0)
            {
              operator delete(*buf);
            }
          }

          sub_10156DD80(a1, *(v24 + 52));
        }

        if (v25)
        {
          sub_100004A34(v25);
        }
      }

      v18 = v14[1];
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
          v19 = v14[2];
          v20 = *v19 == v14;
          v14 = v19;
        }

        while (!v20);
      }

      v14 = v19;
    }

    while (v19 != (a1 + 512));
  }

  if (v11)
  {
    sub_100004A34(v11);
LABEL_35:
    sub_100004A34(v11);
  }
}

void sub_10156BDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (v16)
  {
    sub_100004A34(v16);
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156BE38(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    std::mutex::unlock(v5);
    if (v12)
    {
LABEL_12:
      v14 = *(a1 + 528);
      if (v14 == (a1 + 536))
      {
        goto LABEL_41;
      }

      while (1)
      {
        v15 = sub_100007A6C(a2, v14 + 4);
        if (a2 + 8 != v15 && *(v14 + 14) == *(v15 + 56) && *(v14 + 15) == *(v15 + 60) && *(v14 + 64) == *(v15 + 64))
        {
          goto LABEL_21;
        }

        *buf = 0;
        v31 = 0;
        (**v12)(buf, v12, (v14 + 4));
        if (!*buf)
        {
          goto LABEL_19;
        }

        if (*(*buf + 49))
        {
          goto LABEL_19;
        }

        v19 = *(a1 + 240);
        if (!v19)
        {
          goto LABEL_19;
        }

        v20 = *(*buf + 52);
        v21 = *(a1 + 240);
        while (1)
        {
          v22 = *(v21 + 8);
          if (v20 >= v22)
          {
            break;
          }

LABEL_33:
          v21 = *v21;
          if (!v21)
          {
            goto LABEL_19;
          }
        }

        if (v22 < v20)
        {
          break;
        }

        v23 = *(v14 + 14);
        v24 = *(v14 + 15);
        v25 = sub_10000BA08(v19, v20);
        v26 = (v23 | v24) & 1;
        if (*(v25 + 164) != v26)
        {
          v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*buf + 52));
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            v28 = "disabled";
            if (v26)
            {
              v28 = "enabled";
            }

            *v32 = 136315138;
            v33 = v28;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Feature is %s", v32, 0xCu);
          }

          *(v25 + 164) = v26;
          sub_10156DD80(a1, *(*buf + 52));
        }

LABEL_19:
        if (v31)
        {
          sub_100004A34(v31);
        }

LABEL_21:
        v16 = v14[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v14[2];
            v18 = *v17 == v14;
            v14 = v17;
          }

          while (!v18);
        }

        v14 = v17;
        if (v17 == (a1 + 536))
        {
LABEL_41:
          if (v11)
          {
            sub_100004A34(v11);
            goto LABEL_45;
          }

          return;
        }
      }

      ++v21;
      goto LABEL_33;
    }

LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  if (v12)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v29 = *(a1 + 40);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
  }

LABEL_45:
  sub_100004A34(v11);
}

void sub_10156C1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (v12)
  {
    sub_100004A34(v12);
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156C218(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v5 = ServiceMap;
  if (v6 < 0)
  {
    v7 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v8 = 5381;
    do
    {
      v6 = v8;
      v9 = *v7++;
      v8 = (33 * v8) ^ v9;
    }

    while (v9);
  }

  std::mutex::lock(ServiceMap);
  *buf = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
  if (!v10)
  {
    std::mutex::unlock(v5);
    goto LABEL_9;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    std::mutex::unlock(v5);
    if (v12)
    {
LABEL_12:
      v14 = *(a1 + 552);
      if (v14 == (a1 + 560))
      {
        goto LABEL_42;
      }

      while (1)
      {
        v15 = sub_100007A6C(a2, v14 + 4);
        if (a2 + 8 != v15 && sub_1008DFB14((v14 + 7), v15 + 56))
        {
          goto LABEL_19;
        }

        *buf = 0;
        v32 = 0;
        (**v12)(buf, v12, (v14 + 4));
        if (!*buf)
        {
          goto LABEL_17;
        }

        if (*(*buf + 49))
        {
          goto LABEL_17;
        }

        v19 = *(a1 + 240);
        if (!v19)
        {
          goto LABEL_17;
        }

        v20 = *(*buf + 52);
        v21 = *(a1 + 240);
        while (1)
        {
          v22 = *(v21 + 8);
          if (v20 >= v22)
          {
            break;
          }

LABEL_31:
          v21 = *v21;
          if (!v21)
          {
            goto LABEL_17;
          }
        }

        if (v22 < v20)
        {
          break;
        }

        v23 = sub_10000BA08(v19, v20);
        v24 = sub_10000BA08(*(a1 + 240), *(*buf + 52));
        v25 = v24;
        v26 = *(v14 + 14);
        if (v26 == 1 && (*(v23 + 162) & 1) == 0)
        {
          log = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(*buf + 52));
          if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
          {
            *v30 = 0;
            _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I We are IMS Registered for the 1st time after restart/SIM insert", v30, 2u);
          }

          *(v23 + 162) = 1;
          v27 = *(v14 + 14) == 1;
          if (*(v25 + 163) != v27)
          {
LABEL_40:
            *(v25 + 163) = v27;
          }

          sub_10156DD80(a1, *(*buf + 52));
        }

        else
        {
          v27 = v26 == 1;
          if (*(v24 + 163) != v27)
          {
            goto LABEL_40;
          }
        }

LABEL_17:
        if (v32)
        {
          sub_100004A34(v32);
        }

LABEL_19:
        v16 = v14[1];
        if (v16)
        {
          do
          {
            v17 = v16;
            v16 = *v16;
          }

          while (v16);
        }

        else
        {
          do
          {
            v17 = v14[2];
            v18 = *v17 == v14;
            v14 = v17;
          }

          while (!v18);
        }

        v14 = v17;
        if (v17 == (a1 + 560))
        {
LABEL_42:
          if (v11)
          {
            sub_100004A34(v11);
            goto LABEL_46;
          }

          return;
        }
      }

      ++v21;
      goto LABEL_31;
    }

LABEL_9:
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
    }

    return;
  }

  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  if (v12)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v28 = *(a1 + 40);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "PersonalityShop is not ready", buf, 2u);
  }

LABEL_46:
  sub_100004A34(v11);
}

void sub_10156C588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (v14)
  {
    sub_100004A34(v14);
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10156C5CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 576);
  v3 = (result + 584);
  if (v2 != (result + 584))
  {
    v4 = result;
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      v7 = *(v2 + 8);
      if (*v5)
      {
        v8 = v5;
        do
        {
          if (*(v6 + 32) >= v7)
          {
            v8 = v6;
          }

          v6 = *(v6 + 8 * (*(v6 + 32) < v7));
        }

        while (v6);
        if (v8 != v5 && v7 >= *(v8 + 8))
        {
          result = rest::operator==();
          if (result)
          {
            goto LABEL_47;
          }

          v7 = *(v2 + 8);
        }
      }

      result = v4[30];
      if (result)
      {
        v9 = v4[30];
        do
        {
          v10 = *(v9 + 8);
          if (v10 <= v7)
          {
            if (v10 >= v7)
            {
              result = sub_10000BA08(result, v7);
              if (*(result + 128))
              {
                v11 = *(v2 + 40) == 2;
              }

              else
              {
                v11 = 0;
              }

              if (v11)
              {
                result = sub_10000BA08(v4[30], v7);
                v12 = *(v2 + 71);
                v13 = v12 >= 0 ? *(v2 + 71) : v2[7];
                if (v13)
                {
                  v14 = *(result + 128);
                  v15 = (v14 + 8);
                  v16 = *(v14 + 31);
                  v17 = v16;
                  if ((v16 & 0x80u) != 0)
                  {
                    v16 = *(v14 + 16);
                  }

                  if (v13 != v16 || (v12 >= 0 ? (v18 = v2 + 6) : (v18 = v2[6]), v17 >= 0 ? (v19 = (v14 + 8)) : (v19 = *v15), result = memcmp(v18, v19, v13), result))
                  {
                    v20 = *(*(*v4[6] + 16))(v4[6], v7);
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      if (*(v2 + 71) >= 0)
                      {
                        v21 = v2 + 6;
                      }

                      else
                      {
                        v21 = v2[6];
                      }

                      if (*(v14 + 31) < 0)
                      {
                        v15 = *v15;
                      }

                      *buf = 136315394;
                      v25 = v21;
                      v26 = 2080;
                      v27 = v15;
                      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Operator bundle ID changing to %s, cached is %s. Resetting CLIR network setting", buf, 0x16u);
                    }

                    result = sub_101570A74(v4, v7);
                  }
                }
              }

              break;
            }

            ++v9;
          }

          v9 = *v9;
        }

        while (v9);
      }

LABEL_47:
      v22 = v2[1];
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
          v23 = v2[2];
          v11 = *v23 == v2;
          v2 = v23;
        }

        while (!v11);
      }

      v2 = v23;
    }

    while (v23 != v3);
  }

  return result;
}

uint64_t sub_10156C848(uint64_t a1)
{
  v2 = *(a1 + 232);
  v3 = (a1 + 240);
  if (v2 != (a1 + 240))
  {
    do
    {
      v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v2 + 8));
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = CSIBOOLAsString(*(v2 + 201));
        *buf = 136315138;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fValidGwSim: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v7 = CSIBOOLAsString(*(v2 + 200));
        *buf = 136315138;
        v24 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fXcapAllowed: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v8 = CSIBOOLAsString(*(v2 + 204));
        *buf = 136315138;
        v24 = v8;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fImsFeatureEnabled: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v9 = CSIBOOLAsString(*(v2 + 202));
        *buf = 136315138;
        v24 = v9;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fImsRegisteredAtleastOnce: %s", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = CSIBOOLAsString(*(v2 + 205));
        *buf = 136315138;
        v24 = v10;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fConnectionAvailabilityForUtService [Available:%s]", buf, 0xCu);
        v5 = *v4;
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v11 = CSIBOOLAsString(*(v2 + 207));
        *buf = 136315138;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I fConnectionAvailabilityForEmLocService [Available:%s]", buf, 0xCu);
      }

      v12 = v2[13];
      if (v12)
      {
        v13 = (v2 + 13);
        v14 = v2[13];
        do
        {
          if (v14[7] >= 1)
          {
            v13 = v14;
          }

          v14 = *&v14[2 * (v14[7] < 1)];
        }

        while (v14);
        if (v13 != (v2 + 13) && v13[7] <= 1)
        {
          v15 = *v4;
          if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
          {
            while (1)
            {
              while (1)
              {
                v16 = *(v12 + 7);
                if (v16 < 2)
                {
                  break;
                }

                v12 = *v12;
                if (!v12)
                {
                  goto LABEL_38;
                }
              }

              if (v16 == 1)
              {
                break;
              }

              v12 = v12[1];
              if (!v12)
              {
LABEL_38:
                sub_1000A58E4("map::at:  key not found");
              }
            }

            v17 = CSIBOOLAsString(*(v12 + 32));
            *buf = 136315138;
            v24 = v17;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I fCallWaiting[kCTCallClassVoice]: %s", buf, 0xCu);
          }
        }
      }

      v18 = v2[1];
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
          v19 = v2[2];
          v20 = *v19 == v2;
          v2 = v19;
        }

        while (!v20);
      }

      v2 = v19;
    }

    while (v19 != v3);
  }

  v21 = *(**(a1 + 384) + 48);

  return v21();
}

uint64_t sub_10156CC00(uint64_t result, uint64_t *a2)
{
  if (*(a2 + 24) == 1)
  {
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      v6 = 136315138;
      v7 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Device with ID '%s' is in proximity, will sync preferences", &v6, 0xCu);
    }

    return (*(**(v3 + 184) + 144))(*(v3 + 184));
  }

  return result;
}

void sub_10156CCEC(void **a1)
{
  subscriber::makeSimSlotRange();
  v2 = v11;
  v3 = v12;
  if (v11 != v12)
  {
    v4 = v13;
    do
    {
      if (v13(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v12);
    v5 = v12;
    while (v2 != v5)
    {
      v6 = *v2;
      v9 = 0;
      v10 = 0;
      sub_10156CE14(a1, v6, &v9);
      if (v10)
      {
        sub_100004A34(v10);
      }

      v7 = 0;
      v8 = 0;
      sub_10156D0E4(a1, v6, &v7);
      if (v8)
      {
        sub_100004A34(v8);
      }

      sub_10156D3B4(a1, v6);
      sub_10156D634(a1, v6);
      sub_10156D894(a1, v6);
      do
      {
        ++v2;
      }

      while (v2 != v3 && (v4(*v2) & 1) == 0);
    }
  }
}

void sub_10156CDEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156CE14(void **a1, uint64_t a2, void *a3)
{
  v5 = a1[30];
  if (!v5)
  {
LABEL_7:
    v9 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315138;
      *&v19[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v19, 0xCu);
    }

    return;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (*a3)
  {
    goto LABEL_16;
  }

  (*(*a1[23] + 40))(v19);
  v10 = *v19;
  *v19 = 0uLL;
  v11 = a3[1];
  *a3 = v10;
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_100004A34(v11);
  if (*&v19[8])
  {
    sub_100004A34(*&v19[8]);
  }

  if (!*a3)
  {
LABEL_22:
    v18 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Could not restore CLIR user setting from persistent storage", v19, 2u);
    }

    return;
  }

LABEL_15:
  v5 = a1[30];
LABEL_16:
  v12 = sub_10000BA08(v5, a2);
  v13 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v14 = v12[19];
  *(v12 + 9) = v13;
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(a1[30], a2);
    v16 = asString();
    sub_10000BA08(a1[30], a2);
    v17 = asString();
    *v19 = 136315394;
    *&v19[4] = v16;
    *&v19[12] = 2080;
    *&v19[14] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Restored the CLIR user setting from Persistent Storage with Service Status %s, Provisioned Status %s", v19, 0x16u);
  }

  sub_1015707E0(a1, a2);
}

void sub_10156D0E4(void **a1, uint64_t a2, void *a3)
{
  v5 = a1[30];
  if (!v5)
  {
LABEL_7:
    v9 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v19 = 136315138;
      *&v19[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", v19, 0xCu);
    }

    return;
  }

  v7 = v5;
  while (1)
  {
    v8 = *(v7 + 8);
    if (v8 <= a2)
    {
      break;
    }

LABEL_6:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  if (v8 < a2)
  {
    ++v7;
    goto LABEL_6;
  }

  if (*a3)
  {
    goto LABEL_16;
  }

  (*(*a1[23] + 64))(v19);
  v10 = *v19;
  *v19 = 0uLL;
  v11 = a3[1];
  *a3 = v10;
  if (!v11)
  {
    if (v10)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

  sub_100004A34(v11);
  if (*&v19[8])
  {
    sub_100004A34(*&v19[8]);
  }

  if (!*a3)
  {
LABEL_22:
    v18 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#N Could not restore CLIR network setting from persistent storage", v19, 2u);
    }

    return;
  }

LABEL_15:
  v5 = a1[30];
LABEL_16:
  v12 = sub_10000BA08(v5, a2);
  v13 = *a3;
  *a3 = 0;
  a3[1] = 0;
  v14 = v12[17];
  *(v12 + 8) = v13;
  if (v14)
  {
    sub_100004A34(v14);
  }

  v15 = *(*(*a1[6] + 16))(a1[6], a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    sub_10000BA08(a1[30], a2);
    v16 = asString();
    sub_10000BA08(a1[30], a2);
    v17 = asString();
    *v19 = 136315394;
    *&v19[4] = v16;
    *&v19[12] = 2080;
    *&v19[14] = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Restored the CLIR network setting from Persistent Storage with Service Status %s, Provisioned Status %s", v19, 0x16u);
  }

  sub_1015707E0(a1, a2);
}

void sub_10156D3B4(void **a1, uint64_t a2)
{
  v4 = a1[30];
  if (!v4)
  {
LABEL_7:
    v6 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return;
  }

  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= a2)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_6;
  }

  v7 = (*(*a1[23] + 88))(a1[23], a2);
  if ((v7 & 0x100) != 0)
  {
    v12 = v7;
    v13 = sub_10000BA08(a1[30], a2) + 8;
    sub_100034450(*v13);
    *v13 = 0;
    v13[1] = 0;
    *(v13 - 1) = v13;
    v14 = sub_10000BA08(a1[30], a2);
    v17 = 1;
    *buf = &v17;
    *(sub_10142B4C4((v14 + 7), 1) + 32) = v12;
    v15 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = "OFF";
      if (v12)
      {
        v16 = "ON";
      }

      *buf = 136315138;
      *&buf[4] = v16;
      v9 = "#I Restored Call Waiting status %s from Persistent Storage";
      v10 = v15;
      v11 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, buf, v11);
    }
  }

  else
  {
    v8 = *(*(*a1[6] + 16))(a1[6], a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v9 = "#I Could not restore Call Waiting status from Persistent Storage";
      v10 = v8;
      v11 = 2;
      goto LABEL_17;
    }
  }
}

void sub_10156D634(uint64_t a1, uint64_t a2)
{
  v4 = sub_10000BA08(*(a1 + 240), a2);
  v7 = v4[8];
  v5 = v4 + 8;
  v6 = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v5;
  do
  {
    if (*(v6 + 28) >= 1)
    {
      v8 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 28) < 1));
  }

  while (v6);
  if (v8 == v5 || *(v8 + 7) >= 2)
  {
LABEL_8:
    v8 = v5;
  }

  if (v8 == sub_10000BA08(*(a1 + 240), a2) + 8)
  {
    v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Call waiting status cleared", buf, 2u);
    }

    v10 = 1;
  }

  else
  {
    v9 = sub_10000BA08(*(a1 + 240), a2);
    v15 = 1;
    *buf = &v15;
    v10 = *(sub_10142B4C4((v9 + 7), 1) + 32);
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "OFF";
    if (v10)
    {
      v13 = "ON";
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Publishing Call Waiting status %s", buf, 0xCu);
  }

  v14 = *(a1 + 200);
  PersonalityIdFromSlotId();
  (*(*v14 + 200))(v14, buf, v10 & 1);
  if (v17 < 0)
  {
    operator delete(*buf);
  }
}

void sub_10156D870(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156D894(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
LABEL_7:
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v14 = 136315138;
      v15 = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", &v14, 0xCu);
    }

    return;
  }

  while (1)
  {
    v5 = *(v4 + 8);
    if (v5 <= a2)
    {
      break;
    }

LABEL_6:
    v4 = *v4;
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  if (v5 < a2)
  {
    ++v4;
    goto LABEL_6;
  }

  v7 = (*(**(a1 + 184) + 112))(*(a1 + 184), a2);
  v8 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if ((v7 & 0x100) != 0)
  {
    if (v9)
    {
      v13 = "OFF";
      if (v7)
      {
        v13 = "ON";
      }

      v14 = 136315138;
      v15 = v13;
      v10 = "#I Restored Auto Answer status to %s from Persistent Storage";
      v11 = v8;
      v12 = 12;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, &v14, v12);
    }
  }

  else if (v9)
  {
    LOWORD(v14) = 0;
    v10 = "#N Could not restore Auto Answer status from Persistent Storage";
    v11 = v8;
    v12 = 2;
    goto LABEL_17;
  }
}

void sub_10156DA88(uint64_t a1, _DWORD *a2)
{
  if (*a2 != *(a1 + 624))
  {
    subscriber::makeSimSlotRange();
    v4 = *buf;
    if (*buf != v17)
    {
      do
      {
        if (v18(*v4))
        {
          break;
        }

        ++v4;
      }

      while (v4 != v17);
      while (v4 != v17)
      {
        v5 = *v4++;
        sub_10156DD80(a1, v5);
        while (v4 != v17 && (v18(*v4) & 1) == 0)
        {
          ++v4;
        }
      }
    }

    if (*(a1 + 624) == 1)
    {
      v6 = *(a1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I In widget mode", buf, 2u);
      }

      v7 = dispatch_group_create();
      v8 = v7;
      v9 = *(a1 + 184);
      if (v9)
      {
        group = v7;
        if (v7)
        {
          dispatch_retain(v7);
          dispatch_group_enter(v8);
        }

        (*(*v9 + 32))(v9, &group);
        if (group)
        {
          dispatch_group_leave(group);
          if (group)
          {
            dispatch_release(group);
          }
        }
      }

      operator new();
    }

    if (*a2 == 1)
    {
      v10 = *(a1 + 40);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Not in widget mode", buf, 2u);
      }

      v11 = dispatch_group_create();
      v12 = v11;
      v13 = *(a1 + 184);
      if (v13)
      {
        object = v11;
        if (v11)
        {
          dispatch_retain(v11);
          dispatch_group_enter(v12);
        }

        (*(*v13 + 32))(v13, &object);
        if (object)
        {
          dispatch_group_leave(object);
          if (object)
          {
            dispatch_release(object);
          }
        }
      }

      operator new();
    }
  }
}

void sub_10156DD28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, dispatch_group_t a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  if (v10)
  {
    dispatch_release(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10156DD80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 240);
  if (!v4)
  {
LABEL_8:
    v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = subscriber::asString();
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Cannot find slot %s!!", buf, 0xCu);
    }

    return;
  }

  v5 = v4;
  while (1)
  {
    v6 = *(v5 + 8);
    if (v6 <= a2)
    {
      break;
    }

LABEL_7:
    v5 = *v5;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  if (v6 < a2)
  {
    ++v5;
    goto LABEL_7;
  }

  v8 = sub_10000BA08(v4, a2);
  v93 = 0;
  v94 = 0;
  v89 = 0;
  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "supported", &v93);
  sub_10002FE1C(&v94, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v93);
  v9 = sub_100045C8C(&v89);
  v11 = v94;
  if (v94)
  {
    buf[0] = 0;
    ctu::cf::assign(buf, v94, v10);
    v12 = buf[0];
  }

  else
  {
    v12 = capabilities::ct::supportsXcapForUncertifiedCarriers(v9);
  }

  v92 = 0;
  v91 = kCFBooleanFalse;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "provisioningDependency", &v91);
  sub_10002FE1C(&v92, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v91);
  buf[0] = 0;
  ctu::cf::assign(buf, v92, v13);
  v76 = buf[0];
  v89 = 0;
  v90 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 96));
  v15 = ServiceMap;
  if (v16 < 0)
  {
    v17 = (v16 & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(ServiceMap);
  *buf = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, buf);
  v78 = v12;
  v72 = v11;
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
LABEL_23:
  (*(*v22 + 8))(&v89, v22, a2);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if (!v89)
  {
    goto LABEL_35;
  }

  v24 = sub_100007A6C(a1 + 600, v89 + 3);
  if (a1 + 608 == v24)
  {
    goto LABEL_35;
  }

  v27 = *(v24 + 72);
  v25 = v24 + 72;
  v26 = v27;
  if (!v27)
  {
    goto LABEL_35;
  }

  v28 = v25;
  do
  {
    if (*(v26 + 28) >= 7)
    {
      v28 = v26;
    }

    v26 = *(v26 + 8 * (*(v26 + 28) < 7));
  }

  while (v26);
  if (v28 == v25 || *(v28 + 28) > 7)
  {
LABEL_35:
    v29 = 0;
  }

  else
  {
    v29 = *(v28 + 32) == 2;
  }

  PersonalityIdFromSlotId();
  v30 = sub_100007A6C(a1 + 480, &__p);
  if (a1 + 488 == v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = *(v30 + 56);
  }

  if (v88 < 0)
  {
    operator delete(__p);
  }

  v85 = kCFBooleanFalse;
  v86 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "imsFeatureDependency", &v85);
  sub_10002FE1C(&v86, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v85);
  buf[0] = 0;
  ctu::cf::assign(buf, v86, v32);
  v75 = buf[0];
  v83 = kCFBooleanFalse;
  v84 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "imsRegistrationDependency", &v83);
  sub_10002FE1C(&v84, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v83);
  buf[0] = 0;
  ctu::cf::assign(buf, v84, v33);
  v74 = buf[0];
  v81 = kCFBooleanFalse;
  v82 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "AllowedOnlyWhenIMSRegistered", &v81);
  sub_10002FE1C(&v82, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v81);
  buf[0] = 0;
  ctu::cf::assign(buf, v82, v34);
  v73 = buf[0];
  v79 = kCFBooleanFalse;
  v80 = 0;
  if (kCFBooleanFalse)
  {
    CFRetain(kCFBooleanFalse);
  }

  sub_10156F850(buf, (a1 + 96), (a1 + 40), a2, "SupportNASFallback", &v79);
  sub_10002FE1C(&v80, buf);
  sub_10000A1EC(buf);
  sub_10000A1EC(&v79);
  buf[0] = 0;
  ctu::cf::assign(buf, v80, v35);
  v77 = buf[0];
  v36 = Registry::getServiceMap(*(a1 + 96));
  v37 = v36;
  if (v38 < 0)
  {
    v39 = (v38 & 0x7FFFFFFFFFFFFFFFLL);
    v40 = 5381;
    do
    {
      v38 = v40;
      v41 = *v39++;
      v40 = (33 * v40) ^ v41;
    }

    while (v41);
  }

  std::mutex::lock(v36);
  *buf = v38;
  v42 = sub_100009510(&v37[1].__m_.__sig, buf);
  if (v42)
  {
    v44 = v42[3];
    v43 = v42[4];
    if (v43)
    {
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v37);
      atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v43);
      v45 = 0;
      goto LABEL_57;
    }
  }

  else
  {
    v44 = 0;
  }

  std::mutex::unlock(v37);
  v43 = 0;
  v45 = 1;
LABEL_57:
  isWatch = GestaltUtilityInterface::isWatch(v44);
  if ((v45 & 1) == 0)
  {
    sub_100004A34(v43);
  }

  if (isWatch)
  {
    v47 = *(a1 + 624);
    v48 = v47 == 1;
    v49 = v47 != 1;
    v50 = v48;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v52 = *(a1 + 136);
  v51 = *(a1 + 144);
  if (v51)
  {
    atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v53 = v31 | v29;
  if (v49)
  {
    v52 = *(a1 + 168);
    v54 = *(a1 + 176);
    v55 = v78;
    if (v54)
    {
      goto LABEL_68;
    }

    goto LABEL_69;
  }

  v55 = v78;
  if (v50 && (v77 & 1) == 0)
  {
    v52 = *(a1 + 168);
    v56 = *(a1 + 176);
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v51)
    {
      sub_100004A34(v51);
    }

    v51 = v56;
  }

  if ((v78 & 1) == 0 || *(v8 + 161) != 1 || *(v8 + 160) != 1 || (*(v8 + 165) & 1) == 0 && *(v8 + 167) != 1)
  {
    goto LABEL_92;
  }

  v57 = v76 ^ 1 | v53;
  if (v75)
  {
    v57 &= *(v8 + 164);
  }

  if (v74)
  {
    v57 &= *(v8 + 162);
  }

  if (v73)
  {
    v57 &= *(v8 + 163);
  }

  if (v57)
  {
    v52 = *(a1 + 152);
    v54 = *(a1 + 160);
    if (v54)
    {
LABEL_68:
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

LABEL_69:
    if (v51)
    {
      sub_100004A34(v51);
    }
  }

  else
  {
LABEL_92:
    v54 = v51;
  }

  if (v52 != v8[1])
  {
    if (v54)
    {
      atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v58 = v8[2];
    v8[1] = v52;
    v8[2] = v54;
    if (v58)
    {
      sub_100004A34(v58);
    }

    v59 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      v60 = (*(*v8[1] + 48))(v8[1]);
      *buf = 136315138;
      *&buf[4] = v60;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Active transport set to %s", buf, 0xCu);
    }

    v61 = *(a1 + 200);
    PersonalityIdFromSlotId();
    (*(*v61 + 224))(v61, buf, v52 == *(a1 + 152));
    if (SBYTE3(v99) < 0)
    {
      operator delete(*buf);
    }
  }

  v62 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
  {
    v63 = (*(*v8[1] + 48))(v8[1]);
    v64 = *(v8 + 161);
    v65 = "from CB";
    v66 = *(v8 + 160);
    v67 = *(v8 + 165);
    if (!v72)
    {
      v65 = "from SW";
    }

    v68 = *(v8 + 167);
    v69 = *(v8 + 164);
    v70 = *(v8 + 162);
    v71 = *(v8 + 163);
    *buf = 136319234;
    *&buf[4] = v63;
    v96 = 1024;
    v97 = v55 & 1;
    v98 = 2080;
    v99 = v65;
    v100 = 1024;
    v101 = v64;
    v102 = 1024;
    v103 = v66;
    v104 = 1024;
    v105 = v67;
    v106 = 1024;
    v107 = v68;
    v108 = 1024;
    v109 = v76;
    v110 = 1024;
    v111 = v53 & 1;
    v112 = 1024;
    v113 = v75;
    v114 = 1024;
    v115 = v69;
    v116 = 1024;
    v117 = v74;
    v118 = 1024;
    v119 = v70;
    v120 = 1024;
    v121 = v73;
    v122 = 1024;
    v123 = v71;
    v124 = 1024;
    v125 = v50;
    v126 = 1024;
    v127 = v77;
    _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I SSP/AP - Transport[%s] XcapSupported[%d](%s) SIM[%d] XcapAllowed[%d] UTConnection[%d] EmLocConnection[%d] Provisioning-required[%d] Provisioned[%d] IMSFeature-required[%d] IMSFeatureEnabled[%d] Registration-required(AtLeastOnce)[%d] Registered-AtLeastOnce[%d] IMSRegistration-required[%d] IMSRegistered[%d] Tinker[%d] SupportsNASFallbackInTinker[%d]", buf, 0x70u);
  }

  if (v54)
  {
    sub_100004A34(v54);
  }

  sub_100045C8C(&v80);
  sub_100045C8C(&v82);
  sub_100045C8C(&v84);
  sub_100045C8C(&v86);
  if (v90)
  {
    sub_100004A34(v90);
  }

  sub_100045C8C(&v92);
  sub_100045C8C(&v94);
}