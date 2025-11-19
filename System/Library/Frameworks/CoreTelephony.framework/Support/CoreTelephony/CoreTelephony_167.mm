void sub_101426AF0(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 24);
  v5 = *(a1 + 32);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 596);
  v10 = a2;
  v11 = 0;
  v9 = 1;
  sub_10009E794(v6, v7 | 0x300000000, &v9);
  v8 = *(a1 + 596);
  v10 = a3;
  v11 = 0;
  v9 = 1;
  sub_10009E794(v6, v8 | &_mh_execute_header, &v9);
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_101426B94(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101426BBC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101426CAC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101426CC4(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (*(*a1 + 16))(a1);
    LODWORD(v5[0]) = 136315138;
    *(v5 + 4) = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Setting up standard bar mapping A for %s", v5, 0xCu);
  }

  sub_1002B28D0(v5);
  sub_1000D0198(a1 + 128, v5);
  return sub_1002B2800((a1 + 528));
}

uint64_t sub_101426DA4(uint64_t a1, int a2, int a3)
{
  v4 = sub_10142695C(a1, a2, a3);
  *v4 = off_101F3AB60;
  sub_1000D02DC((v4 + 16), "Rscp", "None");
  *(a1 + 596) = 0;
  return a1;
}

uint64_t sub_101426E14(uint64_t a1, unint64_t a2, double a3)
{
  if ((*(a1 + 584) & 1) == 0)
  {
    *(a1 + 584) = 1;
    *(a1 + 576) = 0;
  }

  return sub_101426A5C(a1, a2, a3);
}

void sub_101426E38(SignalStrengthModel *a1)
{
  *a1 = off_101F3AA50;
  sub_1014270B4(a1 + 128);
  v2 = *(a1 + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);
}

void sub_101426E98(SignalStrengthModel *a1)
{
  *a1 = off_101F3AA50;
  sub_1014270B4(a1 + 128);
  v2 = *(a1 + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);

  operator delete();
}

void sub_101426F0C(SignalStrengthModel *a1)
{
  *a1 = off_101F3AA50;
  sub_1014270B4(a1 + 128);
  v2 = *(a1 + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);
}

void sub_101426F6C(SignalStrengthModel *a1)
{
  *a1 = off_101F3AA50;
  sub_1014270B4(a1 + 128);
  v2 = *(a1 + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);

  operator delete();
}

void sub_101426FE0(SignalStrengthModel *a1)
{
  *a1 = off_101F3AA50;
  sub_1014270B4(a1 + 128);
  v2 = *(a1 + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);
}

void sub_101427040(SignalStrengthModel *a1)
{
  *a1 = off_101F3AA50;
  sub_1014270B4(a1 + 128);
  v2 = *(a1 + 15);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);

  operator delete();
}

void sub_1014270B4(uint64_t a1)
{
  v2 = *(a1 + 392);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10006DCAC(a1 + 224, *(a1 + 232));
  sub_10006DCAC(a1 + 200, *(a1 + 208));
  v3 = *(a1 + 144);
  if (v3)
  {
    *(a1 + 152) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    *(a1 + 120) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 64);
  if (v5)
  {
    *(a1 + 72) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    *(a1 + 40) = v6;
    operator delete(v6);
  }

  ctu::OsLogLogger::~OsLogLogger(a1);
}

void *sub_1014271E8(void *a1, int a2, int *a3, char **a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F3AC60;
  sub_101426630((a1 + 3), a2, *a3, *a4);
  return a1;
}

void sub_10142726C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3AC60;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101427374(void *a1, int a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F3ACB0;
  sub_10142695C((a1 + 3), a2, *a3);
  return a1;
}

void sub_1014273F4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3ACB0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1014274FC(void *a1, int a2, int *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101F3AD00;
  sub_101426DA4((a1 + 3), a2, *a3);
  return a1;
}

void sub_10142757C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3AD00;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101427684(uint64_t a1, void *a2)
{
  *a1 = off_101F172F8;
  v4 = a1 + 8;
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "loc.pref");
  *v4 = 0;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger(v8, &__p);
  ctu::OsLogLogger::OsLogLogger((a1 + 32), v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&__p);
  *a1 = off_101F3AD50;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = *a2;
  v5 = a2[1];
  *(a1 + 96) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 104) = a1 + 112;
  __p.var0 = 0;
  __p.var1.fRef = 0;
  v7 = 0;
  sub_1001A92B8((a1 + 128));
}

void sub_1014277BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, char a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100034450(*(v12 + 112));
  v16 = *(v12 + 96);
  if (v16)
  {
    sub_100004A34(v16);
  }

  sub_10142A708(v12 + 56);
  sub_1003EC530(v14);
  sub_10072A838(v13);
  _Unwind_Resume(a1);
}

void sub_101427838(uint64_t a1, int a2, NSObject **a3)
{
  os_unfair_lock_lock((a1 + 24));
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = "NO";
    if (a2)
    {
      v7 = "YES";
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Force the update %s", buf, 0xCu);
  }

  sub_1000929F0();
  __p[0] = CFPreferencesCopyValue(@"LASDNextUpdate", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  *buf = 0;
  sub_10142B458(buf, __p);
  v8 = *(a1 + 40);
  *(a1 + 40) = *buf;
  *buf = v8;
  sub_1003EC530(buf);
  if (a2)
  {
LABEL_31:
    sub_1014280EC();
  }

  sub_1000929F0();
  theDate = 0;
  *buf = CFPreferencesCopyValue(@"LASDNextUpdate", @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_10142B458(&theDate, buf);
  v9 = theDate;
  v10 = *(a1 + 32);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v9)
  {
    if (v11)
    {
      memset(buf, 0, sizeof(buf));
      v31 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v24 = v31;
      v19 = __p;
      if (v31 < 0)
      {
        v19 = *buf;
      }

      *v26 = 136315138;
      v27 = v19;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s key not found, assuming update required", v26, 0xCu);
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }
    }

    goto LABEL_25;
  }

  if (v11)
  {
    memset(buf, 0, sizeof(buf));
    v31 = 0;
    ctu::cf::assign();
    *__p = *buf;
    v24 = v31;
    v12 = __p;
    if (v31 < 0)
    {
      v12 = *buf;
    }

    *v26 = 136315394;
    v27 = v12;
    v28 = 2112;
    v29 = theDate;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s key found with value %@", v26, 0x16u);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v14 = CFDateCreate(kCFAllocatorDefault, Current);
  __p[0] = v14;
  if (!v14)
  {
    v16 = *(a1 + 32);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v18 = "#N Could not get current time, assuming update required";
      goto LABEL_23;
    }

LABEL_24:
    sub_1003EC530(__p);
LABEL_25:
    sub_1003EC530(&theDate);
    v20 = *(a1 + 32);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Checking the server check now", buf, 2u);
    }

    sub_101428E10(a1, 0);
    v21 = *a3;
    *buf = v21;
    if (v21)
    {
      dispatch_retain(v21);
    }

    sub_1014288E8(a1, buf, 0);
    if (v21)
    {
      dispatch_release(v21);
    }

    goto LABEL_31;
  }

  TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(theDate, v14);
  v16 = *(a1 + 32);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (TimeIntervalSinceDate < 0.0)
  {
    if (v17)
    {
      *buf = 0;
      v18 = "#I Difference is equal to or less than zero, time to check!";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      goto LABEL_24;
    }

    goto LABEL_24;
  }

  if (v17)
  {
    *buf = 134217984;
    *&buf[4] = TimeIntervalSinceDate;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Difference is still %f, we must wait", buf, 0xCu);
  }

  sub_1003EC530(__p);
  sub_1003EC530(&theDate);
  sub_101428BE8(a1);
  v22 = *(a1 + 32);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Deferring the server check now", buf, 2u);
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_101427CA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, const void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    if (a22 < 0)
    {
      operator delete(__p);
    }

    sub_1003EC530(&a12);
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101427D1C(os_unfair_lock_s *a1, uint64_t a2)
{
  sub_101264C6C(v4, a2);
  os_unfair_lock_lock(a1 + 6);
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v4[26] = dispatch_queue_create("LASDResultQueue", v3);
  v4[24] = 0;
  v4[25] = 0;
  v4[11] = "LASDPreference";
  sub_10142A788();
}

void sub_101427FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1014280EC()
{
  v0 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
  v3 = 0;
  v4 = dispatch_queue_create("LASDResultQueue", v0);
  v2 = 0;
  *buf = "LASDPreference";
  sub_10142A788();
}

void sub_1014283A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10142848C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    if (*(a1 + 80))
    {
      sub_1012650F4(v24, a2);
      v4 = *(a1 + 80);
      if (!v4)
      {
        sub_100022DB4();
      }

      (*(*v4 + 48))(v4, v24);
      sub_101264468(v24, v24[1]);
    }

    else
    {
      v6 = *(a1 + 32);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Can't send a callback to the controller", buf, 2u);
      }
    }

    v9 = *(a2 + 8);
    v7 = a2 + 8;
    v8 = v9;
    if (v9)
    {
      v10 = v7;
      v11 = v8;
      do
      {
        if (*(v11 + 32) >= 4)
        {
          v10 = v11;
        }

        v11 = *(v11 + 8 * (*(v11 + 32) < 4));
      }

      while (v11);
      if (v10 != v7 && *(v10 + 32) <= 4)
      {
        while (1)
        {
          while (1)
          {
            v12 = *(v8 + 8);
            if (v12 < 5)
            {
              break;
            }

            v8 = *v8;
            if (!v8)
            {
              goto LABEL_21;
            }
          }

          if (v12 == 4)
          {
            break;
          }

          v8 = v8[1];
          if (!v8)
          {
LABEL_21:
            sub_1000A58E4("map::at:  key not found");
          }
        }

        if (*(v8 + 72) == 1 && sub_10007AEAC(a1 + 128, 0) != 1)
        {
          __p[0] = 0;
          __p[1] = 0;
          v26 = 0;
          if ((v8[9] & 1) == 0)
          {
            sub_1000D1644();
          }

          if (*(v8 + 71) < 0)
          {
            sub_100005F2C(__p, v8[6], v8[7]);
          }

          else
          {
            *__p = *(v8 + 3);
            v26 = v8[8];
          }

          v13 = HIBYTE(v26);
          v14 = SHIBYTE(v26);
          if (v26 < 0)
          {
            v13 = __p[1];
          }

          if (!v13)
          {
            goto LABEL_53;
          }

          v15 = *(a1 + 32);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v16 = __p[0];
            if (v14 >= 0)
            {
              v16 = __p;
            }

            *buf = 136315394;
            *&buf[4] = v16;
            *&buf[12] = 2080;
            *&buf[14] = "0.2020.02.13";
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Comparing the downloaded LTE database version number: %s, with the threshold (for deployment type) version number: %s", buf, 0x16u);
          }

          sub_10000501C(buf, "0.2020.02.13");
          if (v26 >= 0)
          {
            v17 = HIBYTE(v26);
          }

          else
          {
            v17 = __p[1];
          }

          v18 = v29;
          v19 = v29;
          if ((v29 & 0x80u) != 0)
          {
            v18 = *&buf[8];
          }

          if (v17 == v18)
          {
            if (v26 >= 0)
            {
              v20 = __p;
            }

            else
            {
              v20 = __p[0];
            }

            if ((v29 & 0x80u) == 0)
            {
              v21 = buf;
            }

            else
            {
              v21 = *buf;
            }

            v22 = memcmp(v20, v21, v17) >= 0;
            if ((v19 & 0x80) == 0)
            {
              goto LABEL_52;
            }
          }

          else
          {
            v23 = *(a1 + 32);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
            {
              *v27 = 0;
              _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "The version information of the LTE database is not in the correct format", v27, 2u);
              v22 = 0;
              if ((v29 & 0x80) == 0)
              {
                goto LABEL_52;
              }
            }

            else
            {
              v22 = 0;
              if ((v19 & 0x80) == 0)
              {
LABEL_52:
                sub_1001A937C(a1 + 128, v22);
                LOBYTE(v14) = HIBYTE(v26);
LABEL_53:
                if ((v14 & 0x80) != 0)
                {
                  operator delete(__p[0]);
                }

                return;
              }
            }
          }

          operator delete(*buf);
          goto LABEL_52;
        }
      }
    }
  }

  else
  {
    v5 = *(a1 + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "No update information provided by CCMobileHelper", buf, 2u);
    }
  }
}

void sub_101428814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10142884C(os_unfair_lock_s *a1, NSObject **a2, int a3)
{
  os_unfair_lock_lock(a1 + 6);
  v6 = *a2;
  v7 = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  sub_1014288E8(a1, &v7, a3);
  if (v6)
  {
    dispatch_release(v6);
  }

  os_unfair_lock_unlock(a1 + 6);
}

void sub_1014288D0(void *a1)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  sub_10004F058(a1);
}

const void **sub_1014288E8(uint64_t a1, NSObject **a2, int a3)
{
  if (*(a1 + 48) == 1)
  {
    result = *(a1 + 160);
    if (result)
    {
      if (!a3)
      {
        return result;
      }

      (*(*result + 2))(result);
    }
  }

  Current = CFAbsoluteTimeGetCurrent();
  v7 = CFDateCreate(kCFAllocatorDefault, Current);
  v22 = v7;
  if (v7)
  {
    TimeIntervalSinceDate = CFDateGetTimeIntervalSinceDate(*(a1 + 40), v7);
    *(a1 + 48) = 1;
    Registry::getTimerService(&v19, *(a1 + 88));
    v9 = v19;
    sub_10000501C(__p, "LASD update timer");
    v10 = *a2;
    object = v10;
    if (v10)
    {
      dispatch_retain(v10);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 0x40000000;
    v14[2] = sub_101428B64;
    v14[3] = &unk_101F3ADB8;
    v14[4] = a1;
    aBlock = _Block_copy(v14);
    sub_100D23364(v9, __p, 0, 1000000 * TimeIntervalSinceDate, &object, &aBlock);
    v11 = v21;
    v21 = 0;
    v12 = *(a1 + 160);
    *(a1 + 160) = v11;
    if (v12)
    {
      (*(*v12 + 8))(v12);
      v13 = v21;
      v21 = 0;
      if (v13)
      {
        (*(*v13 + 8))(v13);
      }
    }

    if (aBlock)
    {
      _Block_release(aBlock);
    }

    if (object)
    {
      dispatch_release(object);
    }

    if (v18 < 0)
    {
      operator delete(__p[0]);
    }

    if (v20)
    {
      sub_100004A34(v20);
    }

    sub_100F93EE4(a1);
  }

  return sub_1003EC530(&v22);
}

void sub_101428B00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *aBlock, dispatch_object_t object, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a23)
  {
    sub_100004A34(a23);
  }

  sub_1003EC530((v23 - 56));
  _Unwind_Resume(a1);
}

void sub_101428B64(uint64_t a1)
{
  v1 = *(a1 + 32);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I LASD timer expired", v3, 2u);
  }

  sub_1014280EC();
}

void sub_101428BE8(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
  *buf = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, buf);
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

LABEL_11:
      v14 = 0;
      (*(*v10 + 16))(v10, &v14, @"LASDUpdaterScheduledWake");
      sub_1003EC530(&v14);
      sub_100431B34(&v13, (a1 + 40));
      (*(*v10 + 24))(v10, &v13, @"LASDUpdaterScheduledWake");
      sub_1003EC530(&v13);
      goto LABEL_12;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v3);
  v9 = 0;
  v11 = 1;
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_7:
  v12 = *(a1 + 32);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not get PowerAssertionInterface to schedule wake timer", buf, 2u);
  }

