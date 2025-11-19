void sub_100677700(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10067775C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_100677824(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6FC08;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  *(a2 + 20) = 0;
  *(a2 + 17) = 0;
  return result;
}

void sub_10067785C(uint64_t a1, int *a2, void **a3)
{
  v7 = *a2;
  v4 = v7;
  *__p = *(a2 + 2);
  v9 = *(a2 + 3);
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  v5 = *a3;
  *a3 = xpc_null_create();
  if (v4 && os_log_type_enabled(**(a1 + 8), OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 16);
    sub_10064CB44(&v7, v10);
    sub_1017778C4(v6, v10, v11);
  }

  xpc_release(v5);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_100677988(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1006779E8()
{
  {
    return __cxa_atexit(sub_100DBA2A0, &ctu::Singleton<ctu::power::assertion,ctu::power::assertion,ctu::PthreadMutexGuardPolicy<ctu::power::assertion>>::sInstance, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_100677A28()
{
  sub_10000501C(byte_101FBA858, "/tmp/CommCenter.dumping");

  return __cxa_atexit(&std::string::~string, byte_101FBA858, &_mh_execute_header);
}

void sub_100677A88(uint64_t a1, NSObject **a2, void *a3, __int128 *a4)
{
  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "lazuli.msg.mdl");
  sub_100677F28((a1 + 8), a2, &v11);
  ctu::OsLogContext::~OsLogContext(&v11);
  v12[0] = off_101E2B528;
  v12[1] = sub_100677FB4;
  v12[3] = v12;
  sub_100677FE0((a1 + 48));
  sub_1000A8744(v12);
  *a1 = off_101E6FC88;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 56), *a4, *(a4 + 1));
  }

  else
  {
    v8 = *a4;
    *(a1 + 72) = *(a4 + 2);
    *(a1 + 56) = v8;
  }

  *(a1 + 80) = *a3;
  v9 = a3[1];
  *(a1 + 88) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = SlotIdFromPersonalityId();
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = *(a4 + 7);
  v10 = *(a4 + 8);
  *(a1 + 232) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1006781A4();
}

void sub_100677D7C(_Unwind_Exception *a1)
{
  TMKXPCServer.shutdown()();
  v3 = v1[6];
  v1[6] = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v1 + 1);
  _Unwind_Resume(a1);
}

void *sub_100677F28(void *a1, NSObject **a2, OsLogContext *a3)
{
  *a1 = 0;
  a1[1] = 0;
  v5 = *a2;
  a1[2] = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  a1[3] = 0;
  ctu::OsLogLogger::OsLogLogger(v7, a3);
  ctu::OsLogLogger::OsLogLogger((a1 + 4), v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  return a1;
}

void sub_100677F90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

const char *sub_100677FB4(int a1)
{
  v1 = "lazuli.msg.mdl.?";
  if (a1 == 2)
  {
    v1 = "lazuli.msg.mdl.2";
  }

  if (a1 == 1)
  {
    return "lazuli.msg.mdl.1";
  }

  else
  {
    return v1;
  }
}

capabilities::ct *sub_100677FE0(capabilities::ct *a1)
{
  *a1 = 0;
  if ((capabilities::ct::supportsGemini(a1) & 1) == 0)
  {
    operator new();
  }

  if (!*a1)
  {
    operator new();
  }

  return a1;
}

void sub_100678138(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void sub_1006782D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_10177793C((v12 + 8), (v11 + 8), (v10 + 8));
  operator delete();
}

uint64_t *sub_100678308(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1006ADDF8(v2);
    operator delete();
  }

  return a1;
}

void sub_10067835C(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = SlotIdFromPersonalityId();
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  buf[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, buf);
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
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
  if (!v12)
  {
LABEL_7:
    v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
    {
      sub_1017779EC();
    }

    goto LABEL_23;
  }

LABEL_11:
  v21 = 0;
  v22 = 0;
  (*(*v12 + 32))(&v21, v12, v2);
  if (v21)
  {
    (*(*v21 + 232))(v21, v2);
    v20[2] = 0;
    v20[3] = 0;
    v15 = *(a1 + 88);
    v20[0] = *(a1 + 80);
    v20[1] = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    v19[0] = v21;
    v19[1] = v22;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100004AA0(buf, (a1 + 8));
    v16 = buf[1];
    v18[0] = buf[0];
    v18[1] = buf[1];
    if (buf[1])
    {
      atomic_fetch_add_explicit((buf[1] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
    }

    sub_1000CE5D0(v3, v20, v19, v18);
  }

  v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
  {
    sub_1017779B8();
  }

  if (v22)
  {
    sub_100004A34(v22);
  }

LABEL_23:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_100678860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067892C(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v3 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v16 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v16);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v3);
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v9);
      v11 = 0;
      if (!v10)
      {
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (!v10)
  {
LABEL_7:
    v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Failed to get SD interface while removing delegate", &v16, 2u);
    }

    goto LABEL_20;
  }

LABEL_11:
  v16 = 0;
  v17 = 0;
  v13 = (a1 + 56);
  (*(*v10 + 32))(&v16, v10, a1 + 56);
  if (v16)
  {
    (*(*v16 + 232))(v16, a1 + 56);
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a1 + 79) < 0)
      {
        v13 = *v13;
      }

      *buf = 136315138;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I IMS delegate removed: %s", buf, 0xCu);
    }
  }

  else
  {
    v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
    {
      sub_101777A20();
    }
  }

  if (v17)
  {
    sub_100004A34(v17);
  }

LABEL_20:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_100678C38(uint64_t a1)
{
  v2 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I slot: %s", &v8, 0xCu);
  }

  v3 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = "YES";
    if (*(a1 + 176))
    {
      v5 = "YES";
    }

    else
    {
      v5 = "NO";
    }

    v6 = *(a1 + 240);
    if (*(a1 + 192))
    {
      v7 = "YES";
    }

    else
    {
      v7 = "NO";
    }

    v8 = 136315650;
    if (!v6)
    {
      v4 = "NO";
    }

    v9 = v5;
    v10 = 2080;
    v11 = v7;
    v12 = 2080;
    v13 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I sip-stack: %s, ims-client: %s, hub: %s", &v8, 0x20u);
  }

  sub_100B9A980(*(a1 + 240));
}

void sub_100678DCC(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_100C16CE4(&v21, a2);
  v5 = *(a1 + 280);
  v6 = *(a1 + 288);
  if (v5 == v6)
  {
LABEL_23:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = &v21;
      if (v23 < 0)
      {
        v15 = v21;
      }

      LODWORD(__p) = 136380675;
      *(&__p + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I No group model for: %{private}s", &__p, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    if (!*v5)
    {
      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_101777A54(&v19, v20);
      }

      goto LABEL_22;
    }

    sub_1009CC9A8((*v5 + 48), &__p);
    v7 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = *(&__p + 1);
    }

    v9 = HIBYTE(v23);
    if (v23 < 0)
    {
      v9 = v22;
    }

    if (v8 != v9)
    {
      v12 = 0;
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      operator delete(__p);
      goto LABEL_21;
    }

    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v23 >= 0)
    {
      v11 = &v21;
    }

    else
    {
      v11 = v21;
    }

    v12 = memcmp(p_p, v11, v8) == 0;
    if (v7 < 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v12)
    {
      break;
    }

LABEL_22:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = &v21;
    if (v23 < 0)
    {
      v17 = v21;
    }

    LODWORD(__p) = 136380675;
    *(&__p + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Group model found in memory: %{private}s", &__p, 0xCu);
  }

  v18 = v5[1];
  *a3 = *v5;
  a3[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_28:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }
}

void sub_100679094(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006790C4(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 280);
  for (i = *(a1 + 288); v6 != i; v6 += 2)
  {
    v8 = *v6;
    if (*v6)
    {
      v9 = *(v8 + 191);
      if (v9 >= 0)
      {
        v10 = *(v8 + 191);
      }

      else
      {
        v10 = *(v8 + 176);
      }

      v11 = *(a2 + 23);
      v12 = v11;
      if ((v11 & 0x80u) != 0)
      {
        v11 = a2[1];
      }

      if (v10 == v11)
      {
        v15 = *(v8 + 168);
        v13 = v8 + 168;
        v14 = v15;
        v16 = (v9 >= 0 ? v13 : v14);
        v17 = v12 >= 0 ? a2 : *a2;
        if (!memcmp(v16, v17, v10))
        {
          v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v23 = a2;
            }

            else
            {
              v23 = *a2;
            }

            *buf = 136446210;
            v28 = v23;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Group model found in memory for conversationId: %{public}s", buf, 0xCu);
          }

          v24 = v6[1];
          *a3 = *v6;
          a3[1] = v24;
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          return;
        }
      }
    }

    else
    {
      v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
      {
        sub_101777A80(&v25, v26);
      }
    }
  }

  v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = *a2;
    }

    *buf = 136446210;
    v28 = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I No group model found in memory for conversationId: %{public}s", buf, 0xCu);
  }

  *a3 = 0;
  a3[1] = 0;
}

void sub_100679330(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v17 = 0;
  v18 = 0;
  sub_1006790C4(a1, a2, &v17);
  if (v17)
  {
    memset(buf, 0, sizeof(buf));
    v12 = 0;
    sub_10091665C(v17, __p);
    sub_1009CC9A8(__p, &v13);
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(&v15, *a2, *(a2 + 1));
    }

    else
    {
      v15 = *a2;
      v16 = *(a2 + 2);
    }

    *a3 = *buf;
    *(a3 + 16) = v12;
    v12 = 0;
    memset(buf, 0, sizeof(buf));
    *(a3 + 24) = v13;
    *(a3 + 40) = v14;
    v13 = 0uLL;
    v14 = 0;
    *(a3 + 64) = v16;
    *(a3 + 48) = v15;
    v16 = 0;
    v15 = 0uLL;
    *(a3 + 72) = 1;
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Group model does not exist, falling back to retired conversations", buf, 2u);
    }

    v7 = sub_100007A6C(a1 + 304, a2);
    if (a1 + 312 == v7)
    {
      v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        sub_101777AAC();
      }

      *a3 = 0;
      *(a3 + 72) = 0;
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      v12 = 0;
      sub_1009CC9A8((v7 + 56), &v13);
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v15, *a2, *(a2 + 1));
      }

      else
      {
        v15 = *a2;
        v16 = *(a2 + 2);
      }

      *a3 = *buf;
      *(a3 + 16) = v12;
      *(a3 + 24) = v13;
      *(a3 + 40) = v14;
      *(a3 + 48) = v15;
      *(a3 + 64) = v16;
      *(a3 + 72) = 1;
    }
  }

  if (v18)
  {
    sub_100004A34(v18);
  }
}

void sub_10067958C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  v29 = *(v27 - 40);
  if (v29)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067960C(uint64_t a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  sub_1009CC9A8(a2, &v21);
  v5 = *(a1 + 328);
  v6 = *(a1 + 336);
  if (v5 == v6)
  {
LABEL_23:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = &v21;
      if (v23 < 0)
      {
        v15 = v21;
      }

      LODWORD(__p) = 136380675;
      *(&__p + 4) = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I No 1:1 model for: [%{private}s]", &__p, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    goto LABEL_28;
  }

  while (1)
  {
    if (!*v5)
    {
      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_101777A54(&v19, v20);
      }

      goto LABEL_22;
    }

    sub_1009CC9A8((*v5 + 48), &__p);
    v7 = v25;
    if ((v25 & 0x80u) == 0)
    {
      v8 = v25;
    }

    else
    {
      v8 = *(&__p + 1);
    }

    v9 = HIBYTE(v23);
    if (v23 < 0)
    {
      v9 = v22;
    }

    if (v8 != v9)
    {
      v12 = 0;
      if ((v25 & 0x80000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_20:
      operator delete(__p);
      goto LABEL_21;
    }

    if ((v25 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v23 >= 0)
    {
      v11 = &v21;
    }

    else
    {
      v11 = v21;
    }

    v12 = memcmp(p_p, v11, v8) == 0;
    if (v7 < 0)
    {
      goto LABEL_20;
    }

LABEL_21:
    if (v12)
    {
      break;
    }

LABEL_22:
    v5 += 2;
    if (v5 == v6)
    {
      goto LABEL_23;
    }
  }

  v16 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = &v21;
    if (v23 < 0)
    {
      v17 = v21;
    }

    LODWORD(__p) = 136380675;
    *(&__p + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I 1:1 model found in memory: [%{private}s]", &__p, 0xCu);
  }

  v18 = v5[1];
  *a3 = *v5;
  a3[1] = v18;
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

LABEL_28:
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }
}

void sub_1006798D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100679904(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v20[0] = 0;
  v20[1] = 0;
  v21 = 0;
  sub_100C16CE4(v20, a2);
  *a3 = 0;
  a3[1] = 0;
  sub_100678DCC(a1, a2, a3);
  if (!*a3)
  {
    v8 = a3[1];
    if (v8)
    {
      sub_100004A34(v8);
    }

    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v20;
      if (v21 < 0)
      {
        v10 = v20[0];
      }

      buf = 136380675;
      *buf_4 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Group model will be created for: [%{private}s]", &buf, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    v11 = *(a1 + 96);
    v12 = *(a1 + 88);
    v19[0] = *(a1 + 80);
    v19[1] = v12;
    if (v12)
    {
      atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v21) < 0)
    {
      sub_100005F2C(__dst, v20[0], v20[1]);
    }

    else
    {
      *__dst = *v20;
      v18 = v21;
    }

    v13 = *(a1 + 184);
    v16[0] = *(a1 + 176);
    v16[1] = v13;
    if (v13)
    {
      atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
    }

    v14 = *(a1 + 200);
    v15[0] = *(a1 + 192);
    v15[1] = v14;
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1009CCB38(&buf, v11, v19, __dst, v16, v15, a1 + 104, a1 + 152);
    sub_1006AE350();
  }

  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v20;
    if (v21 < 0)
    {
      v7 = v20[0];
    }

    buf = 136380675;
    *buf_4 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Group model exists for: [%{private}s]", &buf, 0xCu);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[0]);
  }
}

void sub_100679CF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (a27 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100679D80(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_100679DF8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  __s[0] = 0;
  __s[1] = 0;
  v20 = 0;
  sub_100C16CE4(__p, a2);
  sub_100C161EC(__s, __p);
  if (v22 < 0)
  {
    operator delete(*__p);
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 0;
  if (!sub_100C173B4(__s))
  {
    sub_100C171EC();
  }

  sub_1009CC9A8(__s, v17);
  *a3 = 0;
  a3[1] = 0;
  sub_100C161EC(__p, v17);
  sub_10067960C(a1, __p, a3);
  if (v22 < 0)
  {
    operator delete(*__p);
  }

  if (!*a3)
  {
    v5 = a3[1];
    if (v5)
    {
      sub_100004A34(v5);
    }

    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v17;
      if (v18 < 0)
      {
        v7 = v17[0];
      }

      *__p = 136380675;
      *&__p[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I 1:1 model will be created for: [%{private}s]", __p, 0xCu);
    }

    *a3 = 0;
    a3[1] = 0;
    v8 = *(a1 + 96);
    v9 = *(a1 + 88);
    v16[0] = *(a1 + 80);
    v16[1] = v9;
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__dst, v17[0], v17[1]);
    }

    else
    {
      *__dst = *v17;
      v15 = v18;
    }

    v10 = *(a1 + 184);
    v13[0] = *(a1 + 176);
    v13[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 200);
    v12[0] = *(a1 + 192);
    v12[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }

    sub_1009CCB38(__p, v8, v16, __dst, v13, v12, a1 + 104, a1 + 152);
    sub_1006AE4B4();
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v17[0]);
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(__s[0]);
  }
}

void sub_10067A0E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  _Unwind_Resume(exception_object);
}

void sub_10067A1B4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = *(a1 + 224);
      if (v10)
      {
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        sub_100679330(a1, a2, &v39);
        if ((BYTE8(v43) & 1) == 0)
        {
          v11 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Falling back to deprecated fDestination ctor.", buf, 2u);
          }

          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(buf, *a2, *(a2 + 8));
          }

          else
          {
            *buf = *a2;
            v25[0] = *(a2 + 16);
          }

          memset(&v25[1], 0, 48);
          sub_1000D1E08(&v39, buf);
          if (SHIBYTE(v25[6]) < 0)
          {
            operator delete(v25[4]);
          }

          if (SHIBYTE(v25[3]) < 0)
          {
            operator delete(v25[1]);
          }

          if (SHIBYTE(v25[0]) < 0)
          {
            operator delete(*buf);
          }
        }

        v38 = 0;
        v37 = 0u;
        v35 = 0u;
        memset(v36, 0, sizeof(v36));
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        *buf = 0u;
        memset(v25, 0, sizeof(v25));
        v13 = *(a1 + 96);
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v17, *a3, *(a3 + 8));
        }

        else
        {
          *v17 = *a3;
          v18 = *(a3 + 16);
        }

        v19 = 0;
        v20 = 0;
        LOBYTE(v21) = 0;
        v23 = 0;
        (*(*v10 + 48))(buf, v10, v13, v17, &v39);
        if (v23 == 1 && v22 < 0)
        {
          operator delete(v21);
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }

        if (v38)
        {
          sub_1006A0A6C(a4, buf);
          *a4 = off_101EC8DD8;
          v14 = (a4 + 248);
          if (SHIBYTE(v36[1]) < 0)
          {
            sub_100005F2C(v14, *(&v36[0] + 1), *&v36[1]);
          }

          else
          {
            *v14 = *(v36 + 8);
            *(a4 + 264) = *(&v36[1] + 1);
          }

          v16 = 1;
        }

        else
        {
          v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v15, OS_LOG_TYPE_ERROR))
          {
            sub_101777B1C();
          }

          v16 = 0;
          *a4 = 0;
        }

        *(a4 + 272) = v16;
        if (v38 == 1)
        {
          if (*(&v37 + 1))
          {
            sub_100004A34(*(&v37 + 1));
          }

          sub_100C18C58(buf);
        }

        if (BYTE8(v43) == 1)
        {
          if (SBYTE7(v43) < 0)
          {
            operator delete(v42);
          }

          if (SHIBYTE(v41) < 0)
          {
            operator delete(*(&v40 + 1));
          }

          if (SBYTE7(v40) < 0)
          {
            operator delete(v39);
          }
        }

