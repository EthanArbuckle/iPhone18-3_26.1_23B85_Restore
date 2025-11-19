void sub_100643F18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

void sub_100644070(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1006440B0(uint64_t a1)
{
  *a1 = off_101E6C750;
  if (*(a1 + 200) == 1 && *(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 168) == 1 && *(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  v2 = *(a1 + 136);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_1000DD0AC(a1 + 96, *(a1 + 104));
  v3 = *(a1 + 88);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));

  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(a1);
}

void sub_100644188(uint64_t a1)
{
  sub_1006440B0(a1);

  operator delete();
}

uint64_t sub_1006441C0(uint64_t a1, NSObject **a2, void *a3, void *a4)
{
  *a1 = off_101E68A20;
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, "cp.ol.ctr");
  sub_1006443A8(v8, a2, &v15);
  ctu::OsLogContext::~OsLogContext(&v15);
  *a1 = off_101E6C750;
  v9 = a4[1];
  *(a1 + 48) = *a4;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "OffloadController");
  v12 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  ctu::RestModule::RestModule();
  if (v12)
  {
    dispatch_release(v12);
  }

  if (v14 < 0)
  {
    operator delete(__p);
  }

  v10 = a3[1];
  *(a1 + 80) = *a3;
  *(a1 + 88) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 96) = a1 + 104;
  *(a1 + 120) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 200) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  return a1;
}

void sub_100644330(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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

  v21 = v18[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v19);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v18);
  _Unwind_Resume(a1);
}

void *sub_1006443A8(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100644410(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_100644434(uint64_t a1)
{
  (***(a1 + 48))(&v1);
  Registry::createRestModuleOneTimeUseConnection(&v3, v1);
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (v2)
  {
    sub_100004A34(v2);
  }

  v1 = sub_100644514;
  v2 = 0;
  sub_100645C5C();
}

void sub_1006444E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
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

void sub_100644514(uint64_t a1)
{
  (***(a1 + 48))(&buf);
  ServiceMap = Registry::getServiceMap(buf);
  v3 = ServiceMap;
  if (v4 < 0)
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
  v28 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v28);
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
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
LABEL_9:
  if (*(&buf + 1))
  {
    sub_100004A34(*(&buf + 1));
  }

  if (v10)
  {
    v27 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v13 = v27;
      v27 = Mutable;
      *&buf = v13;
      sub_1000296E0(&buf);
    }

    v14 = *(a1 + 96);
    if (v14 != (a1 + 104))
    {
      do
      {
        v15 = (v14 + 4);
        if (*(v14 + 55) < 0)
        {
          v15 = *v15;
        }

        ctu::cf::MakeCFString::MakeCFString(v26, v15);
        v16 = (v14 + 7);
        if (*(v14 + 79) < 0)
        {
          v16 = *v16;
        }

        ctu::cf::MakeCFString::MakeCFString(&v25, v16);
        v17 = v27;
        ctu::cf::MakeCFString::MakeCFString(&buf, v26);
        ctu::cf::MakeCFString::MakeCFString(&v28, &v25);
        sub_100646F1C(v17, &buf, &v28);
        ctu::cf::MakeCFString::~MakeCFString(&v28);
        ctu::cf::MakeCFString::~MakeCFString(&buf);
        ctu::cf::MakeCFString::~MakeCFString(&v25);
        ctu::cf::MakeCFString::~MakeCFString(v26);
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

      while (v19 != (a1 + 104));
    }

    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 112);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v22;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I Save Bound SIM (%lu)", &buf, 0xCu);
    }

    v23 = kCommCenterPreferencesNoBackupAppID;
    (*(*v10 + 16))(v10, @"offloadBindingPairs", v27, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(*v10 + 48))(v10, v23, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    sub_1000296E0(&v27);
  }

  else
  {
    v24 = *(a1 + 40);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#I Cannot get Preference", &buf, 2u);
    }
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_100644898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100644924(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 80);
      if (v4)
      {
        (***(a1 + 48))(v21);
        ServiceMap = Registry::getServiceMap(*v21);
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
        *&buf = v7;
        v11 = sub_100009510(&v6[1].__m_.__sig, &buf);
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
LABEL_15:
            if (v22)
            {
              sub_100004A34(v22);
            }

            if (v13)
            {
              theDict = 0;
              (*(*v13 + 40))(v21, v13, @"offloadBindingPairs", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
              sub_100010180(&theDict, v21);
              sub_10000A1EC(v21);
              if (theDict)
              {
                *v21 = 0;
                v22 = v21;
                v23 = 0x4002000000;
                v24 = sub_1006458F4;
                v27[0] = 0;
                v27[1] = 0;
                v25 = sub_100645930;
                v26 = v27;
                v20[0] = _NSConcreteStackBlock;
                v20[1] = 0x40000000;
                v20[2] = sub_10064593C;
                v20[3] = &unk_101E6C798;
                v20[4] = v21;
                context = &buf;
                *&buf = _NSConcreteStackBlock;
                *(&buf + 1) = 0x40000000;
                v31 = sub_100646FC4;
                v32 = &unk_101E6C9D0;
                v33 = v20;
                CFDictionaryApplyFunction(theDict, sub_100647064, &context);
                v16 = *(a1 + 40);
                if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                {
                  shared_owners = v22[2].__shared_owners_;
                  LODWORD(buf) = 134217984;
                  *(&buf + 4) = shared_owners;
                  _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I load bound info (%lu)", &buf, 0xCu);
                }

                (*(*v4 + 24))(v4, &v22[1].__shared_weak_owners_);
                _Block_object_dispose(v21, 8);
                sub_1000DD0AC(&v26, v27[0]);
              }

              else
              {
                v19 = *(a1 + 40);
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
                {
                  *v21 = 0;
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I dictRef is null", v21, 2u);
                }
              }

              sub_10001021C(&theDict);
            }

            else
            {
              v18 = *(a1 + 40);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                *v21 = 0;
                _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Cannot get Preference", v21, 2u);
              }
            }

            if ((v14 & 1) == 0)
            {
              sub_100004A34(v12);
            }

            goto LABEL_29;
          }
        }

        else
        {
          v13 = 0;
        }

        std::mutex::unlock(v6);
        v12 = 0;
        v14 = 1;
        goto LABEL_15;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_1017767A8(v15);
  }

LABEL_29:
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_100644D40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_10000A1EC(va);
  if ((v9 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  sub_100004A34(v7);
  _Unwind_Resume(a1);
}

void sub_100644DD8(uint64_t a1, uint64_t a2, const std::string *a3, const std::string *a4, char a5)
{
  sub_10012BF3C((a1 + 176), a3);
  sub_10012BF3C((a1 + 144), a4);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v10 = a5;
  v11[0] = 0;
  v11[1] = 0;
  sub_100004AA0(v11, (a1 + 8));
  operator new();
}

void sub_100644F40(uint64_t a1, uint64_t *a2)
{
  if (!*(a1 + 128))
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

      *buf = 136315138;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I schedule SignUpForSimService for %s", buf, 0xCu);
    }

    v6 = *(a1 + 48);
    v7 = *(a1 + 24);
    v20 = v7;
    v8 = v6;
    if (v7)
    {
      dispatch_retain(v7);
      v8 = *(a1 + 48);
    }

    (**v8)(&v19);
    *v15 = v19;
    v19 = 0uLL;
    sub_100004AA0(&v17, (a1 + 8));
    v18 = v17;
    v17 = 0uLL;
    ((*v6)[94])(buf, v6, &v20, v15, &v18, a2, 10);
    v9 = *buf;
    memset(buf, 0, sizeof(buf));
    v10 = *(a1 + 136);
    *(a1 + 128) = v9;
    if (v10)
    {
      sub_100004A34(v10);
      if (*&buf[8])
      {
        sub_100004A34(*&buf[8]);
      }
    }

    if (*(&v18 + 1))
    {
      sub_100004A34(*(&v18 + 1));
    }

    if (*(&v17 + 1))
    {
      sub_100004A34(*(&v17 + 1));
    }

    if (v15[1])
    {
      sub_100004A34(v15[1]);
    }

    if (*(&v19 + 1))
    {
      sub_100004A34(*(&v19 + 1));
    }

    if (v20)
    {
      dispatch_release(v20);
    }

    *buf = *"<";
    v22 = unk_101824CC0;
    v23 = 1800;
    v15[1] = 0;
    v16 = 0;
    v15[0] = 0;
    sub_1002F3248(v15, buf, &v24, 5uLL);
    v11 = *(a1 + 128);
    v13 = 0;
    v14 = 0;
    __p = 0;
    sub_100645A60(&__p, v15[0], v15[1], (v15[1] - v15[0]) >> 3);
    (*(*v11 + 16))(v11, &__p);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    (*(**(a1 + 128) + 24))(*(a1 + 128));
    if (v15[0])
    {
      v15[1] = v15[0];
      operator delete(v15[0]);
    }
  }
}

void sub_1006451E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100645270(void *a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1[5];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) < 0)
    {
      a3 = *a3;
    }

    *buf = 136315394;
    v8 = a3;
    v9 = 2080;
    v10 = printers::asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I OffloadRecovery for SignUpForSimService(%s) is completed Success?=%s", buf, 0x16u);
  }

  v6 = a1[17];
  a1[16] = 0;
  a1[17] = 0;
  if (v6)
  {
    sub_100004A34(v6);
  }
}

void sub_100645350(__int128 *a1, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__dst, *a2, *(a2 + 1));
  }

  else
  {
    __dst = *a2;
    v10 = *(a2 + 2);
  }

  sub_10006F264(v6, a1 + 11);
  sub_10006F264(__p, a1 + 9);
  (*(*a1 + 48))(a1, &__dst, v6, __p, 0);
  if (v5 == 1 && v4 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 == 1 && v7 < 0)
  {
    operator delete(v6[0]);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__dst);
  }
}

void sub_10064543C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a15 == 1 && a14 < 0)
  {
    operator delete(__p);
  }

  if (a22 == 1 && a21 < 0)
  {
    operator delete(a16);
  }

  if (*(v22 - 25) < 0)
  {
    operator delete(*(v22 - 48));
  }

  _Unwind_Resume(exception_object);
}

void sub_1006454A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 8);
  }

  if (v3)
  {
    v5 = *(a1 + 88);
    if (v5)
    {
      v8 = std::__shared_weak_count::lock(v5);
      if (v8)
      {
        v9 = v8;
        v10 = *(a1 + 80);
        if (v10)
        {
          (*(*v10 + 16))(v10, a2, a3);
        }

        sub_100004A34(v9);
      }
    }
  }
}

void sub_100645568(void *a1, uint64_t *a2, int a3)
{
  v6 = a1[5];
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

    v15 = 136315394;
    v16 = v7;
    v17 = 2080;
    v18 = asString(a3);
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I trying to install iccid=%s useDS=%s", &v15, 0x16u);
  }

  v8 = a1[11];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = a1[10];
      if (v11)
      {
        if ((**v11)(a1[10], a2))
        {
          v12 = a1[5];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            if (*(a2 + 23) >= 0)
            {
              v13 = a2;
            }

            else
            {
              v13 = *a2;
            }

            v15 = 136315138;
            v16 = v13;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I iccid %s already installed", &v15, 0xCu);
          }

          v14 = (*v11 + 32);
          goto LABEL_18;
        }

        if (a3)
        {
          v14 = (*v11 + 8);
LABEL_18:
          (*v14)(v11, a2);
        }
      }

      sub_100004A34(v10);
    }
  }
}

void sub_100645778(uint64_t a1@<X0>, void **a2@<X1>, uint64_t a3@<X8>)
{
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_1000E0918(&v13, a1 + 96);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  v16 = a2;
  v6 = sub_100173F08(&v13, a2);
  if (*(v6 + 79) < 0)
  {
    sub_100005F2C(__p, *(v6 + 56), *(v6 + 64));
  }

  else
  {
    *__p = *(v6 + 56);
    v12 = *(v6 + 72);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      v9 = v8;
      v10 = *(a1 + 80);
      if (v10 && (**v10)(v10, __p))
      {
        *a3 = *__p;
        *(a3 + 16) = v12;
        __p[1] = 0;
        v12 = 0;
        __p[0] = 0;
        sub_100004A34(v9);
        goto LABEL_11;
      }

      sub_100004A34(v9);
    }
  }

  sub_10000501C(a3, "");
LABEL_11:
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000DD0AC(&v13, v14);
}

void sub_1006458B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, void *a16)
{
  sub_100004A34(v16);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000DD0AC(&a15, a16);
  _Unwind_Resume(a1);
}

void *sub_1006458F4(void *result, void *a2)
{
  result[5] = a2[5];
  v2 = a2 + 6;
  v3 = a2[6];
  result[6] = v3;
  v4 = result + 6;
  v5 = a2[7];
  result[7] = v5;
  if (v5)
  {
    *(v3 + 16) = v4;
    a2[5] = v2;
    *v2 = 0;
    a2[7] = 0;
  }

  else
  {
    result[5] = v4;
  }

  return result;
}

void sub_10064593C(uint64_t a1)
{
  ctu::cf::assign();
  *v5 = 0uLL;
  v6 = 0;
  v7 = 0uLL;
  v8 = 0;
  ctu::cf::assign();
  memset(&__p, 0, sizeof(__p));
  v2 = *(*(a1 + 32) + 8);
  *&v7 = v5;
  v3 = sub_100173F08(v2 + 40, v5);
  std::string::operator=((v3 + 56), &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_100645A08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100645A60(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_1000D0358(result, a4);
  }

  return result;
}

void sub_100645AC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100645B5C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100645C30);
  __cxa_rethrow();
}

void sub_100645B9C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100645BF0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100645C30(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_100645D48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100645DF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E6C928;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100645E38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100645E84(uint64_t *a1, xpc_object_t *a2)
{
  sub_100645F00(*a1, a2);
  v3 = a1[2];
  v4 = a1[3];
  v5 = (a1[1] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

void sub_100645F00(uint64_t a1, xpc_object_t *a2)
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

  sub_1000DD0AC(a1, *(a1 + 8));
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

    sub_100008EA4(&v12, object, 0);
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

    sub_100008EA4(v11, object, count);
    xpc_release(object[0]);
    for (i = v13; i != v11[1] || v12 != v11[0]; i = ++v13)
    {
      v10 = 0;
      object[0] = &v12;
      object[1] = i;
      sub_10003EAD4(object, &v10);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        *__p = 0u;
        v9 = 0u;
        *object = 0u;
        v6 = v10;
        if (v10)
        {
          xpc_retain(v10);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1006461B4(object, &v6);
        xpc_release(v6);
        sub_10064638C(a1, object);
        if (SHIBYTE(v9) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v10);
    }

    xpc_release(v11[0]);
    xpc_release(v12);
  }

  xpc_release(v3);
}

void sub_100646118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18)
{
  xpc_release(object);
  xpc_release(*(v19 - 48));
  xpc_release(v18);
  _Unwind_Resume(a1);
}

void sub_1006461B4(uint64_t a1, void **a2)
{
  v3 = *a2;
  object = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
    v4 = object;
  }

  else
  {
    v4 = xpc_null_create();
    object = v4;
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    p_object = &object;
    v6 = "first";
    sub_100006354(&p_object, &v7);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }

    *a1 = v9;
    *(a1 + 16) = v10;
    xpc_release(v7);
    p_object = &object;
    v6 = "second";
    sub_100006354(&p_object, &v7);
    __p = 0;
    v12 = 0;
    v13 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 24) = v9;
    *(a1 + 40) = v10;
    xpc_release(v7);
  }

  xpc_release(object);
}