LABEL_12:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_101428D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_1003EC530(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_101428DC0(os_unfair_lock_s *a1, int a2)
{
  os_unfair_lock_lock(a1 + 6);
  sub_101428E10(a1, a2);

  os_unfair_lock_unlock(a1 + 6);
}

uint64_t sub_101428E10(uint64_t a1, int a2)
{
  v4 = rand();
  if (a2)
  {
    v5 = CFAbsoluteTimeGetCurrent() + 86400.0 + (v4 % 24 + 1) * 3600.0;
    v6 = *(a1 + 32);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v13 = 0;
    v7 = "#I Updating preference to next 24 - 48 hours";
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent() + (v4 % 7 + 8) * 86400.0;
    v6 = *(a1 + 32);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *v13 = 0;
    v7 = "#I Updating preference to next 7 - 15 days";
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v13, 2u);
LABEL_7:
  v8 = CFDateCreate(kCFAllocatorDefault, v5);
  v9 = *(a1 + 40);
  *(a1 + 40) = v8;
  *v13 = v9;
  sub_1003EC530(v13);
  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    *v13 = 138412290;
    *&v13[4] = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Next update scheduled for: %@", v13, 0xCu);
  }

  CFPreferencesSetValue(@"LASDNextUpdate", *(a1 + 40), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  return sub_1000929F0();
}

void sub_10142900C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 24));
  v6 = (a1 + 80);
  v5 = *(a1 + 80);
  *(a1 + 80) = 0;
  if (v5 == a1 + 56)
  {
    (*(*v5 + 32))(v5);
  }

  else if (v5)
  {
    (*(*v5 + 40))(v5);
  }

  v7 = (a3 + 24);
  v8 = *(a3 + 24);
  if (!v8)
  {
    v7 = (a1 + 80);
    goto LABEL_9;
  }

  if (v8 != a3)
  {
    *v6 = v8;
LABEL_9:
    *v7 = 0;
    goto LABEL_11;
  }

  *v6 = a1 + 56;
  (*(**v7 + 24))(*v7, a1 + 56);
LABEL_11:
  __p[0] = _NSConcreteStackBlock;
  __p[1] = 0x40000000;
  __p[2] = sub_100F93EDC;
  *&v61 = &unk_101EF8E88;
  *(&v61 + 1) = a1;
  sub_10079D8A0();
  v56 = 0;
  v57 = 0;
  Registry::getFileSystemInterface(&v56, *(a1 + 88));
  v9 = v56;
  sub_10000501C(__p, "/var/wireless/Library/LASD/");
  v10 = (*(*v9 + 88))(v9, __p);
  if (SHIBYTE(__p[2]) < 0)
  {
    operator delete(__p[0]);
  }

  if (v10)
  {
    goto LABEL_20;
  }

  v11 = (*(*v56 + 72))(v56, "/var/wireless/Library/LASD/", 493, 1);
  v12 = *(a1 + 32);
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v14 = strerror(v11);
      LODWORD(__p[0]) = 136315394;
      *(__p + 4) = "/var/wireless/Library/LASD/";
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v14;
      v15 = "#N Could not create %s directory: %s";
      v16 = v12;
      v17 = 22;
LABEL_19:
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v15, __p, v17);
    }
  }

  else if (v13)
  {
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = "/var/wireless/Library/LASD/";
    v15 = "#I Created %s directory";
    v16 = v12;
    v17 = 12;
    goto LABEL_19;
  }

LABEL_20:
  v58 = 0;
  v59 = 0;
  FileSystemInterface = Registry::getFileSystemInterface(&v58, *(a1 + 88));
  v19 = sub_101346228(FileSystemInterface);
  v20 = &dword_101F3ADD8;
  v21 = 6;
  do
  {
    v22 = *v20;
    if ((*v20 & v19) == 0)
    {
      goto LABEL_71;
    }

    v23 = v58;
    v24 = *(v20 + 1);
    sub_10000501C(__p, v24);
    v25 = (*(*v23 + 88))(v23, __p);
    v26 = v25;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if (!v26)
      {
LABEL_39:
        v37 = *(a1 + 32);
        if (!os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_50;
        }

        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v24;
        v38 = v37;
        v39 = "#I %s link does not exist";
        goto LABEL_41;
      }
    }

    else if (!v25)
    {
      goto LABEL_39;
    }

    v27 = v58;
    sub_10000501C(__p, v24);
    v28 = (*(*v27 + 208))(v27, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v29 = *(a1 + 32);
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
    if (v28)
    {
      if (v30)
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v24;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I %s link exists", __p, 0xCu);
      }

      memset(__p, 0, sizeof(__p));
      v31 = v58;
      sub_10000501C(buf, v24);
      (*(*v31 + 144))(__p, v31, buf);
      if (v65 < 0)
      {
        operator delete(*buf);
      }

      v32 = *(a1 + 32);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = __p;
        if (SHIBYTE(__p[2]) < 0)
        {
          v33 = __p[0];
        }

        *buf = 136315394;
        *&buf[4] = v24;
        v63 = 2080;
        v64 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I %s --> %s", buf, 0x16u);
      }

      v34 = strlen(*(v20 + 2));
      v35 = v34;
      if ((SHIBYTE(__p[2]) & 0x8000000000000000) != 0)
      {
        if (v34 == __p[1])
        {
          if (v34 == -1)
          {
            sub_10013C334();
          }

          v36 = __p[0];
          goto LABEL_67;
        }
      }

      else if (v34 == SHIBYTE(__p[2]))
      {
        v36 = __p;
LABEL_67:
        v55 = memcmp(v36, *(v20 + 2), v35) == 0;
        goto LABEL_69;
      }

      v55 = 0;
LABEL_69:
      *buf = v20;
      *(sub_10142B4C4(a1 + 104, v22) + 32) = v55;
      if (SHIBYTE(__p[2]) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_71;
    }

    if (v30)
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v24;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#N %s not a link", __p, 0xCu);
    }

    v41 = v58;
    sub_10000501C(__p, v24);
    v42 = (*(*v41 + 112))(v41, __p);
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
    }

    v43 = *(a1 + 32);
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT);
    if (v42)
    {
      if (!v44)
      {
        goto LABEL_50;
      }

      v45 = strerror(v42);
      LODWORD(__p[0]) = 136315650;
      *(__p + 4) = v24;
      WORD2(__p[1]) = 2048;
      *(&__p[1] + 6) = v42;
      HIWORD(__p[2]) = 2080;
      *&v61 = v45;
      v38 = v43;
      v39 = "#N Could not remove %s: %ld (%s)";
      v40 = 32;
      goto LABEL_49;
    }

    if (v44)
    {
      LODWORD(__p[0]) = 136315138;
      *(__p + 4) = v24;
      v38 = v43;
      v39 = "#I Removed %s";
LABEL_41:
      v40 = 12;
LABEL_49:
      _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, v39, __p, v40);
    }

LABEL_50:
    v46 = v58;
    v47 = *(v20 + 2);
    sub_10000501C(__p, v47);
    v48 = (*(*v46 + 88))(v46, __p);
    v49 = v48;
    if (SHIBYTE(__p[2]) < 0)
    {
      operator delete(__p[0]);
      if ((v49 & 1) == 0)
      {
LABEL_54:
        v50 = *(a1 + 32);
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          LODWORD(__p[0]) = 136315138;
          *(__p + 4) = v47;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "%s database file does not exist", __p, 0xCu);
        }
      }
    }

    else if ((v48 & 1) == 0)
    {
      goto LABEL_54;
    }

    v51 = (*(*v58 + 216))(v58, v24, v47);
    v52 = *(a1 + 32);
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
    if (!v51)
    {
      if (v53)
      {
        LODWORD(__p[0]) = 136315138;
        *(__p + 4) = v24;
        _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I %s link created successfully", __p, 0xCu);
      }

LABEL_63:
      __p[0] = v20;
      *(sub_10142B4C4(a1 + 104, v22) + 32) = 1;
      goto LABEL_71;
    }

    if (v53)
    {
      v54 = strerror(v51);
      LODWORD(__p[0]) = 136315906;
      *(__p + 4) = v24;
      WORD2(__p[1]) = 2080;
      *(&__p[1] + 6) = v47;
      HIWORD(__p[2]) = 1024;
      LODWORD(v61) = v51;
      WORD2(v61) = 2080;
      *(&v61 + 6) = v54;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#N Could not create %s --> %s symlink, error=%d (%s)", __p, 0x26u);
    }

    if (v51 != 17)
    {
      goto LABEL_63;
    }

LABEL_71:
    v20 += 6;
    --v21;
  }

  while (v21);
  if (v59)
  {
    sub_100004A34(v59);
  }

  if (v57)
  {
    sub_100004A34(v57);
  }

  os_unfair_lock_unlock((a1 + 24));
}

void sub_1014298A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  sub_10004F058(exception_object);
}

void sub_101429984(uint64_t a1, int a2)
{
  v19 = a2;
  os_unfair_lock_lock((a1 + 24));
  v21 = &off_101EA1020;
  sub_10000501C(&__p, "/var/wireless/Library/LASD/");
  v4 = sub_1009C7B10(&v21, &__p.st_dev);
  v5 = v4;
  if (SHIBYTE(__p.st_gid) < 0)
  {
    operator delete(*&__p.st_dev);
    if (v5)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ((v4 & 1) == 0)
  {
LABEL_5:
    sub_1009C804C(&v21, "/var/wireless/Library/LASD/", 493, 1);
  }

LABEL_6:
  if (a2 > 7)
  {
    v6 = "/var/mobile/Library/LASD/lasdnr.db";
    v7 = "/var/wireless/Library/LASD/lasdnr.db";
    v8 = "/var/mobile/Library/LASD/lasdscdma.db";
    v9 = "/var/wireless/Library/LASD/lasdscdma.db";
    v13 = "/var/mobile/Library/LASD/lasdgsm.db";
    v14 = "/var/wireless/Library/LASD/lasdgsm.db";
    if (a2 != 8)
    {
      v14 = 0;
      v13 = 0;
    }

    if (a2 != 16)
    {
      v9 = v14;
      v8 = v13;
    }

    v12 = a2 == 32;
  }

  else
  {
    v6 = "/var/mobile/Library/LASD/lasdumts.db";
    v7 = "/var/wireless/Library/LASD/lasdumts.db";
    v8 = "/var/mobile/Library/LASD/lasdcdma.db";
    v9 = "/var/wireless/Library/LASD/lasdcdma.db";
    v10 = "/var/mobile/Library/LASD/lasdlte.db";
    v11 = "/var/wireless/Library/LASD/lasdlte.db";
    if (a2 != 4)
    {
      v11 = 0;
      v10 = 0;
    }

    if (a2 != 2)
    {
      v9 = v11;
      v8 = v10;
    }

    v12 = a2 == 1;
  }

  if (v12)
  {
    v15 = v7;
  }

  else
  {
    v15 = v9;
  }

  if (v12)
  {
    v16 = v6;
  }

  else
  {
    v16 = v8;
  }

  memset(&__p, 0, sizeof(__p));
  if (lstat(v15, &__p) < 0)
  {
    if (*__error() != 2)
    {
      goto LABEL_32;
    }
  }

  else if ((__p.st_mode & 0xA000) != 0)
  {
    unlink(v15);
  }

  else
  {
    remove(v15, v17);
  }

  *buf = &v19;
  *(sub_10142B4C4(a1 + 104, a2) + 32) = 0;
  v18 = *(a1 + 32);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = v16;
    v23 = 2080;
    v24 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Trying to establish link %s ----> %s", buf, 0x16u);
  }

  symlink(v16, v15);
LABEL_32:
  FileSystemInterface::~FileSystemInterface(&v21);
  os_unfair_lock_unlock((a1 + 24));
}

void sub_101429C04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  FileSystemInterface::~FileSystemInterface((v16 - 88));
  sub_10004F058(exception_object);
}

uint64_t sub_101429C4C(uint64_t a1, int a2)
{
  os_unfair_lock_lock((a1 + 24));
  v4 = *(a1 + 112);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 112;
  do
  {
    if (*(v4 + 28) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 28) < a2));
  }

  while (v4);
  if (v5 == a1 + 112 || *(v5 + 28) > a2)
  {
LABEL_8:
    v6 = *(a1 + 32);
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
LABEL_25:
      v8 = 1;
      goto LABEL_26;
    }

    if (a2 > 7)
    {
      switch(a2)
      {
        case 8:
          v7 = "gsm";
          goto LABEL_24;
        case 16:
          v7 = "scdma";
          goto LABEL_24;
        case 32:
          v7 = "nr";
          goto LABEL_24;
      }
    }

    else
    {
      switch(a2)
      {
        case 1:
          v7 = "umts";
          goto LABEL_24;
        case 2:
          v7 = "cdma";
          goto LABEL_24;
        case 4:
          v7 = "lte";
LABEL_24:
          v10 = 136315138;
          v11 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Could not find %s database to determine if bootstrap is in use or not", &v10, 0xCu);
          goto LABEL_25;
      }
    }

    v7 = "unknown";
    goto LABEL_24;
  }

  v8 = *(v5 + 32);
LABEL_26:
  os_unfair_lock_unlock((a1 + 24));
  return v8 & 1;
}

void sub_101429DD8(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 138412290;
    v19 = v3;
    v5 = "#I Date of next update: %@";
    v6 = v2;
    v7 = 12;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_7;
    }

    *buf = 0;
    v5 = "#I Date of next update unknown";
    v6 = v2;
    v7 = 2;
  }

  _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
LABEL_7:
  v8 = *(a1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CSIBOOLAsString(*(a1 + 48));
    *buf = 136315138;
    v19 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Timer running: %s", buf, 0xCu);
  }

  v10 = *(a1 + 104);
  if (v10 != (a1 + 112))
  {
    while (1)
    {
      v11 = *(a1 + 32);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

LABEL_26:
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
      if (v16 == (a1 + 112))
      {
        goto LABEL_32;
      }
    }

    v12 = *(v10 + 7);
    if (v12 > 7)
    {
      switch(v12)
      {
        case 8:
          v13 = "gsm";
          goto LABEL_25;
        case 16:
          v13 = "scdma";
          goto LABEL_25;
        case 32:
          v13 = "nr";
          goto LABEL_25;
      }
    }

    else
    {
      switch(v12)
      {
        case 1:
          v13 = "umts";
          goto LABEL_25;
        case 2:
          v13 = "cdma";
          goto LABEL_25;
        case 4:
          v13 = "lte";
LABEL_25:
          v14 = CSIBOOLAsString(*(v10 + 32));
          *buf = 136315394;
          v19 = v13;
          v20 = 2080;
          v21 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s bootstrap in use: %s", buf, 0x16u);
          goto LABEL_26;
      }
    }

    v13 = "unknown";
    goto LABEL_25;
  }

LABEL_32:
  os_unfair_lock_unlock((a1 + 24));
}

void sub_10142A06C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10142A07C(uint64_t a1@<X0>, const void **a2@<X8>)
{
  os_unfair_lock_lock((a1 + 24));
  sub_100431B34(a2, (a1 + 40));

  os_unfair_lock_unlock((a1 + 24));
}

void sub_10142A0C8(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = dword_101FCAA60;
  sub_10011CF40(a1, qword_101FCAA48);
  for (i = qword_101FCAA50; i; i = *i)
  {
    sub_10142A30C(a1, *(i + 16));
  }
}

BOOL sub_10142A148(os_unfair_lock_s *a1)
{
  os_unfair_lock_lock(a1 + 6);
  v2 = sub_10007AEAC(&a1[32], 0) == 1;
  os_unfair_lock_unlock(a1 + 6);
  return v2;
}

void sub_10142A198(uint64_t a1)
{
  sub_10142A20C(a1);

  operator delete();
}