LABEL_48:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_101777B50();
  }

  *a4 = 0;
  *(a4 + 272) = 0;
  if (v9)
  {
    goto LABEL_48;
  }
}

void sub_10067A570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  sub_100C18630(v14);
  sub_10067A63C(va);
  sub_10067A680(v15 - 144);
  sub_100004A34(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_10067A5EC(uint64_t a1)
{
  if (*(a1 + 88) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_10067A63C(uint64_t a1)
{
  if (*(a1 + 288) == 1)
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100C18C58(a1);
  }

  return a1;
}

uint64_t sub_10067A680(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_10067A6E0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(a1 + 232);
  if (v6)
  {
    v9 = std::__shared_weak_count::lock(v6);
    if (v9)
    {
      v10 = *(a1 + 224);
      if (v10)
      {
        v36 = 0;
        v35 = 0u;
        memset(v34, 0, sizeof(v34));
        v11 = *(a1 + 96);
        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__dst, *a2, *(a2 + 8));
        }

        else
        {
          *__dst = *a2;
          v24 = *(a2 + 16);
        }

        v29 = 0;
        v30 = 0;
        v32 = 0;
        v33 = 0;
        v31 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v28 = 0;
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v16, *a3, *(a3 + 8));
        }

        else
        {
          *v16 = *a3;
          v17 = *(a3 + 16);
        }

        v18 = 0;
        v19 = 0;
        LOBYTE(__p) = 0;
        v22 = 0;
        (*(*v10 + 40))(v34, v10, v11, __dst, v16);
        if (v22 == 1 && v21 < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v17) < 0)
        {
          operator delete(v16[0]);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(v31);
        }

        if (v30 == 1)
        {
          v16[0] = &v29;
          sub_1000087B4(v16);
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v25);
        }

        if (SHIBYTE(v24) < 0)
        {
          operator delete(__dst[0]);
        }

        if (v36)
        {
          sub_1006A0A6C(a4, v34);
          *a4 = off_101EC8DB8;
          v13 = (a4 + 248);
          if (SHIBYTE(v34[16]) < 0)
          {
            sub_100005F2C(v13, *(&v34[15] + 1), *&v34[16]);
          }

          else
          {
            *v13 = *(&v34[15] + 8);
            *(a4 + 264) = *(&v34[16] + 1);
          }

          v15 = 1;
        }

        else
        {
          v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
          {
            sub_101777B84();
          }

          v15 = 0;
          *a4 = 0;
        }

        *(a4 + 272) = v15;
        if (v36 == 1)
        {
          if (*(&v35 + 1))
          {
            sub_100004A34(*(&v35 + 1));
          }

          sub_100C189A8(v34);
        }

LABEL_40:
        sub_100004A34(v9);
        return;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v12, OS_LOG_TYPE_ERROR))
  {
    sub_101777B50();
  }

  *a4 = 0;
  *(a4 + 272) = 0;
  if (v9)
  {
    goto LABEL_40;
  }
}

void sub_10067A9EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  sub_100C18630(v36);
  sub_10067AAC8(&a35);
  sub_100004A34(v35);
  _Unwind_Resume(a1);
}

uint64_t sub_10067AA50(uint64_t a1)
{
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 80) == 1)
  {
    v3 = (a1 + 56);
    sub_1000087B4(&v3);
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

uint64_t sub_10067AAC8(uint64_t a1)
{
  if (*(a1 + 288) == 1)
  {
    v2 = *(a1 + 280);
    if (v2)
    {
      sub_100004A34(v2);
    }

    sub_100C189A8(a1);
  }

  return a1;
}

BOOL sub_10067AB0C(uint64_t a1, uint64_t *a2)
{
  v27[0] = 0;
  v27[1] = 0;
  v28 = 0;
  sub_100C17FB8(__p, a2);
  sub_100C16CE4(v27, __p);
  if (v30 < 0)
  {
    operator delete(*__p);
  }

  v4 = SHIBYTE(v28);
  v5 = v27[0];
  v6 = v27[1];
  if (v28 >= 0)
  {
    v7 = v27;
  }

  else
  {
    v7 = v27[0];
  }

  if (v28 >= 0)
  {
    v8 = SHIBYTE(v28);
  }

  else
  {
    v8 = v27[1];
  }

  if (v8 >= 11)
  {
    v9 = v7 + v8;
    v10 = v7;
    do
    {
      v11 = memchr(v10, 99, v8 - 10);
      if (!v11)
      {
        break;
      }

      if (*v11 == 0x6E657265666E6F63 && *(v11 + 3) == 0x3D65636E65726566)
      {
        if (v11 == v9 || v11 - v7 == -1)
        {
          break;
        }

        v13 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          if (*(a2 + 23) >= 0)
          {
            v14 = a2;
          }

          else
          {
            v14 = *a2;
          }

          *__p = 136380675;
          *&__p[4] = v14;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Destination is a group (automatic detection): [%{private}s]", __p, 0xCu);
        }

        v15 = 1;
        goto LABEL_41;
      }

      v10 = (v11 + 1);
      v8 = v9 - v10;
    }

    while (v9 - v10 >= 11);
  }

  v16 = *(a1 + 280);
  v17 = *(a1 + 288);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1174405120;
  v23 = sub_10067AE80;
  v24 = &unk_101E6FCC0;
  if (v4 < 0)
  {
    sub_100005F2C(v25, v5, v6);
  }

  else
  {
    *v25 = *v27;
    v26 = v28;
  }

  if (v16 != v17)
  {
    while (((v23)(v22, v16) & 1) == 0)
    {
      v16 += 16;
      if (v16 == v17)
      {
        v16 = v17;
        break;
      }
    }
  }

  v18 = *(a1 + 288);
  v15 = v16 != v18;
  if (v16 != v18)
  {
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a2 + 23) >= 0)
      {
        v20 = a2;
      }

      else
      {
        v20 = *a2;
      }

      *__p = 136380675;
      *&__p[4] = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Destination is a group: [%{private}s]", __p, 0xCu);
    }
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

LABEL_41:
  if (SHIBYTE(v28) < 0)
  {
    operator delete(v27[0]);
  }

  return v15;
}

void sub_10067AE28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10067AE80(uint64_t a1, uint64_t a2)
{
  sub_1009CC9A8((*a2 + 48), __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (v6 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = memcmp(v7, v11, v4) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (v15 < 0)
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  return v12;
}

_BYTE *sub_10067AF34(_BYTE *result, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    return sub_100005F2C(result + 32, *(a2 + 32), *(a2 + 40));
  }

  v2 = *(a2 + 32);
  *(result + 6) = *(a2 + 48);
  *(result + 2) = v2;
  return result;
}

void sub_10067AF60(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }
}

void sub_10067AF74(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  v11[0] = a3;
  v11[1] = ims::lazuli::kIsGroupChat;
  sub_100006354(v11, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  v8 = *a3;
  if (v7)
  {
    v10 = *a3;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v10 = xpc_null_create();
    }

    sub_10067B0A0(a1, a2, &v10);
    xpc_release(v10);
  }

  else
  {
    v9 = *a3;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v9 = xpc_null_create();
    }

    sub_10067CD20(a1, a2, &v9);
    xpc_release(v9);
  }
}

void sub_10067B0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Incoming group chat", buf, 2u);
  }

  v8 = 0;
  v7 = 0;
  v9 = 0;
  v10[0] = a3;
  v10[1] = ims::lazuli::kConferenceFocus;
  sub_100006354(v10, object);
  memset(buf, 0, sizeof(buf));
  v13 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_101777E30();
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }
}

void sub_10067C780(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *__p, uint64_t a54, int a55, __int16 a56, char a57, char a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  if (a13)
  {
    std::__shared_weak_count::__release_weak(a13);
  }

  sub_1006B4EA4(&STACK[0x438]);
  sub_100687218(&a17);
  sub_1006868D0(&a33);
  if (a58 < 0)
  {
    operator delete(__p);
  }

  sub_1006868D0(&STACK[0x5A0]);
  if (a64 < 0)
  {
    operator delete(a59);
  }

  if (a68 == 1)
  {
    STACK[0x5A0] = &a65;
    sub_10003CA58(&STACK[0x5A0]);
  }

  if (a72 < 0)
  {
    operator delete(a69);
  }

  sub_1000D45B0(&STACK[0x458]);
  sub_100004A34(v76);
  if (a75 == 1 && a73)
  {
    a74 = a73;
    operator delete(a73);
  }

  if (LOBYTE(STACK[0x218]) == 1 && SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_1006A27BC(&STACK[0x6D0]);
  v78 = STACK[0x2B0];
  if (STACK[0x2B0])
  {
    STACK[0x2B8] = v78;
    operator delete(v78);
  }

  if (SLOBYTE(STACK[0x2DF]) < 0)
  {
    operator delete(STACK[0x2C8]);
  }

  sub_100686FD0(&STACK[0x2E0]);
  if (SLOBYTE(STACK[0x34F]) < 0)
  {
    operator delete(STACK[0x338]);
  }

  if (SLOBYTE(STACK[0x3D7]) < 0)
  {
    operator delete(STACK[0x3C0]);
  }

  if (v75)
  {
    sub_100004A34(v75);
  }

  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  if (SLOBYTE(STACK[0x40F]) < 0)
  {
    operator delete(STACK[0x3F8]);
  }

  _Unwind_Resume(a1);
}

void sub_10067CD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Incoming 1:1 chat", buf, 2u);
  }

  v8 = 0;
  v7 = 0;
  v9 = 0;
  *__dst = a3;
  *&__dst[8] = ims::lazuli::kRemoteUri;
  sub_100006354(__dst, object);
  memset(buf, 0, sizeof(buf));
  v13 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v13) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
  {
    sub_101777E98();
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(v7);
  }
}

void sub_10067DD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, void *a47, uint64_t a48, int a49, __int16 a50, char a51, char a52, void *a53, uint64_t a54, uint64_t a55, char a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62, char a63)
{
  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  sub_1006B4EA4(&STACK[0x2C0]);
  sub_100260030(&a15);
  sub_1006868D0(&a21);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  sub_1006868D0(&STACK[0x430]);
  if (a52 < 0)
  {
    operator delete(a47);
  }

  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_100004A34(v72);
  if (a56 == 1 && a53)
  {
    a54 = a53;
    operator delete(a53);
  }

  if (a63 == 1 && a62 < 0)
  {
    operator delete(a57);
  }

  sub_1006A27BC(&STACK[0x570]);
  if (a65)
  {
    a66 = a65;
    operator delete(a65);
  }

  if (a72 < 0)
  {
    operator delete(a68);
  }

  if (STACK[0x228])
  {
    sub_100004A34(STACK[0x228]);
  }

  if (SLOBYTE(STACK[0x247]) < 0)
  {
    operator delete(STACK[0x230]);
  }

  if (SLOBYTE(STACK[0x267]) < 0)
  {
    operator delete(STACK[0x250]);
  }

  if (SLOBYTE(STACK[0x27F]) < 0)
  {
    operator delete(STACK[0x268]);
  }

  if (SLOBYTE(STACK[0x297]) < 0)
  {
    operator delete(STACK[0x280]);
  }

  _Unwind_Resume(a1);
}

void sub_10067E184(uint64_t a1, uint64_t a2, void *a3)
{
  __p[0] = a3;
  __p[1] = ims::lazuli::kIsChatbot;
  sub_100006354(__p, object);
  v6 = xpc::dyn_cast_or_default(object, 0, v5);
  xpc_release(object[0]);
  if (v6)
  {
    object[0] = 0;
    object[1] = 0;
    v25 = 0;
    v22[0] = a3;
    v22[1] = ims::lazuli::kRemoteUri;
    sub_100006354(v22, &v23);
    memset(__p, 0, sizeof(__p));
    xpc::dyn_cast_or_default();
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v23);
    v7 = HIBYTE(v25);
    if (SHIBYTE(v25) < 0)
    {
      v7 = object[1];
    }

    if (!v7)
    {
      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
      {
        sub_101777F00();
      }

      goto LABEL_44;
    }

    sub_100C17E6C(__p, object);
    v8 = sub_100C17440(__p);
    v9 = v8;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (v9)
      {
        goto LABEL_9;
      }
    }

    else if (v8)
    {
LABEL_9:
      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = object;
        if (SHIBYTE(v25) < 0)
        {
          v11 = object[0];
        }

        LODWORD(__p[0]) = 141558275;
        *(__p + 4) = 1752392040;
        WORD2(__p[1]) = 2081;
        *(&__p[1] + 6) = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Incoming chat from tel uri which is a chatbot: %{private, mask.hash}s", __p, 0x16u);
      }

      v12 = *(a1 + 240);
      if (v12)
      {
        sub_100BA02E0(v12, object);
      }

      else
      {
        v16 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v16, OS_LOG_TYPE_ERROR))
        {
          sub_101777ECC();
        }
      }

      goto LABEL_44;
    }

    sub_100C17E6C(__p, object);
    v14 = sub_100C1767C(__p);
    v15 = v14;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (!v15)
      {
        goto LABEL_44;
      }
    }

    else if (!v14)
    {
LABEL_44:
      if (SHIBYTE(v25) < 0)
      {
        operator delete(object[0]);
      }

      return;
    }

    v17 = *(a1 + 400);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        v19 = *(a1 + 392);
        if (v19)
        {
          v20 = *(a1 + 96);
          if (SHIBYTE(v25) < 0)
          {
            sub_100005F2C(__p, object[0], object[1]);
          }

          else
          {
            *__p = *object;
            __p[2] = v25;
          }

          v31 = 0;
          v32 = 0;
          v34 = 0;
          v35 = 0;
          v33 = 0;
          v28 = 0;
          v29 = 0;
          v27 = 0;
          v30 = 0;
          (*(*v19 + 104))(v19, v20, __p);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v33);
          }

          if (v32 == 1)
          {
            v22[0] = &v31;
            sub_1000087B4(v22);
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(v27);
          }

          if (SHIBYTE(__p[2]) < 0)
          {
            operator delete(__p[0]);
          }

LABEL_43:
          sub_100004A34(v18);
          goto LABEL_44;
        }
      }
    }

    else
    {
      v18 = 0;
    }

    v21 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
    {
      sub_101777D94();
    }

    if (!v18)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }
}

void sub_10067E588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  sub_100004A34(v23);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10067E654(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  object = *a3;
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    object = xpc_null_create();
  }

  v4 = 0;
  sub_10067E76C();
  xpc_release(object);
}

void sub_10067E718(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, int a49, __int16 a50, char a51, char a52)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10067E76C()
{
  v0 = __chkstk_darwin();
  v4 = 0;
  v3 = 0;
  v5 = 0;
  v7[0] = v1;
  v7[1] = ims::lazuli::kBody;
  sub_100006354(v7, object);
  v9 = 0;
  __p = 0;
  v10 = 0;
  xpc::dyn_cast_or_default();
  if (__p)
  {
    v9 = __p;
    operator delete(__p);
  }

  xpc_release(object[0]);
  v2 = (*(**(v0 + 48) + 16))(*(v0 + 48), *(v0 + 96));
  if (os_log_type_enabled(*v2, OS_LOG_TYPE_ERROR))
  {
    sub_101778188();
  }
}

