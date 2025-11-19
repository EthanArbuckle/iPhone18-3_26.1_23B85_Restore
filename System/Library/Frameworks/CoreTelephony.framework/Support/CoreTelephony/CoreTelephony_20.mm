void sub_10013BB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013BBC0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 120);
  if (!v2)
  {
    return 0;
  }

  v5 = a1 + 120;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v5 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v5 == a1 + 120 || *(v5 + 32) > a2)
  {
    return 0;
  }

  if (!*(v5 + 40) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101761DEC()))
  {
    __TUAssertTrigger();
  }

  AppType = DataiRatControllerInterface::getAppType();
  if (AppType > 2)
  {
    return 0;
  }

  result = DataiRatControllerInterface::isCriticalAppType();
  if (result)
  {
    v8 = *(*(**(a1 + 56) + 16))(*(a1 + 56), a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = AppType;
      LOWORD(v10[0]) = 2080;
      *(v10 + 2) = asString();
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Report for critical appType %d with failure for %s", buf, 0x12u);
    }

    sub_10013B4DC(a1, a2, AppType);
    *buf = 0;
    v10[0] = 0;
    sub_10013B724();
  }

  return result;
}

void sub_10013BDD0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013BEF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013BFD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013BFEC(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 64);
    *buf = 136315138;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I DATA:: -------------------------- %s --------------------------", buf, 0xCu);
  }

  v4 = *(a1 + 112);
  if (v4 != (a1 + 120))
  {
    do
    {
      v5 = *(a1 + 48);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = subscriber::asString();
        asString();
        if (v19 >= 0)
        {
          v7 = buf;
        }

        else
        {
          v7 = *buf;
        }

        *v20 = 136315394;
        v21 = v6;
        v22 = 2080;
        v23 = v7;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I DATA:: Subscribed App Types: %s: %s", v20, 0x16u);
        if (v19 < 0)
        {
          operator delete(*buf);
        }

        v5 = *(a1 + 48);
      }

      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I DATA:: Critical App Status: {", buf, 2u);
      }

      for (i = 0; i != 3; ++i)
      {
        v9 = *(a1 + 48);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = asString();
          v11 = v4[i + 10];
          if (v11)
          {
            AppTypeStatus::asString(buf, v11);
            if (v19 >= 0)
            {
              v12 = buf;
            }

            else
            {
              v12 = *buf;
            }

            *v20 = 136315394;
            v21 = v10;
            v22 = 2080;
            v23 = v12;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%s: (%s)", v20, 0x16u);
            if (v19 < 0)
            {
              operator delete(*buf);
            }
          }

          else
          {
            *v20 = 136315394;
            v21 = v10;
            v22 = 2080;
            v23 = "null";
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I DATA:: \t%s: (%s)", v20, 0x16u);
          }
        }
      }

      v13 = v4[1];
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
          v14 = v4[2];
          v15 = *v14 == v4;
          v4 = v14;
        }

        while (!v15);
      }

      v4 = v14;
    }

    while (v14 != (a1 + 120));
  }

  v16 = *(a1 + 48);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I DATA:: }", buf, 2u);
    v16 = *(a1 + 48);
  }

  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = asStringBool(*(a1 + 104));
    *buf = 136315138;
    *&buf[4] = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I DATA:: fLoginSessionActive=%s", buf, 0xCu);
  }
}

uint64_t sub_10013C3C0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101E2B598))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10013C430(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10013C430(a1, *a2);
    sub_10013C430(a1, *(a2 + 1));
    for (i = 96; i != 72; i -= 8)
    {
      v5 = *&a2[i];
      *&a2[i] = 0;
      if (v5)
      {
        sub_10013CF68(&a2[i], v5);
      }
    }

    sub_10006DCAC((a2 + 56), *(a2 + 8));
    v6 = *(a2 + 6);
    if (v6)
    {
      sub_100004A34(v6);
    }

    operator delete(a2);
  }
}

uint64_t *sub_10013C4C0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 32);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_10013C698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10013C748(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E2B608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_10013C780(void *a1, xpc_object_t *a2)
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

uint64_t sub_10013C858(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10013C980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10013CA30(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E2B688;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10013CA68(void *a1)
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

uint64_t sub_10013CAB0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013CB0C(uint64_t result, uint64_t a2)
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

void sub_10013CB28(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t **sub_10013CB38(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          *(v8 + 28) = *(v9 + 28);
          sub_10013CC9C(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_10013CD24(&v12);
  }

  if (a2 != a3)
  {
    sub_10013CD7C();
  }

  return result;
}

void sub_10013CC88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10013CD24(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10013CC9C(uint64_t **a1, uint64_t a2)
{
  v3 = (a1 + 1);
  v4 = a1[1];
  if (v4)
  {
    v5 = *(a2 + 28);
    do
    {
      while (1)
      {
        v3 = v4;
        v6 = *(v4 + 28);
        v7 = v5 == v6;
        v8 = v5 < v6;
        if (v7)
        {
          v8 = *(a2 + 32) < *(v3 + 32);
        }

        if (!v8)
        {
          break;
        }

        v4 = *v3;
        v9 = v3;
        if (!*v3)
        {
          goto LABEL_11;
        }
      }

      v4 = *(v3 + 8);
    }

    while (v4);
    v9 = (v3 + 8);
  }

  else
  {
    v9 = a1 + 1;
  }

LABEL_11:
  sub_1000070DC(a1, v3, v9, a2);
  return a2;
}

uint64_t sub_10013CD24(uint64_t a1)
{
  sub_10006DCAC(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = v2[2];
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = v3[2];
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10006DCAC(*a1, v2);
  }

  return a1;
}

void sub_10013CE58(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2B740;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10013CEFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2B790;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10013CF50(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_10013CF68(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 31) < 0)
    {
      operator delete(*(a2 + 8));
    }

    operator delete();
  }
}

void sub_10013CFC4(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Cu);
}

void sub_10013CFE4(Registry **a1@<X1>, uint64_t a2@<X5>, void *a3@<X8>)
{
  v17 = 0;
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if (v7 < 0)
  {
    v8 = (v7 & 0x7FFFFFFFFFFFFFFFLL);
    v9 = 5381;
    do
    {
      v7 = v9;
      v10 = *v8++;
      v9 = (33 * v9) ^ v10;
    }

    while (v10);
  }

  std::mutex::lock(ServiceMap);
  __p[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __p);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
      v14 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_9:
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v16 = *(a2 + 16);
  }

  (**v13)(&v17, v13, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
    if (v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if ((v14 & 1) == 0)
  {
LABEL_14:
    sub_100004A34(v12);
  }

LABEL_15:
  if (v17 && ((*(*v17 + 496))(v17, 11) & 1) != 0)
  {
    operator new();
  }

  *a3 = 0;
  a3[1] = 0;
  if (v18)
  {
    sub_100004A34(v18);
  }
}

void sub_10013D298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013D31C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v22)
  {
    JUMPOUT(0x10013D314);
  }

  JUMPOUT(0x10013D30CLL);
}

uint64_t sub_10013D33C(uint64_t a1, NSObject **a2, Registry **a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v32 = *a2;
  if (v32)
  {
    dispatch_retain(v32);
  }

  v17 = a4[1];
  v30 = *a4;
  v31 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a8 + 23) < 0)
  {
    sub_100005F2C(__p, *a8, *(a8 + 8));
  }

  else
  {
    *__p = *a8;
    v29 = *(a8 + 16);
  }

  sub_10031435C(a1, &v32, a3, &v30, "cp.mm.ent", __p);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v32)
  {
    dispatch_release(v32);
  }

  *a1 = off_101E2B800;
  v18 = sub_1003145F4();
  sub_10000501C(&v26, v18);
  v19 = *a2;
  v25 = v19;
  if (v19)
  {
    dispatch_retain(v19);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (v25)
  {
    dispatch_release(v25);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  *(a1 + 184) = 0;
  *(a1 + 176) = a1 + 184;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  v20 = a4[1];
  *(a1 + 216) = *a4;
  *(a1 + 224) = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 232) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 248) = a6;
  *(a1 + 256) = a7;
  *(a1 + 264) = a9;
  Registry::createRestModuleOneTimeUseConnection(&v22, *a3);
  ctu::RestModule::connect();
  if (v23)
  {
    sub_100004A34(v23);
  }

  return a1;
}

void sub_10013D524(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, std::__shared_weak_count *a27)
{
  if (a27)
  {
    sub_100004A34(a27);
  }

  v29 = *(v27 - 72);
  if (v29)
  {
    dispatch_release(v29);
  }

  _Unwind_Resume(exception_object);
}

CellularPlanProvisioningMonitorModeInterface *sub_10013D5F8(uint64_t a1)
{
  *a1 = off_101E2B800;
  v2 = *(a1 + 208);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::RestModule::disconnect((a1 + 160));
  v3 = *(a1 + 240);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 224);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 208);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10013DF64(a1 + 176, *(a1 + 184));
  v6 = *(a1 + 168);
  if (v6)
  {
    sub_100004A34(v6);
  }

  return sub_10031452C(a1);
}

void sub_10013D6A4(uint64_t a1)
{
  sub_10013D5F8(a1);

  operator delete();
}

uint64_t sub_10013D6DC(void *a1)
{
  if (a1[25])
  {
    v2 = a1[5];
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_101761E84(v2);
    }

    return (*(*a1 + 32))(a1);
  }

  else
  {
    sub_10000501C(__p, "/cc/assertions/baseband_booted");
    ctu::rest::AssertionHandle::create();
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }

    v4 = a1[26];
    *(a1 + 25) = v5;
    if (v4)
    {
      sub_100004A34(v4);
    }

    __p[0] = off_101E2B910;
    __p[1] = a1;
    v8 = __p;
    ctu::rest::AssertionHandle::setHandler_impl();
    return sub_10000FF50(__p);
  }
}

void sub_10013D848(uint64_t a1)
{
  __p[0] = 0;
  __p[1] = 0;
  v9 = 0;
  if (*(a1 + 87) < 0)
  {
    sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
  }

  else
  {
    *__p = *(a1 + 64);
    v9 = *(a1 + 80);
  }

  v2 = sub_100007A6C(a1 + 176, __p);
  if (a1 + 184 != v2)
  {
    v5 = *(v2 + 72);
    v3 = v2 + 72;
    v4 = v5;
    if (v5)
    {
      v6 = v3;
      do
      {
        if (*(v4 + 28) >= 11)
        {
          v6 = v4;
        }

        v4 = *(v4 + 8 * (*(v4 + 28) < 11));
      }

      while (v4);
      if (v6 != v3 && *(v6 + 28) <= 11)
      {
        v7 = *(v6 + 32);
        if (v7 <= 2)
        {
          if (v7 != 1)
          {
            if (v7 == 2)
            {
              sub_10013D978(a1);
            }

            goto LABEL_20;
          }
        }

        else
        {
          if ((v7 - 3) < 3)
          {
            goto LABEL_21;
          }

          if (v7 != 6)
          {
            goto LABEL_20;
          }
        }

        sub_10013DB20(a1, 0);
LABEL_20:
        sub_10013DB8C();
      }
    }
  }

LABEL_21:
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10013D958(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013D978(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3 && a1[27])
    {
      sub_100004AA0(&v6, a1 + 1);
      v4 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v4);
      }

      v8 = 0;
      operator new();
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_101761EC8(v5);
  }

  sub_10013DB20(a1, 0);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10013DAD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10000FF50(va);
  sub_100004A34(v4);
  _Unwind_Resume(a1);
}

void sub_10013DB20(uint64_t a1, int a2)
{
  v4 = *(a1 + 208);
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (a2)
  {

    sub_100314A14(a1, 0x101u);
  }

  else
  {

    sub_10013DD60(a1);
  }
}

void sub_10013DB8C()
{
  sub_10000501C(&__p, "/cc/props/carrier_entitlements_info");
  ctu::RestModule::unobserveProperty();
  if (v1 < 0)
  {
    operator delete(__p);
  }
}

void sub_10013DBE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013DBFC(void *a1)
{
  v2 = a1[28];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      if (a1[27])
      {
        sub_100004AA0(&v5, a1 + 1);
        v4 = v6;
        if (v6)
        {
          atomic_fetch_add_explicit(&v6->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v4);
        }

        v7 = 0;
        operator new();
      }

      sub_100004A34(v3);
    }
  }
}

void sub_10013DD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100112FB8(va);
  sub_100004A34(v4);
  _Unwind_Resume(a1);
}

void sub_10013DD60(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *__p = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I User selection, do not disable profile", __p, 2u);
    }

    sub_100314A14(a1, 0x100u);
  }

  else
  {
    v3 = *(a1 + 224);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        if (*(a1 + 216))
        {
          sub_10000501C(__p, "");
          sub_100004AA0(&v7, (a1 + 8));
          v5 = v8;
          if (v8)
          {
            atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v5);
          }

          v9 = 0;
          operator new();
        }

        sub_100004A34(v4);
      }
    }
  }
}