uint64_t sub_10142A1D0(uint64_t a1)
{
  sub_1012646E4(a1 + 32);
  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10142A20C(uint64_t a1)
{
  *a1 = off_101F3AD50;
  v2 = *(a1 + 160);
  *(a1 + 160) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v3)
  {
    v4 = *(v3 + 8);
    *(v3 + 8) = 0;
    if (v4)
    {
      (*(*v4 + 32))(v4);
    }

    TMKXPCServer.shutdown()();
    operator delete();
  }

  sub_100034450(*(a1 + 112));
  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10142A708(a1 + 56);
  sub_1003EC530((a1 + 40));
  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void *sub_10142A30C(void *result, int a2)
{
  v2 = result[1];
  if (!v2)
  {
    goto LABEL_18;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*result + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v7 = v6[1];
    if (v7 == a2)
    {
      break;
    }

    if (v3.u32[0] > 1uLL)
    {
      if (v7 >= v2)
      {
        v7 %= v2;
      }
    }

    else
    {
      v7 &= v2 - 1;
    }

    if (v7 != v4)
    {
      goto LABEL_18;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_18;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_10142A624(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10142A660(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10142A698(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10142A6C8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10142A708(uint64_t a1)
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

void sub_10142A860(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
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

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v19);
  _Unwind_Resume(a1);
}

void *sub_10142A8A8(void *a1)
{
  *a1 = off_101F3AF98;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10142A900(void *a1)
{
  *a1 = off_101F3AF98;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_10142AA04(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3AF98;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
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

void sub_10142AA64(void *a1)
{
  sub_1001E3C94(a1 + 8);

  operator delete(a1);
}

void sub_10142AAA0(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  sub_10142AC0C(&v9, v3);
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 32);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received callback from CCMobileHelper for local LASD database update", buf, 2u);
        }

        os_unfair_lock_lock((v5 + 24));
        sub_10142848C(v5, &v9);
        os_unfair_lock_unlock((v5 + 24));
      }

      sub_100004A34(v7);
    }
  }

  sub_101264468(&v9, v10[0]);
  xpc_release(v3);
}

void sub_10142AB98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_101264468(&a10, a11);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_10142ABC0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10142AC0C(uint64_t a1, xpc_object_t object)
{
  if (object && (v3 = object, xpc_get_type(object) == &_xpc_type_array))
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
  }

  v4 = (a1 + 8);
  sub_101264468(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  if (xpc_get_type(v3) == &_xpc_type_array)
  {
    objecta[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      objecta[0] = xpc_null_create();
    }

    sub_100008EA4(&v18, objecta, 0);
    xpc_release(objecta[0]);
    objecta[0] = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      objecta[0] = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v17, objecta, count);
    xpc_release(objecta[0]);
    for (i = v19; ; i = ++v19)
    {
      if (i == v17[1] && v18 == v17[0])
      {
        xpc_release(v17[0]);
        xpc_release(v18);
        goto LABEL_41;
      }

      v16 = 0;
      objecta[0] = &v18;
      objecta[1] = i;
      sub_10003EAD4(objecta, &v16);
      if (xpc_get_type(v16) == &_xpc_type_dictionary)
      {
        break;
      }

LABEL_39:
      xpc_release(v16);
    }

    *__p = 0u;
    v15 = 0u;
    *objecta = 0u;
    LODWORD(objecta[1]) = 1;
    v7 = v16;
    if (v16)
    {
      xpc_retain(v16);
      v23 = v7;
    }

    else
    {
      v7 = xpc_null_create();
      v23 = v7;
      if (!v7)
      {
        v8 = xpc_null_create();
        v7 = 0;
        goto LABEL_26;
      }
    }

    if (xpc_get_type(v7) == &_xpc_type_dictionary)
    {
      xpc_retain(v7);
      v8 = v7;
LABEL_27:
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v20 = &v23;
        v21 = "first";
        sub_100006354(&v20, &v22);
        LODWORD(objecta[0]) = xpc::dyn_cast_or_default(&v22, 0, v9);
        xpc_release(v22);
        v20 = &v23;
        v21 = "second";
        sub_100006354(&v20, &v22);
        read_rest_value();
        xpc_release(v22);
        v8 = v23;
      }

      xpc_release(v8);
      xpc_release(v7);
      v10 = *v4;
      if (!*v4)
      {
LABEL_35:
        operator new();
      }

      while (1)
      {
        while (1)
        {
          v11 = v10;
          v12 = *(v10 + 32);
          if (v12 <= SLODWORD(objecta[0]))
          {
            break;
          }

          v10 = *v11;
          if (!*v11)
          {
            goto LABEL_35;
          }
        }

        if (v12 >= SLODWORD(objecta[0]))
        {
          break;
        }

        v10 = v11[1];
        if (!v10)
        {
          goto LABEL_35;
        }
      }

      if (BYTE8(v15) == 1 && SBYTE7(v15) < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_39;
    }

    v8 = xpc_null_create();
LABEL_26:
    v23 = v8;
    goto LABEL_27;
  }

LABEL_41:
  xpc_release(v3);
}

void sub_10142AFB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20, uint64_t a21, xpc_object_t a22)
{
  xpc_release(object);
  xpc_release(a22);
  xpc_release(v22);
  _Unwind_Resume(a1);
}

uint64_t sub_10142B0AC(uint64_t a1)
{
  sub_1012646E4(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  sub_1001A8E08(a1, *(a1 + 8));
  return a1;
}

void *sub_10142B0F4(void *a1)
{
  *a1 = off_101F3B018;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_10142B14C(void *a1)
{
  *a1 = off_101F3B018;
  v2 = a1[5];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete();
}

uint64_t sub_10142B250(uint64_t result, uint64_t a2)
{
  *a2 = off_101F3B018;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
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

void sub_10142B2B0(void *a1)
{
  sub_1001E3C94(a1 + 8);

  operator delete(a1);
}

void sub_10142B2EC(void *a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v10[0] = 0;
  v10[1] = 0;
  v9 = v10;
  sub_10142AC0C(&v9, v3);
  v4 = a1[3];
  if (v4)
  {
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (a1[2])
      {
        v8 = *(v5 + 32);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Received callback from CCMobileHelper for LASD database update", buf, 2u);
        }

        os_unfair_lock_lock((v5 + 24));
        sub_10142848C(v5, &v9);
        os_unfair_lock_unlock((v5 + 24));
      }

      sub_100004A34(v7);
    }
  }

  sub_101264468(&v9, v10[0]);
  xpc_release(v3);
}

void sub_10142B3E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_101264468(&a10, a11);
  xpc_release(v11);
  _Unwind_Resume(a1);
}

uint64_t sub_10142B40C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10142B458(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDateGetTypeID()))
  {
    *a1 = v4;
  }

  else
  {
    *a1 = 0;
    if (*a2)
    {
      CFRelease(*a2);
    }
  }

  return a1;
}

uint64_t *sub_10142B4C4(uint64_t a1, int a2)
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
      v4 = *(v2 + 28);
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

uint64_t sub_10142B5A8()
{
  v3[0] = 8;
  sub_10000501C(v4, "/var/mobile/Library/LASD/lasdgsm.db");
  v5 = 1;
  sub_10000501C(v6, "/var/mobile/Library/LASD/lasdumts.db");
  v7 = 2;
  sub_10000501C(v8, "/var/mobile/Library/LASD/lasdcdma.db");
  v9 = 4;
  sub_10000501C(v10, "/var/mobile/Library/LASD/lasdlte.db");
  v11 = 16;
  sub_10000501C(v12, "/var/mobile/Library/LASD/lasdscdma.db");
  v13 = 32;
  sub_10000501C(v14, "/var/mobile/Library/LASD/lasdnr.db");
  v15 = 0;
  sub_10000501C(v16, "/var/mobile/Library/LASD/lasdunknown.db");
  v0 = 0;
  unk_101FCAA40 = 0u;
  *&qword_101FCAA50 = 0u;
  dword_101FCAA60 = 1065353216;
  do
  {
    sub_10142A30C(&unk_101FCAA40, v3[v0]);
    v0 += 8;
  }

  while (v0 != 56);
  for (i = 0; i != -224; i -= 32)
  {
    if (v16[i + 23] < 0)
    {
      operator delete(*&v16[i]);
    }
  }

  return __cxa_atexit(sub_1014275F8, &unk_101FCAA40, &_mh_execute_header);
}

void sub_10142B750(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  while (1)
  {
    if (*(v10 - 1) < 0)
    {
      operator delete(*(v10 - 3));
    }

    v10 -= 32;
    if (v10 == &a10)
    {
      _Unwind_Resume(exception_object);
    }
  }
}

void LASDController::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10142C0B8(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10142C1B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  v3 = (a1 + 232);
  if (v2 != (a1 + 232))
  {
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
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
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_12;
      }

      if ((BasicSimInfo::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return;
      }
    }

    v7 = *(v2 + 8);
LABEL_12:
    sub_101432794(a1, v7);
    goto LABEL_13;
  }
}

uint64_t sub_10142C288(uint64_t result, int a2)
{
  v2 = *(result + 338);
  if (v2 != a2)
  {
    v4 = result;
    v5 = *(result + 32);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CSIBOOLAsString(a2);
      v7 = CSIBOOLAsString(*(v4 + 338));
      v8 = 136315394;
      v9 = v6;
      v10 = 2080;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Cellular data setting changed from %s to %s", &v8, 0x16u);
      if ((*(v4 + 338) & 1) == 0)
      {
        return (*(**(v4 + 120) + 16))(*(v4 + 120));
      }
    }

    else if (!v2)
    {
      return (*(**(v4 + 120) + 16))(*(v4 + 120));
    }

    return (*(**(v4 + 120) + 24))(*(v4 + 120), "Cellular data status change");
  }

  return result;
}

uint64_t sub_10142C3C4(uint64_t a1, double a2, double a3)
{
  v6 = sub_1000B1374();
  v7 = *(a1 + 32);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      std::to_string(&v64, a2);
      v9 = SHIBYTE(v64.__r_.__value_.__r.__words[2]);
      v10 = v64.__r_.__value_.__r.__words[0];
      std::to_string(&v57, a3);
      v11 = &v64;
      if (v9 < 0)
      {
        v11 = v10;
      }

      if ((v57.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v57;
      }

      else
      {
        v12 = v57.__r_.__value_.__r.__words[0];
      }

      *buf = 136315394;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Handling location (%s,%s) available", buf, 0x16u);
      if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v57.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }
    }
  }

  else if (v8)
  {
    LOWORD(v64.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Handling location available", &v64, 2u);
  }

  v13 = *(a1 + 320);
  if (v13)
  {
    v14 = *(a1 + 32);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT) || (LODWORD(v64.__r_.__value_.__l.__data_) = 134217984, *(v64.__r_.__value_.__r.__words + 4) = v13, _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Sending %zu pending replies", &v64, 0xCu), *(a1 + 320)))
    {
      do
      {
        v15 = (*(*(a1 + 288) + 8 * (*(a1 + 312) / 0xAAuLL)) + 24 * (*(a1 + 312) % 0xAAuLL));
        v16 = *v15;
        v18 = *(v15 + 1);
        v17 = *(v15 + 2);
        if (v17)
        {
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_10142CD28((a1 + 280));
          atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        else
        {
          sub_10142CD28((a1 + 280));
        }

        *v18 = 1;
        if (v16 == 2)
        {
          v64.__r_.__value_.__r.__words[0] = 0;
          v22 = *(a1 + 136);
          v23 = *(a1 + 96);
          v55 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v22 + 16))(&v64, a2, a3);
          v21 = v55;
          if (v55)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v16 != 3)
          {
            v24 = *(a1 + 32);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = asString();
              LODWORD(v64.__r_.__value_.__l.__data_) = 136315138;
              *(v64.__r_.__value_.__r.__words + 4) = v25;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#N Unhandled FetchType: %s", &v64, 0xCu);
            }

            v26 = *(v18 + 8);
            *(v18 + 8) = 0;
            v64.__r_.__value_.__r.__words[0] = v26;
            sub_10000A1EC(&v64.__r_.__value_.__l.__data_);
            *v18 = 2;
            if (!v17)
            {
              continue;
            }

LABEL_27:
            sub_100004A34(v17);
            sub_100004A34(v17);
            continue;
          }

          v64.__r_.__value_.__r.__words[0] = 0;
          v19 = *(a1 + 136);
          v20 = *(a1 + 96);
          v56 = v20;
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          (*(*v19 + 16))(&v64, a2, a3);
          v21 = v56;
          if (v56)
          {
LABEL_25:
            sub_100004A34(v21);
          }
        }

        sub_1000420D0((v18 + 8), &v64.__r_.__value_.__l.__data_);
        sub_10000A1EC(&v64.__r_.__value_.__l.__data_);
        if (v17)
        {
          goto LABEL_27;
        }
      }

      while (*(a1 + 320));
    }

    sub_10142CDAC((a1 + 280));
  }

  subscriber::makeSimSlotRange();
  size = v57.__r_.__value_.__l.__size_;
  v28 = v57.__r_.__value_.__r.__words[0];
  if (v57.__r_.__value_.__r.__words[0] != v57.__r_.__value_.__l.__size_)
  {
    v29 = v57.__r_.__value_.__r.__words[2];
    do
    {
      if (v29(*v28))
      {
        break;
      }

      ++v28;
    }

    while (v28 != size);
    v30 = v57.__r_.__value_.__l.__size_;
    if (v28 != v57.__r_.__value_.__l.__size_)
    {
      v54 = (a1 + 168);
      while (1)
      {
        v31 = *v28;
        v32 = (*(**(a1 + 40) + 16))(*(a1 + 40), *v28);
        v33 = v32;
        v34 = *(a1 + 256);
        if (v34)
        {
          v35 = a1 + 256;
          do
          {
            if (*(v34 + 28) >= v31)
            {
              v35 = v34;
            }

            v34 = *(v34 + 8 * (*(v34 + 28) < v31));
          }

          while (v34);
          if (v35 != a1 + 256 && *(v35 + 28) <= v31)
          {
            break;
          }
        }

        v36 = *v32;
        if (os_log_type_enabled(*v32, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v64.__r_.__value_.__l.__data_) = 0;
          _os_log_error_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, "Could not find registration status for handling location available", &v64, 2u);
        }

        do
        {
LABEL_54:
          ++v28;
        }

        while (v28 != size && (v29(*v28) & 1) == 0);
        if (v28 == v30)
        {
          goto LABEL_95;
        }
      }

      v37 = *(v35 + 32);
      if (v37 > 6 || ((1 << v37) & 0x47) == 0)
      {
        v45 = *v32;
        if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v64.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Device is registered, no need to camping hints", &v64, 2u);
        }

        goto LABEL_54;
      }

      v39 = *v32;
      if (os_log_type_enabled(*v32, OS_LOG_TYPE_DEFAULT))
      {
        v40 = asString();
        LODWORD(v64.__r_.__value_.__l.__data_) = 136315138;
        *(v64.__r_.__value_.__r.__words + 4) = v40;
        _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Status %s, assuming device is not registered", &v64, 0xCu);
      }

      v41 = a1 + 168;
      v42 = *v54;
      if (!*v54)
      {
        goto LABEL_70;
      }

      do
      {
        if (*(v42 + 32) >= v31)
        {
          v41 = v42;
        }

        v42 = *(v42 + 8 * (*(v42 + 32) < v31));
      }

      while (v42);
      if (v41 != v54 && *(v41 + 32) <= v31)
      {
        v46 = *(v41 + 40);
        v43 = *(v41 + 48);
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v46)
        {
          v53 = v30;
          v47 = (*(*v46 + 24))(v46);
          v48 = *v33;
          v49 = os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT);
          if (v47)
          {
            if (v49)
            {
              LOWORD(v64.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Already sent registration status hints, will re-send the next airplane mode toggle or baseband reset", &v64, 2u);
            }

            v30 = v53;
          }

          else
          {
            if (v49)
            {
              LOWORD(v64.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Device is not registered, sending frequency hints", &v64, 2u);
            }

            cf = 0;
            v50 = *(a1 + 136);
            v51 = *(a1 + 96);
            *buf = *(a1 + 88);
            *&buf[8] = v51;
            if (v51)
            {
              atomic_fetch_add_explicit((v51 + 8), 1uLL, memory_order_relaxed);
            }

            (*(*v50 + 16))(&cf, a2, a3);
            v30 = v53;
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            v58 = v31;
            v59 = cf;
            if (cf)
            {
              CFRetain(cf);
            }

            v62 = 0;
            lasd::write_rest_value(&v58, &v62);
            sub_10000501C(&v64, "/cc/events/registration_hints");
            object = v62;
            v62 = xpc_null_create();
            ctu::RestModule::sendEvent();
            xpc_release(object);
            object = 0;
            if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v64.__r_.__value_.__l.__data_);
            }

            xpc_release(v62);
            sub_10000A1EC(&v59);
            (*(*v46 + 32))(v46, 1);
            sub_10000A1EC(&cf);
          }

          goto LABEL_73;
        }
      }

      else
      {
LABEL_70:
        v43 = 0;
      }

      v44 = *v33;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v64.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Could not get model for sending not registered hints", &v64, 2u);
      }

LABEL_73:
      if (v43)
      {
        sub_100004A34(v43);
      }

      goto LABEL_54;
    }
  }

LABEL_95:
  (*(**(a1 + 120) + 16))(*(a1 + 120));
  result = *(a1 + 328);
  *(a1 + 328) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_10142CC24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, char a24, xpc_object_t object, xpc_object_t a26, uint64_t a27, uint64_t a28)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10142CD28(void *a1)
{
  v2 = a1[4];
  v3 = *(*(a1[1] + 8 * (v2 / 0xAA)) + 24 * (v2 % 0xAA) + 16);
  if (v3)
  {
    sub_100004A34(v3);
    v2 = a1[4];
  }

  v4 = a1[5] - 1;
  a1[4] = v2 + 1;
  a1[5] = v4;

  sub_1014328F8(a1, 1);
}