void sub_10068107C(_Unwind_Exception *a1)
{
  if (STACK[0x370])
  {
    std::__shared_weak_count::__release_weak(STACK[0x370]);
  }

  sub_100683490(&STACK[0x390]);
  if (SLOBYTE(STACK[0x3F7]) < 0)
  {
    operator delete(STACK[0x3E0]);
  }

  sub_100683490(&STACK[0x2970]);
  if (SLOBYTE(STACK[0x317]) < 0)
  {
    operator delete(STACK[0x300]);
  }

  sub_100682E68(&STACK[0x12E0]);
  v3 = STACK[0x688];
  if (STACK[0x688])
  {
    STACK[0x690] = v3;
    operator delete(v3);
  }

  sub_100683A3C(&STACK[0x24C0]);
  if (SLOBYTE(STACK[0x867]) < 0)
  {
    operator delete(STACK[0x850]);
  }

  if ((STACK[0x890] & 1) != 0 && SLOBYTE(STACK[0x887]) < 0)
  {
    operator delete(STACK[0x870]);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  if (LOBYTE(STACK[0x8B8]) == 1 && SLOBYTE(STACK[0x8B7]) < 0)
  {
    operator delete(STACK[0x8A0]);
  }

  sub_1006837A4(&STACK[0x8C8]);
  if (SLOBYTE(STACK[0x987]) < 0)
  {
    operator delete(STACK[0x970]);
  }

  if (LOBYTE(STACK[0x34D0]) == 1)
  {
    sub_1006A27BC(&STACK[0x3108]);
  }

  if (SLOBYTE(STACK[0x9A7]) < 0)
  {
    operator delete(STACK[0x990]);
  }

  if (SLOBYTE(STACK[0x9BF]) < 0)
  {
    operator delete(STACK[0x9A8]);
  }

  if (SLOBYTE(STACK[0x9D7]) < 0)
  {
    operator delete(STACK[0x9C0]);
  }

  if (SLOBYTE(STACK[0x9F7]) < 0)
  {
    operator delete(STACK[0x9E0]);
  }

  v4 = STACK[0x9F8];
  if (STACK[0x9F8])
  {
    STACK[0xA00] = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_100681DF8(uint64_t a1)
{
  __s = 0uLL;
  v2 = 0;
  sub_100C161EC(&__s, a1);
  sub_100C174CC();
}

void sub_100681F4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27)
{
  if (a27 == 1 && a26 < 0)
  {
    operator delete(__p);
  }

  if (*(v27 - 17) < 0)
  {
    operator delete(*(v27 - 40));
  }

  _Unwind_Resume(exception_object);
}

void sub_100681FD0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = *a1;
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 8))
      {
        dispatch_assert_queue_V2(*(v5 + 24));
        v26[0] = 0;
        v26[1] = 0;
        v27 = 0;
        if ((*(a1 + 24) & 1) == 0 && *(a1 + 25) != 1)
        {
          memset(buf, 0, 24);
          sub_100681DF8(a1 + 32);
        }

        v8 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = CSIBOOLAsString(*(a1 + 24));
          v10 = CSIBOOLAsString(*(a1 + 25));
          v11 = (a1 + 32);
          if (*(a1 + 55) < 0)
          {
            v11 = *v11;
          }

          *buf = 136315651;
          *&buf[4] = v9;
          *&buf[12] = 2080;
          *&buf[14] = v10;
          *&buf[22] = 2081;
          *&buf[24] = v11;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Group destination detected [from client: %s, auto-detect-status: %s]: [%{private}s]", buf, 0x20u);
        }

        v24 = 0;
        v25 = 0;
        sub_100686968(a1 + 32, buf);
        sub_100679904(v5, buf, &v24);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        if (v24)
        {
          sub_100914C50(v24, (a1 + 56));
          v50 = 0;
          v48 = 0u;
          v49 = 0u;
          v46 = 0u;
          v47 = 0u;
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
          memset(buf, 0, sizeof(buf));
          sub_10091601C(v24, buf);
          v12 = BYTE8(v40);
          if (BYTE8(v40))
          {
            v13 = *(v5 + 240);
            sub_1006A3010(v30, a2);
            sub_100BAA768(v13, buf, a1 + 80, a1 + 104, a1 + 56, v30);
            if (v30[968] == 1)
            {
              sub_1006A27BC(v30);
            }

            v15 = v24;
            v14 = v25;
            if (v25)
            {
              atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            sub_100C17FB8(&__p, a1 + 32);
            sub_100C16CE4(v22, &__p);
            *v26 = *v22;
            v27 = v23;
            HIBYTE(v23) = 0;
            LOBYTE(v22[0]) = 0;
            if (v29 < 0)
            {
              operator delete(__p);
            }
          }

          else
          {
            v17 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
            if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
            {
              sub_1017781BC();
            }

            v15 = 0;
            v14 = 0;
          }

          sub_1000D45B0(buf);
          if (v25)
          {
            sub_100004A34(v25);
          }

          if (v12)
          {
            if (v15)
            {
              sub_1009CE7A0(v15, (a1 + 152));
              v18 = *(a1 + 79);
              if (v18 < 0)
              {
                v18 = *(a1 + 64);
              }

              if (v18)
              {
                if (*(a2 + 968) == 1 && sub_100A01F04(a2))
                {
                  v19 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                  {
                    sub_10177830C((a1 + 79), (a1 + 56), v19);
                  }
                }

                else
                {
                  (*(v15->__r_.__value_.__r.__words[0] + 16))(v15, a1 + 56);
                }
              }

              else
              {
                v21 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
                if (os_log_type_enabled(*v21, OS_LOG_TYPE_ERROR))
                {
                  sub_1017781F0();
                }
              }
            }

            else
            {
              v20 = (*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
              if (os_log_type_enabled(*v20, OS_LOG_TYPE_ERROR))
              {
                sub_101778260();
              }
            }
          }
        }

        else
        {
          v16 = *(*(**(v5 + 48) + 16))(*(v5 + 48), *(v5 + 96));
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_101778294(a1, (a1 + 32), v16);
          }

          if (v25)
          {
            sub_100004A34(v25);
          }

          v14 = 0;
        }

        if (SHIBYTE(v27) < 0)
        {
          operator delete(v26[0]);
        }

        if (v14)
        {
          sub_100004A34(v14);
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100682628(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (v21)
  {
    sub_100004A34(v21);
  }

  sub_100004A34(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_100682788(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 968) == 1)
  {
    sub_1006A0C48(a1, a2);
  }

  else
  {
    sub_1006A0E28(a1, a2);
  }

  return a1;
}

void sub_1006827C4(uint64_t a1)
{
  v2 = 0uLL;
  v3 = 0;
  sub_100C161EC(__p, a1);
  sub_100C171EC();
}

void sub_100682AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a60 == 1)
  {
    sub_1006A291C(&a26);
  }

  if (*(v60 - 73) < 0)
  {
    operator delete(*(v60 - 96));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100682B50@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 960))
  {
    for (i = *(result + 936); i != *(result + 944); i += 384)
    {
      if (*(i + 376) == 2)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        result = sub_100034C50(a2, *(i + 32), *(i + 40), *(i + 40) - *(i + 32));
        v4 = 1;
        goto LABEL_7;
      }
    }
  }

  v4 = 0;
  *a2 = 0;
LABEL_7:
  *(a2 + 24) = v4;
  return result;
}

_BYTE *sub_100682BC8(_BYTE *a1, _BYTE *a2)
{
  v3 = a1[304];
  *a1 = *a2;
  if (v3 == 1)
  {
    sub_1006ADA1C((a1 + 8), (a2 + 8));
  }

  else
  {
    a1[8] = 0;
    a1[296] = 0;
    if (a2[296] == 1)
    {
      sub_1002AF704((a1 + 16), (a2 + 16));
      a1[296] = 1;
    }

    a1[304] = 1;
  }

  return a1;
}

void sub_100682CF8(_Unwind_Exception *a1)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  sub_100DC3ED0((v1 + 16));
  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100682D24(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  return a1;
}

uint64_t sub_100682D74@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (*(result + 960))
  {
    for (i = *(result + 936); i != *(result + 944); i += 384)
    {
      if (*(i + 376) == 1)
      {
        *a2 = 0;
        *(a2 + 8) = 0;
        *(a2 + 16) = 0;
        result = sub_100034C50(a2, *(i + 32), *(i + 40), *(i + 40) - *(i + 32));
        v4 = 1;
        goto LABEL_7;
      }
    }
  }

  v4 = 0;
  *a2 = 0;
LABEL_7:
  *(a2 + 24) = v4;
  return result;
}

uint64_t sub_100682DEC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return sub_1001E0D88(a2, v3, v3 + v4, v4);
}

uint64_t sub_100682E18(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      *(a1 + 48) = v2;
      operator delete(v2);
    }
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_100682E68(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
    sub_1006A2AF0(a1 + 24);
    v2 = *a1;
    if (*a1)
    {
      *(a1 + 8) = v2;
      operator delete(v2);
    }
  }

  return a1;
}

uint64_t sub_100682EB0(uint64_t a1, __int128 *a2)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(a1 + 24) = *(a2 + 3);
  v5 = a2[2];
  *(a1 + 48) = *(a2 + 6);
  *(a1 + 32) = v5;
  *(a2 + 5) = 0;
  *(a2 + 6) = 0;
  *(a2 + 4) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 9);
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 9) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  *(a2 + 12) = 0;
  sub_1006A29E8(a1 + 104, a2 + 104);
  *(a1 + 208) = 0;
  *(a1 + 280) = 0;
  if (*(a2 + 280) == 1)
  {
    sub_1006A2CE8(a1 + 208, (a2 + 13));
    *(a1 + 280) = 1;
  }

  *(a1 + 288) = 0;
  *(a1 + 312) = 0;
  if (*(a2 + 312) == 1)
  {
    *(a1 + 288) = 0;
    *(a1 + 296) = 0;
    *(a1 + 304) = 0;
    *(a1 + 288) = a2[18];
    *(a1 + 304) = *(a2 + 38);
    *(a2 + 36) = 0;
    *(a2 + 37) = 0;
    *(a2 + 38) = 0;
    *(a1 + 312) = 1;
  }

  return a1;
}