void sub_10013DF04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17)
{
  sub_100112FB8(&a17);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

void sub_10013DF64(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10013DF64(a1, *a2);
    sub_10013DF64(a1, *(a2 + 1));
    sub_10006DCAC((a2 + 112), *(a2 + 15));
    sub_10004F340((a2 + 88), *(a2 + 12));
    sub_10006DCAC((a2 + 64), *(a2 + 9));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10013DFEC(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10013E040(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10013E040(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; i -= 64)
  {
    if (*(i - 16) == 1)
    {
      v5 = *(i - 40);
      if (v5)
      {
        *(i - 32) = v5;
        operator delete(v5);
      }
    }
  }

  *(a1 + 8) = a2;
}

void sub_10013E124(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10013E1F8);
  __cxa_rethrow();
}

void sub_10013E164(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10013E1B8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013E1F8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10013E294(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2B910;
  a2[1] = v2;
  return result;
}

void sub_10013E2C0(uint64_t a1, _BYTE *a2)
{
  if (*a2 == 1)
  {
    v2 = *(a1 + 8);
    v4 = 0;
    ctu::rest::AssertionHandle::setHandler_impl();
    sub_10000FF50(v3);
    sub_10013DBFC(v2);
  }
}

uint64_t sub_10013E35C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10013E3A8(void *a1)
{
  *a1 = off_101E2B990;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10013E3F4(void *a1)
{
  *a1 = off_101E2B990;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10013E4D4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E2B990;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10013E514(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10013E524(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10013E564(void *a1, __int16 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        if ((v4 & 0x100) == 0)
        {
          v10[0] = sub_10013D848;
          v10[1] = 0;
          sub_10013E6F4();
        }

        v8 = *(v5 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v9 = asString();
          sub_101761F0C(v9, v10, v8);
        }

        sub_10013DB20(v5, 0);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10013E6A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10013E7E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10013E890(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E2BA00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10013E8D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10013E91C(uint64_t *a1, xpc_object_t *a2)
{
  sub_10013E998(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_10013E998(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  if (*a2 && xpc_get_type(*a2) == &_xpc_type_array)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_10013DF64(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
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

    sub_100008EA4(&v19, object, 0);
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

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v18, object, count);
    xpc_release(object[0]);
    for (i = v20; i != v18[1] || v19 != v18[0]; i = ++v20)
    {
      v17 = 0;
      object[0] = &v19;
      object[1] = i;
      sub_10003EAD4(object, &v17);
      if (xpc_get_type(v17) == &_xpc_type_dictionary)
      {
        v16 = 0;
        v15 = 0u;
        v10[1] = 0;
        v8 = 0u;
        v10[0] = 0;
        *object = 0u;
        v12 = 0uLL;
        v9 = v10;
        v11 = &v12;
        v14 = 0;
        *&v15 = 0;
        v13 = &v14;
        v6 = v17;
        if (v17)
        {
          xpc_retain(v17);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10013ECAC(object, &v6);
        xpc_release(v6);
        sub_10013EDF4(a1, object);
        sub_10006DCAC(&v13, v14);
        sub_10004F340(&v11, v12);
        sub_10006DCAC(&v9, v10[0]);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v17);
    }

    xpc_release(v18[0]);
    xpc_release(v19);
  }

  xpc_release(v3);
}

void sub_10013EC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 96));
  xpc_release(v11);
  _Unwind_Resume(a1);
}

void sub_10013ECAC(uint64_t a1, xpc_object_t *a2)
{
  v3 = *a2;
  v7 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v7 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v4 = &v7;
    v5 = "first";
    sub_100006354(&v4, &object);
    read_rest_value();
    xpc_release(object);
    v4 = &v7;
    v5 = "second";
    sub_100006354(&v4, &object);
    sub_1001E7C18(a1 + 24, &object);
    xpc_release(object);
    v3 = v7;
  }

  xpc_release(v3);
}

void sub_10013EDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10013EDF4(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10013EE80();
  }

  return result;
}

void sub_10013EEF8(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10013F024(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_10013EF14(char *__dst, __int128 *a2)
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

  *(__dst + 3) = *(a2 + 3);
  *(__dst + 4) = *(a2 + 4);
  v5 = a2 + 5;
  v6 = *(a2 + 5);
  *(__dst + 5) = v6;
  v7 = __dst + 40;
  v8 = *(a2 + 6);
  *(__dst + 6) = v8;
  if (v8)
  {
    *(v6 + 16) = v7;
    *(a2 + 4) = v5;
    *v5 = 0;
    *(a2 + 6) = 0;
  }

  else
  {
    *(__dst + 4) = v7;
  }

  *(__dst + 7) = *(a2 + 7);
  v9 = a2 + 4;
  v10 = *(a2 + 8);
  *(__dst + 8) = v10;
  v11 = __dst + 64;
  v12 = *(a2 + 9);
  *(__dst + 9) = v12;
  if (v12)
  {
    *(v10 + 16) = v11;
    *(a2 + 7) = v9;
    *v9 = 0;
    *(a2 + 9) = 0;
  }

  else
  {
    *(__dst + 7) = v11;
  }

  *(__dst + 10) = *(a2 + 10);
  v13 = a2 + 11;
  v14 = *(a2 + 11);
  *(__dst + 11) = v14;
  v15 = __dst + 88;
  v16 = *(a2 + 12);
  *(__dst + 12) = v16;
  if (v16)
  {
    *(v14 + 16) = v15;
    *(a2 + 10) = v13;
    *v13 = 0;
    *(a2 + 12) = 0;
  }

  else
  {
    *(__dst + 10) = v15;
  }

  v17 = *(a2 + 13);
  __dst[112] = *(a2 + 112);
  *(__dst + 13) = v17;
  return __dst;
}

void sub_10013F024(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    sub_10006DCAC(a2 + 112, *(a2 + 120));
    sub_10004F340(a2 + 88, *(a2 + 96));
    sub_10006DCAC(a2 + 64, *(a2 + 72));
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

uint64_t sub_10013F0AC(uint64_t a1)
{
  sub_10006DCAC(a1 + 80, *(a1 + 88));
  sub_10004F340(a1 + 56, *(a1 + 64));
  sub_10006DCAC(a1 + 32, *(a1 + 40));
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10013F104(void *a1)
{
  *a1 = off_101E2BA90;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10013F150(void *a1)
{
  *a1 = off_101E2BA90;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10013F230(uint64_t result, uint64_t a2)
{
  *a2 = off_101E2BA90;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10013F270(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10013F280(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10013F2C0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2])
      {
        (*(**(v3 + 232) + 320))(*(v3 + 232), 11);
        sub_100314A14(v3, 0x100u);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10013F384(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10013F3D0(void *a1)
{
  *a1 = off_101E2BB10;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10013F41C(void *a1)
{
  *a1 = off_101E2BB10;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10013F4FC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E2BB10;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10013F53C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10013F54C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10013F58C(void *a1, unsigned __int8 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        sub_10013DB20(v5, v4);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10013F61C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_10013F668(uint64_t a1)
{
  *a1 = off_101E2BB90;
  *(a1 + 88) = 0;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_10013F6A0(uint64_t a1)
{
  *a1 = off_101E2BB90;
  v4 = *(a1 + 56);
  v2 = (a1 + 56);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v5)
  {
    sub_100140988(a1 + 48, v5);
  }

  v6 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v6)
  {
    sub_100140988(a1 + 40, v6);
  }

  v7 = (a1 + 16);
  sub_100140868(&v7);
  sub_100140928((a1 + 8), 0);
  PB::Base::~Base(a1);
}

void sub_10013F744(uint64_t a1)
{
  sub_10013F6A0(a1);

  operator delete();
}

uint64_t sub_10013F77C(uint64_t result, uint64_t a2)
{
  *result = off_101E2BB90;
  *(result + 8) = 0u;
  *(result + 40) = 0u;
  *(result + 56) = 0;
  *(result + 88) = 0;
  *(result + 24) = 0u;
  if ((*(a2 + 88) & 8) != 0)
  {
    v3 = *(a2 + 76);
    *(result + 88) = 8;
    *(result + 76) = v3;
    v2 = 40;
    if ((*(a2 + 88) & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v2 = 32;
  if ((*(a2 + 88) & 0x20) != 0)
  {
LABEL_5:
    v4 = *(a2 + 84);
    *(result + 88) = v2;
    *(result + 84) = v4;
  }

LABEL_6:
  if (*(a2 + 16) != *(a2 + 24))
  {
    sub_10013FA4C();
  }

  if ((*(a2 + 88) & 2) != 0)
  {
    v5 = *(a2 + 68);
    *(result + 88) |= 2u;
    *(result + 68) = v5;
  }

  if (*(a2 + 8))
  {
    operator new();
  }

  if ((*(a2 + 88) & 0x10) != 0)
  {
    v6 = *(a2 + 80);
    *(result + 88) |= 0x10u;
    *(result + 80) = v6;
  }

  if (*(a2 + 40))
  {
    operator new();
  }

  if (*(a2 + 48))
  {
    operator new();
  }

  if (*(a2 + 56))
  {
    operator new();
  }

  v7 = *(a2 + 88);
  if ((v7 & 4) != 0)
  {
    v8 = *(a2 + 72);
    *(result + 88) |= 4u;
    *(result + 72) = v8;
    v7 = *(a2 + 88);
  }

  if (v7)
  {
    v9 = *(a2 + 64);
    *(result + 88) |= 1u;
    *(result + 64) = v9;
  }

  return result;
}

uint64_t sub_10013FBA4(uint64_t a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = *(a1 + 88);
  if (v5)
  {
    PB::TextFormatter::format(this, "availability", *(a1 + 64));
    v5 = *(a1 + 88);
  }

  if ((v5 & 0x20) != 0)
  {
    PB::TextFormatter::format(this, "available", *(a1 + 84));
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    PB::TextFormatter::format(this, "csn", v6);
  }

  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  while (v7 != v8)
  {
    v9 = *v7++;
    (*(*v9 + 32))(v9, this, "details");
  }

  if ((*(a1 + 88) & 2) != 0)
  {
    PB::TextFormatter::format(this, "error", *(a1 + 68));
  }

  if (*(a1 + 40))
  {
    PB::TextFormatter::format();
  }

  if (*(a1 + 48))
  {
    PB::TextFormatter::format();
  }

  v10 = *(a1 + 88);
  if ((v10 & 4) != 0)
  {
    PB::TextFormatter::format(this, "pairedState", *(a1 + 72));
    v10 = *(a1 + 88);
    if ((v10 & 8) == 0)
    {
LABEL_17:
      if ((v10 & 0x10) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }
  }

  else if ((*(a1 + 88) & 8) == 0)
  {
    goto LABEL_17;
  }

  PB::TextFormatter::format(this, "slot", *(a1 + 76));
  if ((*(a1 + 88) & 0x10) != 0)
  {
LABEL_18:
    PB::TextFormatter::format(this, "type", *(a1 + 80));
  }

LABEL_19:
  if (*(a1 + 56))
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10013FD58(uint64_t a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v7 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v15 = 0;
        v16 = 0;
        v10 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v7 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_146;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v10 |= (v21 & 0x7F) << v15;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          --v18;
          ++v19;
          ++v20;
          v14 = v16++ > 8;
          if (v14)
          {
LABEL_18:
            v10 = 0;
            goto LABEL_21;
          }
        }

        if (v4)
        {
          v10 = 0;
        }
      }

      else
      {
        v8 = 0;
        v9 = 0;
        v10 = 0;
        v11 = (v7 + v2);
        v12 = v2 + 1;
        while (1)
        {
          *(this + 1) = v12;
          v13 = *v11++;
          v10 |= (v13 & 0x7F) << v8;
          if ((v13 & 0x80) == 0)
          {
            break;
          }

          v8 += 7;
          ++v12;
          v14 = v9++ > 8;
          if (v14)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_21:
      if (v4 & 1 | ((v10 & 7) == 4))
      {
        break;
      }

      v22 = v10 >> 3;
      if ((v10 >> 3) <= 5)
      {
        if (v22 <= 2)
        {
          if (v22 == 1)
          {
            *(a1 + 88) |= 8u;
            v37 = *(this + 1);
            v36 = *(this + 2);
            v38 = *this;
            if (v37 > 0xFFFFFFFFFFFFFFF5 || v37 + 10 > v36)
            {
              v72 = 0;
              v73 = 0;
              v41 = 0;
              v17 = v36 >= v37;
              v74 = v36 - v37;
              if (!v17)
              {
                v74 = 0;
              }

              v75 = (v38 + v37);
              v76 = v37 + 1;
              while (1)
              {
                if (!v74)
                {
                  LODWORD(v41) = 0;
                  *(this + 24) = 1;
                  goto LABEL_129;
                }

                v77 = *v75;
                *(this + 1) = v76;
                v41 |= (v77 & 0x7F) << v72;
                if ((v77 & 0x80) == 0)
                {
                  break;
                }

                v72 += 7;
                --v74;
                ++v75;
                ++v76;
                v14 = v73++ > 8;
                if (v14)
                {
LABEL_87:
                  LODWORD(v41) = 0;
                  goto LABEL_129;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v41) = 0;
              }
            }

            else
            {
              v39 = 0;
              v40 = 0;
              v41 = 0;
              v42 = (v38 + v37);
              v43 = v37 + 1;
              while (1)
              {
                *(this + 1) = v43;
                v44 = *v42++;
                v41 |= (v44 & 0x7F) << v39;
                if ((v44 & 0x80) == 0)
                {
                  break;
                }

                v39 += 7;
                ++v43;
                v14 = v40++ > 8;
                if (v14)
                {
                  goto LABEL_87;
                }
              }
            }

LABEL_129:
            *(a1 + 76) = v41;
            goto LABEL_142;
          }

          if (v22 == 2)
          {
            *(a1 + 88) |= 0x20u;
            v32 = *(this + 1);
            if (v32 >= *(this + 2))
            {
              v35 = 0;
              *(this + 24) = 1;
            }

            else
            {
              v33 = v32 + 1;
              v34 = *(*this + v32);
              *(this + 1) = v33;
              v35 = v34 != 0;
            }

            *(a1 + 84) = v35;
            goto LABEL_142;
          }
        }

        else
        {
          switch(v22)
          {
            case 3:
              sub_1001405D4();
            case 4:
              *(a1 + 88) |= 2u;
              v46 = *(this + 1);
              v45 = *(this + 2);
              v47 = *this;
              if (v46 > 0xFFFFFFFFFFFFFFF5 || v46 + 10 > v45)
              {
                v78 = 0;
                v79 = 0;
                v50 = 0;
                v17 = v45 >= v46;
                v80 = v45 - v46;
                if (!v17)
                {
                  v80 = 0;
                }

                v81 = (v47 + v46);
                v82 = v46 + 1;
                while (1)
                {
                  if (!v80)
                  {
                    LODWORD(v50) = 0;
                    *(this + 24) = 1;
                    goto LABEL_132;
                  }

                  v83 = *v81;
                  *(this + 1) = v82;
                  v50 |= (v83 & 0x7F) << v78;
                  if ((v83 & 0x80) == 0)
                  {
                    break;
                  }

                  v78 += 7;
                  --v80;
                  ++v81;
                  ++v82;
                  v14 = v79++ > 8;
                  if (v14)
                  {
LABEL_95:
                    LODWORD(v50) = 0;
                    goto LABEL_132;
                  }
                }

                if (*(this + 24))
                {
                  LODWORD(v50) = 0;
                }
              }

              else
              {
                v48 = 0;
                v49 = 0;
                v50 = 0;
                v51 = (v47 + v46);
                v52 = v46 + 1;
                while (1)
                {
                  *(this + 1) = v52;
                  v53 = *v51++;
                  v50 |= (v53 & 0x7F) << v48;
                  if ((v53 & 0x80) == 0)
                  {
                    break;
                  }

                  v48 += 7;
                  ++v52;
                  v14 = v49++ > 8;
                  if (v14)
                  {
                    goto LABEL_95;
                  }
                }
              }

LABEL_132:
              *(a1 + 68) = v50;
              goto LABEL_142;
            case 5:
              operator new();
          }
        }
      }

      else if (v22 > 8)
      {
        switch(v22)
        {
          case 9:
            operator new();
          case 0xA:
            *(a1 + 88) |= 4u;
            v55 = *(this + 1);
            v54 = *(this + 2);
            v56 = *this;
            if (v55 > 0xFFFFFFFFFFFFFFF5 || v55 + 10 > v54)
            {
              v84 = 0;
              v85 = 0;
              v59 = 0;
              v17 = v54 >= v55;
              v86 = v54 - v55;
              if (!v17)
              {
                v86 = 0;
              }

              v87 = (v56 + v55);
              v88 = v55 + 1;
              while (1)
              {
                if (!v86)
                {
                  LODWORD(v59) = 0;
                  *(this + 24) = 1;
                  goto LABEL_135;
                }

                v89 = *v87;
                *(this + 1) = v88;
                v59 |= (v89 & 0x7F) << v84;
                if ((v89 & 0x80) == 0)
                {
                  break;
                }

                v84 += 7;
                --v86;
                ++v87;
                ++v88;
                v14 = v85++ > 8;
                if (v14)
                {
LABEL_105:
                  LODWORD(v59) = 0;
                  goto LABEL_135;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v59) = 0;
              }
            }

            else
            {
              v57 = 0;
              v58 = 0;
              v59 = 0;
              v60 = (v56 + v55);
              v61 = v55 + 1;
              while (1)
              {
                *(this + 1) = v61;
                v62 = *v60++;
                v59 |= (v62 & 0x7F) << v57;
                if ((v62 & 0x80) == 0)
                {
                  break;
                }

                v57 += 7;
                ++v61;
                v14 = v58++ > 8;
                if (v14)
                {
                  goto LABEL_105;
                }
              }
            }

LABEL_135:
            *(a1 + 72) = v59;
            goto LABEL_142;
          case 0xB:
            *(a1 + 88) |= 1u;
            v24 = *(this + 1);
            v23 = *(this + 2);
            v25 = *this;
            if (v24 > 0xFFFFFFFFFFFFFFF5 || v24 + 10 > v23)
            {
              v90 = 0;
              v91 = 0;
              v28 = 0;
              v17 = v23 >= v24;
              v92 = v23 - v24;
              if (!v17)
              {
                v92 = 0;
              }

              v93 = (v25 + v24);
              v94 = v24 + 1;
              while (1)
              {
                if (!v92)
                {
                  LODWORD(v28) = 0;
                  *(this + 24) = 1;
                  goto LABEL_138;
                }

                v95 = *v93;
                *(this + 1) = v94;
                v28 |= (v95 & 0x7F) << v90;
                if ((v95 & 0x80) == 0)
                {
                  break;
                }

                v90 += 7;
                --v92;
                ++v93;
                ++v94;
                v14 = v91++ > 8;
                if (v14)
                {
LABEL_113:
                  LODWORD(v28) = 0;
                  goto LABEL_138;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v28) = 0;
              }
            }

            else
            {
              v26 = 0;
              v27 = 0;
              v28 = 0;
              v29 = (v25 + v24);
              v30 = v24 + 1;
              while (1)
              {
                *(this + 1) = v30;
                v31 = *v29++;
                v28 |= (v31 & 0x7F) << v26;
                if ((v31 & 0x80) == 0)
                {
                  break;
                }

                v26 += 7;
                ++v30;
                v14 = v27++ > 8;
                if (v14)
                {
                  goto LABEL_113;
                }
              }
            }

LABEL_138:
            *(a1 + 64) = v28;
            goto LABEL_142;
        }
      }

      else
      {
        switch(v22)
        {
          case 6:
            *(a1 + 88) |= 0x10u;
            v64 = *(this + 1);
            v63 = *(this + 2);
            v65 = *this;
            if (v64 > 0xFFFFFFFFFFFFFFF5 || v64 + 10 > v63)
            {
              v96 = 0;
              v97 = 0;
              v68 = 0;
              v17 = v63 >= v64;
              v98 = v63 - v64;
              if (!v17)
              {
                v98 = 0;
              }

              v99 = (v65 + v64);
              v100 = v64 + 1;
              while (1)
              {
                if (!v98)
                {
                  LODWORD(v68) = 0;
                  *(this + 24) = 1;
                  goto LABEL_141;
                }

                v101 = *v99;
                *(this + 1) = v100;
                v68 |= (v101 & 0x7F) << v96;
                if ((v101 & 0x80) == 0)
                {
                  break;
                }

                v96 += 7;
                --v98;
                ++v99;
                ++v100;
                v14 = v97++ > 8;
                if (v14)
                {
LABEL_121:
                  LODWORD(v68) = 0;
                  goto LABEL_141;
                }
              }

              if (*(this + 24))
              {
                LODWORD(v68) = 0;
              }
            }

            else
            {
              v66 = 0;
              v67 = 0;
              v68 = 0;
              v69 = (v65 + v64);
              v70 = v64 + 1;
              while (1)
              {
                *(this + 1) = v70;
                v71 = *v69++;
                v68 |= (v71 & 0x7F) << v66;
                if ((v71 & 0x80) == 0)
                {
                  break;
                }

                v66 += 7;
                ++v70;
                v14 = v67++ > 8;
                if (v14)
                {
                  goto LABEL_121;
                }
              }
            }

LABEL_141:
            *(a1 + 80) = v68;
            goto LABEL_142;
          case 7:
            operator new();
          case 8:
            operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v10 & 7, 0) & 1) == 0)
      {
        v103 = 0;
        return v103 & 1;
      }

LABEL_142:
      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_146:
  v103 = v4 ^ 1;
  return v103 & 1;
}

uint64_t sub_100140720(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 88);
  if ((v4 & 8) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(result + 76), 1u);
    v4 = *(v3 + 88);
  }

  if ((v4 & 0x20) != 0)
  {
    result = PB::Writer::write(this, *(v3 + 84), 2u);
  }

  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  while (v5 != v6)
  {
    v7 = *v5++;
    result = PB::Writer::writeSubmessage(this, v7, 3u);
  }

  if ((*(v3 + 88) & 2) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 68), 4u);
  }

  v8 = *(v3 + 8);
  if (v8)
  {
    result = PB::Writer::write(this, v8, 5u);
  }

  if ((*(v3 + 88) & 0x10) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 80), 6u);
  }

  if (*(v3 + 40))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 48))
  {
    result = PB::Writer::write();
  }

  if (*(v3 + 56))
  {
    result = PB::Writer::write();
  }

  v9 = *(v3 + 88);
  if ((v9 & 4) != 0)
  {
    result = PB::Writer::writeVarInt(this, *(v3 + 72), 0xAu);
    v9 = *(v3 + 88);
  }

  if (v9)
  {
    v10 = *(v3 + 64);

    return PB::Writer::writeVarInt(this, v10, 0xBu);
  }

  return result;
}

void sub_100140868(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1001408BC(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void *sub_1001408BC(void *result)
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

void ***sub_100140928(void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    free(*v2);

    operator delete();
  }

  return result;
}

void sub_100140988(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    operator delete();
  }
}

uint64_t sub_1001409E4(uint64_t a1)
{
  sub_100140A1C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_100140A1C(void *result, void *a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      v4[2] = v2;
      *v2 = 0;
      if (v5)
      {
        result = (*(*result + 8))(result);
        v2 = v4[2];
      }
    }

    while (v2 != a2);
  }

  return result;
}

void sub_1001418D4(uint64_t a1, uint64_t *a2)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "rm");
  sub_100141B34((a1 + 8), "NoBBRadioModule", QOS_CLASS_UTILITY, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = off_101E2BBE0;
  v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
  v5 = dispatch_queue_create_with_target_V2("NoBBRadioModule", v4, *(a1 + 24));
  *a1 = off_101E2BBE0;
  v7 = *a2;
  v6 = a2[1];
  *(a1 + 48) = v5;
  *(a1 + 56) = v7;
  *(a1 + 64) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  operator new();
}

void sub_100141A74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    dispatch_release(a11);
  }

  if (a17 < 0)
  {
    operator delete(__p);
  }

  v21 = v18[15];
  if (v21)
  {
    sub_100004A34(v21);
  }

  nullsub_1904(v19);
  sub_100141BF8(v18 + 10);
  v22 = v18[8];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v18[6];
  if (v23)
  {
    dispatch_release(v23);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void *sub_100141B34(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
{
  v7 = dispatch_queue_attr_make_with_qos_class(0, qos_class, 0);
  v8 = dispatch_queue_create(a2, v7);
  *a1 = 0;
  a1[1] = 0;
  a1[2] = v8;
  if (v8)
  {
    v9 = v8;
    dispatch_retain(v8);
    a1[3] = 0;
    dispatch_release(v9);
  }

  else
  {
    a1[3] = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v11, a4);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v11);
  ctu::OsLogLogger::~OsLogLogger(v11);
  return a1;
}

void sub_100141BD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_100141BF8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100083940((v1 + 32));
    *v1 = off_101E2BFC0;
    sub_10004A724((v1 + 16));
    operator delete();
  }

  return result;
}

uint64_t sub_100141C6C(uint64_t a1)
{
  *a1 = off_101E2BBE0;
  sub_1000FEFCC((a1 + 152));
  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 120);
  if (v3)
  {
    sub_100004A34(v3);
  }

  nullsub_1904(a1 + 96);
  sub_100141BF8((a1 + 80));
  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    dispatch_release(v5);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_100141D0C(uint64_t a1)
{
  sub_100141C6C(a1);

  operator delete();
}

uint64_t sub_100141D44(uint64_t a1)
{
  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
  {
    sub_1001457E0();
  }

  return *(a1 + 72);
}

void sub_100141E24(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_101FB9F50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FB9F50))
  {
    WirelessUserDirectory = _GetWirelessUserDirectory();
    sub_10000501C(&unk_101FB9F38, WirelessUserDirectory);
    __cxa_atexit(&std::string::~string, &unk_101FB9F38, &_mh_execute_header);
    __cxa_guard_release(&qword_101FB9F50);
  }

  if ((atomic_load_explicit(&qword_101FB9F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FB9F70))
  {
    v11 = _GetWirelessUserDirectory();
    sub_10000501C(buf, v11);
    v12 = std::string::append(buf, "/Library/", 9uLL);
    v13 = *&v12->__r_.__value_.__l.__data_;
    qword_101FB9F68 = v12->__r_.__value_.__r.__words[2];
    xmmword_101FB9F58 = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SBYTE7(v17) < 0)
    {
      operator delete(*buf);
    }

    __cxa_atexit(&std::string::~string, &xmmword_101FB9F58, &_mh_execute_header);
    __cxa_guard_release(&qword_101FB9F70);
  }

  if ((atomic_load_explicit(&qword_101FB9F90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FB9F90))
  {
    sub_100142824("/Logs/", &xmmword_101FB9F58, &qword_101FB9F78);
    __cxa_atexit(&std::string::~string, &qword_101FB9F78, &_mh_execute_header);
    __cxa_guard_release(&qword_101FB9F90);
  }

  if ((atomic_load_explicit(&qword_101FB9FB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FB9FB0))
  {
    sub_100142824("/Library/Logs/CoreTelephonyTraceScratch/", &unk_101FB9F38, &qword_101FB9F98);
    __cxa_atexit(&std::string::~string, &qword_101FB9F98, &_mh_execute_header);
    __cxa_guard_release(&qword_101FB9FB0);
  }

  if ((atomic_load_explicit(&qword_101FB9FD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FB9FD0))
  {
    sub_100142824("/Library/Logs/CrashReporter/Baseband/", &unk_101FB9F38, &qword_101FB9FB8);
    __cxa_atexit(&std::string::~string, &qword_101FB9FB8, &_mh_execute_header);
    __cxa_guard_release(&qword_101FB9FD0);
  }

  if ((atomic_load_explicit(&qword_101FB9FF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FB9FF0))
  {
    sub_100142824("/Library/Logs/CoreTelephonyTrace/", &unk_101FB9F38, &qword_101FB9FD8);
    __cxa_atexit(&std::string::~string, &qword_101FB9FD8, &_mh_execute_header);
    __cxa_guard_release(&qword_101FB9FF0);
  }

  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I ----------------- Initializing NoBBRadioModule ----------------", buf, 2u);
  }

  memset(buf, 0, sizeof(buf));
  Registry::getServiceManager(buf, *(a1 + 56));
  if (*buf)
  {
    sub_100004AA0(&v15, (a1 + 8));
    operator new();
  }

  v3 = *&buf[8];
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  *buf = 0u;
  RadioModuleType = capabilities::ct::getRadioModuleType(v3);
  v5 = &qword_101FB9F78;
  if (byte_101FB9F8F < 0)
  {
    v5 = qword_101FB9F78;
  }

  v6 = &qword_101FB9F98;
  if (byte_101FB9FAF < 0)
  {
    v6 = qword_101FB9F98;
  }

  v7 = &qword_101FB9FB8;
  v8 = &qword_101FB9FD8;
  if (byte_101FB9FCF < 0)
  {
    v7 = qword_101FB9FB8;
  }

  if (byte_101FB9FEF < 0)
  {
    v8 = qword_101FB9FD8;
  }

  memset(buf, 0, sizeof(buf));
  LODWORD(v17) = RadioModuleType;
  *(&v17 + 1) = v5;
  *&v18 = v6;
  *(&v18 + 1) = v7;
  v19 = v8;
  v9 = *(a1 + 64);
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1006C7550(v14);
}

void sub_100142660(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  __cxa_guard_abort(&qword_101FB9F70);
  _Unwind_Resume(a1);
}

uint64_t sub_100142824@<X0>(char *__s@<X1>, const void **a2@<X0>, void *a3@<X8>)
{
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = strlen(__s);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  result = sub_1000677C4(a3, v6 + v7);
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    result = memmove(a3, v9, v6);
  }

  v10 = a3 + v6;
  if (v7)
  {
    result = memmove(v10, __s, v7);
  }

  v10[v7] = 0;
  return result;
}

void sub_1001429C4(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void sub_100142AD4(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = 0uLL;
  sub_100004AA0(&v4, (a1 + 8));
  v4 = 0uLL;
  operator new();
}

void sub_100142BA4(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_100142C80(uint64_t a1, uint64_t a2)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_100142DD4;
  v9[3] = &unk_101E2BDA8;
  v9[4] = a1;
  sub_1000224C8(v10, a2);
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10014B1BC;
  block[3] = &unk_101E2C5E8;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v9;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10000FF50(v10);
  return 1;
}

void sub_100142DC8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100142DD4(uint64_t a1)
{
  v1 = *(a1 + 32);
  sub_1000224C8(v3, a1 + 40);
  sub_100142E68(v1, v3);
  return sub_10000FF50(v3);
}

void sub_100142E4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void sub_100142E68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 147) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I We are already in low power, skipping", buf, 2u);
    }
  }

  else
  {
    *(a1 + 147) = 1;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 0x40000000;
    v7[2] = sub_100143140;
    v7[3] = &unk_101E2BDD8;
    v7[4] = a1;
    v15 = 0;
    v16 = 0;
    sub_100004AA0(&v15, (a1 + 8));
    v5 = *(a1 + 24);
    *buf = _NSConcreteStackBlock;
    v9 = 1174405120;
    v10 = sub_10014B1BC;
    v11 = &unk_101E2C5E8;
    v13 = v15;
    v14 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v7;
    dispatch_async(v5, buf);
    if (v14)
    {
      sub_100004A34(v14);
    }

    v6 = v16;
    if (v16)
    {
      sub_100004A34(v16);
    }

    *buf = 0;
    v9 = 0;
    sub_10020A8B4(v6, buf);
    if (*buf)
    {
      v18 = sub_10014315C;
      v19 = 0;
      v20 = a1;
      sub_1000224C8(&v21, a2);
      sub_10014B1F8(v22);
    }

    sub_1000224C8(v17, a2);
    sub_1001432B4(a1, 1, v17);
    sub_10000FF50(v17);
    if (v9)
    {
      sub_100004A34(v9);
    }
  }
}

void sub_1001430C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, std::__shared_weak_count *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  sub_10000FF50(va);
  if (a9)
  {
    sub_100004A34(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014315C(uint64_t a1, char a2, uint64_t a3)
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1174405120;
  v10[2] = sub_1001434F8;
  v10[3] = &unk_101E2BDF8;
  v10[4] = a1;
  v11[32] = a2;
  sub_1000224C8(v11, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v4 = *(a1 + 24);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1174405120;
  v6[2] = sub_10014B1BC;
  v6[3] = &unk_101E2C5E8;
  v6[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6[4] = v10;
  dispatch_async(v4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  return sub_10000FF50(v11);
}

void sub_1001432A8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1001432B4(uint64_t a1, int a2, uint64_t a3)
{
  if ((*(a1 + 147) & 1) == 0)
  {
    v10 = *(a1 + 40);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    LODWORD(block[0]) = 67109120;
    HIDWORD(block[0]) = a2;
    v11 = "#I NOT calling low power callback due to the mode change; result is %d";
    v12 = v10;
LABEL_17:
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v11, block, 8u);
    goto LABEL_18;
  }

  if ((a2 & 1) == 0)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_100143594;
    v13[3] = &unk_101E2BE28;
    v13[4] = a1;
    v14 = 0;
    v15 = 0;
    sub_100004AA0(&v14, (a1 + 8));
    v6 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_10014B1BC;
    block[3] = &unk_101E2C5E8;
    block[5] = v14;
    v17 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v13;
    dispatch_async(v6, block);
    if (v17)
    {
      sub_100004A34(v17);
    }

    if (v15)
    {
      sub_100004A34(v15);
    }
  }

  v7 = *(a3 + 24);
  v8 = *(a1 + 40);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (!v7)
  {
    if (!v9)
    {
      goto LABEL_18;
    }

    LODWORD(block[0]) = 67109120;
    HIDWORD(block[0]) = a2;
    v11 = "#I low power callback is empty, result is %d";
    v12 = v8;
    goto LABEL_17;
  }

  if (v9)
  {
    LODWORD(block[0]) = 67109120;
    HIDWORD(block[0]) = a2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I calling low power callback, result is %d", block, 8u);
  }

  sub_10000FFD0(a3, a2);
LABEL_18:
  if ((a2 & 1) == 0)
  {
    *(a1 + 147) = 0;
  }
}

void sub_1001434EC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001434F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 72);
  sub_1000224C8(v4, a1 + 40);
  sub_1001432B4(v1, v2 & 1, v4);
  return sub_10000FF50(v4);
}

void sub_100143578(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

void sub_1001435B0(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1001436BC;
  v3[3] = &unk_101E2BE48;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10014B1BC;
  block[3] = &unk_101E2C5E8;
  block[5] = v6;
  v5 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v3;
  dispatch_async(v2, block);
  if (v5)
  {
    sub_100004A34(v5);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1001436C4(uint64_t a1)
{
  if (*(a1 + 147))
  {
    *(a1 + 147) = 0;
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 0x40000000;
    v4[2] = sub_10014381C;
    v4[3] = &unk_101E2BE68;
    v4[4] = a1;
    v7 = 0;
    v8 = 0;
    sub_100004AA0(&v7, (a1 + 8));
    v2 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 1174405120;
    block[2] = sub_10014B1BC;
    block[3] = &unk_101E2C5E8;
    block[5] = v7;
    v6 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    block[4] = v4;
    dispatch_async(v2, block);
    if (v6)
    {
      sub_100004A34(v6);
    }

    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  else
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(block[0]) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I NOT exiting low power mode due to the wrong power mode", block, 2u);
    }
  }
}

void sub_100143838(uint64_t a1, int a2)
{
  if (*(a1 + 144) != a2)
  {
    v2 = a2;
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = asStringBool(v2);
      v6 = asStringBool(*(a1 + 144));
      v7 = 136315394;
      v8 = v5;
      v9 = 2080;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Airplane mode changing from %s to %s", &v7, 0x16u);
    }

    sub_100143914(a1);
  }
}

void sub_100143914(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asStringBool(*(a1 + 146));
    v4 = asStringBool(*(a1 + 144));
    v5 = asStringBool(*(a1 + 88));
    v15 = 136315650;
    v16 = v3;
    v17 = 2080;
    v18 = v4;
    v19 = 2080;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fNoBBWiFiOffInAirplaneMode %s. fNoBBAirplaneMode %s  fWiFiAvailable %s", &v15, 0x20u);
  }

  v6 = *(a1 + 144);
  if (v6 != 1 || (*(a1 + 88) & 1) != 0)
  {
    v7 = (a1 + 146);
    if (*(a1 + 146) != 1)
    {
      return;
    }

    *(a1 + 146) = 0;
    v8 = *(a1 + 40);
    v9 = 0;
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v10 = asStringBool(v6);
    v11 = asStringBool(*(a1 + 88));
    v15 = 136315394;
    v16 = v10;
    v17 = 2080;
    v18 = v11;
    v12 = "#I Pretending that NoBB Radio is on. fNoBBAirplaneMode %s  fWiFiAvailable %s";
    goto LABEL_11;
  }

  v7 = (a1 + 146);
  if (*(a1 + 146))
  {
    return;
  }

  v9 = 1;
  *(a1 + 146) = 1;
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = asStringBool(1);
    v14 = asStringBool(*(a1 + 88));
    v15 = 136315394;
    v16 = v13;
    v17 = 2080;
    v18 = v14;
    v12 = "#I Pretending that NoBB Radio is off. fNoBBAirplaneMode %s  fWiFiAvailable %s";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v12, &v15, 0x16u);
    v9 = *v7;
  }

LABEL_12:
  sub_100083E9C(&event::data::WiFiOffInAirplaneMode, v9 & 1);
}

void sub_100143B08(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "false";
    if (a2)
    {
      v5 = "true";
    }

    *v16 = 136315138;
    *&v16[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I available = %s", v16, 0xCu);
  }

  if (*(a1 + 88) != a2)
  {
    *(a1 + 88) = a2;
    sub_100143914(a1);
    if (a2)
    {
      ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
      *v16 = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, v16);
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
          goto LABEL_15;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
LABEL_15:
      *v16 = 0;
      (**v14)(v14, v16);
      if ((v15 & 1) == 0)
      {
        sub_100004A34(v13);
      }
    }
  }
}

void sub_100143CC0(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100143CF4(uint64_t a1)
{
  TMKXPCServer.shutdown()();
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "CommCenterMemory";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I memory to be dumped into %s", &v3, 0xCu);
  }
}

uint64_t sub_100143DA8(uint64_t a1, unsigned int a2)
{
  v12[0] = 0;
  v12[1] = 0;
  v13 = 0;
  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v3 = sub_1005C6790(a2);
  sub_10000501C(v10, v3);
  v4 = *(a1 + 112);
  if (v4)
  {
    sub_10000501C(__p, "enabled");
    v5 = sub_1006C8B14(v4, v10, __p, v12);
    v6 = v5;
    if (v9 < 0)
    {
      operator delete(__p[0]);
      if (v6)
      {
        goto LABEL_4;
      }
    }

    else if (v5)
    {
LABEL_4:
      v4 = sub_100143EC4(v12);
      goto LABEL_7;
    }

    v4 = 0;
  }

LABEL_7:
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  return v4;
}

void sub_100143E74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (*(v21 - 17) < 0)
  {
    operator delete(*(v21 - 40));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100143EC4(void *a1)
{
  v4 = 0x400000000000000;
  *__p = *"true";
  v1 = sub_100071DF8(a1, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  return v1;
}

uint64_t sub_100143F20(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 44) | 2) == 2)
  {
    return 1;
  }

  else
  {
    return (*(*a1 + 256))(a1, 2);
  }
}

void sub_100143F68(void *a1, uint64_t a2)
{
  if (!(*(*a1 + 192))(a1))
  {
    *v9 = a1;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v9[8], *a2, *(a2 + 8));
    }

    else
    {
      *&v9[8] = *a2;
      *&v9[24] = *(a2 + 16);
    }

    v10 = *(a2 + 24);
    v11[0] = *(a2 + 40);
    v15 = 0uLL;
    sub_100004AA0(&v15, a1 + 1);
    operator new();
  }

  if (*(a2 + 41) == 1)
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    sub_10031538C(&v15);
    memset(&__dst, 0, sizeof(__dst));
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a2, *(a2 + 8));
    }

    else
    {
      __dst = *a2;
    }

    memset(&v13, 0, sizeof(v13));
    v5 = a1[14];
    if (v5)
    {
      std::string::operator=(&v13, v5 + 11);
    }

    *v11 = 0u;
    v12 = 0u;
    v10 = 0u;
    memset(v9, 0, sizeof(v9));
    sub_1003154F8(&v15, &__str);
    std::string::operator=(v9, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    std::string::operator=(&v11[1], &__dst);
    std::string::operator=(&v9[24], &v13);
    sub_1002C4C38(v9);
    if (a1[14])
    {
      sub_1003155AC(&v15, &v7);
      if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__p, v13.__r_.__value_.__l.__data_, v13.__r_.__value_.__l.__size_);
      }

      else
      {
        __p = v13;
      }

      sub_1001443C8();
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    if (SHIBYTE(v10) < 0)
    {
      operator delete(*&v9[24]);
    }

    if ((v9[23] & 0x80000000) != 0)
    {
      operator delete(*v9);
    }

    if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v13.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(*(&v17 + 1));
    }

    if (SBYTE7(v17) < 0)
    {
      operator delete(v16);
    }
  }

  else
  {
    v4 = *(*a1 + 184);

    v4(a1, a2);
  }
}