void sub_100646318(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10064638C(uint64_t a1, void **a2)
{
  v4 = 0;
  v2 = *sub_100005C2C(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t *sub_100646464(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  __dst = 0uLL;
  v49 = 0;
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(&__dst, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v49 = *(v1 + 24);
    __dst = v3;
  }

  v46 = 0;
  v47 = 0;
  (***(v2 + 48))(&v31);
  ServiceMap = Registry::getServiceMap(v31);
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
      goto LABEL_12;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_12:
  (**v12)(&v46, v12, &__dst);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (*(&v31 + 1))
  {
    sub_100004A34(*(&v31 + 1));
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  v32 = 0u;
  v33 = 0u;
  v31 = 0u;
  std::string::operator=(&v31, (v1 + 8));
  __src[0] = 0;
  __src[1] = 0;
  v30 = 0;
  sub_100645778(v2, (v1 + 8), __src);
  if (SHIBYTE(v30) < 0)
  {
    if (!__src[1])
    {
      goto LABEL_23;
    }

    sub_100005F2C(&v51, __src[0], __src[1]);
  }

  else
  {
    if (!HIBYTE(v30))
    {
      goto LABEL_23;
    }

    v51 = *__src;
    v52 = v30;
  }

  memset(buf, 0, sizeof(buf));
  v24[0] = 0;
  sub_10016FB64(buf, &v51, v53, 1uLL);
  sub_10055D910(&v34[8], buf);
  v50 = buf;
  sub_1000087B4(&v50);
  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

LABEL_23:
  sub_100169660(&v42, "private-net-provisioning");
  sub_10012BF3C((&v32 + 8), (v2 + 176));
  sub_10012BF3C((&v35 + 8), (v2 + 144));
  if (entitlements::SignUpSIMRequest::valid(&v31))
  {
    sub_100004AA0(buf, (v2 + 8));
    v15 = *buf;
    v14 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
    }

    *(v2 + 120) = 1;
    v16 = *(v2 + 40);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I send signUpForSIMService request", buf, 2u);
    }

    v28 = 0;
    *__p = 0u;
    v27 = 0u;
    *v24 = 0u;
    v25 = 0u;
    *buf = 0u;
    v17 = v46;
    LODWORD(v50) = 18;
    BYTE4(v50) = 1;
    *&v51 = _NSConcreteStackBlock;
    *(&v51 + 1) = 1174405120;
    v52 = sub_100646AF8;
    v53[0] = &unk_101E6C998;
    v53[1] = v2;
    v53[2] = v15;
    v54 = v14;
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v1 + 31) < 0)
    {
      sub_100005F2C(&v55, *(v1 + 8), *(v1 + 16));
    }

    else
    {
      v18 = *(v1 + 8);
      v56 = *(v1 + 24);
      v55 = v18;
    }

    v57 = *(v1 + 32);
    v22 = &v51;
    (*(*v17 + 168))(v17, 10, buf, &v50, &v31, v2 + 24, &v22);
    if (SHIBYTE(v56) < 0)
    {
      operator delete(v55);
    }

    if (v54)
    {
      std::__shared_weak_count::__release_weak(v54);
    }

    if (v28 == 1 && SHIBYTE(v27) < 0)
    {
      operator delete(__p[1]);
    }

    if (LOBYTE(__p[0]) == 1 && SHIBYTE(v25) < 0)
    {
      operator delete(v24[1]);
    }

    if (v14)
    {
      std::__shared_weak_count::__release_weak(v14);
    }
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(__src[0]);
  }

  if (BYTE8(v43) == 1 && SBYTE7(v43) < 0)
  {
    operator delete(v42);
  }

  if (v41 == 1 && SHIBYTE(v40) < 0)
  {
    operator delete(*(&v39 + 1));
  }

  if (v39 == 1 && SHIBYTE(v38) < 0)
  {
    operator delete(*(&v37 + 1));
  }

  if (v37 == 1 && SHIBYTE(v36) < 0)
  {
    operator delete(*(&v35 + 1));
  }

  if (v35 == 1)
  {
    *buf = &v34[8];
    sub_1000087B4(buf);
  }

  if (v34[0] == 1 && SHIBYTE(v33) < 0)
  {
    operator delete(*(&v32 + 1));
  }

  if (SBYTE7(v32) < 0)
  {
    operator delete(v31);
  }

  if (v47)
  {
    sub_100004A34(v47);
  }

  if (SHIBYTE(v49) < 0)
  {
    operator delete(__dst);
  }

  sub_1003023A8(&v21);
  return sub_1000049E0(&v20);
}

void sub_1006469E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, char a30, uint64_t a31)
{
  v34 = *(v32 - 128);
  if (v34)
  {
    std::__shared_weak_count::__release_weak(v34);
  }

  sub_100270CFC(&a13);
  if (v31)
  {
    std::__shared_weak_count::__release_weak(v31);
  }

  if (a29 < 0)
  {
    operator delete(__p);
  }

  sub_1003EB088(&a30);
  v35 = *(v32 - 216);
  if (v35)
  {
    sub_100004A34(v35);
  }

  if (*(v32 - 185) < 0)
  {
    operator delete(*(v32 - 208));
  }

  sub_1003023A8(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_100646AF8(uint64_t a1, uint64_t *a2, char a3)
{
  v20 = a3;
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 40);
      if (v9)
      {
        *(v6 + 120) = 0;
        v10 = *(v6 + 40);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = printers::asString(&v20, v11);
          *buf = 136315138;
          *&buf[4] = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I signUpForSIMServiceWithCallback response, is success?=%s", buf, 0xCu);
        }

        v13 = *a2;
        if (*a2 && *(v13 + 24) && v20 == 1)
        {
          v24 = 0u;
          v25 = 0u;
          *__p = 0u;
          *buf = 0u;
          memset(v22, 0, sizeof(v22));
          v14 = *(v13 + 24);
          if (*(v14 + 23) < 0)
          {
            sub_100005F2C(buf, *v14, *(v14 + 1));
          }

          else
          {
            v15 = *v14;
            v22[0] = *(v14 + 2);
            *buf = v15;
          }

          if (*(v14 + 47) < 0)
          {
            sub_100005F2C(&v22[1], *(v14 + 3), *(v14 + 4));
          }

          else
          {
            v16 = *(v14 + 24);
            v22[3] = *(v14 + 5);
            *&v22[1] = v16;
          }

          sub_10006F264(__p, v14 + 3);
          v17 = *(v14 + 40);
          LOWORD(v25) = v17;
          BYTE8(v25) = 1;
          if (BYTE8(v24) == 1)
          {
            v18 = BYTE7(v24);
            if (SBYTE7(v24) < 0)
            {
              v18 = __p[1];
            }

            if (v18 && (v17 & 0x100) != 0)
            {
              sub_1006454A0(v9, a1 + 56, __p);
              if (BYTE8(v24) != 1 || (BYTE1(v25) & 1) == 0)
              {
                sub_1000D1644();
              }

              sub_100645568(v9, __p, v25);
            }
          }

          v19 = *(v6 + 128);
          if (v19)
          {
            (*(*v19 + 40))(v19, 257);
          }

          if (BYTE8(v25) == 1)
          {
            if (BYTE8(v24) == 1 && SBYTE7(v24) < 0)
            {
              operator delete(__p[0]);
            }

            if (SHIBYTE(v22[3]) < 0)
            {
              operator delete(v22[1]);
            }

            if (SHIBYTE(v22[0]) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        if ((v20 & 1) == 0 && *(a1 + 80) == 1)
        {
          sub_100644F40(v6, (a1 + 56));
        }
      }

      sub_100004A34(v8);
    }
  }
}

void sub_100646D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v22);
  _Unwind_Resume(a1);
}

char *sub_100646DE0(char *result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 5) = *(a2 + 40);
  *(result + 6) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 79) < 0)
  {
    return sub_100005F2C(result + 56, *(a2 + 56), *(a2 + 64));
  }

  v3 = *(a2 + 56);
  *(result + 9) = *(a2 + 72);
  *(result + 56) = v3;
  return result;
}

void sub_100646E44(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100646E5C(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_100646EB0(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
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

uint64_t sub_100646F1C(__CFDictionary *a1, void **a2, const void **a3)
{
  v5 = *a2;
  key = v5;
  if (v5)
  {
    CFRetain(v5);
  }

  v6 = *a3;
  v9 = v6;
  if (v6 && (CFRetain(v6), key))
  {
    CFDictionaryAddValue(a1, key, v6);
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  sub_100DA3324(&v9);
  sub_100DA3324(&key);
  return v7;
}

void sub_100646FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100646FC4(uint64_t a1, CFTypeRef cf, const void *a3)
{
  v4 = *(a1 + 32);
  if (cf)
  {
    v6 = CFGetTypeID(cf);
    if (v6 == CFStringGetTypeID())
    {
      v7 = cf;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v12 = v7;
  if (a3)
  {
    v8 = CFGetTypeID(a3);
    if (v8 == CFStringGetTypeID())
    {
      v9 = a3;
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

  v11 = v9;
  return (*(v4 + 16))(v4, &v12, &v11);
}

void sub_100647170(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_100647188(void *a1, uint64_t a2, void *a3, void *a4)
{
  *a1 = 0;
  a1[1] = 0;
  ctu::OsLogContext::OsLogContext(&v22, kCtLoggingSystemName, "ent.pnr");
  ctu::OsLogLogger::OsLogLogger(v23, &v22);
  ctu::OsLogLogger::OsLogLogger((a1 + 2), v23);
  ctu::OsLogLogger::~OsLogLogger(v23);
  ctu::OsLogContext::~OsLogContext(&v22);
  v8 = *a2;
  a1[3] = *a2;
  v9 = *(a2 + 8);
  a1[4] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    v8 = a1[3];
  }

  ServiceMap = Registry::getServiceMap(v8);
  v11 = ServiceMap;
  if (v12 < 0)
  {
    v13 = (v12 & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  std::mutex::lock(ServiceMap);
  v22.var0 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, &v22);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v18 = 0;
    v17 = 0;
  }

  std::mutex::unlock(v11);
  a1[5] = v18;
  a1[6] = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v17);
  }

  a1[7] = *a3;
  v19 = a3[1];
  a1[8] = v19;
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  a1[9] = *a4;
  v20 = a4[1];
  a1[10] = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_100647314(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

void *sub_100647368(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[4];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 2));
  v6 = a1[1];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

uint64_t sub_1006473D0(uint64_t a1)
{
  v5 = 0;
  sub_100A83764(*(a1 + 72), @"GetPhoneNumberSigningVersion", &v6);
  sub_100060DE8(&v5, &v6.__r_.__value_.__l.__data_);
  sub_10000A1EC(&v6.__r_.__value_.__l.__data_);
  if (v5)
  {
    memset(&v6, 0, sizeof(v6));
    ctu::cf::assign();
    __p = v6;
    size = HIBYTE(v6.__r_.__value_.__r.__words[2]);
    if ((v6.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v6.__r_.__value_.__l.__size_;
    }

    if (size)
    {
      v2 = std::stoul(&__p, 0, 10);
    }

    else
    {
      v2 = 2;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v2 = 2;
  }

  sub_100005978(&v5);
  return v2;
}

void sub_1006474CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    JUMPOUT(0x1006474DCLL);
  }

  JUMPOUT(0x1006474E0);
}

void sub_1006474EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_10000A1EC(va);
  JUMPOUT(0x1006474F8);
}

void sub_100647500(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1006473D0(a1);

  sub_100647554(a1, v6, a2, a3);
}

void sub_100647554(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *(a1 + 16);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = PersonalityInfo::logPrefix(*(a1 + 56));
    *buf = 136315650;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v22 = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sRequested version is %s", buf, 0x20u);
    v8 = *(a1 + 16);
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(*(a1 + 56));
    ctu::hex();
    v11 = v20 >= 0 ? &__p : __p;
    *buf = 136315650;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v22 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sPush token is [%s]", buf, 0x20u);
    if (v20 < 0)
    {
      operator delete(__p);
    }
  }

  __p = 0;
  v19 = 0;
  sub_100647860(a1, a2, &__p);
  v12 = __p;
  if (__p)
  {
    v13 = *(a1 + 16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = asString();
      *buf = 136315138;
      *&buf[4] = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Using version %s for nonce format", buf, 0xCu);
    }

    (*(*v12 + 16))(buf, v12);
    *a4 = a2;
    *(a4 + 8) = *buf;
    *(a4 + 24) = *&buf[16];
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  if (!v12)
  {
    v15 = *(a1 + 16);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(*(a1 + 56));
      v17 = asString();
      *buf = 136315650;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sUsing default nonce version %s", buf, 0x20u);
    }

    *a4 = 2;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 8) = 0;
    sub_100034C50(a4 + 8, *a3, a3[1], a3[1] - *a3);
  }
}

void sub_10064783C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_100647860(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 <= 2)
  {
LABEL_2:
    *a3 = 0;
    a3[1] = 0;
    return;
  }

  v5 = *(a1 + 40);
  if (!v5)
  {
    v7 = *(a1 + 16);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(*(a1 + 56));
      *buf = 136315394;
      *&buf[4] = v8;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#W %s%sUnable to get machine ID provider, will use default nonce version", buf, 0x16u);
    }

    goto LABEL_2;
  }

  memset(buf, 0, sizeof(buf));
  (*(*v5 + 16))(buf);
  if (*buf == *&buf[8])
  {
    v9 = *(a1 + 16);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = PersonalityInfo::logPrefix(*(a1 + 56));
      v11[0] = 136315394;
      *&v11[1] = v10;
      LOWORD(v11[3]) = 2080;
      *(&v11[3] + 2) = " ";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#W %s%sMachine ID is empty, will use default nonce version", v11, 0x16u);
    }
  }

  else
  {
    if (a2 == 4)
    {
      sub_100648484();
    }

    if (a2 == 3)
    {
      sub_100648318();
    }
  }

  *a3 = 0;
  a3[1] = 0;
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }
}

void sub_100647A44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100647A70(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  *a1 = off_101E6CA00;
  a1[2] = 0;
  a1[3] = 0;
  sub_100034C50((a1 + 1), *a2, a2[1], a2[1] - *a2);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_100034C50((a1 + 4), *a3, a3[1], a3[1] - *a3);
  return a1;
}

void sub_100647AF4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100647B10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v4 = vaddq_s64(*(a1 + 8), *(a1 + 32));
  sub_100647BA8(a2, vsubq_s64(vdupq_laneq_s64(v4, 1), v4).u64[0]);
  sub_100648070(a2, *(a2 + 8), *(a1 + 8), *(a1 + 16), *(a1 + 16) - *(a1 + 8));
  return sub_100648070(a2, *(a2 + 8), *(a1 + 32), *(a1 + 40), *(a1 + 40) - *(a1 + 32));
}

void sub_100647B84(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100647BA8(void *result, unint64_t a2)
{
  if (result[2] - *result < a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_1000CE3D4();
  }

  return result;
}

void *sub_100647C70(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  *a1 = off_101E6CA28;
  a1[2] = 0;
  a1[3] = 0;
  sub_100034C50((a1 + 1), *a2, a2[1], a2[1] - *a2);
  a1[4] = 0;
  a1[5] = 0;
  a1[6] = 0;
  sub_100034C50((a1 + 4), *a3, a3[1], a3[1] - *a3);
  return a1;
}

void sub_100647CF4(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_100647D10(char **a1@<X0>, uint64_t *a2@<X8>)
{
  memset(v6, 0, sizeof(v6));
  v4 = sub_1006485F0(v6, 1);
  if (a1 + 1 != v4)
  {
    sub_1001122C4(v4, a1[1], a1[2], a1[2] - a1[1]);
  }

  v5 = sub_100648A74(v6, 2);
  if (a1 + 4 != v5)
  {
    sub_1001122C4(v5, a1[4], a1[5], a1[5] - a1[4]);
  }

  sub_100647DCC(v6, a2);
  v7 = v6;
  sub_1000212F4(&v7);
}

void sub_100647DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000212F4(&a12);
  _Unwind_Resume(a1);
}

void sub_100647DCC(uint64_t **a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = sub_100648EF8(a1);
  sub_1000CFAD0(a2, v4);
  v9 = *a2;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 != v6)
  {
    do
    {
      v7 = *v5;
      v8 = v5[1];
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      (*(*v7 + 24))(v7, &v9);
      if (v8)
      {
        sub_100004A34(v8);
      }

      v5 += 2;
    }

    while (v5 != v6);
  }
}