void sub_100683160(_Unwind_Exception *a1)
{
  if (*(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  v4 = *(v1 + 152);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  sub_100DC3ED0(v2);
  v5 = *(v1 + 112);
  if (v5)
  {
    *(v1 + 120) = v5;
    operator delete(v5);
  }

  v6 = *(v1 + 104);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100683200(uint64_t a1)
{
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v2 = *(a1 + 144);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  xpc_release(*(a1 + 128));
  *(a1 + 128) = 0;
  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 96);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_1006832BC@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (result[120])
  {
    for (i = result[117]; i != result[118]; i += 384)
    {
      if (*(i + 376) == 8)
      {
        v5 = *(i + 32);
        *(a2 + 12) = *(i + 44);
        *a2 = v5;
        if (*(i + 87) < 0)
        {
          result = sub_100005F2C((a2 + 32), *(i + 64), *(i + 72));
        }

        else
        {
          v6 = *(i + 64);
          *(a2 + 48) = *(i + 80);
          *(a2 + 32) = v6;
        }

        if (*(i + 111) < 0)
        {
          result = sub_100005F2C((a2 + 56), *(i + 88), *(i + 96));
        }

        else
        {
          v7 = *(i + 88);
          *(a2 + 72) = *(i + 104);
          *(a2 + 56) = v7;
        }

        v4 = 1;
        goto LABEL_7;
      }
    }
  }

  v4 = 0;
  *a2 = 0;
LABEL_7:
  *(a2 + 80) = v4;
  return result;
}

void sub_10068337C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100683398(unsigned __int16 a1)
{
  if ((a1 + 1) >= 6u)
  {
    return -1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1006833B0(unsigned __int16 a1)
{
  if (((a1 + 2) & 0xFFF0) != 0)
  {
    return -1;
  }

  else
  {
    return a1;
  }
}

void sub_100683470(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100683490(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1006834E4(unsigned __int16 a1)
{
  if (((a1 + 1) & 0xFFF8) != 0)
  {
    return -1;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_1006834F8(uint64_t a1, __n128 *a2)
{
  if (*(a1 + 96) == 1)
  {
    sub_100015184(a1, a2);
    sub_1006A2E30(a1 + 24, &a2[1].n128_i64[1]);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = *a2;
    *(a1 + 16) = a2[1].n128_u64[0];
    a2->n128_u64[0] = 0;
    a2->n128_u64[1] = 0;
    a2[1].n128_u64[0] = 0;
    sub_1006A2A54(a1 + 24, &a2[1].n128_i64[1]);
    *(a1 + 96) = 1;
  }

  return a1;
}

uint64_t sub_100683580(uint64_t a1)
{
  sub_1006A2AF0(a1 + 24);
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1006835BC(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      *(a1 + 32) = v2;
      operator delete(v2);
    }
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_10068360C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = *(a2 + 24);
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

  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  sub_100034C50(a1 + 128, *(a2 + 128), *(a2 + 136), *(a2 + 136) - *(a2 + 128));
  v9 = *(a2 + 160);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_10068372C(_Unwind_Exception *exception_object)
{
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

  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006837A4(uint64_t a1)
{
  v2 = *(a1 + 160);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    *(a1 + 136) = v3;
    operator delete(v3);
  }

  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_10068399C(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006839E0(uint64_t a1)
{
  if (*(a1 + 1184) == 1)
  {
    sub_1006A27BC(a1 + 216);
  }

  sub_1006837A4(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_100683A3C(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }
  }

  return a1;
}

uint64_t sub_100683A8C@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 960) != 1 || (v3 = *(result + 936), v4 = *(result + 944), v3 == v4))
  {
LABEL_6:
    v7 = 0;
    *a2 = 0;
  }

  else
  {
    v5 = v3 + 328;
    while (*(v5 + 48) != 5)
    {
      v6 = v5 + 56;
      v5 += 384;
      if (v6 == v4)
      {
        goto LABEL_6;
      }
    }

    sub_1006A4688(a2, (v5 - 296));
    sub_1006A47A0(a2 + 144, v5 - 152);
    result = sub_10006F264((a2 + 296), v5);
    v7 = 1;
  }

  a2[328] = v7;
  return result;
}

void sub_100683B20(_Unwind_Exception *a1)
{
  sub_1006A1AB4(v1 + 144);
  sub_1006A1B30(v1);
  _Unwind_Resume(a1);
}

void sub_100683CD4(_Unwind_Exception *a1)
{
  v3 = *(v1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  v4 = *(v1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100683D3C(uint64_t a1)
{
  v2 = *(a1 + 1192);
  if (v2)
  {
    *(a1 + 1200) = v2;
    operator delete(v2);
  }

  if (*(a1 + 1184) == 1)
  {
    sub_1006A27BC(a1 + 216);
  }

  sub_1006837A4(a1 + 48);
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

void sub_100683DA8(uint64_t a1, uint64_t *a2, void *a3)
{
  *&v44 = a3;
  *(&v44 + 1) = ims::lazuli::kIsSuccess;
  sub_100006354(&v44, &object);
  v7 = xpc::dyn_cast_or_default(&object, 0, v6);
  xpc_release(object);
  v44 = 0uLL;
  v45 = 0;
  __p = a3;
  v37 = ims::lazuli::kTransactionId;
  sub_100006354(&__p, v39);
  object = 0;
  v42 = 0;
  v43 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v43) < 0)
  {
    operator delete(object);
  }

  xpc_release(v39[0]);
  object = a3;
  v42 = ims::lazuli::kErrorCode;
  sub_100006354(&object, &__p);
  v9 = xpc::dyn_cast_or_default(&__p, 0, v8);
  xpc_release(__p);
  object = 0;
  v42 = 0;
  v43 = 0;
  v39[0] = a3;
  v39[1] = ims::lazuli::kReason;
  sub_100006354(v39, &v40);
  __p = 0;
  v37 = 0;
  v38 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__p);
  }

  xpc_release(v40);
  v10 = *(a1 + 280);
  v11 = *(a1 + 288);
  if (v10 != v11)
  {
    while (1)
    {
      v12 = *v10;
      v13 = v10[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = sub_1009CE9A4(v12, a2);
      if (v13)
      {
        sub_100004A34(v13);
      }

      if (v14)
      {
        break;
      }

      v10 += 2;
      if (v10 == v11)
      {
        v10 = v11;
        break;
      }
    }

    v11 = *(a1 + 288);
  }

  if (v10 == v11)
  {
    goto LABEL_43;
  }

  if (v9 == 404)
  {
LABEL_16:
    v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Message send failure (for group) with 404", &__p, 2u);
    }

    v16 = 8;
    goto LABEL_44;
  }

  if (v43 >= 0)
  {
    p_object = &object;
  }

  else
  {
    p_object = object;
  }

  if (v43 >= 0)
  {
    v18 = SHIBYTE(v43);
  }

  else
  {
    v18 = v42;
  }

  if (v18 >= 3)
  {
    v19 = &p_object[v18];
    v20 = v18;
    v21 = p_object;
    do
    {
      v22 = memchr(v21, 52, v20 - 2);
      if (!v22)
      {
        break;
      }

      if (*v22 == 12340 && v22[2] == 52)
      {
        if (v22 != v19 && v22 - p_object != -1)
        {
          goto LABEL_16;
        }

        break;
      }

      v21 = v22 + 1;
      v20 = v19 - v21;
    }

    while (v19 - v21 >= 3);
    if (v9 == 403)
    {
      goto LABEL_39;
    }

    v30 = p_object;
    while (1)
    {
      v31 = memchr(v30, 52, v18 - 2);
      if (!v31)
      {
        goto LABEL_43;
      }

      if (*v31 == 12340 && v31[2] == 51)
      {
        v16 = 3;
        if (v31 != v19 && v31 - p_object != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_44;
      }

      v30 = v31 + 1;
      v18 = v19 - v30;
      v16 = 3;
      if (v19 - v30 < 3)
      {
        goto LABEL_44;
      }
    }
  }

  if (v9 != 403)
  {
LABEL_43:
    v16 = 3;
    goto LABEL_44;
  }

LABEL_39:
  v24 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Message send failure (for group) with 403", &__p, 2u);
  }

  v16 = 9;
LABEL_44:
  v25 = HIBYTE(v45);
  if (v45 < 0)
  {
    v25 = *(&v44 + 1);
  }

  if (v25)
  {
    v26 = *(a1 + 432);
    if (v26)
    {
      if (SHIBYTE(v45) < 0)
      {
        sub_100005F2C(__dst, v44, *(&v44 + 1));
      }

      else
      {
        *__dst = v44;
        v35 = v45;
      }

      v28 = v7 ? 0 : 5;
      v33[6] = v28;
      (*(*v26 + 24))(v26, __dst, v33);
      sub_1006A6204(v33);
      if (SHIBYTE(v35) < 0)
      {
        operator delete(__dst[0]);
      }
    }

    v29 = *(a1 + 240);
    if (v7)
    {
      sub_100BA1E58(v29, &v44);
    }

    else
    {
      LODWORD(__p) = v16;
      BYTE4(__p) = 1;
      sub_100BA24AC(v29, &v44, &__p);
    }
  }

  else
  {
    v27 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Dropping incoming message send notification: No transaction ID", &__p, 2u);
    }
  }

  if (SHIBYTE(v43) < 0)
  {
    operator delete(object);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44);
  }
}

void sub_1006842A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, xpc_object_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26, uint64_t a27, xpc_object_t object, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  if (*(v34 - 81) < 0)
  {
    operator delete(*(v34 - 104));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006843A0(uint64_t a1, uint64_t *a2, void *a3)
{
  v7 = *(a1 + 328);
  v6 = *(a1 + 336);
  if (v7 == v6)
  {
LABEL_9:
    v8 = v6;
  }

  else
  {
    v8 = *(a1 + 328);
    while (1)
    {
      v9 = *v8;
      v10 = v8[1];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = sub_1009CE9A4(v9, a2);
      if (v10)
      {
        sub_100004A34(v10);
      }

      if (v11)
      {
        break;
      }

      v8 += 2;
      if (v8 == v6)
      {
        goto LABEL_9;
      }
    }

    if (v8 != v6)
    {
      for (i = v8 + 2; i != v6; i += 2)
      {
        v26 = *i;
        v27 = i[1];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v28 = sub_1009CE9A4(v26, a2);
        if (v27)
        {
          sub_100004A34(v27);
        }

        if (!v28)
        {
          v29 = *i;
          *i = 0;
          i[1] = 0;
          v30 = v8[1];
          *v8 = v29;
          if (v30)
          {
            sub_100004A34(v30);
          }

          v8 += 2;
        }
      }
    }
  }

  sub_1006A6284(a1 + 328, v8, *(a1 + 336));
  if (v6 - v7 == *(a1 + 336) - *(a1 + 328))
  {
    v13 = *(a1 + 280);
    v12 = *(a1 + 288);
    object[0] = a1;
    object[1] = a2;
    if (v13 == v12)
    {
LABEL_19:
      v17 = v12;
    }

    else
    {
      v14 = v13;
      while (1)
      {
        v15 = *(v14 + 1);
        *buf = *v14;
        *&buf[8] = v15;
        if (v15)
        {
          atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v16 = sub_1006A6308(object, buf);
        if (v15)
        {
          sub_100004A34(v15);
        }

        if (v16)
        {
          break;
        }

        v14 += 16;
        if (v14 == v12)
        {
          goto LABEL_19;
        }
      }

      v17 = v12;
      if (v14 != v12)
      {
        v46 = v14 + 16;
        if (v14 + 16 == v12)
        {
          v17 = v14;
        }

        else
        {
          v17 = v14;
          do
          {
            *buf = *v46;
            v47 = *(v46 + 1);
            *&buf[8] = v47;
            if (v47)
            {
              atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v48 = sub_1006A6308(object, buf);
            if (v47)
            {
              sub_100004A34(v47);
            }

            if (!v48)
            {
              v49 = *v46;
              *v46 = 0;
              *(v46 + 1) = 0;
              v50 = *(v17 + 8);
              *v17 = v49;
              if (v50)
              {
                sub_100004A34(v50);
              }

              v17 += 16;
            }

            v46 += 16;
          }

          while (v46 != v12);
        }
      }
    }

    sub_1006A6284(a1 + 280, v17, *(a1 + 288));
    v18 = *(a1 + 288) - *(a1 + 280);
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v12 - v13 == v18)
    {
      if (!v20)
      {
        goto LABEL_41;
      }

      *buf = 0;
      v21 = "#I No model erased";
      v22 = v19;
      v23 = 2;
      goto LABEL_40;
    }

    if (!v20)
    {
      goto LABEL_41;
    }

    v31 = (*(a1 + 288) - *(a1 + 280)) >> 4;
    *buf = 134217984;
    *&buf[4] = v31;
    v21 = "#I Erased group model - current size: %zu";
  }

  else
  {
    v19 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    v24 = (*(a1 + 336) - *(a1 + 328)) >> 4;
    *buf = 134217984;
    *&buf[4] = v24;
    v21 = "#I Erased 1:1 model - current size: %zu";
  }

  v22 = v19;
  v23 = 12;
LABEL_40:
  _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, v21, buf, v23);
LABEL_41:
  *buf = a3;
  *&buf[8] = ims::lazuli::kErrorCode;
  sub_100006354(buf, object);
  v33 = xpc::dyn_cast_or_default(object, 0, v32);
  xpc_release(object[0]);
  v81 = 0;
  v82 = 0;
  v83 = 0;
  object[0] = a3;
  object[1] = ims::lazuli::kReason;
  sub_100006354(object, __p);
  memset(buf, 0, sizeof(buf));
  v85 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v85) < 0)
  {
    operator delete(*buf);
  }

  xpc_release(__p[0]);
  if (v33 == 404)
  {
LABEL_44:
    v34 = *(a1 + 400);
    if (v34)
    {
      v35 = std::__shared_weak_count::lock(v34);
      if (v35)
      {
        v36 = *(a1 + 392);
        if (v36)
        {
          memset(buf, 0, sizeof(buf));
          v85 = 0;
          __p[0] = a3;
          __p[1] = ims::lazuli::kRemoteUri;
          sub_100006354(__p, v74);
          object[0] = 0;
          object[1] = 0;
          *&v72 = 0;
          xpc::dyn_cast_or_default();
          if (SBYTE7(v72) < 0)
          {
            operator delete(object[0]);
          }

          xpc_release(v74[0]);
          if (v85 >= 0)
          {
            v37 = HIBYTE(v85);
          }

          else
          {
            v37 = *&buf[8];
          }

          if (v37)
          {
            v38 = *(a1 + 96);
            sub_100C17E6C(__p, buf);
            sub_100C16CE4(object, __p);
            (*(*v36 + 136))(v36, v38, object);
            if (SBYTE7(v72) < 0)
            {
              operator delete(object[0]);
            }

            if (SHIBYTE(v80) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v51 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
            if (os_log_type_enabled(*v51, OS_LOG_TYPE_ERROR))
            {
              sub_101778394();
            }
          }

          if (SHIBYTE(v85) < 0)
          {
            operator delete(*buf);
            if (v37)
            {
              goto LABEL_96;
            }
          }

          else if (v37)
          {
LABEL_96:
            sub_100004A34(v35);
            goto LABEL_97;
          }

          sub_100004A34(v35);
          goto LABEL_161;
        }
      }
    }

    else
    {
      v35 = 0;
    }

    v45 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v45, OS_LOG_TYPE_ERROR))
    {
      sub_101778404();
    }

    if (v35)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v39 = SHIBYTE(v83);
    if (v83 >= 0)
    {
      v40 = &v81;
    }

    else
    {
      v40 = v81;
    }

    if (v83 < 0)
    {
      v39 = v82;
    }

    if (v39 >= 3)
    {
      v41 = &v40[v39];
      v42 = v40;
      do
      {
        v43 = memchr(v42, 52, v39 - 2);
        if (!v43)
        {
          break;
        }

        if (*v43 == 12340 && v43[2] == 52)
        {
          if (v43 != v41 && v43 - v40 != -1)
          {
            goto LABEL_44;
          }

          break;
        }

        v42 = v43 + 1;
        v39 = v41 - v42;
      }

      while (v41 - v42 >= 3);
    }
  }

LABEL_97:
  *buf = a3;
  *&buf[8] = ims::lazuli::kUserEvictedFromGroup;
  sub_100006354(buf, object);
  v53 = xpc::dyn_cast_or_default(object, 0, v52);
  xpc_release(object[0]);
  if (v53)
  {
    __p[0] = 0;
    __p[1] = 0;
    v80 = 0;
    v76 = a3;
    v77 = ims::lazuli::kConferenceFocus;
    sub_100006354(&v76, &v78);
    v74[0] = 0;
    v74[1] = 0;
    v75 = 0;
    xpc::dyn_cast_or_default();
    sub_100C17FB8(buf, object);
    sub_100C16CE4(__p, buf);
    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    if (SBYTE7(v72) < 0)
    {
      operator delete(object[0]);
    }

    if (SHIBYTE(v75) < 0)
    {
      operator delete(v74[0]);
    }

    xpc_release(v78);
    v54 = HIBYTE(v80);
    if (v80 < 0)
    {
      v54 = __p[1];
    }

    if (!v54)
    {
      v58 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
      {
        sub_101778438();
      }

      goto LABEL_157;
    }

    v73 = 0;
    *object = 0u;
    v72 = 0u;
    v74[0] = 0;
    v74[1] = 0;
    v75 = 0;
    v76 = a3;
    v77 = ims::lazuli::kReferredBy;
    sub_100006354(&v76, &v78);
    memset(buf, 0, sizeof(buf));
    v85 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v78);
    v55 = HIBYTE(v75);
    v56 = HIBYTE(v75);
    if (v75 < 0)
    {
      v55 = v74[1];
    }

    if (v55)
    {
      sub_100685200(a1, v74, buf);
      if (v73 == 1)
      {
        if (SBYTE7(v72) < 0)
        {
          operator delete(object[0]);
        }

        *object = *buf;
        *&v72 = v85;
        DWORD2(v72) = v86;
        BYTE12(v72) = BYTE4(v86);
      }

      else
      {
        *object = *buf;
        *&v72 = v85;
        v85 = 0;
        memset(buf, 0, sizeof(buf));
        DWORD2(v72) = v86;
        BYTE12(v72) = BYTE4(v86);
        LOBYTE(v73) = 1;
      }

      v56 = HIBYTE(v75);
    }

    if (v56 < 0)
    {
      operator delete(v74[0]);
    }

    v74[0] = 0;
    v74[1] = 0;
    v75 = 0;
    v76 = a3;
    v77 = ims::lazuli::kConversationId;
    sub_100006354(&v76, &v78);
    memset(buf, 0, sizeof(buf));
    v85 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v78);
    v59 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Publishing group eviction", buf, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v61 = ServiceMap;
    v62 = "17TMRouterInterface";
    if (("17TMRouterInterface" & 0x8000000000000000) != 0)
    {
      v63 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
      v64 = 5381;
      do
      {
        v62 = v64;
        v65 = *v63++;
        v64 = (33 * v64) ^ v65;
      }

      while (v65);
    }

    std::mutex::lock(ServiceMap);
    *buf = v62;
    v66 = sub_100009510(&v61[1].__m_.__sig, buf);
    if (v66)
    {
      v68 = v66[3];
      v67 = v66[4];
      if (v67)
      {
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v61);
        atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v67);
        v69 = 0;
        if (!v68)
        {
          goto LABEL_150;
        }

        goto LABEL_137;
      }
    }

    else
    {
      v68 = 0;
    }

    std::mutex::unlock(v61);
    v67 = 0;
    v69 = 1;
    if (!v68)
    {
LABEL_150:
      if ((v69 & 1) == 0)
      {
        sub_100004A34(v67);
      }

      if (SHIBYTE(v75) < 0)
      {
        operator delete(v74[0]);
      }

      if (v73 == 1 && SBYTE7(v72) < 0)
      {
        operator delete(object[0]);
      }

LABEL_157:
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_161;
    }

LABEL_137:
    v70 = *(a1 + 96);
    if (SHIBYTE(v80) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
      if (SHIBYTE(v80) < 0)
      {
        sub_100005F2C(&v86, __p[0], __p[1]);
        goto LABEL_141;
      }
    }

    else
    {
      *buf = *__p;
      v85 = v80;
    }

    v86 = *__p;
    v87 = v80;
LABEL_141:
    if (SHIBYTE(v75) < 0)
    {
      sub_100005F2C(&v88, v74[0], v74[1]);
    }

    else
    {
      v88 = *v74;
      v89 = v75;
    }

    (*(*v68 + 504))(v68, v70, buf, object);
    if (SHIBYTE(v89) < 0)
    {
      operator delete(v88);
    }

    if (SHIBYTE(v87) < 0)
    {
      operator delete(v86);
    }

    if (SHIBYTE(v85) < 0)
    {
      operator delete(*buf);
    }

    goto LABEL_150;
  }

  v57 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Session terminated (no actions)", buf, 2u);
  }

LABEL_161:
  if (SHIBYTE(v83) < 0)
  {
    operator delete(v81);
  }
}

void sub_100684F54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, xpc_object_t object, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, xpc_object_t a26, xpc_object_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  if ((v46 & 1) == 0)
  {
    sub_100004A34(v45);
  }

  if (a23 < 0)
  {
    operator delete(object);
  }

  if (a16 == 1 && a14 < 0)
  {
    operator delete(a9);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  _Unwind_Resume(exception_object);
}

void sub_100685200(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(a3, *a2, *(a2 + 8));
  }

  else
  {
    *a3 = *a2;
    *(a3 + 16) = *(a2 + 16);
  }

  *(a3 + 24) = -1;
  sub_100C17E6C(v6, a1 + 104);
  sub_100C1704C(__p, v6);
  *(a3 + 28) = sub_10083AF94(__p, a2);
  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  if (v7 < 0)
  {
    operator delete(v6[0]);
  }
}

void sub_1006852B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (*(v20 + 23) < 0)
  {
    operator delete(*v20);
  }

  _Unwind_Resume(exception_object);
}

void sub_1006852FC(uint64_t a1, uint64_t a2, void **a3)
{
  v5 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Incoming session event", buf, 2u);
  }

  *buf = a3;
  __p = ims::lazuli::kIsGroupChat;
  sub_100006354(buf, &v26);
  v7 = xpc::dyn_cast_or_default(&v26, 0, v6);
  xpc_release(v26);
  if ((v7 & 1) == 0)
  {
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v23 = a3;
    v24 = ims::lazuli::kEventName;
    sub_100006354(&v23, object);
    *buf = 0;
    __p = 0;
    v18 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(object[0]);
    v8 = strlen(ims::lazuli::kEventMlsInviteResult);
    v9 = v8;
    v10 = HIBYTE(v28);
    if ((SHIBYTE(v28) & 0x8000000000000000) != 0)
    {
      if (v8 != v27)
      {
        goto LABEL_14;
      }

      if (v8 == -1)
      {
        sub_10013C334();
      }

      v11 = v26;
    }

    else
    {
      if (v8 != SHIBYTE(v28))
      {
        return;
      }

      v11 = &v26;
    }

    if (memcmp(v11, ims::lazuli::kEventMlsInviteResult, v9))
    {
      if ((v10 & 0x80) == 0)
      {
        return;
      }

      goto LABEL_14;
    }

    v23 = 0;
    v24 = 0;
    v25 = 0;
    object[0] = a3;
    object[1] = ims::lazuli::kTransactionId;
    sub_100006354(object, &v22);
    *buf = 0;
    __p = 0;
    v18 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v18) < 0)
    {
      operator delete(*buf);
    }

    xpc_release(v22);
    v12 = HIBYTE(v25);
    if (v25 < 0)
    {
      v12 = v24;
    }

    if (v12)
    {
      v13 = *a3;
      v15 = v13;
      if (v13)
      {
        xpc_retain(v13);
      }

      else
      {
        v15 = xpc_null_create();
      }

      sub_100685DF8(&v15, buf);
      sub_100685698(a1, &v23, buf);
      object[0] = &v20;
      sub_1000087B4(object);
      if (v19 < 0)
      {
        operator delete(__p);
      }

      xpc_release(v15);
      v15 = 0;
    }

    else
    {
      v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        sub_10177846C();
      }
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    if (v28 < 0)
    {
LABEL_14:
      operator delete(v26);
    }
  }
}

void sub_1006855C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t a21, uint64_t a22, xpc_object_t a23)
{
  if (*(v23 - 57) < 0)
  {
    operator delete(*(v23 - 80));
  }

  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100685698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 432);
  if (!v3)
  {
    return 1;
  }

  if (*a3 == 1)
  {
    *buf = 0u;
    v27 = 0u;
    v6 = *(a3 + 31);
    if (v6 >= 0)
    {
      v7 = *(a3 + 31);
    }

    else
    {
      v7 = *(a3 + 16);
    }

    if (v7)
    {
      if (v6 >= 0)
      {
        v8 = a3 + 8;
      }

      else
      {
        v8 = *(a3 + 8);
      }

      v22[1].__locale_ = 0;
      *&v23 = 0;
      v22[0].__locale_ = 0;
      sub_1001E0D88(v22, v8, v8 + v7, v7);
      *buf = *&v22[0].__locale_;
      *&v27 = v23;
      v3 = *(a1 + 432);
      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    DWORD2(v27) = v9;
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v21 = *(a2 + 16);
    }

    sub_1006AD704(v19, buf);
    (*(*v3 + 24))(v3, __p, v19);
    sub_1006A6204(v19);
    if (SHIBYTE(v21) < 0)
    {
      operator delete(__p[0]);
    }

    sub_1006A6204(buf);
    return 1;
  }

  if (*(a3 + 4) != 409)
  {
    v24 = 0u;
    v25 = 0u;
    *&v22[0].__locale_ = 0u;
    v23 = 0u;
    sub_1001C7FB0(v22, "399\\s+\\S+\\s+451 Non-MLS error", 0);
  }

  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v18 = *(a2 + 16);
  }

  v16 = 3;
  v11 = (*(*v3 + 24))(v3, __dst, v15);
  sub_1006A6204(v15);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  result = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (!v11)
  {
    if (result)
    {
      if (*(a2 + 23) >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I 409 network response was not expected, and we don't have context for this operation (operationId: %s)", buf, 0xCu);
    }

    return 1;
  }

  if (result)
  {
    if (*(a2 + 23) >= 0)
    {
      v13 = a2;
    }

    else
    {
      v13 = *a2;
    }

    *buf = 136315138;
    *&buf[4] = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Need to update group version and try again (operationId: %s)", buf, 0xCu);
    return 0;
  }

  return result;
}