void sub_100144328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  sub_10014476C(&a30);
  if (a46 < 0)
  {
    operator delete(a41);
  }

  if (*(v46 - 137) < 0)
  {
    operator delete(*(v46 - 160));
  }

  sub_1001454F4(v46 - 128);
  _Unwind_Resume(a1);
}

void sub_100144564(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001445C4(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = "false";
    if (a2)
    {
      v5 = "true";
    }

    *buf = 136315138;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s", buf, 0xCu);
  }

  *__p = 0u;
  v14 = 0u;
  *v11 = 0u;
  v12 = 0u;
  *buf = 0u;
  v6 = *(a1 + 112);
  if (v6)
  {
    std::string::operator=(buf, v6 + 13);
    std::string::operator=(&v11[1], (*(a1 + 112) + 264));
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) && (*v9 = 0, _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Warning: sendEndStateDumpNotification: TraceModule has not been setup yet.", v9, 2u), SHIBYTE(v12) < 0))
    {
      *&v12 = 0;
      v8 = v11[1];
    }

    else
    {
      v8 = &v11[1];
      HIBYTE(v12) = 0;
    }

    *v8 = 0;
  }

  sub_1002C4F28(buf);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[1]);
  }

  if (SHIBYTE(v11[0]) < 0)
  {
    operator delete(*buf);
  }
}