void sub_100647E88(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100647EB0(void *a1)
{
  *a1 = off_101E6CA00;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100647F10(void *a1)
{
  *a1 = off_101E6CA00;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

void *sub_100647F90(void *a1)
{
  *a1 = off_101E6CA28;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  return a1;
}

void sub_100647FF0(void *a1)
{
  *a1 = off_101E6CA28;
  v2 = a1[4];
  if (v2)
  {
    a1[5] = v2;
    operator delete(v2);
  }

  v3 = a1[1];
  if (v3)
  {
    a1[2] = v3;
    operator delete(v3);
  }

  operator delete();
}

char *sub_100648070(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t __len)
{
  v5 = __dst;
  if (__len < 1)
  {
    return v5;
  }

  v6 = __len;
  v7 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (v9 - v10 < __len)
  {
    v11 = *a1;
    v12 = &v10[__len - *a1];
    if (v12 < 0)
    {
      sub_1000CE3D4();
    }

    v13 = v9 - v11;
    if (2 * v13 > v12)
    {
      v12 = 2 * v13;
    }

    if (v13 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v14 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    if (v14)
    {
      operator new();
    }

    v30 = (__dst - v11);
    v31 = (__dst - v11 + __len);
    v32 = (__dst - v11);
    do
    {
      v33 = *v7++;
      *v32++ = v33;
      --v6;
    }

    while (v6);
    v34 = *(a1 + 8) - __dst;
    memcpy(v31, __dst, v34);
    v35 = &v31[v34];
    *(a1 + 8) = v5;
    v36 = *a1;
    v37 = &v30[*a1 - v5];
    memcpy(v37, *a1, &v5[-*a1]);
    *a1 = v37;
    *(a1 + 8) = v35;
    *(a1 + 16) = 0;
    if (v36)
    {
      operator delete(v36);
    }

    return v30;
  }

  v15 = v10 - __dst;
  if (v10 - __dst >= __len)
  {
    v26 = &__dst[__len];
    v27 = &v10[-__len];
    v28 = *(a1 + 8);
    if (v10 >= __len)
    {
      do
      {
        v29 = *v27++;
        *v28++ = v29;
      }

      while (v27 != v10);
    }

    *(a1 + 8) = v28;
    if (v10 != v26)
    {
      memmove(&__dst[__len], __dst, v10 - v26);
    }

    v23 = v5;
    v24 = v7;
    v25 = v6;
    goto LABEL_27;
  }

  v17 = a4 - &__src[v15];
  if (a4 != &__src[v15])
  {
    memmove(*(a1 + 8), &__src[v15], a4 - &__src[v15]);
  }

  v18 = &v10[v17];
  *(a1 + 8) = &v10[v17];
  if (v15 >= 1)
  {
    v19 = &v5[v6];
    v20 = &v10[v17];
    if (&v18[-v6] < v10)
    {
      v21 = a4 - &v7[v6];
      v22 = a4 - v7;
      do
      {
        v5[v22++] = v5[v21++];
      }

      while (&v5[v21] < v10);
      v20 = &v5[v22];
    }

    *(a1 + 8) = v20;
    if (v18 != v19)
    {
      memmove(&v5[v6], v5, v18 - v19);
    }

    v23 = v5;
    v24 = v7;
    v25 = v10 - v5;
LABEL_27:
    memmove(v23, v24, v25);
  }

  return v5;
}

void sub_1006482B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6CA90;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10064838C(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E6CAE0;
  sub_100647A70(a1 + 3, a2, a3);
  return a1;
}

void sub_100648408(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6CAE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1006484F8(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E6CB30;
  sub_100647C70(a1 + 3, a2, a3);
  return a1;
}

void sub_100648574(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6CB30;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

char *sub_1006485F0(char ***a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while ((*v3)[8] != a2)
    {
      v3 += 2;
      if (v3 == v2)
      {
        goto LABEL_10;
      }
    }
  }

  if (v3 == v2)
  {
LABEL_10:

    sub_1006486D4();
  }

  v4 = *v3;
  if (!*v3)
  {
    return v4 + 16;
  }

  if (!v4)
  {
    return v4 + 16;
  }

  v5 = v3[1];
  if (!v5)
  {
    return v4 + 16;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = v4 + 16;
  sub_100004A34(v5);
  return v6;
}

void sub_10064889C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6CB80;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100648918(void *a1)
{
  *a1 = off_101E6CBD0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100648968(void *a1)
{
  *a1 = off_101E6CBD0;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_1006489F8(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = *a2 + 5;
  *a2 = v3;
  *a2 = sub_10099110C(v3, a1 + 16);
  v4 = byte_order::big::operator()();
  result = byte_order::big::operator()();
  *v2 = v4;
  *(v2 + 1) = result;
  return result;
}

char *sub_100648A74(char ***a1, int a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 != v2)
  {
    while ((*v3)[8] != a2)
    {
      v3 += 2;
      if (v3 == v2)
      {
        goto LABEL_10;
      }
    }
  }

  if (v3 == v2)
  {
LABEL_10:

    sub_100648B58();
  }

  v4 = *v3;
  if (!*v3)
  {
    return v4 + 16;
  }

  if (!v4)
  {
    return v4 + 16;
  }

  v5 = v3[1];
  if (!v5)
  {
    return v4 + 16;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  v6 = v4 + 16;
  sub_100004A34(v5);
  return v6;
}

void sub_100648D20(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E6CC28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100648D9C(void *a1)
{
  *a1 = off_101E6CC78;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_100648DEC(void *a1)
{
  *a1 = off_101E6CC78;
  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  operator delete();
}

uint64_t sub_100648E7C(uint64_t a1, char **a2)
{
  v2 = *a2;
  v3 = *a2 + 5;
  *a2 = v3;
  *a2 = sub_10099110C(v3, a1 + 16);
  v4 = byte_order::big::operator()();
  result = byte_order::big::operator()();
  *v2 = v4;
  *(v2 + 1) = result;
  return result;
}

uint64_t sub_100648EF8(uint64_t **a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v4 = *v1;
    v5 = v1[1];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v6 = (*(*v4 + 16))(v4);
    if (v5)
    {
      sub_100004A34(v5);
    }

    v3 += v6;
    v1 += 2;
  }

  while (v1 != v2);
  return v3;
}

void sub_100648F98(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100648FB0(void *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = off_101E9E1C8;
  v5 = a1 + 1;
  v6 = a2[1];
  v8 = *a2;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10098D218(v5, &v8);
  if (v9)
  {
    sub_100004A34(v9);
  }

  *a1 = off_101E6CCC0;
  sub_100649268((a1 + 4), a3);
  a1[157] = *(a3 + 1224);
  return a1;
}

void sub_100649058(_Unwind_Exception *a1)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

uint64_t sub_10064908C(uint64_t a1, os_log_t *a2)
{
  __p[0] = 0;
  __p[1] = 0;
  v8 = 0;
  if ((*(a1 + 88) & 1) == 0)
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "Config.xml";
      v5 = "#I No version information of %s xml";
LABEL_9:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 0xCu);
    }

    return 1;
  }

  v2 = *(a1 + 80);
  if (v2 <= 0)
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "Config.xml";
      v5 = "#I Invalid validity of %s xml";
      goto LABEL_9;
    }

    return 1;
  }

  v3 = sub_10098D2BC((a1 + 8), v2, __p);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[0]);
  }

  return v3;
}

void sub_1006491B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1006491F4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  result = *(a1 + 72);
  *a2 = result;
  a2[1].n128_u64[0] = *(a1 + 88);
  return result;
}

uint64_t sub_100649208(uint64_t a1)
{
  if (*(a1 + 88) == 1)
  {
    return *(a1 + 80);
  }

  else
  {
    return 0;
  }
}

void sub_100649230(uint64_t a1)
{
  sub_10064965C(a1);

  operator delete();
}

uint64_t sub_100649268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1006495FC(a1, a2);
  v5 = *(a2 + 40);
  *(v4 + 7) = *(a2 + 56);
  *(v4 + 40) = v5;
  sub_100649360((v4 + 64), a2 + 64);
  sub_100649458((a1 + 120), a2 + 120);
  sub_1006494C0(a1 + 656, (a2 + 656));
  sub_100649540((a1 + 720), a2 + 720);
  v6 = *(a2 + 1176);
  v7 = *(a2 + 1208);
  *(a1 + 1192) = *(a2 + 1192);
  *(a1 + 1208) = v7;
  *(a1 + 1176) = v6;
  return a1;
}

void sub_1006492EC(_Unwind_Exception *a1)
{
  if (*(v1 + 712) == 1)
  {
    sub_100009970(v1 + 688, *(v1 + 696));
  }

  if (*(v1 + 648) == 1)
  {
    sub_10038E7C0(v1 + 120);
  }

  sub_1006495A8(v1 + 64);
  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100649360(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    sub_100074920(a1, a2);
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    sub_1002CB1BC(a1 + 24, *(a2 + 24), *(a2 + 32), 0x6DB6DB6DB6DB6DB7 * ((*(a2 + 32) - *(a2 + 24)) >> 3));
    *(a1 + 48) = 1;
  }

  return a1;
}

void sub_1006493DC(_Unwind_Exception *a1)
{
  sub_100009970(v1, *(v1 + 8));
  if (*(v1 + 48) == 1)
  {
    sub_100649410(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100649410(uint64_t a1)
{
  v3 = (a1 + 24);
  sub_1002CB430(&v3);
  sub_100009970(a1, *(a1 + 8));
  return a1;
}

char *sub_100649458(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[528] = 0;
  if (*(a2 + 528) == 1)
  {
    sub_1004649DC(__dst, a2);
    __dst[528] = 1;
  }

  return __dst;
}

void sub_1006494A0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 528) == 1)
  {
    sub_10038E7C0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006494C0(uint64_t a1, __int128 *a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    v3 = *a2;
    *(a1 + 11) = *(a2 + 11);
    *a1 = v3;
    sub_100074920((a1 + 32), (a2 + 2));
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_10064951C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 56) == 1)
  {
    sub_100009970(v1 + 32, *(v1 + 40));
  }

  _Unwind_Resume(exception_object);
}

_BYTE *sub_100649540(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[448] = 0;
  if (*(a2 + 448) == 1)
  {
    sub_1004657FC(a1, a2);
    a1[448] = 1;
  }

  return a1;
}

void sub_100649588(_Unwind_Exception *exception_object)
{
  if (*(v1 + 448) == 1)
  {
    sub_10038E6A4(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1006495A8(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    sub_1002CB430(&v3);
    sub_100009970(a1, *(a1 + 8));
  }

  return a1;
}

_BYTE *sub_1006495FC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[32] = 0;
  if (*(a2 + 32) == 1)
  {
    sub_1004647EC(a1, a2);
  }

  return a1;
}

void sub_10064963C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 32) == 1)
  {
    sub_10176F9D8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10064965C(uint64_t a1)
{
  *a1 = off_101E6CCC0;
  if (*(a1 + 1200) == 1)
  {
    sub_10038E6A4(a1 + 752);
  }

  if (*(a1 + 744) == 1)
  {
    sub_100009970(a1 + 720, *(a1 + 728));
  }

  if (*(a1 + 680) == 1)
  {
    sub_10038E7C0(a1 + 152);
  }

  if (*(a1 + 144) == 1)
  {
    v3 = (a1 + 120);
    sub_1002CB430(&v3);
    sub_100009970(a1 + 96, *(a1 + 104));
  }

  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  TMKXPCServer.shutdown()();
}

uint64_t sub_100649738@<X0>(_BYTE *a1@<X8>)
{
  v35 = 0;
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
  *v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  v20 = 0u;
  sub_10000C320(&v20);
  v2 = sub_10000C030(&v21);
  v3 = sub_10000C030(v2);
  sub_10000C030(v3);
  v4 = sub_10000C030(&v21);
  sCardSerialNumberAsString();
  v5 = sub_10000C030(v4);
  sub_10000C030(v5);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v6 = sub_10000C030(&v21);
  v7 = sub_10000C030(v6);
  sub_10000C030(v7);
  v8 = sub_10000C030(&v21);
  v9 = sub_10000C030(v8);
  sub_10000C030(v9);
  v10 = sub_10000C030(&v21);
  v11 = sub_10000C030(v10);
  sub_10000C030(v11);
  v12 = sub_10000C030(&v21);
  v13 = sub_10000C030(v12);
  sub_10000C030(v13);
  v14 = sub_10000C030(&v21);
  v15 = sub_10000C030(v14);
  sub_10000C030(v15);
  sub_100061574(&v20, a1);
  *&v21 = v16;
  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23[1]);
  }

  std::locale::~locale(v22);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

BOOL sub_100649B24(void *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 24);
  v3 = v2 == a2[24];
  if (v2 == a2[24] && v2 != 0)
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

    v7 = a2[23];
    v8 = v7;
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a2 + 1);
    }

    if (v6 == v7)
    {
      if (v5 < 0)
      {
        a1 = *a1;
      }

      if (v8 < 0)
      {
        a2 = *a2;
      }

      return memcmp(a1, a2, v6) == 0;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

const char *sub_100649BB4(int a1)
{
  if ((a1 - 2) > 2)
  {
    return "kAccepted";
  }

  else
  {
    return off_101E6CF78[(a1 - 2)];
  }
}

const char *sub_100649BE0(int a1)
{
  v1 = "kUnknown";
  if (a1 == 1)
  {
    v1 = "kSource";
  }

  if (a1 == 2)
  {
    return "kTarget";
  }

  else
  {
    return v1;
  }
}

const char *sub_100649C0C(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E6CD98[(a1 - 1)];
  }
}

const char *sub_100649C38(int a1)
{
  if ((a1 - 1) > 0xE)
  {
    return "kTransferPlanListReq";
  }

  else
  {
    return off_101E6CDD0[(a1 - 1)];
  }
}

const char *sub_100649C64(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E6CE48[(a1 - 1)];
  }
}

const char *sub_100649C94(int a1)
{
  result = "kUnknown";
  if (a1 > 127)
  {
    v3 = "kNotAllowedUnknownLocation";
    v4 = "kNotAllowedReachedRegulatoryeSIMLimit";
    if (a1 != 135)
    {
      v4 = "kUnknown";
    }

    if (a1 != 134)
    {
      v3 = v4;
    }

    v5 = "kNotAllowedRegulatoryRestricted";
    v6 = "kNotAllowedUnRegulatoryRestricted";
    if (a1 != 133)
    {
      v6 = "kUnknown";
    }

    if (a1 != 132)
    {
      v5 = v6;
    }

    if (a1 <= 133)
    {
      v3 = v5;
    }

    v7 = "kNotAllowedSourceSW";
    v8 = "kNotAllowedMissingRequiredCertificate";
    if (a1 != 131)
    {
      v8 = "kUnknown";
    }

    if (a1 != 130)
    {
      v7 = v8;
    }

    v9 = "kNotAllowedHW";
    v10 = "kNotAllowedTargetSW";
    if (a1 != 129)
    {
      v10 = "kUnknown";
    }

    if (a1 != 128)
    {
      v9 = v10;
    }

    if (a1 <= 129)
    {
      v7 = v9;
    }

    if (a1 <= 131)
    {
      return v7;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 1:
        result = "kOneClick";
        break;
      case 2:
        result = "kOutOfBand";
        break;
      case 3:
        result = "kWebsheet";
        break;
      case 4:
        result = "kNoOp";
        break;
      case 5:
        result = "kOngoing";
        break;
      case 6:
        result = "kNotAllowed";
        break;
      case 7:
        result = "kOnDeviceTransferred";
        break;
      case 8:
        result = "kCarrierDirect";
        break;
      case 9:
        result = "kOneClickTc";
        break;
      case 10:
        result = "kOneClickOtp";
        break;
      case 11:
        result = "kOneClickTcOtp";
        break;
      case 16:
        result = "kIneligibleToTransfer";
        break;
      case 17:
        result = "kActivationPolicyMismatch";
        break;
      case 18:
        result = "kIneligibleToTransferForNow";
        break;
      case 32:
        result = "kUseWebService";
        break;
      default:
        return result;
    }
  }

  return result;
}

const char *sub_100649E24(char a1)
{
  if ((a1 - 1) > 3u)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E6CE68[(a1 - 1)];
  }
}

uint64_t sub_100649E54(char a1)
{
  if ((a1 - 1) > 0xFu)
  {
    return 32;
  }

  else
  {
    return byte_101825580[(a1 - 1)];
  }
}