void sub_10142CDAC(void **a1)
{
  if (a1[5])
  {
    sub_1014328F8(a1, 0);
    i = a1[1];
    v3 = a1[2];
    v4 = 170 * ((v3 - i) >> 3) - 1;
    if (v3 == i)
    {
      v4 = 0;
    }

    if (v4 - (a1[4] + a1[5]) >= 0xAA)
    {
      operator delete(*(v3 - 8));
      i = a1[1];
      v3 = a1[2] - 8;
      a1[2] = v3;
    }
  }

  else
  {
    v5 = a1[1];
    for (i = a1[2]; i != v5; a1[2] = i)
    {
      operator delete(*(i - 8));
      v5 = a1[1];
      i = a1[2] - 8;
    }

    a1[4] = 0;
    v3 = i;
  }

  v6 = *a1;
  v7 = a1[3] - *a1;
  if (v7 > (v3 - i))
  {
    if (v3 != i)
    {
      sub_100EF4E80((v3 - i) >> 3);
    }

    v8 = 0;
    if (v7 >> 3)
    {
      v9 = a1[1];
      v10 = a1[2] - v9;
      if (v10)
      {
        v11 = 0;
        do
        {
          v12 = *v9++;
          *v11++ = v12;
          v10 -= 8;
        }

        while (v10);
        v9 = a1[1];
        v13 = a1[2];
        v6 = *a1;
      }

      else
      {
        v13 = a1[1];
      }

      *a1 = 0;
      a1[1] = 0;
      a1[2] = (v13 - v9);
      a1[3] = 0;
      v8 = v6;
    }

    if (v8)
    {

      operator delete(v8);
    }
  }
}

uint64_t sub_10142CF14(void **a1, uint64_t a2)
{
  v4 = a1[4];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 136315138;
    *&v12[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Location was not available at this time: %s", v12, 0xCu);
    v4 = a1[4];
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[40];
    *v12 = 134217984;
    *&v12[4] = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sending %zu pending replies", v12, 0xCu);
  }

  while (a1[40])
  {
    v6 = *(a1[36] + a1[39] / 0xAA) + 24 * (a1[39] % 0xAA);
    v8 = *(v6 + 8);
    v7 = *(v6 + 16);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_10142CD28(a1 + 35);
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      *v8 = 2;
      v9 = *(v8 + 8);
      *(v8 + 8) = 0;
      *v12 = v9;
      sub_10000A1EC(v12);
      sub_100004A34(v7);
      sub_100004A34(v7);
    }

    else
    {
      sub_10142CD28(a1 + 35);
      *v8 = 2;
      v10 = *(v8 + 8);
      *(v8 + 8) = 0;
      *v12 = v10;
      sub_10000A1EC(v12);
    }
  }

  sub_10142CDAC(a1 + 35);
  result = a1[41];
  a1[41] = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_10142D104(uint64_t a1)
{
  v2 = *(a1 + 193);
  v3 = (*(**(a1 + 120) + 40))(*(a1 + 120));
  v4 = v3;
  if ((v2 & 1) == 0)
  {
    *(a1 + 192) = v3 | 0x100;
    v10 = *(a1 + 32);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v11 = "not available";
    if (v4)
    {
      v11 = "available";
    }

    v16 = 136315138;
    v17 = v11;
    v12 = "#I Location services are %s";
    goto LABEL_15;
  }

  if (*(a1 + 192) == v3)
  {
    v5 = *(a1 + 32);
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v6 = "not available";
    if (v4)
    {
      v6 = "available";
    }

    v16 = 136315138;
    v17 = v6;
    v7 = "#I Location services authorized remains at %s";
    v8 = v5;
    v9 = 12;
LABEL_19:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v16, v9);
    return;
  }

  *(a1 + 192) = v3 | 0x100;
  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v13 = "not available";
    if (v4)
    {
      v13 = "available";
    }

    v16 = 136315138;
    v17 = v13;
    v12 = "#I Location authorization changed, now %s";
LABEL_15:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v12, &v16, 0xCu);
  }

LABEL_16:
  if (*(a1 + 337) == 1)
  {
    v14 = *(a1 + 32);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v16) = 0;
    v7 = "#I Radio is down, pending location authorization change";
    v8 = v14;
    v9 = 2;
    goto LABEL_19;
  }

  if (*(a1 + 192))
  {
    v15 = 5;
  }

  else
  {
    v15 = 6;
  }

  sub_10142D324(a1 + 200, v15);
}

void sub_10142D324(uint64_t a1, int a2)
{
  v8 = 0;
  v2 = a2;
  v3 = asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/events/lasd_status_hint");
  object = v8;
  v8 = xpc_null_create();
  ctu::RestModule::sendEvent();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_10142D3C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_10142D40C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Did not find any frequency information for %s fetch type", &buf, 0xCu);
  }

  *a3 = 4;
  object = 0;
  v7 = _CFXPCCreateXPCObjectFromCFObject();
  v8 = v7;
  if (v7)
  {
    object = v7;
  }

  else
  {
    v8 = xpc_null_create();
    object = v8;
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
  object = v9;
LABEL_11:
  xpc_release(v8);
  if (xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xarray = 0;
    buf = 0uLL;
    v55 = 0;
    ctu::cf::assign();
    __p = buf;
    *&v53 = v55;
    p_p = buf;
    if (v55 >= 0)
    {
      p_p = &__p;
    }

    v41[0] = &object;
    v41[1] = p_p;
    sub_100015504(v41, &xarray);
    if (SBYTE7(v53) < 0)
    {
      operator delete(__p);
    }

    if (xpc_get_type(xarray) == &_xpc_type_array)
    {
      if (*a2 == 1)
      {
        *&buf = xarray;
        if (xarray)
        {
          xpc_retain(xarray);
        }

        else
        {
          *&buf = xpc_null_create();
        }

        sub_100008EA4(&v48, &buf, 0);
        xpc_release(buf);
        *&buf = xarray;
        if (xarray)
        {
          xpc_retain(xarray);
        }

        else
        {
          *&buf = xpc_null_create();
        }

        if (xpc_get_type(xarray) == &_xpc_type_array)
        {
          count = xpc_array_get_count(xarray);
        }

        else
        {
          count = 0;
        }

        sub_100008EA4(v47, &buf, count);
        xpc_release(buf);
        v15 = (a3 + 16);
        for (i = v49; i != v47[1] || v48 != v47[0]; i = ++v49)
        {
          v46[0] = &v48;
          v46[1] = i;
          v45 = 0;
          sub_10003EAD4(v46, &v45);
          v44 = 0;
          buf = 0uLL;
          v55 = 0;
          ctu::cf::assign();
          __p = buf;
          *&v53 = v55;
          v17 = buf;
          if (v55 >= 0)
          {
            v17 = &__p;
          }

          v41[0] = &v45;
          v41[1] = v17;
          sub_100006354(v41, &v44);
          if (SBYTE7(v53) < 0)
          {
            operator delete(__p);
          }

          __p = 0u;
          v53 = 0u;
          v19 = xpc::dyn_cast_or_default(&v44, 0, v18);
          MCC::MCC(&__p, v19);
          v43 = 0;
          buf = 0uLL;
          v55 = 0;
          ctu::cf::assign();
          *v41 = buf;
          *&v42 = v55;
          v20 = buf;
          if (v55 >= 0)
          {
            v20 = v41;
          }

          v39[0] = &v45;
          v39[1] = v20;
          sub_100006354(v39, &v43);
          if (SBYTE7(v42) < 0)
          {
            operator delete(v41[0]);
          }

          *v41 = 0u;
          v42 = 0u;
          v22 = xpc::dyn_cast_or_default(&v43, 0, v21);
          MNC::MNC(v41, v22, &__p);
          formPLMN(&__p, v41);
          v24 = *(a3 + 24);
          v23 = *(a3 + 32);
          if (v24 >= v23)
          {
            v26 = 0xAAAAAAAAAAAAAAABLL * ((v24 - *v15) >> 3);
            v27 = v26 + 1;
            if (v26 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              sub_1000CE3D4();
            }

            v28 = 0xAAAAAAAAAAAAAAABLL * ((v23 - *v15) >> 3);
            if (2 * v28 > v27)
            {
              v27 = 2 * v28;
            }

            if (v28 >= 0x555555555555555)
            {
              v29 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v29 = v27;
            }

            v57 = a3 + 16;
            if (v29)
            {
              sub_100005348(a3 + 16, v29);
            }

            v30 = 24 * v26;
            v31 = *v39;
            *(v30 + 16) = v40;
            *v30 = v31;
            v39[1] = 0;
            v40 = 0;
            v39[0] = 0;
            v32 = 24 * v26 + 24;
            v33 = *(a3 + 16);
            v34 = *(a3 + 24) - v33;
            v35 = 24 * v26 - v34;
            memcpy((v30 - v34), v33, v34);
            v36 = *(a3 + 16);
            *(a3 + 16) = v35;
            *(a3 + 24) = v32;
            v37 = *(a3 + 32);
            *(a3 + 32) = 0;
            v55 = v36;
            v56 = v37;
            *&buf = v36;
            *(&buf + 1) = v36;
            sub_1000054E0(&buf);
            v38 = SHIBYTE(v40);
            *(a3 + 24) = v32;
            if (v38 < 0)
            {
              operator delete(v39[0]);
            }
          }

          else
          {
            v25 = *v39;
            *(v24 + 16) = v40;
            *v24 = v25;
            *(a3 + 24) = v24 + 24;
          }

          if (SHIBYTE(v42) < 0)
          {
            operator delete(v41[1]);
          }

          xpc_release(v43);
          if (SHIBYTE(v53) < 0)
          {
            operator delete(*(&__p + 1));
          }

          xpc_release(v44);
          xpc_release(v45);
        }

        xpc_release(v47[0]);
        xpc_release(v48);
      }
    }

    else
    {
      v12 = *(a1 + 32);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        sub_100D96E64(&object, &buf);
        v13 = v55 >= 0 ? &buf : buf;
        LODWORD(__p) = 136315138;
        *(&__p + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N Could not find fetch parameters in input frequency dictionary: %s", &__p, 0xCu);
        if (SHIBYTE(v55) < 0)
        {
          operator delete(buf);
        }
      }
    }

    xpc_release(xarray);
  }

  else
  {
    v10 = *(a1 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not convert frequency input frequency dictionary to XPC dictionary", &buf, 2u);
    }
  }

  xpc_release(object);
}

void sub_10142DA1C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16, void *a17, int a18, __int16 a19, char a20, char a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, xpc_object_t a27, xpc_object_t a28, xpc_object_t a29, uint64_t a30, uint64_t a31, xpc_object_t a32, uint64_t a33, xpc_object_t object, uint64_t a35, xpc_object_t a36, xpc_object_t a37, char a38, void *a39, int a40, __int16 a41, char a42, char a43, int a44, __int16 a45, char a46, char a47)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10142DBDC(uint64_t a1, size_t a2, xpc_object_t object)
{
  v5 = *(a1 + 40);
  if (object)
  {
    v6 = object;
    xpc_retain(object);
  }

  else
  {
    v6 = xpc_null_create();
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_array)
  {
    xpc_retain(v6);
    v7 = v6;
  }

  else
  {
    v7 = xpc_null_create();
  }

LABEL_8:
  xpc_release(v6);
  if (xpc_get_type(v7) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v7);
    v10 = *(v5 + 32);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = "s";
      v13 = 134218498;
      v14 = count;
      v15 = 2080;
      if (count == 1)
      {
        v11 = "";
      }

      v16 = v11;
      v17 = 2080;
      v18 = a2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Found %zu hint%s for %s", &v13, 0x20u);
    }

    *(*(*(a1 + 32) + 8) + 24) += count;
  }

  else
  {
    v8 = *(v5 + 32);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = a2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N Could not get frequency array for %s", &v13, 0xCu);
    }
  }

  xpc_release(v7);
  return 1;
}

void sub_10142DE9C(uint64_t a1)
{
  if (*(a1 + 216) == 1)
  {
    if (*(a1 + 152))
    {
      if (*(a1 + 188) != 1 || *(a1 + 184) != 2)
      {
        return;
      }

      v2 = *(a1 + 32);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I WiFi now available and previous update failed, forcing another one", buf, 2u);
      }

      v3 = *(a1 + 88);
      v4 = *(a1 + 16);
      v10 = v4;
      if (v4)
      {
        dispatch_retain(v4);
      }

      (*(*v3 + 24))(v3, 1, &v10);
      v5 = v10;
      if (!v10)
      {
        return;
      }

LABEL_19:
      dispatch_release(v5);
      return;
    }

    v7 = *(a1 + 32);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I WiFi now available, checking for initial update", buf, 2u);
    }

    v8 = *(a1 + 88);
    v9 = *(a1 + 16);
    object = v9;
    if (v9)
    {
      dispatch_retain(v9);
    }

    (*(*v8 + 24))(v8, 0, &object);
    v5 = object;
    if (object)
    {
      goto LABEL_19;
    }
  }

  else if ((*(a1 + 152) & 1) == 0)
  {
    v6 = *(a1 + 32);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Deferring initial update until WiFi is available", buf, 2u);
    }
  }
}

void sub_10142E04C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10142E074(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  *(a3 + 40) = *(a2 + 4);
  v5 = *a2;
  if (v5 - 2 < 2)
  {
    v11 = (*(**(a1 + 120) + 40))(*(a1 + 120));
    v12 = *(a1 + 32);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v11)
    {
      if (v13)
      {
        LODWORD(cf[0]) = 136315138;
        *(cf + 4) = asString();
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Handling %s fetch request", cf, 0xCu);
      }

      v24[0] = 0;
      v24[1] = 0;
      sub_10142DDE8();
    }

    if (v13)
    {
      LOWORD(cf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Border fetch indication: location service authorization is disabled", cf, 2u);
    }

    *cf = 0uLL;
    sub_10142DDE8();
  }

  if (v5 > 1)
  {
    v14 = *(a1 + 32);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(cf[0]) = 136315138;
      *(cf + 4) = asString();
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N Unhandled fetch type in search request: %s", cf, 0xCu);
    }
  }

  else
  {
    v7 = *(a1 + 136);
    v8 = *(a1 + 96);
    v25 = *(a1 + 88);
    v26 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24[0] = 0;
    sub_100010024(&v27, a2 + 1);
    (*(*v7 + 24))(cf, v7, &v25, &v27);
    v24[0] = cf[0];
    if (cf[0])
    {
      CFRetain(cf[0]);
    }

    sub_10001021C(cf);
    sub_10001021C(&v27);
    if (v26)
    {
      sub_100004A34(v26);
    }

    if (v24[0])
    {
      v9 = _CFXPCCreateXPCObjectFromCFObject();
      if (v9 || (v9 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v9) == &_xpc_type_dictionary)
        {
          xpc_retain(v9);
          v10 = v9;
        }

        else
        {
          v10 = xpc_null_create();
        }
      }

      else
      {
        v10 = xpc_null_create();
        v9 = 0;
      }

      xpc_release(v9);
      if (xpc_get_type(v10) == &_xpc_type_dictionary)
      {
        __p[0] = 0;
        __p[1] = __p;
        v22 = 0x2000000000;
        v23 = 0;
        cf[0] = _NSConcreteStackBlock;
        cf[1] = 0x40000000;
        cf[2] = sub_10142DBDC;
        cf[3] = &unk_101F3B090;
        cf[4] = __p;
        cf[5] = a1;
        xpc_dictionary_apply(v10, cf);
        v17 = *(__p[1] + 3);
        if (v17)
        {
          v18 = *(a1 + 32);
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = asString();
            v20 = "s";
            *buf = 134218498;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            if (v17 == 1)
            {
              v20 = "";
            }

            *&buf[14] = v20;
            v29 = 2080;
            v30 = v19;
            _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Found %zu technology hint%s in LASD database for %s", buf, 0x20u);
          }

          *a3 = 1;
          sub_1000420D0((a3 + 8), v24);
        }

        else
        {
          sub_10142D40C(a1, a2, a3);
        }

        _Block_object_dispose(__p, 8);
      }

      else
      {
        v16 = *(a1 + 32);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(cf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N Could not convert fetch frequency results into XPC object", cf, 2u);
        }

        sub_10142D40C(a1, a2, a3);
      }

      xpc_release(v10);
    }

    else
    {
      v15 = *(a1 + 32);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        LOWORD(cf[0]) = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "No frequency dictionary found from database", cf, 2u);
      }
    }

    sub_10000A1EC(v24);
  }
}