void sub_100144758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10014476C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014476C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1001447C0(uint64_t a1, std::string::size_type a2)
{
  v4 = *(a1 + 40);
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

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CSI state dump requested: %s", &buf, 0xCu);
  }

  memset(&buf, 0, sizeof(buf));
  std::string::basic_string(&buf, a2, 0, 0xFFuLL, &v10);
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v10) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I --------------  STATE DUMP --------------------", &v10, 2u);
    v6 = *(a1 + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    p_buf = &buf;
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v10 = 136315138;
    v11 = p_buf;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Reason: %s", &v10, 0xCu);
    v6 = *(a1 + 40);
  }

  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 147);
    v10 = 67109120;
    LODWORD(v11) = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I LowPowerMode: %d", &v10, 8u);
  }

  sub_1001449DC();
  sub_10014BF94(&event::dumpState[3]);
  v9 = sub_100081A98(&event::dumpState[1]);
  sub_100081ADC(v9);
  sleep(1u);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }
}

void sub_1001449DC()
{
  sub_10000501C(&__p, "/cc/events/dump_state");
  object = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v2 < 0)
  {
    operator delete(__p);
  }
}

void sub_100144A4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100144A7C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  memset(&__dst, 0, sizeof(__dst));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, a2[1]);
  }

  else
  {
    __dst = *a2;
  }

  memset(&v29, 0, sizeof(v29));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v29, *a3, *(a3 + 8));
  }

  else
  {
    v29 = *a3;
  }

  v8 = sub_1005C6790(4u);
  v9 = strlen(v8);
  v10 = v9;
  v11 = *(v6 + 23);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v6;
    if (v10 != v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (!memcmp(v12, v8, v10))
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == v6[1])
  {
    if (v9 == -1)
    {
      sub_10013C334();
    }

    v12 = *v6;
    goto LABEL_13;
  }

LABEL_14:
  v13 = sub_1005C6790(2u);
  v14 = strlen(v13);
  v15 = *(v6 + 23);
  if (v15 < 0)
  {
    if (v14 != v6[1])
    {
      goto LABEL_42;
    }

    if (v14 == -1)
    {
      sub_10013C334();
    }

    v6 = *v6;
  }

  else if (v14 != v15)
  {
    goto LABEL_42;
  }

  if (memcmp(v6, v13, v14))
  {
    goto LABEL_42;
  }

LABEL_21:
  v16 = strlen("KeepScratchLogs");
  v17 = v16;
  v18 = *(a3 + 23);
  if (v18 < 0)
  {
    if (v16 != *(a3 + 8))
    {
      goto LABEL_28;
    }

    if (v16 == -1)
    {
      sub_10013C334();
    }

    v19 = *a3;
  }

  else
  {
    v19 = a3;
    if (v17 != v18)
    {
      goto LABEL_42;
    }
  }

  if (!memcmp(v19, "KeepScratchLogs", v17))
  {
LABEL_41:
    v23 = sub_1005C6790(2u);
    sub_100016890(&__dst, v23);
    sub_100016890(&v29, "KeepScratchLogs");
    goto LABEL_42;
  }

LABEL_28:
  if ((v18 & 0x80000000) != 0 && *(a3 + 8) == 29)
  {
    v20 = **a3 == 0x6576726573657270 && *(*a3 + 8) == 0x686374617263735FLL;
    v21 = v20 && *(*a3 + 16) == 0x6E655F73676F6C5FLL;
    if (v21 && *(*a3 + 21) == 0x64656C62616E655FLL)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  if (*(a1 + 112))
  {
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v28, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v28 = __dst;
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v27, v29.__r_.__value_.__l.__data_, v29.__r_.__value_.__l.__size_);
    }

    else
    {
      v27 = v29;
    }

    if (*(a4 + 23) < 0)
    {
      sub_100005F2C(__p, *a4, *(a4 + 8));
    }

    else
    {
      *__p = *a4;
      v26 = *(a4 + 16);
    }

    sub_1006C97E4();
  }

  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return 0;
}

void sub_100144DC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100144E40(uint64_t a1, void **a2, uint64_t a3, void *a4)
{
  v6 = a2;
  memset(&__dst, 0, sizeof(__dst));
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, a2[1]);
  }

  else
  {
    __dst = *a2;
  }

  memset(&v34, 0, sizeof(v34));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v34, *a3, *(a3 + 8));
  }

  else
  {
    v34 = *a3;
  }

  v8 = sub_1005C6790(4u);
  v9 = strlen(v8);
  v10 = v9;
  v11 = *(v6 + 23);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = v6;
    if (v10 != v11)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (!memcmp(v12, v8, v10))
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (v9 == v6[1])
  {
    if (v9 == -1)
    {
      sub_10013C334();
    }

    v12 = *v6;
    goto LABEL_13;
  }

LABEL_14:
  v13 = sub_1005C6790(2u);
  v14 = strlen(v13);
  v15 = *(v6 + 23);
  if (v15 < 0)
  {
    if (v14 != v6[1])
    {
      goto LABEL_42;
    }

    if (v14 == -1)
    {
      sub_10013C334();
    }

    v6 = *v6;
  }

  else if (v14 != v15)
  {
    goto LABEL_42;
  }

  if (memcmp(v6, v13, v14))
  {
    goto LABEL_42;
  }

LABEL_21:
  v16 = strlen("KeepScratchLogs");
  v17 = v16;
  v18 = *(a3 + 23);
  if (v18 < 0)
  {
    if (v16 != *(a3 + 8))
    {
      goto LABEL_28;
    }

    if (v16 == -1)
    {
      sub_10013C334();
    }

    v19 = *a3;
  }

  else
  {
    v19 = a3;
    if (v17 != v18)
    {
      goto LABEL_42;
    }
  }

  if (!memcmp(v19, "KeepScratchLogs", v17))
  {
LABEL_41:
    v23 = sub_1005C6790(2u);
    sub_100016890(&__dst, v23);
    sub_100016890(&v34, "KeepScratchLogs");
    goto LABEL_42;
  }