uint64_t sub_100649EC4(unsigned int a1)
{
  result = 1;
  if (a1 <= 0x12 && ((1 << a1) & 0x701F5) != 0 || a1 - 128 < 8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100649EFC(unsigned int *a1)
{
  v1 = a1;
  v2 = *(a1 + 23);
  if (v2 < 0)
  {
    v4 = *a1;
    v3 = (*a1 + *(a1 + 1));
  }

  else
  {
    v3 = a1 + v2;
    v4 = a1;
  }

  if (v4 != v3)
  {
    do
    {
      *v4 = __tolower(*v4);
      ++v4;
    }

    while (v4 != v3);
    LOBYTE(v2) = *(v1 + 23);
  }

  if ((v2 & 0x80) != 0)
  {
    v6 = *(v1 + 1);
    if (v6 != 6)
    {
      if (v6 == 11)
      {
        v5 = **v1 == 0x72676F72702D6E69 && *(*v1 + 3) == 0x73736572676F7270;
LABEL_23:
        v8 = v5;
        return (2 * v8);
      }

      if (v6 == 23)
      {
        if (**v1 ^ 0x2D676E69646E6570 | *(*v1 + 8) ^ 0x2D656C69666F7270 | *(*v1 + 15) ^ 0x657361656C65722DLL)
        {
          return 0;
        }

        else
        {
          return 3;
        }
      }

      return 0;
    }

    v1 = *v1;
  }

  else if (v2 != 6)
  {
    if (v2 == 11)
    {
      v5 = *v1 == 0x72676F72702D6E69 && *(v1 + 3) == 0x73736572676F7270;
      goto LABEL_23;
    }

    return 0;
  }

  if (*v1 == 1769235297 && *(v1 + 2) == 25974)
  {
    return 1;
  }

  v10 = bswap64(*v1 | (*(v1 + 2) << 32));
  v11 = v10 >= 0x7573652D64730000;
  v12 = v10 > 0x7573652D64730000;
  v13 = !v11;
  return 4 * (v12 == v13);
}

const char *sub_10064A0D0(char a1)
{
  if ((a1 - 1) > 0xFu)
  {
    return "kUnknown";
  }

  else
  {
    return off_101E6CE88[(a1 - 1)];
  }
}

const char *sub_10064A100(int a1)
{
  if ((a1 - 1) > 0xD)
  {
    return "kNoError";
  }

  else
  {
    return off_101E6CF08[(a1 - 1)];
  }
}

const char *sub_10064A12C(int a1)
{
  result = "kNoError";
  if (a1 > 700099)
  {
    if (a1 == 700102)
    {
      v3 = "kInvalidTATypeResponseDisallowed";
    }

    else
    {
      v3 = "kNoError";
    }

    if (a1 == 700101)
    {
      v4 = "kInvalidTATypeResponse_OnSource_Disallowed";
    }

    else
    {
      v4 = v3;
    }

    if (a1 == 700100)
    {
      return "kInvalidTATypeResponseUnknownSubscriber";
    }

    else
    {
      return v4;
    }
  }

  else
  {
    switch(a1)
    {
      case 70001:
        result = "kCUMessage_NoToken";
        break;
      case 70002:
        result = "kCUMessage_PlanListReqFailed";
        break;
      case 70003:
        result = "kCUMessage_SessionInvalidated";
        break;
      case 70004:
        result = "kCUMessage_Timeout";
        break;
      case 70005:
        result = "kIDS_CannotReachSource";
        break;
      case 70006:
        result = "kIDS_Timeout";
        break;
      case 70007:
        result = "kIDS_UnknownSourceError";
        break;
      case 70008:
        result = "kIneligibleToTransfer";
        break;
      case 70009:
        result = "kInvalidDelegate";
        break;
      case 70010:
        result = "kInvalidTAResponse";
        break;
      case 70011:
        result = "kInvalidTSSResponse";
        break;
      case 70012:
        result = "kInvalidTSSWebServiceResponse";
        break;
      case 70013:
        result = "kInvalidWebServiceDelegate";
        break;
      case 70014:
        result = "kNoEntitlementController";
        break;
      case 70015:
        result = "kNoEntitlementSettings";
        break;
      case 70016:
        result = "kNotEntitledFromSource";
        break;
      case 70017:
        result = "kNoToken_PERSO_ADDED";
        break;
      case 70018:
        result = "kNoToken_PERSO_READY";
        break;
      case 70019:
        result = "kNoToken_TriggerPreflight";
        break;
      case 70020:
        result = "kNoToken_TriggerTransfer";
        break;
      case 70021:
        result = "kNoVinylProfile";
        break;
      case 70022:
        result = "kNoWebsheetInBuddy";
        break;
      case 70023:
        result = "kPerformTAFailed";
        break;
      case 70024:
        result = "kPerformTAWebServiceFailed";
        break;
      case 70025:
        result = "kPerformTSSFailed";
        break;
      case 70026:
        result = "kTokenGenerationError";
        break;
      case 70027:
        result = "kNotEntitledFromTarget";
        break;
      case 70028:
        result = "kNoSuchPlan_OnSource";
        break;
      case 70029:
        result = "kPlanIsInactive_OnSource";
        break;
      case 70030:
        result = "kPerformTAForTypeFailed_OnSource";
        break;
      case 70031:
        result = "kPerformTAWebserviceForTypeFailed_OnSource";
        break;
      case 70032:
        result = "kPerformTAForTokenFailed_OnSource";
        break;
      case 70033:
        result = "kSecureIntentCanceled";
        break;
      case 70034:
        result = "kConsentFailed_OnSource";
        break;
      case 70035:
        result = "kConsentDenied_OnSource";
        break;
      case 70036:
        result = "kIphonePlanTransferNotSupport";
        break;
      case 70037:
        result = "kIDS_RemoteDeviceDisconnected";
        break;
      case 70038:
        result = "kIDS_MessageSendFailed";
        break;
      case 70039:
        result = "kIDS_Failure";
        break;
      case 70040:
        result = "kCarrierDefaultError";
        break;
      case 70041:
        result = "kCarrierMaintenanceError";
        break;
      case 70042:
        result = "kCarrierBillingError";
        break;
      case 70043:
        result = "kCarrierIneligibleAccountError";
        break;
      case 70044:
        result = "kCarrierBlockedAccountError";
        break;
      case 70045:
        result = "kIDS_TimeoutWithClientAck";
        break;
      case 70046:
        result = "kPerformTAWebserviceForTypeFailed_OnSource_InternalFailure";
        break;
      case 70047:
        result = "kPerformTAForTypeFailed_OnSource_InternalFailure";
        break;
      case 70048:
        result = "kPerformTAForTokenFailed_OnSource_InternalFailure";
        break;
      case 70049:
        result = "kSecureIntentFailure";
        break;
      case 70050:
        result = "kPerformTAForTokenFailed_OnSource_WithErrorCode";
        break;
      case 70051:
        result = "kPerformTAForTypeFailed_OnSource_WithErrorCode";
        break;
      case 70052:
        result = "kPerformTAWebserviceForTypeFailed_OnSource_WithErrorCode";
        break;
      case 70053:
        result = "kInvalidTAWebServiceResponse";
        break;
      case 70054:
        result = "kPerformTAForTcFailed";
        break;
      case 70055:
        result = "kPerformTAForTcWebServiceFailed";
        break;
      case 70056:
        result = "kPerformTAForTcConsenteFailed";
        break;
      case 70057:
        result = "kPerformTAForOtpFailed";
        break;
      case 70058:
        result = "kPerformTAForOtpWebServiceFailed";
        break;
      case 70059:
        result = "kPerformTAForOtpValidationFailed";
        break;
      case 70060:
        result = "kPerformTSSWebServiceFailed";
        break;
      case 70061:
        result = "kInvalidOtp";
        break;
      case 70062:
        result = "kTcDeclined";
        break;
      case 70063:
        result = "kInvalidTAForTcResponse";
        break;
      case 70064:
        result = "kInvalidTAForOtpResponse";
        break;
      case 70065:
        result = "kInvalidTAForTcWebServiceResponse";
        break;
      case 70066:
        result = "kInvalidTAForTcConsentResponse";
        break;
      case 70067:
        result = "kInvalidTAForOtpWebServiceResponse";
        break;
      case 70068:
        result = "kInvalidTAForOtpValidationResponse";
        break;
      case 70069:
        result = "kInvalidOtpContent";
        break;
      case 70070:
        result = "kInvalidTcContent";
        break;
      case 70071:
        result = "kNoNotificationSender";
        break;
      case 70072:
        result = "kBusy";
        break;
      case 70073:
        result = "kDtoEvaluationFailed";
        break;
      case 70074:
        result = "kTAforTypeNoResponse";
        break;
      case 70075:
        result = "kTAWebserviceforTypeNoResponse";
        break;
      case 70076:
        result = "kTAforTcNoResponse";
        break;
      case 70077:
        result = "kTAWebserviceforTcNoResponse";
        break;
      case 70078:
        result = "kTAforTcConsentNoResponse";
        break;
      case 70079:
        result = "kTAforOtpNoResponse";
        break;
      case 70080:
        result = "kTAWebserviceforOtpNoResponse";
        break;
      case 70081:
        result = "kTAforOtpValidationNoResponse";
        break;
      case 70082:
        result = "kTSSNoResponse";
        break;
      case 70083:
        result = "kTSSWebserviceNoResponse";
        break;
      case 70084:
        result = "kInvalidTATypeResponse_OnSource";
        break;
      case 70085:
        result = "kInvalidTATokenResponse_OnSource";
        break;
      case 70086:
        result = "kMalformedTSSResponse";
        break;
      case 70087:
        result = "kMalformedTSSResponse_InvalidWebview";
        break;
      case 70088:
        result = "kMalformedTSSResponse_InvalidUrl";
        break;
      case 70090:
        result = "kInvalidTATypeResponse_OnSource_NoResponse";
        break;
      case 70091:
        result = "kInvalidTATokenResponse_OnSource_NoResponse";
        break;
      case 70092:
        result = "kInvalidTATokenResponse";
        break;
      case 70093:
        result = "kPerformTATokenFailed";
        break;
      case 70094:
        result = "kTAforTokenNoResponse";
        break;
      case 70095:
        result = "kIDS_ResponseTimeout";
        break;
      case 70096:
        result = "kSourceSoftwareNotSupported";
        break;
      case 70097:
        result = "kTargetSoftwareNotSupported";
        break;
      case 70098:
        result = "kOtpCancelled";
        break;
      case 70099:
        result = "kInvalidTATypeResponse_OnSource_UnknownSubscriber";
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_10064A68C(uint64_t a1, os_log_t *a2)
{
  v2 = *(a1 + 455);
  if (v2 < 0)
  {
    v2 = *(a1 + 440);
  }

  if (v2)
  {
    if ((*(a1 + 479) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 464))
      {
LABEL_6:
        if (*a1 == 7)
        {
          v3 = *a2;
          if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
          {
            v10 = 0;
            v4 = "#I Skip status report for on device transferred plan";
            v5 = &v10;
LABEL_12:
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v4, v5, 2u);
            goto LABEL_13;
          }
        }

        else
        {
          v8 = *(a1 + 1);
          if (v8 <= 0xC && ((1 << v8) & 0x1280) != 0)
          {
            v6 = *(a1 + 11) ^ 1;
            return v6 & 1;
          }

          v3 = *a2;
          if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
          {
            v9 = 0;
            v4 = "#I Skip status report for incomplete terminal states";
            v5 = &v9;
            goto LABEL_12;
          }
        }

        goto LABEL_13;
      }
    }

    else if (*(a1 + 479))
    {
      goto LABEL_6;
    }
  }

  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v4 = "#I Empty source iccid or target iccid";
    v5 = buf;
    goto LABEL_12;
  }

LABEL_13:
  v6 = 0;
  return v6 & 1;
}

void sub_10064A7C8(uint64_t a1, os_log_t *a2)
{
  v3 = *(a1 + 455);
  if (v3 < 0)
  {
    if (*(a1 + 440))
    {
      goto LABEL_3;
    }
  }

  else if (*(a1 + 455))
  {
LABEL_3:
    v4 = *a2;
    if (!os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v5 = (a1 + 432);
    if ((v3 & 0x80000000) != 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 456);
    if (*(a1 + 479) < 0)
    {
      v6 = *v6;
    }

    v7 = sub_10064A0D0(*(a1 + 1));
    v8 = sub_10064A0D0(*(a1 + 2));
    v9 = (a1 + 168);
    if (*(a1 + 191) < 0)
    {
      v9 = *v9;
    }

    v10 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v10 = *v10;
    }

    v11 = (a1 + 264);
    if (*(a1 + 287) < 0)
    {
      v11 = *v11;
    }

    v12 = *(a1 + 1225);
    v33 = 136316930;
    v34 = v5;
    v35 = 2080;
    v36 = v6;
    v37 = 2080;
    v38 = v7;
    v39 = 2080;
    v40 = v8;
    v41 = 2080;
    v42 = v9;
    v43 = 2080;
    v44 = v10;
    v45 = 2080;
    v46 = v11;
    v47 = 1024;
    v48 = v12;
    v13 = "#I pending transfer plan (%s), target iccid (%s), terminal state %s, display state %s, label (%s : %s), mdn (%s), recoveryWithoutIccid %{BOOL}d";
    v14 = v4;
    v15 = 78;
    goto LABEL_36;
  }

  v16 = *(a1 + 479);
  if (v16 < 0)
  {
    if (*(a1 + 464))
    {
      goto LABEL_18;
    }

LABEL_23:
    v22 = *(a1 + 503);
    if (v22 < 0)
    {
      v23 = *(a1 + 488);
    }

    else
    {
      v23 = *(a1 + 503);
    }

    v17 = *a2;
    v24 = os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT);
    if (v23)
    {
      if (!v24)
      {
        return;
      }

      v25 = (a1 + 480);
      if ((v22 & 0x80000000) != 0)
      {
        v25 = *v25;
      }

      v26 = sub_10064A0D0(*(a1 + 1));
      v27 = sub_10064A0D0(*(a1 + 2));
      v28 = *(a1 + 1225);
      v33 = 136315906;
      v34 = v25;
      v35 = 2080;
      v36 = v26;
      v37 = 2080;
      v38 = v27;
      v39 = 1024;
      LODWORD(v40) = v28;
      v13 = "#I pending install iccid plan target iccidHash (%s), terminal state %s, display state %s, recoveryWithoutIccid %{BOOL}d";
    }

    else
    {
      if (!v24)
      {
        return;
      }

      v29 = (a1 + 240);
      if (*(a1 + 263) < 0)
      {
        v29 = *v29;
      }

      v30 = sub_10064A0D0(*(a1 + 1));
      v31 = sub_10064A0D0(*(a1 + 2));
      v32 = *(a1 + 1225);
      v33 = 136315906;
      v34 = v29;
      v35 = 2080;
      v36 = v30;
      v37 = 2080;
      v38 = v31;
      v39 = 1024;
      LODWORD(v40) = v32;
      v13 = "#I pending install without iccid plan carrier (%s), terminal state %s, display state %s, recoveryWithoutIccid %{BOOL}d";
    }

    goto LABEL_35;
  }

  if (!*(a1 + 479))
  {
    goto LABEL_23;
  }

LABEL_18:
  v17 = *a2;
  if (!os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    return;
  }

  v18 = (a1 + 456);
  if ((v16 & 0x80000000) != 0)
  {
    v18 = *v18;
  }

  v19 = sub_10064A0D0(*(a1 + 1));
  v20 = sub_10064A0D0(*(a1 + 2));
  v21 = *(a1 + 1225);
  v33 = 136315906;
  v34 = v18;
  v35 = 2080;
  v36 = v19;
  v37 = 2080;
  v38 = v20;
  v39 = 1024;
  LODWORD(v40) = v21;
  v13 = "#I pending install iccid plan target iccid (%s), terminal state %s, display state %s, recoveryWithoutIccid %{BOOL}d";
LABEL_35:
  v14 = v17;
  v15 = 38;
LABEL_36:
  _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &v33, v15);
}

BOOL sub_10064AAD8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return 0;
  }

  if ((*(a1 + 47) & 0x8000000000000000) != 0)
  {
    if (*(a1 + 32))
    {
      return 0;
    }
  }

  else if (*(a1 + 47))
  {
    return 0;
  }

  v2 = *(a1 + 71);
  if (v2 < 0)
  {
    v2 = *(a1 + 56);
  }

  return v2 == 0;
}

uint64_t sub_10064AB14@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v37 = 0;
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
  *v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  v22 = 0u;
  sub_10000C320(&v22);
  v4 = sub_10000C030(&v23);
  v5 = a1 + 1;
  v6 = *a1;
  memset(&__p, 0, sizeof(__p));
  if (v6 != a1 + 1)
  {
    sub_10064C114((v6 + 4), &__s);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __s;
    v7 = v6[1];
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
        v8 = v6[2];
        v9 = *v8 == v6;
        v6 = v8;
      }

      while (!v9);
    }

    if (v8 != v5)
    {
      do
      {
        *(&__s.__r_.__value_.__s + 23) = 2;
        strcpy(&__s, ", ");
        std::string::append(&__p, &__s, 2uLL);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        sub_10064C114((v8 + 4), &__s);
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          p_s = &__s;
        }

        else
        {
          p_s = __s.__r_.__value_.__r.__words[0];
        }

        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__s.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __s.__r_.__value_.__l.__size_;
        }

        std::string::append(&__p, p_s, size);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

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
            v9 = *v13 == v8;
            v8 = v13;
          }

          while (!v9);
        }

        v8 = v13;
      }

      while (v13 != v5);
    }
  }

  v14 = sub_10000C030(v4);
  sub_10000C030(v14);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v15 = sub_10000C030(&v23);
  v16 = sub_10000C030(v15);
  sub_10000C030(v16);
  v17 = sub_10000C030(&v23);
  v18 = sub_10000C030(v17);
  sub_10000C030(v18);
  sub_100061574(&v22, a2);
  *&v23 = v19;
  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[1]);
  }

  std::locale::~locale(v24);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10064AEE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_10068C9D8(&a16);
  _Unwind_Resume(a1);
}

BOOL sub_10064AF30(uint64_t a1)
{
  if ((*(a1 + 23) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 8))
    {
      goto LABEL_5;
    }
  }

  else if (!*(a1 + 23))
  {
LABEL_5:
    if ((*(a1 + 47) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 32))
      {
        goto LABEL_7;
      }
    }

    else if (*(a1 + 47))
    {
      goto LABEL_7;
    }

    return 1;
  }

LABEL_7:
  v1 = *(a1 + 71);
  if (v1 < 0)
  {
    v1 = *(a1 + 56);
  }

  return v1 == 0;
}

void sub_10064AF7C(uint64_t *a1, os_log_t *a2)
{
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1;
    if (*(a1 + 23) < 0)
    {
      v4 = *a1;
    }

    v5 = a1 + 3;
    if (*(a1 + 47) < 0)
    {
      v5 = *v5;
    }

    v6 = a1 + 6;
    if (*(a1 + 71) < 0)
    {
      v6 = *v6;
    }

    v7 = a1 + 9;
    if (*(a1 + 95) < 0)
    {
      v7 = *v7;
    }

    v8 = a1 + 12;
    if (*(a1 + 119) < 0)
    {
      v8 = *v8;
    }

    v9 = a1 + 15;
    if (*(a1 + 143) < 0)
    {
      v9 = *v9;
    }

    v10 = a1 + 18;
    if (*(a1 + 167) < 0)
    {
      v10 = *v10;
    }

    v11 = a1 + 21;
    if (*(a1 + 191) < 0)
    {
      v11 = *v11;
    }

    v12 = a1[25];
    v13 = 136317186;
    v14 = v4;
    v15 = 2080;
    v16 = v5;
    v17 = 2080;
    v18 = v6;
    v19 = 2080;
    v20 = v7;
    v21 = 2080;
    v22 = v8;
    v23 = 2080;
    v24 = v9;
    v25 = 2080;
    v26 = v10;
    v27 = 2080;
    v28 = v11;
    v29 = 2048;
    v30 = v12;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I BlocklistInfo{ sourceIMEI:[%s], sourceEID:[%s], sourceICCID:[%s], targetIMEI:[%s], targetEID:[%s], targetICCID:[%s], carrierName:[%s], phoneNumber:[%s], creationDate:[%f] }", &v13, 0x5Cu);
  }
}

void sub_10064B0E4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  *(a1 + 40) = 260;
  *(a1 + 42) = 0;
  *(a1 + 44) = 0;
}

BOOL sub_10064B124(void *a1, void *a2)
{
  v2 = *(a2 + 23);
  if (v2 >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    v3 = a2[1];
  }

  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + 23);
  if (v4 < 0)
  {
    if (!a1[1])
    {
      return 0;
    }
  }

  else if (!*(a1 + 23))
  {
    return 0;
  }

  v5 = a1[1];
  if (v4 >= 0)
  {
    v5 = *(a1 + 23);
  }

  if (v5 != v3)
  {
    return 0;
  }

  if (v4 < 0)
  {
    a1 = *a1;
  }

  if (v2 < 0)
  {
    a2 = *a2;
  }

  return memcmp(a1, a2, v3) == 0;
}

