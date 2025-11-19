void sub_1013CF060(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(v1 + 4) - 1;
  if (v2 > 0xE)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = qword_101961128[v2];
    v4 = qword_1019611A0[v2];
  }

  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  sub_1013CECD0(a1);
}

void sub_1013CF0A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 124);
  if (v2 != *(a2 + 4))
  {
    *(*(a1 + 80) + 4) = v2;
    sub_1013CF060(a1);
  }
}

void sub_1013CF0C4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[5])
      {
        ApplePDPHelperInterface::getInstance(v4);
        ApplePDPHelperInterface::reportLinkThroughput();
        *(v3 + 88) = 0;
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1013CF158(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 40) = *(a2 + 40);
  *(result + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013CF174(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_1013CF184(uint64_t result, int a2)
{
  v2 = *(result + 952);
  if (v2 != a2)
  {
    v3 = result;
    v4 = *(result + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(v6) = 136315138;
      *(&v6 + 4) = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I User data SIM has changed to %s", &v6, 0xCu);
      v2 = *(v3 + 952);
    }

    v5 = "/cc/props/reg_net_info1";
    if (v2 == 2)
    {
      v5 = "/cc/props/reg_net_info2";
    }

    *(v3 + 112) = v5;
    *&v6 = sub_1013CF0A4;
    *(&v6 + 1) = 0;
    sub_1013CF82C((v3 + 112));
  }

  return result;
}

void sub_1013CF288(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013CF2DC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013CF31C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1013CF348(ServiceManager::Service *this)
{
  *this = off_101F34D50;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1013CF3A4(ServiceManager::Service *this)
{
  *this = off_101F34D50;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1013CF424@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1013CF468(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1013CE920(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1013CE920(v4, 0);
}

void sub_1013CF508(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  v3 = *(v1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1013CF624(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_1013CF738(void **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v3 = *(*v1 + 64);
  if (v3)
  {
    v4 = v1[1];
    group = v4;
    if (v4)
    {
      dispatch_retain(v4);
      dispatch_group_enter(v4);
    }

    (*(*v3 + 40))(v3, &group);
    if (group)
    {
      dispatch_group_leave(group);
      if (group)
      {
        dispatch_release(group);
      }
    }
  }

  ctu::RestModule::disconnect((v2 + 96));
  sub_1000FF844(&v7);
  return sub_1000049E0(&v6);
}

void sub_1013CF7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_1013CF914(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1013CF9C4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F34DD0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013CF9FC(void *a1, const xpc::object *a2)
{
  v4 = a1[1];
  bzero(v9, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v9, (v4 + 8));
  read_rest_value((v4 + 8), a2);
  v5 = a1[3];
  v6 = a1[4];
  v7 = (a1[2] + (v6 >> 1));
  if (v6)
  {
    v5 = *(*v7 + v5);
  }

  v5(v7, v9);
  return sub_10004543C(v9);
}

uint64_t sub_1013CFAF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013CFB40(void *a1)
{
  v1 = *a1;
  v2 = a1;
  v3 = v1;
  operator new();
}

void sub_1013CFFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, xpc_object_t object, dispatch_group_t group, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22)
{
  sub_1000062D4(&a21);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1013D00DC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F34E50;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013D0158(AQMCommandDriverDelegateInterface *this)
{
  *this = off_101F34EF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AQMCommandDriverDelegateInterface::~AQMCommandDriverDelegateInterface(this);
}

void sub_1013D01B4(AQMCommandDriverDelegateInterface *this)
{
  *this = off_101F34EF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AQMCommandDriverDelegateInterface::~AQMCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_1013D0224(uint64_t a1, void *a2)
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
        v8 = 0;
        v9 = 0;
        if (*a2 != a2 + 1)
        {
          operator new();
        }

        sub_1013CECD0(v7);
        sub_100034450(v8);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_1013D0538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  sub_100034450(a13);
  sub_100004A34(v13);
  _Unwind_Resume(a1);
}

void sub_1013D055C(AQMCommandDriverDelegateInterface *this)
{
  *this = off_101F34EF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AQMCommandDriverDelegateInterface::~AQMCommandDriverDelegateInterface(this);
}

void sub_1013D05B8(AQMCommandDriverDelegateInterface *this)
{
  *this = off_101F34EF8;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AQMCommandDriverDelegateInterface::~AQMCommandDriverDelegateInterface(this);

  operator delete();
}

__n128 sub_1013D06A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F34F20;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013D06DC(void *a1)
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

uint64_t sub_1013D0724(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013D07EC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F34FA0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013D0824(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  v5 = *v4;
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v14 = *v4;
    ctu::rest::detail::read_enum_string_value(&v14, a2, v7);
    *v4 = v14;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v7);
  }

  v10 = a1[3];
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_1013D091C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013D09E4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F35020;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013D0A1C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10011E228(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10006DCAC(&v9, v10);
}

uint64_t sub_1013D0AF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013D0BBC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F350A0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013D0BF4(void *a1, xpc *this, uint64_t a3)
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

uint64_t sub_1013D0C7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013D0CC8(uint64_t a1)
{
  v1 = *(**a1 + 64);
  if (v1)
  {
    (*(*v1 + 32))(v1);
  }

  operator delete();
}

void sub_1013D0D70(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = a1;
  sub_100A5C398(v2, &v1, "kSubscriberGetSimState", sub_1013D0FD4, 3);
}

void sub_1013D0FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8[4] = 0;
  v9 = 0;
  sGetSubscriberSimInterface();
  v6 = xpc_int64_create(8);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v8[0] = *a5;
  v8[1] = "kSubscriberSimState";
  sub_10000F688(v8, &v6, &v7);
  xpc_release(v7);
  v7 = 0;
  xpc_release(v6);
  v6 = 0;
  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1013D1118(_Unwind_Exception *exception_object)
{
  v3 = *(v1 - 24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D1130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  object[1] = 0;
  v9 = 0;
  sGetSubscriberSimInterface();
  v7 = xpc_int64_create(0);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v6[0] = *a5;
  v6[1] = "kSubscriberSimTrayStatus";
  sub_10000F688(v6, &v7, object);
  xpc_release(object[0]);
  object[0] = 0;
  xpc_release(v7);
  v7 = 0;
  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_1013D125C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D1414(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, std::__shared_weak_count *);
  sub_10006372C(va1);
  sub_100422B08(va);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void sub_1013D1458(capabilities::ct *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = capabilities::ct::supportsVinylFirmwareUpdate(a1);
  if (v7 && (capabilities::euicc::supportsEOS(v7) & 1) == 0)
  {
    ServiceMap = Registry::getServiceMap(*a1);
    v9 = ServiceMap;
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v12 = 5381;
      do
      {
        v10 = v12;
        v13 = *v11++;
        v12 = (33 * v12) ^ v13;
      }

      while (v13);
    }

    std::mutex::lock(ServiceMap);
    v21 = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &v21);
    if (v14)
    {
      v16 = v14[3];
      v15 = v14[4];
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v9);
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v15);
        v17 = 0;
        if (!v16)
        {
LABEL_16:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          return;
        }

LABEL_12:
        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3321888768;
        v19[2] = sub_1013D4EA4;
        v19[3] = &unk_101F34468;
        v18 = a5[1];
        v19[4] = *a5;
        v20 = v18;
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v16 + 144))(v16, 0, v19, 0);
        if (v20)
        {
          sub_100004A34(v20);
        }

        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_12;
  }
}

void sub_1013D15EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D1614(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *&v68 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v68);
  if (!v14)
  {
    v16 = 0;
LABEL_9:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_92;
    }

    goto LABEL_10;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (!v16)
  {
    goto LABEL_92;
  }

LABEL_10:
  if (!xpc_dictionary_get_value(*a4, "kSubscriberImsi"))
  {
    goto LABEL_35;
  }

  v68 = 0uLL;
  v69 = 0;
  (*(*v16 + 200))(v16, 1, 3, &v68);
  v18 = HIBYTE(v69);
  if (v69 < 0)
  {
    v18 = *(&v68 + 1);
  }

  if (!v18)
  {
    v19 = Registry::getServiceMap(*a1);
    v20 = v19;
    if (v21 < 0)
    {
      v22 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v21 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v19);
    *&v66 = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, &v66);
    v49 = a5;
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v20);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        v28 = 0;
        if (!v27)
        {
LABEL_26:
          a5 = v49;
          if ((v28 & 1) == 0)
          {
            sub_100004A34(v26);
          }

          goto LABEL_28;
        }

LABEL_23:
        (*(*v27 + 24))(&v66, v27, 1);
        if (SHIBYTE(v69) < 0)
        {
          operator delete(v68);
        }

        v68 = v66;
        v69 = v67;
        goto LABEL_26;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
    if (!v27)
    {
      goto LABEL_26;
    }

    goto LABEL_23;
  }

LABEL_28:
  if (v69 >= 0)
  {
    v29 = &v68;
  }

  else
  {
    v29 = v68;
  }

  v64 = xpc_string_create(v29);
  if (!v64)
  {
    v64 = xpc_null_create();
  }

  *&v66 = *a5;
  *(&v66 + 1) = "kSubscriberImsi";
  sub_10000F688(&v66, &v64, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v64);
  v64 = 0;
  if (SHIBYTE(v69) < 0)
  {
    operator delete(v68);
  }

LABEL_35:
  if (xpc_dictionary_get_value(*a4, "kSubscriberIccid"))
  {
    v68 = 0uLL;
    v69 = 0;
    (*(*v16 + 200))(v16, 1, 0, &v68);
    if (v69 >= 0)
    {
      v30 = &v68;
    }

    else
    {
      v30 = v68;
    }

    v62 = xpc_string_create(v30);
    if (!v62)
    {
      v62 = xpc_null_create();
    }

    *&v66 = *a5;
    *(&v66 + 1) = "kSubscriberIccid";
    sub_10000F688(&v66, &v62, &v63);
    xpc_release(v63);
    v63 = 0;
    xpc_release(v62);
    v62 = 0;
    if (SHIBYTE(v69) < 0)
    {
      operator delete(v68);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSubscriberGid1"))
  {
    v68 = 0uLL;
    v69 = 0;
    (*(*v16 + 176))(&v68, v16, 1, 1);
    v31 = v68;
    if (v68 != *(&v68 + 1))
    {
      v60 = xpc_data_create(v68, *(&v68 + 1) - v68);
      if (!v60)
      {
        v60 = xpc_null_create();
      }

      *&v66 = *a5;
      *(&v66 + 1) = "kSubscriberGid1";
      sub_10000F688(&v66, &v60, &v61);
      xpc_release(v61);
      v61 = 0;
      xpc_release(v60);
      v60 = 0;
      v31 = v68;
    }

    if (v31)
    {
      *(&v68 + 1) = v31;
      operator delete(v31);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSubscriberGid2"))
  {
    v68 = 0uLL;
    v69 = 0;
    (*(*v16 + 176))(&v68, v16, 1, 2);
    v32 = v68;
    if (v68 != *(&v68 + 1))
    {
      v58 = xpc_data_create(v68, *(&v68 + 1) - v68);
      if (!v58)
      {
        v58 = xpc_null_create();
      }

      *&v66 = *a5;
      *(&v66 + 1) = "kSubscriberGid2";
      sub_10000F688(&v66, &v58, &v59);
      xpc_release(v59);
      v59 = 0;
      xpc_release(v58);
      v58 = 0;
      v32 = v68;
    }

    if (v32)
    {
      *(&v68 + 1) = v32;
      operator delete(v32);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSubscriberEncryptedIdentity"))
  {
    v57 = 0;
    *&v68 = a4;
    *(&v68 + 1) = "kSubscriberEncryptedIdentity";
    sub_100006354(&v68, &v56);
    xpc::bridge(&v66, &v56, v33);
    sub_100060DE8(&v57, &v66);
    sub_10000A1EC(&v66);
    xpc_release(v56);
    if (v57)
    {
      v34 = Registry::getServiceMap(*a1);
      v35 = v34;
      if (v36 < 0)
      {
        v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
        v38 = 5381;
        do
        {
          v36 = v38;
          v39 = *v37++;
          v38 = (33 * v38) ^ v39;
        }

        while (v39);
      }

      std::mutex::lock(v34);
      *&v68 = v36;
      v40 = sub_100009510(&v35[1].__m_.__sig, &v68);
      if (v40)
      {
        v42 = v40[3];
        v41 = v40[4];
        if (v41)
        {
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v35);
          atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v41);
          if (!v42)
          {
LABEL_90:
            sub_100004A34(v41);
            goto LABEL_91;
          }

LABEL_68:
          v68 = 0uLL;
          v69 = 0;
          PersonalityIdFromSlotId();
          v43 = HIBYTE(v69);
          v44 = HIBYTE(v69);
          if (v69 < 0)
          {
            v43 = *(&v68 + 1);
          }

          if (!v43)
          {
LABEL_87:
            if (v44 < 0)
            {
              operator delete(v68);
            }

            if (!v41)
            {
              goto LABEL_91;
            }

            goto LABEL_90;
          }

          v56 = 0;
          (*(*v42 + 32))(&v56, v42, &v68, 1, v57);
          v55 = 0;
          (*(*v42 + 64))(&v55, v42, &v68);
          v54 = 0;
          v45 = xpc_dictionary_create(0, 0, 0);
          v46 = v45;
          if (v45)
          {
            v54 = v45;
          }

          else
          {
            v46 = xpc_null_create();
            v54 = v46;
            if (!v46)
            {
              v47 = xpc_null_create();
              v46 = 0;
              goto LABEL_78;
            }
          }

          if (xpc_get_type(v46) == &_xpc_type_dictionary)
          {
            xpc_retain(v46);
LABEL_79:
            xpc_release(v46);
            if (v56)
            {
              ctu::cf_to_xpc(&v53, v56, v48);
              sub_1013D4DC4(&v54, @"kCTEncryptedIdentity", &v53);
              xpc_release(v53);
              v53 = 0;
            }

            if (v55)
            {
              ctu::cf_to_xpc(&v52, v55, v48);
              sub_1013D4DC4(&v54, @"kCTIdentityAnonymousUserName", &v52);
              xpc_release(v52);
              v52 = 0;
            }

            v50 = v54;
            if (v54)
            {
              xpc_retain(v54);
            }

            else
            {
              v50 = xpc_null_create();
            }

            *&v66 = *a5;
            *(&v66 + 1) = "kSubscriberEncryptedIdentity";
            sub_100DAE90C(&v66, &v50, &v51);
            xpc_release(v51);
            v51 = 0;
            xpc_release(v50);
            v50 = 0;
            xpc_release(v54);
            sub_100005978(&v55);
            sub_10002D760(&v56);
            v44 = HIBYTE(v69);
            goto LABEL_87;
          }

          v47 = xpc_null_create();
LABEL_78:
          v54 = v47;
          goto LABEL_79;
        }

        std::mutex::unlock(v35);
        if (v42)
        {
          goto LABEL_68;
        }
      }

      else
      {
        std::mutex::unlock(v35);
      }
    }

LABEL_91:
    sub_100005978(&v57);
  }

LABEL_92:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1013D1E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13, xpc_object_t a14, const void *a15, xpc_object_t a16, const void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  xpc_release(object);
  xpc_release(a14);
  sub_100005978(&a15);
  sub_10002D760(&a16);
  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

  sub_100005978(&a17);
  if ((v28 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  _Unwind_Resume(a1);
}

const void **sub_1013D1FC8(Registry **a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = 0;
  __p = a4;
  v19 = "kSubscriberEncryptedIdentity";
  sub_100006354(&__p, &object);
  xpc::bridge(&v22, &object, v5);
  sub_1001B1A54(&v23, &v22);
  sub_10000A1EC(&v22);
  xpc_release(object);
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  if (v8 < 0)
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
  __p = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &__p);
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
      if (!v14)
      {
LABEL_17:
        sub_100004A34(v13);
        return sub_10002D760(&v23);
      }
    }

    else
    {
      std::mutex::unlock(v7);
      if (!v14)
      {
        return sub_10002D760(&v23);
      }
    }

    __p = 0;
    v19 = 0;
    v20 = 0;
    PersonalityIdFromSlotId();
    v15 = HIBYTE(v20);
    v16 = HIBYTE(v20);
    if (v20 < 0)
    {
      v15 = v19;
    }

    if (v15)
    {
      (*(*v14 + 48))(v14, &__p, 1, v23);
      v16 = HIBYTE(v20);
    }

    if (v16 < 0)
    {
      operator delete(__p);
    }

    if (v13)
    {
      goto LABEL_17;
    }
  }

  else
  {
    std::mutex::unlock(v7);
  }

  return sub_10002D760(&v23);
}

void sub_1013D2168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, char a16, int a17, const void *a18)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_10002D760(&a18);
  _Unwind_Resume(a1);
}

void sub_1013D21D4(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  if (xpc_dictionary_get_value(*a4, "kSubscriberMnc"))
  {
    ServiceMap = Registry::getServiceMap(*a1);
    v8 = ServiceMap;
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = (v9 & 0x7FFFFFFFFFFFFFFFLL);
      v11 = 5381;
      do
      {
        v9 = v11;
        v12 = *v10++;
        v11 = (33 * v11) ^ v12;
      }

      while (v12);
    }

    std::mutex::lock(ServiceMap);
    v19 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, &v19);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v8);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
        if (!v15)
        {
LABEL_15:
          if ((v16 & 1) == 0)
          {
            sub_100004A34(v14);
          }

          return;
        }

LABEL_11:
        v17 = *(a5 + 8);
        v18 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        SubscriberUtilityInterface::getSubscriberMnc();
        if (v18)
        {
          sub_100004A34(v18);
        }

        goto LABEL_15;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_11;
  }
}

void sub_1013D2300(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D2328(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v9 = ServiceMap;
  if ((v10 & 0x8000000000000000) != 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  v48 = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &v48);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_10:
  if (xpc_dictionary_get_value(*a4, "kSubscriberPinRetryCount"))
  {
    v19 = *a5;
    v18 = a5[1];
    if (v18)
    {
      atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
    }

    v50[0] = off_101F35330;
    v50[1] = v19;
    v50[2] = v18;
    v50[3] = v50;
    (*(*v16 + 128))(v16, 1, v50);
    sub_1000FF0B4(v50);
  }

  if (xpc_dictionary_get_value(*a4, "kSubscriberPukRetryCount"))
  {
    v21 = *a5;
    v20 = a5[1];
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    v49[0] = off_101F353B0;
    v49[1] = v21;
    v49[2] = v20;
    v49[3] = v49;
    (*(*v16 + 136))(v16, 1, v49);
    sub_1000FF0B4(v49);
  }

LABEL_18:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  v22 = Registry::getServiceMap(*a1);
  v23 = v22;
  if ((v24 & 0x8000000000000000) != 0)
  {
    v25 = (v24 & 0x7FFFFFFFFFFFFFFFLL);
    v26 = 5381;
    do
    {
      v24 = v26;
      v27 = *v25++;
      v26 = (33 * v26) ^ v27;
    }

    while (v27);
  }

  std::mutex::lock(v22);
  v48 = v24;
  v28 = sub_100009510(&v23[1].__m_.__sig, &v48);
  if (v28)
  {
    v30 = v28[3];
    v29 = v28[4];
    if (v29)
    {
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v23);
      atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
      v31 = 0;
      if (!v30)
      {
        goto LABEL_39;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v30 = 0;
  }

  std::mutex::unlock(v23);
  v29 = 0;
  v31 = 1;
  if (!v30)
  {
    goto LABEL_39;
  }

LABEL_29:
  if (xpc_dictionary_get_value(*a4, "kSubscriberMcc"))
  {
    v32 = a5[1];
    v47 = v32;
    if (v32)
    {
      atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SubscriberUtilityInterface::getSubscriberMcc();
    if (v47)
    {
      sub_100004A34(v47);
    }
  }

  if (xpc_dictionary_get_value(*a4, "kSubscriberLastKnownMcc"))
  {
    v33 = a5[1];
    v46 = v33;
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    SubscriberUtilityInterface::getLastKnownSubscriberMcc();
    if (v46)
    {
      sub_100004A34(v46);
    }
  }

LABEL_39:
  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if (xpc_dictionary_get_value(*a4, "kSubscriberNetworkSelectionMenuAvailable"))
  {
    v34 = Registry::getServiceMap(*a1);
    v35 = v34;
    if ((v36 & 0x8000000000000000) != 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    v48 = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, &v48);
    if (v40)
    {
      v42 = v40[3];
      v41 = v40[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = 0;
        if (!v42)
        {
LABEL_55:
          if ((v43 & 1) == 0)
          {
            sub_100004A34(v41);
          }

          return;
        }

LABEL_51:
        v44 = a5[1];
        v45 = v44;
        if (v44)
        {
          atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        RegistrationInterface::isNetworkSelectionMenuEnabled();
        if (v45)
        {
          sub_100004A34(v45);
        }

        goto LABEL_55;
      }
    }

    else
    {
      v42 = 0;
    }

    std::mutex::unlock(v35);
    v41 = 0;
    v43 = 1;
    if (!v42)
    {
      goto LABEL_55;
    }

    goto LABEL_51;
  }
}

void sub_1013D2774(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D291C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D2944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  v7[0] = a4;
  v7[1] = "kSubscriberPin";
  sub_100006354(v7, &object);
  v11 = 0;
  v12 = 0;
  v13 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v11);
  }

  xpc_release(object);
  v11 = 0;
  v12 = 0;
  sGetSubscriberSimInterface();
  v4 = v11;
  if (v11)
  {
    if (SHIBYTE(v10) < 0)
    {
      sub_100005F2C(__p, v9[0], v9[1]);
    }

    else
    {
      *__p = *v9;
      v6 = v10;
    }

    (*(*v4 + 104))(v4, 1, __p);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }
  }

  if (v12)
  {
    sub_100004A34(v12);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }
}

void sub_1013D2A58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t object, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  v25 = *(v23 - 32);
  if (v25)
  {
    sub_100004A34(v25);
  }

  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D2AC8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v14 = 0uLL;
  v15 = 0;
  v12[0] = a4;
  v12[1] = "kSubscriberPin";
  sub_100006354(v12, object);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v16);
  }

  xpc_release(object[0]);
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  object[0] = a4;
  object[1] = "kSubscriberPuk";
  sub_100006354(object, &v11);
  v16 = 0;
  v17 = 0;
  v18 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v18) < 0)
  {
    operator delete(v16);
  }

  xpc_release(v11);
  v16 = 0;
  v17 = 0;
  sGetSubscriberSimInterface();
  v5 = v16;
  if (v16)
  {
    if (SHIBYTE(v13) < 0)
    {
      sub_100005F2C(__dst, v12[0], v12[1]);
    }

    else
    {
      *__dst = *v12;
      v9 = v13;
    }

    if (SHIBYTE(v15) < 0)
    {
      sub_100005F2C(__p, v14, *(&v14 + 1));
    }

    else
    {
      *__p = v14;
      v7 = v15;
    }

    (*(*v5 + 112))(v5, 1, __dst, __p);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v9) < 0)
    {
      operator delete(__dst[0]);
    }
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }
}