LABEL_28:
  if ((v18 & 0x80000000) != 0 && *(a3 + 8) == 29)
  {
    v20 = **a3 == 0x6576726573657270 && *(*a3 + 8) == 0x686374617263735FLL;
    v21 = v20 && *(*a3 + 16) == 0x6E655F73676F6C5FLL;
    if (v21 && *(*a3 + 21) == 0x64656C62616E655FLL)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  v24 = *(a1 + 112);
  if (v24)
  {
    __p[0] = 0;
    __p[1] = 0;
    v33 = 0;
    v25 = sub_1006C8B14(v24, &__dst, &v34, __p);
    if (v25)
    {
      if (v33 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      v30 = xpc_string_create(v26);
      if (!v30)
      {
        v30 = xpc_null_create();
      }

      v29[0] = *a4;
      v29[1] = "kRadioTracePropertyValue";
      sub_10000F688(v29, &v30, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v30);
      v30 = 0;
    }

    else
    {
      v27 = a4[1];
      *a4 = 0;
      a4[1] = 0;
      if (v27)
      {
        sub_100004A34(v27);
      }
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v25 = 0;
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__dst.__r_.__value_.__l.__data_);
  }

  return v25;
}

void sub_100145178(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (*(v25 - 57) < 0)
  {
    operator delete(*(v25 - 80));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001451C4(void *a1, uint64_t a2, int a3)
{
  if (!a1[14])
  {
    return 1;
  }

  v10[0] = 0;
  v10[1] = 0;
  v11 = 0;
  v5 = CSIBOOLAsString(a3);
  sub_10000501C(v10, v5);
  sub_10000501C(__p, "enabled");
  v6 = (*(*a1 + 240))(a1, a2, __p, v10);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }

  return v6;
}

void sub_100145288(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001452E4(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_100145340(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 24))
  {
    sub_1001453F8(a2, 0);
  }
}

uint64_t sub_1001453F8(uint64_t a1, char a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_10014544C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v7 = 0;
    v5 = 0u;
    *__p = 0u;
    *v3 = 0u;
    *v4 = 0u;
    (*(*v2 + 48))(v2, v3);
    if (SHIBYTE(v7) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v5) < 0)
    {
      operator delete(v4[1]);
    }

    if (SHIBYTE(v4[0]) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

uint64_t sub_1001454F4(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void *sub_100145538(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    a1[18] = v2;
    operator delete(v2);
  }

  v3 = a1[14];
  if (v3)
  {
    a1[15] = v3;
    operator delete(v3);
  }

  v4 = a1[11];
  if (v4)
  {
    a1[12] = v4;
    operator delete(v4);
  }

  v5 = a1[8];
  if (v5)
  {
    a1[9] = v5;
    operator delete(v5);
  }

  return a1;
}

void sub_10014561C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_1001456F0);
  __cxa_rethrow();
}

void sub_10014565C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1001456B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001456F0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10014571C(uint64_t a1)
{
  *a1 = off_101E2BFC0;
  sub_10004A724((a1 + 16));
  return a1;
}

void sub_100145760(uint64_t a1)
{
  *a1 = off_101E2BFC0;
  sub_10004A724((a1 + 16));

  operator delete();
}

uint64_t sub_1001457C4@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 16);
  *a2 = *(result + 8);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1u, memory_order_relaxed);
  }

  return result;
}

_BYTE *sub_10014588C(_BYTE *__b, size_t __len, int __c)
{
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  __b[23] = __len;
  if (__len)
  {
    memset(__b, __c, __len);
  }

  __b[__len] = 0;
  return __b;
}

void sub_10014593C(ServiceManager::Service *this)
{
  *this = off_101E2C080;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_100145998(ServiceManager::Service *this)
{
  *this = off_101E2C080;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_100145A18@<X0>(void *a1@<X8>)
{
  v2 = 4;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_100145A5C(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4 = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    sub_100142AD4(v2, &v4);
  }

  sub_100142AD4(v2, &v4);
}

uint64_t sub_100145B14(std::mutex *this, uint64_t *a2)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  v8 = *a2;
  v9 = a2[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = v4;
  if (!v8)
  {
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v11 = 1;
    if (!v9)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  sub_100145BF0(&this[1].__m_.__sig, &v13);
  v11 = v10;
  if (v9)
  {
LABEL_8:
    sub_100004A34(v9);
  }

LABEL_9:
  std::mutex::unlock(this);
  return v11 & 1;
}

void *sub_100145BF0(void *a1, unint64_t *a2)
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

void sub_100145E64(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t *sub_100145EC4(void *a1, unint64_t *a2)
{
  result = sub_100145EFC(a1, a2);
  if (result)
  {
    sub_100145FB0(a1, result);
    return 1;
  }

  return result;
}

void *sub_100145EFC(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100145FB0(void *a1, uint64_t *a2)
{
  v2 = *a2;
  sub_100120C90(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    sub_100145E64(&v6, v3);
  }

  return v2;
}

uint64_t sub_100145FFC(std::mutex *this, void *a2)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  if (*a2)
  {
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v8;
    v13 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v13);
    v10 = v9;
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    v13 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v10 = 1;
  }

  std::mutex::unlock(this);
  return v10 & 1;
}

uint64_t sub_1001460DC(std::mutex *this, void *a2)
{
  if ((v4 & 0x8000000000000000) != 0)
  {
    v5 = (v4 & 0x7FFFFFFFFFFFFFFFLL);
    v6 = 5381;
    do
    {
      v4 = v6;
      v7 = *v5++;
      v6 = (33 * v6) ^ v7;
    }

    while (v7);
  }

  std::mutex::lock(this);
  if (*a2)
  {
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v12 = v8;
    v13 = v4;
    sub_100145BF0(&this[1].__m_.__sig, &v13);
    v10 = v9;
    if (v12)
    {
      sub_100004A34(v12);
    }
  }

  else
  {
    v13 = v4;
    sub_100145EC4(&this[1].__m_.__sig, &v13);
    v10 = 1;
  }

  std::mutex::unlock(this);
  return v10 & 1;
}

void sub_1001461C4(ATCSDPCQueue::Callback *a1)
{
  ATCSDPCQueue::Callback::~Callback(a1);

  operator delete();
}

uint64_t sub_1001461FC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 24);
    v3 = *(result + 32);
    v4 = (v1 + (v3 >> 1));
    if (v3)
    {
      v2 = *(*v4 + v2);
    }

    return v2(v4, *(result + 8));
  }

  return result;
}

uint64_t *sub_10014625C(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 128));
  v4 = (v2 + 152);
  for (i = *(v2 + 160); i != v4; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC(v4);
  sub_1000FF844(&v8);
  return sub_1000049E0(&v7);
}

void sub_100146308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100146328(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      dispatch_group_leave(v3);
      v4 = *(v1 + 8);
      if (v4)
      {
        dispatch_release(v4);
      }
    }

    operator delete();
  }

  return result;
}

void sub_100146394(uint64_t *a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = *(*a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  sub_1001465CC(v1 + 8, &event::data::dataWifiAvailable, sub_100143B08, 0);
}

void sub_100146574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20)
{
  sub_1000062D4(&a20);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_100146328(&a10);
  _Unwind_Resume(a1);
}

void sub_1001465CC(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_1001466A8;
  aBlock[3] = &unk_101E2C138;
  aBlock[4] = a1;
  aBlock[5] = a3;
  aBlock[6] = a4;
  v8 = _Block_copy(aBlock);
  sub_100004AA0(&v6, a1);
  sub_100146788(a2, &v6, *(a1 + 16), &v8);
}