uint64_t sub_10064B1B0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v34 = 0;
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
  *__p = 0u;
  v23 = 0u;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  sub_10000C320(&v19);
  v4 = sub_10000C030(&v20);
  v5 = sub_10000C030(v4);
  sub_10000C030(v5);
  v6 = sub_10000C030(&v20);
  if (*(a1 + 40) - 2 > 2)
  {
    v7 = "kAccepted";
  }

  else
  {
    v7 = off_101E6CF78[(*(a1 + 40) - 2)];
  }

  strlen(v7);
  v8 = sub_10000C030(v6);
  sub_10000C030(v8);
  sub_10000C030(&v20);
  v9 = std::ostream::operator<<();
  sub_10000C030(v9);
  v10 = sub_10000C030(&v20);
  v11 = asString();
  strlen(v11);
  v12 = sub_10000C030(v10);
  sub_10000C030(v12);
  sub_10000C030(&v20);
  v13 = std::ostream::operator<<();
  sub_10000C030(v13);
  v14 = sub_10000C030(&v20);
  std::to_string(&v18, *(a1 + 44));
  v15 = sub_10000C030(v14);
  sub_10000C030(v15);
  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  sub_100061574(&v19, a2);
  *&v20 = v16;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v21);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

_BYTE *sub_10064B544@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1009222A0();
  bzero(a2, 0x430uLL);
  if (*(a1 + 71) < 0)
  {
    sub_100005F2C(a2, *(a1 + 48), *(a1 + 56));
  }

  else
  {
    *a2 = *(a1 + 48);
    *(a2 + 2) = *(a1 + 64);
  }

  if (*(a1 + 95) < 0)
  {
    sub_100005F2C(a2 + 24, *(a1 + 72), *(a1 + 80));
  }

  else
  {
    *(a2 + 24) = *(a1 + 72);
    *(a2 + 5) = *(a1 + 88);
  }

  if (*(a1 + 119) < 0)
  {
    sub_100005F2C(a2 + 48, *(a1 + 96), *(a1 + 104));
  }

  else
  {
    a2[3] = *(a1 + 96);
    *(a2 + 8) = *(a1 + 112);
  }

  if (*(a1 + 143) < 0)
  {
    sub_100005F2C(a2 + 72, *(a1 + 120), *(a1 + 128));
  }

  else
  {
    *(a2 + 72) = *(a1 + 120);
    *(a2 + 11) = *(a1 + 136);
  }

  if (*(a1 + 215) < 0)
  {
    sub_100005F2C(a2 + 96, *(a1 + 192), *(a1 + 200));
  }

  else
  {
    a2[6] = *(a1 + 192);
    *(a2 + 14) = *(a1 + 208);
  }

  if (*(a1 + 551) < 0)
  {
    sub_100005F2C(a2 + 120, *(a1 + 528), *(a1 + 536));
  }

  else
  {
    *(a2 + 120) = *(a1 + 528);
    *(a2 + 17) = *(a1 + 544);
  }

  if (*(a1 + 191) < 0)
  {
    sub_100005F2C(a2 + 144, *(a1 + 168), *(a1 + 176));
  }

  else
  {
    a2[9] = *(a1 + 168);
    *(a2 + 20) = *(a1 + 184);
  }

  if (*(a1 + 263) < 0)
  {
    sub_100005F2C(a2 + 168, *(a1 + 240), *(a1 + 248));
  }

  else
  {
    *(a2 + 168) = *(a1 + 240);
    *(a2 + 23) = *(a1 + 256);
  }

  if (*(a1 + 287) < 0)
  {
    sub_100005F2C(a2 + 192, *(a1 + 264), *(a1 + 272));
  }

  else
  {
    a2[12] = *(a1 + 264);
    *(a2 + 26) = *(a1 + 280);
  }

  if (*(a1 + 599) < 0)
  {
    sub_100005F2C(a2 + 216, *(a1 + 576), *(a1 + 584));
  }

  else
  {
    *(a2 + 216) = *(a1 + 576);
    *(a2 + 29) = *(a1 + 592);
  }

  *(a2 + 240) = *(a1 + 294);
  if (*(a1 + 623) < 0)
  {
    sub_100005F2C(a2 + 248, *(a1 + 600), *(a1 + 608));
  }

  else
  {
    *(a2 + 248) = *(a1 + 600);
    *(a2 + 33) = *(a1 + 616);
  }

  *(a2 + 136) = *(a1 + 296);
  *(a2 + 274) = 0uLL;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  *(a2 + 37) = 0;
  if (*(a1 + 47) < 0)
  {
    sub_100005F2C(a2 + 320, *(a1 + 24), *(a1 + 32));
  }

  else
  {
    a2[20] = *(a1 + 24);
    *(a2 + 42) = *(a1 + 40);
  }

  v4 = *(a1 + 239);
  if (v4 < 0)
  {
    v4 = *(a1 + 224);
  }

  v5 = v4 == 0;
  v6 = 216;
  if (v5)
  {
    v6 = 432;
  }

  v7 = a1 + v6;
  if (*(v7 + 23) < 0)
  {
    sub_100005F2C(a2 + 344, *v7, *(v7 + 8));
  }

  else
  {
    *(a2 + 344) = *v7;
    *(a2 + 45) = *(v7 + 16);
  }

  if (*(a1 + 407) < 0)
  {
    sub_100005F2C(a2 + 368, *(a1 + 384), *(a1 + 392));
  }

  else
  {
    a2[23] = *(a1 + 384);
    *(a2 + 48) = *(a1 + 400);
  }

  if (*(a1 + 383) < 0)
  {
    sub_100005F2C(a2 + 392, *(a1 + 360), *(a1 + 368));
  }

  else
  {
    *(a2 + 392) = *(a1 + 360);
    *(a2 + 51) = *(a1 + 376);
  }

  if (*(a1 + 167) < 0)
  {
    sub_100005F2C(a2 + 416, *(a1 + 144), *(a1 + 152));
  }

  else
  {
    a2[26] = *(a1 + 144);
    *(a2 + 54) = *(a1 + 160);
  }

  *(a2 + 220) = *(a1 + 288);
  *(a2 + 448) = 0;
  *(a2 + 520) = 0;
  *(a2 + 528) = 0;
  *(a2 + 576) = 0;
  *(a2 + 700) = 0;
  *(a2 + 696) = 0;
  *(a2 + 584) = 0u;
  *(a2 + 600) = 0u;
  *(a2 + 616) = 0u;
  *(a2 + 632) = 0u;
  *(a2 + 648) = 0u;
  *(a2 + 664) = 0u;
  *(a2 + 680) = 0u;
  *(a2 + 708) = *(a1 + 304);
  *(a2 + 709) = 1;
  *(a2 + 178) = *(a1 + 308);
  *(a2 + 792) = 0;
  *(a2 + 800) = 0;
  *(a2 + 824) = 0;
  *(a2 + 832) = 0;
  *(a2 + 856) = 0;
  *(a2 + 900) = 0;
  *(a2 + 904) = 0;
  *(a2 + 916) = 0;
  *(a2 + 920) = 0;
  *(a2 + 928) = 0;
  *(a2 + 936) = 0;
  *(a2 + 972) = 0;
  *(a2 + 976) = 0;
  *(a2 + 984) = 0;
  *(a2 + 992) = 0;
  result = a2 + 1000;
  v9 = (a1 + 624);
  a2[45] = 0u;
  a2[46] = 0u;
  a2[47] = 0u;
  *(a2 + 768) = 0;
  *(a2 + 216) = 0;
  *(a2 + 448) = 0;
  *(a2 + 872) = 0u;
  *(a2 + 111) = 0;
  *(a2 + 912) = 0;
  *(a2 + 227) = 0;
  *(a2 + 968) = 0;
  a2[59] = 0u;
  *(a2 + 120) = 0;
  if (*(a1 + 647) < 0)
  {
    v10 = *(a1 + 632);
    if (v10)
    {
      result = sub_100005F2C(result, *v9, v10);
      goto LABEL_58;
    }

LABEL_59:
    v11 = 0;
    *result = 0;
    goto LABEL_60;
  }

  if (!*(a1 + 647))
  {
    goto LABEL_59;
  }

  *result = *v9;
  *(a2 + 127) = *(a1 + 640);
LABEL_58:
  v11 = 1;
LABEL_60:
  *(a2 + 1024) = v11;
  *(a2 + 1032) = 0;
  *(a2 + 1056) = 0;
  *(a2 + 532) = 0;
  *(a2 + 1066) = 0;
  return result;
}

void sub_10064B9D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  if (*(v9 + 967) < 0)
  {
    operator delete(*v12);
  }

  sub_10026BE9C(v9 + 744);
  sub_1000087B4(&a9);
  if (*(v9 + 695) < 0)
  {
    operator delete(*(v9 + 672));
  }

  if (*(v9 + 671) < 0)
  {
    operator delete(*(v9 + 648));
  }

  if (*(v9 + 647) < 0)
  {
    operator delete(*(v9 + 624));
  }

  if (*(v9 + 623) < 0)
  {
    operator delete(*(v9 + 600));
  }

  sub_10038E598(v9 + 528);
  sub_1000D4550(v9 + 448);
  if (*(v9 + 439) < 0)
  {
    operator delete(*(v9 + 416));
  }

  if (*(v9 + 415) < 0)
  {
    operator delete(*v11);
  }

  if (*(v9 + 391) < 0)
  {
    operator delete(*(v9 + 368));
  }

  if (*(v9 + 367) < 0)
  {
    operator delete(*v10);
  }

  if (*(v9 + 343) < 0)
  {
    operator delete(*(v9 + 320));
  }

  if (*(v9 + 319) < 0)
  {
    operator delete(*(v9 + 296));
  }

  if (*(v9 + 271) < 0)
  {
    operator delete(*(v9 + 248));
  }

  if (*(v9 + 239) < 0)
  {
    operator delete(*(v9 + 216));
  }

  if (*(v9 + 215) < 0)
  {
    operator delete(*(v9 + 192));
  }

  if (*(v9 + 191) < 0)
  {
    operator delete(*(v9 + 168));
  }

  if (*(v9 + 167) < 0)
  {
    operator delete(*(v9 + 144));
  }

  if (*(v9 + 143) < 0)
  {
    operator delete(*(v9 + 120));
  }

  if (*(v9 + 119) < 0)
  {
    operator delete(*(v9 + 96));
  }

  if (*(v9 + 95) < 0)
  {
    operator delete(*(v9 + 72));
  }

  if (*(v9 + 71) < 0)
  {
    operator delete(*(v9 + 48));
  }

  if (*(v9 + 47) < 0)
  {
    operator delete(*(v9 + 24));
  }

  if (*(v9 + 23) < 0)
  {
    operator delete(*v9);
  }

  _Unwind_Resume(a1);
}

void sub_10064BBE8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 23);
  if ((v2 & 0x80u) != 0)
  {
    v2 = *(a2 + 8);
  }

  if (v2)
  {
    std::string::operator=((a1 + 24), a2);
    if (*(a2 + 25) == 1)
    {
      *(a1 + 294) = *(a2 + 24);
    }

    if (*(a2 + 56) == 1)
    {
      std::string::operator=((a1 + 240), (a2 + 32));
    }

    if (*(a2 + 88) == 1)
    {
      std::string::operator=((a1 + 264), (a2 + 64));
    }

    if (*(a2 + 120) == 1)
    {
      v5 = *(a2 + 119);
      if ((v5 & 0x80u) != 0)
      {
        v5 = *(a2 + 104);
      }

      if (v5)
      {
        std::string::operator=((a1 + 144), (a2 + 96));
      }
    }

    if (*(a2 + 152) == 1)
    {
      std::string::operator=((a1 + 576), (a2 + 128));
    }

    if (*(a2 + 184) == 1)
    {
      v6 = *(a2 + 183);
      if ((v6 & 0x80u) != 0)
      {
        v6 = *(a2 + 168);
      }

      if (v6)
      {
        std::string::operator=((a1 + 168), (a2 + 160));
      }
    }

    if (*(a2 + 193) == 1)
    {
      *(a1 + 297) = *(a2 + 192);
    }

    std::string::operator=((a1 + 600), (a2 + 200));
    *(a1 + 295) = *(a2 + 224);
    *(a1 + 290) = *(a2 + 225);
    *(a1 + 296) = *(a2 + 226);
    if (*(a2 + 256) == 1)
    {
      std::string::operator=((a1 + 624), (a2 + 232));
    }

    v7 = *(a2 + 264);
    *(a1 + 664) = *(a2 + 272);
    *(a1 + 656) = v7;
    if (*(a2 + 193) == 1)
    {
      *(a1 + 297) = *(a2 + 192);
    }

    *(a1 + 648) = *(a2 + 280);
    if ((*(a1 + 191) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 176))
      {
        return;
      }
    }

    else if (!*(a1 + 191))
    {
      return;
    }

    if ((*(a1 + 71) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 56))
      {
LABEL_40:
        *__p = 0u;
        v10 = 0u;
        *v8 = 0u;
        sub_100A34BC8(v8);
        std::string::operator=((a1 + 48), v8);
        std::string::operator=((a1 + 72), &__p[1]);
        if (SHIBYTE(v10) < 0)
        {
          operator delete(__p[1]);
        }

        if (SHIBYTE(__p[0]) < 0)
        {
          operator delete(v8[0]);
        }

        return;
      }
    }

    else if (!*(a1 + 71))
    {
      goto LABEL_40;
    }

    if ((*(a1 + 95) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 80))
      {
        return;
      }
    }

    else if (*(a1 + 95))
    {
      return;
    }

    goto LABEL_40;
  }
}

const char *sub_10064BE1C(int a1)
{
  v1 = "TransferFlowUnknown";
  if (a1 == 2)
  {
    v1 = "TransferFlowPostBuddy";
  }

  if (a1 == 1)
  {
    return "TransferFlowBuddy";
  }

  else
  {
    return v1;
  }
}

const char *sub_10064BE48(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "kCPMetricsTransferStatusUnknown";
  }

  else
  {
    return off_101E6CF90[(a1 - 1)];
  }
}

const char *sub_10064BE90(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return "kCPMetricsTransferFailureInternal";
  }

  else
  {
    return off_101E6CFC8[(a1 - 1)];
  }
}

const char *sub_10064BEBC(int a1)
{
  if ((a1 - 1) > 6)
  {
    return "kCPMetricsTransferFlowTypeUnknown";
  }

  else
  {
    return off_101E6D028[(a1 - 1)];
  }
}

uint64_t sub_10064BEE8(uint64_t result, int a2)
{
  if (a2)
  {
    if ((*(result + 36) & 1) == 0)
    {
      *(result + 32) = a2;
      *(result + 36) = 1;
    }
  }

  return result;
}

uint64_t sub_10064BF04(uint64_t result, int a2)
{
  if (a2 != 70000 && (*(result + 44) & 1) == 0)
  {
    *(result + 40) = a2;
    *(result + 44) = 1;
  }

  return result;
}

uint64_t sub_10064BF28(uint64_t a1)
{
  if (*(a1 + 36) == 1 && *(a1 + 32))
  {
    v1 = 1;
  }

  else
  {
    v2 = *(a1 + 8);
    if (v2 == (a1 + 16))
    {
      v1 = 0;
    }

    else
    {
      do
      {
        v1 = *(v2 + 88) | *(v2 + 83);
        if (v1)
        {
          break;
        }

        v3 = v2[1];
        if (v3)
        {
          do
          {
            v4 = v3;
            v3 = *v3;
          }

          while (v3);
        }

        else
        {
          do
          {
            v4 = v2[2];
            v5 = *v4 == v2;
            v2 = v4;
          }

          while (!v5);
        }

        v2 = v4;
      }

      while (v4 != (a1 + 16));
    }
  }

  return v1 & 1;
}

uint64_t sub_10064BFAC(void *a1, void *a2, void *a3)
{
  if (a1 == a2)
  {
    return 1;
  }

  v6 = a1;
  while (1)
  {
    v7 = *(v6 + 55);
    if (v7 >= 0)
    {
      v8 = *(v6 + 55);
    }

    else
    {
      v8 = v6[5];
    }

    v9 = *(a3 + 55);
    v10 = v9;
    if ((v9 & 0x80u) != 0)
    {
      v9 = a3[5];
    }

    if (v8 != v9)
    {
      break;
    }

    v11 = v7 >= 0 ? v6 + 4 : v6[4];
    v12 = v10 >= 0 ? a3 + 4 : a3[4];
    if (memcmp(v11, v12, v8))
    {
      break;
    }

    v13 = *(v6 + 79);
    if (v13 >= 0)
    {
      v14 = *(v6 + 79);
    }

    else
    {
      v14 = v6[8];
    }

    v15 = *(a3 + 79);
    v16 = v15;
    if ((v15 & 0x80u) != 0)
    {
      v15 = a3[8];
    }

    if (v14 != v15)
    {
      break;
    }

    v17 = v13 >= 0 ? v6 + 7 : v6[7];
    v18 = v16 >= 0 ? a3 + 7 : a3[7];
    if (memcmp(v17, v18, v14))
    {
      break;
    }

    v19 = v6[1];
    v20 = v6;
    if (v19)
    {
      do
      {
        v6 = v19;
        v19 = *v19;
      }

      while (v19);
    }

    else
    {
      do
      {
        v6 = v20[2];
        v21 = *v6 == v20;
        v20 = v6;
      }

      while (!v21);
    }

    v22 = a3[1];
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
        v23 = a3[2];
        v21 = *v23 == a3;
        a3 = v23;
      }

      while (!v21);
    }

    a3 = v23;
    if (v6 == a2)
    {
      return 1;
    }
  }

  return 0;
}