void sub_100685D28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  sub_1006A6204(&a9);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_100685DF8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v35 = a1;
  v36 = ims::lazuli::kSipWarningsList;
  sub_100006354(&v35, object);
  v4 = xpc_null_create();
  v5 = object[0];
  if (object[0] && xpc_get_type(object[0]) == &_xpc_type_array)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
  }

  if (xpc_get_type(v5) != &_xpc_type_array)
  {
    if (v4)
    {
      xpc_retain(v4);
      v6 = v4;
    }

    else
    {
      v6 = xpc_null_create();
    }

    xpc_release(v5);
    v5 = v6;
  }

  xpc_release(v4);
  xpc_release(object[0]);
  object[0] = 0;
  object[1] = 0;
  v34 = 0;
  v35 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v35 = xpc_null_create();
  }

  sub_100008EA4(&v31, &v35, 0);
  xpc_release(v35);
  v35 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    v35 = xpc_null_create();
  }

  if (xpc_get_type(v5) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v5);
  }

  else
  {
    count = 0;
  }

  v22 = a2;
  sub_100008EA4(v30, &v35, count);
  xpc_release(v35);
  for (i = v32; i != v30[1] || v31 != v30[0]; i = ++v32)
  {
    v29[0] = &v31;
    v29[1] = i;
    sub_100008EF0(v29, &v26);
    v23 = 0;
    v24 = 0;
    v25 = 0;
    xpc::dyn_cast_or_default();
    v9 = object[1];
    if (object[1] >= v34)
    {
      v11 = 0xAAAAAAAAAAAAAAABLL * ((object[1] - object[0]) >> 3);
      v12 = v11 + 1;
      if (v11 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_1000CE3D4();
      }

      if (0x5555555555555556 * ((v34 - object[0]) >> 3) > v12)
      {
        v12 = 0x5555555555555556 * ((v34 - object[0]) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v34 - object[0]) >> 3) >= 0x555555555555555)
      {
        v13 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v13 = v12;
      }

      v39 = object;
      if (v13)
      {
        sub_100005348(object, v13);
      }

      v14 = 8 * ((object[1] - object[0]) >> 3);
      v15 = *__p;
      *(v14 + 16) = v28;
      *v14 = v15;
      __p[1] = 0;
      v28 = 0;
      __p[0] = 0;
      v16 = (24 * v11 + 24);
      v17 = (24 * v11 - (object[1] - object[0]));
      memcpy((v14 - (object[1] - object[0])), object[0], object[1] - object[0]);
      v18 = object[0];
      v19 = v34;
      object[0] = v17;
      object[1] = v16;
      v34 = 0;
      v37 = v18;
      v38 = v19;
      v35 = v18;
      v36 = v18;
      sub_1000054E0(&v35);
      object[1] = v16;
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v10 = *__p;
      *(object[1] + 2) = v28;
      *v9 = v10;
      __p[1] = 0;
      v28 = 0;
      __p[0] = 0;
      object[1] = v9 + 24;
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v23);
    }

    xpc_release(v26);
  }

  xpc_release(v30[0]);
  xpc_release(v31);
  __p[0] = a1;
  __p[1] = ims::lazuli::kIsSuccess;
  sub_100006354(__p, v30);
  *v22 = xpc::dyn_cast_or_default(v30, 0, v20);
  v23 = a1;
  v24 = ims::lazuli::kErrorCode;
  sub_100006354(&v23, v29);
  *(v22 + 4) = xpc::dyn_cast_or_default(v29, 0, v21);
  v31 = a1;
  v32 = ims::lazuli::kMlsOpaqueToken;
  sub_100006354(&v31, &v26);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  xpc::dyn_cast_or_default();
  *(v22 + 32) = *object;
  *(v22 + 48) = v34;
  object[1] = 0;
  v34 = 0;
  object[0] = 0;
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  xpc_release(v26);
  xpc_release(v29[0]);
  xpc_release(v30[0]);
  v35 = object;
  sub_1000087B4(&v35);
  xpc_release(v5);
}

void sub_10068620C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, xpc_object_t object, xpc_object_t *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, uint64_t a26, xpc_object_t a27, uint64_t a28, xpc_object_t a29, uint64_t a30, xpc_object_t a31)
{
  if (*(v32 - 105) < 0)
  {
    operator delete(*(v32 - 128));
  }

  xpc_release(object);
  xpc_release(a25);
  xpc_release(a27);
  __p = &a31;
  sub_1000087B4(&__p);
  xpc_release(v31);
  _Unwind_Resume(a1);
}

uint64_t sub_100686358(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_1000087B4(&v3);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void sub_1006863A4(uint64_t a1)
{
  v1 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Incoming participant change", v2, 2u);
  }
}

void sub_100686430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 240);
  LOBYTE(v4) = 0;
  v5 = 0;
  sub_100B9F644(v3, a2, a3, &v4);
}

void sub_100686518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29, int a30, __int16 a31, char a32, char a33)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  if (a29 == 1)
  {
    *(v33 - 24) = &a24;
    sub_10019029C((v33 - 24));
  }

  sub_1006A6678(&a31);
  _Unwind_Resume(a1);
}

BOOL sub_100686580(uint64_t a1, uint64_t a2)
{
  sub_1009CC9A8((*a2 + 48), __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (v6 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = memcmp(v7, v11, v4) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (v15 < 0)
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  return v12;
}

uint64_t sub_100686634(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v2 = *(a1 + 8);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

uint64_t sub_100686674(uint64_t a1)
{
  if (*(a1 + 8) == 1)
  {
    xpc_release(*a1);
    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1006866B4@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(result + 23);
  if (v3 >= 0)
  {
    v4 = *(result + 23);
  }

  else
  {
    v4 = *(result + 8);
  }

  if (v4)
  {
    if (v3 >= 0)
    {
      v5 = result;
    }

    else
    {
      v5 = *result;
    }

    v8 = 0;
    v7 = 0uLL;
    result = sub_1001E0D88(&v7, v5, v5 + v4, v4);
    *a2 = v7;
    *(a2 + 16) = v8;
    v6 = 1;
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  *(a2 + 24) = v6;
  return result;
}

void sub_1006867E4(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1006868B0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1006868D0(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      *(a1 + 136) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 104);
  if (v3)
  {
    *(a1 + 112) = v3;
    operator delete(v3);
  }

  v6 = (a1 + 80);
  sub_10003CA58(&v6);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(a1 + 40) = v4;
    operator delete(v4);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100686968(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  sub_100C17FB8(__p, a1);
  sub_100C16CE4(v5, __p);
  if (v4 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100C17FB8(a2, v5);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1006869DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100686A0C(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 191);
  if (v3 >= 0)
  {
    v4 = *(*a2 + 191);
  }

  else
  {
    v4 = *(*a2 + 176);
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = *(v2 + 168);
  v7 = (v2 + 168);
  v8 = v9;
  if (v3 < 0)
  {
    v7 = v8;
  }

  v12 = *(a1 + 32);
  v10 = (a1 + 32);
  v11 = v12;
  if (v6 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  return memcmp(v7, v13, v4) == 0;
}

void sub_100686A88(uint64_t *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = *a1;
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[1])
      {
LABEL_26:
        sub_100004A34(v5);
        return;
      }

      dispatch_assert_queue_V2(*(v3 + 24));
      v6 = *(*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 96));
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = a1 + 7;
        if (*(a1 + 79) < 0)
        {
          v7 = *v7;
        }

        LODWORD(v21) = 136380675;
        *(&v21 + 4) = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Finishing request for joining group chat: [%{private}s]", &v21, 0xCu);
      }

      sub_1009CE7A0(a1[5], a1 + 3);
      sub_100914C50(a1[5], (a1 + 7));
      ServiceMap = Registry::getServiceMap(*(v3 + 80));
      v9 = ServiceMap;
      v10 = "17TMRouterInterface";
      if (("17TMRouterInterface" & 0x8000000000000000) != 0)
      {
        v11 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
      *&v21 = v10;
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
            goto LABEL_14;
          }

          goto LABEL_18;
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
LABEL_14:
        v18 = (*(**(v3 + 48) + 16))(*(v3 + 48), *(v3 + 96));
        if (os_log_type_enabled(*v18, OS_LOG_TYPE_ERROR))
        {
          sub_1017784A0();
        }

LABEL_24:
        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        goto LABEL_26;
      }

LABEL_18:
      v41 = 0;
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
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      sub_10091601C(a1[5], &v21);
      v19 = *(&v22 + 1);
      v20 = v23;
      while (v19 != v20)
      {
        if (sub_10083AF94(v19, v3 + 104))
        {
          *(v19 + 28) = 1;
          break;
        }

        v19 += 32;
      }

      (*(*v16 + 400))(v16, *(v3 + 96), &v21);
      sub_1000D45B0(&v21);
      goto LABEL_24;
    }
  }
}

uint64_t sub_100686DC8(uint64_t a1)
{
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_100686E2C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v7 = 0;
  v6 = 0u;
  v2 = *a1;
  if (*a1 != a1[1])
  {
    v5 = 0;
    *__p = 0u;
    v4 = 0u;
    sub_1006827C4(v2);
  }

  *a2 = 0uLL;
  *(a2 + 16) = 0;
  v7 = 0;
  v6 = 0uLL;
  *(a2 + 24) = 1;
  __p[0] = &v6;
  sub_10003CA58(__p);
}

void sub_100686F80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, uint64_t a17, char a18)
{
  v18[24] = v20;
  *v18 = v19;
  if (a16 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  __p = &a18;
  sub_10003CA58(&__p);
  _Unwind_Resume(a1);
}

uint64_t sub_100686FD0(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_100687124(_Unwind_Exception *a1)
{
  sub_100686FD0(v2);
  v4 = v1[3];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

void sub_1006871F8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100687218(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

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

  v4 = *(a1 + 40);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10068728C(uint64_t a1, uint64_t *a2, void **a3)
{
  __src[1] = 0;
  __src[0] = 0;
  v107 = 0;
  v102[0] = a3;
  v102[1] = ims::lazuli::kTransactionId;
  sub_100006354(v102, &object);
  buf = 0uLL;
  v109 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v109) < 0)
  {
    operator delete(buf);
  }

  xpc_release(object);
  v6 = HIBYTE(v107);
  if (v107 < 0)
  {
    v6 = __src[1];
  }

  if (!v6)
  {
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      sub_1017785A4();
    }

    goto LABEL_157;
  }

  v105 = 0;
  v103 = 0u;
  v104 = 0u;
  *v102 = 0u;
  v7 = *a3;
  v101 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v101 = xpc_null_create();
  }

  sub_100685DF8(&v101, v102);
  v69 = a2;
  xpc_release(v101);
  v101 = 0;
  if (!sub_100685698(a1, __src, v102))
  {
    goto LABEL_155;
  }

  v10 = *(a1 + 408);
  v9 = *(a1 + 416);
  if (v10 == v9)
  {
LABEL_34:
    v11 = v9;
    goto LABEL_35;
  }

  v11 = *(a1 + 408);
  while (1)
  {
    v12 = *v11;
    v13 = *(v11 + 1);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v107 >= 0)
    {
      v14 = HIBYTE(v107);
    }

    else
    {
      v14 = __src[1];
    }

    v15 = *(v12 + 39);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(v12 + 24);
    }

    if (v14 != v15)
    {
      v22 = 0;
      if (!v13)
      {
        goto LABEL_32;
      }

LABEL_31:
      sub_100004A34(v13);
      goto LABEL_32;
    }

    if (v107 >= 0)
    {
      v17 = __src;
    }

    else
    {
      v17 = __src[0];
    }

    v20 = *(v12 + 16);
    v18 = (v12 + 16);
    v19 = v20;
    if (v16 >= 0)
    {
      v21 = v18;
    }

    else
    {
      v21 = v19;
    }

    v22 = memcmp(v17, v21, v14) == 0;
    if (v13)
    {
      goto LABEL_31;
    }

LABEL_32:
    if (v22)
    {
      break;
    }

    v11 += 16;
    if (v11 == v9)
    {
      goto LABEL_34;
    }
  }

  if (v11 != v9)
  {
    v31 = v11 + 16;
    if (v11 + 16 != v9)
    {
      while (1)
      {
        v32 = *v31;
        v33 = *(v31 + 1);
        if (v33)
        {
          atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v107 >= 0)
        {
          v34 = HIBYTE(v107);
        }

        else
        {
          v34 = __src[1];
        }

        v35 = *(v32 + 39);
        v36 = v35;
        if ((v35 & 0x80u) != 0)
        {
          v35 = *(v32 + 24);
        }

        if (v34 == v35)
        {
          break;
        }

        v42 = 0;
        if (v33)
        {
          goto LABEL_78;
        }

LABEL_79:
        if (!v42)
        {
          v43 = *v31;
          *v31 = 0;
          *(v31 + 1) = 0;
          v44 = *(v11 + 1);
          *v11 = v43;
          if (v44)
          {
            sub_100004A34(v44);
          }

          v11 += 16;
        }

        v31 += 16;
        if (v31 == v9)
        {
          goto LABEL_35;
        }
      }

      if (v107 >= 0)
      {
        v37 = __src;
      }

      else
      {
        v37 = __src[0];
      }

      v40 = *(v32 + 16);
      v38 = (v32 + 16);
      v39 = v40;
      if (v36 >= 0)
      {
        v41 = v38;
      }

      else
      {
        v41 = v39;
      }

      v42 = memcmp(v37, v41, v34) == 0;
      if (!v33)
      {
        goto LABEL_79;
      }

LABEL_78:
      sub_100004A34(v33);
      goto LABEL_79;
    }
  }

LABEL_35:
  sub_1006A6284(a1 + 408, v11, *(a1 + 416));
  v23 = *(**(a1 + 48) + 16);
  if (v9 - v10 == *(a1 + 416) - *(a1 + 408))
  {
    v24 = *v23();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Bailing out (group chat creation not requested).", &buf, 2u);
    }

    sub_1006A6A00((a1 + 408), 0, 0, 0);
    goto LABEL_155;
  }

  v25 = *v23();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = __src;
    if (v107 < 0)
    {
      v26 = __src[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Erased ephemeral entry for transactionID : %{public}s", &buf, 0xCu);
  }

  if (v102[0])
  {
    v96 = 0;
    v97 = 0;
    v98 = 0;
    object = a3;
    v71 = ims::lazuli::kConferenceFocus;
    sub_100006354(&object, &v92);
    buf = 0uLL;
    v109 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v109) < 0)
    {
      operator delete(buf);
    }

    xpc_release(v92);
    v27 = HIBYTE(v98);
    if (v98 < 0)
    {
      v27 = v97;
    }

    if (v27)
    {
      v92 = 0uLL;
      v93 = 0;
      object = a3;
      v71 = ims::lazuli::kConversationId;
      sub_100006354(&object, &v86);
      buf = 0uLL;
      v109 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v109) < 0)
      {
        operator delete(buf);
      }

      xpc_release(v86);
      v28 = HIBYTE(v93);
      if (v93 < 0)
      {
        v28 = *(&v92 + 1);
      }

      if (v28)
      {
        if (sub_100912FFC(v69))
        {
          v86 = 0uLL;
          v87 = 0;
          sub_100686968(&v96, &buf);
          sub_1009CC9A8(&buf, &v86);
          if (SHIBYTE(v109) < 0)
          {
            operator delete(buf);
          }

          v29 = *(a1 + 280);
          v30 = *(a1 + 288);
          v81[0] = _NSConcreteStackBlock;
          v81[1] = 1174405120;
          v82 = sub_1006882D4;
          v83 = &unk_101E6FD50;
          if (SHIBYTE(v93) < 0)
          {
            sub_100005F2C(&v84, v92, *(&v92 + 1));
          }

          else
          {
            v84 = v92;
            v85 = v93;
          }

          if (v29 != v30)
          {
            while (((v82)(v81, v29) & 1) == 0)
            {
              v29 += 2;
              if (v29 == v30)
              {
                v29 = v30;
                break;
              }
            }
          }

          if (v29 != *(a1 + 288))
          {
            v59 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
            if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
            {
              v60 = &v86;
              if (v87 < 0)
              {
                v60 = v86;
              }

              LODWORD(buf) = 136380675;
              *(&buf + 4) = v60;
              _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Group model active for: [%{private}s]", &buf, 0xCu);
            }

            sub_1009CE7A0(*v29, v69);
            v61 = *v29;
            sub_100C17FB8(&buf, &v86);
            sub_100915E28(v61, &buf);
            if (SHIBYTE(v109) < 0)
            {
              operator delete(buf);
            }
          }

          if (SHIBYTE(v85) < 0)
          {
            operator delete(v84);
          }

          v79 = 0;
          v80 = 0;
          v62 = *(a1 + 376);
          if (SHIBYTE(v107) < 0)
          {
            sub_100005F2C(v77, __src[0], __src[1]);
          }

          else
          {
            *v77 = *__src;
            v78 = v107;
          }

          v63 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_100688350(v62, v77, v63, &v79);
          if (SHIBYTE(v78) < 0)
          {
            operator delete(v77[0]);
          }

          if (v79)
          {
            sub_1000D1CC4(v79, &v86, &v92);
            v76[2] = 0;
            v76[3] = 0;
            v64 = *(a1 + 96);
            v65 = *(a1 + 88);
            v76[0] = *(a1 + 80);
            v76[1] = v65;
            if (v65)
            {
              atomic_fetch_add_explicit((v65 + 8), 1uLL, memory_order_relaxed);
            }

            if (SHIBYTE(v87) < 0)
            {
              sub_100005F2C(v74, v86, *(&v86 + 1));
            }

            else
            {
              *v74 = v86;
              v75 = v87;
            }

            v67 = *(a1 + 184);
            v73[0] = *(a1 + 176);
            v73[1] = v67;
            if (v67)
            {
              atomic_fetch_add_explicit((v67 + 8), 1uLL, memory_order_relaxed);
            }

            v68 = *(a1 + 200);
            v72[0] = *(a1 + 192);
            v72[1] = v68;
            if (v68)
            {
              atomic_fetch_add_explicit((v68 + 8), 1uLL, memory_order_relaxed);
            }

            sub_1009CCB38(&buf, v64, v76, v74, v73, v72, a1 + 104, a1 + 152);
            sub_1009CCBB8(&object, v69, &v92);
            sub_1006B52AC();
          }

          v66 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf) = 0;
            _os_log_impl(&_mh_execute_header, v66, OS_LOG_TYPE_DEFAULT, "#I Group model dropped. Can't find operation...", &buf, 2u);
          }

          if (v80)
          {
            sub_100004A34(v80);
          }

          if (SHIBYTE(v87) < 0)
          {
            v56 = v86;
LABEL_149:
            operator delete(v56);
          }
        }

        else
        {
          v52 = *(a1 + 376);
          if (SHIBYTE(v107) < 0)
          {
            sub_100005F2C(v88, __src[0], __src[1]);
          }

          else
          {
            *v88 = *__src;
            v89 = v107;
          }

          v57 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D38F0(v52, v88, 0x100000005, v57);
          if (SHIBYTE(v89) < 0)
          {
            operator delete(v88[0]);
          }

          v58 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v58, OS_LOG_TYPE_ERROR))
          {
            sub_10177853C();
          }
        }
      }

      else
      {
        v50 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(*v50, OS_LOG_TYPE_ERROR))
        {
          sub_1017785A4();
        }

        v51 = *(a1 + 376);
        if (SHIBYTE(v107) < 0)
        {
          sub_100005F2C(&v90, __src[0], __src[1]);
        }

        else
        {
          v90 = *__src;
          v91 = v107;
        }

        v55 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        sub_1000D38F0(v51, &v90, 0x100000005, v55);
        if (SHIBYTE(v91) < 0)
        {
          v56 = v90;
          goto LABEL_149;
        }
      }

      if (SHIBYTE(v93) < 0)
      {
        v54 = v92;
LABEL_152:
        operator delete(v54);
      }
    }

    else
    {
      v48 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v48, OS_LOG_TYPE_ERROR))
      {
        sub_1017785A4();
      }

      v49 = *(a1 + 376);
      if (SHIBYTE(v107) < 0)
      {
        sub_100005F2C(&__dst, __src[0], __src[1]);
      }

      else
      {
        __dst = *__src;
        v95 = v107;
      }

      v53 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v49, &__dst, 0x100000005, v53);
      if (SHIBYTE(v95) < 0)
      {
        v54 = __dst;
        goto LABEL_152;
      }
    }

    if (SHIBYTE(v98) < 0)
    {
      operator delete(v96);
    }
  }

  else
  {
    v45 = *(a1 + 376);
    if (SHIBYTE(v107) < 0)
    {
      sub_100005F2C(__p, __src[0], __src[1]);
    }

    else
    {
      *__p = *__src;
      v100 = v107;
    }

    v46 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_1000D38F0(v45, __p, 0x100000005, v46);
    if (SHIBYTE(v100) < 0)
    {
      operator delete(__p[0]);
    }

    v47 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v47, OS_LOG_TYPE_ERROR))
    {
      sub_1017784D4();
    }
  }