void sub_1001466A8(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[5];
  v4 = a1[6];
  v6 = (a1[4] + (v4 >> 1) - 8);
  if (v4)
  {
    v5 = *(*v6 + v5);
  }

  memset(v7, 0, sizeof(v7));
  sub_10004EFD0(v7, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v5(v6, a2, v7);
  v8 = v7;
  sub_1000087B4(&v8);
}

void sub_100146770(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void sub_100146788(int a1, uint64_t a2, NSObject *a3, void **a4)
{
  sub_100148060(v5, a4, a3);
  sub_1001480A8(v6, v5);
  sub_100146848(v6, a2);
}

void sub_100146848(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_1001469B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100146A20(uint64_t a1)
{
  sub_100148E4C((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

uint64_t sub_100146A60(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100146AA4(uint64_t *a1)
{
  memset(v3, 0, sizeof(v3));
  v2 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v3, v2);
  sub_100146B9C(a1, v3);
}

void sub_100146B6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100146B9C(uint64_t *a1, void *a2)
{
  v2 = 0;
  v3 = 0;
  sub_100146C98(a1, a2);
}

void sub_100146C80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10004A724(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100146D30(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t sub_100146D74(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_100146DB8(uint64_t *a1, void *a2)
{
  v2 = a1[1];
  if (!v2 || atomic_load_explicit((v2 + 8), memory_order_acquire) != 1)
  {
    operator new();
  }

  return sub_100147098(a1, a2, 1, 2);
}

void sub_100146EDC(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_100147130(&v2, a2);
}

uint64_t sub_100146F3C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100146F80(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100146D30(a1);
  result = sub_10014801C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_100146D74(v10 + 2);
        sub_100147760(v15, a2);
        v10 = v22;
      }

      if (*(sub_100146D74(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100146D30(a1);
        v18 = sub_10014801C(v17);
        v19 = sub_100146D74(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100146D30(a1);
      result = sub_10014801C(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

atomic_uint **sub_100147098(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100146D30(a1);
  v10 = sub_10014801C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100146D30(a1);
    v11 = *(sub_10014801C(v12) + 8);
  }

  v14 = v11;
  return sub_100146F80(a1, a2, a3, &v14, a4);
}

void sub_100147130(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10014719C(&v2);
}

void sub_10014720C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_10014724C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_100147368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001474F0(a1, a2);
  sub_10014755C((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_1001474F0(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_10014755C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1001475C4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100147630(&v2);
}

void sub_1001476A0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_1001476E0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_100147760(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_1001477CC(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_1001477CC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_100147810(uint64_t a1)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 28) = 1;
  *a1 = off_101E2C228;
  operator new();
}

void sub_100147920(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1001018AC(va);
  operator delete();
}

void sub_100147988(uint64_t a1)
{
  sub_100147D34(a1);

  operator delete();
}

uint64_t sub_1001479C0(uint64_t a1)
{
  v6 = 0u;
  memset(v5, 0, sizeof(v5));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v5, v2);
  sub_100147DAC(a1, v5);
  v3 = *(a1 + 24);
  sub_10004A704(*(&v6 + 1));
  sub_10004A6B0(v5);
  return v3;
}

void sub_100147A6C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100147A9C(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_100147AC8(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_100147AF4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

void sub_100147B4C(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100147BB8(&v2);
}

void sub_100147C28(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100147C50(v1);
  __cxa_rethrow();
}

uint64_t sub_100147C50(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_100148E4C((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100147CC4(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_100148E4C((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_100147D34(uint64_t a1)
{
  *a1 = off_101E2C228;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

atomic_uint **sub_100147DAC(atomic_uint **result, void *a2)
{
  v2 = (result + 4);
  if (result[4])
  {
    v4 = result;
    for (i = *sub_1001477CC(result + 4); ; i += 6)
    {
      result = sub_1001477CC(v2);
      if (i == result[1])
      {
        break;
      }

      memset(v6, 0, sizeof(v6));
      sub_10004ACE8(i, v6);
      if (sub_100048EA8(i))
      {
        if (*(v4 + 24) == 1)
        {
          *(v4 + 24) = 0;
          sub_100100F00(v4, a2);
        }

        return sub_10004B040(v6);
      }

      sub_10004B040(v6);
    }
  }

  return result;
}

void sub_100147E94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

void sub_100147EB4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_100147F20(&v2);
}

void sub_100147F90(void *a1)
{
  __cxa_begin_catch(a1);
  if (v1)
  {
    sub_1017612E0(v1);
  }

  __cxa_rethrow();
}

uint64_t sub_100147FD4(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10014801C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

dispatch_object_t *sub_100148060(dispatch_object_t *a1, void **a2, dispatch_object_t object)
{
  *a1 = object;
  v4 = *a2;
  if (*a2)
  {
    v4 = _Block_copy(v4);
    object = *a1;
  }

  a1[1] = v4;
  dispatch_retain(object);
  return a1;
}

_OWORD *sub_1001480A8(_OWORD *a1, NSObject **a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_100148100(a1, a2);
  return a1;
}

void sub_1001480E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100148E4C((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100148100(uint64_t a1, NSObject **a2)
{
  sub_1001481DC(v4, a2);
  sub_100148158(a1 + 24, v4);
  return sub_1001491CC(v4);
}

uint64_t sub_100148158(uint64_t a1, NSObject **a2)
{
  sub_1001481DC(v4, a2);
  sub_1001482A4(v5, v4);
  sub_100148228(v5, a1);
  sub_100148E4C(v5);
  sub_1001491CC(v4);
  return a1;
}

void sub_1001481B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void (**a11)(void, void, uint64_t))
{
  sub_100148E4C(&a11);
  sub_1001491CC(&a9);
  _Unwind_Resume(a1);
}

NSObject **sub_1001481DC(NSObject **a1, NSObject **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = *a2;
  if (v4)
  {
    v4 = _Block_copy(v4);
    v3 = *a1;
  }

  a1[1] = v4;
  dispatch_retain(v3);
  return a1;
}

void (***sub_100148228(void (***result)(void, void, uint64_t), uint64_t a2))(void, void, uint64_t)
{
  if (a2 != result)
  {
    v3 = result;
    memset(v4, 0, sizeof(v4));
    sub_100148D94(v4, result);
    sub_100148D94(v3, a2);
    sub_100148D94(a2, v4);
    return sub_100148E4C(v4);
  }

  return result;
}

void *sub_1001482A4(void *a1, NSObject **a2)
{
  sub_1001481DC(v4, a2);
  sub_100148304(a1, v4);
  sub_1001491CC(v4);
  return a1;
}

void *sub_100148304(void *a1, NSObject **a2)
{
  *a1 = 0;
  sub_1001481DC(v4, a2);
  sub_100148364(a1, v4);
  sub_1001491CC(v4);
  return a1;
}

uint64_t sub_100148364(uint64_t a1, NSObject **a2)
{
  sub_1001481DC(v6, a2);
  v3 = sub_10014854C(off_101E2C330, v6, (a1 + 8));
  result = sub_1001491CC(v6);
  if (v3)
  {
    v5 = off_101E2C330;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

uint64_t sub_1001483E0(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_1001481DC(a2, result);
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_1001491CC(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvbNSt3__16vectorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS8_ISA_EEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvbNSt3__16vectorINS3_12basic_stringIcNS3_11char_traitsIcEENS3_9allocatorIcEEEENS8_ISA_EEEEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1001484B8(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  memset(v4, 0, sizeof(v4));
  sub_10004EFD0(v4, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  sub_1001485B4(a1);
}

void sub_100148534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014854C(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_1001481DC(v7, a2);
  v5 = sub_100148D4C(a1, v7, a3);
  sub_1001491CC(v7);
  return v5;
}

void sub_1001485B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    v1 = _Block_copy(v1);
  }

  aBlock = v1;
  sub_100148920(v3, &aBlock);
  sub_100148664();
}

void sub_100148638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, void (**a11)(void, void, uint64_t))
{
  sub_100148E4C(&a11);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1001487E8(uint64_t a1)
{
  sub_100148888(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_100148E4C(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {
    operator delete();
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = v4;
    sub_1000087B4(&v5);
    operator delete();
  }

  return result;
}

uint64_t sub_100148888(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void *sub_100148920(void *a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_10014899C(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_100148980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10014899C(void *a1, void **a2)
{
  *a1 = 0;
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  sub_100148A18(a1, &aBlock);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return a1;
}

void sub_1001489FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_100148A18(uint64_t a1, void **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v3 = _Block_copy(v3);
  }

  aBlock = v3;
  v4 = sub_100148AF8(off_101E2C370, &aBlock, (a1 + 8));
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (v4)
  {
    v5 = off_101E2C370;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
}

void sub_100148A94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_100148AB0(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    a2[4] = 0;
  }

  else
  {
    sub_100148B7C(a1, a2, a3);
  }
}

uint64_t sub_100148AF8(uint64_t a1, void **a2, void **a3)
{
  v5 = *a2;
  if (*a2)
  {
    v5 = _Block_copy(v5);
  }

  aBlock = v5;
  v6 = sub_100148CEC(a1, &aBlock, a3);
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  return v6;
}

void sub_100148B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  _Unwind_Resume(exception_object);
}

void sub_100148B7C(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFvbNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFvbNSt3__16vectorINS1_12basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEENS6_IS8_EEEEEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else if (a3 == 2)
    {
      v7 = *a2;
      if (*a2)
      {
LABEL_6:
        _Block_release(v7);
      }
    }

    else
    {
      a2[4] = 0;
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_100148C50(uint64_t *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  memset(v5, 0, sizeof(v5));
  sub_10004EFD0(v5, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  (*(v3 + 16))(v3, v4, v5);
  v6 = v5;
  sub_1000087B4(&v6);
}

void sub_100148CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100148CEC(uint64_t a1, const void **a2, void **a3)
{
  if (*a2 && (v4 = _Block_copy(*a2), (v5 = v4) != 0))
  {
    *a3 = _Block_copy(v4);
    _Block_release(v5);
  }

  else
  {
    *a3 = 0;
  }

  return 1;
}

uint64_t sub_100148D4C(uint64_t a1, NSObject **a2, NSObject **a3)
{
  sub_1001481DC(v5, a2);
  sub_1001481DC(a3, v5);
  sub_1001491CC(v5);
  return 1;
}

uint64_t sub_100148D94(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_100148E28(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_100148E4C(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

void *sub_100148E9C(void *a1)
{
  *a1 = off_101E2C3A0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100148EE8(void *a1)
{
  *a1 = off_101E2C3A0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_100148F54(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_100149004(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1001490A8(void *a1)
{
  *a1 = off_101E2C3F0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1001490F4(void *a1)
{
  *a1 = off_101E2C3F0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1001491CC(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_1001492F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1001493A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E2C430;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1001493DC(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  return v6(v8, v5);
}

uint64_t sub_100149474(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100149530(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E2C4B0;
  a2[1] = v2;
  return result;
}

void sub_10014955C(uint64_t a1)
{
  memset(v3, 0, 24);
  RequestDumpStatePayload::RequestDumpStatePayload();
  read_rest_value();
  v2 = *(a1 + 8);
  __dst = 0u;
  v5 = 0;
  v6 = *(v3 + 8);
  v7 = 0;
  (*(*v2 + 200))(v2, &__dst);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__dst);
  }
}

void sub_100149660(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 41) < 0)
  {
    operator delete(*(v21 - 64));
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001496AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1001496F8(uint64_t **a1)
{
  v14 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  ServiceMap = Registry::getServiceMap(*(v1 + 56));
  v4 = ServiceMap;
  if (v5 < 0)
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
  *buf = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, buf);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v10);
      v12 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_11:
  v13 = (*(*v11 + 16))(v11);
  *buf = 0;
  v16 = 0;
  v17 = 0;
  sub_100143B08(v1, v13);
  v18 = buf;
  sub_1000087B4(&v18);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100149908(&event::activation::postponementStatusChanged, 0, 4, 1);
  sub_100143914(v1);
  operator delete();
}

void sub_1001498AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, void **a14)
{
  a14 = &a11;
  sub_1000087B4(&a14);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  operator delete();
}

atomic_uint **sub_100149908(uint64_t a1, int a2, int a3, char a4)
{
  sub_100149968((a1 + 24));
  v8 = sub_100149B88((a1 + 8));

  return sub_100149BCC(v8, a2, a3, a4);
}

uint64_t sub_100149968(uint64_t *a1)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = 0u;
  v13 = 0u;
  v14 = 0u;
  *v12 = 0u;
  memset(v11, 0, sizeof(v11));
  v10 = 0u;
  sub_10000D518(&v10);
  v2 = asString();
  strlen(v2);
  v3 = sub_10000C030(&v10);
  v4 = sub_10000C030(v3);
  v5 = asString();
  strlen(v5);
  v6 = sub_10000C030(v4);
  sub_10000C030(v6);
  std::ostream::operator<<();
  sub_10000D684(&v10, __p);
  sub_1000841A0(a1, __p);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[1]);
  }

  std::locale::~locale(v11);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_100149B70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100149B88(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_100149BCC(uint64_t *a1, int a2, int a3, char a4)
{
  v27 = a3;
  v28 = a2;
  v26 = a4;
  v25 = 0uLL;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(&v31, v5);
  v6 = a1[1];
  if (v6)
  {
    if (atomic_load_explicit((v6 + 8), memory_order_acquire) == 1)
    {
      sub_100149E54(a1, &v31, 0, 1);
    }

    v7 = *a1;
    v8 = a1[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1u, memory_order_relaxed);
    }
  }

  else
  {
    v8 = 0;
    v7 = *a1;
  }

  v9 = v25;
  *&v25 = v7;
  *(&v25 + 1) = v8;
  v30[0] = v9;
  sub_10004A724(v30 + 1);
  sub_10004A704(*(&v42 + 1));
  sub_10004A6B0(&v31);
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
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
  v31 = 0u;
  v46 = 0;
  v47 = 10;
  v48 = &v31 + 8;
  v49 = 0;
  v50 = &v28;
  v51 = &v27;
  v53 = 0;
  v54 = 0;
  v52 = &v26;
  v10 = sub_100149EEC(&v25);
  v24[0] = &v31;
  v24[1] = a1;
  v24[2] = sub_10014A13C(v10);
  v11 = sub_100149EEC(&v25);
  v12 = sub_10004AA88((v11 + 16));
  v13 = sub_100149EEC(&v25);
  v14 = *(sub_10014A13C(v13) + 8);
  v15 = sub_100149EEC(&v25);
  *&v22 = v14;
  *(&v22 + 1) = sub_10014A13C(v15);
  *&v23 = &v31;
  *(&v23 + 1) = *(&v22 + 1);
  sub_10014A398(&v22);
  v16 = sub_100149EEC(&v25);
  v17 = sub_10014A13C(v16);
  v18 = sub_100149EEC(&v25);
  *&v20 = v17;
  *(&v20 + 1) = sub_10014A13C(v18);
  *&v21 = &v31;
  *(&v21 + 1) = *(&v20 + 1);
  sub_10014A398(&v20);
  v30[0] = v22;
  v30[1] = v23;
  v29[0] = v20;
  v29[1] = v21;
  sub_10014A180(v12, v30, v29);
  sub_10014A80C(v24);
  sub_10014B0C4(&v31);
  return sub_10004A724(&v25 + 1);
}

void sub_100149E00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, atomic_uint *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  sub_1000FFEDC(&a33);
  sub_10004A724(&a22);
  _Unwind_Resume(a1);
}

atomic_uint **sub_100149E54(uint64_t *a1, void *a2, int a3, int a4)
{
  v4 = a1[1];
  if (!v4 || atomic_load_explicit((v4 + 8), memory_order_acquire) != 1)
  {
    sub_1017610F0();
  }

  v9 = sub_100149EEC(a1);
  v10 = sub_10014A13C(v9);
  v11 = a1[2];
  if (v11 == v10)
  {
    v12 = sub_100149EEC(a1);
    v11 = *(sub_10014A13C(v12) + 8);
  }

  v14 = v11;
  return sub_100149F30(a1, a2, a3, &v14, a4);
}

uint64_t sub_100149EEC(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

atomic_uint **sub_100149F30(uint64_t *a1, void *a2, int a3, atomic_uint ***a4, int a5)
{
  v5 = a1[1];
  if (!v5 || atomic_load_explicit((v5 + 8), memory_order_acquire) != 1)
  {
    sub_1017610C4();
  }

  v22 = *a4;
  v10 = v22;
  v11 = sub_100149EEC(a1);
  result = sub_10014A13C(v11);
  if (result != v22)
  {
    v13 = a5 - 1;
    v14 = 1;
    do
    {
      if (a3)
      {
        v15 = sub_10014A048(v10 + 2);
        sub_10014A08C(v15, a2);
        v10 = v22;
      }

      if (*(sub_10014A048(v10 + 2) + 24))
      {
        v16 = v22[1];
      }

      else
      {
        v17 = sub_100149EEC(a1);
        v18 = sub_10014A13C(v17);
        v19 = sub_10014A048(v22 + 2);
        v16 = sub_100100CE8(v18, v19 + 64, &v22);
      }

      v22 = v16;
      v20 = sub_100149EEC(a1);
      result = sub_10014A13C(v20);
      v10 = v22;
      if (v22 == result)
      {
        break;
      }
    }

    while (v13 >= v14++);
  }

  a1[2] = v10;
  return result;
}

uint64_t sub_10014A048(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator->", "shared_ptr.hpp", 786, "px != 0");
  }

  return result;
}

uint64_t *sub_10014A08C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10014A0F8(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

uint64_t sub_10014A0F8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

uint64_t sub_10014A13C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_10014A180(uint64_t a1, uint64_t *a2, void *a3)
{
  while (*a2 != *a3)
  {
    sub_10014A208(a2);
    *a2 = *(*a2 + 8);
    sub_10014A398(a2);
    v5 = a2[2];
    if (*v5 == 1)
    {
      *v5 = 0;
    }
  }
}

_BYTE *sub_10014A208(void *a1)
{
  v2 = a1[2];
  if ((*v2 & 1) == 0)
  {
    sub_10014A2A8((v2 + 272), (*a1 + 16));
    if ((*v2 & 1) == 0)
    {
      *v2 = 1;
    }
  }

  v3 = a1[2];
  if ((*v3 & 1) == 0)
  {
    sub_101761304();
  }

  return v3 + 1;
}

uint64_t sub_10014A2A8(uint64_t a1, uint64_t *a2)
{
  v2 = sub_10014A048(a2);
  v3 = (sub_10014A0F8((v2 + 32)) + 24);

  return sub_10014A300(v3);
}

uint64_t sub_10014A300(void *a1)
{
  if (!*a1)
  {
    std::runtime_error::runtime_error(&v4, "call to empty boost::function");
    v4.__vftable = &off_101E25EA8;
    sub_1001028A8(&v4);
  }

  v1 = *((*a1 & 0xFFFFFFFFFFFFFFFELL) + 8);
  v2 = a1 + 1;

  return v1(v2);
}

void sub_10014A398(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_15;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = sub_10014A5F8((*a1 + 16));
      sub_10004ABC4(&v14, v3);
      v4 = sub_10014A048((*a1 + 16));
      sub_10014A63C(v4, &v14, (a1[2] + 8));
      v5 = sub_10014A048((*a1 + 16));
      v6 = a1[2];
      if (*(v5 + 24) == 1)
      {
        ++*(v6 + 296);
      }

      else
      {
        ++*(v6 + 300);
      }

      v7 = sub_10014A048((*a1 + 16));
      if (*(v7 + 24) != 1 || (v8 = *(v7 + 16)) != 0 && atomic_load_explicit((v8 + 8), memory_order_acquire))
      {
        v9 = 1;
      }

      else
      {
        sub_10014A760(a1, &v14, *a1);
        v9 = 0;
      }

      (*(**(&v25 + 1) + 32))(*(&v25 + 1));
      sub_10004A6B0(&v14);
      v10 = *a1;
      v1 = a1[1];
      if (!v9)
      {
        break;
      }

      v11 = *(v10 + 8);
      *a1 = v11;
      if (v11 == v1)
      {
        goto LABEL_15;
      }
    }

    if (v10 == v1)
    {
LABEL_15:
      v12 = a1[3];
      if (v12 != v1)
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v16 = 0u;
        v17 = 0u;
        v14 = 0u;
        v15 = 0u;
        v13 = sub_10014A5F8((v12 + 16));
        sub_10004ABC4(&v14, v13);
        sub_10014A760(a1, &v14, a1[1]);
        (*(**(&v25 + 1) + 32))(*(&v25 + 1));
        sub_10004A6B0(&v14);
      }
    }
  }
}

void sub_10014A5BC(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10014A5F8(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

atomic_uint **sub_10014A63C(atomic_uint **result, void *a2, void *a3)
{
  v3 = (result + 4);
  if (result[4])
  {
    v6 = result;
    for (i = *sub_10014A0F8(result + 4); ; i += 6)
    {
      result = sub_10014A0F8(v3);
      if (i == result[1])
      {
        break;
      }

      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(v6 + 24) == 1)
        {
          *(v6 + 24) = 0;
          sub_10004B3DC(v6, a2);
        }

        return sub_10004B040(v8);
      }

      sub_10004AFC8(a3, v8);
      sub_10004B040(v8);
    }
  }

  return result;
}

void sub_10014A73C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_10014A760(void *a1, void *a2, uint64_t a3)
{
  a1[3] = a3;
  v3 = a1[2];
  if (a1[1] == a3)
  {
    result = *(v3 + 304);
    if (result)
    {
      result = sub_10004B3DC(result, a2);
    }

    *(v3 + 304) = 0;
  }

  else
  {
    v4 = *(a3 + 16);
    v5 = a1[2];

    return sub_10014A7C0(v5, a2, v4);
  }

  return result;
}

atomic_uint **sub_10014A7C0(uint64_t a1, void *a2, uint64_t a3)
{
  result = *(a1 + 304);
  if (result)
  {
    result = sub_10004B3DC(result, a2);
  }

  *(a1 + 304) = a3;
  if (a3)
  {
    v6 = *(a3 + 28);
    if (!v6)
    {
      sub_10176135C();
    }

    *(a3 + 28) = v6 + 1;
  }

  return result;
}

uint64_t sub_10014A80C(uint64_t a1)
{
  if (*(*a1 + 300) > *(*a1 + 296))
  {
    sub_10014A850(*(a1 + 8), *(a1 + 16));
  }

  return a1;
}

void sub_10014A850(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100149EEC(a1);
  if (sub_10014A13C(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100149EEC(a1);
    v8 = *(sub_10014A13C(v7) + 8);
    sub_100149F30(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_10014A9F0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_10014AA94(&v2, a2);
}

uint64_t sub_10014AA50(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_10014AA94(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10014AB00(&v2);
}

void sub_10014AB70(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_10014ABB0(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10014ACCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014AE54(a1, a2);
  sub_10014AEC0((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_10014AE54(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_10014AEC0(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10014AF28(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10014AF94(&v2);
}

void sub_10014B004(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_10014B044(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t sub_10014B0C4(uint64_t a1)
{
  v2 = *(a1 + 304);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 304), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_10014B19C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10014B1CC(uint64_t result, uint64_t a2)
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

void sub_10014B1E8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_10014B284(void *a1)
{
  *a1 = off_101E2C628;
  sub_10000FF50((a1 + 4));
  return a1;
}

void sub_10014B2C8(void *a1)
{
  *a1 = off_101E2C628;
  sub_10000FF50((a1 + 4));

  operator delete();
}

uint64_t sub_10014B3B8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E2C628;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  return sub_1000224C8(a2 + 32, a1 + 32);
}

void sub_10014B3FC(void *a1)
{
  sub_10000FF50(a1 + 32);

  operator delete(a1);
}

uint64_t sub_10014B438(void *a1, char *a2)
{
  v2 = a1[2];
  v3 = a1[1];
  v4 = (a1[3] + (v2 >> 1));
  if (v2)
  {
    v3 = *(*v4 + v3);
  }

  v5 = *a2;
  sub_1000224C8(v7, (a1 + 4));
  v3(v4, v5 & 1, v7);
  return sub_10000FF50(v7);
}

void sub_10014B500(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10014B51C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10014B568(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_100085FC0(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

void sub_10014B5D4(uint64_t *a1, uint64_t a2)
{
  v10 = 0u;
  memset(v9, 0, sizeof(v9));
  v4 = sub_10004A4A8(a1 + 3);
  sub_100048D3C(v9, v4);
  v5 = sub_100084698(a1);
  if (sub_100084654(v5) == a2)
  {
    v6 = a1[1];
    if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
    {
      operator new();
    }

    v7 = sub_100084698(a1);
    v8 = *(sub_100084654(v7) + 8);
    sub_100084088(a1, v9, 0, &v8, 0);
  }

  sub_10004A704(*(&v10 + 1));
  sub_10004A6B0(v9);
}

void sub_10014B774(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      sub_101761098();
    }
  }

  sub_10014B818(&v2, a2);
}

uint64_t sub_10014B7D4(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_10014B818(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10014B884(&v2);
}

void sub_10014B8F4(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_10014B934(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_10014BA50(uint64_t a1, uint64_t a2)
{
  v4 = sub_10014BBD8(a1, a2);
  sub_10014BC44((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_10014BBD8(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_10014BC44(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_10014BCAC(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_10014BD18(&v2);
}

void sub_10014BD88(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_10014BDC8(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_10014BE48(char **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v1 + 8;
    if (v1[31] < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I CSI state dump requested and state dump skipped: %s", buf, 0xCu);
  }

  if (v1[49] == 1)
  {
    sub_1002C5218((v1 + 8));
  }

  sub_10014BF3C(&v6);
  return sub_1000049E0(&v5);
}

void sub_10014BF20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10014BF3C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10014BF3C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_10014BF94(uint64_t *a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *a1;
    v3 = 136315138;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Firing event '%s'", &v3, 0xCu);
  }
}

void sub_10014C0E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  AnalyticsEvent::~AnalyticsEvent(v15);
  _Unwind_Resume(a1);
}

void sub_10014C11C(AnalyticsEvent *a1)
{
  AnalyticsEvent::~AnalyticsEvent(a1);

  operator delete();
}

void sub_10014C154(uint64_t a1, BOOL value)
{
  v4 = xpc_BOOL_create(value);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "forced_imei_population";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t CellularPlanListModelLocal::CellularPlanListModelLocal(uint64_t a1, NSObject **a2, void *a3, void *a4, void *a5)
{
  ctu::OsLogContext::OsLogContext(&v18, kCtLoggingSystemName, "cp.l.list");
  sub_1001303E4((a1 + 8), a2, &v18);
  ctu::OsLogContext::~OsLogContext(&v18);
  *a1 = off_101E2C7C8;
  *(a1 + 48) = off_101E2CA40;
  *(a1 + 56) = *a3;
  v10 = a3[1];
  *(a1 + 64) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = *a4;
  v11 = a4[1];
  *(a1 + 96) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 104) = *a5;
  v12 = a5[1];
  *(a1 + 112) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 120) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 168) = a1 + 176;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 200) = a1 + 208;
  *(a1 + 232) = 0u;
  *(a1 + 224) = a1 + 232;
  *(a1 + 256) = 0u;
  *(a1 + 248) = a1 + 256;
  *(a1 + 280) = 0u;
  *(a1 + 272) = a1 + 280;
  *(a1 + 304) = 0u;
  *(a1 + 296) = a1 + 304;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 336) = 0u;
  *(a1 + 328) = a1 + 336;
  *(a1 + 352) = 0;
  *(a1 + 400) = 0;
  *(a1 + 408) = 0;
  *(a1 + 736) = 0;
  *(a1 + 752) = 0u;
  *(a1 + 744) = a1 + 752;
  *(a1 + 768) = 0;
  (***a3)(&v17);
  v18 = v17;
  v17 = 0;
  v13 = subscriber::expectedSimCount();
  if (v18.var1.fRef)
  {
    sub_100004A34(v18.var1.fRef);
  }

  fRef = v17.var1.fRef;
  if (v17.var1.fRef)
  {
    sub_100004A34(v17.var1.fRef);
  }

  *(a1 + 772) = v13;
  LODWORD(v15) = capabilities::ct::supportsGemini(fRef);
  if (v15)
  {
    v15 = _os_feature_enabled_impl();
    if (v15)
    {
      LOBYTE(v15) = capabilities::ct::supportsDynamicBootstrapGemini(v15);
    }
  }

  *(a1 + 776) = v15;
  *(a1 + 792) = 0u;
  *(a1 + 784) = a1 + 792;
  *(a1 + 952) = 0u;
  *(a1 + 856) = 0;
  *(a1 + 808) = 0u;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 864) = 0;
  *(a1 + 872) = 0u;
  *(a1 + 896) = 0u;
  *(a1 + 912) = 0u;
  *(a1 + 928) = 0u;
  *(a1 + 944) = a1 + 952;
  *(a1 + 968) = a1 + 976;
  *(a1 + 1048) = 0u;
  *(a1 + 1008) = 0u;
  *(a1 + 1024) = 0u;
  *(a1 + 976) = 0u;
  *(a1 + 992) = 0u;
  *(a1 + 1040) = a1 + 1048;
  *(a1 + 1080) = 0;
  *(a1 + 1064) = 0u;
  *(a1 + 888) = *(a1 + 772) < 2u;
  return a1;
}

void sub_10014C4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100009970(v22 + 624, *(v14 + 752));
  sub_100169714(v22 + 288);
  if (*(v14 + 400) == 1 && *(v14 + 391) < 0)
  {
    operator delete(*(v14 + 368));
  }

  sub_100009970(v22 + 208, *(v14 + 336));
  sub_1001704B0(v21, *(v14 + 304));
  sub_10013DF64(v20, *(v14 + 280));
  sub_100170404(v19, *(v14 + 256));
  sub_10006DCAC(v18, *(v14 + 232));
  sub_1000DD0AC(v17, *(v14 + 208));
  sub_100170380(v16, *(v14 + 176));
  a13 = v22 + 24;
  sub_1000B2AF8(&a13);
  a13 = v22;
  sub_100112048(&a13);
  v23 = *(v14 + 112);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v14 + 96);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v14 + 80);
  if (v25)
  {
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(v14 + 64);
  if (v26)
  {
    sub_100004A34(v26);
  }

  MonitorModeInterfaceDelegate::~MonitorModeInterfaceDelegate(v15);
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v14 + 40));
  sub_1000C0544((v14 + 8));
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::~CellularPlanListModelLocal(CellularPlanListModelLocal *this)
{
  *this = off_101E2C7C8;
  v2 = (this + 48);
  *(this + 6) = off_101E2CA40;
  if (*(this + 1087) < 0)
  {
    operator delete(*(this + 133));
  }

  sub_100009970(this + 1040, *(this + 131));
  if (*(this + 1039) < 0)
  {
    operator delete(*(this + 127));
  }

  if (*(this + 1015) < 0)
  {
    operator delete(*(this + 124));
  }

  sub_1000DD0AC(this + 968, *(this + 122));
  sub_100009970(this + 944, *(this + 119));
  if (*(this + 943) < 0)
  {
    operator delete(*(this + 115));
  }

  if (*(this + 919) < 0)
  {
    operator delete(*(this + 112));
  }

  if (*(this + 887) < 0)
  {
    operator delete(*(this + 108));
  }

  if (*(this + 855) < 0)
  {
    operator delete(*(this + 104));
  }

  if (*(this + 831) < 0)
  {
    operator delete(*(this + 101));
  }

  sub_100009970(this + 784, *(this + 99));
  sub_100009970(this + 744, *(this + 94));
  if (*(this + 736) == 1)
  {
    v7 = (this + 712);
    sub_1000087B4(&v7);
    if (*(this + 703) < 0)
    {
      operator delete(*(this + 85));
    }

    sub_100009970(this + 656, *(this + 83));
    if (*(this + 647) < 0)
    {
      operator delete(*(this + 78));
    }

    sub_100E3A5D4(this + 408);
  }

  if (*(this + 400) == 1 && *(this + 391) < 0)
  {
    operator delete(*(this + 46));
  }

  sub_100009970(this + 328, *(this + 42));
  sub_1001704B0(this + 296, *(this + 38));
  sub_10013DF64(this + 272, *(this + 35));
  sub_100170404(this + 248, *(this + 32));
  sub_10006DCAC(this + 224, *(this + 29));
  sub_1000DD0AC(this + 200, *(this + 26));
  sub_100170380(this + 168, *(this + 22));
  v7 = (this + 144);
  sub_1000B2AF8(&v7);
  v7 = (this + 120);
  sub_100112048(&v7);
  v3 = *(this + 14);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  v6 = *(this + 8);
  if (v6)
  {
    sub_100004A34(v6);
  }

  MonitorModeInterfaceDelegate::~MonitorModeInterfaceDelegate(v2);
  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  CellularPlanListModelLocal::~CellularPlanListModelLocal(this);

  operator delete();
}

uint64_t sub_10014C84C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  sub_1000DD0AC(a1, *(a1 + 8));
  return a1;
}

void non-virtual thunk toCellularPlanListModelLocal::~CellularPlanListModelLocal(CellularPlanListModelLocal *this)
{
  CellularPlanListModelLocal::~CellularPlanListModelLocal((this - 48));
}

{
  CellularPlanListModelLocal::~CellularPlanListModelLocal((this - 48));

  operator delete();
}

void CellularPlanListModelLocal::setDelegate(void *a1, uint64_t *a2)
{
  v5 = *a2;
  v4 = a2[1];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  v6 = a1[10];
  a1[9] = v5;
  a1[10] = v4;
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  v7 = *a2;
  sub_100004AA0(&v9, a1 + 1);
  if (v9)
  {
    v8 = v9 + 48;
  }

  else
  {
    v8 = 0;
  }

  v11 = v8;
  v12 = v10;
  v9 = 0;
  v10 = 0;
  (*(*v7 + 232))(v7, &v11);
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10014C9D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void CellularPlanListModelLocal::handleCarrierBundleChange_sync(uint64_t a1, int a2, int a3)
{
  (***(a1 + 56))(&v9);
  *buf = v9;
  v9 = 0uLL;
  isValidSimSlot = subscriber::isValidSimSlot();
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (*(&v9 + 1))
  {
    sub_100004A34(*(&v9 + 1));
  }

  if (isValidSimSlot)
  {
    if ((a3 - 1) >= 3)
    {
      if (!a3)
      {
        CellularPlanListModelLocal::updateOnDeviceConversion_sync(a1, a2);
        CellularPlanListModelLocal::updateSupportCrossPlatformTransfer_sync(a1, a2);
      }
    }

    else
    {
      CellularPlanListModelLocal::updateCarrierNames_sync(a1, a2);
      CellularPlanListModelLocal::updateOnDeviceConversion_sync(a1, a2);
      CellularPlanListModelLocal::updateSupportCrossPlatformTransfer_sync(a1, a2);
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = subscriber::asString();
      *buf = 136315138;
      *&buf[4] = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I invalid slot : %s for update CarrierBundle", buf, 0xCu);
    }
  }
}

void sub_10014CB6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CellularPlanListModelLocal::updateOnDeviceConversion_sync(uint64_t result, int a2)
{
  v2 = *(result + 144);
  v3 = *(result + 152);
  if (v2 != v3)
  {
    v5 = result;
    do
    {
      if (*v2 == a2)
      {
        if ((*(v2 + 95) & 0x8000000000000000) != 0)
        {
          if (*(v2 + 80))
          {
LABEL_8:
            result = subscriber::isEsimCapable();
            if ((result & 1) == 0)
            {
              v6 = CellularPlanListModelLocal::supportsOnDevicePlanConversion_sync(v5, v2);
              result = sub_1001705A0(v5 + 248, (v2 + 72));
              *(result + 216) = v6;
            }
          }
        }

        else if (*(v2 + 95))
        {
          goto LABEL_8;
        }
      }

      v2 += 168;
    }

    while (v2 != v3);
  }

  return result;
}

void CellularPlanListModelLocal::updateSupportCrossPlatformTransfer_sync(CellularPlanListModelLocal *this, int a2)
{
  v2 = *(this + 18);
  v3 = *(this + 19);
  if (v2 != v3)
  {
    v6 = v2 + 72;
    do
    {
      if (*(v6 - 72) == a2)
      {
        if ((*(v6 + 23) & 0x8000000000000000) != 0)
        {
          if (*(v6 + 8))
          {
LABEL_8:
            v7 = CellularPlanListModelLocal::supportsCrossPlatformTransfer_sync(this, (v6 - 72));
            *buf = v6;
            *(sub_1001705A0(this + 248, v6) + 224) = v7;
            isPasscodeRequiredForCrossPlatformTransfer_sync = CellularPlanListModelLocal::isPasscodeRequiredForCrossPlatformTransfer_sync(this, (v6 - 72));
            *buf = v6;
            *(sub_1001705A0(this + 248, v6) + 228) = isPasscodeRequiredForCrossPlatformTransfer_sync;
            v9 = *(this + 5);
            if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
            {
              v10 = v6;
              if (*(v6 + 23) < 0)
              {
                v10 = *v6;
              }

              *buf = v6;
              sub_1001705A0(this + 248, v6);
              v11 = asString();
              *buf = v6;
              sub_1001705A0(this + 248, v6);
              v12 = asString();
              *buf = 136315650;
              *&buf[4] = v10;
              v15 = 2080;
              v16 = v11;
              v17 = 2080;
              v18 = v12;
              _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I %s SupportsCrossPlatformTransfer %s, passcode required %s", buf, 0x20u);
            }
          }
        }

        else if (*(v6 + 23))
        {
          goto LABEL_8;
        }
      }

      v13 = v6 + 96;
      v6 += 168;
    }

    while (v13 != v3);
  }
}

void CellularPlanListModelLocal::updateCarrierNames_sync(uint64_t a1, int a2)
{
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  if (v4 == v5)
  {
    if (a2 == 3)
    {
      v6 = 0;
      goto LABEL_79;
    }

    return;
  }

  v6 = 0;
  do
  {
    v4 += 168;
    while (((a2 == 3) & subscriber::isEsimCapable()) != 0)
    {
      v7 = v4 == v5;
      v4 += 168;
      if (v7)
      {
        goto LABEL_79;
      }
    }

    if ((*(v4 - 73) & 0x8000000000000000) != 0)
    {
      if (!*(v4 - 88))
      {
        continue;
      }
    }

    else if (!*(v4 - 73))
    {
      continue;
    }

    if ((subscriber::isSimLocked() & 1) == 0)
    {
      v76 = 0u;
      memset(__str, 0, sizeof(__str));
      sub_100A34BC8(__str);
      v8 = (v4 - 96);
      if ((subscriber::isEsimCapable() & 1) == 0)
      {
        isSimReady = subscriber::isSimReady();
        v10 = *(v4 - 168) ? isSimReady : 0;
        if (v10 == 1)
        {
          buf.__r_.__value_.__r.__words[0] = v4 - 96;
          v11 = sub_1001705A0(a1 + 248, (v4 - 96));
          v12 = *(v11 + 103);
          if (v12 < 0)
          {
            v12 = *(v11 + 88);
          }

          if (!v12)
          {
            goto LABEL_24;
          }

          buf.__r_.__value_.__r.__words[0] = v4 - 96;
          v13 = sub_1001705A0(a1 + 248, (v4 - 96));
          v14 = *(v13 + 127);
          if (v14 < 0)
          {
            v14 = *(v13 + 112);
          }

          if (!v14)
          {
LABEL_24:
            buf.__r_.__value_.__r.__words[0] = v4 - 96;
            v15 = sub_1001705A0(a1 + 248, (v4 - 96));
            std::string::operator=((v15 + 80), __str);
            buf.__r_.__value_.__r.__words[0] = v4 - 96;
            v16 = sub_1001705A0(a1 + 248, (v4 - 96));
            std::string::operator=((v16 + 104), &__str[24]);
            buf.__r_.__value_.__r.__words[0] = v4 - 96;
            v17 = sub_1001705A0(a1 + 248, (v4 - 96));
            std::string::operator=((v17 + 128), (v4 - 48));
            buf.__r_.__value_.__r.__words[0] = v4 - 96;
            v18 = sub_1001705A0(a1 + 248, (v4 - 96));
            std::string::operator=((v18 + 152), (v4 - 24));
            v19 = __str[23];
            if (__str[23] < 0)
            {
              v19 = *&__str[8];
            }

            if (v19)
            {
              goto LABEL_33;
            }

            v20 = HIBYTE(v76);
            if (v76 < 0)
            {
              v20 = v76;
            }

            if (v20)
            {
              goto LABEL_33;
            }

            v21 = *(v4 - 25);
            if (v21 < 0)
            {
              v21 = *(v4 - 40);
            }

            if (v21)
            {
LABEL_33:
              v6 = 1;
            }

            else
            {
              v41 = *(v4 - 1);
              if (v41 < 0)
              {
                v41 = *(v4 - 16);
              }

              v6 = v41 != 0;
            }
          }
        }
      }

      buf.__r_.__value_.__r.__words[0] = v4 - 96;
      v22 = sub_1001705A0(a1 + 248, (v4 - 96));
      v23 = *(v22 + 79);
      if (v23 < 0)
      {
        v23 = *(v22 + 64);
      }

      if (!v23 || *(v4 - 168) == a2)
      {
        memset(&v73, 0, sizeof(v73));
        (*(**(a1 + 56) + 160))(&v73);
        size = HIBYTE(v73.__r_.__value_.__r.__words[2]);
        if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = v73.__r_.__value_.__l.__size_;
        }

        if (size)
        {
          buf.__r_.__value_.__r.__words[0] = v4 - 96;
          v25 = sub_1001705A0(a1 + 248, (v4 - 96));
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = v73.__r_.__value_.__l.__size_;
          }

          v27 = *(v25 + 79);
          v28 = v27;
          if ((v27 & 0x80u) != 0)
          {
            v27 = *(v25 + 64);
          }

          if (v26 != v27)
          {
            goto LABEL_53;
          }

          v29 = &v73;
          if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v29 = v73.__r_.__value_.__r.__words[0];
          }

          v32 = *(v25 + 56);
          v30 = v25 + 56;
          v31 = v32;
          v33 = (v28 >= 0 ? v30 : v31);
          if (memcmp(v29, v33, v26))
          {
LABEL_53:
            v34 = *(a1 + 40);
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = v4 - 96;
              if (*(v4 - 73) < 0)
              {
                v35 = *v8;
              }

              v74 = (v4 - 96);
              v36 = sub_1001705A0(a1 + 248, (v4 - 96));
              v37 = (v36 + 56);
              if (*(v36 + 79) < 0)
              {
                v37 = *v37;
              }

              v38 = &v73;
              if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v38 = v73.__r_.__value_.__r.__words[0];
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
              *(buf.__r_.__value_.__r.__words + 4) = v35;
              WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
              *(&buf.__r_.__value_.__r.__words[1] + 6) = v37;
              HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
              v84 = v38;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Carrier name update for iccid %s from [%s] to [%s]", &buf, 0x20u);
            }

            buf.__r_.__value_.__r.__words[0] = v4 - 96;
            v39 = sub_1001705A0(a1 + 248, (v4 - 96));
            std::string::operator=((v39 + 56), &v73);
            v6 = 1;
          }
        }

        else
        {
          v40 = *(a1 + 40);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            if (*(v4 - 73) < 0)
            {
              v8 = *v8;
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
            *(buf.__r_.__value_.__r.__words + 4) = v8;
            _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "Missing carrier name from bundle for: %s", &buf, 0xCu);
          }
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }
      }

      if (SHIBYTE(v76) < 0)
      {
        operator delete(*&__str[24]);
      }

      if ((__str[23] & 0x80000000) != 0)
      {
        operator delete(*__str);
      }
    }
  }

  while (v4 != v5);
  if (a2 != 3)
  {
    goto LABEL_131;
  }

LABEL_79:
  v43 = *(a1 + 120);
  v42 = *(a1 + 128);
  if (v43 != v42)
  {
    while (1)
    {
      if (*(v43 + 12) == 3 && *(v43 + 80) == 1)
      {
        v44 = *(v43 + 56);
        v45 = *(v43 + 64);
        if (v44 != v45)
        {
          break;
        }
      }

LABEL_130:
      v43 += 88;
      if (v43 == v42)
      {
        goto LABEL_131;
      }
    }

    v72 = *(v43 + 64);
    while (2)
    {
      v82 = 0;
      memset(v81, 0, sizeof(v81));
      v79 = 0u;
      memset(v80, 0, sizeof(v80));
      v77 = 0u;
      v78 = 0u;
      v76 = 0u;
      memset(__str, 0, sizeof(__str));
      sub_100F11F00(__str, v44);
      if ((BYTE9(v79) & 1) == 0)
      {
        buf.__r_.__value_.__r.__words[0] = &__str[16];
        v46 = sub_1001705A0(a1 + 248, &__str[16]);
        std::string::operator=((v46 + 80), v80);
        buf.__r_.__value_.__r.__words[0] = &__str[16];
        v47 = sub_1001705A0(a1 + 248, &__str[16]);
        std::string::operator=((v47 + 104), &v80[1]);
        buf.__r_.__value_.__r.__words[0] = &__str[16];
        v48 = sub_1001705A0(a1 + 248, &__str[16]);
        std::string::operator=((v48 + 128), v81);
        buf.__r_.__value_.__r.__words[0] = &__str[16];
        v49 = sub_1001705A0(a1 + 248, &__str[16]);
        std::string::operator=((v49 + 152), &v81[24]);
        buf.__r_.__value_.__r.__words[0] = &__str[16];
        v50 = sub_1001705A0(a1 + 248, &__str[16]);
        if ((*(v50 + 79) & 0x8000000000000000) == 0)
        {
          if (*(v50 + 79))
          {
            goto LABEL_129;
          }

LABEL_89:
          memset(&v73, 0, sizeof(v73));
          buf.__r_.__value_.__r.__words[0] = &__str[16];
          v51 = sub_1001705A0(a1 + 248, &__str[16]);
          v52 = v51;
          if (*(v51 + 440) != 1)
          {
            goto LABEL_95;
          }

          if ((*(v51 + 319) & 0x8000000000000000) != 0)
          {
            if (!*(v51 + 304))
            {
              goto LABEL_95;
            }
          }

          else if (!*(v51 + 319))
          {
LABEL_95:
            v53 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v53 = v73.__r_.__value_.__l.__size_;
            }

            if (!v53)
            {
              (*(**(a1 + 56) + 160))(&buf);
              if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v73.__r_.__value_.__l.__data_);
              }

              v73 = buf;
            }

            buf.__r_.__value_.__r.__words[0] = &__str[16];
            v54 = sub_1001705A0(a1 + 248, &__str[16]);
            if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v55 = HIBYTE(v73.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v55 = v73.__r_.__value_.__l.__size_;
            }

            v56 = *(v54 + 79);
            v57 = v56;
            if ((v56 & 0x80u) != 0)
            {
              v56 = *(v54 + 64);
            }

            if (v55 != v56 || ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v58 = &v73) : (v58 = v73.__r_.__value_.__r.__words[0]), (v61 = *(v54 + 56), v59 = (v54 + 56), v60 = v61, v57 >= 0) ? (v62 = v59) : (v62 = v60), memcmp(v58, v62, v55)))
            {
              v63 = *(a1 + 40);
              if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
              {
                v64 = v42;
                v65 = SBYTE7(v76);
                v66 = *&__str[16];
                v74 = &__str[16];
                v67 = sub_1001705A0(a1 + 248, &__str[16]);
                if (v65 >= 0)
                {
                  v68 = &__str[16];
                }

                else
                {
                  v68 = v66;
                }

                v69 = (v67 + 56);
                if (*(v67 + 79) < 0)
                {
                  v69 = *v69;
                }

                v42 = v64;
                if ((v73.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v70 = &v73;
                }

                else
                {
                  v70 = v73.__r_.__value_.__r.__words[0];
                }

                LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
                *(buf.__r_.__value_.__r.__words + 4) = v68;
                WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
                *(&buf.__r_.__value_.__r.__words[1] + 6) = v69;
                HIWORD(buf.__r_.__value_.__r.__words[2]) = 2080;
                v84 = v70;
                _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I Preferred carrier name update for iccid %s from [%s] to [%s]", &buf, 0x20u);
              }

              buf.__r_.__value_.__r.__words[0] = &__str[16];
              v71 = sub_1001705A0(a1 + 248, &__str[16]);
              std::string::operator=((v71 + 56), &v73);
              v6 = 1;
            }

            if (*(v52 + 440) == 1)
            {
              std::string::operator=((v52 + 296), &v73);
            }

            v45 = v72;
            if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v73.__r_.__value_.__l.__data_);
            }

            goto LABEL_129;
          }

          std::string::operator=(&v73, (v51 + 296));
          goto LABEL_95;
        }

        if (!*(v50 + 64))
        {
          goto LABEL_89;
        }
      }

LABEL_129:
      sub_100E3A5D4(__str);
      v44 += 216;
      if (v44 == v45)
      {
        goto LABEL_130;
      }

      continue;
    }
  }

LABEL_131:
  if (v6)
  {
    CellularPlanListModelLocal::persistUserData_sync(a1);
  }
}

void sub_10014D764(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  sub_1000D6F38(&a22);
  _Unwind_Resume(a1);
}

void CellularPlanListModelLocal::persistUserData_sync(CellularPlanListModelLocal *this)
{
  v44.n128_u64[0] = &v44.n128_u64[1];
  v44.n128_u64[1] = 0;
  v47[0] = 0;
  v47[1] = 0;
  v45 = 0;
  v46 = v47;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = v52;
  v52[0] = 0;
  v54[0] = 0;
  v54[1] = 0;
  v52[1] = 0;
  v53 = v54;
  memset(&v55, 0, sizeof(v55));
  CellularPlanListModelLocal::getUserEnabledIccidsSet_sync(this, &__dst);
  sub_100009970(&v44, v44.n128_u64[1]);
  v2 = __dst.n128_u64[1];
  v44 = __dst;
  v45 = v32;
  if (v32)
  {
    *(__dst.n128_u64[1] + 16) = &v44.n128_u64[1];
    __dst.n128_u64[0] = &__dst.n128_u64[1];
    __dst.n128_u64[1] = 0;
    v32 = 0;
    v2 = 0;
  }

  else
  {
    v44.n128_u64[0] = &v44.n128_u64[1];
  }

  sub_100009970(&__dst, v2);
  if (CellularPlanListModelLocal::isPartialActiveSupported_sync(this) && &v46 != (this + 944))
  {
    sub_1001730B8(&v46, *(this + 118), this + 119);
  }

  std::string::operator=(&v48, this + 36);
  (***(this + 7))(&v42);
  Registry::getTelephonyCapabilities(&__dst, v42);
  v3 = (*(*__dst.n128_u64[0] + 16))(__dst.n128_u64[0]);
  if (__dst.n128_u64[1])
  {
    sub_100004A34(__dst.n128_u64[1]);
  }

  if (v43)
  {
    sub_100004A34(v43);
  }

  if (v3)
  {
    std::string::operator=((&v49 + 8), (this + 832));
  }

  v4 = *(this + 31);
  if (v4 != (this + 256))
  {
    do
    {
      __dst.n128_u64[0] = v4 + 32;
      v5 = sub_100173F08(&v51, v4 + 4);
      std::string::operator=((v5 + 56), (v4 + 56));
      if (*(v4 + 55) < 0)
      {
        sub_100005F2C(&__dst, *(v4 + 4), *(v4 + 5));
      }

      else
      {
        __dst = *(v4 + 2);
        v32 = *(v4 + 6);
      }

      v33 = 1;
      if (*(v4 + 103) < 0)
      {
        sub_100005F2C(&v34, *(v4 + 10), *(v4 + 11));
      }

      else
      {
        v34 = *(v4 + 5);
        v35 = *(v4 + 12);
      }

      if (*(v4 + 127) < 0)
      {
        sub_100005F2C(&v36, *(v4 + 13), *(v4 + 14));
      }

      else
      {
        v36 = *(v4 + 104);
        v37 = *(v4 + 15);
      }

      if (*(v4 + 151) < 0)
      {
        sub_100005F2C(&__p, *(v4 + 16), *(v4 + 17));
      }

      else
      {
        __p = *(v4 + 8);
        v39 = *(v4 + 18);
      }

      if (*(v4 + 175) < 0)
      {
        sub_100005F2C(&v40, *(v4 + 19), *(v4 + 20));
      }

      else
      {
        v40 = *(v4 + 152);
        v41 = *(v4 + 21);
      }

      v42 = (v4 + 32);
      v6 = sub_100174060(&v53, v4 + 4);
      sub_10016A270(v6 + 56, &__dst);
      if (*(v6 + 111) < 0)
      {
        operator delete(*(v6 + 88));
      }

      *(v6 + 104) = v35;
      *(v6 + 88) = v34;
      HIBYTE(v35) = 0;
      LOBYTE(v34) = 0;
      if (*(v6 + 135) < 0)
      {
        operator delete(*(v6 + 112));
      }

      *(v6 + 128) = v37;
      *(v6 + 112) = v36;
      HIBYTE(v37) = 0;
      LOBYTE(v36) = 0;
      if (*(v6 + 159) < 0)
      {
        operator delete(*(v6 + 136));
      }

      *(v6 + 152) = v39;
      *(v6 + 136) = __p;
      HIBYTE(v39) = 0;
      LOBYTE(__p) = 0;
      if (*(v6 + 183) < 0)
      {
        operator delete(*(v6 + 160));
        v7 = SHIBYTE(v39);
        *(v6 + 160) = v40;
        *(v6 + 176) = v41;
        HIBYTE(v41) = 0;
        LOBYTE(v40) = 0;
        if (v7 < 0)
        {
          operator delete(__p);
        }
      }

      else
      {
        *(v6 + 160) = v40;
        *(v6 + 176) = v41;
        HIBYTE(v41) = 0;
        LOBYTE(v40) = 0;
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36);
      }

      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34);
      }

      if (v33 == 1 && SHIBYTE(v32) < 0)
      {
        operator delete(__dst.n128_u64[0]);
      }

      v8 = *(v4 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v4 + 2);
          v10 = *v9 == v4;
          v4 = v9;
        }

        while (!v10);
      }

      v4 = v9;
    }

    while (v9 != (this + 256));
  }

  if ((*(this + 831) & 0x8000000000000000) != 0)
  {
    if (!*(this + 102))
    {
      goto LABEL_57;
    }

    goto LABEL_56;
  }

  if (*(this + 831))
  {
LABEL_56:
    std::string::operator=(&v55, (this + 808));
  }

LABEL_57:
  v11 = *(this + 13);
  sub_10016A310(v22, &v44);
  (*(*v11 + 24))(v11, v22);
  if (v30 < 0)
  {
    operator delete(v29[3]);
  }

  sub_10016A798(v29, v29[1]);
  sub_1000DD0AC(v28, v28[1]);
  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24[3]);
  }

  sub_100009970(v24, v24[1]);
  sub_100009970(v22, v23);
  (***(this + 7))(&__dst);
  ServiceMap = Registry::getServiceMap(__dst.n128_u64[0]);
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
  v42 = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, &v42);
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
      goto LABEL_71;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v13);
  v19 = 0;
  v21 = 1;
LABEL_71:
  if (__dst.n128_u64[1])
  {
    sub_100004A34(__dst.n128_u64[1]);
  }

  if (v20)
  {
    (*(*v20 + 72))(v20);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  CellularPlanListModelLocal::persistMultiSimUserPreferences_sync(this);
  if (SHIBYTE(v55.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v55.__r_.__value_.__l.__data_);
  }

  sub_10016A798(&v53, v54[0]);
  sub_1000DD0AC(&v51, v52[0]);
  if (SHIBYTE(v50) < 0)
  {
    operator delete(*(&v49 + 1));
  }

  if (SBYTE7(v49) < 0)
  {
    operator delete(v48);
  }

  sub_100009970(&v46, v47[0]);
  sub_100009970(&v44, v44.n128_u64[1]);
}

void sub_10014DE44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *__p, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61)
{
  if ((v61 & 1) == 0)
  {
    sub_100004A34(v62);
  }

  sub_1001589C8(&a61);
  _Unwind_Resume(a1);
}