void sub_10064C114(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::operator+<char>();
  v4 = std::string::append(&v15, ", ", 2uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v16.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v16.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v8 = *(a1 + 24);
  v7 = a1 + 24;
  v6 = v8;
  v9 = *(v7 + 23);
  if (v9 >= 0)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  if (v9 >= 0)
  {
    v11 = *(v7 + 23);
  }

  else
  {
    v11 = *(v7 + 8);
  }

  v12 = std::string::append(&v16, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v17.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v17, ")", 1uLL);
  *a2 = *v14;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }
}

void sub_10064C218(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (*(v21 - 25) < 0)
  {
    operator delete(*(v21 - 48));
  }

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

void sub_10064C264(const char *a1@<X0>, void *a2@<X8>)
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

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  if (xpc_get_type(v18) == &_xpc_type_dictionary)
  {
    v16 = xpc_string_create("com.apple.commcenter.mobile-helper-xpc");
    if (!v16)
    {
      v16 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServiceXPCName;
    sub_10000F688(&v14, &v16, &v17);
    xpc_release(v17);
    v17 = 0;
    xpc_release(v16);
    v16 = 0;
    v12 = xpc_string_create("CommCenterMobileHelperNotification");
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServiceNotificationName;
    sub_10000F688(&v14, &v12, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v12);
    v12 = 0;
    v10 = xpc_string_create("CommCenterMobileHelperServer");
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServerHostName;
    sub_10000F688(&v14, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    v8 = xpc_string_create(a1);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kClientHostName;
    sub_10000F688(&v14, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
    v8 = 0;
  }

  *a2 = 0;
  a2[1] = 0;
  v7 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v7 = xpc_null_create();
  }

  TelephonyXPC::Client::create();
  xpc_release(v7);
  xpc_release(v18);
}

void sub_10064C518(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, xpc_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  xpc_release(object);
  xpc_release(*(v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10064C564(int a1, CFStringRef theString, const __CFString *a3, const void *a4)
{
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
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  *buffer = 0u;
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
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  *__s = 0u;
  v46 = 0u;
  v6 = 0x500000002;
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u) || !CFStringGetCString(a3, __s, 256, 0x8000100u))
  {
    return v6;
  }

  v43 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v43 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v43 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_11;
  }

  v9 = xpc_null_create();
LABEL_10:
  v43 = v9;
LABEL_11:
  xpc_release(v8);
  v42 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v42 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v42 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_19;
  }

  v12 = xpc_null_create();
LABEL_18:
  v42 = v12;
LABEL_19:
  xpc_release(v11);
  v39 = 0;
  v38 = 3760250881;
  v40 = 0;
  v41 = 0;
  v36[0] = 0;
  v36[1] = 0;
  v37 = 0;
  sub_10000501C(v36, buffer);
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  sub_10000501C(v34, __s);
  if (v37 >= 0)
  {
    v13 = v36;
  }

  else
  {
    v13 = v36[0];
  }

  v32 = xpc_string_create(v13);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  __p = &v43;
  v24 = "AppID";
  sub_10000F688(&__p, &v32, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v32);
  v32 = 0;
  if (v35 >= 0)
  {
    v14 = v34;
  }

  else
  {
    v14 = v34[0];
  }

  v30 = xpc_string_create(v14);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  __p = &v43;
  v24 = "Key";
  sub_10000F688(&__p, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  if (!a4)
  {
    bytes[0] = 0;
    v26 = xpc_data_create(bytes, 1uLL);
    if (!v26)
    {
      v26 = xpc_null_create();
    }

    __p = &v43;
    v24 = "ValueData";
    sub_10000F688(&__p, &v26, &v27);
    xpc_release(v27);
    v27 = 0;
    xpc_release(v26);
    v26 = 0;
    goto LABEL_37;
  }

  Data = CFPropertyListCreateData(kCFAllocatorDefault, a4, kCFPropertyListXMLFormat_v1_0, 0, 0);
  v16 = Data;
  if (Data)
  {
    BytePtr = CFDataGetBytePtr(Data);
    Length = CFDataGetLength(v16);
    v28 = xpc_data_create(BytePtr, Length);
    if (!v28)
    {
      v28 = xpc_null_create();
    }

    __p = &v43;
    v24 = "ValueData";
    sub_10000F688(&__p, &v28, &v29);
    xpc_release(v29);
    v29 = 0;
    xpc_release(v28);
    v28 = 0;
    CFRelease(v16);
LABEL_37:
    sub_10000501C(&__p, "PreferencesSetValue");
    v22 = v43;
    if (v43)
    {
      xpc_retain(v43);
    }

    else
    {
      v22 = xpc_null_create();
    }

    TelephonyXPC::Client::performWithBlockingSyncReply();
    xpc_release(v22);
    if (v25 < 0)
    {
      operator delete(__p);
    }

    if (v38)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_10064CB44(&v38, &__p);
        sub_1017767EC();
      }

      v19 = 0x500000000;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    goto LABEL_48;
  }

  v19 = 0x500000000;
  v20 = 2;
LABEL_48:
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34[0]);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v36[0]);
  }

  if (SHIBYTE(v41) < 0)
  {
    operator delete(v39);
  }

  xpc_release(v42);
  xpc_release(v43);
  return v19 | v20;
}

void sub_10064CA2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, xpc_object_t object, xpc_object_t a44)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10064CB44@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  *__src = 0u;
  *v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  sub_10000D518(&v14);
  v4 = sub_10000C030(&v14);
  sub_100652258(*a1, &__p);
  v5 = sub_10000C030(v4);
  sub_10000C030(v5);
  if (v13 < 0)
  {
    operator delete(__p);
  }

  if ((*(a1 + 31) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 16))
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (*(a1 + 31))
  {
LABEL_7:
    v6 = sub_10000C030(&v14);
    v7 = sub_10000C030(v6);
    sub_10000C030(v7);
  }

LABEL_8:
  if ((BYTE8(v20) & 0x10) != 0)
  {
    v9 = v20;
    if (v20 < __src[1])
    {
      *&v20 = __src[1];
      v9 = __src[1];
    }

    v10 = __src[0];
  }

  else
  {
    if ((BYTE8(v20) & 8) == 0)
    {
      v8 = 0;
      a2[23] = 0;
      goto LABEL_21;
    }

    v10 = *(&v15 + 1);
    v9 = *(&v16 + 1);
  }

  v8 = v9 - v10;
  if ((v9 - v10) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v8 >= 0x17)
  {
    operator new();
  }

  a2[23] = v8;
  if (v8)
  {
    memmove(a2, v10, v8);
  }

LABEL_21:
  a2[v8] = 0;
  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[1]);
  }

  std::locale::~locale(&v15);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10064CE30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10064CE74(int a1, CFStringRef theString, const __CFString *a3, CFPropertyListRef *a4)
{
  *a4 = 0;
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
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *buffer = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *__s = 0u;
  v41 = 0u;
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u) || !CFStringGetCString(a3, __s, 256, 0x8000100u))
  {
    return 2;
  }

  v37 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v37 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v37 = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_12;
  }

  v9 = xpc_null_create();
LABEL_11:
  v37 = v9;
LABEL_12:
  xpc_release(v7);
  v36 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v36 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v36 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_20;
  }

  v12 = xpc_null_create();
LABEL_19:
  v36 = v12;
LABEL_20:
  xpc_release(v11);
  v33 = 0;
  v32 = 3760250881;
  v34 = 0;
  v35 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  sub_10000501C(v30, buffer);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_10000501C(v28, __s);
  if (v31 >= 0)
  {
    v13 = v30;
  }

  else
  {
    v13 = v30[0];
  }

  v26 = xpc_string_create(v13);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  __p[0] = &v37;
  __p[1] = "AppID";
  sub_10000F688(__p, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  if (v29 >= 0)
  {
    v14 = v28;
  }

  else
  {
    v14 = v28[0];
  }

  v24 = xpc_string_create(v14);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  __p[0] = &v37;
  __p[1] = "Key";
  sub_10000F688(__p, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  sub_10000501C(__p, "PreferencesCopyValue");
  v21 = v37;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v21 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v21);
  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (v32)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v32, __p);
      sub_101776850();
    }

    v15 = 0x500000000;
    v16 = 1;
    goto LABEL_51;
  }

  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v19[0] = &v36;
  v19[1] = "PreferencesCopyValue";
  sub_100006354(v19, &v20);
  xpc::dyn_cast_or_default();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *format;
  v23 = v39;
  format[1] = 0;
  v39 = 0;
  format[0] = 0;
  xpc_release(v20);
  v17 = __p[0];
  if (__p[1] == __p[0])
  {
    v16 = 0;
    v15 = 0;
    if (!__p[0])
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (!__p[0])
  {
    goto LABEL_45;
  }

  v18 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, __p[0], __p[1] - __p[0], kCFAllocatorNull);
  if (v18)
  {
    format[0] = kCFPropertyListXMLFormat_v1_0;
    *a4 = CFPropertyListCreateWithData(kCFAllocatorDefault, v18, 0, format, 0);
    CFRelease(v18);
LABEL_45:
    v16 = 0;
    v15 = 0;
    goto LABEL_49;
  }

  v15 = 0xC00000000;
  v16 = 1;
LABEL_49:
  v17 = __p[0];
  if (__p[0])
  {
LABEL_50:
    __p[1] = v17;
    operator delete(v17);
  }

LABEL_51:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  xpc_release(v36);
  xpc_release(v37);
  return v15 | v16;
}

void sub_10064D32C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, xpc_object_t object, xpc_object_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  xpc_release(object);
  xpc_release(a44);
  _Unwind_Resume(a1);
}

uint64_t sub_10064D454(int a1, CFStringRef theString, const __CFString *a3, CFPropertyListRef *a4)
{
  *a4 = 0;
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
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  *buffer = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *__s = 0u;
  v41 = 0u;
  if (!CFStringGetCString(theString, buffer, 256, 0x8000100u) || !CFStringGetCString(a3, __s, 256, 0x8000100u))
  {
    return 2;
  }

  v37 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v37 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v37 = v7;
    if (!v7)
    {
      v9 = xpc_null_create();
      v7 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_12;
  }

  v9 = xpc_null_create();
LABEL_11:
  v37 = v9;
LABEL_12:
  xpc_release(v7);
  v36 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v36 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v36 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_20;
  }

  v12 = xpc_null_create();
LABEL_19:
  v36 = v12;
LABEL_20:
  xpc_release(v11);
  v33 = 0;
  v32 = 3760250881;
  v34 = 0;
  v35 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  sub_10000501C(v30, buffer);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_10000501C(v28, __s);
  if (v31 >= 0)
  {
    v13 = v30;
  }

  else
  {
    v13 = v30[0];
  }

  v26 = xpc_string_create(v13);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  __p[0] = &v37;
  __p[1] = "AppID";
  sub_10000F688(__p, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  if (v29 >= 0)
  {
    v14 = v28;
  }

  else
  {
    v14 = v28[0];
  }

  v24 = xpc_string_create(v14);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  __p[0] = &v37;
  __p[1] = "Key";
  sub_10000F688(__p, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  sub_10000501C(__p, "PreferencesCopyAppValue");
  v21 = v37;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v21 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v21);
  v21 = 0;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (v32)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v32, __p);
      sub_1017768B4();
    }

    v15 = 0x500000000;
    v16 = 1;
    goto LABEL_51;
  }

  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v19[0] = &v36;
  v19[1] = "PreferencesCopyAppValue";
  sub_100006354(v19, &v20);
  xpc::dyn_cast_or_default();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = *format;
  v23 = v39;
  format[1] = 0;
  v39 = 0;
  format[0] = 0;
  xpc_release(v20);
  v17 = __p[0];
  if (__p[1] == __p[0])
  {
    v16 = 0;
    v15 = 0;
    if (!__p[0])
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  if (!__p[0])
  {
    goto LABEL_45;
  }

  v18 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, __p[0], __p[1] - __p[0], kCFAllocatorNull);
  if (v18)
  {
    format[0] = kCFPropertyListXMLFormat_v1_0;
    *a4 = CFPropertyListCreateWithData(kCFAllocatorDefault, v18, 0, format, 0);
    CFRelease(v18);
LABEL_45:
    v16 = 0;
    v15 = 0;
    goto LABEL_49;
  }

  v15 = 0xC00000000;
  v16 = 1;
LABEL_49:
  v17 = __p[0];
  if (__p[0])
  {
LABEL_50:
    __p[1] = v17;
    operator delete(v17);
  }

LABEL_51:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  xpc_release(v36);
  xpc_release(v37);
  return v15 | v16;
}

void sub_10064D90C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, xpc_object_t object, xpc_object_t a44)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  xpc_release(object);
  xpc_release(a44);
  _Unwind_Resume(a1);
}

uint64_t sub_10064DA34(uint64_t a1, char *a2, char *a3, char *a4)
{
  v40 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v40 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v40 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_9;
  }

  v9 = xpc_null_create();
LABEL_8:
  v40 = v9;
LABEL_9:
  xpc_release(v8);
  v39 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v39 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v39 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_17;
  }

  v12 = xpc_null_create();
LABEL_16:
  v39 = v12;
LABEL_17:
  xpc_release(v11);
  v35 = 3760250881;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  if (a2)
  {
    sub_10000501C(v33, a2);
  }

  v31[0] = 0;
  v31[1] = 0;
  v32 = 0;
  if (a3)
  {
    sub_10000501C(v31, a3);
  }

  v29[0] = 0;
  v29[1] = 0;
  v30 = 0;
  if (a4)
  {
    sub_10000501C(v29, a4);
  }

  if (v34 >= 0)
  {
    v13 = v33;
  }

  else
  {
    v13 = v33[0];
  }

  v27 = xpc_string_create(v13);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  __p = &v40;
  v21 = "Path";
  sub_10000F688(&__p, &v27, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v27);
  v27 = 0;
  if (v32 >= 0)
  {
    v14 = v31;
  }

  else
  {
    v14 = v31[0];
  }

  v25 = xpc_string_create(v14);
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  __p = &v40;
  v21 = "LinkPath";
  sub_10000F688(&__p, &v25, &v26);
  xpc_release(v26);
  v26 = 0;
  xpc_release(v25);
  v25 = 0;
  if (v30 >= 0)
  {
    v15 = v29;
  }

  else
  {
    v15 = v29[0];
  }

  v23 = xpc_string_create(v15);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  __p = &v40;
  v21 = "Domain";
  sub_10000F688(&__p, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  sub_10000501C(&__p, "DomainSymlink");
  v19 = v40;
  if (v40)
  {
    xpc_retain(v40);
  }

  else
  {
    v19 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v19);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v35)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v35, &__p);
      sub_101776918();
    }

    v16 = 0x500000000;
    v17 = 1;
  }

  else
  {
    v17 = 0;
    v16 = 0;
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[0]);
  }

  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[0]);
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v36);
  }

  xpc_release(v39);
  xpc_release(v40);
  return v16 | v17;
}

uint64_t sub_10064DF28(uint64_t a1, char *a2, char *a3)
{
  v33 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v33 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v33 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v33 = v7;
LABEL_9:
  xpc_release(v6);
  v32 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v32 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v32 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_17;
  }

  v10 = xpc_null_create();
LABEL_16:
  v32 = v10;
LABEL_17:
  xpc_release(v9);
  v29 = 0;
  v28 = 3760250881;
  v30 = 0;
  v31 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  if (a2)
  {
    sub_10000501C(v26, a2);
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  if (a3)
  {
    sub_10000501C(v24, a3);
  }

  if (v27 >= 0)
  {
    v11 = v26;
  }

  else
  {
    v11 = v26[0];
  }

  v22 = xpc_string_create(v11);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  __p = &v33;
  v18 = "Path";
  sub_10000F688(&__p, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  if (v25 >= 0)
  {
    v12 = v24;
  }

  else
  {
    v12 = v24[0];
  }

  v20 = xpc_string_create(v12);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  __p = &v33;
  v18 = "LinkPath";
  sub_10000F688(&__p, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  sub_10000501C(&__p, "BundleSymlink");
  v16 = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v16 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v16);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v28)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v28, &__p);
      sub_10177697C();
    }

    v13 = 0x500000000;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  xpc_release(v32);
  xpc_release(v33);
  return v13 | v14;
}

uint64_t sub_10064E360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v29 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v29 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_9;
  }

  v7 = xpc_null_create();
LABEL_8:
  v29 = v7;
LABEL_9:
  xpc_release(v6);
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v28 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v28 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_17;
  }

  v10 = xpc_null_create();
LABEL_16:
  v28 = v10;
LABEL_17:
  xpc_release(v9);
  v25 = 0;
  v24 = 3760250881;
  v26 = 0;
  v27 = 0;
  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  v22 = xpc_string_create(v11);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  __p = &v29;
  v18 = "Path";
  sub_10000F688(&__p, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  if (*(a3 + 23) >= 0)
  {
    v12 = a3;
  }

  else
  {
    v12 = *a3;
  }

  v20 = xpc_string_create(v12);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  __p = &v29;
  v18 = "Domain";
  sub_10000F688(&__p, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  sub_10000501C(&__p, "Remove");
  v16 = v29;
  if (v29)
  {
    xpc_retain(v29);
  }

  else
  {
    v16 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v16);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  if (v24)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v24, &__p);
      sub_1017769E0();
    }

    v13 = 0x500000000;
    v14 = 1;
  }

  else
  {
    v14 = 0;
    v13 = 0;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v25);
  }

  xpc_release(v28);
  xpc_release(v29);
  return v13 | v14;
}

uint64_t sub_10064E70C(uint64_t a1, char *a2, char *a3, char *a4, _BYTE *a5)
{
  result = 0x1600000001;
  if (!a4 || !a3 || !a2 || !a5)
  {
    return result;
  }

  v46 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v46 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v46 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_13;
  }

  v12 = xpc_null_create();