void sub_10142EB28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, std::__shared_weak_count *a18, uint64_t a19, uint64_t a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, char a29)
{
  operator delete(v30);
  if (v29)
  {
    operator delete(v29);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10142EC30(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 152));
    v28 = 136315138;
    v29 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Initial update completed: %s", &v28, 0xCu);
    v2 = *(a1 + 32);
  }

  v4 = *(a1 + 188);
  v5 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v4 == 1)
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    v6 = asString();
    v28 = 136315138;
    v29 = v6;
    v7 = "#I Previous update result: %s";
    v8 = v2;
    v9 = 12;
  }

  else
  {
    if (!v5)
    {
      goto LABEL_9;
    }

    LOWORD(v28) = 0;
    v7 = "#I Previous update result: not set";
    v8 = v2;
    v9 = 2;
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v28, v9);
LABEL_9:
  v10 = *(a1 + 193);
  v11 = *(a1 + 32);
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v10 == 1)
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    v13 = CSIBOOLAsString(*(a1 + 192));
    v28 = 136315138;
    v29 = v13;
    v14 = "#I Location services authorization: %s";
    v15 = v11;
    v16 = 12;
  }

  else
  {
    if (!v12)
    {
      goto LABEL_15;
    }

    LOWORD(v28) = 0;
    v14 = "#I Location services authorization: not set";
    v15 = v11;
    v16 = 2;
  }

  _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v28, v16);
LABEL_15:
  v17 = *(a1 + 32);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
  if (v18)
  {
    v19 = *(a1 + 320);
    v28 = 134217984;
    v29 = v19;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %zu pending search replies", &v28, 0xCu);
  }

  if ((capabilities::ct::supportsVoiceCall(v18) & 1) == 0)
  {
    v20 = *(a1 + 32);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = CSIBOOLAsString(*(a1 + 338));
      v28 = 136315138;
      v29 = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Cellular data setting: %s", &v28, 0xCu);
    }
  }

  (*(**(a1 + 88) + 64))(*(a1 + 88));
  result = (*(**(a1 + 136) + 48))(*(a1 + 136));
  v23 = *(a1 + 160);
  v24 = (a1 + 168);
  if (v23 != v24)
  {
    do
    {
      result = (*(*v23[5] + 16))(v23[5]);
      v25 = v23[1];
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
          v26 = v23[2];
          v27 = *v26 == v23;
          v23 = v26;
        }

        while (!v27);
      }

      v23 = v26;
    }

    while (v26 != v24);
  }

  return result;
}

uint64_t sub_10142EF50(uint64_t result, int a2)
{
  v2 = *(result + 336);
  if (v2 != a2)
  {
    v3 = result;
    v4 = *(result + 32);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315138;
      v10 = CSIBOOLAsString(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Radio online is now %s", &v9, 0xCu);
      if ((*(v3 + 336) & 1) == 0)
      {
        return (*(**(v3 + 120) + 16))(*(v3 + 120));
      }
    }

    else if ((v2 & 1) == 0)
    {
      return (*(**(v3 + 120) + 16))(*(v3 + 120));
    }

    v5 = *(v3 + 160);
    if (v5 != (v3 + 168))
    {
      do
      {
        (*(*v5[5] + 32))(v5[5], 0);
        v6 = v5[1];
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
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != (v3 + 168));
    }

    return (*(**(v3 + 120) + 24))(*(v3 + 120), "Radio online");
  }

  return result;
}

void sub_10142F0E4(uint64_t a1, int a2)
{
  v4 = *(a1 + 337);
  v5 = *(a1 + 32);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 == a2)
  {
    if (!v6)
    {
      return;
    }

    v14 = 136315138;
    v15 = CSIBOOLAsString(a2);
    v7 = "#I Radio is down remains at %s";
    v8 = v5;
    v9 = 12;
LABEL_10:
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, &v14, v9);
    return;
  }

  if (v6)
  {
    v14 = 136315138;
    v15 = CSIBOOLAsString(v4);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Radio is down now %s", &v14, 0xCu);
    if (*(a1 + 337))
    {
      v5 = *(a1 + 32);
LABEL_8:
      if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v14) = 0;
      v7 = "#I Radio is down, pending location authorization change";
      v8 = v5;
      v9 = 2;
      goto LABEL_10;
    }
  }

  else if (v4)
  {
    goto LABEL_8;
  }

  if ((*(a1 + 193) & 1) == 0)
  {
    v10 = (*(**(a1 + 120) + 40))(*(a1 + 120));
    *(a1 + 192) = v10 | 0x100;
    v11 = *(a1 + 32);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = "not available";
      if (v10)
      {
        v12 = "available";
      }

      v14 = 136315138;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Location services are %s", &v14, 0xCu);
    }
  }

  if (*(a1 + 192))
  {
    v13 = 5;
  }

  else
  {
    v13 = 6;
  }

  sub_10142D324(a1 + 200, v13);
}

void sub_10142F2E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10142F33C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10142F37C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 328);
    *(v1 + 328) = 0;
    if (v2)
    {
      (*(*v2 + 8))(v2);
    }

    v4 = *(v1 + 288);
    v3 = *(v1 + 296);
    if (v3 == v4)
    {
      v9 = (v1 + 320);
      v13 = *(v1 + 288);
    }

    else
    {
      v5 = *(v1 + 312);
      v6 = &v4[v5 / 0xAA];
      v7 = *v6;
      v8 = *v6 + 24 * (v5 % 0xAA);
      v9 = (v1 + 320);
      v10 = v4[(*(v1 + 320) + v5) / 0xAA] + 24 * ((*(v1 + 320) + v5) % 0xAA);
      if (v8 != v10)
      {
        do
        {
          v11 = *(v8 + 16);
          if (v11)
          {
            sub_100004A34(v11);
            v7 = *v6;
          }

          v8 += 24;
          if (v8 - v7 == 4080)
          {
            v12 = v6[1];
            ++v6;
            v7 = v12;
            v8 = v12;
          }
        }

        while (v8 != v10);
        v4 = *(v1 + 288);
        v3 = *(v1 + 296);
      }

      v13 = v3;
    }

    *v9 = 0;
    v14 = v13 - v4;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v4);
        v3 = *(v1 + 296);
        v4 = (*(v1 + 288) + 8);
        *(v1 + 288) = v4;
        v14 = v3 - v4;
      }

      while (v14 > 2);
      v13 = v3;
    }

    if (v14 == 1)
    {
      v15 = 85;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_23;
      }

      v15 = 170;
    }

    *(v1 + 312) = v15;