LABEL_155:
  *&buf = &v104;
  sub_1000087B4(&buf);
  if (SHIBYTE(v103) < 0)
  {
    operator delete(v102[1]);
  }

LABEL_157:
  if (SHIBYTE(v107) < 0)
  {
    operator delete(__src[0]);
  }
}

void sub_100688030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, xpc_object_t object, uint64_t a58, int a59, __int16 a60, char a61, char a62, uint64_t a63)
{
  if (a28)
  {
    sub_100004A34(a28);
  }

  if (a36)
  {
    sub_100004A34(a36);
  }

  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a62 < 0)
  {
    operator delete(object);
  }

  if (a71 < 0)
  {
    operator delete(a66);
  }

  sub_100686358(&a72);
  if (SLOBYTE(STACK[0x227]) < 0)
  {
    operator delete(STACK[0x210]);
  }

  _Unwind_Resume(a1);
}

BOOL sub_1006882D4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(*a2 + 191);
  if (v3 >= 0)
  {
    v4 = *(*a2 + 191);
  }

  else
  {
    v4 = *(*a2 + 176);
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 != v5)
  {
    return 0;
  }

  v9 = *(v2 + 168);
  v7 = (v2 + 168);
  v8 = v9;
  if (v3 < 0)
  {
    v7 = v8;
  }

  v12 = *(a1 + 32);
  v10 = (a1 + 32);
  v11 = v12;
  if (v6 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  return memcmp(v7, v13, v4) == 0;
}

void sub_100688350(uint64_t a1@<X0>, void **a2@<X1>, os_log_t *a3@<X2>, void *a4@<X8>)
{
  v7 = sub_100007A6C(a1, a2);
  if (a1 + 8 == v7)
  {
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_10177868C();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = v7;
    v9 = *(v7 + 56);
    {
      v11 = *(v8 + 64);
      *a4 = v10;
      a4[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_101778614();
      }
    }
  }
}

void sub_100688458(uint64_t a1, uint64_t *a2, void **a3)
{
  v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Incoming group chat update", buf, 2u);
  }

  *buf = 0;
  v31 = 0;
  v32 = 0;
  *&v33 = a3;
  *(&v33 + 1) = ims::lazuli::kConferenceFocus;
  sub_100006354(&v33, &object);
  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
  v7 = HIBYTE(v32);
  if (v32 < 0)
  {
    v7 = v31;
  }

  if (v7)
  {
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    v8 = sub_100C17FB8(&v33, buf);
    sub_100C16CE4(__p, v8);
    if (v34 < 0)
    {
      operator delete(v33);
    }

    object = 0;
    v27 = 0;
    v9 = *(a1 + 280);
    v10 = *(a1 + 288);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 1174405120;
    v22 = sub_1006889C0;
    v23 = &unk_101E6FD80;
    if (SHIBYTE(v29) < 0)
    {
      sub_100005F2C(&v24, __p[0], __p[1]);
    }

    else
    {
      v24 = *__p;
      v25 = v29;
    }

    if (v9 != v10)
    {
      while (((v22)(v21, v9) & 1) == 0)
      {
        v9 += 16;
        if (v9 == v10)
        {
          v9 = v10;
          break;
        }
      }
    }

    if (v9 == *(a1 + 288))
    {
      v14 = 0;
      v15 = 0;
    }

    else
    {
      v12 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = __p;
        if (v29 < 0)
        {
          v13 = __p[0];
        }

        LODWORD(v33) = 136380675;
        *(&v33 + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Group model active for: [%{private}s]", &v33, 0xCu);
      }

      v15 = *v9;
      v14 = *(v9 + 8);
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      object = v15;
      v27 = v14;
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(v24);
      if (v15)
      {
LABEL_30:
        sub_1009CE7A0(v15, a2);
        v16 = *a3;
        v20 = v16;
        if (v16)
        {
          xpc_retain(v16);
        }

        else
        {
          v20 = xpc_null_create();
        }

        v18 = sub_100915154(v15, &v20);
        xpc_release(v20);
        v20 = 0;
        if (v18)
        {
          sub_10000501C(&v33, "After handling chat update");
          sub_100916028(v15, &v33);
          if (v34 < 0)
          {
            operator delete(v33);
          }

          sub_100688A74(a1, &object);
        }

        else
        {
          v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          if (os_log_type_enabled(*v19, OS_LOG_TYPE_ERROR))
          {
            sub_101778704();
          }
        }

LABEL_42:
        if (v14)
        {
          sub_100004A34(v14);
        }

        if (SHIBYTE(v29) < 0)
        {
          operator delete(__p[0]);
        }

        goto LABEL_46;
      }
    }

    else if (v15)
    {
      goto LABEL_30;
    }

    v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v17, OS_LOG_TYPE_ERROR))
    {
      sub_101778738();
    }

    goto LABEL_42;
  }

  v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
  {
    sub_10177876C();
  }

LABEL_46:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(*buf);
  }
}

void sub_1006888C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, xpc_object_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (*(v35 - 57) < 0)
  {
    operator delete(*(v35 - 80));
  }

  if (v34)
  {
    sub_100004A34(v34);
  }

  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1006889C0(uint64_t a1, uint64_t a2)
{
  sub_1009CC9A8((*a2 + 48), __p);
  v3 = v15;
  if ((v15 & 0x80u) == 0)
  {
    v4 = v15;
  }

  else
  {
    v4 = __p[1];
  }

  v5 = *(a1 + 55);
  v6 = v5;
  if ((v5 & 0x80u) != 0)
  {
    v5 = *(a1 + 40);
  }

  if (v4 == v5)
  {
    if ((v15 & 0x80u) == 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v10 = *(a1 + 32);
    v9 = (a1 + 32);
    v8 = v10;
    if (v6 >= 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v8;
    }

    v12 = memcmp(v7, v11, v4) == 0;
    if (v3 < 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
    if (v15 < 0)
    {
LABEL_16:
      operator delete(__p[0]);
    }
  }

  return v12;
}

void sub_100688A74(uint64_t a1, uint64_t *a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
  v5 = ServiceMap;
  v6 = "17TMRouterInterface";
  if (("17TMRouterInterface" & 0x8000000000000000) != 0)
  {
    v7 = ("17TMRouterInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  if (v10)
  {
    v11 = v10[3];
    v12 = v10[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
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

  std::mutex::unlock(v5);
  v12 = 0;
  v13 = 1;
  if (!v11)
  {
LABEL_7:
    v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to find TMRouter", buf, 2u);
    }

    goto LABEL_92;
  }

LABEL_11:
  v101 = 0;
  memset(v100, 0, sizeof(v100));
  memset(v99, 0, sizeof(v99));
  memset(v98, 0, sizeof(v98));
  v96 = 0u;
  *__src = 0u;
  *buf = 0u;
  v95 = 0u;
  sub_10091601C(*a2, buf);
  v93 = 0;
  *v91 = 0u;
  v92 = 0u;
  *v90 = 0u;
  memset(v89, 0, sizeof(v89));
  v87 = 0u;
  v88 = 0u;
  v86 = 0u;
  sub_1009166C8(*a2, &v86);
  if (v93)
  {
    memset(v85, 0, sizeof(v85));
    v83 = 0u;
    *v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v78 = 0u;
    sub_1006AD1E4(&v78, &v86);
    v77[1] = 0;
    v77[0] = 0;
    v76 = v77;
    *v74 = 0u;
    v75 = 0u;
    sub_1000D43F8(v74, v100);
    v47 = a2;
    if (v79)
    {
      v15 = v78;
      if (v78 != (&v78 + 8))
      {
        v49 = 0u;
        v50 = 0u;
        *v48 = 0u;
        v16 = *(v78 + 56);
        v17 = *(v78 + 64);
        while (v16 != v17)
        {
          sub_100685200(a1, v16, __p);
          v18 = v50;
          if (v50 >= *(&v50 + 1))
          {
            *&v50 = sub_1006AD550(&v49 + 8, __p);
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v19 = *__p;
            *(v50 + 16) = v70;
            *v18 = v19;
            __p[1] = 0;
            v70 = 0;
            __p[0] = 0;
            v20 = v72;
            *(v18 + 24) = v71;
            *(v18 + 28) = v20;
            *&v50 = v18 + 32;
          }

          sub_100005BA0(&v76, v16);
          v16 += 3;
        }

        sub_100C17E6C(__dst, v15 + 32);
        sub_100C171EC();
      }
    }

    else if (*(&v80 + 1))
    {
      v22 = *(&v79 + 1);
      if (*(&v79 + 1) != &v80)
      {
        v49 = 0u;
        v50 = 0u;
        *v48 = 0u;
        v23 = *(*(&v79 + 1) + 56);
        v24 = *(*(&v79 + 1) + 64);
        while (v23 != v24)
        {
          sub_100685200(a1, v23, __p);
          v25 = v50;
          if (v50 >= *(&v50 + 1))
          {
            *&v50 = sub_1006AD550(&v49 + 8, __p);
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v26 = *__p;
            *(v50 + 16) = v70;
            *v25 = v26;
            __p[1] = 0;
            v70 = 0;
            __p[0] = 0;
            v27 = v72;
            *(v25 + 24) = v71;
            *(v25 + 28) = v27;
            *&v50 = v25 + 32;
          }

          v23 += 24;
        }

        sub_100C17E6C(__dst, v22 + 32);
        sub_100C171EC();
      }
    }

    else if (v82)
    {
      v49 = 0u;
      v50 = 0u;
      *v48 = 0u;
      v28 = v81;
      if (v81 != (&v81 + 8))
      {
        do
        {
          sub_100685200(a1, (v28 + 2), __p);
          v29 = v50;
          if (v50 >= *(&v50 + 1))
          {
            *&v50 = sub_1006AD550(&v49 + 8, __p);
            if (SHIBYTE(v70) < 0)
            {
              operator delete(__p[0]);
            }
          }

          else
          {
            v30 = *__p;
            *(v50 + 16) = v70;
            *v29 = v30;
            __p[1] = 0;
            v70 = 0;
            __p[0] = 0;
            v31 = v72;
            *(v29 + 24) = v71;
            *(v29 + 28) = v31;
            *&v50 = v29 + 32;
          }

          v32 = *(v28 + 1);
          if (v32)
          {
            do
            {
              v33 = v32;
              v32 = *v32;
            }

            while (v32);
          }

          else
          {
            do
            {
              v33 = *(v28 + 2);
              v34 = *v33 == v28;
              v28 = v33;
            }

            while (!v34);
          }

          v28 = v33;
        }

        while (v33 != (&v81 + 8));
      }

      v35 = *(a1 + 96);
      LOBYTE(__p[0]) = 0;
      v73 = 0;
      (*(*v11 + 408))(v11, v35, buf, v48, __p);
      if (v73 == 1 && SHIBYTE(v70) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = &v49 + 8;
      sub_1000D48DC(__p);
      __p[0] = v48;
      sub_1000087B4(__p);
    }

    else
    {
      v45 = HIBYTE(v85[0]);
      v46 = HIBYTE(v85[0]);
      if (SHIBYTE(v85[0]) < 0)
      {
        v45 = v84[1];
      }

      if (v45)
      {
        __dst[0] = 0;
        __dst[1] = 0;
        v68 = 0;
        if (SHIBYTE(v85[3]) < 0)
        {
          sub_100005F2C(__dst, v85[1], v85[2]);
          v46 = HIBYTE(v85[0]);
        }

        else
        {
          *__dst = *&v85[1];
          v68 = v85[3];
        }

        v65[0] = 0;
        v65[1] = 0;
        v66 = 0;
        if (v46 < 0)
        {
          sub_100005F2C(v65, v84[0], v84[1]);
        }

        else
        {
          *v65 = *v84;
          v66 = v85[0];
        }

        if (SHIBYTE(v66) < 0)
        {
          sub_100005F2C(v48, v65[0], v65[1]);
        }

        else
        {
          *v48 = *v65;
          *&v49 = v66;
        }

        if (BYTE8(v75) == 1)
        {
          if (SBYTE7(v75) < 0)
          {
            operator delete(v74[0]);
          }

          *v74 = *v48;
          *&v75 = v49;
        }

        else
        {
          *v74 = *v48;
          *&v75 = v49;
          BYTE8(v75) = 1;
        }

        sub_100C17E6C(__p, __dst);
        sub_100C171EC();
      }
    }

    if (*(a1 + 240))
    {
      v36 = v76;
      if (v76 != v77)
      {
        do
        {
          v37 = *(a1 + 240);
          LOBYTE(v62) = 0;
          v64 = 0;
          sub_100B9C9F8(v37, (v36 + 4), 0, &v62);
          if (v64 == 1 && v63 < 0)
          {
            operator delete(v62);
          }

          v38 = v36[1];
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v36[2];
              v34 = *v39 == v36;
              v36 = v39;
            }

            while (!v34);
          }

          v36 = v39;
        }

        while (v39 != v77);
      }
    }

    sub_1009166D4(*v47);
    if ((sub_100915E20(*v47) & 1) == 0)
    {
      __dst[0] = 0;
      __dst[1] = 0;
      v68 = 0;
      sub_10004EFD0(__dst, *(&v82 + 1), v83, 0xAAAAAAAAAAAAAAABLL * ((v83 - *(&v82 + 1)) >> 3));
      v61 = 0;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v54 = 0u;
      memset(v53, 0, sizeof(v53));
      memset(v52, 0, sizeof(v52));
      v50 = 0u;
      memset(v51, 0, sizeof(v51));
      *v48 = 0u;
      v49 = 0u;
      if (SHIBYTE(v98[0]) < 0)
      {
        sub_100005F2C(v51, __src[0], __src[1]);
      }

      else
      {
        v51[0] = *__src;
        *&v51[1] = v98[0];
      }

      if (SHIBYTE(v98[3]) < 0)
      {
        sub_100005F2C(&v51[1] + 8, v98[1], v98[2]);
      }

      else
      {
        *(&v51[1] + 8) = *&v98[1];
        *(&v51[2] + 1) = v98[3];
      }

      sub_1000D42EC(v52, v99);
      sub_1000D43F8(v53, v74);
      LOBYTE(v54) = 0;
      BYTE8(v58) = 0;
      *&v60 = 0;
      v59 = 0uLL;
      DWORD2(v60) = -1;
      BYTE12(v60) = 0;
      LOBYTE(v61) = 0;
      v41 = __dst[0];
      for (i = __dst[1]; v41 != i; v41 += 24)
      {
        sub_100685200(a1, v41, __p);
        v42 = v50;
        if (v50 >= *(&v50 + 1))
        {
          *&v50 = sub_1006AD550(&v49 + 8, __p);
          if (SHIBYTE(v70) < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          v43 = *__p;
          *(v50 + 16) = v70;
          *v42 = v43;
          __p[1] = 0;
          v70 = 0;
          __p[0] = 0;
          v44 = v72;
          *(v42 + 24) = v71;
          *(v42 + 28) = v44;
          *&v50 = v42 + 32;
        }
      }

      (*(*v11 + 432))(v11, *(a1 + 96), v48);
      sub_100915E18(*v47, 1);
      sub_1000D45B0(v48);
      *v48 = __dst;
      sub_1000087B4(v48);
    }

    if (BYTE8(v75) == 1 && SBYTE7(v75) < 0)
    {
      operator delete(v74[0]);
    }

    sub_100009970(&v76, v77[0]);
    if (SHIBYTE(v85[3]) < 0)
    {
      operator delete(v85[1]);
    }

    if (SHIBYTE(v85[0]) < 0)
    {
      operator delete(v84[0]);
    }

    *v48 = &v82 + 8;
    sub_1000087B4(v48);
    sub_100009970(&v81, *(&v81 + 1));
    sub_100580908(&v79 + 8, v80);
    sub_100580908(&v78, *(&v78 + 1));
  }

  else
  {
    v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Nothing to update. Missing yielder", v48, 2u);
    }

    if ((sub_100915E20(*a2) & 1) == 0)
    {
      (*(*v11 + 432))(v11, *(a1 + 96), buf);
      sub_100915E18(*a2, 1);
    }
  }

  if (v93 == 1)
  {
    if (SHIBYTE(v92) < 0)
    {
      operator delete(v91[1]);
    }

    if (SHIBYTE(v91[0]) < 0)
    {
      operator delete(v90[0]);
    }

    *v48 = &v89[1] + 8;
    sub_1000087B4(v48);
    sub_100009970(v89, *(&v89[0] + 1));
    sub_100580908(&v87 + 8, v88);
    sub_100580908(&v86, *(&v86 + 1));
  }

  sub_1000D45B0(buf);
LABEL_92:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100689974(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12, std::__shared_weak_count *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *__p, uint64_t a61, int a62, __int16 a63)
{
  if (a65 < 0)
  {
    operator delete(__p);
  }

  if (a72 < 0)
  {
    operator delete(a67);
  }

  if (LOBYTE(STACK[0x218]) == 1 && SLOBYTE(STACK[0x217]) < 0)
  {
    operator delete(STACK[0x200]);
  }

  sub_100009970(&STACK[0x228], STACK[0x230]);
  sub_10057F588(&STACK[0x240]);
  sub_1006AD678(&STACK[0x2D0]);
  sub_1000D45B0(&STACK[0x370]);
  if ((a12 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(a1);
}

void sub_100689C34(uint64_t a1, uint64_t a2, void **a3)
{
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v24[0] = a3;
  v24[1] = ims::lazuli::kTransactionId;
  sub_100006354(v24, __dst);
  __p[0] = 0;
  __p[1] = 0;
  *&v28 = 0;
  xpc::dyn_cast_or_default();
  if (SBYTE7(v28) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*__dst);
  v5 = HIBYTE(v34);
  if (v34 < 0)
  {
    v5 = v33[1];
  }

  if (v5)
  {
    v31 = 0;
    v32 = 0;
    v6 = *(a1 + 376);
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_10068A2EC(v6, v33, v7, &v31);
    if (!v31)
    {
      v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_101778808();
      }

      goto LABEL_48;
    }

    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    *__p = 0u;
    v8 = *a3;
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100685DF8(&object, __p);
    xpc_release(object);
    object = 0;
    if (LOBYTE(__p[0]) == 1)
    {
      sub_1000D2278(v31 + 16, v33);
    }

    else
    {
      sub_1000D231C(v31 + 16, v33);
    }

    v11 = sub_1000D23C0(v31 + 16);
    v12 = *(**(a1 + 48) + 16);
    if (v11)
    {
      v13 = *v12();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I All responses recieved", v24, 2u);
      }

      *v24 = 0u;
      v25 = 0u;
      v14 = sub_1000D37F8(*(a1 + 376), v33, v24);
      v15 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96), v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000D23F0(v31 + 16, __dst);
        v16 = v36 >= 0 ? __dst : *__dst;
        *buf = 136315138;
        v38 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", buf, 0xCu);
        if (SHIBYTE(v36) < 0)
        {
          operator delete(*__dst);
        }
      }

      if (BYTE8(v25))
      {
        v17 = sub_100685698(a1, v24, __p);
        v18 = *(a1 + 376);
        if (v17)
        {
          v19 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D3C90(v18, v33, 0, v19);
        }

        else
        {
          if (SHIBYTE(v34) < 0)
          {
            sub_100005F2C(__dst, v33[0], v33[1]);
          }

          else
          {
            *__dst = *v33;
            v36 = v34;
          }

          v23 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D379C(v18, __dst, v23);
          if (SHIBYTE(v36) < 0)
          {
            operator delete(*__dst);
          }
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017787A0();
      }

      if (BYTE8(v25) != 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v20 = *v12();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v24[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I More responses pending", v24, 2u);
      }

      v21 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      sub_1000D23F0(v31 + 16, v24);
      if ((SBYTE7(v25) & 0x80u) == 0)
      {
        v22 = v24;
      }

      else
      {
        v22 = v24[0];
      }

      *__dst = 136315138;
      *&__dst[4] = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", __dst, 0xCu);
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(v24[0]);
    }

LABEL_46:
    v24[0] = &v29;
    sub_1000087B4(v24);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[1]);
    }

LABEL_48:
    if (v32)
    {
      sub_100004A34(v32);
    }

    goto LABEL_50;
  }

  v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_101778870();
  }

LABEL_50:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }
}

void sub_10068A1F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, xpc_object_t object, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100686358(&a18);
  if (a29)
  {
    sub_100004A34(a29);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(a1);
}

void sub_10068A2EC(void *a1@<X0>, uint64_t a2@<X1>, os_log_t *a3@<X2>, void *a4@<X8>)
{
  v7 = a1 + 1;
  v8 = *a1;
  if (*a1 == a1 + 1)
  {
LABEL_10:
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_101778950();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    while (1)
    {
      v9 = v8[7];
      if (v9)
      {
        if ((*(*v9 + 24))(v9, a2))
        {
          break;
        }
      }

      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
      if (v11 == v7)
      {
        goto LABEL_10;
      }
    }

    *a4 = 0;
    a4[1] = 0;
    v13 = v8[7];
    {
      v15 = v8[8];
      *a4 = v14;
      a4[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_1017788E0();
      }
    }
  }
}

void sub_10068A45C(uint64_t a1, uint64_t a2, void **a3)
{
  v32 = 0uLL;
  v33 = 0;
  v23[0] = a3;
  v23[1] = ims::lazuli::kTransactionId;
  sub_100006354(v23, buf);
  __p[0] = 0;
  __p[1] = 0;
  *&v27 = 0;
  xpc::dyn_cast_or_default();
  if (SBYTE7(v27) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(*buf);
  v5 = HIBYTE(v33);
  if (v33 < 0)
  {
    v5 = *(&v32 + 1);
  }

  if (v5)
  {
    v30 = 0;
    v31 = 0;
    v6 = *(a1 + 376);
    v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_10068AB14(v6, &v32, v7, &v30);
    if (!v30)
    {
      v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
      {
        sub_1017789C0();
      }

      goto LABEL_48;
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    *__p = 0u;
    v8 = *a3;
    object = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100685DF8(&object, __p);
    xpc_release(object);
    object = 0;
    if (LOBYTE(__p[0]) == 1)
    {
      sub_1000D2278(v30 + 16, &v32);
    }

    else
    {
      sub_1000D231C(v30 + 16, &v32);
    }

    v11 = sub_1000D23C0(v30 + 16);
    v12 = *(**(a1 + 48) + 16);
    if (v11)
    {
      v13 = *v12();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23[0]) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I All responses recieved", v23, 2u);
      }

      v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        sub_1000D23F0(v30 + 16, v23);
        v15 = (SBYTE7(v24) & 0x80u) == 0 ? v23 : v23[0];
        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", buf, 0xCu);
        if (SBYTE7(v24) < 0)
        {
          operator delete(v23[0]);
        }
      }

      *v23 = 0u;
      v24 = 0u;
      sub_1000D37F8(*(a1 + 376), &v32, v23);
      if (BYTE8(v24))
      {
        v16 = sub_100685698(a1, v23, __p);
        v17 = *(a1 + 376);
        if (v16)
        {
          v18 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D3C90(v17, &v32, 0, v18);
        }

        else
        {
          if (SHIBYTE(v33) < 0)
          {
            sub_100005F2C(buf, v32, *(&v32 + 1));
          }

          else
          {
            *buf = v32;
            v35 = v33;
          }

          v22 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
          sub_1000D379C(v17, buf, v22);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      else if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_1017787A0();
      }

      if (BYTE8(v24) != 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v19 = *v12();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v23[0]) = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I More responses pending", v23, 2u);
      }

      v20 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_46;
      }

      sub_1000D23F0(v30 + 16, v23);
      if ((SBYTE7(v24) & 0x80u) == 0)
      {
        v21 = v23;
      }

      else
      {
        v21 = v23[0];
      }

      *buf = 136315138;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I %{publics}s", buf, 0xCu);
    }

    if (SBYTE7(v24) < 0)
    {
      operator delete(v23[0]);
    }

LABEL_46:
    v23[0] = &v28;
    sub_1000087B4(v23);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[1]);
    }