LABEL_12:
  v46 = v12;
LABEL_13:
  xpc_release(v11);
  v45 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v45 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v45 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_20;
    }
  }

  if (xpc_get_type(v14) == &_xpc_type_dictionary)
  {
    xpc_retain(v14);
    goto LABEL_21;
  }

  v15 = xpc_null_create();
LABEL_20:
  v45 = v15;
LABEL_21:
  xpc_release(v14);
  v41 = 3760250881;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v39[0] = 0;
  v39[1] = 0;
  v40 = 0;
  sub_10000501C(v39, a2);
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  sub_10000501C(v37, a3);
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  sub_10000501C(v35, a4);
  if (v40 >= 0)
  {
    v16 = v39;
  }

  else
  {
    v16 = v39[0];
  }

  v33 = xpc_string_create(v16);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  __p = &v46;
  v27 = "SourceDir";
  sub_10000F688(&__p, &v33, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v33);
  v33 = 0;
  if (v38 >= 0)
  {
    v17 = v37;
  }

  else
  {
    v17 = v37[0];
  }

  v31 = xpc_string_create(v17);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  __p = &v46;
  v27 = "DestDir";
  sub_10000F688(&__p, &v31, &v32);
  xpc_release(v32);
  v32 = 0;
  xpc_release(v31);
  v31 = 0;
  if (v36 >= 0)
  {
    v18 = v35;
  }

  else
  {
    v18 = v35[0];
  }

  v29 = xpc_string_create(v18);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  __p = &v46;
  v27 = "Filename";
  sub_10000F688(&__p, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  sub_10000501C(&__p, "CopyFile");
  v25 = v46;
  if (v46)
  {
    xpc_retain(v46);
  }

  else
  {
    v25 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v25);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v41)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v41, &__p);
      sub_101776A44();
    }

    v19 = 0x500000000;
    goto LABEL_48;
  }

  __p = &v45;
  v27 = "CopyFile";
  sub_100006354(&__p, v47);
  v21 = xpc::dyn_cast_or_default(v47, 0, v20);
  xpc_release(v47[0]);
  *a5 = v21;
  if ((v21 & 1) == 0)
  {
    __p = &v45;
    v27 = "CopyFileError";
    sub_100006354(&__p, v47);
    v24 = xpc::dyn_cast_or_default(v47, 0, v23);
    xpc_release(v47[0]);
    v19 = v24 << 32;
LABEL_48:
    v22 = 1;
    goto LABEL_49;
  }

  v22 = 0;
  v19 = 0;
LABEL_49:
  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39[0]);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v42);
  }

  xpc_release(v45);
  xpc_release(v46);
  return v19 | v22;
}

void sub_10064EB64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10064ECBC(uint64_t a1, std::string *a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
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
  v19 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v19 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v19 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_14;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_15;
  }

  v7 = xpc_null_create();
LABEL_14:
  v19 = v7;
LABEL_15:
  xpc_release(v6);
  v16 = 0;
  v15 = 3760250881;
  v17 = 0;
  v18 = 0;
  sub_10000501C(&__p, "GetCurrentCountryCode");
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(object);
  object = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v15)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v15, &__p);
      sub_101776AA8();
    }

    v8 = 0x500000000;
    v9 = 1;
  }

  else
  {
    memset(&__p, 0, sizeof(__p));
    v20[0] = &v19;
    v20[1] = "GetCurrentCountryCode";
    sub_100006354(v20, &v12);
    xpc::dyn_cast_or_default(&__p, &v12, "", v10);
    xpc_release(v12);
    std::string::operator=(a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = 0;
    v8 = 0;
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(v16);
  }

  xpc_release(v19);
  xpc_release(v4);
  return v8 | v9;
}

uint64_t sub_10064F004(uint64_t a1, char *a2, char *a3, char *a4, _BYTE *a5)
{
  result = 0x1600000001;
  if (!a4 || !a3 || !a2 || !a5)
  {
    return result;
  }

  v44 = 0;
  v10 = xpc_dictionary_create(0, 0, 0);
  v11 = v10;
  if (v10)
  {
    v44 = v10;
  }

  else
  {
    v11 = xpc_null_create();
    v44 = v11;
    if (!v11)
    {
      v12 = xpc_null_create();
      v11 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v11) == &_xpc_type_dictionary)
  {
    xpc_retain(v11);
    goto LABEL_13;
  }

  v12 = xpc_null_create();
LABEL_12:
  v44 = v12;
LABEL_13:
  xpc_release(v11);
  v43 = 0;
  v13 = xpc_dictionary_create(0, 0, 0);
  v14 = v13;
  if (v13)
  {
    v43 = v13;
  }

  else
  {
    v14 = xpc_null_create();
    v43 = v14;
    if (!v14)
    {
      v15 = xpc_null_create();
      v14 = 0;
      goto LABEL_20;
    }
  }

  if (xpc_get_type(v14) != &_xpc_type_dictionary)
  {
    v15 = xpc_null_create();
LABEL_20:
    v43 = v15;
    goto LABEL_21;
  }

  xpc_retain(v14);
LABEL_21:
  xpc_release(v14);
  v39 = 3760250881;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v37[0] = 0;
  v37[1] = 0;
  v38 = 0;
  sub_10000501C(v37, a2);
  v35[0] = 0;
  v35[1] = 0;
  v36 = 0;
  sub_10000501C(v35, a3);
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  sub_10000501C(v33, a4);
  if (v38 >= 0)
  {
    v16 = v37;
  }

  else
  {
    v16 = v37[0];
  }

  v31 = xpc_string_create(v16);
  if (!v31)
  {
    v31 = xpc_null_create();
  }

  __p = &v44;
  v25 = "SourceDir";
  sub_10000F688(&__p, &v31, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v31);
  v31 = 0;
  if (v36 >= 0)
  {
    v17 = v35;
  }

  else
  {
    v17 = v35[0];
  }

  v29 = xpc_string_create(v17);
  if (!v29)
  {
    v29 = xpc_null_create();
  }

  __p = &v44;
  v25 = "DestDir";
  sub_10000F688(&__p, &v29, &v30);
  xpc_release(v30);
  v30 = 0;
  xpc_release(v29);
  v29 = 0;
  if (v34 >= 0)
  {
    v18 = v33;
  }

  else
  {
    v18 = v33[0];
  }

  v27 = xpc_string_create(v18);
  if (!v27)
  {
    v27 = xpc_null_create();
  }

  __p = &v44;
  v25 = "Filename";
  sub_10000F688(&__p, &v27, &v28);
  xpc_release(v28);
  v28 = 0;
  xpc_release(v27);
  v27 = 0;
  sub_10000501C(&__p, "MoveFileToDestPath");
  v23 = v44;
  if (v44)
  {
    xpc_retain(v44);
  }

  else
  {
    v23 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v23);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  if (v39)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v39, &__p);
      sub_101776B0C();
    }

    v19 = 0x500000000;
    v20 = 1;
  }

  else
  {
    __p = &v43;
    v25 = "MoveFileToDestPath";
    sub_100006354(&__p, v45);
    v22 = xpc::dyn_cast_or_default(v45, 0, v21);
    xpc_release(v45[0]);
    v20 = 0;
    v19 = 0;
    *a5 = v22;
  }

  if (SHIBYTE(v34) < 0)
  {
    operator delete(v33[0]);
  }

  if (SHIBYTE(v36) < 0)
  {
    operator delete(v35[0]);
  }

  if (SHIBYTE(v38) < 0)
  {
    operator delete(v37[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v40);
  }

  xpc_release(v43);
  xpc_release(v44);
  return v19 | v20;
}

uint64_t sub_10064F558(uint64_t a1, char *a2, char *a3, _BYTE *a4)
{
  result = 0x1600000001;
  if (!a3 || !a2 || !a4)
  {
    return result;
  }

  v37 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v37 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v37 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_11;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_12;
  }

  v10 = xpc_null_create();
LABEL_11:
  v37 = v10;
LABEL_12:
  xpc_release(v9);
  v36 = 0;
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    v36 = v11;
  }

  else
  {
    v12 = xpc_null_create();
    v36 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v12) != &_xpc_type_dictionary)
  {
    v13 = xpc_null_create();
LABEL_19:
    v36 = v13;
    goto LABEL_20;
  }

  xpc_retain(v12);
LABEL_20:
  xpc_release(v12);
  v33 = 0;
  v32 = 3760250881;
  v34 = 0;
  v35 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  sub_10000501C(v30, a2);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_10000501C(v28, a3);
  if (v31 >= 0)
  {
    v14 = v30;
  }

  else
  {
    v14 = v30[0];
  }

  v26 = xpc_string_create(v14);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  __p = &v37;
  v22 = "IpccPath";
  sub_10000F688(&__p, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  if (v29 >= 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = v28[0];
  }

  v24 = xpc_string_create(v15);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  __p = &v37;
  v22 = "DestDir";
  sub_10000F688(&__p, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  sub_10000501C(&__p, "ExtractBundle");
  v20 = v37;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v20 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v20);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v32)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v32, &__p);
      sub_101776B70();
    }

    v16 = 0x500000000;
    v17 = 1;
  }

  else
  {
    __p = &v36;
    v22 = "ExtractBundle";
    sub_100006354(&__p, v38);
    v19 = xpc::dyn_cast_or_default(v38, 0, v18);
    xpc_release(v38[0]);
    v17 = 0;
    v16 = 0;
    *a4 = v19;
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  xpc_release(v36);
  xpc_release(v37);
  return v16 | v17;
}

uint64_t sub_10064F9F8(uint64_t a1, uint64_t a2, CFPropertyListRef *a3)
{
  result = 0x1600000001;
  if (a3)
  {
    v5 = *(a2 + 23);
    if ((v5 & 0x80u) != 0)
    {
      v5 = *(a2 + 8);
    }

    if (v5)
    {
      *a3 = 0;
      v32 = 0;
      v7 = xpc_dictionary_create(0, 0, 0);
      v8 = v7;
      if (v7)
      {
        v32 = v7;
      }

      else
      {
        v8 = xpc_null_create();
        v32 = v8;
        if (!v8)
        {
          v9 = xpc_null_create();
          v8 = 0;
          goto LABEL_12;
        }
      }

      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        xpc_retain(v8);
        goto LABEL_13;
      }

      v9 = xpc_null_create();
LABEL_12:
      v32 = v9;
LABEL_13:
      xpc_release(v8);
      v31 = 0;
      v10 = xpc_dictionary_create(0, 0, 0);
      v11 = v10;
      if (v10)
      {
        v31 = v10;
      }

      else
      {
        v11 = xpc_null_create();
        v31 = v11;
        if (!v11)
        {
          v12 = xpc_null_create();
          v11 = 0;
          goto LABEL_20;
        }
      }

      if (xpc_get_type(v11) == &_xpc_type_dictionary)
      {
        xpc_retain(v11);
        goto LABEL_21;
      }

      v12 = xpc_null_create();
LABEL_20:
      v31 = v12;
LABEL_21:
      xpc_release(v11);
      v28 = 0;
      v27 = 3760250881;
      v29 = 0;
      v30 = 0;
      __dst[0] = 0;
      __dst[1] = 0;
      v26 = 0;
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(__dst, *a2, *(a2 + 8));
      }

      else
      {
        *__dst = *a2;
        v26 = *(a2 + 16);
      }

      if (v26 >= 0)
      {
        v13 = __dst;
      }

      else
      {
        v13 = __dst[0];
      }

      v23 = xpc_string_create(v13);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      __p[0] = &v32;
      __p[1] = "Path";
      sub_10000F688(__p, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      sub_10000501C(__p, "LoadPlistAsDictionary");
      v20 = v32;
      if (v32)
      {
        xpc_retain(v32);
      }

      else
      {
        v20 = xpc_null_create();
      }

      TelephonyXPC::Client::performWithBlockingSyncReply();
      xpc_release(v20);
      v20 = 0;
      if (SHIBYTE(v22) < 0)
      {
        operator delete(__p[0]);
      }

      if (v27)
      {
        if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
        {
          sub_10064CB44(&v27, __p);
          sub_101776BD4();
        }

        v14 = 0x500000000;
        v15 = 1;
        goto LABEL_50;
      }

      __p[0] = 0;
      __p[1] = 0;
      v22 = 0;
      v18[0] = &v31;
      v18[1] = "LoadPlistAsDictionary";
      sub_100006354(v18, &v19);
      xpc::dyn_cast_or_default();
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      *__p = *format;
      v22 = v34;
      format[1] = 0;
      v34 = 0;
      format[0] = 0;
      xpc_release(v19);
      v16 = __p[0];
      if (__p[1] == __p[0])
      {
        v14 = 0;
        v15 = 0;
        if (!__p[0])
        {
          goto LABEL_50;
        }

        goto LABEL_49;
      }

      if (__p[0])
      {
        v17 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, __p[0], __p[1] - __p[0], kCFAllocatorNull);
        if (!v17)
        {
          v14 = 0xC00000000;
          v15 = 1;
LABEL_48:
          v16 = __p[0];
          if (!__p[0])
          {
LABEL_50:
            if (SHIBYTE(v26) < 0)
            {
              operator delete(__dst[0]);
            }

            if (SHIBYTE(v30) < 0)
            {
              operator delete(v28);
            }

            xpc_release(v31);
            xpc_release(v32);
            return v14 | v15;
          }

LABEL_49:
          __p[1] = v16;
          operator delete(v16);
          goto LABEL_50;
        }

        format[0] = kCFPropertyListXMLFormat_v1_0;
        *a3 = CFPropertyListCreateWithData(kCFAllocatorDefault, v17, 0, format, 0);
        CFRelease(v17);
      }

      v14 = 0;
      v15 = 0;
      goto LABEL_48;
    }
  }

  return result;
}

void sub_10064FDE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  xpc_release(*(v35 - 96));
  xpc_release(*(v35 - 88));
  _Unwind_Resume(a1);
}

uint64_t sub_10064FEE8(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  *a4 = 0;
  result = 0x1600000001;
  if (!a2 || !a3)
  {
    return result;
  }

  v41 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v41 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v41 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_11;
  }

  v10 = xpc_null_create();
LABEL_10:
  v41 = v10;
LABEL_11:
  xpc_release(v9);
  v40 = 0;
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    v40 = v11;
  }

  else
  {
    v12 = xpc_null_create();
    v40 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v12) == &_xpc_type_dictionary)
  {
    xpc_retain(v12);
    goto LABEL_19;
  }

  v13 = xpc_null_create();
LABEL_18:
  v40 = v13;
LABEL_19:
  xpc_release(v12);
  v37 = 0;
  v36 = 3760250881;
  v38 = 0;
  v39 = 0;
  theData = CFPropertyListCreateData(kCFAllocatorDefault, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  Data = CFPropertyListCreateData(kCFAllocatorDefault, a3, kCFPropertyListXMLFormat_v1_0, 0, 0);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v32 = xpc_data_create(BytePtr, Length);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  __p[0] = &v41;
  __p[1] = "LabelsData";
  sub_10000F688(__p, &v32, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v32);
  v32 = 0;
  v16 = CFDataGetBytePtr(Data);
  v17 = CFDataGetLength(Data);
  v30 = xpc_data_create(v16, v17);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  __p[0] = &v41;
  __p[1] = "LanguagesData";
  sub_10000F688(__p, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  sub_10000501C(__p, "CopyBadgeLabels");
  v27 = v41;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    v27 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v27);
  v27 = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v36)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v36, __p);
      sub_101776C38();
    }

    v18 = 0x500000000;
    goto LABEL_32;
  }

  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  v25[0] = &v40;
  v25[1] = "CopyBadgeLabels";
  sub_100006354(v25, &v26);
  xpc::dyn_cast_or_default();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v42;
  v29 = v43;
  v43 = 0;
  v42 = 0uLL;
  xpc_release(v26);
  v20 = __p[0];
  if (__p[1] == __p[0])
  {
    v18 = 0x5E00000000;
    v19 = 1;
    if (!__p[0])
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (__p[0])
  {
    *&v42 = 0;
    v21 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, __p[0], __p[1] - __p[0], kCFAllocatorNull);
    *&v42 = v21;
    if (v21)
    {
      v25[0] = kCFPropertyListXMLFormat_v1_0;
      v22 = CFPropertyListCreateWithData(kCFAllocatorDefault, v21, 0, v25, 0);
      v23 = v22;
      if (v22)
      {
        v24 = CFGetTypeID(v22);
        if (v24 == CFArrayGetTypeID())
        {
          v18 = 0;
          v19 = 0;
          *a4 = v23;
          goto LABEL_48;
        }

        CFRelease(v23);
        v18 = 0x900000000;
      }

      else
      {
        v18 = 0x200000000;
      }
    }

    else
    {
      v18 = 0xC00000000;
    }

    v19 = 1;
LABEL_48:
    sub_10002D760(&v42);
    v20 = __p[0];
    if (!__p[0])
    {
      goto LABEL_50;
    }

LABEL_49:
    __p[1] = v20;
    operator delete(v20);
    goto LABEL_50;
  }

  v18 = 0x5E00000000;
LABEL_32:
  v19 = 1;
LABEL_50:
  sub_10002D760(&Data);
  sub_10002D760(&theData);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  xpc_release(v40);
  xpc_release(v41);
  return v18 | v19;
}