LABEL_23:
    if (v4 != v13)
    {
      do
      {
        v16 = *v4++;
        operator delete(v16);
      }

      while (v4 != v13);
      v13 = *(v1 + 288);
      v3 = *(v1 + 296);
    }

    if (v3 != v13)
    {
      *(v1 + 296) = v3 + ((v13 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    v17 = *(v1 + 280);
    if (v17)
    {
      operator delete(v17);
    }

    sub_10006DCAC(v1 + 248, *(v1 + 256));
    sub_100359978(v1 + 224, *(v1 + 232));
    v18 = *(v1 + 208);
    if (v18)
    {
      sub_100004A34(v18);
    }

    sub_10006EC28(v1 + 160, *(v1 + 168));
    v19 = *(v1 + 144);
    if (v19)
    {
      sub_100004A34(v19);
    }

    v20 = *(v1 + 128);
    if (v20)
    {
      sub_100004A34(v20);
    }

    v21 = *(v1 + 112);
    if (v21)
    {
      sub_100004A34(v21);
    }

    v22 = *(v1 + 96);
    if (v22)
    {
      sub_100004A34(v22);
    }

    v23 = *(v1 + 80);
    if (v23)
    {
      sub_100004A34(v23);
    }

    sub_1000FEFCC((v1 + 48));
    v24 = *(v1 + 40);
    *(v1 + 40) = 0;
    if (v24)
    {
      (*(*v24 + 8))(v24);
    }

    ctu::OsLogLogger::~OsLogLogger((v1 + 32));
    sub_1000C0544(v1);

    operator delete();
  }

  return result;
}

void sub_10142F5F8(ServiceManager::Service *this)
{
  *this = off_101F3B120;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10142F654(ServiceManager::Service *this)
{
  *this = off_101F3B120;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10142F6D4@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10142F718(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10142C0B8(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10142C0B8(v4, 0);
}

void sub_10142F7B8(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 8);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10142F898(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10142F9D0(void *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 8);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10142FB34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_1000FF844(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_10142FB5C(uint64_t **a1)
{
  v1 = **a1;
  v2 = (*(**(v1 + 120) + 16))(*(v1 + 120));
  if (capabilities::ct::supportsWidgetMode(v2))
  {
    (*(**(v1 + 120) + 48))(*(v1 + 120));
  }

  v3 = *(v1 + 104);
  if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  operator delete();
}

void sub_10142FC5C(uint64_t ***a1)
{
  v1 = *a1;
  v3 = **a1;
  v2 = (*a1)[1];
  v4 = v3[11];
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  v5 = v3[1];
  if (v5)
  {
    v6 = *v3;
    v7 = std::__shared_weak_count::lock(v5);
    if (v7)
    {
      v8 = v7;
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v7);
      v19[0] = off_101F3B650;
      v19[1] = v6;
      v19[2] = v8;
      v19[3] = v19;
      (*(*v4 + 16))(v4, &group, v19);
      sub_10142A708(v19);
      if (group)
      {
        dispatch_group_leave(group);
        if (group)
        {
          dispatch_release(group);
        }
      }

      v9 = v3[13];
      if (v9)
      {
        v10 = v1[1];
        object = v10;
        if (v10)
        {
          dispatch_retain(v10);
          dispatch_group_enter(v10);
        }

        v11 = v3[12];
        v14 = v3[11];
        v15 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v9 + 24))(v9, &object, &v14);
        if (v15)
        {
          sub_100004A34(v15);
        }

        if (object)
        {
          dispatch_group_leave(object);
          if (object)
          {
            dispatch_release(object);
          }
        }
      }

      Registry::createRestModuleOneTimeUseConnection(&v12, v3[9]);
      ctu::RestModule::connect();
      if (v13)
      {
        sub_100004A34(v13);
      }

      sub_10000501C(&__p, "/cc/props/wifi_status");
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1014308A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, dispatch_group_t group, dispatch_group_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35)
{
  sub_1000062D4(v35 - 160);
  if (a27 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

__n128 sub_101430BF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3B1E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101430C28(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_101430CF8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101430DC0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3B260;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101430DF8(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v21 = 0uLL;
  v22 = 0;
  sub_10010A62C(&v21, a2);
  p_size = &v3->__r_.__value_.__l.__size_;
  size = v3->__r_.__value_.__l.__size_;
  v18 = v3->__r_.__value_.__r.__words[0];
  v19 = size;
  v20 = v3->__r_.__value_.__r.__words[2];
  if (v20)
  {
    *(size + 16) = &v19;
    v3->__r_.__value_.__r.__words[0] = p_size;
    *p_size = 0;
    v3->__r_.__value_.__r.__words[2] = 0;
  }

  else
  {
    v18 = &v19;
  }

  v16 = v21;
  v17 = v22;
  v22 = 0;
  v21 = 0uLL;
  sub_100D21B04(v3, &v16);
  v23 = &v16;
  sub_1000B2AF8(&v23);
  if (v20 == v3->__r_.__value_.__r.__words[2])
  {
    v6 = v18;
    if (v18 == &v19)
    {
      goto LABEL_24;
    }

    v7 = v3->__r_.__value_.__r.__words[0];
    while (*(v6 + 8) == *(v7 + 8) && BasicSimInfo::operator==())
    {
      v8 = v6[1];
      v9 = v6;
      if (v8)
      {
        do
        {
          v6 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v6 = v9[2];
          v10 = *v6 == v9;
          v9 = v6;
        }

        while (!v10);
      }

      v11 = v7[1];
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
          v12 = v7[2];
          v10 = *v12 == v7;
          v7 = v12;
        }

        while (!v10);
      }

      v7 = v12;
      if (v6 == &v19)
      {
        goto LABEL_24;
      }
    }
  }

  v13 = a1[3];
  v14 = a1[4];
  v15 = (a1[2] + (v14 >> 1));
  if (v14)
  {
    v13 = *(*v15 + v13);
  }

  v13(v15, &v18);
LABEL_24:
  sub_100359978(&v18, v19);
  v18 = &v21;
  sub_1000B2AF8(&v18);
}

void sub_101430F9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, char *a13, uint64_t a14, char a15)
{
  sub_100359978(&a12, a13);
  a12 = &a15;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_101430FE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014310AC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3B2E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014310E4(void *a1)
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

uint64_t sub_10143110C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014311D4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3B360;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10143120C(void *a1)
{
  v2 = a1[1];
  result = read_rest_value();
  v4 = *v2;
  v5 = (&_mh_execute_header & 0x101FFFFFFFFLL) == 2;
  *v2 = v5;
  if (v4 != v5)
  {
    v6 = a1[3];
    v7 = a1[4];
    v8 = (a1[2] + (v7 >> 1));
    if (v7)
    {
      v6 = *(*v8 + v6);
    }

    return v6(v8);
  }

  return result;
}

uint64_t sub_101431294(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10143135C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3B3E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101431394(void *a1, xpc *this, uint64_t a3)
{
  v4 = a1[1];
  result = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = *v4;
  v7 = 0x10101000000uLL >> (8 * result);
  if (result >= 7)
  {
    LOBYTE(v7) = 1;
  }

  *v4 = v7;
  if (v6 != (v7 & 1))
  {
    v8 = a1[3];
    v9 = a1[4];
    v10 = (a1[2] + (v9 >> 1));
    if (v9)
    {
      v8 = *(*v10 + v8);
    }

    return v8(v10);
  }

  return result;
}

uint64_t sub_101431430(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014314F8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3B460;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101431530(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_1014315A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014315F4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void *sub_10143161C(void *a1)
{
  *a1 = off_101F3B500;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101431668(void *a1)
{
  *a1 = off_101F3B500;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1014316D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_101431784(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101431828(void *a1)
{
  *a1 = off_101F3B550;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101431874(void *a1)
{
  *a1 = off_101F3B550;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10143194C(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_101431974(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

__n128 sub_101431A18(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3B5D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

const void **sub_101431A50(void *a1, void **a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  *a3 = 0;
  a3[1] = 0;
  v16 = 0;
  v17[0] = 0;
  v17[1] = 0;
  sub_100DAEBF4(&v16, a2);
  v6 = a1[2];
  v7 = a1[3];
  v8 = (a1[1] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v10 = 0;
  v11 = 0u;
  v12 = 0u;
  v13 = 0;
  v14 = v5;
  v15 = v4;
  v6(v8, &v16, &v10);
  sub_101431B74(&v10);
  return sub_10001021C(v17);
}

void sub_101431AF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_101431B74(va);
  sub_10001021C((v2 + 8));
  _Unwind_Resume(a1);
}

uint64_t sub_101431B28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101431B74(uint64_t a1)
{
  if (*(a1 + 48))
  {
    sub_100DAE958(a1, &v6);
    v2 = *(a1 + 48);
    v3 = *v2;
    *v2 = v6;
    v6 = v3;
    xpc_release(v3);
    v6 = 0;
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v7 = (a1 + 16);
  sub_1000087B4(&v7);
  sub_10000A1EC((a1 + 8));
  return a1;
}

void sub_101431BFC(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  v3 = (*(**(v1 + 120) + 24))(*(v1 + 120), "Service start");
  if (capabilities::ct::supportsWidgetMode(v3))
  {
    (*(**(v1 + 120) + 56))(*(v1 + 120), "Service start");
  }

  v4 = *(v1 + 104);
  if (v4)
  {
    (*(*v4 + 32))(v4);
  }

  sub_10142DE9C(v1);
  operator delete();
}

void *sub_101431D58(void *a1)
{
  *a1 = off_101F3B650;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101431DA4(void *a1)
{
  *a1 = off_101F3B650;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101431E7C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3B650;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101431EB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101431EC4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101431F04(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (a2[2])
  {
    *(v4 + 16) = &v10;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v9 = &v10;
  }

  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = *(a1 + 8);
      if (v7)
      {
        v12 = *(a1 + 8);
        v13 = v6;
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_1012650F4(&v14, &v9);
        v8 = *(v7 + 8);
        if (v8)
        {
          if (std::__shared_weak_count::lock(v8))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v6);
    }
  }

  sub_101264468(&v9, v10);
}

void sub_1014320D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_100004A34(v13);
  sub_101264468(&a9, a10);
  _Unwind_Resume(a1);
}

uint64_t sub_101432108(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101432154(uint64_t **a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  v3 = v1 + 2;
  v4 = v1[2];
  *(*v1 + 152) = 1;
  if (v4 == v1 + 3)
  {
    goto LABEL_72;
  }

  v5 = 0;
  do
  {
    v6 = *(v4 + 10);
    if (v6 == 2)
    {
      v14 = *(v2 + 32);
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
LABEL_58:
        v5 = 1;
        goto LABEL_64;
      }

      sub_1007C005C(v4 + 48, "", __p);
      if (v32 >= 0)
      {
        v15 = __p;
      }

      else
      {
        v15 = __p[0];
      }

      v16 = *(v4 + 8);
      if (v16 > 7)
      {
        if (v16 == 8)
        {
          v17 = "gsm";
          goto LABEL_56;
        }

        if (v16 != 16)
        {
          if (v16 == 32)
          {
            v17 = "nr";
            goto LABEL_56;
          }

          goto LABEL_52;
        }

        v17 = "scdma";
      }

      else
      {
        if (v16 == 1)
        {
          v17 = "umts";
          goto LABEL_56;
        }

        if (v16 != 2)
        {
          if (v16 == 4)
          {
            v17 = "lte";
            goto LABEL_56;
          }

LABEL_52:
          v17 = "unknown";
          goto LABEL_56;
        }

        v17 = "cdma";
      }

LABEL_56:
      v18 = asString();
      *buf = 136446722;
      *&buf[4] = v15;
      v34 = 2080;
      v35 = v17;
      v36 = 2080;
      v37 = v18;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#N Update to version %{public}s failed for %s db over interface %s", buf, 0x20u);
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_58;
    }

    if (v6 == 1)
    {
      v11 = *(v2 + 32);
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_64;
      }

      v12 = *(v4 + 8);
      if (v12 > 7)
      {
        switch(v12)
        {
          case 8:
            v13 = "gsm";
            goto LABEL_47;
          case 16:
            v13 = "scdma";
            goto LABEL_47;
          case 32:
            v13 = "nr";
            goto LABEL_47;
        }
      }

      else
      {
        switch(v12)
        {
          case 1:
            v13 = "umts";
            goto LABEL_47;
          case 2:
            v13 = "cdma";
            goto LABEL_47;
          case 4:
            v13 = "lte";
LABEL_47:
            *buf = 136315138;
            *&buf[4] = v13;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Update not required for %s db ", buf, 0xCu);
            goto LABEL_64;
        }
      }

      v13 = "unknown";
      goto LABEL_47;
    }

    if (v6)
    {
      goto LABEL_64;
    }

    v7 = *(v2 + 32);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_63;
    }

    sub_1007C005C(v4 + 48, "", __p);
    if (v32 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    v9 = *(v4 + 8);
    if (v9 > 7)
    {
      if (v9 == 8)
      {
        v10 = "gsm";
        goto LABEL_61;
      }

      if (v9 != 16)
      {
        if (v9 == 32)
        {
          v10 = "nr";
          goto LABEL_61;
        }

        goto LABEL_53;
      }

      v10 = "scdma";
    }

    else
    {
      if (v9 == 1)
      {
        v10 = "umts";
        goto LABEL_61;
      }

      if (v9 != 2)
      {
        if (v9 == 4)
        {
          v10 = "lte";
          goto LABEL_61;
        }

LABEL_53:
        v10 = "unknown";
        goto LABEL_61;
      }

      v10 = "cdma";
    }

LABEL_61:
    v19 = asString();
    *buf = 136446722;
    *&buf[4] = v8;
    v34 = 2080;
    v35 = v10;
    v36 = 2080;
    v37 = v19;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Update to version %{public}s success for %s db over interface %s", buf, 0x20u);
    if (v32 < 0)
    {
      operator delete(__p[0]);
    }

LABEL_63:
    (*(**(v2 + 136) + 40))(*(v2 + 136));
    (*(**(v2 + 88) + 48))(*(v2 + 88), *(v4 + 8));
    (*(**(v2 + 136) + 32))(*(v2 + 136));
LABEL_64:
    v20 = v4[1];
    if (v20)
    {
      do
      {
        v21 = v20;
        v20 = *v20;
      }

      while (v20);
    }

    else
    {
      do
      {
        v21 = v4[2];
        v22 = *v21 == v4;
        v4 = v21;
      }

      while (!v22);
    }

    v4 = v21;
  }

  while (v21 != v1 + 3);
  v3 = v1 + 2;
  if (v5)
  {
    v23 = 2;
    v24 = 1;
    goto LABEL_73;
  }

LABEL_72:
  v24 = 0;
  v23 = 0;
LABEL_73:
  *(v2 + 184) = v23;
  *(v2 + 188) = 1;
  (*(**(v2 + 88) + 40))(*(v2 + 88), v24);
  v25 = *(v2 + 88);
  v26 = *(v2 + 16);
  *buf = v26;
  if (v26)
  {
    dispatch_retain(v26);
  }

  (*(*v25 + 32))(v25, buf, v24);
  if (*buf)
  {
    dispatch_release(*buf);
  }

  v27 = *(v2 + 104);
  if (v27)
  {
    (**v27)(v27, v3);
  }

  LASDController::submitAWDMetricsForUpdate_sync(*v1, v3);
  sub_101432734(&v30);
  return sub_1000049E0(&v29);
}

void sub_1014326E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  sub_101432734(&a17);
  sub_1000049E0(&a16);
  _Unwind_Resume(a1);
}

uint64_t *sub_101432734(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_101264468(v1 + 16, *(v1 + 24));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void sub_101432794(uint64_t a1, uint64_t a2)
{
  isSimReady = subscriber::isSimReady();
  v5 = *(*(**(a1 + 40) + 16))(*(a1 + 40), a2);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isSimReady)
  {
    if (v6)
    {
      v7 = 136315138;
      v8 = subscriber::asString();
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I SIM is ready: %s", &v7, 0xCu);
    }

    (*(**(a1 + 120) + 24))(*(a1 + 120), "SIM ready");
  }

  else if (v6)
  {
    v7 = 136315138;
    v8 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I SIM is not ready: %s", &v7, 0xCu);
  }
}

void sub_1014328F8(uint64_t a1, char a2)
{
  v3 = *(a1 + 32);
  if (v3 < 0xAA)
  {
    a2 = 1;
  }

  if (v3 > 0x153 || (a2 & 1) == 0)
  {
    operator delete(**(a1 + 8));
    *(a1 + 8) += 8;
    *(a1 + 32) -= 170;
  }
}

void sub_101432974(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3B6E0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1014329D4(void *a1)
{
  *a1 = off_101F3B730;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101432A20(void *a1)
{
  *a1 = off_101F3B730;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101432AF8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3B730;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101432B30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101432B40(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101432B80(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
        v5 = *(v4 + 8);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_101432CA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101432CF4(capabilities::ct *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = capabilities::ct::LASDLocationTimeout(a1);
  v3 = *v1;
  v4 = *(*v1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = v2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Timed out waiting for CoreLocation after %lld seconds", buf, 0xCu);
    v3 = *v1;
  }

  sub_10142CF14(v3, "Timed out");
  sub_10024BAAC(&v7);
  return sub_1000049E0(&v6);
}

void sub_101432DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101432F04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::~__shared_weak_count(v10);
  operator delete(v12);
  _Unwind_Resume(a1);
}

void *sub_101432F28(void *a1, uint64_t a2, dispatch_object_t *a3)
{
  object = *a3;
  *a3 = 0;
  sub_101655E38(a1, a2, &object, "SuppServicesPreferencesWidget", "set.supp.prefs");
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &off_101F3B7B0;
  return a1;
}

void sub_101432FA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101432FD0(SuppServicesPreferencesInterface *a1)
{
  sub_101655FB8(a1);

  operator delete();
}

void sub_101433028(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3B878;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014330A8(SuppServicesPreferencesInterface *a1)
{
  sub_101655FB8(a1);

  operator delete();
}

void sub_101433328(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v15 = v14;

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1014335A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1014337BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_101433ACC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_101433DE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  v20 = v19;

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_101434254(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  if ((v6 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1014342FC(uint64_t a1, const void **a2)
{
  v3 = *a2;
  if (v3 == 2)
  {
    if (*(a2 + 8) == 19)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 getLogContext];
        v5 = v14;
      }

      else
      {
        v5 = 0;
        v13 = 0;
        v14 = 0;
      }

      ctu::OsLogContext::~OsLogContext(&v13);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Driver not ready", &v13, 2u);
      }

      v10 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        [v6 getLogContext];
        v7 = v14;
      }

      else
      {
        v7 = 0;
        v13 = 0;
        v14 = 0;
      }

      ctu::OsLogContext::~OsLogContext(&v13);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Get Vinyl FW Update Info error", &v13, 2u);
      }

      v10 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v15 = 0;
    if (v3 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    sub_100010024(&v15, a2 + 1);
    if (v15)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v8 = *(a1 + 32);
      if (v8)
      {
        [v8 getLogContext];
        v9 = v14;
      }

      else
      {
        v9 = 0;
        v13 = 0;
        v14 = 0;
      }

      ctu::OsLogContext::~OsLogContext(&v13);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Empty dictionary - maybe eUICC does not exist", &v13, 2u);
      }

      v11 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (*(*(a1 + 40) + 16))();
    }

    sub_10001021C(&v15);
  }
}

void sub_1014345A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101434860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_101434CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if (a18 < 0)
  {
    operator delete(__p);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(a1);
}

void sub_10143517C(_Unwind_Exception *a1)
{
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1014355B8(_Unwind_Exception *a1)
{
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1014359BC(_Unwind_Exception *a1)
{
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_101435DD0(_Unwind_Exception *a1)
{
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_101436AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v27);
  }

  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101436F38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25)
{
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_101437340(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_1014376B0(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_101437A34(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10143801C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if ((v32 & 1) == 0)
  {
    sub_100004A34(v30);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if ((v31 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  _Unwind_Resume(a1);
}

void sub_10143836C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_101438654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_101438788(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v8)
  {
    v7 = [v8 text];
  }

  else
  {
    v7 = 0;
  }

  (*(v6 + 16))(v6, v7, v5);
  if (v8)
  {
  }
}

void sub_101438D94(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);

  sub_100FB0A00(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_1014391D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void **a10)
{
  sub_1001B1588(&a9, a10);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(a1);
}

void sub_101439694(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va, a3);

  sub_100005978(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

void sub_101439F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, void *a34)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  sub_10004EC58(&a33, a34);

  _Unwind_Resume(a1);
}

void sub_10143A4F8(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10143A87C(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10143ABCC(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10143AEA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10143B17C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_10143B494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(a1);
}

void sub_10143B7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(a1);
}

void sub_10143BB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(a1);
}

void sub_10143BE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10143C160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10143C47C(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10143C65C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10143CB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  sub_10004EC58(v22 | 8, a15);
  if (a18)
  {
    sub_100004A34(a18);
  }

  _Unwind_Resume(a1);
}

void sub_10143CFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10143D388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10143D680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  v15 = v14;

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10143D948(_Unwind_Exception *a1)
{
  if ((v5 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10143DDA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25)
{
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_10143E108(_Unwind_Exception *a1)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10143E3C4(_Unwind_Exception *a1)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10143E8FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_10143EBAC(_Unwind_Exception *a1)
{
  v5 = v3;

  if ((v5 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_10143F174(_Unwind_Exception *a1)
{
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v4);
  }

  _Unwind_Resume(a1);
}

void sub_10143F248(uint64_t *a1, int a2, void *a3)
{
  v8 = a2;
  v4 = a3;
  if (v4)
  {
    v9 = 0uLL;
    v10 = 0;
    ctu::cf::assign();
    v5 = *a1;
    *&v9 = &v8;
    v6 = sub_1004FCB34(v5, &v8);
    v7 = v6[5];
    if (v7)
    {
      v6[6] = v7;
      operator delete(v7);
      v6[5] = 0;
      v6[6] = 0;
      v6[7] = 0;
    }

    *(v6 + 5) = 0uLL;
    v6[7] = 0;
  }
}

void sub_10143F2FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10143F330(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v3 = (a1 + 24);
    sub_10143F388(&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

void sub_10143F388(void ***a1)
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
        v4 -= 72;
        sub_10143F40C(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_10143F40C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void sub_10143F490(uint64_t a1)
{

  operator delete();
}

id sub_10143F544(uint64_t a1, void *a2)
{
  *a2 = off_101F3B9E0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10143F594(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10143F5F8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BA40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10143F644(uint64_t a1)
{
  *a1 = off_101F3BA60;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_10143F6A8(uint64_t a1)
{
  *a1 = off_101F3BA60;

  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

id sub_10143F7C4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BA60;
  v4 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  a2[1] = v4;
  a2[2] = v6;
  a2[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a2[4] = *(a1 + 32);
  result = objc_retainBlock(*(a1 + 40));
  a2[5] = result;
  return result;
}

void sub_10143F840(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
}

void sub_10143F890(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(a1);
}

const void **sub_10143F8E8(uint64_t a1, CFTypeRef *a2)
{
  cf = *a2;
  *a2 = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    [(Registry *)v3 registry];
    v3 = v30;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  ServiceMap = Registry::getServiceMap(v3);
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
  v27 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v27);
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
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v12)
  {
    v27 = *(a1 + 32);
    v28 = objc_retainBlock(*(a1 + 40));
    v29 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v32 = 0;
    operator new();
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    [(Registry *)v14 registry];
    v14 = v30;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v15 = Registry::getServiceMap(v14);
  v16 = v15;
  v17 = "N8cellplan36CellularPlanControllerWatchInterfaceE";
  if (("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x8000000000000000) != 0)
  {
    v18 = ("N8cellplan36CellularPlanControllerWatchInterfaceE" & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v15);
  v27 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, &v27);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      v24 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
LABEL_29:
  if (v31)
  {
    sub_100004A34(v31);
  }

  if (v23)
  {
    v27 = *(a1 + 32);
    v28 = objc_retainBlock(*(a1 + 40));
    v29 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v32 = 0;
    operator new();
  }

  v30 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v27 = 0;
  sub_10143FE68(a1 + 32, cf, &v27);
  sub_1013D4328(&v27);
  sub_100010250(&v30);
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return sub_100010250(&cf);
}

void sub_10143FD08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10143FDE0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BBC0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10143FE2C(uint64_t a1)
{
  sub_100010250((a1 + 16));

  return a1;
}

void sub_10143FE68(uint64_t a1, void *a2, uint64_t *a3)
{
  if (a2)
  {
    v5 = a2;
    v44 = objc_opt_new();
    v45 = +[NSMutableArray array];
    for (i = 0; ; ++i)
    {
      if (i >= [v5 count])
      {
        [v44 setMeInfoList:v45];
        (*(*(a1 + 8) + 16))();

        goto LABEL_63;
      }

      v7 = [v5 objectAtIndexedSubscript:i];
      if (v7)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v8 = v7;
          v9 = objc_opt_new();
          v10 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoSlotId"];
          v11 = [v10 unsignedIntValue];
          v13 = subscriber::instanceAsSimSlot(v11, v12);

          [v9 setSlotId:sub_10000FD54(v13)];
          v14 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoCurrentMobileId"];
          [v9 setCurrentMobileId:v14];

          v15 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoCurrentSubscriberId"];
          [v9 setCurrentSubscriberId:v15];

          v16 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoIMEI"];
          [v9 setIMEI:v16];

          v17 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoICCID"];
          [v9 setICCID:v17];

          v18 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoIMSI"];
          [v9 setIMSI:v18];

          v19 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfo1xIMSI"];
          [v9 setCdmaIMSI:v19];

          v20 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoMEID"];
          [v9 setMEID:v20];

          v21 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoEUIMID"];
          [v9 setEUIMID:v21];

          v22 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoPRLVersion"];
          [v9 setPRLVersion:v22];

          v23 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoERIVersion"];
          [v9 setERIVersion:v23];

          v24 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoMIN"];
          [v9 setMIN:v24];

          v25 = [v8 objectForKeyedSubscript:@"kCTMobileEquipmentInfoNAI"];
          [v9 setNAI:v25];

          v26 = *a3;
          if (!*a3 || *v26 != v13)
          {
            if (*a1)
            {
              [*a1 getLogContext];
              v30 = v47;
            }

            else
            {
              v30 = 0;
              *buf = 0;
              v47 = 0;
            }

            ctu::OsLogContext::~OsLogContext(buf);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Could not get cellular plan device Info", buf, 2u);
            }

            goto LABEL_54;
          }

          v27 = (v26 + 8);
          if (*(v26 + 31) < 0)
          {
            if (!*(v26 + 16))
            {
              goto LABEL_30;
            }

            v27 = *v27;
          }

          else if (!*(v26 + 31))
          {
LABEL_30:
            v34 = (v26 + 32);
            if (*(v26 + 55) < 0)
            {
              if (!*(v26 + 40))
              {
                goto LABEL_36;
              }

              v34 = *v34;
            }

            else if (!*(v26 + 55))
            {
LABEL_36:
              v36 = (v26 + 56);
              if (*(v26 + 79) < 0)
              {
                if (!*(v26 + 64))
                {
                  goto LABEL_42;
                }

                v36 = *v36;
              }

              else if (!*(v26 + 79))
              {
LABEL_42:
                v38 = (v26 + 104);
                if (*(v26 + 127) < 0)
                {
                  if (!*(v26 + 112))
                  {
                    goto LABEL_48;
                  }

                  v38 = *v38;
                }

                else if (!*(v26 + 127))
                {
LABEL_48:
                  v40 = (v26 + 128);
                  if (*(v26 + 151) < 0)
                  {
                    if (*(v26 + 136))
                    {
                      v40 = *v40;
                      goto LABEL_53;
                    }
                  }

                  else
                  {
                    if (!*(v26 + 151))
                    {
                      goto LABEL_54;
                    }

LABEL_53:
                    v41 = [NSString stringWithUTF8String:v40];
                    [v9 setBaseVersion:v41];
                  }

LABEL_54:
                  [v45 addObject:v9];

                  goto LABEL_55;
                }

                v39 = [NSString stringWithUTF8String:v38];
                [v9 setBaseId:v39];

                v26 = *a3;
                goto LABEL_48;
              }

              v37 = [NSString stringWithUTF8String:v36];
              [v9 setEffectiveICCID:v37];

              v26 = *a3;
              goto LABEL_42;
            }

            v35 = [NSString stringWithUTF8String:v34];
            [v9 setCSN:v35];

            v26 = *a3;
            goto LABEL_36;
          }

          v33 = [NSString stringWithUTF8String:v27];
          [v9 setDisplayCSN:v33];

          v26 = *a3;
          goto LABEL_30;
        }

        if (*a1)
        {
          [*a1 getLogContext];
          v29 = v47;
        }

        else
        {
          v29 = 0;
          *buf = 0;
          v47 = 0;
        }

        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v31 = v29;
          v32 = "meInfo array item is of invalid type";
          goto LABEL_23;
        }
      }

      else
      {
        if (*a1)
        {
          [*a1 getLogContext];
          v28 = v47;
        }

        else
        {
          v28 = 0;
          *buf = 0;
          v47 = 0;
        }

        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v31 = v28;
          v32 = "meInfo array item is missing";
LABEL_23:
          _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, v32, buf, 2u);
        }
      }

LABEL_55:
    }
  }

  v42 = *a1;
  if (*a1)
  {
    [v42 getLogContext];
    v43 = v47;
  }

  else
  {
    v43 = 0;
    *buf = 0;
    v47 = 0;
  }

  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Could not get Mobile Equipment Info", buf, 2u);
  }

  v5 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
  (*(*(a1 + 8) + 16))();
LABEL_63:
}

uint64_t sub_101440674(uint64_t a1)
{
  *a1 = off_101F3BAD0;
  sub_100010250((a1 + 24));

  return a1;
}

void sub_1014406C8(uint64_t a1)
{
  *a1 = off_101F3BAD0;
  sub_100010250((a1 + 24));

  operator delete();
}

const void **sub_1014407BC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3BAD0;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = objc_retainBlock(*(a1 + 16));

  return sub_10006F22C((a2 + 24), (a1 + 24));
}

void sub_10144082C(uint64_t a1)
{
  sub_100010250((a1 + 24));

  v2 = *(a1 + 8);
}

void sub_101440870(uint64_t a1)
{
  sub_100010250((a1 + 24));

  operator delete(a1);
}

void sub_1014408BC(uint64_t a1, int *a2)
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
  sub_10006F22C(&v29, (a1 + 24));
  operator new();
}

void sub_101440A24(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1013D4328((v2 - 48));
  sub_1013D4328((v2 - 56));
  sub_100010250((v2 - 40));
  sub_100FBB8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101440A78(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BB30))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101440AC4(uint64_t a1)
{
  *a1 = off_101F3BB50;
  sub_100010250((a1 + 24));

  return a1;
}

void sub_101440B18(uint64_t a1)
{
  *a1 = off_101F3BB50;
  sub_100010250((a1 + 24));

  operator delete();
}

const void **sub_101440C0C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3BB50;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = objc_retainBlock(*(a1 + 16));

  return sub_10006F22C((a2 + 24), (a1 + 24));
}

void sub_101440C7C(uint64_t a1)
{
  sub_100010250((a1 + 24));

  v2 = *(a1 + 8);
}

void sub_101440CC0(uint64_t a1)
{
  sub_100010250((a1 + 24));

  operator delete(a1);
}

void sub_101440D0C(uint64_t a1, int *a2)
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
  sub_10006F22C(&v29, (a1 + 24));
  operator new();
}

void sub_101440E74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1013D4328((v2 - 48));
  sub_1013D4328((v2 - 56));
  sub_100010250((v2 - 40));
  sub_100FBB8C8(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101440EC8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BBB0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101440F40(uint64_t a1)
{

  operator delete();
}

id sub_101440FF4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BBE0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441044(id *a1)
{

  operator delete(a1);
}

void sub_101441080(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  (*(v2 + 16))(v2);
}

uint64_t sub_10144110C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BC40))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441184(uint64_t a1)
{

  operator delete();
}

id sub_101441238(uint64_t a1, void *a2)
{
  *a2 = off_101F3BC60;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441288(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014412E4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BCD0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10144135C(uint64_t a1)
{

  operator delete();
}

id sub_101441410(uint64_t a1, void *a2)
{
  *a2 = off_101F3BCF0;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441460(id *a1)
{

  operator delete(a1);
}

uint64_t sub_10144149C(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2 * (v2 == 2);
  }

  return (*(v3 + 16))(v3, v4, 0);
}

uint64_t sub_1014414C8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BD50))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441540(uint64_t a1)
{

  operator delete();
}

id sub_1014415F4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BD70;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441644(id *a1)
{

  operator delete(a1);
}

void sub_101441680(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  if (*a2)
  {
    v5 = *a3;
    v7 = objc_opt_new();
    [v7 setObject:v4 forKeyedSubscript:@"kCTEncryptedIdentity"];
    if (v5)
    {
      [v7 setObject:v5 forKeyedSubscript:@"kCTIdentityAnonymousUserName"];
    }

    (*(*(a1 + 8) + 16))();
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = [NSError errorWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(v6 + 16))(v6, 0);
  }
}

uint64_t sub_101441788(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BDE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441800(uint64_t a1)
{

  operator delete();
}

id sub_1014418B4(uint64_t a1, void *a2)
{
  *a2 = off_101F3BE00;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441904(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101441958(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BE60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014419D8(uint64_t a1)
{

  operator delete();
}

id sub_101441AA8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3BE80;
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 16) = *(a1 + 16);
  result = objc_retainBlock(*(a1 + 24));
  *(a2 + 24) = result;
  return result;
}

void sub_101441B08(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101441B44(id *a1)
{

  operator delete(a1);
}

void sub_101441B88(uint64_t a1, uint64_t a2)
{
  v22 = *(a2 + 16);
  v3 = v22;
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v4 = HIBYTE(v3);
  if (v4 < 0)
  {
    v4 = __p[1];
  }

  if (!v4)
  {
    v5 = *(a1 + 8);
    if (v5)
    {
      [(Registry *)v5 registry];
      v5 = v23[0];
    }

    else
    {
      v23[0] = 0;
      v23[1] = 0;
    }

    ServiceMap = Registry::getServiceMap(v5);
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
    v27 = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, &v27);
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
LABEL_15:
        if (v23[1])
        {
          sub_100004A34(v23[1]);
        }

        if (v14)
        {
          v27 = 0;
          v28 = 0;
          v29 = 0;
          (*(*v14 + 24))(&v27, v14, *(a1 + 16));
          v16 = HIBYTE(v29);
          v17 = HIBYTE(v29);
          if (v29 < 0)
          {
            v16 = v28;
          }

          if (v16)
          {
            sub_100A34BC8(v23);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__p[0]);
            }

            *__p = *v23;
            v22 = v24;
            HIBYTE(v24) = 0;
            LOBYTE(v23[0]) = 0;
            if (v26 < 0)
            {
              operator delete(v25);
              if (SHIBYTE(v24) < 0)
              {
                operator delete(v23[0]);
              }
            }

            v17 = HIBYTE(v29);
          }

          if (v17 < 0)
          {
            operator delete(v27);
          }
        }

        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        goto LABEL_31;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_15;
  }

LABEL_31:
  v18 = *(a1 + 24);
  if (v22 >= 0)
  {
    v19 = __p;
  }

  else
  {
    v19 = __p[0];
  }

  v20 = [NSString stringWithUTF8String:v19, __p[0], __p[1], v22];
  (*(v18 + 16))(v18, v20, 0);

  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101441DC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101441E30(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BEE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101441EA8(uint64_t a1)
{

  operator delete();
}

id sub_101441F5C(uint64_t a1, void *a2)
{
  *a2 = off_101F3BF00;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101441FAC(id *a1)
{

  operator delete(a1);
}

const void **sub_101441FE8(uint64_t a1, const void **a2)
{
  v3 = *a2;
  *a2 = 0;
  (*(*(a1 + 8) + 16))();
  return sub_100010250(&v3);
}

void sub_101442038(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100010250(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10144204C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BF60))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014420C4(uint64_t a1)
{

  operator delete();
}

id sub_101442178(uint64_t a1, void *a2)
{
  *a2 = off_101F3BF80;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014421C8(id *a1)
{

  operator delete(a1);
}

void sub_101442204(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = *(a1 + 8);
  if (v6 >= 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  v4 = [NSString stringWithUTF8String:v3, __p[0], __p[1], v6];
  (*(v2 + 16))(v2, v4, 0);

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101442298(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1014422C0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3BFE0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101442338(uint64_t a1)
{

  operator delete();
}

id sub_1014423EC(uint64_t a1, void *a2)
{
  *a2 = off_101F3C000;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10144243C(id *a1)
{

  operator delete(a1);
}

void sub_101442478(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  (*(v2 + 16))(v2);
}

uint64_t sub_101442504(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C060))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10144257C(uint64_t a1)
{

  operator delete();
}

id sub_101442630(uint64_t a1, void *a2)
{
  *a2 = off_101F3C080;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101442680(id *a1)
{

  operator delete(a1);
}

void sub_1014426BC(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v4 = [NSString stringWithUTF8String:v3];
  (*(v2 + 16))(v2);
}

uint64_t sub_101442748(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C0E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014427C8(uint64_t a1)
{

  operator delete();
}

id sub_101442890(uint64_t a1, void *a2)
{
  *a2 = off_101F3C100;
  a2[1] = *(a1 + 8);
  result = objc_retainBlock(*(a1 + 16));
  a2[2] = result;
  return result;
}

void sub_1014428E8(uint64_t a1)
{
  v2 = *(a1 + 8);
}

void sub_101442924(id *a1)
{

  operator delete(a1);
}

void sub_101442968(uint64_t a1, void *a2)
{
  v3 = a2 + 1;
  v4 = a2[1];
  v22 = *a2;
  v23 = v4;
  if (a2[2])
  {
    v4[2] = &v23;
    *a2 = v3;
    *v3 = 0;
    a2[2] = 0;
  }

  else
  {
    v22 = &v23;
  }

  v5 = +[NSMutableDictionary dictionary];
  v6 = v22;
  if (v22 == &v23)
  {
LABEL_13:
    v12 = *(a1 + 8);
    if (v12)
    {
      [v12 getLogContext];
      v13 = *&buf[8];
    }

    else
    {
      v13 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315395;
      *&buf[4] = "operator()";
      *&buf[12] = 2117;
      *&buf[14] = v5;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%s: output auth info: %{sensitive}@", buf, 0x16u);
    }

    v14 = *(a1 + 16);
    v15 = [[CTSubscriberAuthDataHolder alloc] initWithData:v5];
    (*(v14 + 16))(v14, v15, 0);
  }

  else
  {
    while (1)
    {
      v7 = subscriber::clientKeyFromAuthInfoType();
      if (!v7)
      {
        break;
      }

      v25 = 0;
      v26 = 0;
      if (!ctu::cf::convert_copy())
      {
        v18 = *(a1 + 8);
        if (v18)
        {
          [v18 getLogContext];
          v19 = *&buf[8];
        }

        else
        {
          v19 = 0;
          *buf = 0;
          *&buf[8] = 0;
        }

        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unable to convert auth info data", buf, 2u);
        }

        v21 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:14 userInfo:0];
        (*(*(a1 + 16) + 16))();

        sub_10002D760(&v25);
        goto LABEL_31;
      }

      v8 = v25;
      v25 = v26;
      *buf = v8;
      sub_10002D760(buf);
      [v5 setObject:v25 forKeyedSubscript:v7];
      sub_10002D760(&v25);
      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
      if (v10 == &v23)
      {
        goto LABEL_13;
      }
    }

    v16 = *(a1 + 8);
    if (v16)
    {
      [v16 getLogContext];
      v17 = *&buf[8];
    }

    else
    {
      v17 = 0;
      *buf = 0;
      *&buf[8] = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Unable to find client key for auth info", buf, 2u);
    }

    v20 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:14 userInfo:0];
    (*(*(a1 + 16) + 16))();
  }

LABEL_31:

  sub_10004EC58(&v22, v23);
}

void sub_101442CD4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void *);
  v7 = va_arg(va1, void);
  sub_10002D760(va1);

  sub_10004EC58(va, v6);
  _Unwind_Resume(a1);
}

uint64_t sub_101442D4C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C160))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101442DC4(uint64_t a1)
{

  operator delete();
}

id sub_101442E78(uint64_t a1, void *a2)
{
  *a2 = off_101F3C180;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101442EC8(id *a1)
{

  operator delete(a1);
}

void sub_101442F04(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = *(*(a1 + 8) + 16);

    v3();
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_101442FC8(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C1E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443040(uint64_t a1)
{

  operator delete();
}

id sub_1014430F4(uint64_t a1, void *a2)
{
  *a2 = off_101F3C200;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443144(id *a1)
{

  operator delete(a1);
}

void sub_101443180(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = *(*(a1 + 8) + 16);

    v3();
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_101443244(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C260))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014432BC(uint64_t a1)
{

  operator delete();
}

id sub_101443370(uint64_t a1, void *a2)
{
  *a2 = off_101F3C280;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_1014433C0(id *a1)
{

  operator delete(a1);
}

void sub_1014433FC(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    v3 = *(a1 + 8);
    v4 = [NSNumber numberWithBool:*a2 & 1];
    (*(v3 + 16))(v3);
  }

  else
  {
    v4 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:6 userInfo:0];
    (*(*(a1 + 8) + 16))();
  }
}

uint64_t sub_1014434D0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C2E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443548(uint64_t a1)
{

  operator delete();
}

id sub_1014435FC(uint64_t a1, void *a2)
{
  *a2 = off_101F3C300;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10144364C(id *a1)
{

  operator delete(a1);
}

void sub_101443688(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = [NSNumber numberWithInteger:*a2];
  (*(v2 + 16))(v2);
}

uint64_t sub_101443708(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C360))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443780(uint64_t a1)
{

  operator delete();
}

id sub_101443834(uint64_t a1, void *a2)
{
  *a2 = off_101F3C380;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443884(id *a1)
{

  operator delete(a1);
}

void sub_1014438C0(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  v3 = [NSNumber numberWithInteger:*a2];
  (*(v2 + 16))(v2);
}

uint64_t sub_101443940(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C3E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014439B8(uint64_t a1)
{

  operator delete();
}

id sub_101443A6C(uint64_t a1, void *a2)
{
  *a2 = off_101F3C400;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443ABC(id *a1)
{

  operator delete(a1);
}

void sub_101443AF8(uint64_t a1, void *a2)
{
  v2 = a2 + 1;
  v3 = a2[1];
  v12 = *a2;
  v13 = v3;
  if (a2[2])
  {
    v3[2] = &v13;
    *a2 = v2;
    *v2 = 0;
    a2[2] = 0;
  }

  else
  {
    v12 = &v13;
  }

  v4 = *(a1 + 8);
  v5 = objc_opt_new();
  v6 = v12;
  if (v12 != &v13)
  {
    do
    {
      v17 = 0;
      v18 = 0;
      v15 = 0;
      v16 = 0;
      sub_100034C50(&v15, v6[5], v6[6], v6[6] - v6[5]);
      v21 = 0;
      v22 = 0;
      __p = 0;
      sub_100034C50(&__p, v15, v16, v16 - v15);
      v19 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      sub_100034C50(&v23, __p, v21, v21 - __p);
      v26 = 0;
      if (ctu::cf::convert_copy())
      {
        v7 = v19;
        v19 = v26;
        v27 = v7;
        sub_10002D760(&v27);
      }

      if (v23)
      {
        v24 = v23;
        operator delete(v23);
      }

      v18 = v19;
      v19 = 0;
      sub_10002D760(&v19);
      if (__p)
      {
        v21 = __p;
        operator delete(__p);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      v8 = *(v6 + 8);
      if (v8 > 5)
      {
        switch(v8)
        {
          case 6:
            [v5 setCk:v18];
            break;
          case 7:
            [v5 setIk:v18];
            break;
          case 9:
            [v5 setAuts:v18];
            break;
        }
      }

      else
      {
        switch(v8)
        {
          case 3:
            [v5 setSres:v18];
            break;
          case 4:
            [v5 setKc:v18];
            break;
          case 5:
            [v5 setRes:v18];
            break;
        }
      }

      sub_10002D760(&v18);
      v9 = v6[1];
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
          v10 = v6[2];
          v11 = *v10 == v6;
          v6 = v10;
        }

        while (!v11);
      }

      v6 = v10;
    }

    while (v10 != &v13);
  }

  (*(v4 + 16))(v4, v5, 0);

  sub_10004EC58(&v12, v13);
}

uint64_t sub_101443DBC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C460))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101443E34(uint64_t a1)
{

  operator delete();
}

id sub_101443EE8(uint64_t a1, void *a2)
{
  *a2 = off_101F3C480;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101443F38(id *a1)
{

  operator delete(a1);
}

uint64_t sub_101443F8C(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C4E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101444004(uint64_t a1)
{

  operator delete();
}

id sub_1014440B8(uint64_t a1, void *a2)
{
  *a2 = off_101F3C500;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_101444108(id *a1)
{

  operator delete(a1);
}

void sub_101444144(uint64_t a1, _BYTE *a2)
{
  if (*a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [NSError errorWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
  }

  v4 = v3;
  (*(*(a1 + 8) + 16))();
}

uint64_t sub_1014441E0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C560))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101444258(uint64_t a1)
{

  operator delete();
}

id sub_10144430C(uint64_t a1, void *a2)
{
  *a2 = off_101F3C580;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10144435C(id *a1)
{

  operator delete(a1);
}

uint64_t sub_1014443AC(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F3C5E0))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1014443F8()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_1014444DC(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v6 = *a2;
  if (!*a2)
  {
    v11 = *(a1 + 8);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
LABEL_18:
      *a5 = 0;
      a5[1] = 0;
      return;
    }

    *buf = 0;
    v12 = "targetInstantAtLocationCache required";
LABEL_21:
    _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, v12, buf, 2u);
    goto LABEL_18;
  }

  v7 = *a3;
  if (!*a3)
  {
    v11 = *(a1 + 8);
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v12 = "anchorageAtLocation required";
    goto LABEL_21;
  }

  *buf = xmmword_10196F370;
  v8 = a2[1];
  v16 = v6;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    v7 = *a3;
  }

  v9 = a3[1];
  v14 = v7;
  v15 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = *(a4 + 8);
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  stewie::ServiceAtLocation::create(&v16, &v14, (a1 + 8), a5);
  if (v13)
  {
    sub_100004A34(v13);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v17)
  {
    sub_100004A34(v17);
  }
}

void sub_101444624(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101444680(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  operator delete();
}

void sub_101444734(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101444770(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014447A8(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014447D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101444818(_BYTE *a1, uint64_t *a2)
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  *v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  sub_10000C320(&v10);
  sub_1015653F8(*a2, &__p);
  v4 = sub_10000C030(&v11);
  sub_10000C030(v4);
  v5 = std::ostream::operator<<();
  sub_10000C030(v5);
  if (v9 < 0)
  {
    operator delete(__p);
  }

  sub_100061574(&v10, a1);
  *&v11 = v6;
  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[1]);
  }

  std::locale::~locale(v12);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

ctu::OsLogLogger *sub_101444A6C(ctu::OsLogLogger *a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "wea");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger(a1, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0;
  v4 = a2[1];
  *(a1 + 4) = *a2;
  *(a1 + 5) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return a1;
}

void sub_101444B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_101444B24(uint64_t a1, void **a2, void **a3, uint64_t *a4)
{
  v6 = *a4;
  v7 = a4[1];
  if (v7 != *a4)
  {
    v9 = *(a1 + 8);
    v25 = *(a1 + 16);
    if (v9 != v25)
    {
      do
      {
        v11 = *(*v9 + 16);
        v10 = *(*v9 + 24);
        while (v11 != v10)
        {
          v12 = *v11;
          if (*(*v11 + 23) < 0)
          {
            sub_100005F2C(buf, *v12, *(v12 + 1));
          }

          else
          {
            v13 = *v12;
            v34 = *(v12 + 2);
            *buf = v13;
          }

          v14 = v11[2];
          if (*(v14 + 23) < 0)
          {
            sub_100005F2C(&v35, *v14, *(v14 + 1));
          }

          else
          {
            v15 = *v14;
            v36 = *(v14 + 2);
            v35 = v15;
          }

          sub_10011C9B0(&v27, buf, 2);
          if (sub_100DAB6A0(a2, &v27))
          {
            v16 = 1;
          }

          else
          {
            v17 = *v11;
            if (*(*v11 + 23) < 0)
            {
              sub_100005F2C(&__dst, *v17, *(v17 + 1));
            }

            else
            {
              v18 = *v17;
              v30 = *(v17 + 2);
              __dst = v18;
            }

            v19 = v11[2];
            if (*(v19 + 23) < 0)
            {
              sub_100005F2C(&v31, *v19, *(v19 + 1));
            }

            else
            {
              v20 = *v19;
              v32 = *(v19 + 2);
              v31 = v20;
            }

            sub_10011C9B0(v26, &__dst, 2);
            v16 = sub_100DAB6A0(a3, v26);
            sub_100009970(v26, v26[1]);
            for (i = 0; i != -48; i -= 24)
            {
              if (buf[i - 1] < 0)
              {
                operator delete(*(&v31 + i));
              }
            }
          }

          sub_100009970(&v27, v28);
          for (j = 0; j != -48; j -= 24)
          {
            if (*(&v36 + j + 7) < 0)
            {
              operator delete(*(&v35 + j));
            }
          }

          if (v16)
          {
            v23 = *a1;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Alert already being monitored...", buf, 2u);
            }

            return;
          }

          v11 += 4;
        }

        v9 += 16;
      }

      while (v9 != v25);
      v6 = *a4;
      v7 = a4[1];
    }

    __dst = 0uLL;
    v30 = 0;
    sub_101446658(&__dst, v6, v7, 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
    v27 = 0;
    v28 = 0;
    sub_101446E18();
  }
}

void sub_1014451EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, std::__shared_weak_count *a18, uint64_t a19, void **p_p, std::__shared_weak_count *a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  p_p = &__p;
  sub_1001DFF90(&p_p);
  _Unwind_Resume(a1);
}

void sub_101445350(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v6 = (v3 - *a1) >> 5;
    v7 = v6 + 1;
    if ((v6 + 1) >> 59)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *a1;
    if (v8 >> 4 > v7)
    {
      v7 = v8 >> 4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFE0)
    {
      v9 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 59))
      {
        operator new();
      }

      sub_100013D10();
    }

    v10 = (32 * v6);
    v11 = *a2;
    v12 = a2[1];
    *a2 = 0;
    *(a2 + 1) = 0;
    *v10 = v11;
    v10[1] = v12;
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v5 = 32 * v6 + 32;
    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = 32 * v6 - v14;
    memcpy(v10 - v14, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v3 = *a2;
    *a2 = 0;
    *(a2 + 1) = 0;
    v3[1] = a2[1];
    *(a2 + 2) = 0;
    *(a2 + 3) = 0;
    v5 = (v3 + 2);
  }

  *(a1 + 8) = v5;
}

void sub_101445468(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Active shapes:", buf, 2u);
  }

  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 2)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      sub_101444818(buf, *v3);
      if (v8 >= 0)
      {
        v6 = buf;
      }

      else
      {
        v6 = *buf;
      }

      *v9 = 136446210;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %{public}s", v9, 0xCu);
      if (v8 < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

uint64_t sub_1014455B0(uint64_t a1, void **a2, void *a3)
{
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); v3 != i; v3 += 2)
  {
    v5 = (*v3)[2];
    v4 = (*v3)[3];
    v16 = v4;
    while (v5 != v4)
    {
      v6 = *v5;
      if (*(*v5 + 23) < 0)
      {
        sub_100005F2C(buf, *v6, *(v6 + 1));
      }

      else
      {
        v7 = *v6;
        v32 = *(v6 + 2);
        *buf = v7;
      }

      v8 = v5[2];
      if (*(v8 + 23) < 0)
      {
        sub_100005F2C(&v33, *v8, *(v8 + 1));
      }

      else
      {
        v9 = *v8;
        v34[0] = *(v8 + 2);
        v33 = v9;
      }

      sub_10011C9B0(v20, buf, 2);
      v19 = v5;
      v10 = sub_100DAB6A0(a2, v20);
      sub_100009970(v20, v20[1]);
      for (j = 0; j != -6; j -= 3)
      {
        if (SHIBYTE(v34[j]) < 0)
        {
          operator delete(v34[j - 2]);
        }
      }

      if (v10)
      {
        if (*a3 != a3[1])
        {
          v12 = (*v3)[1];
          v29 = **v3;
          v30 = v12;
          if (v12)
          {
            atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
          }

          sub_101446B90();
        }

        if (a3[3] != a3[4])
        {
          v13 = (*v3)[1];
          __p = **v3;
          v28 = v13;
          if (v13)
          {
            atomic_fetch_add_explicit(v13 + 1, 1uLL, memory_order_relaxed);
          }

          v24 = 0;
          v25 = 0;
          v26 = 0;
          sub_101446B90();
        }
      }

      v5 = v19 + 4;
      v4 = v16;
    }
  }

  if (SHIBYTE(v23) < 0)
  {
    operator delete(v21);
  }

  return 0;
}

void sub_101445CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, int a20, __int16 a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48)
{
  if (a42 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101445E84(uint64_t a1, const void **a2, int a3)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (v5 != v6)
  {
    while (1)
    {
      v8 = **v5;
      if (*(v8 + 63) < 0)
      {
        sub_100005F2C(__p, *(v8 + 40), *(v8 + 48));
      }

      else
      {
        *__p = *(v8 + 40);
        v19 = *(v8 + 56);
      }

      v9 = SHIBYTE(v19);
      if (v19 >= 0)
      {
        v10 = HIBYTE(v19);
      }

      else
      {
        v10 = __p[1];
      }

      v11 = *(a2 + 23);
      v12 = v11;
      if (v11 < 0)
      {
        v11 = a2[1];
      }

      if (v10 != v11)
      {
        break;
      }

      if (v19 >= 0)
      {
        v13 = __p;
      }

      else
      {
        v13 = __p[0];
      }

      if (v12 >= 0)
      {
        v14 = a2;
      }

      else
      {
        v14 = *a2;
      }

      v15 = memcmp(v13, v14, v10) == 0;
      if (v9 < 0)
      {
        goto LABEL_20;
      }

LABEL_21:
      if (v15)
      {
        sub_101565CEC(**v5, a3);
        return;
      }

      v5 += 2;
      if (v5 == v6)
      {
        goto LABEL_23;
      }
    }

    v15 = 0;
    if ((SHIBYTE(v19) & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

LABEL_20:
    operator delete(__p[0]);
    goto LABEL_21;
  }

LABEL_23:
  v16 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v17 = a2;
    }

    else
    {
      v17 = *a2;
    }

    LODWORD(__p[0]) = 136446210;
    *(__p + 4) = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Failed to match hash: %{public}s", __p, 0xCu);
  }
}

void sub_101446020(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 != v4)
  {
    while (1)
    {
      v6 = *v3;
      v7 = (*v3)[2];
      v8 = (*v3)[3];
      if (v7 != v8)
      {
        v9 = *(a2 + 23);
        if (v9 >= 0)
        {
          v10 = *(a2 + 23);
        }

        else
        {
          v10 = a2[1];
        }

        if (v9 >= 0)
        {
          v11 = a2;
        }

        else
        {
          v11 = *a2;
        }

        while (1)
        {
          v12 = *(*v7 + 23);
          v13 = v12;
          if ((v12 & 0x80u) != 0)
          {
            v12 = *(*v7 + 8);
          }

          if (v12 == v10)
          {
            v14 = v13 >= 0 ? *v7 : **v7;
            if (!memcmp(v14, v11, v10))
            {
              break;
            }
          }

          v15 = *(v7 + 2);
          v16 = *(v15 + 23);
          v17 = v16;
          if ((v16 & 0x80u) != 0)
          {
            v16 = *(v15 + 8);
          }

          if (v16 == v10)
          {
            v18 = v17 >= 0 ? *(v7 + 2) : *v15;
            if (!memcmp(v18, v11, v10))
            {
              break;
            }
          }

          v7 += 2;
          if (v7 == v8)
          {
            goto LABEL_61;
          }
        }

        if (v7 != v8)
        {
          v19 = v7 + 2;
          if (v7 + 2 != v8)
          {
            do
            {
              v20 = *(*v19 + 23);
              if (v20 >= 0)
              {
                v21 = *(*v19 + 23);
              }

              else
              {
                v21 = *(*v19 + 8);
              }

              v22 = *(a2 + 23);
              if (v22 >= 0)
              {
                v23 = *(a2 + 23);
              }

              else
              {
                v23 = a2[1];
              }

              if (v21 != v23 || (v20 >= 0 ? (v24 = *v19) : (v24 = **v19), v22 >= 0 ? (v25 = a2) : (v25 = *a2), memcmp(v24, v25, v21)))
              {
                v26 = *(v19 + 2);
                v27 = *(v26 + 23);
                v28 = v27;
                if ((v27 & 0x80u) != 0)
                {
                  v27 = v26[1];
                }

                if (v27 != v23 || (v28 >= 0 ? (v29 = *(v19 + 2)) : (v29 = *v26), v22 >= 0 ? (v30 = a2) : (v30 = *a2), memcmp(v29, v30, v23)))
                {
                  sub_101446DC0(v7, v19);
                  v7 += 2;
                }
              }

              v19 += 2;
            }

            while (v19 != v8);
            v8 = (*v3)[3];
          }
        }
      }

      if (v7 != v8)
      {
        v31 = v6[3];
        if (v8 != v31)
        {
          do
          {
            sub_101446DC0(v7, v8);
            v8 += 2;
            v7 += 2;
          }

          while (v8 != v31);
          v31 = v6[3];
        }

        while (v31 != v7)
        {
          v31 -= 32;
          sub_100E48AD8(v31);
        }

        v6[3] = v7;
      }

LABEL_61:
      v3 += 2;
      if (v3 == v4)
      {
        v3 = *(a1 + 8);
        v4 = *(a1 + 16);
        goto LABEL_65;
      }
    }
  }

  while (1)
  {
LABEL_65:
    if (v3 == v4)
    {
      v32 = 0;
      v3 = v4;
      goto LABEL_67;
    }

    if ((*v3)[3] == (*v3)[2])
    {
      break;
    }

    v3 += 2;
  }

  sub_1015655C0(**v3);
  v32 = 1;
  if (v3 != v4)
  {
    for (i = v3 + 2; i != v4; i += 2)
    {
      v37 = *i;
      if ((*i)[3] == (*i)[2])
      {
        sub_1015655C0(*v37);
        ++v32;
      }

      else
      {
        v38 = i[1];
        *i = 0;
        i[1] = 0;
        v39 = v3[1];
        *v3 = v37;
        v3[1] = v38;
        if (v39)
        {
          sub_100004A34(v39);
        }

        v3 += 2;
      }
    }
  }

LABEL_67:
  v33 = *(a1 + 16);
  if (v3 != v33)
  {
    while (v33 != v3)
    {
      v34 = *(v33 - 1);
      if (v34)
      {
        sub_100004A34(v34);
      }

      v33 -= 2;
    }

    *(a1 + 16) = v3;
  }

  v35 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v40[0] = 67109120;
    v40[1] = v32;
    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I %u shapes dropped", v40, 8u);
  }

  sub_101445468(a1);
}