LABEL_48:
    if (v31)
    {
      sub_100004A34(v31);
    }

    goto LABEL_50;
  }

  v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
  {
    sub_101778A28();
  }

LABEL_50:
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32);
  }
}

void sub_10068AA18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, xpc_object_t object, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  sub_100686358(&a18);
  if (a29)
  {
    sub_100004A34(a29);
  }

  if (*(v29 - 81) < 0)
  {
    operator delete(*(v29 - 104));
  }

  _Unwind_Resume(a1);
}

void sub_10068AB14(void *a1@<X0>, uint64_t a2@<X1>, os_log_t *a3@<X2>, void *a4@<X8>)
{
  v7 = a1 + 1;
  v8 = *a1;
  if (*a1 == a1 + 1)
  {
LABEL_10:
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_101778950();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    while (1)
    {
      v9 = v8[7];
      if (v9)
      {
        if ((*(*v9 + 24))(v9, a2))
        {
          break;
        }
      }

      v10 = v8[1];
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
          v11 = v8[2];
          v12 = *v11 == v8;
          v8 = v11;
        }

        while (!v12);
      }

      v8 = v11;
      if (v11 == v7)
      {
        goto LABEL_10;
      }
    }

    *a4 = 0;
    a4[1] = 0;
    v13 = v8[7];
    {
      v15 = v8[8];
      *a4 = v14;
      a4[1] = v15;
      if (v15)
      {
        atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_1017788E0();
      }
    }
  }
}

void sub_10068AC84(uint64_t a1, uint64_t a2, void **a3)
{
  v33 = 0uLL;
  v34 = 0;
  v31 = a3;
  v32 = ims::lazuli::kTransactionId;
  sub_100006354(&v31, buf);
  __p[0] = 0;
  __p[1] = 0;
  *&v28 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(*buf);
  v5 = HIBYTE(v34);
  if (v34 < 0)
  {
    v5 = *(&v33 + 1);
  }

  if (v5)
  {
    v30 = 0;
    v28 = 0u;
    v29 = 0u;
    *__p = 0u;
    v6 = *a3;
    object = v6;
    if (v6)
    {
      xpc_retain(v6);
    }

    else
    {
      object = xpc_null_create();
    }

    sub_100685DF8(&object, __p);
    xpc_release(object);
    object = 0;
    if (!sub_100685698(a1, &v33, __p))
    {
LABEL_39:
      v31 = &v29;
      sub_1000087B4(&v31);
      if (SHIBYTE(v28) < 0)
      {
        operator delete(__p[1]);
      }

      goto LABEL_41;
    }

    v31 = 0;
    v32 = 0;
    v8 = *(a1 + 376);
    if (SHIBYTE(v34) < 0)
    {
      sub_100005F2C(__dst, v33, *(&v33 + 1));
    }

    else
    {
      *__dst = v33;
      v25 = v34;
    }

    v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    sub_10068B1C8(v8, __dst, v9, &v31);
    if (SHIBYTE(v25) < 0)
    {
      operator delete(__dst[0]);
    }

    if (!v31)
    {
      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = &v33;
        if (v34 < 0)
        {
          v11 = v33;
        }

        *buf = 136446210;
        *&buf[4] = v11;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Failed to retrieve leave group chat request from operation store for transactionID: %{public}s", buf, 0xCu);
      }

      v12 = *(a1 + 376);
      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(v22, v33, *(&v33 + 1));
      }

      else
      {
        *v22 = v33;
        v23 = v34;
      }

      v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v12, v22, 0x100000005, v13);
      if (SHIBYTE(v23) < 0)
      {
        operator delete(v22[0]);
      }
    }

    v14 = *(a1 + 376);
    if (__p[0])
    {
      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(&v18, v33, *(&v33 + 1));
      }

      else
      {
        v18 = v33;
        v19 = v34;
      }

      v15 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v14, &v18, 0, v15);
      if (SHIBYTE(v19) < 0)
      {
        v16 = &v18;
LABEL_36:
        operator delete(*v16);
      }
    }

    else
    {
      if (SHIBYTE(v34) < 0)
      {
        sub_100005F2C(&v20, v33, *(&v33 + 1));
      }

      else
      {
        v20 = v33;
        v21 = v34;
      }

      v17 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
      sub_1000D38F0(v14, &v20, 0x100000005, v17);
      if (SHIBYTE(v21) < 0)
      {
        v16 = &v20;
        goto LABEL_36;
      }
    }

    if (v32)
    {
      sub_100004A34(v32);
    }

    goto LABEL_39;
  }

  v7 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
  {
    sub_101778A98();
  }

LABEL_41:
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33);
  }
}

void sub_10068B0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, xpc_object_t object, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  v44 = *(v42 - 96);
  if (v44)
  {
    sub_100004A34(v44);
  }

  sub_100686358(&a37);
  if (*(v42 - 65) < 0)
  {
    operator delete(*(v42 - 88));
  }

  _Unwind_Resume(a1);
}

void sub_10068B1C8(uint64_t a1@<X0>, void **a2@<X1>, os_log_t *a3@<X2>, void *a4@<X8>)
{
  v7 = sub_100007A6C(a1, a2);
  if (a1 + 8 == v7)
  {
    if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
    {
      sub_10177868C();
    }

    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = v7;
    v9 = *(v7 + 56);
    {
      v11 = *(v8 + 64);
      *a4 = v10;
      a4[1] = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
      {
        sub_101778614();
      }
    }
  }
}

void sub_10068B2D0(uint64_t a1, void **a2)
{
  v3 = *(a1 + 400);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 392);
      if (v6)
      {
        v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Forwarding capability response", buf, 2u);
        }

        v8 = *(a1 + 96);
        v9 = *a2;
        object = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          object = xpc_null_create();
        }

        (*(*v6 + 80))(v6, v8, &object);
        xpc_release(object);
        object = 0;
        goto LABEL_14;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
  {
    sub_101778B08();
    if (!v5)
    {
      return;
    }

LABEL_14:
    sub_100004A34(v5);
    return;
  }

  if (v5)
  {
    goto LABEL_14;
  }
}

void sub_10068B454(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_10068B490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v6 = *(a1 + 400);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7 && *(a1 + 392))
    {
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      sub_1006827C4(a3);
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    sub_101777D94();
  }

  v9 = *(a1 + 432);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v13 = *(a2 + 16);
  }

  LODWORD(v11) = 2;
  sub_1006A6C00(v15, v10);
  v15[10] = 1;
  (*(*v9 + 40))(v9, __p, v14);
  sub_1006A6C9C(v15);
  sub_100584588(v10);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10068B828(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, void *a36, uint64_t a37, int a38, __int16 a39, char a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, char a52)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (v53 < 0)
  {
    operator delete(a36);
  }

  sub_100004A34(v52);
  _Unwind_Resume(a1);
}