void sub_10065038C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, const void *a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10002D760(&a24);
  sub_10002D760(&a25);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  xpc_release(*(v32 - 112));
  xpc_release(*(v32 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_1006504B8(uint64_t a1, const void *a2, const void *a3, void *a4)
{
  *a4 = 0;
  result = 0x1600000001;
  if (!a2 || !a3)
  {
    return result;
  }

  v41 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v41 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v41 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_11;
  }

  v10 = xpc_null_create();
LABEL_10:
  v41 = v10;
LABEL_11:
  xpc_release(v9);
  v40 = 0;
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    v40 = v11;
  }

  else
  {
    v12 = xpc_null_create();
    v40 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v12) == &_xpc_type_dictionary)
  {
    xpc_retain(v12);
    goto LABEL_19;
  }

  v13 = xpc_null_create();
LABEL_18:
  v40 = v13;
LABEL_19:
  xpc_release(v12);
  v37 = 0;
  v36 = 3760250881;
  v38 = 0;
  v39 = 0;
  theData = CFPropertyListCreateData(kCFAllocatorDefault, a2, kCFPropertyListXMLFormat_v1_0, 0, 0);
  Data = CFPropertyListCreateData(kCFAllocatorDefault, a3, kCFPropertyListXMLFormat_v1_0, 0, 0);
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v32 = xpc_data_create(BytePtr, Length);
  if (!v32)
  {
    v32 = xpc_null_create();
  }

  __p[0] = &v41;
  __p[1] = "LabelsData";
  sub_10000F688(__p, &v32, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v32);
  v32 = 0;
  v16 = CFDataGetBytePtr(Data);
  v17 = CFDataGetLength(Data);
  v30 = xpc_data_create(v16, v17);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  __p[0] = &v41;
  __p[1] = "LanguagesData";
  sub_10000F688(__p, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  xpc_release(v30);
  v30 = 0;
  sub_10000501C(__p, "CopyLocalizedLabels");
  v27 = v41;
  if (v41)
  {
    xpc_retain(v41);
  }

  else
  {
    v27 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v27);
  v27 = 0;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[0]);
  }

  if (v36)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v36, __p);
      sub_101776C9C();
    }

    v18 = 0x500000000;
    goto LABEL_32;
  }

  __p[0] = 0;
  __p[1] = 0;
  v29 = 0;
  v25[0] = &v40;
  v25[1] = "CopyLocalizedLabels";
  sub_100006354(v25, &v26);
  xpc::dyn_cast_or_default();
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  *__p = v42;
  v29 = v43;
  v43 = 0;
  v42 = 0uLL;
  xpc_release(v26);
  v20 = __p[0];
  if (__p[1] == __p[0])
  {
    v18 = 0x5E00000000;
    v19 = 1;
    if (!__p[0])
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  if (__p[0])
  {
    *&v42 = 0;
    v21 = CFDataCreateWithBytesNoCopy(kCFAllocatorDefault, __p[0], __p[1] - __p[0], kCFAllocatorNull);
    *&v42 = v21;
    if (v21)
    {
      v25[0] = kCFPropertyListXMLFormat_v1_0;
      v22 = CFPropertyListCreateWithData(kCFAllocatorDefault, v21, 0, v25, 0);
      v23 = v22;
      if (v22)
      {
        v24 = CFGetTypeID(v22);
        if (v24 == CFArrayGetTypeID())
        {
          v18 = 0;
          v19 = 0;
          *a4 = v23;
          goto LABEL_48;
        }

        CFRelease(v23);
        v18 = 0x900000000;
      }

      else
      {
        v18 = 0x200000000;
      }
    }

    else
    {
      v18 = 0xC00000000;
    }

    v19 = 1;
LABEL_48:
    sub_10002D760(&v42);
    v20 = __p[0];
    if (!__p[0])
    {
      goto LABEL_50;
    }

LABEL_49:
    __p[1] = v20;
    operator delete(v20);
    goto LABEL_50;
  }

  v18 = 0x5E00000000;
LABEL_32:
  v19 = 1;
LABEL_50:
  sub_10002D760(&Data);
  sub_10002D760(&theData);
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v37);
  }

  xpc_release(v40);
  xpc_release(v41);
  return v18 | v19;
}

void sub_10065095C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, const void *a24, const void *a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_10002D760(&a24);
  sub_10002D760(&a25);
  if (a32 < 0)
  {
    operator delete(a27);
  }

  xpc_release(*(v32 - 112));
  xpc_release(*(v32 - 104));
  _Unwind_Resume(a1);
}

uint64_t sub_100650A88(uint64_t a1, char *a2, char *a3, _BYTE *a4)
{
  result = 0x1600000001;
  if (!a2 || !a3)
  {
    return result;
  }

  v37 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v37 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v37 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_11;
  }

  v10 = xpc_null_create();
LABEL_10:
  v37 = v10;
LABEL_11:
  xpc_release(v9);
  v36 = 0;
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    v36 = v11;
  }

  else
  {
    v12 = xpc_null_create();
    v36 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v12) != &_xpc_type_dictionary)
  {
    v13 = xpc_null_create();
LABEL_18:
    v36 = v13;
    goto LABEL_19;
  }

  xpc_retain(v12);
LABEL_19:
  xpc_release(v12);
  v33 = 0;
  v32 = 3760250881;
  v34 = 0;
  v35 = 0;
  v30[0] = 0;
  v30[1] = 0;
  v31 = 0;
  sub_10000501C(v30, a2);
  v28[0] = 0;
  v28[1] = 0;
  v29 = 0;
  sub_10000501C(v28, a3);
  if (v31 >= 0)
  {
    v14 = v30;
  }

  else
  {
    v14 = v30[0];
  }

  v26 = xpc_string_create(v14);
  if (!v26)
  {
    v26 = xpc_null_create();
  }

  __p = &v37;
  v22 = "From";
  sub_10000F688(&__p, &v26, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v26);
  v26 = 0;
  if (v29 >= 0)
  {
    v15 = v28;
  }

  else
  {
    v15 = v28[0];
  }

  v24 = xpc_string_create(v15);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  __p = &v37;
  v22 = "To";
  sub_10000F688(&__p, &v24, &v25);
  xpc_release(v25);
  v25 = 0;
  xpc_release(v24);
  v24 = 0;
  sub_10000501C(&__p, "RemapContactsChannelIdentifier");
  v20 = v37;
  if (v37)
  {
    xpc_retain(v37);
  }

  else
  {
    v20 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v20);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v32)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v32, &__p);
      sub_101776D00();
    }

    v16 = 0x500000000;
    v17 = 1;
  }

  else
  {
    __p = &v36;
    v22 = "RemapContactsChannelIdentifier";
    sub_100006354(&__p, v38);
    v19 = xpc::dyn_cast_or_default(v38, 0, v18);
    xpc_release(v38[0]);
    v17 = 0;
    v16 = 0;
    *a4 = v19;
  }

  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30[0]);
  }

  if (SHIBYTE(v35) < 0)
  {
    operator delete(v33);
  }

  xpc_release(v36);
  xpc_release(v37);
  return v16 | v17;
}

uint64_t sub_100650F24(uint64_t a1, _BYTE *a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
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
  v20 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v20 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v20 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_14;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_15;
  }

  v7 = xpc_null_create();
LABEL_14:
  v20 = v7;
LABEL_15:
  xpc_release(v6);
  v17 = 0;
  v16 = 3760250881;
  v18 = 0;
  v19 = 0;
  sub_10000501C(__p, "ResetNetworkSettings");
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(object);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v16, __p);
      sub_101776D64();
    }

    v8 = 0x500000000;
    v9 = 1;
  }

  else
  {
    __p[0] = &v20;
    __p[1] = "ResetNetworkSettings";
    sub_100006354(__p, v21);
    v11 = xpc::dyn_cast_or_default(v21, 0, v10);
    xpc_release(v21[0]);
    v9 = 0;
    v8 = 0;
    *a2 = v11;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  xpc_release(v20);
  xpc_release(v4);
  return v8 | v9;
}

uint64_t sub_100651240(uint64_t a1, char *a2, _BYTE *a3)
{
  result = 0x1600000001;
  if (!a2 || !a3)
  {
    return result;
  }

  v33 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v33 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v33 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_11;
  }

  v8 = xpc_null_create();
LABEL_10:
  v33 = v8;
LABEL_11:
  xpc_release(v7);
  v32 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v32 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v32 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    v11 = xpc_null_create();
LABEL_18:
    v32 = v11;
    goto LABEL_19;
  }

  xpc_retain(v10);
LABEL_19:
  xpc_release(v10);
  v29 = 0;
  v28 = 3760250881;
  v30 = 0;
  v31 = 0;
  v26[0] = 0;
  v26[1] = 0;
  v27 = 0;
  sub_10000501C(v26, a2);
  if (v27 >= 0)
  {
    v12 = v26;
  }

  else
  {
    v12 = v26[0];
  }

  v24 = xpc_string_create(v12);
  if (!v24)
  {
    v24 = xpc_null_create();
  }

  __p = &v33;
  v22 = "Dir";
  sub_10000F688(&__p, &v24, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v24);
  v24 = 0;
  sub_10000501C(&__p, "MakeDir");
  v20 = v33;
  if (v33)
  {
    xpc_retain(v33);
  }

  else
  {
    v20 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v20);
  v20 = 0;
  if (v23 < 0)
  {
    operator delete(__p);
  }

  if (v28)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v28, &__p);
      sub_101776DC8();
    }

    v13 = 0x500000000;
    v14 = 1;
  }

  else
  {
    v34[0] = 0;
    __p = &v32;
    v22 = "MakeDir";
    sub_100048A24(&__p, v34);
    __p = v34;
    v22 = "MakeDirResult";
    sub_100006354(&__p, &v19);
    v16 = xpc::dyn_cast_or_default(&v19, 0, v15);
    xpc_release(v19);
    *a3 = v16;
    __p = v34;
    v22 = "MakeDirError";
    sub_100006354(&__p, &v19);
    v18 = xpc::dyn_cast_or_default(&v19, 0, v17);
    xpc_release(v19);
    xpc_release(v34[0]);
    v14 = 0;
    v13 = v18 << 32;
  }

  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[0]);
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(v29);
  }

  xpc_release(v32);
  xpc_release(v33);
  return v13 | v14;
}

uint64_t sub_1006516B4(uint64_t a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0x1600000001;
  }

  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
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
  v20 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v20 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v20 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v7) != &_xpc_type_dictionary)
  {
    v8 = xpc_null_create();
LABEL_16:
    v20 = v8;
    goto LABEL_17;
  }

  xpc_retain(v7);
LABEL_17:
  xpc_release(v7);
  v17 = 0;
  v16 = 3760250881;
  v18 = 0;
  v19 = 0;
  sub_10000501C(__p, "ReadAutomaticBundleUpdateUISetting");
  object = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    object = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(object);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v16, __p);
      sub_101776E2C();
    }

    v9 = 0x500000000;
    v10 = 1;
  }

  else
  {
    __p[0] = &v20;
    __p[1] = "ReadAutomaticBundleUpdateUISetting";
    sub_100006354(__p, v21);
    v12 = xpc::dyn_cast_or_default(v21, 0, v11);
    xpc_release(v21[0]);
    v10 = 0;
    v9 = 0;
    *a2 = v12;
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v17);
  }

  xpc_release(v20);
  xpc_release(v4);
  return v9 | v10;
}

uint64_t sub_1006519E0(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (!a3)
  {
    return 0x1600000001;
  }

  v30 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v30 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v30 = v6;
    if (!v6)
    {
      v8 = xpc_null_create();
      v6 = 0;
      goto LABEL_10;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_11;
  }

  v8 = xpc_null_create();
LABEL_10:
  v30 = v8;
LABEL_11:
  xpc_release(v6);
  v29 = 0;
  v9 = xpc_dictionary_create(0, 0, 0);
  v10 = v9;
  if (v9)
  {
    v29 = v9;
  }

  else
  {
    v10 = xpc_null_create();
    v29 = v10;
    if (!v10)
    {
      v11 = xpc_null_create();
      v10 = 0;
      goto LABEL_18;
    }
  }

  if (xpc_get_type(v10) != &_xpc_type_dictionary)
  {
    v11 = xpc_null_create();
LABEL_18:
    v29 = v11;
    goto LABEL_19;
  }

  xpc_retain(v10);
LABEL_19:
  xpc_release(v10);
  v26 = 0;
  v25 = 3760250881;
  v27 = 0;
  v28 = 0;
  __dst[0] = 0;
  __dst[1] = 0;
  v24 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v24 = *(a2 + 16);
  }

  if (v24 >= 0)
  {
    v12 = __dst;
  }

  else
  {
    v12 = __dst[0];
  }

  v21 = xpc_string_create(v12);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  __p = &v30;
  v19 = "Path";
  sub_10000F688(&__p, &v21, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v21);
  v21 = 0;
  sub_10000501C(&__p, "PathExists");
  v17 = v30;
  if (v30)
  {
    xpc_retain(v30);
  }

  else
  {
    v17 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v17);
  if (v20 < 0)
  {
    operator delete(__p);
  }

  if (v25)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v25, &__p);
      sub_101776E90();
    }

    v13 = 0x500000000;
    v14 = 1;
  }

  else
  {
    __p = &v29;
    v19 = "PathExists";
    sub_100006354(&__p, v31);
    v16 = xpc::dyn_cast_or_default(v31, 0, v15);
    xpc_release(v31[0]);
    v14 = 0;
    v13 = 0;
    *a3 = v16;
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(v26);
  }

  xpc_release(v29);
  xpc_release(v30);
  return v13 | v14;
}

uint64_t sub_100651DE0(uint64_t a1, uint64_t a2, const void **a3)
{
  v3 = *(a2 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a2 + 8);
  }

  if (!v3)
  {
    return 0x1600000001;
  }

  v6 = *a3;
  *a3 = 0;
  v27 = v6;
  sub_10001021C(&v27);
  v32 = 0;
  v7 = xpc_dictionary_create(0, 0, 0);
  v8 = v7;
  if (v7)
  {
    v32 = v7;
  }

  else
  {
    v8 = xpc_null_create();
    v32 = v8;
    if (!v8)
    {
      v10 = xpc_null_create();
      v8 = 0;
      goto LABEL_12;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_13;
  }

  v10 = xpc_null_create();
LABEL_12:
  v32 = v10;
LABEL_13:
  xpc_release(v8);
  v31 = 0;
  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    v31 = v11;
  }

  else
  {
    v12 = xpc_null_create();
    v31 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_20;
    }
  }

  if (xpc_get_type(v12) != &_xpc_type_dictionary)
  {
    v13 = xpc_null_create();
LABEL_20:
    v31 = v13;
    goto LABEL_21;
  }

  xpc_retain(v12);
LABEL_21:
  xpc_release(v12);
  v28 = 0;
  v27 = 3760250881;
  v29 = 0;
  v30 = 0;
  __dst[0] = 0;
  __dst[1] = 0;
  v26 = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 8));
  }

  else
  {
    *__dst = *a2;
    v26 = *(a2 + 16);
  }

  if (v26 >= 0)
  {
    v14 = __dst;
  }

  else
  {
    v14 = __dst[0];
  }

  v23 = xpc_string_create(v14);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  __p[0] = &v32;
  __p[1] = "Path";
  sub_10000F688(__p, &v23, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v23);
  v23 = 0;
  sub_10000501C(__p, "CopyFileAttributes");
  v20 = v32;
  if (v32)
  {
    xpc_retain(v32);
  }

  else
  {
    v20 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v20);
  v20 = 0;
  if (v22 < 0)
  {
    operator delete(__p[0]);
  }

  if (v27)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v27, __p);
      sub_101776EF4();
    }

    v15 = 0x500000000;
    v16 = 1;
  }

  else
  {
    v18 = v31;
    if (v31)
    {
      xpc_retain(v31);
    }

    else
    {
      v18 = xpc_null_create();
    }

    xpc::bridge(&v19, &v18, v17);
    sub_100010180(v33, &v19);
    if (v33 != a3)
    {
      __p[0] = *a3;
      *a3 = v33[0];
      v33[0] = 0;
      sub_10001021C(__p);
    }

    sub_10001021C(v33);
    sub_10000A1EC(&v19);
    xpc_release(v18);
    v16 = 0;
    v15 = 0;
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(__dst[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v28);
  }

  xpc_release(v31);
  xpc_release(v32);
  return v15 | v16;
}

_BYTE *sub_100652258@<X0>(int a1@<W0>, _BYTE *a2@<X8>)
{
  if (a1 <= -534716413)
  {
    if (a1 <= -534716415)
    {
      if (a1 == -534716416)
      {
        v2 = "kInternalError";
        return sub_10000501C(a2, v2);
      }

      if (a1 == -534716415)
      {
        v2 = "kServerError";
        return sub_10000501C(a2, v2);
      }

      goto LABEL_21;
    }

    if (a1 == -534716414)
    {
      v2 = "kCommandError";
    }

    else
    {
      v2 = "kTimeout";
    }
  }

  else
  {
    if (a1 > -534716411)
    {
      switch(a1)
      {
        case -534716410:
          v2 = "kPermissionDenied";
          return sub_10000501C(a2, v2);
        case -534716409:
          v2 = "kNotAvailable";
          return sub_10000501C(a2, v2);
        case 0:
          v2 = "kSuccess";
          return sub_10000501C(a2, v2);
      }

LABEL_21:
      v2 = "kInvalidErrorCode";
      return sub_10000501C(a2, v2);
    }

    if (a1 == -534716412)
    {
      v2 = "kNotSupported";
    }

    else
    {
      v2 = "kRetry";
    }
  }

  return sub_10000501C(a2, v2);
}