void sub_1013D2C7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, xpc_object_t a23, uint64_t a24, xpc_object_t object, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 32);
  if (v33)
  {
    sub_100004A34(v33);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  if (*(v31 - 41) < 0)
  {
    operator delete(*(v31 - 64));
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D2D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9[1] = 0;
  v10 = 0;
  sGetSubscriberSimInterface();
  sub_100020980();
  v6 = qword_101FCAA00;
  if (os_log_type_enabled(qword_101FCAA00, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Subscriber service is not running", buf, 2u);
  }

  v8 = xpc_int64_create(19);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  *buf = *a5;
  *&buf[8] = "kPosixError";
  sub_10000F688(buf, &v8, v9);
  xpc_release(v9[0]);
  v9[0] = 0;
  xpc_release(v8);
  v8 = 0;
  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1013D3470(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, __int128 a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, xpc_object_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void *sub_1013D3608(void *a1)
{
  *a1 = off_101F35120;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D3654(void *a1)
{
  *a1 = off_101F35120;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013D372C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F35120;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013D3764(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013D3774(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013D37B4(uint64_t a1, _DWORD *a2)
{
  v3 = *a2 - 1;
  if (v3 > 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_101962378[v3];
  }

  v6 = xpc_int64_create(v4);
  if (!v6)
  {
    v6 = xpc_null_create();
  }

  v5[0] = *(a1 + 8);
  v5[1] = "kSubscriberSimTrayStatus";
  sub_10000F688(v5, &v6, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v6);
}

uint64_t sub_1013D3858(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013D38A4(void *a1)
{
  *a1 = off_101F351B0;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_1013D38FC(void *a1)
{
  *a1 = off_101F351B0;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void *sub_1013D39F8(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101F351B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = result[4];
  a2[3] = result[3];
  a2[4] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013D3A50(void *a1)
{
  sub_100E48AD8(a1 + 8);

  operator delete(a1);
}

const void **sub_1013D3A8C(uint64_t a1, CFTypeRef *a2)
{
  cf = *a2;
  v2 = cf;
  *a2 = 0;
  if (!v2)
  {
    return sub_10001021C(&cf);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  v6 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v7 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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
  v31[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v31);
  if (v10)
  {
    v12 = v10[3];
    v11 = v10[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
      if (!v12)
      {
        goto LABEL_8;
      }

LABEL_19:
      v24 = *(a1 + 32);
      v28 = *(a1 + 24);
      v29 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
      }

      v30 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      v32 = 0;
      operator new();
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_8:
  v14 = Registry::getServiceMap(*(a1 + 8));
  v15 = v14;
  v16 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v17 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
    v18 = 5381;
    do
    {
      v16 = v18;
      v19 = *v17++;
      v18 = (33 * v18) ^ v19;
    }

    while (v19);
  }

  std::mutex::lock(v14);
  v31[0] = v16;
  v20 = sub_100009510(&v15[1].__m_.__sig, v31);
  if (!v20)
  {
    v22 = 0;
LABEL_29:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    if (!v22)
    {
      goto LABEL_14;
    }

LABEL_30:
    v26 = *(a1 + 32);
    v28 = *(a1 + 24);
    v29 = v26;
    if (v26)
    {
      atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
    }

    v30 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v32 = 0;
    operator new();
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
    goto LABEL_29;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
  if (v22)
  {
    goto LABEL_30;
  }

LABEL_14:
  v31[0] = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v28 = 0;
  sub_1013D3F64((a1 + 24), cf, &v28);
  sub_1013D4328(&v28);
  sub_10001021C(v31);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return sub_10001021C(&cf);
}

void sub_1013D3E30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013D3EE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013D3F2C(uint64_t a1)
{
  sub_10001021C((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D3F64(xpc_object_t *a1, ctu *this, uint64_t *a3)
{
  ctu::cf_to_xpc(object, this, this);
  v5 = object[0];
  v25 = object[0];
  if (object[0] && xpc_get_type(object[0]) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v25 = xpc_null_create();
  }

  xpc_release(object[0]);
  v6 = *a3;
  if (!*a3 || *v6 != 1)
  {
    goto LABEL_47;
  }

  v7 = (v6 + 8);
  if (*(v6 + 31) < 0)
  {
    if (!*(v6 + 16))
    {
      goto LABEL_15;
    }

    v7 = *v7;
  }

  else if (!*(v6 + 31))
  {
    goto LABEL_15;
  }

  v8 = xpc_string_create(v7);
  v24 = v8;
  if (!v8)
  {
    v8 = xpc_null_create();
    v24 = v8;
  }

  sub_1013D4DC4(&v25, @"kCTMobileEquipmentInfoDisplayCSN", &v24);
  xpc_release(v8);
  v24 = 0;
  v6 = *a3;
LABEL_15:
  v9 = (v6 + 32);
  if (*(v6 + 55) < 0)
  {
    if (!*(v6 + 40))
    {
      goto LABEL_23;
    }

    v9 = *v9;
  }

  else if (!*(v6 + 55))
  {
    goto LABEL_23;
  }

  v10 = xpc_string_create(v9);
  v23 = v10;
  if (!v10)
  {
    v10 = xpc_null_create();
    v23 = v10;
  }

  sub_1013D4DC4(&v25, @"kCTMobileEquipmentInfoCSN", &v23);
  xpc_release(v10);
  v23 = 0;
  v6 = *a3;
LABEL_23:
  v11 = (v6 + 56);
  if (*(v6 + 79) < 0)
  {
    if (!*(v6 + 64))
    {
      goto LABEL_31;
    }

    v11 = *v11;
  }

  else if (!*(v6 + 79))
  {
    goto LABEL_31;
  }

  v12 = xpc_string_create(v11);
  v22 = v12;
  if (!v12)
  {
    v12 = xpc_null_create();
    v22 = v12;
  }

  sub_1013D4DC4(&v25, @"kCTMobileEquipmentInfoEffectiveICCID", &v22);
  xpc_release(v12);
  v22 = 0;
  v6 = *a3;
LABEL_31:
  v13 = (v6 + 104);
  if ((*(v6 + 127) & 0x80000000) == 0)
  {
    if (!*(v6 + 127))
    {
      goto LABEL_39;
    }

LABEL_36:
    v14 = xpc_string_create(v13);
    v21 = v14;
    if (!v14)
    {
      v14 = xpc_null_create();
      v21 = v14;
    }

    sub_1013D4DC4(&v25, @"kCTMobileEquipmentInfoBaseId", &v21);
    xpc_release(v14);
    v21 = 0;
    v6 = *a3;
    goto LABEL_39;
  }

  if (*(v6 + 112))
  {
    v13 = *v13;
    goto LABEL_36;
  }

LABEL_39:
  v15 = (v6 + 128);
  if (*(v6 + 151) < 0)
  {
    if (!*(v6 + 136))
    {
      goto LABEL_47;
    }

    v15 = *v15;
  }

  else if (!*(v6 + 151))
  {
    goto LABEL_47;
  }

  v16 = xpc_string_create(v15);
  v20 = v16;
  if (!v16)
  {
    v16 = xpc_null_create();
    v20 = v16;
  }

  sub_1013D4DC4(&v25, @"kCTMobileEquipmentInfoBaseVersion", &v20);
  xpc_release(v16);
  v20 = 0;
LABEL_47:
  v18 = v25;
  if (v25)
  {
    xpc_retain(v25);
  }

  else
  {
    v18 = xpc_null_create();
  }

  object[0] = *a1;
  object[1] = "kSubscriberInfoDictionary";
  sub_100DAE90C(object, &v18, &v19);
  xpc_release(v19);
  v19 = 0;
  xpc_release(v18);
  v18 = 0;
  xpc_release(v25);
}

void sub_1013D4264(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  xpc_release(v16);
  xpc_release(*(v17 - 40));
  _Unwind_Resume(a1);
}

uint64_t *sub_1013D4328(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_100FBB8C8(v2);
    operator delete();
  }

  return a1;
}

uint64_t sub_1013D4370(uint64_t a1)
{
  *a1 = off_101F35220;
  sub_10001021C((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D43C0(uint64_t a1)
{
  *a1 = off_101F35220;
  sub_10001021C((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

const void **sub_1013D44B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101F35220;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100010024((a2 + 24), (a1 + 24));
}

void sub_1013D44FC(void *a1)
{
  sub_1013D4740(a1 + 8);

  operator delete(a1);
}

void sub_1013D4538(uint64_t a1, int *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v13 = *(a2 + 2);
  v14 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v15 = *(a2 + 14);
  v16 = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v2 = *(a2 + 5);
  v18 = *(a2 + 12);
  v17 = v2;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v3 = *(a2 + 26);
  v20 = *(a2 + 15);
  v19 = v3;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v4 = *(a2 + 18);
  v21 = *(a2 + 8);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v5 = *(a2 + 38);
  v6 = *(a2 + 21);
  v22 = v4;
  v24 = v6;
  v23 = v5;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v7 = *(a2 + 24);
  v25 = *(a2 + 11);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 50);
  v9 = *(a2 + 27);
  v26 = v7;
  v28 = v9;
  v27 = v8;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  sub_100010024(&v29, (a1 + 24));
  operator new();
}

void sub_1013D46A0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1013D4328((v2 - 48));
  sub_1013D4328((v2 - 56));
  sub_10001021C((v2 - 40));
  sub_100FBB8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1013D46F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013D4740(uint64_t a1)
{
  sub_10001021C((a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

uint64_t sub_1013D478C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  if (*(a2 + 103) < 0)
  {
    sub_100005F2C((a1 + 80), *(a2 + 80), *(a2 + 88));
  }

  else
  {
    v7 = *(a2 + 80);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 80) = v7;
  }

  if (*(a2 + 127) < 0)
  {
    sub_100005F2C((a1 + 104), *(a2 + 104), *(a2 + 112));
  }

  else
  {
    v8 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v8;
  }

  if (*(a2 + 151) < 0)
  {
    sub_100005F2C((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v9 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v9;
  }

  if (*(a2 + 175) < 0)
  {
    sub_100005F2C((a1 + 152), *(a2 + 152), *(a2 + 160));
  }

  else
  {
    v10 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v10;
  }

  if (*(a2 + 199) < 0)
  {
    sub_100005F2C((a1 + 176), *(a2 + 176), *(a2 + 184));
  }

  else
  {
    v11 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v11;
  }

  if (*(a2 + 223) < 0)
  {
    sub_100005F2C((a1 + 200), *(a2 + 200), *(a2 + 208));
  }

  else
  {
    v12 = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a1 + 200) = v12;
  }

  return a1;
}

void sub_1013D4930(_Unwind_Exception *exception_object)
{
  if (*(v1 + 199) < 0)
  {
    operator delete(*(v1 + 176));
  }

  if (*(v1 + 175) < 0)
  {
    operator delete(*(v1 + 152));
  }

  if (*(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 127) < 0)
  {
    operator delete(*(v1 + 104));
  }

  if (*(v1 + 103) < 0)
  {
    operator delete(*(v1 + 80));
  }

  if (*(v1 + 79) < 0)
  {
    operator delete(*(v1 + 56));
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013D49F4(uint64_t a1)
{
  *a1 = off_101F352A0;
  sub_10001021C((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D4A44(uint64_t a1)
{
  *a1 = off_101F352A0;
  sub_10001021C((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

const void **sub_1013D4B34(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  *a2 = off_101F352A0;
  *(a2 + 8) = v3;
  *(a2 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return sub_100010024((a2 + 24), (a1 + 24));
}

void sub_1013D4B80(void *a1)
{
  sub_1013D4740(a1 + 8);

  operator delete(a1);
}

void sub_1013D4BBC(uint64_t a1, int *a2)
{
  v10 = *a2;
  v11 = *(a2 + 2);
  v12 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  v13 = *(a2 + 2);
  v14 = *(a2 + 6);
  *(a2 + 3) = 0;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  v15 = *(a2 + 14);
  v16 = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  v2 = *(a2 + 5);
  v18 = *(a2 + 12);
  v17 = v2;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  v3 = *(a2 + 26);
  v20 = *(a2 + 15);
  v19 = v3;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v4 = *(a2 + 18);
  v21 = *(a2 + 8);
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v5 = *(a2 + 38);
  v6 = *(a2 + 21);
  v22 = v4;
  v24 = v6;
  v23 = v5;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v7 = *(a2 + 24);
  v25 = *(a2 + 11);
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  *(a2 + 24) = 0;
  v8 = *(a2 + 50);
  v9 = *(a2 + 27);
  v26 = v7;
  v28 = v9;
  v27 = v8;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  *(a2 + 27) = 0;
  sub_100010024(&v29, (a1 + 24));
  operator new();
}

void sub_1013D4D24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1013D4328((v2 - 48));
  sub_1013D4328((v2 - 56));
  sub_10001021C((v2 - 40));
  sub_100FBB8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1013D4D78(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013D4DC4(uint64_t a1, uint64_t a2, void **a3)
{
  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v10 = 0;
  v5 = *a3;
  v7 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v7 = xpc_null_create();
  }

  v6 = __p;
  if (v10 < 0)
  {
    v6 = __p[0];
  }

  *&v11 = a1;
  *(&v11 + 1) = v6;
  sub_10000F688(&v11, &v7, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v7);
  v7 = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013D4E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D4EA4(uint64_t a1, void *a2)
{
  v3 = *a2;
  if (v3 == 1)
  {
    v7 = a2[1];
    if (v7)
    {
      ctu::cf_to_xpc(&v15, v7, a2);
      *buf = *(a1 + 32);
      v14 = "kSubscriberFirmwareUpdateInfoDictionary";
      sub_10000F688(buf, &v15, &v16);
      xpc_release(v16);
      v16 = 0;
      xpc_release(v15);
    }
  }

  else
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    v4 = *(a2 + 8);
    sub_100020980();
    v5 = qword_101FCAA00;
    v6 = os_log_type_enabled(qword_101FCAA00, OS_LOG_TYPE_DEFAULT);
    if (v4 == 19)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Driver not ready", buf, 2u);
      }

      v11 = xpc_int64_create(35);
      if (!v11)
      {
        v11 = xpc_null_create();
      }

      *buf = *(a1 + 32);
      v14 = "kError";
      sub_10000F688(buf, &v11, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v11);
    }

    else
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Get Vinyl FW Update Info error", buf, 2u);
      }

      v9 = xpc_int64_create(22);
      if (!v9)
      {
        v9 = xpc_null_create();
      }

      *buf = *(a1 + 32);
      v14 = "kError";
      sub_10000F688(buf, &v9, &v10);
      xpc_release(v10);
      v10 = 0;
      xpc_release(v9);
    }
  }
}

void *sub_1013D50B4(void *a1)
{
  *a1 = off_101F35330;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D5100(void *a1)
{
  *a1 = off_101F35330;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013D51D8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F35330;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013D5210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013D5220(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013D5260(uint64_t a1, int *a2)
{
  v4 = xpc_int64_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kSubscriberPinRetryCount";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t sub_1013D52E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013D5330(void *a1)
{
  *a1 = off_101F353B0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D537C(void *a1)
{
  *a1 = off_101F353B0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1013D5454(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F353B0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013D548C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1013D549C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_1013D54DC(uint64_t a1, int *a2)
{
  v4 = xpc_int64_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kSubscriberPukRetryCount";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t sub_1013D5560(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013D55AC(uint64_t a1, xpc_object_t *a2)
{
  if (xpc_get_type(*a2) != &_xpc_type_null)
  {
    type = xpc_get_type(*a2);
    if (type == &_xpc_type_string)
    {
      *buf = 0;
      ctu::rest::detail::read_enum_string_value(buf, a2, v5);
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      xpc::dyn_cast_or_default(a2, 0, v5);
    }
  }

  ServiceMap = Registry::getServiceMap(**(a1 + 32));
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      if (!v16)
      {
        goto LABEL_19;
      }

LABEL_23:
      v19 = *(*(a1 + 32) + 8);
      if (v19)
      {
        atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
      }

      v20 = *(a1 + 48);
      if (v20)
      {
        atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
      }

      v22 = 0;
      operator new();
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_19:
  sub_100020980();
  v18 = qword_101FCAA00;
  if (os_log_type_enabled(qword_101FCAA00, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "SubscriberUtilityInterface not found", buf, 2u);
  }

  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1013D5894(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013D58E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void *sub_1013D5924(void *a1)
{
  *a1 = off_101F35460;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_1013D597C(void *a1)
{
  *a1 = off_101F35460;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

uint64_t sub_1013D5A80(uint64_t result, uint64_t a2)
{
  *a2 = off_101F35460;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 16) = *(result + 16);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1013D5AE0(void *a1)
{
  sub_1003F8420(a1 + 8);

  operator delete(a1);
}

const void **sub_1013D5B1C(uint64_t a1, const void **a2)
{
  v8 = *a2;
  v3 = v8;
  *a2 = 0;
  if (v3)
  {
    ctu::cf_to_xpc(&v13, v3, a2);
    v4 = v13;
    if (v13 && xpc_get_type(v13) == &_xpc_type_array)
    {
      xpc_retain(v4);
    }

    else
    {
      v4 = xpc_null_create();
    }

    xpc_release(v13);
    v15 = v4;
    if (v4)
    {
      xpc_retain(v4);
    }

    else
    {
      v15 = xpc_null_create();
    }

    v13 = *(a1 + 32);
    v14 = "kSubscriberCountries";
    sub_1000609CC(&v13, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
    xpc_release(v4);
  }

  v13 = 0;
  v14 = 0;
  sGetSubscriberSimInterface();
  if (v13)
  {
    object[1] = (*(*v13 + 24))(v13, *(a1 + 8));
    isEsimCapable = subscriber::isEsimCapable();
    v11 = xpc_BOOL_create(isEsimCapable);
    if (!v11)
    {
      v11 = xpc_null_create();
    }

    *buf = *(a1 + 32);
    v10 = "kSubscriberIsEsim";
    sub_10000F688(buf, &v11, object);
    xpc_release(object[0]);
    object[0] = 0;
    xpc_release(v11);
    v11 = 0;
  }

  else
  {
    sub_100020980();
    v6 = qword_101FCAA00;
    if (os_log_type_enabled(qword_101FCAA00, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N SubscriberSimInterface not found", buf, 2u);
    }
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  return sub_100010250(&v8);
}

void sub_1013D5CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = *(v2 - 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1013D5D40(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F354C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013D5D8C(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_1013D5DCC(uint64_t a1)
{
  *a1 = off_101F354E0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D5E28(uint64_t a1)
{
  *a1 = off_101F354E0;
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

xpc_object_t sub_1013D5F38(void *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  *a2 = off_101F354E0;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[3];
  a2[3] = v5;
  if (v5)
  {
    return xpc_retain(v5);
  }

  result = xpc_null_create();
  a2[3] = result;
  return result;
}

void sub_1013D5FAC(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {

    sub_100004A34(v2);
  }
}

void sub_1013D6000(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

void sub_1013D6050(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v16 = *a2;
  v17 = v4;
  if (a2[2])
  {
    v4[2] = &v17;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v16 = &v17;
  }

  v20 = 0;
  ctu::ns::AutoPool::AutoPool(&v20);
  v5 = +[NSMutableDictionary dictionary];
  v6 = v16;
  if (v16 != &v17)
  {
    do
    {
      v7 = subscriber::clientKeyFromAuthInfoType();
      if (v7)
      {
        object = 0;
        v21 = 0;
        if (ctu::cf::convert_copy())
        {
          v8 = object;
          object = v21;
          *buf = v8;
          sub_10002D760(buf);
          [v5 setObject:object forKeyedSubscript:v7];
        }

        else
        {
          sub_100020980();
          v10 = qword_101FCAA00;
          if (os_log_type_enabled(qword_101FCAA00, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Unable to convert auth info data", buf, 2u);
          }
        }

        sub_10002D760(&object);
      }

      else
      {
        sub_100020980();
        v9 = qword_101FCAA00;
        if (os_log_type_enabled(qword_101FCAA00, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Unable to find client key for auth info", buf, 2u);
        }
      }

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
        do
        {
          v12 = v6[2];
          v13 = *v12 == v6;
          v6 = v12;
        }

        while (!v13);
      }

      v6 = v12;
    }

    while (v12 != &v17);
  }

  v14 = *(a1 + 24);
  *buf = v14;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    *buf = xpc_null_create();
  }

  ctu::cf_to_xpc(&v21, v5, v15);
  object = xpc_null_create();
  sub_1009FC4F8(buf, 118, &v21, &object);
  xpc_release(object);
  xpc_release(v21);
  xpc_release(*buf);
  *buf = 0;
  ctu::ns::AutoPool::~AutoPool(&v20);
  sub_10004EC58(&v16, v17);
}

void sub_1013D62A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, xpc_object_t object, char a13, xpc_object_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a14);
  xpc_release(a15);
  a15 = 0;
  ctu::ns::AutoPool::~AutoPool(&a13);
  sub_10004EC58(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1013D632C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1013D6378(void *a1)
{
  *a1 = off_101F35560;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D63C4(void *a1)
{
  *a1 = off_101F35560;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

void sub_1013D649C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

uint64_t sub_1013D64DC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F355C0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013D6544(uint64_t a1)
{
  *a1 = off_101F35658;
  v4 = (a1 + 48);
  sub_100DBD6A8(&v4);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1013D65BC(uint64_t a1)
{
  sub_1013D6544(a1);

  operator delete();
}

uint64_t sub_1013D65F4(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v5 = *a2;
  v4 = a2[1];
  *a1 = off_101F35658;
  *(a1 + 8) = v5;
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v6;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  return a1;
}

void sub_1013D667C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013D6694(void *a1, __int128 **a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = v4 - *a2;
  if (v5 >= 1)
  {
    v6 = a1[6];
    v7 = a1[7];
    v8 = a1[8];
    if (v8 - v7 >= v5)
    {
      v28 = a1[7];
      v29 = v7;
      v24 = a1 + 6;
      v25 = &v28;
      v26 = &v29;
      if (v3 != v4)
      {
        v14 = v7;
        do
        {
          sub_1013D75A4(v14, v3);
          v3 += 6;
          v14 = (v29 + 96);
          v29 += 96;
        }

        while (v3 != v4);
        v7 = v14;
      }

      BYTE8(v26) = 1;
      sub_100DBD5F0(&v24);
      a1[7] = v7;
    }

    else
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 5);
      v10 = v9 - 0x5555555555555555 * (v5 >> 5);
      if (v10 > 0x2AAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      v11 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v6) >> 5);
      v12 = 2 * v11;
      if (2 * v11 <= v10)
      {
        v12 = v9 - 0x5555555555555555 * (v5 >> 5);
      }

      if (v11 >= 0x155555555555555)
      {
        v13 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v12;
      }

      v27 = a1 + 6;
      if (v13)
      {
        sub_1000DD644((a1 + 6), v13);
      }

      v15 = 96 * v9;
      v24 = 0;
      v25 = v15;
      v26 = v15;
      v16 = v15 + v5;
      do
      {
        sub_1013D75A4(v15, v3);
        v15 += 96;
        v3 += 6;
        v5 -= 96;
      }

      while (v5);
      *&v26 = v16;
      sub_100DBD4DC((a1 + 6), v7, a1[7], v16);
      v17 = a1[6];
      v18 = v25;
      *&v26 = v16 + a1[7] - v7;
      a1[7] = v7;
      v19 = v18 + v17 - v7;
      sub_100DBD4DC((a1 + 6), v17, v7, v19);
      v20 = a1[6];
      a1[6] = v19;
      v21 = a1[8];
      *(a1 + 7) = v26;
      *&v26 = v20;
      *(&v26 + 1) = v21;
      v24 = v20;
      v25 = v20;
      sub_100DBD628(&v24);
    }
  }

  v22 = *(*a1 + 40);

  return v22(a1);
}

void sub_1013D68A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100DBD628(va);
  _Unwind_Resume(a1);
}

double sub_1013D68E4@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[6];
  v4 = (a1 + 6);
  if (a1[7] == v3)
  {
    *a2 = 0;
    *(a2 + 96) = 0;
  }

  else
  {
    memset(v13, 0, sizeof(v13));
    v12 = 0u;
    memset(v11, 0, sizeof(v11));
    sub_1013D75A4(v11, v3);
    v6 = a1[6];
    v7 = a1[7];
    if (v6 + 96 == v7)
    {
      v8 = a1[6];
    }

    else
    {
      do
      {
        if (*(v6 + 23) < 0)
        {
          operator delete(*v6);
        }

        *v6 = *(v6 + 96);
        *(v6 + 16) = *(v6 + 112);
        *(v6 + 119) = 0;
        *(v6 + 96) = 0;
        if (*(v6 + 47) < 0)
        {
          operator delete(*(v6 + 24));
        }

        *(v6 + 24) = *(v6 + 120);
        *(v6 + 40) = *(v6 + 136);
        *(v6 + 143) = 0;
        *(v6 + 120) = 0;
        if (*(v6 + 71) < 0)
        {
          operator delete(*(v6 + 48));
        }

        *(v6 + 48) = *(v6 + 144);
        *(v6 + 64) = *(v6 + 160);
        *(v6 + 167) = 0;
        *(v6 + 144) = 0;
        if (*(v6 + 95) < 0)
        {
          operator delete(*(v6 + 72));
        }

        *(v6 + 72) = *(v6 + 168);
        *(v6 + 88) = *(v6 + 184);
        *(v6 + 191) = 0;
        *(v6 + 168) = 0;
        v8 = v6 + 96;
        v9 = v6 + 192;
        v6 += 96;
      }

      while (v9 != v7);
    }

    sub_100DBD6FC(v4, v8);
    (*(*a1 + 40))(a1);
    *a2 = v11[0];
    *(a2 + 16) = *&v11[1];
    *(a2 + 24) = *(&v11[1] + 8);
    *(a2 + 40) = *(&v11[2] + 1);
    *(a2 + 48) = v12;
    *(a2 + 64) = *&v13[0];
    *(a2 + 88) = *(&v13[1] + 1);
    result = *(v13 + 1);
    *(a2 + 72) = *(v13 + 8);
    *(a2 + 96) = 1;
  }

  return result;
}

void sub_1013D6AAC(void *a1)
{
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v2 = a1[2];
  v30 = a1[1];
  v31 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101317F80(&v30, (a1 + 3), @"Token", &v32);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v3 = v32;
  v4 = v33;
  if (v32 != v33)
  {
    do
    {
      memset(&__dst, 0, sizeof(__dst));
      if (*(v3 + 23) < 0)
      {
        sub_100005F2C(&__dst, *v3, *(v3 + 1));
      }

      else
      {
        v7 = *v3;
        __dst.__r_.__value_.__r.__words[2] = *(v3 + 2);
        *&__dst.__r_.__value_.__l.__data_ = v7;
      }

      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      *v41 = 0u;
      v42 = 0u;
      memset(v40, 0, sizeof(v40));
      sub_10081E64C(v40, &__dst, 8);
      __p = 0uLL;
      v39 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      while (1)
      {
        v8 = sub_10081E7D0(v40);
        if ((*(v8 + *(*v8 - 24) + 32) & 5) != 0)
        {
          break;
        }

        sub_100005308(&v35, &__p);
      }

      v9 = v35;
      if (v36 - v35 == 96)
      {
        if (*(v35 + 23) < 0)
        {
          sub_100005F2C(v21, *v35, *(v35 + 1));
          v9 = v35;
        }

        else
        {
          v10 = *v35;
          v22 = *(v35 + 2);
          *v21 = v10;
        }

        if (*(v9 + 47) < 0)
        {
          sub_100005F2C(&v23, *(v9 + 3), *(v9 + 4));
          v9 = v35;
        }

        else
        {
          v11 = *(v9 + 24);
          v24 = *(v9 + 5);
          v23 = v11;
        }

        if (*(v9 + 71) < 0)
        {
          sub_100005F2C(&v25, *(v9 + 6), *(v9 + 7));
          v9 = v35;
        }

        else
        {
          v12 = v9[3];
          v26 = *(v9 + 8);
          v25 = v12;
        }

        if (*(v9 + 95) < 0)
        {
          sub_100005F2C(&v27, *(v9 + 9), *(v9 + 10));
        }

        else
        {
          v13 = *(v9 + 72);
          v28 = *(v9 + 11);
          v27 = v13;
        }
      }

      else
      {
        sub_10000501C(v21, "");
        sub_10000501C(&v23, "");
        sub_10000501C(&v25, "");
        sub_10000501C(&v27, "");
      }

      v53 = &v35;
      sub_1000087B4(&v53);
      if (SHIBYTE(v39) < 0)
      {
        operator delete(__p);
      }

      *&v40[0] = v5;
      *(v40 + *(v5 - 24)) = v6;
      if (SBYTE7(v42) < 0)
      {
        operator delete(v41[0]);
      }

      std::locale::~locale(&v40[1] + 1);
      std::istream::~istream();
      std::ios::~ios();
      v14 = a1[7];
      if (v14 >= a1[8])
      {
        v19 = sub_100DBD35C(a1 + 6, v21);
        v20 = SHIBYTE(v28);
        a1[7] = v19;
        if (v20 < 0)
        {
          operator delete(v27);
        }
      }

      else
      {
        v15 = *v21;
        *(v14 + 16) = v22;
        *v14 = v15;
        v21[1] = 0;
        v22 = 0;
        v21[0] = 0;
        v16 = v24;
        *(v14 + 24) = v23;
        *(v14 + 40) = v16;
        v23 = 0uLL;
        v17 = v25;
        *(v14 + 64) = v26;
        *(v14 + 48) = v17;
        v26 = 0;
        v24 = 0;
        v25 = 0uLL;
        v18 = v27;
        *(v14 + 88) = v28;
        *(v14 + 72) = v18;
        v27 = 0uLL;
        v28 = 0;
        a1[7] = v14 + 96;
      }

      if (SHIBYTE(v26) < 0)
      {
        operator delete(v25);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23);
      }

      if (SHIBYTE(v22) < 0)
      {
        operator delete(v21[0]);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v3 = (v3 + 24);
    }

    while (v3 != v4);
  }

  *&v40[0] = &v32;
  sub_1000087B4(v40);
}

void sub_1013D6F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, std::__shared_weak_count *a37, char a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, char a50)
{
  if (a37)
  {
    sub_100004A34(a37);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D7008(void *a1)
{
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v2 = a1[6];
  v1 = a1[7];
  if (v2 != v1)
  {
    v3 = 0uLL;
    while (1)
    {
      *v34 = v3;
      v35 = v3;
      v32 = v3;
      *v33 = v3;
      *v30 = v3;
      *v31 = v3;
      sub_1013D75A4(v30, v2);
      v55 = 0;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      __src = 0u;
      v39 = 0u;
      v40 = 0u;
      sub_10000D518(&v39);
      v4 = sub_10000C030(&v39);
      v5 = sub_10000C030(v4);
      v6 = sub_10000C030(v5);
      v7 = sub_10000C030(v6);
      v8 = sub_10000C030(v7);
      v9 = sub_10000C030(v8);
      sub_10000C030(v9);
      if ((BYTE8(v45) & 0x10) != 0)
      {
        break;
      }

      if ((BYTE8(v45) & 8) != 0)
      {
        v12 = *(&v40 + 1);
        v11 = *(&v41 + 1);
LABEL_10:
        v10 = v11 - v12;
        if ((v11 - v12) >= 0x7FFFFFFFFFFFFFF8)
        {
          sub_1000A2378();
        }

        if (v10 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v29) = v11 - v12;
        if (v10)
        {
          memmove(&__dst, v12, v10);
        }

        goto LABEL_16;
      }

      v10 = 0;
      HIBYTE(v29) = 0;
LABEL_16:
      *(&__dst + v10) = 0;
      *&v39 = v25;
      *(&v39 + *(v25 - 24)) = v24;
      if (SHIBYTE(v44) < 0)
      {
        operator delete(*(&v43 + 1));
      }

      std::locale::~locale(&v40);
      std::ostream::~ostream();
      std::ios::~ios();
      v13 = v37;
      if (v37 >= v38)
      {
        v15 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3);
        v16 = v15 + 1;
        if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000CE3D4();
        }

        if (0x5555555555555556 * ((v38 - v36) >> 3) > v16)
        {
          v16 = 0x5555555555555556 * ((v38 - v36) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v38 - v36) >> 3) >= 0x555555555555555)
        {
          v17 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v17 = v16;
        }

        *&v41 = &v36;
        if (v17)
        {
          sub_100005348(&v36, v17);
        }

        v18 = 8 * ((v37 - v36) >> 3);
        *v18 = __dst;
        *(v18 + 16) = v29;
        v14 = 24 * v15 + 24;
        v19 = (24 * v15 - (v37 - v36));
        memcpy((v18 - (v37 - v36)), v36, v37 - v36);
        v20 = v36;
        v21 = v38;
        v36 = v19;
        v37 = v14;
        v38 = 0;
        *&v39 = v20;
        *&v40 = v20;
        *(&v40 + 1) = v21;
        *(&v39 + 1) = v20;
        sub_1000054E0(&v39);
      }

      else
      {
        *v37 = __dst;
        *(v13 + 2) = v29;
        v14 = (v13 + 24);
      }

      v37 = v14;
      v3 = 0uLL;
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[1]);
        v3 = 0uLL;
      }

      if (SHIBYTE(v34[0]) < 0)
      {
        operator delete(v33[0]);
        v3 = 0uLL;
      }

      if (SHIBYTE(v32) < 0)
      {
        operator delete(v31[1]);
        v3 = 0uLL;
      }

      if (SHIBYTE(v31[0]) < 0)
      {
        operator delete(v30[0]);
        v3 = 0uLL;
      }

      v2 += 6;
      if (v2 == v1)
      {
        goto LABEL_38;
      }
    }

    v11 = v45;
    if (v45 < *(&__src + 1))
    {
      *&v45 = *(&__src + 1);
      v11 = *(&__src + 1);
    }

    v12 = __src;
    goto LABEL_10;
  }

LABEL_38:
  v22 = a1[2];
  v26 = a1[1];
  v27 = v22;
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1013182B0(&v26, (a1 + 3), @"Token", &v36);
  if (v27)
  {
    sub_100004A34(v27);
  }

  *&v39 = &v36;
  sub_1000087B4(&v39);
}

void sub_1013D74F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, char *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  a24 = &a37;
  sub_1000087B4(&a24);
  _Unwind_Resume(a1);
}

char *sub_1013D75A4(char *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(__dst + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(__dst + 5) = *(a2 + 5);
    *(__dst + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    sub_100005F2C(__dst + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(__dst + 8) = *(a2 + 8);
    *(__dst + 3) = v6;
  }

  if (*(a2 + 95) < 0)
  {
    sub_100005F2C(__dst + 72, *(a2 + 9), *(a2 + 10));
  }

  else
  {
    v7 = *(a2 + 72);
    *(__dst + 11) = *(a2 + 11);
    *(__dst + 72) = v7;
  }

  return __dst;
}

void sub_1013D766C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 47) < 0)
  {
    operator delete(*(v1 + 24));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013D76B8()
{
  if (!qword_101FCBD38)
  {
    operator new();
  }

  return qword_101FCBD38;
}

double sub_1013D7800(uint64_t a1)
{
  *a1 = off_101F35748;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  return result;
}

uint64_t sub_1013D783C(uint64_t a1, uint64_t a2)
{
  *a1 = off_101F35748;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1065353216;
  sub_1013D78C0(a1, a2);
  return a1;
}

void sub_1013D789C(_Unwind_Exception *a1)
{
  sub_1001754E8(v1 + 32);
  v3 = *(v1 + 8);
  if (v3)
  {
    *(v1 + 16) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1013D78C0(void *a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a2 + 16) != v2)
  {
    v5 = 0;
    v6 = 1;
    do
    {
      v7 = (*(**(v2 + 8 * v5) + 80))(*(v2 + 8 * v5));
      sub_1013D7A0C(a1, v7, 1);
      v5 = v6;
      v2 = *(a2 + 8);
      ++v6;
    }

    while (v5 < (*(a2 + 16) - v2) >> 3);
  }
}

void *sub_1013D7954(void *a1)
{
  *a1 = off_101F35748;
  v3 = a1[1];
  v2 = a1[2];
  if (v2 != v3)
  {
    v4 = 0;
    v5 = 1;
    do
    {
      v6 = *(v3 + 8 * v4);
      if (v6)
      {
        (*(*v6 + 8))(v6);
        v3 = a1[1];
        v2 = a1[2];
      }

      v4 = v5++;
    }

    while (v4 < (v2 - v3) >> 3);
  }

  sub_1001754E8((a1 + 4));
  v7 = a1[1];
  if (v7)
  {
    a1[2] = v7;
    operator delete(v7);
  }

  return a1;
}

void sub_1013D7A0C(void *a1, const void *a2, char a3)
{
  v24 = a2;
  if (a3)
  {
    goto LABEL_11;
  }

  v5 = a1[1];
  if (a1[2] == v5)
  {
    goto LABEL_11;
  }

  v6 = 0;
  v7 = 1;
  while (1)
  {
    v8 = (*(**(v5 + 8 * v6) + 64))(*(v5 + 8 * v6));
    v9 = (*(*a2 + 64))(a2);
    if (!strcmp(v8, v9))
    {
      break;
    }

    v6 = v7;
    v5 = a1[1];
    ++v7;
    if (v6 >= (a1[2] - v5) >> 3)
    {
      goto LABEL_11;
    }
  }

  if (!v7)
  {
LABEL_11:
    sub_1013D7F94((a1 + 1), &v24);
  }

  else
  {
    v10 = a1[1];
    v11 = *(v10 + 8 * (v7 - 1));
    if (v11)
    {
      (*(*v11 + 8))(v11);
      v10 = a1[1];
    }

    *(v10 + 8 * (v7 - 1)) = a2;
  }

  v12 = (*(*a2 + 64))(a2);
  sub_10000501C(__p, v12);
  v13 = sub_1000D3314((a1 + 4), __p);
  v14 = v13;
  v15 = a1[5];
  if (!*&v15)
  {
    goto LABEL_29;
  }

  v16 = vcnt_s8(v15);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v16.u32[0];
  if (v16.u32[0] > 1uLL)
  {
    v18 = v13;
    if (v13 >= *&v15)
    {
      v18 = v13 % *&v15;
    }
  }

  else
  {
    v18 = (*&v15 - 1) & v13;
  }

  v19 = *(a1[4] + 8 * v18);
  if (!v19 || (v20 = *v19) == 0)
  {
LABEL_29:
    operator new();
  }

  while (1)
  {
    v21 = v20[1];
    if (v21 == v14)
    {
      break;
    }

    if (v17 > 1)
    {
      if (v21 >= *&v15)
      {
        v21 %= *&v15;
      }
    }

    else
    {
      v21 &= *&v15 - 1;
    }

    if (v21 != v18)
    {
      goto LABEL_29;
    }

LABEL_28:
    v20 = *v20;
    if (!v20)
    {
      goto LABEL_29;
    }
  }

  if (!sub_100022D3C((a1 + 4), v20 + 2, __p))
  {
    goto LABEL_28;
  }

  v20[5] = a2;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1013D7F64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100E602A4(1, v14);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1013D7F94(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000FB8B8(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1013D8068(uint64_t a1, char *a2)
{
  v3 = (*(*a1 + 16))(a1);

  return sub_101707BEC(v3, a2);
}

const void *sub_1013D80C0(void *a1, char *a2, uint64_t a3, char a4)
{
  v8 = (*(*a1 + 16))(a1);
  v9 = sub_101707BEC(v8, a2);
  v10 = v9;
  if (v9)
  {
    if ((*(*v9 + 16))(v9, a3))
    {
      sub_1013D7A0C(a1, v10, a4);
    }

    else
    {
      (*(*v10 + 8))(v10);
      return 0;
    }
  }

  return v10;
}

uint64_t sub_1013D81AC(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (a2 >= ((*(a1 + 16) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

void sub_1013D81D0(void *a1, char *__s)
{
  v5 = a1[1];
  v4 = a1[2];
  while (v5 != v4)
  {
    v6 = (*(**v5 + 64))();
    v7 = strcmp(v6, __s);
    v4 = a1[2];
    if (!v7)
    {
      break;
    }

    v5 += 8;
  }

  if (v5 != v4)
  {
    if (*v5)
    {
      (*(**v5 + 8))(*v5);
      v4 = a1[2];
    }

    v8 = v4 - (v5 + 8);
    if (v4 != v5 + 8)
    {
      memmove(v5, v5 + 8, v4 - (v5 + 8));
    }

    a1[2] = &v5[v8];
    sub_10000501C(__p, __s);
    v9 = sub_10031B7D4(a1 + 4, __p);
    if (!v9)
    {
      goto LABEL_39;
    }

    v10 = a1[5];
    v11 = *v9;
    v12 = v9[1];
    v13 = vcnt_s8(v10);
    v13.i16[0] = vaddlv_u8(v13);
    if (v13.u32[0] > 1uLL)
    {
      if (v12 >= *&v10)
      {
        v12 %= *&v10;
      }
    }

    else
    {
      v12 &= *&v10 - 1;
    }

    v14 = a1[4];
    v15 = *(v14 + 8 * v12);
    do
    {
      v16 = v15;
      v15 = *v15;
    }

    while (v15 != v9);
    if (v16 == a1 + 6)
    {
      goto LABEL_28;
    }

    v17 = v16[1];
    if (v13.u32[0] > 1uLL)
    {
      if (v17 >= *&v10)
      {
        v17 %= *&v10;
      }
    }

    else
    {
      v17 &= *&v10 - 1;
    }

    if (v17 != v12)
    {
LABEL_28:
      if (v11)
      {
        v18 = v11[1];
        if (v13.u32[0] > 1uLL)
        {
          v19 = v11[1];
          if (v18 >= *&v10)
          {
            v19 = v18 % *&v10;
          }
        }

        else
        {
          v19 = v18 & (*&v10 - 1);
        }

        if (v19 == v12)
        {
          goto LABEL_32;
        }
      }

      *(v14 + 8 * v12) = 0;
      v11 = *v9;
    }

    if (!v11)
    {
LABEL_38:
      *v16 = v11;
      *v9 = 0;
      --a1[7];
      sub_100E602A4(1, v9);
LABEL_39:
      if (v21 < 0)
      {
        operator delete(__p[0]);
      }

      return;
    }

    v18 = v11[1];
LABEL_32:
    if (v13.u32[0] > 1uLL)
    {
      if (v18 >= *&v10)
      {
        v18 %= *&v10;
      }
    }

    else
    {
      v18 &= *&v10 - 1;
    }

    if (v18 != v12)
    {
      *(a1[4] + 8 * v18) = v16;
      v11 = *v9;
    }

    goto LABEL_38;
  }
}

void sub_1013D8404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_1013D8420(uint64_t a1, char *a2)
{
  sub_10000501C(__p, a2);
  v3 = sub_10031B7D4((a1 + 32), __p);
  v4 = v3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return v4[5];
    }
  }

  else if (v3)
  {
    return v4[5];
  }

  return 0;
}

void sub_1013D8484(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_1013D84A0(uint64_t a1, char *a2)
{
  sub_10000501C(__p, a2);
  v3 = sub_10031B8D0((a1 + 32), __p);
  v4 = v3;
  if (v7 < 0)
  {
    operator delete(__p[0]);
    if (v4)
    {
      return v4[5];
    }
  }

  else if (v3)
  {
    return v4[5];
  }

  return 0;
}

void sub_1013D8504(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D8520(uint64_t a1, const char *a2, void *a3)
{
  a3[1] = *a3;
  v3 = *(a1 + 8);
  if (*(a1 + 16) != v3)
  {
    v7 = 0;
    v8 = 1;
    do
    {
      v9 = (*(**(v3 + 8 * v7) + 64))(*(v3 + 8 * v7));
      if (!strcmp(v9, a2))
      {
        sub_1013D7F94(a3, (*(a1 + 8) + 8 * v7));
      }

      v7 = v8;
      v3 = *(a1 + 8);
      ++v8;
    }

    while (v7 < (*(a1 + 16) - v3) >> 3);
  }
}

void *sub_1013D85EC(uint64_t a1)
{
  result = sub_1013D84A0(a1, "Content-Type");
  if (result)
  {
    return result[3];
  }

  return result;
}

void sub_1013D8690(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013D86CC(uint64_t a1, void *a2)
{
  if (*a2)
  {
    operator new();
  }

  return 0;
}

const void *sub_1013D8788(uint64_t a1, char *a2)
{
  result = sub_1013D84A0(a1, a2);
  if (result)
  {
    v3 = *(*result + 72);

    return v3();
  }

  return result;
}

char *sub_1013D87F0(uint64_t a1, char *a2)
{
  result = sub_1013D84A0(a1, a2);
  if (result)
  {
    v3 = result;
    result += 24;
    if (v3[47] < 0)
    {
      return *result;
    }
  }

  return result;
}

unsigned __int8 *sub_1013D8820(uint64_t a1, char *a2)
{
  result = sub_1013D84A0(a1, a2);
  if (result)
  {
    return result[17];
  }

  return result;
}

unsigned int *sub_1013D8840(uint64_t a1, char *a2)
{
  result = sub_1013D84A0(a1, a2);
  if (result)
  {
    return result[5];
  }

  return result;
}

std::string *sub_1013D8860@<X0>(std::string *result@<X0>, int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  a4->__r_.__value_.__r.__words[0] = 0;
  a4->__r_.__value_.__l.__size_ = 0;
  a4->__r_.__value_.__r.__words[2] = 0;
  size = result->__r_.__value_.__l.__size_;
  if (result->__r_.__value_.__r.__words[2] != size)
  {
    v8 = result;
    v9 = 0;
    v10 = 1;
    do
    {
      v11 = *(size + 8 * v9);
      result = (*(*v11 + 56))(v11);
      if (result == a2)
      {
        (*(*v11 + 48))(__p, v11, a3);
        if ((v15 & 0x80u) == 0)
        {
          v12 = __p;
        }

        else
        {
          v12 = __p[0];
        }

        if ((v15 & 0x80u) == 0)
        {
          v13 = v15;
        }

        else
        {
          v13 = __p[1];
        }

        std::string::append(a4, v12, v13);
        if (v15 < 0)
        {
          operator delete(__p[0]);
        }

        result = std::string::append(a4, "\n", 1uLL);
      }

      v9 = v10;
      size = v8->__r_.__value_.__l.__size_;
      ++v10;
    }

    while (v9 < (v8->__r_.__value_.__r.__words[2] - size) >> 3);
  }

  return result;
}

void sub_1013D8990(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
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

void *sub_1013D89C8(void *a1, void *a2)
{
  v5 = 16;
  strcpy(__p, "SilenceAssertion");
  sub_10072A6B4(a1, a2, __p, "reg", 0);
  *a1 = &off_101F357F8;
  if (v5 < 0)
  {
    operator delete(*__p);
  }

  *a1 = &off_101F35788;
  return a1;
}

void sub_1013D8A6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D8B18(uint64_t a1, void **a2, uint64_t *a3)
{
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s is releasing its Silence assertion", buf, 0xCu);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_14;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_14:
  v18 = *a2;
  object = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    object = xpc_null_create();
  }

  (*(*v16 + 32))(v16, &object);
  xpc_release(object);
  object = 0;
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1013D8CD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D8D1C(uint64_t a1, void **a2, void **a3, uint64_t *a4)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v9 = ServiceMap;
  if (v10 < 0)
  {
    v11 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v10 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  std::mutex::lock(ServiceMap);
  *&buf = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
  if (v14)
  {
    v16 = v14[3];
    v15 = v14[4];
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v9);
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
      v17 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v16 = 0;
  }

  std::mutex::unlock(v9);
  v15 = 0;
  v17 = 1;
LABEL_9:
  v18 = *(a1 + 32);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v16)
  {
    if (v19)
    {
      if (*(a3 + 23) >= 0)
      {
        v20 = a3;
      }

      else
      {
        v20 = *a3;
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s is taking its Silence assertion", &buf, 0xCu);
    }

    v21 = *a2;
    v46 = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      v46 = xpc_null_create();
    }

    v34 = a4[1];
    v44 = *a4;
    v45 = v34;
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(__p, *a3, a3[1]);
    }

    else
    {
      *__p = *a3;
      v43 = a3[2];
    }

    (*(*v16 + 24))(v16, &v46, &v44, __p);
    if (SHIBYTE(v43) < 0)
    {
      operator delete(__p[0]);
    }

    if (v45)
    {
      sub_100004A34(v45);
    }

    xpc_release(v46);
    v46 = 0;
    goto LABEL_57;
  }

  if (v19)
  {
    if (*(a3 + 23) >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v22;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I %s is taking its Silence assertion. Unable to get handle to controller", &buf, 0xCu);
  }

  v40 = xpc_int64_create(45);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  *&buf = *a4;
  *(&buf + 1) = "kPosixError";
  sub_10000F688(&buf, &v40, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v40);
  v40 = 0;
  v23 = Registry::getServiceMap(*(a1 + 40));
  v24 = v23;
  v25 = "11CCXpcServer";
  if (("11CCXpcServer" & 0x8000000000000000) != 0)
  {
    v26 = ("11CCXpcServer" & 0x7FFFFFFFFFFFFFFFLL);
    v27 = 5381;
    do
    {
      v25 = v27;
      v28 = *v26++;
      v27 = (33 * v27) ^ v28;
    }

    while (v28);
  }

  std::mutex::lock(v23);
  *&buf = v25;
  v29 = sub_100009510(&v24[1].__m_.__sig, &buf);
  if (v29)
  {
    v31 = v29[3];
    v30 = v29[4];
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v24);
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v30);
      v32 = 0;
      if (!v31)
      {
        goto LABEL_30;
      }

LABEL_45:
      BYTE7(v39[1]) = 16;
      strcpy(v39, "SilenceAssertion");
      v35 = *a2;
      v38 = v35;
      if (v35)
      {
        xpc_retain(v35);
      }

      else
      {
        v38 = xpc_null_create();
      }

      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(v36, *a3, a3[1]);
      }

      else
      {
        *v36 = *a3;
        v37 = a3[2];
      }

      sub_100A5EE64(v39, &v38, v36, 0);
      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36[0]);
      }

      xpc_release(v38);
      v38 = 0;
      if (SBYTE7(v39[1]) < 0)
      {
        operator delete(*&v39[0]);
      }

      goto LABEL_55;
    }
  }

  else
  {
    v31 = 0;
  }

  std::mutex::unlock(v24);
  v30 = 0;
  v32 = 1;
  if (v31)
  {
    goto LABEL_45;
  }

LABEL_30:
  v33 = *(a1 + 32);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Silence Assertion response: cannot locate XPC server from reg. Not notifying assertion addition status", &buf, 2u);
  }

LABEL_55:
  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

LABEL_57:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }
}

void sub_1013D917C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, xpc_object_t a33)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
    if (v35)
    {
LABEL_3:
      if (v36)
      {
LABEL_8:
        _Unwind_Resume(a1);
      }

LABEL_7:
      sub_100004A34(v33);
      goto LABEL_8;
    }
  }

  else if (v35)
  {
    goto LABEL_3;
  }

  sub_100004A34(v34);
  if (v36)
  {
    goto LABEL_8;
  }

  goto LABEL_7;
}

void sub_1013D926C(uint64_t a1)
{
  sub_10072A870(a1);

  operator delete();
}

void sub_1013D92A8(uint64_t a1)
{
  sub_10072A870(a1);

  operator delete();
}

void sub_1013D9360(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D939C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013D93D4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1013D9404(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1013D980C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, dispatch_object_t object, dispatch_object_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  if (v24)
  {
    dispatch_release(v24);
  }

  sub_10032D3A4(v23 + 24, *(v21 + 112));
  sub_100D92208(*(v21 + 88));
  v25 = *(v21 + 72);
  if (v25)
  {
    sub_100004A34(v25);
  }

  v26 = *(v21 + 56);
  if (v26)
  {
    sub_100004A34(v26);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 + 40));
  sub_1000C0544(v22);
  NAISelectorMgrInterface::~NAISelectorMgrInterface(v21);
  operator delete();
}

void sub_1013D99A0(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
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

uint64_t *sub_1013D9AA0@<X0>(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 88);
  result = (a1 + 88);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = result;
  v7 = v4;
  do
  {
    if (*(v7 + 8) >= a2)
    {
      v6 = v7;
    }

    v7 = v7[*(v7 + 8) < a2];
  }

  while (v7);
  if (v6 != result && *(v6 + 8) <= a2)
  {
    while (1)
    {
      while (1)
      {
        v8 = *(v4 + 8);
        if (v8 <= a2)
        {
          break;
        }

        v4 = *v4;
        if (!v4)
        {
          goto LABEL_15;
        }
      }

      if (v8 >= a2)
      {
        break;
      }

      v4 = v4[1];
      if (!v4)
      {
LABEL_15:
        sub_1000A58E4("map::at:  key not found");
      }
    }

    v10 = v4[5];
    v9 = v4[6];
    *a3 = v10;
    a3[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_8:
    *a3 = 0;
    a3[1] = 0;
  }

  return result;
}

void sub_1013D9B40(uint64_t a1, uint64_t a2)
{
  if ((rest::operator==() & 1) == 0)
  {
    v4 = *(a1 + 104);
    if (v4 != (a1 + 112))
    {
      v5 = (a2 + 8);
      while (1)
      {
        v13 = 0;
        v14 = 0;
        sub_1013D9AA0(a1, *(v4 + 8), &v13);
        v6 = v13;
        if (v13)
        {
          v7 = *v5;
          if (!*v5)
          {
            goto LABEL_14;
          }

          v8 = *(v4 + 8);
          v9 = v5;
          do
          {
            if (*(v7 + 32) >= v8)
            {
              v9 = v7;
            }

            v7 = *(v7 + 8 * (*(v7 + 32) < v8));
          }

          while (v7);
          if (v9 == v5 || v8 < *(v9 + 8))
          {
            goto LABEL_14;
          }

          if ((rest::operator==() & 1) == 0)
          {
            break;
          }
        }

LABEL_15:
        if (v14)
        {
          sub_100004A34(v14);
        }

        v10 = v4[1];
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
            v11 = v4[2];
            v12 = *v11 == v4;
            v4 = v11;
          }

          while (!v12);
        }

        v4 = v11;
        if (v11 == (a1 + 112))
        {
          return;
        }
      }

      v6 = v13;
LABEL_14:
      (*(*v6 + 112))(v6, v4 + 5);
      goto LABEL_15;
    }
  }
}

void sub_1013D9C70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013D9C8C(void *a1)
{
  v2 = a1[13];
  v3 = a1 + 14;
  if (v2 != a1 + 14)
  {
    do
    {
      v4 = a1[5];
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = subscriber::asString();
        v6 = asString();
        *buf = 136315394;
        v15 = v5;
        v16 = 2080;
        v17 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sim %s: Bundle technology type: %s", buf, 0x16u);
      }

      v7 = v2[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  v10 = a1[10];
  v11 = a1 + 11;
  if (v10 != v11)
  {
    do
    {
      (*(*v10[5] + 120))(v10[5]);
      v12 = v10[1];
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
          v13 = v10[2];
          v9 = *v13 == v10;
          v10 = v13;
        }

        while (!v9);
      }

      v10 = v13;
    }

    while (v13 != v11);
  }
}

void sub_1013D9E28(uint64_t a1)
{
  *a1 = off_101F358B0;
  sub_10032D3A4(a1 + 104, *(a1 + 112));
  sub_100D92208(*(a1 + 88));
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  NAISelectorMgrInterface::~NAISelectorMgrInterface(a1);
}

void sub_1013D9EB4(uint64_t a1)
{
  *a1 = off_101F358B0;
  sub_10032D3A4(a1 + 104, *(a1 + 112));
  sub_100D92208(*(a1 + 88));
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 56);
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  NAISelectorMgrInterface::~NAISelectorMgrInterface(a1);

  operator delete();
}

void sub_1013D9F58(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1013D9FAC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1013D9FEC(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1013DA018(ServiceManager::Service *this)
{
  *this = off_101F359E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1013DA074(ServiceManager::Service *this)
{
  *this = off_101F359E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1013DA0F4@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1013DA138(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1013D99A0(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1013D99A0(v4, 0);
}

void sub_1013DA1DC(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1013DA2F0(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
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
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

void sub_1013DA3D4(uint64_t a1)
{
  Registry::createRestModuleOneTimeUseConnection(&v1, *(**a1 + 48));
  ctu::RestModule::connect();
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10000501C(&__p, "/cc/props/carrier_bundles");
  operator new();
}

void sub_1013DA574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
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

__n128 sub_1013DA650(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F35A60;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1013DA688(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v9 = *v3;
  v10 = v5;
  if (v3[2])
  {
    v5[2] = &v10;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_1013DA760(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1013DA828(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F35AE0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1013DA860(void *a1)
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

uint64_t sub_1013DA8A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1013DA8F4(uint64_t *a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  ctu::RestModule::disconnect((*v1 + 64));
  sub_1000FF844(&v4);
  return sub_1000049E0(&v3);
}

void sub_1013DA93C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1013DA958(uint64_t a1)
{
  sub_100009970(a1 + 32, *(a1 + 40));

  return sub_1013E077C(a1);
}

void sub_1013DA998(uint64_t a1)
{
  *a1 = off_101F35B60;
  *(a1 + 56) = off_101F35BD0;
  v2 = *(a1 + 2392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 2376);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 2360);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_100009970(a1 + 2312, *(a1 + 2320));
  if (*(a1 + 2288))
  {
    sub_100021348((a1 + 2288));
    operator delete(*(a1 + 2288));
  }

  sub_100DE3E98(*(a1 + 2272));
  PersonalitiesTracker::~PersonalitiesTracker((a1 + 2096));
  v5 = *(a1 + 2088);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 2072);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_10004543C(a1 + 1248);
  sub_10004543C(a1 + 440);
  sub_10006DCAC(a1 + 416, *(a1 + 424));
  sub_10006DCAC(a1 + 384, *(a1 + 392));
  sub_10006DCAC(a1 + 360, *(a1 + 368));
  EmergencyMode::~EmergencyMode((a1 + 336));
  sub_10006DCAC(a1 + 312, *(a1 + 320));
  sub_100009970(a1 + 288, *(a1 + 296));
  sub_10006DCAC(a1 + 248, *(a1 + 256));
  sub_10006DCAC(a1 + 224, *(a1 + 232));
  v8 = (a1 + 200);
  sub_1000B2DB4(&v8);
  sub_10006DCAC(a1 + 176, *(a1 + 184));
  sub_100009970(a1 + 152, *(a1 + 160));
  sub_1008F0550(a1 + 120);
  sub_100009970(a1 + 96, *(a1 + 104));
  sub_1013E077C(a1 + 64);
  v7 = *(a1 + 48);
  if (v7)
  {
    dispatch_release(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  TransportMasterInterface::~TransportMasterInterface(a1);
}

void sub_1013DAB50(uint64_t a1)
{
  sub_1013DA998(a1);

  operator delete();
}

void sub_1013DAB88(uint64_t a1)
{
  sub_1013DA998(a1 - 56);

  operator delete();
}

uint64_t TransportMasterController::create@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::supportsGemini(a1);
  if (result)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1013DB044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, dispatch_object_t object, dispatch_object_t a16, void *a17, std::__shared_weak_count *a18, int a19, __int16 a20, char a21, char a22)
{
  if (__p)
  {
    (*(*__p + 8))(__p);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_100004A34(v22);
  _Unwind_Resume(a1);
}

void sub_1013DB214(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  ctu::OsLogLogger::~OsLogLogger(&a9);
  sub_1000C0544((v14 + 32));
  ctu::OsLogContext::~OsLogContext(&a14);
  JUMPOUT(0x1013DB1D0);
}

void sub_1013DB24C(uint64_t a1, uint64_t a2, void *a3)
{
  if (!*a3 || *(*a3 + 49))
  {
    return;
  }

  v6 = (a1 + 2264);
  v7 = sub_100007A6C(a1 + 2264, a2);
  v8 = (a1 + 2272);
  if (a1 + 2272 == v7)
  {
    v14 = 0;
    v10 = 0;
    v9 = 0;
  }

  else
  {
    v9 = *(v7 + 56);
    v10 = *(v7 + 64);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v9)
    {
      v12 = *a3;
      v11 = a3[1];
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v13 = *(v9 + 64);
      *(v9 + 56) = v12;
      *(v9 + 64) = v11;
      if (v13)
      {
        sub_100004A34(v13);
      }

      v14 = 1;
    }

    else
    {
      v14 = 0;
    }
  }

  v15 = *(a2 + 24);
  v77 = v10;
  if (v15 <= 4)
  {
    if (!*(a2 + 24))
    {
      if (v8 == sub_100007A6C(v6, (*a3 + 24)))
      {
        v27 = *(a1 + 40);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v28 = (*a3 + 24);
          if (*(*a3 + 47) < 0)
          {
            v28 = *v28;
          }

          *buf = 136315138;
          *&buf[4] = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Creating manager for personality: %s", buf, 0xCu);
        }

        sub_101519444(&v78);
      }

      goto LABEL_126;
    }

    if (v15 != 1)
    {
      if (v15 == 4 && v14)
      {
        (*(**(v9 + 80) + 64))(*(v9 + 80));
      }

      goto LABEL_126;
    }

    if (v14)
    {
      if ((*(**(v9 + 80) + 16))(*(v9 + 80)) == 1)
      {
        sub_100142824(" enabled", a2, buf);
        sub_1013DDF7C(a1, buf);
        if (SBYTE7(v82) < 0)
        {
          v29 = *buf;
LABEL_125:
          operator delete(v29);
          goto LABEL_126;
        }
      }
    }

    goto LABEL_126;
  }

  if (v15 - 6 >= 2)
  {
    if (v15 == 5 && v14)
    {
      sub_10007AEAC(v9 + 128, 1);
    }

    goto LABEL_126;
  }

  if (v8 == sub_100007A6C(v6, a2))
  {
    goto LABEL_126;
  }

  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Removing manager for personality: %s", buf, 0xCu);
  }

  *buf = 1;
  *&buf[8] = a1 + 64;
  *(&v82 + 1) = 0;
  v83 = 0;
  *&v82 = &v82 + 8;
  v18 = *(a1 + 96);
  if (v18 != (a1 + 104))
  {
    v19 = 0;
    v20 = (&v82 + 8);
    while (1)
    {
      v80 = 0;
      if (v20 == (&v82 + 8))
      {
        v22 = &v82 + 1;
        if (!v19)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v21 = &v82 + 8;
        if (v19)
        {
          do
          {
            v22 = v19;
            v19 = *(v19 + 1);
          }

          while (v19);
        }

        else
        {
          do
          {
            v22 = *(v21 + 2);
            v23 = *v22 == v21;
            v21 = v22;
          }

          while (v23);
        }

        if ((sub_1000068BC(v22 + 4, v18 + 4) & 0x80) == 0)
        {
          v24 = sub_100005C2C(&v82, &v80, v18 + 4);
          goto LABEL_38;
        }

        if (!*(&v82 + 1))
        {
LABEL_41:
          v80 = &v82 + 8;
LABEL_42:
          v78 = 0uLL;
          v79 = 0;
          sub_1013E4F64();
        }
      }

      v80 = v22;
      v24 = v22 + 1;
LABEL_38:
      if (!*v24)
      {
        goto LABEL_42;
      }

      v25 = v18[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v18[2];
          v23 = *v26 == v18;
          v18 = v26;
        }

        while (!v23);
      }

      v19 = *(&v82 + 1);
      if (v26 == (a1 + 104))
      {
        if (*(&v82 + 1))
        {
          v30 = &v82 + 8;
          do
          {
            v31 = v30;
            v32 = (v19 + 32);
            v33 = sub_1000068BC(v19 + 4, a2);
            if ((v33 & 0x80u) == 0)
            {
              v30 = v19;
            }

            v19 = *&v19[(v33 >> 4) & 8];
          }

          while (v19);
          if (v30 != &v82 + 8)
          {
            if ((v33 & 0x80u) != 0)
            {
              v32 = (v31 + 32);
            }

            if ((sub_1000068BC(a2, v32) & 0x80) == 0)
            {
              v34 = *(v30 + 1);
              if (v34)
              {
                do
                {
                  v35 = v34;
                  v34 = *v34;
                }

                while (v34);
              }

              else
              {
                v36 = v30;
                do
                {
                  v35 = *(v36 + 2);
                  v23 = *v35 == v36;
                  v36 = v35;
                }

                while (!v23);
              }

              if (v82 == v30)
              {
                *&v82 = v35;
              }

              --v83;
              sub_100018288(*(&v82 + 1), v30);
              if (v30[55] < 0)
              {
                operator delete(*v32);
              }

              operator delete(v30);
            }
          }
        }

        break;
      }

      v20 = v82;
      v18 = v26;
    }
  }

  if (buf[0] == 1)
  {
    v37 = *&buf[8];
    if (*(*&buf[8] + 48) == v83)
    {
      v38 = *(*&buf[8] + 32);
      v39 = *&buf[8] + 40;
      if (v38 == (*&buf[8] + 40))
      {
        goto LABEL_115;
      }

      v40 = v82;
      while (1)
      {
        v41 = *(v38 + 55);
        if (v41 >= 0)
        {
          v42 = *(v38 + 55);
        }

        else
        {
          v42 = v38[5];
        }

        v43 = *(v40 + 55);
        v44 = v43;
        if ((v43 & 0x80u) != 0)
        {
          v43 = v40[5];
        }

        if (v42 != v43)
        {
          break;
        }

        v45 = v41 >= 0 ? v38 + 4 : v38[4];
        v46 = v44 >= 0 ? v40 + 4 : v40[4];
        if (memcmp(v45, v46, v42) || *(v38 + 56) != *(v40 + 56) || *(v38 + 15) != *(v40 + 15))
        {
          break;
        }

        v47 = v38[1];
        v48 = v38;
        if (v47)
        {
          do
          {
            v38 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v38 = v48[2];
            v23 = *v38 == v48;
            v48 = v38;
          }

          while (!v23);
        }

        v49 = v40[1];
        if (v49)
        {
          do
          {
            v50 = v49;
            v49 = *v49;
          }

          while (v49);
        }

        else
        {
          do
          {
            v50 = v40[2];
            v23 = *v50 == v40;
            v40 = v50;
          }

          while (!v23);
        }

        v40 = v50;
        if (v38 == v39)
        {
          goto LABEL_115;
        }
      }
    }

    sub_1013DDDDC(v37, &v82);
  }

LABEL_115:
  sub_100009970(&v82, *(&v82 + 1));
  *buf = 1;
  v82 = 0u;
  v83 = 0;
  *&buf[8] = a1 + 120;
  sub_1013E501C(&v82, (a1 + 152));
  sub_1000727F0(&v82, a2);
  sub_1013E5184(buf);
  v51 = sub_100007A6C(v6, a2);
  if (v8 != v51)
  {
    v52 = v51;
    v53 = v51[1];
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
      v55 = v51;
      do
      {
        v54 = v55[2];
        v23 = *v54 == v55;
        v55 = v54;
      }

      while (!v23);
    }

    if (*v6 == v51)
    {
      *v6 = v54;
    }

    --*(a1 + 2280);
    sub_100018288(*(a1 + 2272), v51);
    sub_1000D57F4((v52 + 4));
    v29 = v52;
    goto LABEL_125;
  }

LABEL_126:
  v56 = (a1 + 2288);
  sub_100021348((a1 + 2288));
  v57 = *(a1 + 2264);
  if (v57 != v8)
  {
    do
    {
      v58 = v57[7];
      v60 = *(v58 + 56);
      v59 = *(v58 + 64);
      if (v59)
      {
        atomic_fetch_add_explicit(&v59->__shared_owners_, 1uLL, memory_order_relaxed);
        v61 = *(v60 + 48);
        sub_100004A34(v59);
        if (v61 == 1)
        {
          goto LABEL_131;
        }
      }

      else if (*(v60 + 48))
      {
LABEL_131:
        v62 = *(a1 + 2296);
        v63 = *(a1 + 2304);
        if (v62 >= v63)
        {
          v66 = (v62 - *v56) >> 4;
          v67 = v66 + 1;
          if ((v66 + 1) >> 60)
          {
            sub_1000CE3D4();
          }

          v68 = v63 - *v56;
          if (v68 >> 3 > v67)
          {
            v67 = v68 >> 3;
          }

          if (v68 >= 0x7FFFFFFFFFFFFFF0)
          {
            v69 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v69 = v67;
          }

          if (v69)
          {
            if (!(v69 >> 60))
            {
              operator new();
            }

            sub_100013D10();
          }

          v70 = 16 * v66;
          v71 = *(v57 + 7);
          *(16 * v66) = v71;
          if (*(&v71 + 1))
          {
            atomic_fetch_add_explicit((*(&v71 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v65 = (v70 + 16);
          v72 = *(a1 + 2288);
          v73 = *(a1 + 2296) - v72;
          v74 = v70 - v73;
          memcpy((v70 - v73), v72, v73);
          *(a1 + 2288) = v74;
          *(a1 + 2296) = v65;
          *(a1 + 2304) = 0;
          if (v72)
          {
            operator delete(v72);
          }
        }

        else
        {
          *v62 = v57[7];
          v64 = v57[8];
          v62[1] = v64;
          if (v64)
          {
            atomic_fetch_add_explicit((v64 + 8), 1uLL, memory_order_relaxed);
          }

          v65 = v62 + 2;
        }

        *(a1 + 2296) = v65;
      }

      v75 = v57[1];
      if (v75)
      {
        do
        {
          v76 = v75;
          v75 = *v75;
        }

        while (v75);
      }

      else
      {
        do
        {
          v76 = v57[2];
          v23 = *v76 == v57;
          v57 = v76;
        }

        while (!v23);
      }

      v57 = v76;
    }

    while (v76 != v8);
  }

  sub_1013DE124(a1);
  sub_1013DEC98(a1);
  if (v77)
  {
    sub_100004A34(v77);
  }
}

void sub_1013DBFF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DC0B4(uint64_t a1)
{
  v1 = *(a1 + 176);
  v2 = (a1 + 184);
  if (v1 != (a1 + 184))
  {
    do
    {
      TransportMasterController::getManager_sync(a1, *(v1 + 7), &v7);
      if (v7)
      {
        (*(**(v7 + 80) + 40))(*(v7 + 80), *(v1 + 8));
      }

      if (v8)
      {
        sub_100004A34(v8);
      }

      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }
}

void sub_1013DC17C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DC194(uint64_t a1)
{
  v1 = a1;
  v56[0] = 0;
  v56[1] = 0;
  v55 = v56;
  v2 = *(a1 + 2264);
  v3 = (a1 + 2272);
  if (v2 == (a1 + 2272))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = sub_1013E04B0(&v55, v2 + 7);
      *v5 = 0;
      *(v5 + 2) = 0;
      if (v4)
      {
        v4 = 1;
      }

      else
      {
        v4 = (*(**(v2[7] + 96) + 48))(*(v2[7] + 96));
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v21 = *v7 == v2;
          v2 = v7;
        }

        while (!v21);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  v8 = *(v1 + 200);
  v9 = *(v1 + 208);
  if (v8 == v9)
  {
    v10 = 0;
    if ((v4 & 1) == 0)
    {
      goto LABEL_77;
    }

LABEL_49:
    if (v10 & 1 | ((*(v1 + 2400) & 1) == 0))
    {
      goto LABEL_77;
    }

    TransportMasterController::getManager_sync(v1, *(v1 + 280), &v53);
    if (!v53 || (*(**(v53 + 80) + 32))(*(v53 + 80)) == 2)
    {
      goto LABEL_75;
    }

    sub_10000501C(__p, "CS call during which Internet was not possible ended");
    Registry::getTimerService(buf, *(v1 + 2064));
    v31 = (***buf)(*buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v32 = *(v1 + 2384);
    if (v32)
    {
      if (v31 < AutoStartTimer::getExpiryTime(v32) && AutoStartTimer::getExpiryTime(*(v1 + 2384)) - v31 >= 15000000000)
      {
        v45 = *(v1 + 40);
        if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
LABEL_73:
          if (v52 < 0)
          {
            operator delete(__p[0]);
          }

LABEL_75:
          if (v54)
          {
            sub_100004A34(v54);
          }

          goto LABEL_77;
        }

        v46 = __p;
        if (v52 < 0)
        {
          v46 = __p[0];
        }

        *buf = 136315138;
        *&buf[4] = v46;
        v39 = "#I Already disallowed for the requested duration. No need to do anything for: %s";
        v40 = v45;
        v41 = 12;
LABEL_72:
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, v39, buf, v41);
        goto LABEL_73;
      }

      v33 = *(v1 + 40);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Stop existing timer and start a new one.", buf, 2u);
      }

      v34 = *(v1 + 2392);
      *(v1 + 2384) = 0u;
      if (v34)
      {
        sub_100004A34(v34);
      }
    }

    sub_10000501C(object, "DisallowFeaturesTimer");
    Registry::getTimerService(&v57, *(v1 + 2064));
    *buf = off_101F36AE0;
    *&buf[8] = v1;
    v63 = buf;
    AutoStartTimer::create();
    v35 = v61;
    v61 = 0uLL;
    v36 = *(v1 + 2392);
    *(v1 + 2384) = v35;
    if (v36)
    {
      sub_100004A34(v36);
      if (*(&v61 + 1))
      {
        sub_100004A34(*(&v61 + 1));
      }
    }

    sub_10002B644(buf);
    if (v58)
    {
      sub_100004A34(v58);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(object[0]);
    }

    v37 = *(v1 + 40);
    if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_73;
    }

    v38 = __p;
    if (v52 < 0)
    {
      v38 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v38;
    *&buf[12] = 2048;
    *&buf[14] = 15000;
    v39 = "#I Data switching disallowed; Reason: %s; for next: %lld seconds";
    v40 = v37;
    v41 = 22;
    goto LABEL_72;
  }

  v10 = 0;
  v11 = *(v1 + 200);
  v50 = *(v1 + 208);
  v47 = v1;
  do
  {
    *buf = v8;
    *&buf[8] = "kCallStatus";
    sub_100006354(buf, object);
    v13 = xpc::dyn_cast_or_default(object, 9, v12);
    xpc_release(object[0]);
    object[0] = 0;
    object[1] = 0;
    v60 = 0;
    __p[0] = v8;
    __p[1] = "kUuid";
    sub_100006354(__p, &v61);
    memset(buf, 0, sizeof(buf));
    xpc::dyn_cast_or_default();
    if (buf[23] < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v61);
    if (v13 <= 9 && ((1 << v13) & 0x24C) != 0)
    {
      v14 = *(v1 + 40);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = SHIBYTE(v60);
        v16 = object[0];
        v17 = asString();
        *buf = 136315394;
        v18 = object;
        if (v15 < 0)
        {
          v18 = v16;
        }

        *&buf[4] = v18;
        *&buf[12] = 2080;
        *&buf[14] = v17;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Call: %s is not active; status: %s", buf, 0x16u);
        v9 = v50;
      }
    }

    else
    {
      *buf = v8;
      *&buf[8] = "kCallSubType";
      sub_100006354(buf, __p);
      v20 = xpc::dyn_cast_or_default(__p, 1, v19);
      xpc_release(__p[0]);
      v21 = v20 == 4 || v20 == 8;
      v22 = v21;
      v49 = v22;
      v23 = v21 || v20 == 1;
      *buf = v8;
      *&buf[8] = "kCallSimSlot";
      sub_100006354(buf, __p);
      v25 = xpc::dyn_cast_or_default(__p, 0, v24);
      xpc_release(__p[0]);
      log = *(v1 + 40);
      if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
      {
        if (v60 >= 0)
        {
          v26 = object;
        }

        else
        {
          v26 = object[0];
        }

        v27 = subscriber::asString();
        v28 = asString();
        v29 = asString();
        *buf = 136315906;
        *&buf[4] = v26;
        *&buf[12] = 2080;
        *&buf[14] = v27;
        *&buf[22] = 2080;
        v63 = v28;
        v64 = 2080;
        v65 = v29;
        _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_DEFAULT, "#I Call: %s is active on SimSlot: %s; status: %s, type: %s", buf, 0x2Au);
        v1 = v47;
        v9 = v50;
      }

      TransportMasterController::getManager_sync(v1, v25, buf);
      if (*buf)
      {
        v30 = sub_1013E04B0(&v55, buf);
        *v30 |= v20 == 1;
        v30[1] = (v30[1] | v49) & 1;
        v30[2] |= v20 == 2;
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      v10 |= v23;
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(object[0]);
    }

    v11 += 8;
    v8 += 8;
  }

  while (v11 != v9);
  if (v4)
  {
    goto LABEL_49;
  }

LABEL_77:
  *(v1 + 2400) = v10 & 1;
  v42 = v55;
  if (v55 != v56)
  {
    do
    {
      sub_1015198B8(v42[4], *(v42 + 48), *(v42 + 49), *(v42 + 50), v10 & 1);
      v43 = v42[1];
      if (v43)
      {
        do
        {
          v44 = v43;
          v43 = *v43;
        }

        while (v43);
      }

      else
      {
        do
        {
          v44 = v42[2];
          v21 = *v44 == v42;
          v42 = v44;
        }

        while (!v21);
      }

      v42 = v44;
    }

    while (v44 != v56);
  }

  sub_100D88930(v56[0]);
}

void sub_1013DC8F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, xpc_object_t object, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, std::__shared_weak_count *a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38)
{
  sub_10002B644(v38 - 160);
  if (a32)
  {
    sub_100004A34(a32);
  }

  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(object);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_100D88930(a29);
  _Unwind_Resume(a1);
}

void sub_1013DCA48(uint64_t a1)
{
  v1 = *(a1 + 224);
  v2 = (a1 + 232);
  if (v1 != (a1 + 232))
  {
    do
    {
      TransportMasterController::getManager_sync(a1, *(v1 + 7), &v9);
      if (v9)
      {
        (*(**(v9 + 96) + 56))(*(v9 + 96), *(v1 + 8) == 0);
      }

      else
      {
        v4 = *(a1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = subscriber::asString();
          *buf = 136315138;
          v12 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N No manager for SIM %s", buf, 0xCu);
        }
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }
}

void sub_1013DCBB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DCBCC(uint64_t a1)
{
  v1 = *(a1 + 248);
  v2 = (a1 + 256);
  if (v1 != (a1 + 256))
  {
    do
    {
      TransportMasterController::getManager_sync(a1, *(v1 + 7), &v9);
      if (v9)
      {
        (*(**(v9 + 96) + 64))(*(v9 + 96), *(v1 + 8));
      }

      else
      {
        v4 = *(a1 + 40);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v5 = subscriber::asString();
          *buf = 136315138;
          v12 = v5;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N No manager for SIM: %s", buf, 0xCu);
        }
      }

      if (v10)
      {
        sub_100004A34(v10);
      }

      v6 = v1[1];
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
          v7 = v1[2];
          v8 = *v7 == v1;
          v1 = v7;
        }

        while (!v8);
      }

      v1 = v7;
    }

    while (v7 != v2);
  }
}

void sub_1013DCD2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DCD48(uint64_t a1, int a2)
{
  if (*(a1 + 272) != a2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = asString();
      v6 = 2080;
      v7 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I WiFiStatus %s ==>> %s", &v4, 0x16u);
    }

    sub_1013DEC98(a1);
  }
}

void sub_1013DCE24(uint64_t a1, int a2)
{
  if (*(a1 + 280) != a2)
  {
    if (*(a1 + 408) == 1)
    {
      sub_1013E05B0(a1);
    }

    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = subscriber::asString();
      v6 = 2080;
      v7 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I (change states) PreferredDataSim %s ==>> %s", &v4, 0x16u);
    }

    sub_1013DE124(a1);
  }
}

void sub_1013DCF14(uint64_t a1, int a2)
{
  if (*(a1 + 276) != a2)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315394;
      v5 = subscriber::asString();
      v6 = 2080;
      v7 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I (change states) CurrentDataSim %s ==>> %s", &v4, 0x16u);
    }

    sub_1013DE124(a1);
    sub_1013DEC98(a1);
  }
}

void sub_1013DCFF8(uint64_t a1, int a2)
{
  v2 = *(a1 + 284);
  if (v2 != a2)
  {
    v3 = a2;
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = asStringBool(v3);
      v7 = asStringBool(*(a1 + 284));
      *__p = 136315394;
      *&__p[4] = v6;
      v9 = 2080;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Airplane mode %s ==>> %s", __p, 0x16u);
      v2 = *(a1 + 284);
    }

    if (v2)
    {
      goto LABEL_5;
    }

    if (*(a1 + 2296) - *(a1 + 2288) >= 0x11uLL)
    {
      sub_10000501C(__p, "Airplane mode disabled");
      sub_1013DDF7C(a1, __p);
      if (v11 < 0)
      {
        operator delete(*__p);
      }

      if (*(a1 + 284))
      {
LABEL_5:
        sub_1013E05B0(a1);
      }
    }

    sub_1013DE124(a1);
    sub_1013DEC98(a1);
  }
}

void sub_1013DD138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DD15C(uint64_t a1)
{
  v1 = *(a1 + 288);
  v2 = (a1 + 296);
  if (v1 != (a1 + 296))
  {
    v4 = a1 + 2272;
    do
    {
      v5 = sub_100007A6C(a1 + 2264, v1 + 4);
      if (v4 != v5)
      {
        v6 = v5;
        v7 = *(v5 + 56);
        v8 = *(v6 + 64);
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v7)
        {
          v9 = *(v1 + 64) == 1 && *(v1 + 17) == 0;
          sub_101519A64(v7, v9);
        }

        if (v8)
        {
          sub_100004A34(v8);
        }
      }

      v10 = v1[1];
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
          v11 = v1[2];
          v12 = *v11 == v1;
          v1 = v11;
        }

        while (!v12);
      }

      v1 = v11;
    }

    while (v11 != v2);
  }
}

void sub_1013DD23C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DD254(uint64_t a1)
{
  v1 = *(a1 + 312);
  v2 = (a1 + 320);
  if (v1 != (a1 + 320))
  {
    do
    {
      TransportMasterController::getManager_sync(a1, *(v1 + 7), &v7);
      if (v7)
      {
        (*(**(v7 + 96) + 96))(*(v7 + 96), *(v1 + 8));
      }

      if (v8)
      {
        sub_100004A34(v8);
      }

      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }
}

void sub_1013DD31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DD334(uint64_t a1)
{
  if ((operator==() & 1) == 0)
  {

    sub_1013DE124(a1);
  }
}

void sub_1013DD388(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] ------ TransportMasterController state ------", buf, 2u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = ctu::rest::asString();
    v4 = *(a1 + 2056);
    *buf = 136315394;
    v26 = v3;
    v27 = 1024;
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] DynamicDataSwitchingDisablementAssertion: %s (%d)", buf, 0x12u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = asStringBool(*(a1 + 2401));
    *buf = 136315138;
    v26 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] fIsDynamicDataSwitchingDisablementAsserted: %s", buf, 0xCu);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 2352) == 0;
    *buf = 67109120;
    LODWORD(v26) = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] WaitingToComeInService[%d]", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 2384))
    {
      v7 = 0;
    }

    else
    {
      v7 = *(a1 + 2352) == 0;
    }

    *buf = 67109120;
    LODWORD(v26) = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] DataSwitchingAllowed[%d]", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    RawDynamicCellularDataSwitchState_sync = TransportMasterController::getRawDynamicCellularDataSwitchState_sync(a1);
    v9 = asStringBool(RawDynamicCellularDataSwitchState_sync);
    *buf = 136315138;
    v26 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d]  DynamicCellularDataSwitch: %s", buf, 0xCu);
  }

  v10 = *(a1 + 2312);
  if (v10 != (a1 + 2320))
  {
    do
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = v10 + 4;
        if (*(v10 + 55) < 0)
        {
          v12 = *v12;
        }

        *buf = 136315138;
        v26 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [d]  Assertion: %s", buf, 0xCu);
      }

      v13 = v10[1];
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
          v14 = v10[2];
          v15 = *v14 == v10;
          v10 = v14;
        }

        while (!v15);
      }

      v10 = v14;
    }

    while (v14 != (a1 + 2320));
  }

  v16 = *(a1 + 40);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = subscriber::asString();
    *buf = 136315138;
    v26 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [d]  RecommendedSim: %s", buf, 0xCu);
  }

  v18 = *(a1 + 2264);
  if (v18 != (a1 + 2272))
  {
    do
    {
      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = (v18 + 4);
        v21 = *(v18 + 55);
        v22 = v21;
        if ((v21 & 0x80u) != 0)
        {
          v21 = v18[5];
        }

        if (v22 < 0)
        {
          v20 = v18[4];
        }

        if (!v21)
        {
          v20 = "<invalid>";
        }

        *buf = 136315138;
        v26 = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I [d]  Manager: %s", buf, 0xCu);
      }

      v23 = v18[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v18[2];
          v15 = *v24 == v18;
          v18 = v24;
        }

        while (!v15);
      }

      v18 = v24;
    }

    while (v24 != (a1 + 2272));
  }
}

void sub_1013DD7B8(uint64_t a1, void *a2)
{
  if (a2[2] != *(a1 + 376))
  {
LABEL_21:
    sub_1013DE124(a1);
    return;
  }

  v4 = *a2;
  v2 = a2 + 1;
  v3 = v4;
  if (v4 != v2)
  {
    v5 = *(a1 + 360);
    while (1)
    {
      v6 = *(v3 + 7) == *(v5 + 7) && *(v3 + 32) == *(v5 + 32);
      if (!v6)
      {
        break;
      }

      v7 = v3[1];
      v8 = v3;
      if (v7)
      {
        do
        {
          v3 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v3 = v8[2];
          v6 = *v3 == v8;
          v8 = v3;
        }

        while (!v6);
      }

      v9 = v5[1];
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
          v10 = v5[2];
          v6 = *v10 == v5;
          v5 = v10;
        }

        while (!v6);
      }

      v5 = v10;
      if (v3 == v2)
      {
        return;
      }
    }

    goto LABEL_21;
  }
}

void sub_1013DD864(uint64_t a1)
{
  v1 = *(a1 + 384);
  v2 = (a1 + 392);
  if (v1 != (a1 + 392))
  {
    do
    {
      TransportMasterController::getManager_sync(a1, *(v1 + 7), &v7);
      if (v7)
      {
        (*(**(v7 + 80) + 56))(*(v7 + 80), *(v1 + 32));
      }

      if (v8)
      {
        sub_100004A34(v8);
      }

      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }
}

void sub_1013DD92C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DD944(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 408));
    v4 = 136315138;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fInPrivateNetworkModeSink enabled=%s", &v4, 0xCu);
  }
}

uint64_t sub_1013DD9E8(uint64_t result)
{
  if (*(result + 408) == 1)
  {
    v1 = result;
    v2 = *(result + 2264);
    v3 = (result + 2272);
    if (v2 != (result + 2272))
    {
      do
      {
        result = (*(**(v2[7] + 96) + 72))(*(v2[7] + 96), *(*(v2[7] + 56) + 52) == *(v1 + 412));
        v4 = v2[1];
        if (v4)
        {
          do
          {
            v5 = v4;
            v4 = *v4;
          }

          while (v4);
        }

        else
        {
          do
          {
            v5 = v2[2];
            v6 = *v5 == v2;
            v2 = v5;
          }

          while (!v6);
        }

        v2 = v5;
      }

      while (v5 != v3);
    }
  }

  return result;
}

void sub_1013DDAA8(uint64_t a1)
{
  v1 = *(a1 + 416);
  v2 = (a1 + 424);
  if (v1 != (a1 + 424))
  {
    do
    {
      TransportMasterController::getManager_sync(a1, *(v1 + 7), &v7);
      if (v7)
      {
        (*(**(v7 + 96) + 80))(*(v7 + 96), *(v1 + 32));
      }

      if (v8)
      {
        sub_100004A34(v8);
      }

      v4 = v1[1];
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *v4;
        }

        while (v4);
      }

      else
      {
        do
        {
          v5 = v1[2];
          v6 = *v5 == v1;
          v1 = v5;
        }

        while (!v6);
      }

      v1 = v5;
    }

    while (v5 != v2);
  }
}

void sub_1013DDB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DDB88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 804);
  if (*(a1 + 1244) != v2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = asStringBool(v2);
      v6 = asStringBool(*(a1 + 1244));
      v7 = 136315394;
      v8 = v5;
      v9 = 2080;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I (change states) RegNetInfo1->isSatelliteSystem %s ==>> %s", &v7, 0x16u);
    }

    sub_1013DEC98(a1);
  }
}

void sub_1013DDC64(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 804);
  if (*(a1 + 2052) != v2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = asStringBool(v2);
      v6 = asStringBool(*(a1 + 2052));
      v7 = 136315394;
      v8 = v5;
      v9 = 2080;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I (change states) RegNetInfo2->isSatelliteSystem %s ==>> %s", &v7, 0x16u);
    }

    sub_1013DEC98(a1);
  }
}

BOOL TransportMasterController::getRawDynamicCellularDataSwitchState_sync(TransportMasterController *this)
{
  v2 = DataUtils::otherSimSlot();
  TransportMasterController::getManager_sync(this, v2, &v5);
  if (v5)
  {
    v3 = sub_10007AEAC(v5 + 128, 0) == 1;
  }

  else
  {
    v3 = 0;
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  return v3;
}

void sub_1013DDDB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013DDDDC(uint64_t *a1, void *a2)
{
  v4 = a1 + 5;
  v5 = a1 + 4;
  sub_100009970((a1 + 4), a1[5]);
  *(v4 - 1) = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v6 = a2 + 1;
  *v4 = v7;
  v4[1] = v8;
  if (v8)
  {
    *(v7 + 16) = v4;
    *a2 = v6;
    *v6 = 0;
    a2[2] = 0;
  }

  else
  {
    *v5 = v4;
  }

  result = a1[3];
  if (result)
  {
    v10 = *(*result + 48);

    return v10();
  }

  return result;
}

void TransportMasterController::getManager_sync(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *(a1 + 2248);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (v6 != v7)
  {
    while (*(*v6 + 49) || *(*v6 + 52) != a2)
    {
      v6 += 2;
      if (v6 == v7)
      {
        goto LABEL_17;
      }
    }
  }

  if (v6 == v7)
  {
LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v8 = *v6;
  v9 = v6[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v8 || (v10 = sub_100007A6C(a1 + 2264, (v8 + 24)), a1 + 2272 == v10))
  {
LABEL_18:
    *a3 = 0;
    a3[1] = 0;
    if (!v9)
    {
      return;
    }

    goto LABEL_14;
  }

  v11 = *(v10 + 64);
  *a3 = *(v10 + 56);
  a3[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
LABEL_14:

    sub_100004A34(v9);
  }
}

void sub_1013DDF7C(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 2352))
  {
    sub_1013E0650(a1);
  }

  sub_10000501C(&__p, "AllowSimsToComeInService");
  Registry::getTimerService(&v8, *(a1 + 2064));
  *&buf = off_101F36A60;
  *(&buf + 1) = a1;
  p_buf = &buf;
  AutoStartTimer::create();
  v4 = v12;
  v12 = 0uLL;
  v5 = *(a1 + 2360);
  *(a1 + 2352) = v4;
  if (v5)
  {
    sub_100004A34(v5);
    if (*(&v12 + 1))
    {
      sub_100004A34(*(&v12 + 1));
    }
  }

  sub_10002B644(&buf);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Created timer to allow SIMs to come in service due to: %s", &buf, 0xCu);
  }
}

void sub_1013DE0E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_10002B644(&a20);
  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1013DE124(uint64_t a1)
{
  isDynamicCellularDataSwitchingSupported_sync = TransportMasterController::isDynamicCellularDataSwitchingSupported_sync(a1);
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if ((isDynamicCellularDataSwitchingSupported_sync & 1) == 0)
  {
    if (v4)
    {
      v8 = (*(a1 + 2296) - *(a1 + 2288)) >> 4;
      v9 = *(a1 + 284);
      *buf = 134218240;
      *&buf[4] = v8;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      v10 = "#I DynamicCellularDataSwitching is not supported. ActiveManagers[%lu]; AirplaneMode[%d]";
      v11 = v3;
      v12 = 18;
LABEL_14:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }

LABEL_15:
    LODWORD(v6) = *(a1 + 280);
LABEL_16:
    sub_1013DFBE8(a1, v6);
    return;
  }

  if (v4)
  {
    v5 = (*(a1 + 2296) - *(a1 + 2288)) >> 4;
    *buf = 134217984;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I DynamicCellularDataSwitching is supported. Num of active managers: %lu", buf, 0xCu);
  }

  if (*(a1 + 344) != 5)
  {
    LODWORD(v6) = *(a1 + 340);
    if (v6)
    {
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I We are in Emergency mode!", buf, 2u);
        LODWORD(v6) = *(a1 + 340);
      }

      goto LABEL_16;
    }
  }

  if (*(a1 + 2352) || *(a1 + 2384))
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = (*(a1 + 2296) - *(a1 + 2288)) >> 4;
      *buf = 134217984;
      *&buf[4] = v14;
      v10 = "#I DynamicCellularDataSwitching is not allowed. Num of active managers: %lu";
      v11 = v13;
      v12 = 12;
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  if (*(a1 + 2328))
  {
    v15 = *(a1 + 2336);
    if (v15 == *(a1 + 276))
    {
      TransportMasterController::getManager_sync(a1, v15, buf);
      if (*buf && (*(**(*buf + 96) + 24))(*(*buf + 96)) >= 2)
      {
        v16 = *(a1 + 40);
        v17 = 0;
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = *(a1 + 2328);
          LODWORD(v86) = 134217984;
          *(&v86 + 4) = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Honoring Internet assertion. Number of assertions: %lu", &v86, 0xCu);
          v17 = 0;
        }
      }

      else
      {
        v17 = 1;
      }

      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }

      if (!v17)
      {
        return;
      }

      v19 = *(a1 + 40);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = *(a1 + 2328);
        *buf = 134217984;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Ignoring the assertion(s). Number of assertions: %lu", buf, 0xCu);
      }
    }
  }

  v21 = *(a1 + 280);
  v6 = DataUtils::otherSimSlot();
  TransportMasterController::getManager_sync(a1, v21, &v86);
  v22 = v86;
  if (v86)
  {
    v23 = (*(**(v86 + 96) + 24))(*(v86 + 96));
    v24 = (*(**(v22 + 96) + 40))(*(v22 + 96));
    v25 = (*(**(v22 + 96) + 32))(*(v22 + 96));
    v26 = sub_10151A0DC(v22);
    v27 = v26;
    if (v26)
    {
      if (*(a1 + 408) == 1)
      {
        if (v23 >= v26)
        {
          v28 = v25;
        }

        else
        {
          v28 = 0;
        }

        if (v28 == 1)
        {
          v29 = *(a1 + 40);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v30 = subscriber::asString();
            if ((v23 - 1) > 2)
            {
              v31 = "kOff";
            }

            else
            {
              v31 = off_101F36B50[v23 - 1];
            }

            *buf = 136315394;
            *&buf[4] = v30;
            *&buf[12] = 2080;
            *&buf[14] = v31;
            v37 = "#I Selected: preferred SIM: %s, quality: %s (wrm recommended privateNW)";
            v38 = v29;
            v39 = 22;
            goto LABEL_68;
          }

          goto LABEL_69;
        }

        TransportMasterController::getManager_sync(a1, v6, &v81);
        v40 = v81;
        if (v81)
        {
          v41 = (*(**(v81 + 96) + 24))(*(v81 + 96));
          v42 = sub_10151A0EC(v40);
          v43 = (*(**(v40 + 96) + 32))(*(v40 + 96));
          v44 = v41 >= v42 ? v43 : 0;
          if (v44 == 1)
          {
            v45 = *(a1 + 40);
            if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
            {
              v46 = subscriber::asString();
              if ((v41 - 1) > 2)
              {
                v47 = "kOff";
              }

              else
              {
                v47 = off_101F36B50[v41 - 1];
              }

              *buf = 136315394;
              *&buf[4] = v46;
              *&buf[12] = 2080;
              *&buf[14] = v47;
              _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Selected: non-data preferred SIM: %s, quality: %s (wrm recommended privateNW)", buf, 0x16u);
            }

            sub_1013DFBE8(a1, v6);
            if (v82)
            {
              sub_100004A34(v82);
            }

            goto LABEL_70;
          }
        }

        if (v82)
        {
          sub_100004A34(v82);
        }
      }

      if (v23 < v27)
      {
        v48 = 1;
      }

      else
      {
        v48 = v24;
      }

      if (v48)
      {
        v34 = 1;
        goto LABEL_71;
      }

      v49 = *(a1 + 40);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = subscriber::asString();
        if ((v23 - 1) > 2)
        {
          v51 = "kOff";
        }

        else
        {
          v51 = off_101F36B50[v23 - 1];
        }

        *buf = 136315394;
        *&buf[4] = v50;
        *&buf[12] = 2080;
        *&buf[14] = v51;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "#I Selected: preferred SIM: %s, quality: %s (no congestion)", buf, 0x16u);
      }

      sub_1013DFBE8(a1, v21);
      v24 = 0;
      goto LABEL_70;
    }

    v35 = *(a1 + 40);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v36;
      v37 = "#I Selected: preferred SIM: %s (CB doesn't allow moving data from this SIM)";
      v38 = v35;
      v39 = 12;
LABEL_68:
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v37, buf, v39);
    }

LABEL_69:
    sub_1013DFBE8(a1, v21);
LABEL_70:
    v34 = 0;
    goto LABEL_71;
  }

  v32 = *(a1 + 40);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    v33 = subscriber::asString();
    *buf = 136315138;
    *&buf[4] = v33;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Selected: preferred SIM: %s (no manager for preferred SIM)", buf, 0xCu);
  }

  sub_1013DFBE8(a1, v21);
  v23 = 0;
  v34 = 0;
  v24 = 1;
LABEL_71:
  if (*(&v86 + 1))
  {
    sub_100004A34(*(&v86 + 1));
  }

  if (v34)
  {
    TransportMasterController::getManager_sync(a1, v6, buf);
    v52 = *buf;
    if (!*buf)
    {
LABEL_114:
      LODWORD(v6) = v21;
      v53 = v23;
      v68 = v24;
      goto LABEL_115;
    }

    v53 = (*(**(*buf + 96) + 24))(*(*buf + 96));
    v79 = (*(**(v52 + 96) + 40))(*(v52 + 96));
    v54 = *(v52 + 56);
    v55 = *(v52 + 64);
    if (v55)
    {
      atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v54 + 48) != 1)
    {
LABEL_112:
      if (v55)
      {
        sub_100004A34(v55);
      }

      goto LABEL_114;
    }

    v80 = v23;
    ServiceMap = Registry::getServiceMap(*(a1 + 2064));
    v57 = ServiceMap;
    if (v58 < 0)
    {
      v59 = (v58 & 0x7FFFFFFFFFFFFFFFLL);
      v60 = 5381;
      do
      {
        v58 = v60;
        v61 = *v59++;
        v60 = (33 * v60) ^ v61;
      }

      while (v61);
    }

    std::mutex::lock(ServiceMap);
    *&v86 = v58;
    v62 = sub_100009510(&v57[1].__m_.__sig, &v86);
    if (v62)
    {
      v63 = v62[3];
      v64 = v62[4];
      if (v64)
      {
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v57);
        atomic_fetch_add_explicit(&v64->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v64);
        v65 = 0;
LABEL_86:
        v66 = v63 && ((*(*v63 + 768))(v63, v6) & 1) != 0;
        if ((v65 & 1) == 0)
        {
          sub_100004A34(v64);
        }

        if (v66)
        {
          v23 = v80;
          if (v53 >= 1)
          {
LABEL_94:
            v67 = sub_10151A0EC(v52);
            v68 = v24;
            if (v55)
            {
              sub_100004A34(v55);
            }

            if (v53 < v67)
            {
              goto LABEL_99;
            }

            if (!v80)
            {
              v76 = *(a1 + 40);
              v68 = v79;
              if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v86) = 0;
                _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I Selected: non-data preferred SIM (preferred SIM has no Internet)", &v86, 2u);
              }

              goto LABEL_115;
            }

            if (v79)
            {
              goto LABEL_99;
            }

            if (v24)
            {
              v77 = *(a1 + 40);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v86) = 0;
                v78 = "#I Selected: non-data preferred SIM is not congested (preferred SIM is congested)";
LABEL_134:
                _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_DEFAULT, v78, &v86, 2u);
              }
            }

            else
            {
              if (v53 <= v80)
              {
                v68 = 0;
LABEL_99:
                LODWORD(v6) = v21;
                v53 = v80;
LABEL_115:
                if (*&buf[8])
                {
                  sub_100004A34(*&buf[8]);
                }

                v72 = *(a1 + 40);
                if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
                {
                  v73 = subscriber::asString();
                  if ((v53 - 1) > 2)
                  {
                    v74 = "kOff";
                  }

                  else
                  {
                    v74 = off_101F36B50[v53 - 1];
                  }

                  v75 = asStringBool(v68);
                  *buf = 136315650;
                  *&buf[4] = v73;
                  *&buf[12] = 2080;
                  *&buf[14] = v74;
                  v84 = 2080;
                  v85 = v75;
                  _os_log_impl(&_mh_execute_header, v72, OS_LOG_TYPE_DEFAULT, "#I Selected: %s, internet quality: %s, congested: %s", buf, 0x20u);
                }

                goto LABEL_16;
              }

              v77 = *(a1 + 40);
              if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v86) = 0;
                v78 = "#I Selected: non-data preferred SIM has better quality";
                goto LABEL_134;
              }
            }

            v68 = 0;
            goto LABEL_115;
          }
        }

        else
        {
          v69 = *(a1 + 368);
          v23 = v80;
          if (v69)
          {
            v70 = a1 + 368;
            do
            {
              if (*(v69 + 28) >= v6)
              {
                v70 = v69;
              }

              v69 = *(v69 + 8 * (*(v69 + 28) < v6));
            }

            while (v69);
            if (v70 != a1 + 368 && *(v70 + 28) <= v6 && *(v70 + 32) == 1 && v53 > 0)
            {
              goto LABEL_94;
            }
          }
        }

        goto LABEL_112;
      }
    }

    else
    {
      v63 = 0;
    }

    std::mutex::unlock(v57);
    v64 = 0;
    v65 = 1;
    goto LABEL_86;
  }
}