void sub_10068B904(uint64_t a1, __int128 *a2, uint64_t *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  if (sub_10068BFF8(a3, "tel:"))
  {
    sub_100C161EC(v28, a3);
    sub_100679DF8(a1, v28, buf);
    v7 = *buf;
    v6 = *&buf[8];
    *buf = 0;
    *&buf[8] = 0;
    if (SBYTE7(v29) < 0)
    {
      operator delete(v28[0]);
      if (!v7)
      {
LABEL_74:
        v22 = *(a1 + 432);
        if (v22)
        {
          if (*(a2 + 23) < 0)
          {
            sub_100005F2C(&__dst, *a2, *(a2 + 1));
          }

          else
          {
            __dst = *a2;
            v47 = *(a2 + 2);
          }

          DWORD2(v29) = 2;
          sub_1006A6DB8(v51, v28);
          v51[10] = 0;
          (*(*v22 + 40))(v22, &__dst, v50);
          sub_1006A6C9C(v51);
          sub_100584468(v28);
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__dst);
          }
        }

        goto LABEL_71;
      }
    }

    else if (!v7)
    {
      goto LABEL_74;
    }
  }

  else
  {
    sub_1006790C4(a1, a3, v28);
    v7 = v28[0];
    v6 = v28[1];
    if (!v28[0])
    {
      *__p = 0u;
      *v32 = 0u;
      v29 = 0u;
      *v30 = 0u;
      *v28 = 0u;
      sub_100679330(a1, a3, v28);
      if (LOBYTE(v32[1]) != 1)
      {
        goto LABEL_74;
      }

      sub_100C17FB8(buf, &v29 + 8);
      sub_100679904(a1, buf, &v48);
      v7 = v48;
      v8 = v49;
      v48 = 0;
      v49 = 0;
      if (v6)
      {
        sub_100004A34(v6);
        if (v49)
        {
          sub_100004A34(v49);
        }
      }

      if (v53 < 0)
      {
        operator delete(*buf);
      }

      if (v32[1])
      {
        if (SHIBYTE(v32[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v30[1]) < 0)
        {
          operator delete(*(&v29 + 1));
        }

        if (SBYTE7(v29) < 0)
        {
          operator delete(v28[0]);
        }
      }

      v6 = v8;
      if (!v7)
      {
        goto LABEL_74;
      }
    }
  }

  v44[0] = 0;
  v44[1] = 0;
  v45 = 0;
  v37 = 0;
  LOBYTE(v38) = 0;
  v40 = 0;
  LOBYTE(v41) = 0;
  v43 = 0;
  *v28 = 0u;
  v29 = 0u;
  *v30 = 0u;
  *__p = 0u;
  *v32 = 0u;
  *v33 = 0u;
  v34 = 0u;
  LOBYTE(v35) = 0;
  sub_1009CE42C(v7, v44, v28);
  if (v43 == 1 && v42 < 0)
  {
    operator delete(v41);
  }

  if (v40 == 1 && v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v37 == 1 && v35)
  {
    v36 = v35;
    operator delete(v35);
  }

  if (v33[1])
  {
    *&v34 = v33[1];
    operator delete(v33[1]);
  }

  if (v32[0])
  {
    v32[1] = v32[0];
    operator delete(v32[0]);
  }

  if (v30[1])
  {
    __p[0] = v30[1];
    operator delete(v30[1]);
  }

  if (SBYTE7(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[0]);
  }

  v48 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v48 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v48 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_48;
    }
  }

  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    v11 = xpc_null_create();
LABEL_48:
    v48 = v11;
    goto LABEL_49;
  }

  xpc_retain(v10);
LABEL_49:
  xpc_release(v10);
  if (*(a2 + 23) >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = *a2;
  }

  v26 = xpc_string_create(v12);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  v28[0] = &v48;
  v28[1] = ims::lazuli::kTransactionId;
  sub_10000F688(v28, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  v25 = v48;
  if (v48)
  {
    xpc_retain(v48);
  }

  else
  {
    v25 = xpc_null_create();
  }

  sub_100914268(&v7[6].__r_.__value_.__l.__size_, v13, &v25);
  xpc_release(v25);
  v25 = 0;
  v14 = *(*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LOBYTE(v23) = 0;
    v24 = 0;
    sub_1009131E4(&v23, v28);
    v15 = v28[0];
    if ((SBYTE7(v29) & 0x80u) == 0)
    {
      v15 = v28;
    }

    v16 = &v7[7];
    if (SHIBYTE(v7[7].__r_.__value_.__r.__words[2]) < 0)
    {
      v16 = v16->__words[0];
    }

    *buf = 134218242;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Caching chat wrapper (%p)[%s] with ongoing INFO request", buf, 0x16u);
    if (SBYTE7(v29) < 0)
    {
      operator delete(v28[0]);
    }

    if (v24 == 1)
    {
      xpc_release(v23);
      v23 = 0;
    }
  }

  v28[0] = a2;
  v17 = sub_1006B63BC(a1 + 352, a2);
  v18 = v17;
  size = v7[6].__r_.__value_.__l.__size_;
  v19 = v7[6].__r_.__value_.__r.__words[2];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = *(v17 + 64);
  v18[2].__r_.__value_.__l.__size_ = size;
  v18[2].__r_.__value_.__r.__words[2] = v19;
  if (v21)
  {
    sub_100004A34(v21);
  }

  std::string::operator=(v18 + 3, v7 + 7);
  xpc_release(v48);
LABEL_71:
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_10068BECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (v20)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10068BFF8(uint64_t *a1, char *__s)
{
  v4 = strlen(__s);
  v5 = *(a1 + 23);
  if (v5 < 0)
  {
    v6 = a1;
    a1 = *a1;
    v5 = v6[1];
  }

  v8[0] = a1;
  v8[1] = v5;
  return sub_1006A6D04(v8, __s, v4);
}

uint64_t sub_10068C04C(uint64_t a1)
{
  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 168) == 1)
  {
    v2 = *(a1 + 144);
    if (v2)
    {
      *(a1 + 152) = v2;
      operator delete(v2);
    }
  }

  if (*(a1 + 136) == 1)
  {
    v3 = *(a1 + 112);
    if (v3)
    {
      *(a1 + 120) = v3;
      operator delete(v3);
    }
  }

  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 96) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    *(a1 + 48) = v6;
    operator delete(v6);
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_10068C104(uint64_t a1, __int128 *a2, __int128 *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v80 = 0uLL;
  v81 = 0;
  sub_100A972E8(&v80);
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  memset(v66, 0, sizeof(v66));
  v64 = 0u;
  sub_100B27D98(&v64);
  sub_100B27E08(&v64, "imdn <urn:ietf:params:imdn>");
  if (v81 >= 0)
  {
    v6 = &v80;
  }

  else
  {
    v6 = v80;
  }

  sub_100B27E1C(&v64, "imdn.Message-ID", v6);
  sub_100B27E08(&v64, "mls <http://www.gsma.com/rcs/mls>");
  ctu::base64::encode();
  if ((SBYTE7(v49) & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  sub_100B27E1C(&v64, "mls.Epoch-Authenticator", v7);
  if (SBYTE7(v49) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(__p, *(a3 + 3));
  if ((SBYTE7(v49) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100B27E1C(&v64, "mls.Era-Id", v8);
  if (SBYTE7(v49) < 0)
  {
    operator delete(__p[0]);
  }

  v63 = 0;
  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  *__p = 0u;
  sub_100BE2724(__p, "message/mls-rcs-client");
  if (!sub_10068BFF8(a3, "tel:"))
  {
    v47 = 0;
    memset(v46, 0, sizeof(v46));
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
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v30 = *(a3 + 2);
    }

    if (SHIBYTE(v81) < 0)
    {
      sub_100005F2C(&v27, v80, *(&v80 + 1));
    }

    else
    {
      v27 = v80;
      v28 = v81;
    }

    sub_10067A1B4(a1, &__dst, &v27, &v31);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(__dst);
    }

    if (v47 != 1)
    {
      v9 = 0;
      goto LABEL_35;
    }

    sub_100679904(a1, &v46[8], v19);
    v10 = v19[0];
    v9 = v19[1];
    if (v47)
    {
      sub_100C18C58(&v31);
    }

    goto LABEL_31;
  }

  sub_100C161EC(&v31, a3);
  sub_100679DF8(a1, &v31, v19);
  v10 = v19[0];
  v9 = v19[1];
  v19[0] = 0;
  v19[1] = 0;
  if ((SBYTE7(v32) & 0x80000000) == 0)
  {
LABEL_31:
    if (!v10)
    {
      goto LABEL_35;
    }

    goto LABEL_32;
  }

  operator delete(v31);
  if (!v10)
  {
LABEL_35:
    v11 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v11, OS_LOG_TYPE_ERROR))
    {
      sub_101778B70();
    }

    v12 = *(a1 + 432);
    if (v12)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v25, *a2, *(a2 + 1));
      }

      else
      {
        v25 = *a2;
        v26 = *(a2 + 2);
      }

      v24 = 5;
      (*(*v12 + 24))(v12, &v25, v23);
      sub_1006A6204(v23);
      if (SHIBYTE(v26) < 0)
      {
        v13 = &v25;
        goto LABEL_67;
      }
    }

    goto LABEL_68;
  }

LABEL_32:
  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  sub_100581E40(&v31, a3);
  sub_100BE2728(__p, a3 + 18, v18);
  sub_100B27EC8(&v64, v18, v19);
  v40 = *v19;
  *&v41 = v20;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  BYTE8(v41) = 1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&v42, *a2, *(a2 + 1));
  }

  else
  {
    v42 = *a2;
    *&v43 = *(a2 + 2);
  }

  BYTE8(v43) = 1;
  sub_1009CE42C(v10, v21, &v31);
  if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
  {
    operator delete(v42);
  }

  if (BYTE8(v41) == 1 && v40)
  {
    *(&v40 + 1) = v40;
    operator delete(v40);
  }

  if (BYTE8(v39) == 1 && v38)
  {
    *(&v38 + 1) = v38;
    operator delete(v38);
  }

  if (*(&v36 + 1))
  {
    *&v37 = *(&v36 + 1);
    operator delete(*(&v36 + 1));
  }

  if (v35)
  {
    *(&v35 + 1) = v35;
    operator delete(v35);
  }

  if (*(&v33 + 1))
  {
    *&v34 = *(&v33 + 1);
    operator delete(*(&v33 + 1));
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(v31);
  }

  if (v19[0])
  {
    v19[1] = v19[0];
    operator delete(v19[0]);
  }

  if (v18[0])
  {
    v18[1] = v18[0];
    operator delete(v18[0]);
  }

  if (SHIBYTE(v22) < 0)
  {
    v13 = v21;
LABEL_67:
    operator delete(*v13);
  }

LABEL_68:
  if (v9)
  {
    sub_100004A34(v9);
  }

  v17 = v15;
  *&v49 = v15;
  if (SHIBYTE(v52) < 0)
  {
    operator delete(*(&v51 + 1));
  }

  std::locale::~locale(v50);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v64 = v14;
  *(&v64 + *(v14 - 24)) = v16;
  *&v65 = v17;
  if (SHIBYTE(v68) < 0)
  {
    operator delete(*(&v67 + 1));
  }

  std::locale::~locale(v66);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v81) < 0)
  {
    operator delete(v80);
  }
}

void sub_10068C834(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (v71)
  {
    sub_100004A34(v71);
  }

  sub_10068C9D8(&a71);
  sub_10068C9D8(&STACK[0x310]);
  if (*(v72 - 65) < 0)
  {
    operator delete(*(v72 - 88));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10068C9D8(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_10068CB2C(uint64_t a1, __int128 *a2, __int128 *a3)
{
  dispatch_assert_queue_V2(*(a1 + 24));
  v114 = 0uLL;
  v115 = 0;
  sub_100A972E8(&v114);
  v113 = 0;
  v112 = 0u;
  v111 = 0u;
  v110 = 0u;
  v109 = 0u;
  v108 = 0u;
  v107 = 0u;
  v106 = 0u;
  v105 = 0u;
  v104 = 0u;
  v103 = 0u;
  v102 = 0u;
  v101 = 0u;
  memset(v100, 0, sizeof(v100));
  v99 = 0u;
  v98 = 0u;
  sub_100B27D98(&v98);
  sub_100B27E08(&v98, "imdn <urn:ietf:params:imdn>");
  if (v115 >= 0)
  {
    v6 = &v114;
  }

  else
  {
    v6 = v114;
  }

  sub_100B27E1C(&v98, "imdn.Message-ID", v6);
  sub_100B27E08(&v98, "mls <http://www.gsma.com/rcs/mls>");
  ctu::base64::encode();
  if ((SBYTE7(v83) & 0x80u) == 0)
  {
    v7 = __p;
  }

  else
  {
    v7 = __p[0];
  }

  sub_100B27E1C(&v98, "mls.Epoch-Authenticator", v7);
  if (SBYTE7(v83) < 0)
  {
    operator delete(__p[0]);
  }

  std::to_string(__p, *(a3 + 3));
  if ((SBYTE7(v83) & 0x80u) == 0)
  {
    v8 = __p;
  }

  else
  {
    v8 = __p[0];
  }

  sub_100B27E1C(&v98, "mls.Era-Id", v8);
  if (SBYTE7(v83) < 0)
  {
    operator delete(__p[0]);
  }

  v97 = 0;
  v96 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v85 = 0u;
  memset(v84, 0, sizeof(v84));
  *__p = 0u;
  v83 = 0u;
  sub_100BE2724(__p, "message/mls-rcs-client");
  v80 = 0;
  v79 = 0;
  v81 = 0;
  sub_100BE2728(__p, a3 + 18, &v61);
  sub_100B27EC8(&v98, &v61, &v79);
  if (v61)
  {
    *(&v61 + 1) = v61;
    operator delete(v61);
  }

  if (sub_10068BFF8(a3, "tel:"))
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&__dst, *a3, *(a3 + 1));
    }

    else
    {
      __dst = *a3;
      v60 = *(a3 + 2);
    }

    if (SHIBYTE(v115) < 0)
    {
      sub_100005F2C(&v57, v114, *(&v114 + 1));
    }

    else
    {
      v57 = v114;
      v58 = v115;
    }

    sub_10067A6E0(a1, &__dst, &v57, &v61);
    if (SHIBYTE(v58) < 0)
    {
      operator delete(v57);
    }

    if (SHIBYTE(v60) < 0)
    {
      operator delete(__dst);
    }

    if (v78)
    {
      v51 = 0;
      v52 = 0;
      sub_100C161EC(&v31, a3);
      sub_100679DF8(a1, &v31, &v51);
      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      v9 = v51;
      v49[1] = 0;
      v50 = 0;
      v49[0] = 0;
      sub_100581E40(&v31, a3);
      LOBYTE(v40) = 0;
      BYTE8(v41) = 0;
      LOBYTE(v42) = 0;
      BYTE8(v43) = 0;
      sub_1009CE42C(v9, v49, &v31);
      if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (BYTE8(v41) == 1 && v40)
      {
        *(&v40 + 1) = v40;
        operator delete(v40);
      }

      if (BYTE8(v39) == 1 && v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v36 + 1))
      {
        *&v37 = *(&v36 + 1);
        operator delete(*(&v36 + 1));
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (*(&v33 + 1))
      {
        *&v34 = *(&v33 + 1);
        operator delete(*(&v33 + 1));
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      if (SHIBYTE(v50) < 0)
      {
        operator delete(v49[0]);
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
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
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v29, *a2, *(a2 + 1));
      }

      else
      {
        v29 = *a2;
        v30 = *(a2 + 2);
      }

      sub_100BA2C04();
    }

    v10 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
    {
      sub_101778BD8();
    }

    v11 = *(a1 + 432);
    if (v11)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v55, *a2, *(a2 + 1));
      }

      else
      {
        v55 = *a2;
        v56 = *(a2 + 2);
      }

      v54 = 5;
      (*(*v11 + 24))(v11, &v55, v53);
      sub_1006A6204(v53);
      if (SHIBYTE(v56) < 0)
      {
        operator delete(v55);
      }
    }

    if (v78 == 1)
    {
      sub_100C189A8(&v61);
    }
  }

  else
  {
    v78 = 0;
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v61 = 0u;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(v27, *a3, *(a3 + 1));
    }

    else
    {
      *v27 = *a3;
      v28 = *(a3 + 2);
    }

    if (SHIBYTE(v115) < 0)
    {
      sub_100005F2C(v25, v114, *(&v114 + 1));
    }

    else
    {
      *v25 = v114;
      v26 = v115;
    }

    sub_10067A1B4(a1, v27, v25, &v61);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v28) < 0)
    {
      operator delete(v27[0]);
    }

    if (v78)
    {
      v51 = 0;
      v52 = 0;
      sub_100679904(a1, &v76 + 8, &v51);
      v12 = v51;
      sub_100C18C94(&v61, v19);
      sub_100581E40(&v31, a3);
      LOBYTE(v40) = 0;
      BYTE8(v41) = 0;
      LOBYTE(v42) = 0;
      BYTE8(v43) = 0;
      sub_1009CE42C(v12, v19, &v31);
      if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
      {
        operator delete(v42);
      }

      if (BYTE8(v41) == 1 && v40)
      {
        *(&v40 + 1) = v40;
        operator delete(v40);
      }

      if (BYTE8(v39) == 1 && v38)
      {
        *(&v38 + 1) = v38;
        operator delete(v38);
      }

      if (*(&v36 + 1))
      {
        *&v37 = *(&v36 + 1);
        operator delete(*(&v36 + 1));
      }

      if (v35)
      {
        *(&v35 + 1) = v35;
        operator delete(v35);
      }

      if (*(&v33 + 1))
      {
        *&v34 = *(&v33 + 1);
        operator delete(*(&v33 + 1));
      }

      if (SBYTE7(v32) < 0)
      {
        operator delete(v31);
      }

      if (v20 < 0)
      {
        operator delete(v19[0]);
      }

      v48 = 0;
      v46 = 0u;
      v47 = 0u;
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
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(&v29, *a2, *(a2 + 1));
      }

      else
      {
        v29 = *a2;
        v30 = *(a2 + 2);
      }

      sub_100BA5EB4();
    }

    v13 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(a1 + 96));
    if (os_log_type_enabled(*v13, OS_LOG_TYPE_ERROR))
    {
      sub_101778BA4();
    }

    v14 = *(a1 + 432);
    if (v14)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(v23, *a2, *(a2 + 1));
      }

      else
      {
        *v23 = *a2;
        v24 = *(a2 + 2);
      }

      v22 = 5;
      (*(*v14 + 24))(v14, v23, v21);
      sub_1006A6204(v21);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23[0]);
      }
    }

    if (v78 == 1)
    {
      sub_100C18C58(&v61);
    }
  }

  if (v79)
  {
    v80 = v79;
    operator delete(v79);
  }

  v18 = v16;
  *&v83 = v16;
  if (SHIBYTE(v86) < 0)
  {
    operator delete(*(&v85 + 1));
  }

  std::locale::~locale(v84);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  *&v98 = v15;
  *(&v98 + *(v15 - 24)) = v17;
  *&v99 = v18;
  if (SHIBYTE(v102) < 0)
  {
    operator delete(*(&v101 + 1));
  }

  std::locale::~locale(v100);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  if (SHIBYTE(v115) < 0)
  {
    operator delete(v114);
  }
}