void sub_1013DEBFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013DEC98(uint64_t a1)
{
  v2 = *(a1 + 2296);
  v3 = *(a1 + 2288);
  if ((v2 - v3) >= 0x11 && (*(a1 + 284) & 1) == 0 && !*(a1 + 2352))
  {
    v50 = *(a1 + 40);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Vega is supported", buf, 2u);
    }

    v51 = *(a1 + 272);
    if (v51 == 1)
    {
      v52 = 1;
      v53 = 1;
      goto LABEL_115;
    }

    v54 = *(a1 + 2336);
    v55 = *(a1 + 276);
    v53 = v54 == v55;
    if (v54 != v55)
    {
      v56 = *(a1 + 40);
      v57 = os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT);
      v54 = v55;
      if (v57)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Data switching is in progress, we should not change transport.", buf, 2u);
        v54 = *(a1 + 276);
      }
    }

    TransportMasterController::getManager_sync(a1, v54, buf);
    if (*buf && (*(**(*buf + 96) + 24))(*(*buf + 96)))
    {
      v58 = 440;
      if (*(a1 + 276) == 2)
      {
        v58 = 1248;
      }

      if (*(a1 + v58 + 804) != 1)
      {
        goto LABEL_112;
      }

      v59 = *(a1 + 40);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        v60 = "#I Current data sim is on satellite, Vega not allowed";
LABEL_110:
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, v60, v81, 2u);
      }
    }

    else
    {
      v59 = *(a1 + 40);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
      {
        *v81 = 0;
        v60 = "#I Current data sim does not have internet.";
        goto LABEL_110;
      }
    }

    v53 = 0;
LABEL_112:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v52 = 0;
LABEL_115:
    v3 = *(a1 + 2288);
    v2 = *(a1 + 2296);
    if (v3 == v2)
    {
      goto LABEL_9;
    }

    while (1)
    {
      if (!(*(**(*v3 + 80) + 16))(*(*v3 + 80)))
      {
        goto LABEL_143;
      }

      if (v53)
      {
        break;
      }

LABEL_145:
      v3 += 2;
      if (v3 == v2)
      {
        v3 = *(a1 + 2288);
        v2 = *(a1 + 2296);
        goto LABEL_9;
      }
    }

    if (v51 == 1 || (sub_10151A324(*v3) & 1) != 0)
    {
      goto LABEL_135;
    }

    v61 = *(a1 + 276);
    ServiceMap = Registry::getServiceMap(*(a1 + 2064));
    v63 = ServiceMap;
    if (v64 < 0)
    {
      v65 = (v64 & 0x7FFFFFFFFFFFFFFFLL);
      v66 = 5381;
      do
      {
        v64 = v66;
        v67 = *v65++;
        v66 = (33 * v66) ^ v67;
      }

      while (v67);
    }

    std::mutex::lock(ServiceMap);
    *buf = v64;
    v68 = sub_100009510(&v63[1].__m_.__sig, buf);
    if (v68)
    {
      v70 = v68[3];
      v69 = v68[4];
      if (v69)
      {
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v63);
        atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v69);
        v71 = 0;
        if (!v70)
        {
          goto LABEL_132;
        }

        goto LABEL_129;
      }
    }

    else
    {
      v70 = 0;
    }

    std::mutex::unlock(v63);
    v69 = 0;
    v71 = 1;
    if (!v70)
    {
      goto LABEL_132;
    }

LABEL_129:
    if ((*(*v70 + 776))(v70, v61))
    {
      v72 = 1;
      if (v71)
      {
        goto LABEL_134;
      }

LABEL_133:
      sub_100004A34(v69);
LABEL_134:
      if ((v72 & 1) == 0)
      {
        v75 = *(a1 + 40);
        if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
        {
          v76 = *(*v3 + 56);
          v77 = *(*v3 + 64);
          if (v77)
          {
            atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v78 = (v76 + 24);
          if (*(v76 + 47) < 0)
          {
            v78 = *v78;
          }

          *buf = 136315138;
          *&buf[4] = v78;
          _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I Vega not allowed in roaming for: %s", buf, 0xCu);
          if (v77)
          {
            sub_100004A34(v77);
          }
        }

LABEL_143:
        v73 = 0;
        v74 = -1;
LABEL_144:
        v79 = *v3;
        *(v79 + 116) = v73;
        *(v79 + 120) = v74;
        goto LABEL_145;
      }

LABEL_135:
      v73 = 1;
      v74 = v52;
      goto LABEL_144;
    }

LABEL_132:
    v72 = 0;
    if (v71)
    {
      goto LABEL_134;
    }

    goto LABEL_133;
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 2352) == 0;
    v6 = *(a1 + 284);
    *buf = 67109632;
    *&buf[4] = v5;
    *&buf[8] = 2048;
    *&buf[10] = (v2 - v3) >> 4;
    *&buf[18] = 1024;
    *&buf[20] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cannot perform Vega: Allowed[%d]; ActiveManagers[%lu]; AirplaneMode[%d]", buf, 0x18u);
    v3 = *(a1 + 2288);
    v2 = *(a1 + 2296);
  }

  if (v3 != v2)
  {
    v7 = v3;
    do
    {
      v8 = *v7;
      v7 += 2;
      *(v8 + 116) = 0;
      *(v8 + 120) = -1;
    }

    while (v7 != v2);
  }

LABEL_9:
  v82 = 0;
  v83 = 0;
  *v81 = &v82;
  if (v3 == v2)
  {
    v14 = 0;
  }

  else
  {
    do
    {
      v9 = *v3;
      if (sub_1000C4F78(*v3))
      {
        v10 = *(v9 + 116);
      }

      else
      {
        v10 = 0xFFFFFFFF00000000;
      }

      v11 = *(*v3 + 56);
      v12 = *(*v3 + 64);
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v84 = 0;
      v13 = *sub_100005C2C(v81, &v84, (v11 + 24));
      if (!v13)
      {
        operator new();
      }

      *(v13 + 56) = v10;
      if (v12)
      {
        sub_100004A34(v12);
      }

      v3 += 2;
    }

    while (v3 != v2);
    v14 = v83;
  }

  v15 = a1;
  v16 = *(a1 + 112);
  if (v16 == v14)
  {
    v17 = *(a1 + 96);
    if (v17 == (a1 + 104))
    {
      goto LABEL_93;
    }

    v18 = *v81;
    while (1)
    {
      v19 = *(v17 + 55);
      if (v19 >= 0)
      {
        v20 = *(v17 + 55);
      }

      else
      {
        v20 = v17[5];
      }

      v21 = *(v18 + 55);
      v22 = v21;
      if (v21 < 0)
      {
        v21 = v18[5];
      }

      if (v20 != v21)
      {
        break;
      }

      v23 = v19 >= 0 ? v17 + 4 : v17[4];
      v24 = v22 >= 0 ? v18 + 4 : v18[4];
      if (memcmp(v23, v24, v20) || *(v17 + 56) != *(v18 + 56) || *(v17 + 15) != *(v18 + 15))
      {
        break;
      }

      v25 = v17[1];
      v26 = v17;
      if (v25)
      {
        do
        {
          v17 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v17 = v26[2];
          v27 = *v17 == v26;
          v26 = v17;
        }

        while (!v27);
      }

      v28 = v18[1];
      if (v28)
      {
        do
        {
          v29 = v28;
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        do
        {
          v29 = v18[2];
          v27 = *v29 == v18;
          v18 = v29;
        }

        while (!v27);
      }

      v18 = v29;
      if (v17 == (a1 + 104))
      {
        goto LABEL_93;
      }
    }
  }

  if ((a1 + 96) != v81)
  {
    v30 = *v81;
    if (v16)
    {
      v31 = *(a1 + 104);
      v32 = *(a1 + 96);
      *(a1 + 96) = a1 + 104;
      *(v31 + 16) = 0;
      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      if (*(v32 + 8))
      {
        v33 = *(v32 + 8);
      }

      else
      {
        v33 = v32;
      }

      *buf = a1 + 96;
      *&buf[8] = v33;
      *&buf[16] = v33;
      if (!v33 || (*&buf[8] = sub_1000685CC(v33), v30 == &v82))
      {
        v37 = v30;
      }

      else
      {
        do
        {
          std::string::operator=((v33 + 32), (v30 + 4));
          *(v33 + 56) = v30[7];
          v34 = *&buf[16];
          v84 = 0;
          v35 = sub_1001355F4(a1 + 96, &v84, (*&buf[16] + 32));
          sub_1000070DC((a1 + 96), v84, v35, v34);
          v33 = *&buf[8];
          *&buf[16] = *&buf[8];
          if (*&buf[8])
          {
            *&buf[8] = sub_1000685CC(*&buf[8]);
          }

          v36 = v30[1];
          if (v36)
          {
            do
            {
              v37 = v36;
              v36 = *v36;
            }

            while (v36);
          }

          else
          {
            do
            {
              v37 = v30[2];
              v27 = *v37 == v30;
              v30 = v37;
            }

            while (!v27);
          }

          if (!v33)
          {
            break;
          }

          v30 = v37;
        }

        while (v37 != &v82);
      }

      sub_100173240(buf);
      v30 = v37;
    }

    if (v30 != &v82)
    {
      memset(buf, 0, sizeof(buf));
      sub_1013E4F64();
    }
  }

  v38 = *(a1 + 88);
  if (v38)
  {
    (*(*v38 + 48))(v38, a1 + 96);
  }

  v39 = *(a1 + 40);
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Updated fTransportMasterRatRecommendationOverrideSource:", buf, 2u);
  }

  v40 = *v81;
  if (*v81 != &v82)
  {
    do
    {
      v41 = *(v15 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v42 = v40[4];
        v43 = *(v40 + 55);
        v44 = v43;
        if (v43 < 0)
        {
          v43 = v40[5];
        }

        if (v44 >= 0)
        {
          v42 = (v40 + 4);
        }

        if (v43)
        {
          v45 = v42;
        }

        else
        {
          v45 = "<invalid>";
        }

        v46 = asStringBool(*(v40 + 56));
        v47 = asString();
        *buf = 136315650;
        *&buf[4] = v45;
        *&buf[12] = 2080;
        *&buf[14] = v46;
        *&buf[22] = 2080;
        v86 = v47;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I | %s: %s, %s", buf, 0x20u);
        v15 = a1;
      }

      v48 = v40[1];
      if (v48)
      {
        do
        {
          v49 = v48;
          v48 = *v48;
        }

        while (v48);
      }

      else
      {
        do
        {
          v49 = v40[2];
          v27 = *v49 == v40;
          v40 = v49;
        }

        while (!v27);
      }

      v40 = v49;
    }

    while (v49 != &v82);
  }

LABEL_93:
  sub_100009970(v81, v82);
}