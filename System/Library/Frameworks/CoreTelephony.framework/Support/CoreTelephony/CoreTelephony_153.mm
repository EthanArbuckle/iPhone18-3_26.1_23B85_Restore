uint64_t sub_10133A32C(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (*(a1 + 48) == 2)
  {
    v3 = @"InternationalRoamingEDGE-2";
  }

  else
  {
    v3 = @"InternationalRoamingEDGE";
  }

  (*(*v2 + 16))(v2, v3, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v4 = *(**(a1 + 64) + 48);

  return v4();
}

uint64_t sub_10133A408(uint64_t a1)
{
  v2 = 0;
  if (*(a1 + 53) == 1)
  {
    v2 = *(a1 + 52) == 1;
  }

  return (*(**(a1 + 80) + 128))(*(a1 + 80), *(a1 + 48), &v2);
}

void sub_10133A4F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133A534(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10133A56C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10133A59C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10133A5DC(uint64_t a1)
{
  sub_100004AA0(&v2, (a1 + 16));
  v1 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10079D8A0();
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10133A6AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (v14)
  {
    std::__shared_weak_count::__release_weak(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133A6D0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 32);
      if (v5)
      {
        v6 = v5[1];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Sending Link Quality Metric", v8, 2u);
        }

        atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
        v7 = (*(*v5 + 72))(v5);
        (*(*v5 + 96))(v5, v7);
        sub_100004A34(v4);
      }

      sub_100004A34(v4);
    }
  }
}

void sub_10133A7C8(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10133A7E4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10133A800(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10133A810(uint64_t a1, void *a2)
{
  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "msg.tr.format");
  ctu::OsLogLogger::OsLogLogger(__p, buf);
  ctu::OsLogLogger::OsLogLogger(a1, __p);
  ctu::OsLogLogger::~OsLogLogger(__p);
  ctu::OsLogContext::~OsLogContext(buf);
  sub_10000501C((a1 + 8), "TerminalRegistrationMessageFormat");
  *(a1 + 32) = 0u;
  v4 = (a1 + 56);
  *(a1 + 80) = 0u;
  v5 = (a1 + 80);
  *(a1 + 96) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  if (*a2)
  {
    ctu::cf::assign();
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1 + 32;
      if (*(a1 + 55) < 0)
      {
        v7 = *(a1 + 32);
      }

      *buf = 136315138;
      *&buf[4] = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Terminal Registration Message Format: %s", buf, 0xCu);
    }
  }

  v19 = 0;
  v8 = _CFCopySystemVersionDictionary();
  v19 = v8;
  if (v8)
  {
    v18 = 0;
    *buf = CFDictionaryGetValue(v8, _kCFSystemVersionProductVersionKey);
    sub_100060DE8(&v18, buf);
    if (v18)
    {
      ctu::cf::assign();
    }

    memset(buf, 0, sizeof(buf));
    sub_1005A8358(buf);
    v9 = *buf;
    if (*&buf[8] == *buf)
    {
      goto LABEL_20;
    }

    __p[0] = 0;
    __p[1] = 0;
    v17 = 0;
    ctu::base64::encode();
    v10 = HIBYTE(v17);
    v11 = HIBYTE(v17);
    if (v17 < 0)
    {
      v10 = __p[1];
    }

    if (v10)
    {
      if (*(a1 + 103) < 0)
      {
        operator delete(*v5);
      }

      *v5 = *__p;
      *(a1 + 96) = v17;
      goto LABEL_19;
    }

    v12 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *v15 = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unable to base64 encode product id data", v15, 2u);
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_19;
      }
    }

    else if ((v11 & 0x80) == 0)
    {
LABEL_19:
      v9 = *buf;
LABEL_20:
      if (v9)
      {
        *&buf[8] = v9;
        operator delete(v9);
      }

      sub_100005978(&v18);
      goto LABEL_23;
    }

    operator delete(__p[0]);
    goto LABEL_19;
  }

LABEL_23:
  v13 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 79) < 0)
    {
      v4 = *v4;
    }

    if (*(a1 + 103) < 0)
    {
      v5 = *v5;
    }

    *buf = 136315394;
    *&buf[4] = v4;
    *&buf[12] = 2080;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I OS Version = %s, Model = %s", buf, 0x16u);
  }

  sub_10001021C(&v19);
  return a1;
}

void sub_10133AAE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  sub_100005978(&a13);
  sub_10001021C(&a14);
  if (*(v16 + 103) < 0)
  {
    operator delete(*v19);
  }

  if (*(v16 + 79) < 0)
  {
    operator delete(*v17);
  }

  if (*(v16 + 55) < 0)
  {
    operator delete(*v18);
  }

  if (*(v16 + 31) < 0)
  {
    operator delete(*(v16 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(v16);
  _Unwind_Resume(a1);
}

uint64_t sub_10133ABAC(uint64_t a1, __int128 *a2)
{
  ctu::OsLogContext::OsLogContext(&v6, kCtLoggingSystemName, "msg.tr.response");
  ctu::OsLogLogger::OsLogLogger(v7, &v6);
  ctu::OsLogLogger::OsLogLogger(a1, v7);
  ctu::OsLogLogger::~OsLogLogger(v7);
  ctu::OsLogContext::~OsLogContext(&v6);
  sub_10000501C((a1 + 8), "TerminalRegistrationModel");
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C((a1 + 32), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(a1 + 48) = *(a2 + 2);
    *(a1 + 32) = v4;
  }

  return a1;
}

void sub_10133AC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (*(v12 + 31) < 0)
  {
    operator delete(*(v12 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

BOOL sub_10133ACA4(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 55);
  if ((v2 & 0x8000000000000000) == 0)
  {
    if (v2 == 2)
    {
      LOBYTE(v3) = *v1;
      v4 = *v1;
      v5 = (a1 + 32);
      goto LABEL_6;
    }

    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    return 0;
  }

  v6 = *(a1 + 40);
  if (v6 != 2)
  {
    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v2 = v6;
LABEL_24:
      v13 = 134217984;
      v14 = v2;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Invalid Terminal Registration Response size of %lu", &v13, 0xCu);
    }

    return 0;
  }

  v3 = *v1;
  v4 = **v1;
  v5 = *v1;
LABEL_6:
  v8 = (v4 - 1) < 3 && v5[1] == 4;
  v9 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "an invalid";
    if (v8)
    {
      v10 = "a valid";
    }

    if ((v2 & 0x80000000) != 0)
    {
      LOBYTE(v3) = **v1;
    }

    v13 = 136315394;
    v14 = v10;
    v15 = 1024;
    v16 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Received %s Terminal Registration Response of Protocol Version %d", &v13, 0x12u);
  }

  return v8;
}

uint64_t sub_10133AE44(uint64_t a1, int a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "msg.tr");
  ctu::OsLogLogger::OsLogLogger(v10, &v9);
  ctu::OsLogLogger::OsLogLogger(a1, v10);
  ctu::OsLogLogger::~OsLogLogger(v10);
  ctu::OsLogContext::~OsLogContext(&v9);
  v6 = a3[1];
  *(a1 + 8) = *a3;
  *(a1 + 16) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C((a1 + 24), "TerminalRegistrationModel");
  *(a1 + 56) = 0u;
  *(a1 + 48) = a2;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  v7 = subscriber::simSlotAsInstance();
  *(a1 + 152) = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%@_%d", @"TerminalRegistration", v7);
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 172) = 11;
  return a1;
}

void sub_10133AF4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14)
{
  v16 = *(v14 + 2);
  if (v16)
  {
    sub_100004A34(v16);
  }

  ctu::OsLogLogger::~OsLogLogger(v14);
  _Unwind_Resume(a1);
}

const void **sub_10133AFBC(uint64_t a1)
{
  theDict = 0;
  *buf = CFPreferencesCopyValue(*(a1 + 152), @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  sub_100138C38(&theDict, buf);
  v2 = theDict;
  v3 = *a1;
  v4 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Restored TerminalRegistrationData", buf, 2u);
      v2 = theDict;
    }

    v10 = 0;
    *buf = CFDictionaryGetValue(v2, @"Identifier");
    sub_100060DE8(&v10, buf);
    v9 = 0;
    *buf = CFDictionaryGetValue(theDict, @"Device");
    sub_100060DE8(&v9, buf);
    if (v10 && v9)
    {
      ctu::cf::assign();
      ctu::cf::assign();
    }

    else
    {
      if (*(a1 + 79) < 0)
      {
        operator delete(*(a1 + 56));
      }

      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      *(a1 + 72) = 0;
      if (*(a1 + 103) < 0)
      {
        operator delete(*(a1 + 80));
      }

      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *(a1 + 96) = 0;
      if (*(a1 + 127) < 0)
      {
        operator delete(*(a1 + 104));
      }

      *(a1 + 104) = 0;
      *(a1 + 112) = 0;
      *(a1 + 120) = 0;
      v5 = *a1;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = "";
        if (v10)
        {
          v7 = "";
        }

        else
        {
          v7 = " Identifier Info";
        }

        if (!v9)
        {
          v6 = " DeviceInfo";
        }

        *buf = 136315394;
        *&buf[4] = v7;
        v13 = 2080;
        v14 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Missing%s%s: Ignoring stored Terminal Information", buf, 0x16u);
      }
    }

    sub_100005978(&v9);
    sub_100005978(&v10);
  }

  else if (v4)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I No persisted TerminalRegistrationData", buf, 2u);
  }

  return sub_10001021C(&theDict);
}

void sub_10133B220(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100005978(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

const void **sub_10133B25C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
  v5 = ServiceMap;
  if ((v6 & 0x8000000000000000) != 0)
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
  v18 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v18);
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
      goto LABEL_9;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_9:
  (*(*v12 + 80))(&v16, v12, *(a1 + 48), 1, @"SMSSettings", 0, 0);
  sub_100010180(&cf, &v16);
  sub_10000A1EC(&v16);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  v15 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  sub_101151F58(&v15, a2);
  sub_10001021C(&v15);
  return sub_10001021C(&cf);
}

void sub_10133B3D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_10001021C(&a11);
  _Unwind_Resume(a1);
}

void sub_10133B414(uint64_t a1)
{
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  if (*(a1 + 103) < 0)
  {
    operator delete(*(a1 + 80));
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  v2 = *(a1 + 152);

  CFPreferencesSetValue(v2, 0, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
}

void sub_10133B4B4(uint64_t a1)
{
  if ((*(a1 + 79) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 64))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 79))
  {
LABEL_18:
    sub_10133B414(a1);
    CFPreferencesSynchronize(@"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 79);
      if (v7 < 0)
      {
        v7 = *(a1 + 64);
      }

      v8 = *(a1 + 103);
      if (v8 < 0)
      {
        v8 = *(a1 + 88);
      }

      *buf = 134218240;
      *&buf[4] = v7;
      *&buf[12] = 2048;
      *&buf[14] = v8;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "No identifier information to perist, Identifier length = %lu, Device length = %lu", buf, 0x16u);
    }

    return;
  }

  if ((*(a1 + 103) & 0x8000000000000000) != 0)
  {
    if (!*(a1 + 88))
    {
      goto LABEL_18;
    }
  }

  else if (!*(a1 + 103))
  {
    goto LABEL_18;
  }

  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Persisting TerminalRegistrationData", buf, 2u);
  }

  v12 = 0;
  values[0] = 0;
  v3 = ctu::cf::convert_copy();
  if (v3)
  {
    v12 = values[0];
    *buf = 0;
    sub_100005978(buf);
  }

  v11 = 0;
  values[0] = 0;
  if ((ctu::cf::convert_copy() & 1) != 0 && (v11 = values[0], *buf = 0, sub_100005978(buf), v3))
  {
    value = 0;
    *buf = *off_101F30268;
    values[0] = v12;
    values[1] = v11;
    v4 = CFDictionaryCreate(kCFAllocatorDefault, buf, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v4)
    {
      value = v4;
      *v13 = 0;
      sub_10001021C(v13);
      CFPreferencesSetValue(*(a1 + 152), value, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      CFPreferencesSynchronize(@"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    }

    else
    {
      v9 = *a1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Unable to create Terminal Registration Information", v13, 2u);
      }
    }

    sub_10001021C(&value);
  }

  else
  {
    v5 = *a1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Invalid Terminal Registration Info", buf, 2u);
    }
  }

  sub_100005978(&v11);
  sub_100005978(&v12);
}

void sub_10133B7CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_10001021C(va);
  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

void sub_10133B800(uint64_t a1)
{
  v2 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Dumping Terminal Registration Data", &v11, 2u);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 128);
    if (*(a1 + 151) < 0)
    {
      v3 = *v3;
    }

    v11 = 136315138;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Destination Address: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 160);
    v11 = 67109120;
    LODWORD(v12) = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Total SMS tries: %u", &v11, 8u);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CSIBOOLAsString(*(a1 + 164));
    v11 = 136315138;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Ims ready: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CSIBOOLAsString(*(a1 + 165));
    v11 = 136315138;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SMS online: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = CSIBOOLAsString(*(a1 + 166));
    v11 = 136315138;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I SMSC available: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8 = CSIBOOLAsString(*(a1 + 167));
    v11 = 136315138;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Attached: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CSIBOOLAsString(*(a1 + 168));
    v11 = 136315138;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Roaming: %s", &v11, 0xCu);
    v2 = *a1;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIBOOLAsString(*(a1 + 172) != 0);
    v11 = 136315138;
    v12 = v10;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Camped RAT: %s", &v11, 0xCu);
  }
}

BOOL sub_10133BB0C(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 80);
    if (*(a1 + 103) < 0)
    {
      v6 = *v6;
    }

    if (*(a2 + 23) >= 0)
    {
      v7 = a2;
    }

    else
    {
      v7 = *a2;
    }

    if (*(a2 + 47) >= 0)
    {
      v8 = a2 + 3;
    }

    else
    {
      v8 = a2[3];
    }

    v28 = 136315906;
    v29 = v5;
    v30 = 2080;
    v31 = v6;
    v32 = 2080;
    v33 = v7;
    v34 = 2080;
    v35 = v8;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Comparing Identifier (%s,%s) to (%s,%s)", &v28, 0x2Au);
  }

  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = *(a2 + 23);
  }

  else
  {
    v10 = a2[1];
  }

  v11 = *(a1 + 79);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a1 + 64);
  }

  if (v10 != v11)
  {
    return 0;
  }

  v13 = v9 >= 0 ? a2 : *a2;
  v14 = v12 >= 0 ? (a1 + 56) : *(a1 + 56);
  if (memcmp(v13, v14, v10))
  {
    return 0;
  }

  v15 = *(a2 + 47);
  if (v15 >= 0)
  {
    v16 = *(a2 + 47);
  }

  else
  {
    v16 = a2[4];
  }

  v17 = *(a1 + 103);
  v18 = v17;
  if ((v17 & 0x80u) != 0)
  {
    v17 = *(a1 + 88);
  }

  if (v16 != v17)
  {
    return 0;
  }

  v21 = a2[3];
  v20 = a2 + 3;
  v19 = v21;
  if (v15 >= 0)
  {
    v22 = v20;
  }

  else
  {
    v22 = v19;
  }

  v25 = *(a1 + 80);
  v24 = (a1 + 80);
  v23 = v25;
  if (v18 >= 0)
  {
    v26 = v24;
  }

  else
  {
    v26 = v23;
  }

  return memcmp(v22, v26, v16) == 0;
}

std::string *sub_10133BCC4(uint64_t a1, std::string *a2)
{
  result = sub_10133BB0C(a1, a2);
  if ((result & 1) == 0)
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Got a new Terminal Identifier", v6, 2u);
    }

    std::string::operator=((a1 + 56), a2);
    std::string::operator=((a1 + 80), a2 + 1);
    return std::string::operator=((a1 + 104), a2 + 2);
  }

  return result;
}

uint64_t sub_10133BD60(uint64_t a1)
{
  cf[1] = 0;
  v9 = 0;
  cf[0] = 0;
  sub_10133B25C(a1, cf);
  if (!cf[0])
  {
    v3 = *a1;
    if (!os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 0;
    v4 = "Invalid Carrier settings";
    goto LABEL_6;
  }

  theDict = cf[0];
  CFRetain(cf[0]);
  *buf = 0;
  v10.__locale_ = CFDictionaryGetValue(theDict, @"DestinationAddress");
  sub_100060DE8(buf, &v10.__locale_);
  v2 = *buf;
  if (*buf)
  {
    ctu::cf::assign();
  }

  else
  {
    v5 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v10.__locale_) = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Terminal Registration Settings without Destination Address, invalid", &v10, 2u);
    }
  }

  sub_100005978(buf);
  sub_10001021C(&theDict);
  if (v2)
  {
    if (*(a1 + 169) == 1)
    {
      if (CFDictionaryGetValue(cf[0], @"RegistrationOverIMS"))
      {
        operator new();
      }

      v3 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v4 = "Terminal Registration IMS settings not found.";
LABEL_6:
        _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, v4, buf, 2u);
      }
    }

    else
    {
      if (CFDictionaryGetValue(cf[0], @"Registration"))
      {
        operator new();
      }

      v3 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v4 = "Terminal Registration settings not found.";
        goto LABEL_6;
      }
    }
  }

LABEL_18:
  sub_10001021C(cf);
  if (v9)
  {
    sub_100004A34(v9);
  }

  return 0;
}

void sub_10133CA24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, const void *a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_1000CFBA0(&a9);
  sub_10001021C(&a27);
  if (a29)
  {
    sub_100004A34(a29);
  }

  _Unwind_Resume(a1);
}

void sub_10133CC4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10133CD70(va);
  _Unwind_Resume(a1);
}

BOOL sub_10133CC60(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a2)
  {
    return 0;
  }

  v8 = 0;
  memset(v7, 0, sizeof(v7));
  (*(*v2 + 192))(__p);
  sub_10133ABAC(v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  v3 = sub_10133ACA4(v7);
  sub_10133CD1C(v7);
  return v3;
}

void sub_10133CD00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133CD1C(void **this)
{
  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void ***sub_10133CD70(void ***a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10133CE78(v2);
    operator delete();
  }

  return a1;
}

void sub_10133CDBC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void **sub_10133CDF4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_10133CE78(result);

    operator delete();
  }

  return result;
}

uint64_t sub_10133CE38(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10133CE78(void **this)
{
  if (*(this + 103) < 0)
  {
    operator delete(this[10]);
  }

  if (*(this + 79) < 0)
  {
    operator delete(this[7]);
  }

  if (*(this + 55) < 0)
  {
    operator delete(this[4]);
  }

  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void sub_10133CEEC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10133D244(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, void *__p, std::__shared_weak_count *a12, int a13, __int16 a14, char a15, char a16, dispatch_object_t a17)
{
  if (a17)
  {
    (*(a17->isa + 1))(a17);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_10133D3D0(uint64_t a1)
{
  *a1 = off_101F30300;
  sub_1002FED80(a1 + 168);
  sub_1000279DC((a1 + 152));
  sub_100010250((a1 + 144));
  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 104);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
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
  return a1;
}

void sub_10133D478(uint64_t a1)
{
  sub_10133D3D0(a1);

  operator delete();
}

void sub_10133D4B0(uint64_t a1, dispatch_object_t object)
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

const void **sub_10133D5B0(uint64_t a1, CFDictionaryRef *a2)
{
  Value = CFDictionaryGetValue(*a2, @"storeActivationMode");
  buf[0] = 0;
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v5, v7);
    v8 = buf[0];
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 112) = v8;
  v9 = CFDictionaryGetValue(*a2, @"isManualCheck");
  v10 = v9;
  buf[0] = 0;
  if (v9)
  {
    v11 = CFGetTypeID(v9);
    if (v11 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v10, v12);
    }
  }

  *(a1 + 113) = buf[0];
  *v139 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v14 = *v139;
    *v139 = Mutable;
    *buf = v14;
    sub_1000296E0(buf);
  }

  if (*(a1 + 113))
  {
    goto LABEL_36;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v16 = ServiceMap;
  if (v17 < 0)
  {
    v18 = (v17 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v17 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(ServiceMap);
  *buf = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, buf);
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
      if (!v23)
      {
        goto LABEL_17;
      }

LABEL_22:
      *&v170 = 0;
      (*(*v23 + 40))(buf, v23, @"kNextDesktopHostCarrierBundleUpdateCheck", kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
      sub_100432018(&v170, buf);
      sub_10000A1EC(buf);
      if (v170)
      {
        Current = CFAbsoluteTimeGetCurrent();
        AbsoluteTime = CFDateGetAbsoluteTime(v170);
        v28 = *(a1 + 40);
        v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
        if (Current < AbsoluteTime)
        {
          if (v29)
          {
            *buf = 138543362;
            *&buf[4] = v170;
            _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I Next update check is: %{public}@. Will check update then.", buf, 0xCu);
          }

          v30 = 0;
LABEL_33:
          sub_1003EC530(&v170);
          if ((v24 & 1) == 0)
          {
            sub_100004A34(v22);
          }

          if ((v30 & 1) == 0)
          {
            goto LABEL_228;
          }

LABEL_36:
          if ((*(a1 + 200) & 1) == 0)
          {
            *(a1 + 200) = 1;
            v32 = *(a1 + 192);
            if (v32)
            {
              (*(*v32 + 48))(v32, a1 + 200);
            }
          }

          cf = 0;
          sub_1010AF2C4((a1 + 48), &cf);
          v33 = cf;
          if (!cf)
          {
            sub_10133F96C(buf, 1u);
            sub_100209DF4(*v139, @"status", *buf);
            sub_100029A48(buf);
            v35 = *(a1 + 80);
            sub_100010180(&v136, v139);
            (*(*v35 + 32))(v35, &v136);
            sub_10001021C(&v136);
            goto LABEL_70;
          }

          v34 = *(a1 + 40);
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            *&buf[4] = v33;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Received URL: %{public}@", buf, 0xCu);
            v33 = cf;
            v135 = cf;
            if (!cf)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v135 = v33;
          }

          CFRetain(v33);
LABEL_46:
          *&v170 = 0;
          v36 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
          if (v36)
          {
            *&v170 = v36;
            *buf = 0;
            sub_1000279DC(buf);
          }

          if (v135)
          {
            v168[0] = 0;
            v37 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v37)
            {
              v168[0] = v37;
              *buf = 0;
              sub_1000296E0(buf);
              v37 = v168[0];
            }

            sub_1001768B8(v37, @"URL", v135);
            sub_1002E0298(v168[0], @"StripLegacyVersionXML", kCFBooleanTrue);
            sub_10039D64C(v170, v168[0]);
            sub_10002A7D8(&v166, &v170);
            sub_1000296E0(v168);
          }

          else
          {
            sub_10002A7D8(&v166, &v170);
          }

          sub_1000279DC(&v170);
          sub_100A33784(*v139, @"URLList", v166);
          sub_100010250(&v166);
          sub_100005978(&v135);
          sub_10133F96C(buf, 0);
          sub_100209DF4(*v139, @"status", *buf);
          sub_100029A48(buf);
          v38 = *(a1 + 80);
          sub_100010180(&v134, v139);
          LOBYTE(v38) = (*(*v38 + 32))(v38, &v134);
          sub_10001021C(&v134);
          if (v38)
          {
            v148 = 0;
            (*(**(a1 + 80) + 24))(&v148);
            if (!v148)
            {
              v55 = *(a1 + 40);
              if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
                _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", buf, 2u);
              }

              sub_10133F4C8(a1);
              goto LABEL_247;
            }

            *v147 = 0;
            v39 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (v39)
            {
              v40 = *v147;
              *v147 = v39;
              *buf = v40;
              sub_1000296E0(buf);
            }

            v146 = v148;
            if (v148)
            {
              CFRetain(v148);
            }

            v41 = sub_10133F9F8(a1, &v146);
            sub_10001021C(&v146);
            if ((v41 & 1) == 0)
            {
              v56 = *(a1 + 40);
              if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                *&buf[4] = v148;
                _os_log_error_impl(&_mh_execute_header, v56, OS_LOG_TYPE_ERROR, "Failed to receive bytes for %{public}@", buf, 0xCu);
              }

              sub_10133F96C(buf, 2u);
              sub_100209DF4(*v147, @"status", *buf);
              sub_100029A48(buf);
              v57 = *(a1 + 40);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                *&buf[4] = *v147;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I Sending reply for transfer failure: %{public}@", buf, 0xCu);
              }

              v58 = *(a1 + 80);
              sub_100010180(buf, v147);
              (*(*v58 + 32))(v58, buf);
              sub_10001021C(buf);
              sub_10133F4C8(a1);
LABEL_246:
              sub_1000296E0(v147);
LABEL_247:
              sub_10001021C(&v148);
              goto LABEL_248;
            }

            sub_10133F96C(buf, 0);
            sub_100209DF4(*v147, @"status", *buf);
            sub_100029A48(buf);
            v42 = *(a1 + 40);
            if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              *&buf[4] = *v147;
              _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Sending Success after version.xml transfer: %{public}@", buf, 0xCu);
            }

            v43 = *(a1 + 80);
            sub_100010180(&v145, v147);
            (*(*v43 + 32))(v43, &v145);
            sub_10001021C(&v145);
            v44 = Registry::getServiceMap(*(a1 + 48));
            v45 = v44;
            if (v46 < 0)
            {
              v47 = (v46 & 0x7FFFFFFFFFFFFFFFLL);
              v48 = 5381;
              do
              {
                v46 = v48;
                v49 = *v47++;
                v48 = (33 * v48) ^ v49;
              }

              while (v49);
            }

            std::mutex::lock(v44);
            *buf = v46;
            v50 = sub_100009510(&v45[1].__m_.__sig, buf);
            if (v50)
            {
              v51 = v50[4];
              v133 = v50[3];
              if (v51)
              {
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                std::mutex::unlock(v45);
                atomic_fetch_add_explicit(&v51->__shared_owners_, 1uLL, memory_order_relaxed);
                v52 = v51;
                sub_100004A34(v51);
                v53 = 0;
LABEL_81:
                if (v133)
                {
                  v132 = v53;
                  v131 = v52;
                  (*(*v133 + 288))(&v170);
                  v59 = (a1 + 144);
                  if ((a1 + 144) != &v170)
                  {
                    *buf = *v59;
                    *v59 = v170;
                    *&v170 = 0;
                    sub_100010250(buf);
                  }

                  sub_100010250(&v170);
                  v144 = 0;
                  (*(**(a1 + 80) + 24))(&v144);
                  v60 = v144;
                  v61 = *(a1 + 40);
                  v62 = os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT);
                  if (v60)
                  {
                    if (v62)
                    {
                      *buf = 138543362;
                      *&buf[4] = v60;
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %{public}@", buf, 0xCu);
                      v60 = v144;
                    }

                    __p[0] = 0;
                    __p[1] = 0;
                    v143 = 0;
                    CFDictionaryGetValue(v60, @"messageName");
                    memset(buf, 0, sizeof(buf));
                    v174 = 0;
                    ctu::cf::assign();
                    *__p = *buf;
                    v143 = v174;
                    memset(buf, 0, sizeof(buf));
                    v174 = 0;
                    ctu::cf::assign();
                    v171 = v174;
                    v170 = *buf;
                    if (v143 >= 0)
                    {
                      v63 = HIBYTE(v143);
                    }

                    else
                    {
                      v63 = __p[1];
                    }

                    v64 = HIBYTE(v171);
                    v65 = SHIBYTE(v171);
                    if (v171 < 0)
                    {
                      v64 = *(&v170 + 1);
                    }

                    if (v63 == v64)
                    {
                      if (v143 >= 0)
                      {
                        v66 = __p;
                      }

                      else
                      {
                        v66 = __p[0];
                      }

                      if (v171 >= 0)
                      {
                        v67 = &v170;
                      }

                      else
                      {
                        v67 = v170;
                      }

                      v68 = memcmp(v66, v67, v63) == 0;
                    }

                    else
                    {
                      v68 = 0;
                    }

                    if (v65 < 0)
                    {
                      operator delete(v170);
                    }

                    if (!v68)
                    {
                      v69 = *(a1 + 40);
                      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
                      {
                        v70 = __p;
                        if (v143 < 0)
                        {
                          v70 = __p[0];
                        }

                        *buf = 136315138;
                        *&buf[4] = v70;
                        _os_log_impl(&_mh_execute_header, v69, OS_LOG_TYPE_DEFAULT, "#I Received Unknown command: %s. Disconnect", buf, 0xCu);
                      }

                      sub_10133F4C8(a1);
                    }

                    if (*v59 && CFArrayGetCount(*v59))
                    {
                      sub_10006F22C(&theArray, (a1 + 144));
                      *&v170 = 0;
                      v71 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                      if (v71)
                      {
                        v72 = v170;
                        *&v170 = v71;
                        *buf = v72;
                        sub_1000279DC(buf);
                      }

                      if (theArray)
                      {
                        Count = CFArrayGetCount(theArray);
                        if (Count >= 1)
                        {
                          for (i = 0; i != Count; ++i)
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
                            v76 = ValueAtIndex;
                            if (ValueAtIndex)
                            {
                              v77 = CFGetTypeID(ValueAtIndex);
                              if (v77 == CFDictionaryGetTypeID())
                              {
                                v78 = v76;
                              }

                              else
                              {
                                v78 = 0;
                              }
                            }

                            else
                            {
                              v78 = 0;
                            }

                            v79 = CFDictionaryGetValue(v78, @"BundleURL");
                            v80 = v79;
                            if (v79)
                            {
                              v81 = CFGetTypeID(v79);
                              if (v81 == CFStringGetTypeID())
                              {
                                v168[0] = 0;
                                v82 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                                if (v82)
                                {
                                  v83 = v168[0];
                                  v168[0] = v82;
                                  *buf = v83;
                                  sub_1000296E0(buf);
                                }

                                sub_1001768B8(v168[0], @"URL", v80);
                                sub_10039D64C(v170, v168[0]);
                                sub_1000296E0(v168);
                              }
                            }
                          }
                        }
                      }

                      sub_10002A7D8(&v166, &v170);
                      sub_1000279DC(&v170);
                      sub_100A33784(*v147, @"URLList", v166);
                      sub_100010250(&v166);
                      sub_100010250(&theArray);
                      sub_10133F96C(buf, 0);
                      sub_101341F30(*v147, *buf);
                      sub_100029A48(buf);
                      v84 = *(a1 + 80);
                      sub_100010180(&v140, v147);
                      LOBYTE(v84) = (*(*v84 + 32))(v84, &v140);
                      sub_10001021C(&v140);
                      if (v84)
                      {
                        v85 = CFArrayGetCount(*v59);
                        v86 = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
                        if (v86)
                        {
                          v87 = *(a1 + 152);
                          *(a1 + 152) = v86;
                          *buf = v87;
                          sub_1000279DC(buf);
                        }

                        v130 = 1;
                        while (1)
                        {
                          if (v85 < 1)
                          {
LABEL_234:
                            if (v130)
                            {
                              sub_10002A7D8(v168, (a1 + 152));
                              *&v170 = a1;
                              sub_100E13114(&v170 + 1, *(a1 + 8), *(a1 + 16));
                              v175 = 0;
                              operator new();
                            }

                            goto LABEL_239;
                          }

                          v154 = 0;
                          (*(**(a1 + 80) + 24))(&v154);
                          v88 = v154;
                          v89 = *(a1 + 40);
                          v90 = os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT);
                          if (!v88)
                          {
                            if (v90)
                            {
                              *buf = 0;
                              _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", buf, 2u);
                            }

                            sub_10001021C(&v154);
                            goto LABEL_239;
                          }

                          if (v90)
                          {
                            *buf = 138412290;
                            *&buf[4] = v88;
                            _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#I Received message is %@", buf, 0xCu);
                          }

                          *v153 = 0;
                          v91 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
                          if (v91)
                          {
                            v92 = *v153;
                            *v153 = v91;
                            *buf = v92;
                            sub_1000296E0(buf);
                          }

                          sub_10133F96C(buf, 0);
                          sub_100209DF4(*v153, @"status", *buf);
                          sub_100029A48(buf);
                          v152 = v154;
                          if (v154)
                          {
                            CFRetain(v154);
                          }

                          v93 = sub_10133F9F8(a1, &v152);
                          sub_10001021C(&v152);
                          if ((v93 & 1) == 0)
                          {
                            break;
                          }

LABEL_215:
                          v119 = *(a1 + 40);
                          if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            *&buf[4] = *v153;
                            _os_log_impl(&_mh_execute_header, v119, OS_LOG_TYPE_DEFAULT, "#I Sending reply for transfer: %@", buf, 0xCu);
                          }

                          v120 = *(a1 + 80);
                          sub_100010180(&v149, v153);
                          v121 = (*(*v120 + 32))(v120, &v149);
                          sub_10001021C(&v149);
                          if (v121)
                          {
                            --v85;
                          }

                          else
                          {
                            v122 = *(a1 + 40);
                            if (os_log_type_enabled(v122, OS_LOG_TYPE_ERROR))
                            {
                              *buf = 0;
                              _os_log_error_impl(&_mh_execute_header, v122, OS_LOG_TYPE_ERROR, "Failed sending reply for transfer failure.Disconnect.", buf, 2u);
                            }

                            v130 = 0;
                          }

                          sub_1000296E0(v153);
                          sub_10001021C(&v154);
                          if ((v121 & 1) == 0)
                          {
                            goto LABEL_234;
                          }
                        }

                        sub_10133F96C(buf, 2u);
                        sub_101341F30(*v153, *buf);
                        sub_100029A48(buf);
                        v94 = v154;
                        theDict = v154;
                        if (v154)
                        {
                          CFRetain(v154);
                          v94 = theDict;
                        }

                        *buf = 0;
                        *&v170 = CFDictionaryGetValue(v94, @"originalURL");
                        sub_100060DE8(buf, &v170);
                        if (*buf && (v95 = CFArrayGetCount(*v59), v95 >= 1))
                        {
                          v96 = 0;
                          while (1)
                          {
                            v151 = 0;
                            *&v170 = CFArrayGetValueAtIndex(*v59, v96);
                            sub_100010180(&v151, &v170);
                            v97 = CFDictionaryGetValue(v151, @"BundleURL");
                            v98 = v97;
                            if (v97)
                            {
                              v99 = CFGetTypeID(v97);
                              v100 = v99 == CFStringGetTypeID() ? v98 : 0;
                            }

                            else
                            {
                              v100 = 0;
                            }

                            if (CFEqual(v100, *buf))
                            {
                              break;
                            }

                            sub_10001021C(&v151);
                            if (v95 == ++v96)
                            {
                              goto LABEL_156;
                            }
                          }
                        }

                        else
                        {
LABEL_156:
                          v151 = 0;
                        }

                        sub_100005978(buf);
                        v101 = Registry::getServiceMap(*(a1 + 48));
                        v102 = v101;
                        if (v103 < 0)
                        {
                          v104 = (v103 & 0x7FFFFFFFFFFFFFFFLL);
                          v105 = 5381;
                          do
                          {
                            v103 = v105;
                            v106 = *v104++;
                            v105 = (33 * v105) ^ v106;
                          }

                          while (v106);
                        }

                        std::mutex::lock(v101);
                        *buf = v103;
                        v107 = sub_100009510(&v102[1].__m_.__sig, buf);
                        if (v107)
                        {
                          v108 = v107[3];
                          v109 = v107[4];
                          if (v109)
                          {
                            atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                            std::mutex::unlock(v102);
                            atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
                            sub_100004A34(v109);
                            v110 = 0;
                            goto LABEL_165;
                          }
                        }

                        else
                        {
                          v108 = 0;
                        }

                        std::mutex::unlock(v102);
                        v109 = 0;
                        v110 = 1;
LABEL_165:
                        if (!v108)
                        {
LABEL_212:
                          if ((v110 & 1) == 0)
                          {
                            sub_100004A34(v109);
                          }

                          sub_10001021C(&v151);
                          sub_10001021C(&theDict);
                          goto LABEL_215;
                        }

                        v111 = *(a1 + 40);
                        if (os_log_type_enabled(v111, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 0;
                          _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I Submitting metric on desktop update for bundle transfer failure", buf, 2u);
                        }

                        v172 = 0;
                        v112 = xpc_dictionary_create(0, 0, 0);
                        v113 = v112;
                        if (v112)
                        {
                          v172 = v112;
                        }

                        else
                        {
                          v113 = xpc_null_create();
                          v172 = v113;
                          if (!v113)
                          {
                            v114 = xpc_null_create();
                            v113 = 0;
                            goto LABEL_175;
                          }
                        }

                        if (xpc_get_type(v113) == &_xpc_type_dictionary)
                        {
                          xpc_retain(v113);
LABEL_176:
                          xpc_release(v113);
                          if (v151)
                          {
                            v170 = 0uLL;
                            v171 = 0;
                            CFDictionaryGetValue(v151, @"BundleID");
                            memset(buf, 0, sizeof(buf));
                            v174 = 0;
                            ctu::cf::assign();
                            v170 = *buf;
                            v171 = v174;
                            v115 = *(a1 + 64);
                            v168[0] = 0;
                            v168[1] = 0;
                            v169 = 0;
                            CFDictionaryGetValue(v151, @"BundleURL");
                            memset(buf, 0, sizeof(buf));
                            v174 = 0;
                            ctu::cf::assign();
                            v166 = *buf;
                            v167 = v174;
                            (*(*v115 + 120))(v168, v115, &v166);
                            if (SHIBYTE(v167) < 0)
                            {
                              operator delete(v166);
                            }

                            v166 = 0uLL;
                            v167 = 0;
                            CFDictionaryGetValue(v151, @"BundleVersion");
                            memset(buf, 0, sizeof(buf));
                            v174 = 0;
                            ctu::cf::assign();
                            v166 = *buf;
                            v167 = v174;
                            if (v169 >= 0)
                            {
                              v116 = v168;
                            }

                            else
                            {
                              v116 = v168[0];
                            }

                            v164 = xpc_string_create(v116);
                            if (!v164)
                            {
                              v164 = xpc_null_create();
                            }

                            *buf = &v172;
                            *&buf[8] = "bundle_file_name";
                            sub_10000F688(buf, &v164, &v165);
                            xpc_release(v165);
                            v165 = 0;
                            xpc_release(v164);
                            v164 = 0;
                            if (v171 >= 0)
                            {
                              v117 = &v170;
                            }

                            else
                            {
                              v117 = v170;
                            }

                            v162 = xpc_string_create(v117);
                            if (!v162)
                            {
                              v162 = xpc_null_create();
                            }

                            *buf = &v172;
                            *&buf[8] = "bundle_name";
                            sub_10000F688(buf, &v162, &object);
                            xpc_release(object);
                            object = 0;
                            xpc_release(v162);
                            v162 = 0;
                            if (v167 >= 0)
                            {
                              v118 = &v166;
                            }

                            else
                            {
                              v118 = v166;
                            }

                            v160 = xpc_string_create(v118);
                            if (!v160)
                            {
                              v160 = xpc_null_create();
                            }

                            *buf = &v172;
                            *&buf[8] = "bundle_version";
                            sub_10000F688(buf, &v160, &v161);
                            xpc_release(v161);
                            v161 = 0;
                            xpc_release(v160);
                            v160 = 0;
                            if (SHIBYTE(v167) < 0)
                            {
                              operator delete(v166);
                            }

                            if (SHIBYTE(v169) < 0)
                            {
                              operator delete(v168[0]);
                            }

                            if (SHIBYTE(v171) < 0)
                            {
                              operator delete(v170);
                            }
                          }

                          v168[0] = xpc_string_create("Failed");
                          if (!v168[0])
                          {
                            v168[0] = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "result";
                          sub_10000F688(buf, v168, &v170);
                          xpc_release(v170);
                          *&v170 = 0;
                          xpc_release(v168[0]);
                          v168[0] = 0;
                          v159 = xpc_int64_create(6);
                          if (!v159)
                          {
                            v159 = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "failureReason";
                          sub_10000F688(buf, &v159, &v166);
                          xpc_release(v166);
                          *&v166 = 0;
                          xpc_release(v159);
                          v159 = 0;
                          v157 = xpc_BOOL_create(1);
                          if (!v157)
                          {
                            v157 = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "is_desktop_host";
                          sub_10000F688(buf, &v157, &v158);
                          xpc_release(v158);
                          v158 = 0;
                          xpc_release(v157);
                          v157 = 0;
                          v155 = xpc_BOOL_create(*(a1 + 112));
                          if (!v155)
                          {
                            v155 = xpc_null_create();
                          }

                          *buf = &v172;
                          *&buf[8] = "is_store_activation_mode_enabled_on_desktop";
                          sub_10000F688(buf, &v155, &v156);
                          xpc_release(v156);
                          v156 = 0;
                          xpc_release(v155);
                          v155 = 0;
                          *buf = v172;
                          if (v172)
                          {
                            xpc_retain(v172);
                          }

                          else
                          {
                            *buf = xpc_null_create();
                          }

                          (*(*v108 + 16))(v108, "commCenterBundleInstallDetails", buf);
                          xpc_release(*buf);
                          *buf = 0;
                          xpc_release(v172);
                          goto LABEL_212;
                        }

                        v114 = xpc_null_create();
LABEL_175:
                        v172 = v114;
                        goto LABEL_176;
                      }

                      v128 = *(a1 + 40);
                      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "#I Failed to send urllist to lockdown.Disconnect.", buf, 2u);
                      }

LABEL_239:
                      sub_10133F4C8(a1);
                    }

                    else
                    {
                      v123 = *(a1 + 40);
                      if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 0;
                        _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I No updates available", buf, 2u);
                      }

                      sub_10133F96C(buf, 1u);
                      sub_101341F30(*v147, *buf);
                      v124 = sub_100029A48(buf);
                      v125 = *(a1 + 80);
                      sub_100010180(v124, v147);
                      (*(*v125 + 32))(v125, buf);
                      sub_10001021C(buf);
                      sub_10133F4C8(a1);
                      sub_1013406B8(a1, 3);
                    }

                    if (SHIBYTE(v143) < 0)
                    {
                      operator delete(__p[0]);
                    }

                    v52 = v131;
                    v53 = v132;
                  }

                  else
                  {
                    if (v62)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", buf, 2u);
                    }

                    v52 = v131;
                    v53 = v132;
                    sub_10133F4C8(a1);
                  }

                  sub_10001021C(&v144);
                }

                else
                {
                  sub_10133F4C8(a1);
                }

                if ((v53 & 1) == 0)
                {
                  sub_100004A34(v52);
                }

                goto LABEL_246;
              }
            }

            else
            {
              v133 = 0;
            }

            std::mutex::unlock(v45);
            v52 = 0;
            v53 = 1;
            goto LABEL_81;
          }

          v54 = *(a1 + 40);
          if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v54, OS_LOG_TYPE_ERROR, "Error sending message. Disconnect.", buf, 2u);
          }

LABEL_70:
          sub_10133F4C8(a1);
LABEL_248:
          sub_100005978(&cf);
          return sub_1000296E0(v139);
        }

        if (v29)
        {
          *buf = 0;
          v31 = "#I Past the update check date in preferences. Proceeding to continue with the update.";
          goto LABEL_31;
        }
      }

      else
      {
        v28 = *(a1 + 40);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v31 = "#I Update check date not available in preferences. Proceeding to continue with the update.";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, v31, buf, 2u);
        }
      }

      v30 = 1;
      goto LABEL_33;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v16);
  v22 = 0;
  v24 = 1;
  if (v23)
  {
    goto LABEL_22;
  }

LABEL_17:
  v25 = *(a1 + 40);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Cannot create preferences", buf, 2u);
    if (v24)
    {
      goto LABEL_228;
    }

    goto LABEL_19;
  }

  if ((v24 & 1) == 0)
  {
LABEL_19:
    sub_100004A34(v22);
  }

LABEL_228:
  v126 = *(a1 + 40);
  if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I Not proceeding with update check now.", buf, 2u);
  }

  sub_10133F96C(buf, 1u);
  sub_100209DF4(*v139, @"status", *buf);
  sub_100029A48(buf);
  v127 = *(a1 + 80);
  sub_100010180(&v138, v139);
  (*(*v127 + 32))(v127, &v138);
  sub_10001021C(&v138);
  sub_10133F4C8(a1);
  return sub_1000296E0(v139);
}

void sub_10133F018(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, int a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, const void *a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, const void *a33, uint64_t a34, uint64_t a35, const void *a36, const void *a37)
{
  sub_10000FF50(v37 - 160);
  v39 = *(v37 - 176);
  if (v39)
  {
    std::__shared_weak_count::__release_weak(v39);
  }

  sub_100010250((v37 - 216));
  if (a31 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a33);
  if ((a16 & 1) == 0)
  {
    sub_100004A34(a14);
  }

  sub_1000296E0(&a36);
  sub_10001021C(&a37);
  sub_100005978(&a21);
  sub_1000296E0(&a23);
  _Unwind_Resume(a1);
}

uint64_t sub_10133F4C8(uint64_t a1)
{
  v2 = a1 + 200;
  if (*(a1 + 200))
  {
    *(a1 + 200) = 0;
    v3 = *(a1 + 192);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2);
    }
  }

  v4 = *(a1 + 143);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a1 + 128);
  }

  if (v4)
  {
    v5 = (*(**(a1 + 64) + 112))(*(a1 + 64), a1 + 120);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        if (*(a1 + 143) >= 0)
        {
          v27 = a1 + 120;
        }

        else
        {
          v27 = *(a1 + 120);
        }

        *buf = 136446466;
        *&buf[4] = v27;
        *&buf[12] = 2048;
        *&buf[14] = v6;
        _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to remove: %{public}s, error: %ld", buf, 0x16u);
      }
    }
  }

  if (*(a1 + 152))
  {
    v31 = 0;
    sub_10002A7D8(&theArray, (a1 + 152));
    __p[0] = 0;
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    if (Mutable)
    {
      __p[0] = Mutable;
      *buf = 0;
      sub_1000279DC(buf);
    }

    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
          v12 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v13 = CFGetTypeID(ValueAtIndex);
            if (v13 == CFDictionaryGetTypeID())
            {
              v14 = v12;
            }

            else
            {
              v14 = 0;
            }
          }

          else
          {
            v14 = 0;
          }

          Value = CFDictionaryGetValue(v14, @"LocalFilePath");
          v16 = Value;
          if (Value)
          {
            v17 = CFGetTypeID(Value);
            if (v17 == CFStringGetTypeID())
            {
              sub_1002F5B6C(__p[0], v16);
            }
          }
        }
      }
    }

    sub_10002A7D8(&v31, __p);
    sub_1000279DC(__p);
    sub_100010250(&theArray);
    if (v31)
    {
      v18 = CFArrayGetCount(v31);
      if (v18 >= 1)
      {
        for (j = 0; j != v18; ++j)
        {
          __p[0] = 0;
          __p[1] = 0;
          v29 = 0;
          CFArrayGetValueAtIndex(v31, j);
          memset(buf, 0, sizeof(buf));
          ctu::cf::assign();
          *__p = *buf;
          v29 = *&buf[16];
          v20 = *&buf[8];
          if ((buf[23] & 0x80u) == 0)
          {
            v20 = buf[23];
          }

          if (v20)
          {
            v21 = (*(**(a1 + 64) + 112))(*(a1 + 64), __p);
            if (v21)
            {
              v22 = *(a1 + 40);
              if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
              {
                if (v29 >= 0)
                {
                  v23 = __p;
                }

                else
                {
                  v23 = __p[0];
                }

                *buf = 136446466;
                *&buf[4] = v23;
                *&buf[12] = 2048;
                *&buf[14] = v21;
                _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "Failed to remove: %{public}s, error: %ld", buf, 0x16u);
              }
            }
          }

          if (SHIBYTE(v29) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }
    }

    sub_100010250(&v31);
  }

  v24 = *(a1 + 144);
  *(a1 + 144) = 0;
  *buf = v24;
  sub_100010250(buf);
  v25 = *(a1 + 152);
  *(a1 + 152) = 0;
  *buf = v25;
  sub_1000279DC(buf);
  if (*(a1 + 143) < 0)
  {
    **(a1 + 120) = 0;
    *(a1 + 128) = 0;
  }

  else
  {
    *(a1 + 120) = 0;
    *(a1 + 143) = 0;
  }

  *(a1 + 112) = 0;
  return (*(**(a1 + 80) + 48))(*(a1 + 80));
}

const void **sub_10133F96C(CFNumberRef *a1, unsigned __int8 a2)
{
  v6 = 0;
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v3)
  {
    v6 = v3;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  v6 = 0;
  return sub_100029A48(&v6);
}

uint64_t sub_10133F9F8(std::string *a1, CFDictionaryRef *a2)
{
  v4 = *a2;
  v5 = a1[1].__r_.__value_.__r.__words[2];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %@", &buf, 0xCu);
      v4 = *a2;
    }

    CFDictionaryGetValue(v4, @"messageName");
    buf = 0uLL;
    *&v92 = 0;
    ctu::cf::assign();
    v88 = buf;
    v89 = v92;
    Value = CFDictionaryGetValue(*a2, @"status");
    v8 = Value;
    LODWORD(buf) = 0;
    if (Value)
    {
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        ctu::cf::assign(&buf, v8, v10);
      }

      v11 = buf;
      if (buf)
      {
        v12 = a1[1].__r_.__value_.__r.__words[2];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 67109120;
          DWORD1(buf) = v11;
          v13 = "#I Received an error status: %d. Disconnect.";
          v14 = v12;
          v15 = 8;
LABEL_53:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v13, &buf, v15);
          goto LABEL_56;
        }

        goto LABEL_56;
      }
    }

    buf = 0uLL;
    *&v92 = 0;
    ctu::cf::assign();
    v87 = v92;
    *__p = buf;
    if (v89 >= 0)
    {
      v16 = HIBYTE(v89);
    }

    else
    {
      v16 = *(&v88 + 1);
    }

    v17 = HIBYTE(v87);
    v18 = SHIBYTE(v87);
    if (v87 < 0)
    {
      v17 = __p[1];
    }

    if (v16 == v17)
    {
      if (v89 >= 0)
      {
        v19 = &v88;
      }

      else
      {
        v19 = v88;
      }

      if (v87 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      v21 = memcmp(v19, v20, v16) == 0;
      if ((v18 & 0x80000000) == 0)
      {
LABEL_29:
        v23 = a1[1].__r_.__value_.__r.__words[2];
        v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
        if (!v21)
        {
          if (v24)
          {
            v38 = &v88;
            if (v89 < 0)
            {
              v38 = v88;
            }

            LODWORD(buf) = 136315138;
            *(&buf + 4) = v38;
            v13 = "#I Unknown message %s";
            v14 = v23;
            v15 = 12;
            goto LABEL_53;
          }

LABEL_56:
          v22 = 0;
          goto LABEL_57;
        }

        if (v24)
        {
          v25 = &v88;
          if (v89 < 0)
          {
            v25 = v88;
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v25;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Received %s request", &buf, 0xCu);
        }

        v26 = CFDictionaryGetValue(*a2, @"fileSize");
        v27 = v26;
        if (!v26 || (v28 = CFGetTypeID(v26), v28 != CFNumberGetTypeID()))
        {
          v39 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v39, OS_LOG_TYPE_ERROR, "Invalid file Size", &buf, 2u);
          }

          goto LABEL_56;
        }

        cf = 0;
        *&buf = CFDictionaryGetValue(*a2, @"originalURL");
        sub_100060DE8(&cf, &buf);
        if (!cf)
        {
          v44 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v44, OS_LOG_TYPE_ERROR, "Invalid original url", &buf, 2u);
          }

          v22 = 0;
          goto LABEL_141;
        }

        __p[0] = 0;
        __p[1] = 0;
        v87 = 0;
        sub_10000501C(__p, "");
        memset(&__str, 0, sizeof(__str));
        v29 = a1[2].__r_.__value_.__r.__words[2];
        buf = 0uLL;
        *&v92 = 0;
        ctu::cf::assign();
        *&v83.__r_.__value_.__l.__data_ = buf;
        v83.__r_.__value_.__r.__words[2] = v92;
        (*(*v29 + 120))(&__str, v29, &v83);
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

        size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
        p_str = &__str;
        if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          size = __str.__r_.__value_.__l.__size_;
          p_str = __str.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          v32 = p_str + size;
          v33 = p_str;
          v34 = v32;
          do
          {
            v35 = v33;
            v36 = v33;
            while (1)
            {
              v37 = *v36++;
              if (v37 == 46)
              {
                break;
              }

              v35 = v36;
              if (v36 == v32)
              {
                v35 = v34;
                goto LABEL_60;
              }
            }

            v33 = (&v35->__r_.__value_.__l.__data_ + 1);
            v34 = v35;
          }

          while (v36 != v32);
LABEL_60:
          if (v35 != v32 && v35 - p_str != -1)
          {
            std::string::basic_string(&buf, &__str, v35 - p_str, 0xFFFFFFFFFFFFFFFFLL, &v83);
            if (SHIBYTE(v87) < 0)
            {
              operator delete(__p[0]);
            }

            v87 = v92;
            *__p = buf;
            if ((SBYTE7(v92) & 0x80u) == 0)
            {
              v41 = (__p + BYTE7(v92));
            }

            else
            {
              v41 = (__p[0] + __p[1]);
            }

            if ((SBYTE7(v92) & 0x80u) == 0)
            {
              v42 = __p;
            }

            else
            {
              v42 = __p[0];
            }

            while (v42 != v41)
            {
              *v42 = __tolower(*v42);
              v42 = (v42 + 1);
            }
          }
        }

        if (SHIBYTE(v87) < 0)
        {
          if (__p[1] != 5)
          {
            goto LABEL_88;
          }

          v43 = __p[0];
        }

        else
        {
          if (SHIBYTE(v87) != 5)
          {
            goto LABEL_88;
          }

          v43 = __p;
        }

        v45 = *v43;
        v46 = *(v43 + 4);
        if (v45 == 1668311342 && v46 == 99)
        {
          v82 = cf;
          if (cf)
          {
            CFRetain(cf);
          }

          v48 = sub_101340954(a1, &v82);
          sub_100005978(&v82);
          if (!v48)
          {
            v72 = a1[1].__r_.__value_.__r.__words[2];
            if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
            {
              LOWORD(buf) = 0;
              _os_log_error_impl(&_mh_execute_header, v72, OS_LOG_TYPE_ERROR, "Filename not part of the expected urls.", &buf, 2u);
            }

            v22 = 0;
            goto LABEL_137;
          }
        }

LABEL_88:
        memset(&v83, 0, sizeof(v83));
        WirelessUserDirectory = _GetWirelessUserDirectory();
        v50 = sub_10000501C(v94, WirelessUserDirectory);
        v51 = std::string::append(v50, "/Library/", 9uLL);
        v52 = *&v51->__r_.__value_.__l.__data_;
        v81.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v81.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        generateUUIDForIPCC(valuePtr);
        if ((v80 & 0x80u) == 0)
        {
          v53 = valuePtr;
        }

        else
        {
          v53 = valuePtr[0];
        }

        if ((v80 & 0x80u) == 0)
        {
          v54 = v80;
        }

        else
        {
          v54 = valuePtr[1];
        }

        v55 = std::string::append(&v81, v53, v54);
        v56 = *&v55->__r_.__value_.__l.__data_;
        *&v92 = *(&v55->__r_.__value_.__l + 2);
        buf = v56;
        v55->__r_.__value_.__l.__size_ = 0;
        v55->__r_.__value_.__r.__words[2] = 0;
        v55->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v57 = __p;
        }

        else
        {
          v57 = __p[0];
        }

        if (v87 >= 0)
        {
          v58 = HIBYTE(v87);
        }

        else
        {
          v58 = __p[1];
        }

        v59 = std::string::append(&buf, v57, v58);
        v60 = *&v59->__r_.__value_.__l.__data_;
        v83.__r_.__value_.__r.__words[2] = v59->__r_.__value_.__r.__words[2];
        *&v83.__r_.__value_.__l.__data_ = v60;
        v59->__r_.__value_.__l.__size_ = 0;
        v59->__r_.__value_.__r.__words[2] = 0;
        v59->__r_.__value_.__r.__words[0] = 0;
        if (SBYTE7(v92) < 0)
        {
          operator delete(buf);
        }

        if (v80 < 0)
        {
          operator delete(valuePtr[0]);
        }

        if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v81.__r_.__value_.__l.__data_);
        }

        if (v95 < 0)
        {
          operator delete(*v94);
        }

        v61 = a1[3].__r_.__value_.__l.__size_;
        v81.__r_.__value_.__r.__words[0] = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v81.__r_.__value_.__r.__words[0] = Mutable;
          *&buf = 0;
          sub_1000296E0(&buf);
        }

        sub_10133F96C(&buf, 0);
        sub_100209DF4(v81.__r_.__value_.__l.__data_, @"status", buf);
        sub_100029A48(&buf);
        sub_100010180(&v78, &v81.__r_.__value_.__l.__data_);
        sub_1000296E0(&v81.__r_.__value_.__l.__data_);
        v63 = (*(*v61 + 32))(v61, &v78);
        sub_10001021C(&v78);
        if ((v63 & 1) == 0)
        {
          v68 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            LOWORD(buf) = 0;
            _os_log_error_impl(&_mh_execute_header, v68, OS_LOG_TYPE_ERROR, "Couldn't send file transfer ack. Disconnect.", &buf, 2u);
          }

          v22 = 0;
          goto LABEL_135;
        }

        v92 = 0u;
        v93 = 0u;
        buf = 0u;
        v64 = a1[1].__r_.__value_.__r.__words[2];
        v81.__r_.__value_.__r.__words[0] = a1;
        v81.__r_.__value_.__l.__size_ = &v83;
        v65 = sub_101340FCC(&v81);
        sub_101340F1C(&buf, v64, v65);
        *&v81.__r_.__value_.__l.__data_ = 0uLL;
        sub_10000501C(&v76, "Receive data from desktop host");
        sub_101341390(v90, &buf);
        Registry::createXpcJetsamAssertion();
        sub_100014DA8(v90);
        if (v77 < 0)
        {
          operator delete(v76);
        }

        valuePtr[0] = 0;
        CFNumberGetValue(v27, kCFNumberCFIndexType, valuePtr);
        v75 = 0;
        (*(*a1[3].__r_.__value_.__l.__size_ + 40))(&v75);
        if (v75)
        {
          if ((*(*a1[2].__r_.__value_.__r.__words[2] + 200))(a1[2].__r_.__value_.__r.__words[2], &v83, v75, 0))
          {
            v66 = v75;
            v75 = 0;
            *v94 = v66;
            sub_10002D760(v94);
            v67 = v81.__r_.__value_.__l.__size_;
            *&v81.__r_.__value_.__l.__data_ = 0uLL;
            if (v67)
            {
              sub_100004A34(v67);
            }

            if (sub_100318068(__p, ".ipcc"))
            {
              sub_10005C7A4(&v74, &cf);
              sub_1013410A8(a1, &v74, &v83);
              sub_100005978(&v74);
            }

            else
            {
              std::string::operator=(a1 + 5, &v83);
            }

            v22 = 1;
            goto LABEL_132;
          }

          v70 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
          {
            v73 = &v83;
            if ((v83.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              v73 = v83.__r_.__value_.__r.__words[0];
            }

            *v94 = 136446210;
            *&v94[4] = v73;
            _os_log_error_impl(&_mh_execute_header, v70, OS_LOG_TYPE_ERROR, "Failed to write file: %{public}s", v94, 0xCu);
          }

          v71 = v75;
          v75 = 0;
          *v94 = v71;
          sub_10002D760(v94);
        }

        else
        {
          v69 = a1[1].__r_.__value_.__r.__words[2];
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            *v94 = 0;
            _os_log_error_impl(&_mh_execute_header, v69, OS_LOG_TYPE_ERROR, "Invalid data ref", v94, 2u);
          }
        }

        v22 = 0;
LABEL_132:
        sub_10002D760(&v75);
        if (v81.__r_.__value_.__l.__size_)
        {
          sub_100004A34(v81.__r_.__value_.__l.__size_);
        }

        sub_100014DA8(&buf);
LABEL_135:
        if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v83.__r_.__value_.__l.__data_);
        }

LABEL_137:
        if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__str.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v87) < 0)
        {
          operator delete(__p[0]);
        }

LABEL_141:
        sub_100005978(&cf);
LABEL_57:
        if (SHIBYTE(v89) < 0)
        {
          operator delete(v88);
        }

        return v22;
      }
    }

    else
    {
      v21 = 0;
      if ((SHIBYTE(v87) & 0x80000000) == 0)
      {
        goto LABEL_29;
      }
    }

    operator delete(__p[0]);
    goto LABEL_29;
  }

  if (v6)
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Invalid request. Disconnect.", &buf, 2u);
  }

  return 0;
}

void sub_1013404C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, std::__shared_weak_count *a26, int a27, __int16 a28, char a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, const void *a45, void *a46, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, void *a53, uint64_t a54, int a55, __int16 a56, char a57, char a58)
{
  sub_100005978(&a10);
  sub_10002D760(&a11);
  if (a26)
  {
    sub_100004A34(a26);
  }

  sub_100014DA8((v58 - 128));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a51 < 0)
  {
    operator delete(a46);
  }

  sub_100005978(&a45);
  if (a58 < 0)
  {
    operator delete(a53);
  }

  _Unwind_Resume(a1);
}

const void **sub_1013406B8(uint64_t a1, int a2)
{
  v4 = rand();
  if (a2 == 3)
  {
    v5 = CFAbsoluteTimeGetCurrent() + (v4 % 24 + 1) * 3600.0;
  }

  else
  {
    v5 = CFAbsoluteTimeGetCurrent() + (v4 % 7 + 8) * 86400.0;
  }

  v6 = CFDateCreate(kCFAllocatorDefault, v5);
  v19 = v6;
  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Saving the next update check at %{public}@", buf, 0xCu);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  if (!v14)
  {
    v16 = 0;
LABEL_14:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  v16 = v14[3];
  v15 = v14[4];
  if (!v15)
  {
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v15);
  v17 = 0;
  if (v16)
  {
LABEL_15:
    (*(*v16 + 16))(v16, @"kNextDesktopHostCarrierBundleUpdateCheck", v19, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

LABEL_16:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  return sub_1003EC530(&v19);
}

void sub_101340918(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  v4 = v2;
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_1003EC530(va);
  _Unwind_Resume(a1);
}

BOOL sub_101340954(uint64_t a1, CFTypeRef *a2)
{
  Count = CFArrayGetCount(*(a1 + 144));
  if (Count < 1)
  {
    return 0;
  }

  v5 = Count;
  v6 = 0;
  v7 = 1;
  while (1)
  {
    theDict = 0;
    *buf = CFArrayGetValueAtIndex(*(a1 + 144), v6);
    sub_100010180(&theDict, buf);
    Value = CFDictionaryGetValue(theDict, @"BundleURL");
    v9 = Value;
    if (Value)
    {
      v10 = CFGetTypeID(Value);
      v11 = v10 == CFStringGetTypeID() ? v9 : 0;
    }

    else
    {
      v11 = 0;
    }

    if (CFEqual(v11, *a2))
    {
      break;
    }

    sub_10001021C(&theDict);
    v7 = ++v6 < v5;
    if (v5 == v6)
    {
      return v7;
    }
  }

  v29 = theDict;
  if (theDict)
  {
    CFRetain(theDict);
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
  *buf = v14;
  v18 = sub_100009510(&v13[1].__m_.__sig, buf);
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
        goto LABEL_55;
      }

LABEL_23:
      v22 = *(a1 + 40);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Submitting metric on desktop update check", buf, 2u);
      }

      v43 = 0;
      v23 = xpc_dictionary_create(0, 0, 0);
      v24 = v23;
      if (v23)
      {
        v43 = v23;
      }

      else
      {
        v24 = xpc_null_create();
        v43 = v24;
        if (!v24)
        {
          v25 = xpc_null_create();
          v24 = 0;
          goto LABEL_32;
        }
      }

      if (xpc_get_type(v24) == &_xpc_type_dictionary)
      {
        xpc_retain(v24);
LABEL_33:
        xpc_release(v24);
        __p[0] = 0;
        __p[1] = 0;
        v42 = 0;
        CFDictionaryGetValue(v29, @"BundleID");
        memset(buf, 0, sizeof(buf));
        v45 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v42 = v45;
        if (v45 >= 0)
        {
          v26 = __p;
        }

        else
        {
          v26 = __p[0];
        }

        v39 = xpc_string_create(v26);
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "bundle_update_check_info_bundle_name_to_check";
        sub_10000F688(buf, &v39, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v39);
        v39 = 0;
        v37 = xpc_BOOL_create(1);
        if (!v37)
        {
          v37 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "is_desktop_host";
        sub_10000F688(buf, &v37, &v38);
        xpc_release(v38);
        v38 = 0;
        xpc_release(v37);
        v37 = 0;
        if (*(a1 + 113))
        {
          v27 = 9;
        }

        else
        {
          v27 = 10;
        }

        v35 = xpc_int64_create(v27);
        if (!v35)
        {
          v35 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "update_check_trigger";
        sub_10000F688(buf, &v35, &v36);
        xpc_release(v36);
        v36 = 0;
        xpc_release(v35);
        v35 = 0;
        v33 = xpc_BOOL_create(*(a1 + 112));
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "is_store_activation_mode_enabled_on_desktop";
        sub_10000F688(buf, &v33, &v34);
        xpc_release(v34);
        v34 = 0;
        xpc_release(v33);
        v33 = 0;
        v31 = xpc_BOOL_create(*(a1 + 160) == 1);
        if (!v31)
        {
          v31 = xpc_null_create();
        }

        *buf = &v43;
        *&buf[8] = "bundle_update_check_info_is_buddy_active";
        sub_10000F688(buf, &v31, &v32);
        xpc_release(v32);
        v32 = 0;
        xpc_release(v31);
        v31 = 0;
        *buf = v43;
        if (v43)
        {
          xpc_retain(v43);
        }

        else
        {
          *buf = xpc_null_create();
        }

        (*(*v20 + 16))(v20, "commCenterBundleUpdateCheck", buf);
        xpc_release(*buf);
        *buf = 0;
        if (SHIBYTE(v42) < 0)
        {
          operator delete(__p[0]);
        }

        xpc_release(v43);
        goto LABEL_55;
      }

      v25 = xpc_null_create();
LABEL_32:
      v43 = v25;
      goto LABEL_33;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v13);
  v19 = 0;
  v21 = 1;
  if (v20)
  {
    goto LABEL_23;
  }

LABEL_55:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  sub_10001021C(&v29);
  sub_10001021C(&theDict);
  return v7;
}

void sub_101340E48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  xpc_release(*(v28 - 96));
  *(v28 - 96) = 0;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v28 - 104));
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v26);
  }

  sub_10001021C(&a9);
  sub_10001021C(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_101340F1C(void *a1, void *object, uint64_t a3)
{
  v5[0] = off_101F30618;
  v5[3] = v5;
  *a1 = a3;
  a1[1] = os_retain(object);
  sub_1000148FC((a1 + 2), v5);
  return sub_10001499C(v5);
}

void sub_101340FB8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001499C(va);
  _Unwind_Resume(a1);
}

os_signpost_id_t sub_101340FCC(void *a1)
{
  v2 = *a1;
  v3 = os_signpost_id_generate(*(*a1 + 40));
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *(v2 + 40);
    if (os_signpost_enabled(v4))
    {
      v5 = a1[1];
      if (*(v5 + 23) < 0)
      {
        v5 = *v5;
      }

      v7 = 136315138;
      v8 = v5;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_BEGIN, v3, "Receive data from desktop host", "path=%{signpost.description:attribute}s", &v7, 0xCu);
    }
  }

  return v3;
}

uint64_t sub_1013410A8(uint64_t result, CFTypeRef *a2, uint64_t a3)
{
  if (*a2)
  {
    v4 = *(a3 + 23);
    if ((v4 & 0x80u) != 0)
    {
      v4 = *(a3 + 8);
    }

    if (v4)
    {
      v6 = result;
      result = CFArrayGetCount(*(result + 144));
      if (result >= 1)
      {
        v7 = result;
        for (i = 0; i != v7; ++i)
        {
          theDict = 0;
          __p[0] = CFArrayGetValueAtIndex(*(v6 + 144), i);
          sub_100010180(&theDict, __p);
          v9 = CFDictionaryGetValue(theDict, @"BundleURL");
          v10 = v9;
          if (v9)
          {
            v11 = CFGetTypeID(v9);
            if (v11 == CFStringGetTypeID())
            {
              v12 = v10;
            }

            else
            {
              v12 = 0;
            }
          }

          else
          {
            v12 = 0;
          }

          if (CFEqual(v12, *a2))
          {
            cf = 0;
            MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
            cf = MutableCopy;
            if (*(a3 + 23) < 0)
            {
              sub_100005F2C(v15, *a3, *(a3 + 8));
            }

            else
            {
              *v15 = *a3;
              v16 = *(a3 + 16);
            }

            if (SHIBYTE(v16) < 0)
            {
              sub_100005F2C(__dst, v15[0], v15[1]);
            }

            else
            {
              *__dst = *v15;
              v22 = v16;
            }

            v20 = 0;
            if (SHIBYTE(v22) < 0)
            {
              sub_100005F2C(__p, __dst[0], __dst[1]);
            }

            else
            {
              *__p = *__dst;
              v24 = v22;
            }

            v25 = 0;
            if (ctu::cf::convert_copy())
            {
              v14 = v20;
              v20 = v25;
              v26 = v14;
              sub_100005978(&v26);
            }

            if (SHIBYTE(v24) < 0)
            {
              operator delete(__p[0]);
            }

            value = v20;
            v20 = 0;
            sub_100005978(&v20);
            if (SHIBYTE(v22) < 0)
            {
              operator delete(__dst[0]);
            }

            CFDictionarySetValue(MutableCopy, @"LocalFilePath", value);
            sub_100005978(&value);
            if (SHIBYTE(v16) < 0)
            {
              operator delete(v15[0]);
            }

            sub_10039D64C(*(v6 + 152), cf);
            sub_1000296E0(&cf);
          }

          result = sub_10001021C(&theDict);
        }
      }
    }
  }

  return result;
}

void sub_101341304(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, const void *a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  sub_100005978(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a18);
  sub_10001021C(&a19);
  _Unwind_Resume(a1);
}

void *sub_101341390(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  sub_1000148FC((a1 + 2), (a2 + 2));
  *a2 = 0;
  a2[1] = 0;
  sub_100014A28((a2 + 2));
  return a1;
}

void sub_1013413D8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134142C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134146C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101341498(ServiceManager::Service *this)
{
  *this = off_101F30418;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1013414F4(ServiceManager::Service *this)
{
  *this = off_101F30418;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_101341574@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1013415B8(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10133D4B0(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10133D4B0(v4, 0);
}

void sub_101341658(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_101341744(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  Registry::createRestModuleOneTimeUseConnection(&v7, *(*v1 + 48));
  ctu::RestModule::connect();
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_100118B78(v2 + 160);
  v9[0] = off_101F30498;
  v9[1] = v2 + 96;
  v9[3] = v9;
  sub_100300158(v9, (v2 + 168));
  sub_1002FED80(v9);
  v3 = *(v2 + 192);
  if (v3)
  {
    (*(*v3 + 48))(v3, v2 + 200);
  }

  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10134184C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13)
{
  if (a13)
  {
    sub_100004A34(a13);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1013418EC(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F30498;
  a2[1] = v2;
  return result;
}

void sub_101341918(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/desktop_update_status");
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

void sub_1013419C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

uint64_t sub_101341A10(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101341A5C(void **a1)
{
  v1 = **a1;
  v2 = v1[10];
  if (v2)
  {
    v3 = v1[3];
    object = v3;
    if (v3)
    {
      dispatch_retain(v3);
    }

    *buf = off_101F30518;
    v7 = v1;
    v8 = buf;
    (*(*v2 + 16))(v2, &object, buf);
    sub_10002B644(buf);
    if (object)
    {
      dispatch_release(object);
    }
  }

  else
  {
    v4 = v1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Invalid lockdown helper.", buf, 2u);
    }
  }

  operator delete();
}

void sub_101341BA8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, char a11)
{
  sub_10002B644(&a11);
  if (object)
  {
    dispatch_release(object);
  }

  operator delete();
}

uint64_t sub_101341C4C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F30518;
  a2[1] = v2;
  return result;
}

const void **sub_101341C78(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received connection from lockdown.", buf, 2u);
  }

  cf = 0;
  (*(**(v1 + 80) + 24))(&cf);
  v3 = cf;
  v4 = *(v1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 138412290;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %@", buf, 0xCu);
      v3 = cf;
    }

    theString1 = 0;
    *buf = CFDictionaryGetValue(v3, @"messageName");
    sub_100060DE8(&theString1, buf);
    if (CFStringCompare(theString1, @"GetURLList", 1uLL))
    {
      v6 = *(v1 + 40);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = theString1;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Received Unknown command: %@. Disconnect", buf, 0xCu);
      }

      sub_10133F4C8(v1);
    }

    else
    {
      *buf = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_10133D5B0(v1, buf);
      sub_10001021C(buf);
    }

    sub_100005978(&theString1);
  }

  else
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I No message dict. Disconnect", buf, 2u);
    }

    sub_10133F4C8(v1);
  }

  return sub_10001021C(&cf);
}

void sub_101341E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101341EE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

const void **sub_101341F30(__CFDictionary *a1, const void *a2)
{
  key = @"status";
  CFRetain(@"status");
  v5 = a2;
  if (a2)
  {
    CFRetain(a2);
    if (key)
    {
      CFDictionarySetValue(a1, key, a2);
    }
  }

  sub_100DA3324(&v5);
  return sub_100DA3324(&key);
}

void sub_101341FA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100DA3324(&a9);
  sub_100DA3324(&a10);
  _Unwind_Resume(a1);
}

void *sub_101341FC4(void *a1)
{
  *a1 = off_101F30598;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101342010(void *a1)
{
  *a1 = off_101F30598;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1013420F0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F30598;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101342130(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101342140(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101342180(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = *(v4 + 16);
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

uint64_t sub_1013422A0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013422EC(uint64_t **a1)
{
  v7 = a1;
  v1 = *a1;
  v2 = **a1;
  v9 = 0;
  (*(**(v2 + 80) + 24))(&v9);
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Received message from lockdown: %@", buf, 0xCu);
    v3 = *(v2 + 40);
  }

  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bundle updates complete. End.", buf, 2u);
  }

  *v8 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v8 = Mutable;
    *buf = 0;
    sub_1000296E0(buf);
  }

  sub_10133F96C(buf, 1u);
  sub_100209DF4(*v8, @"status", *buf);
  sub_100029A48(buf);
  v5 = *(v2 + 80);
  sub_100010180(buf, v8);
  (*(*v5 + 32))(v5, buf);
  sub_10001021C(buf);
  sub_10133F4C8(v2);
  if (*(v1 + 8))
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  sub_1013406B8(v2, v6);
  sub_1000296E0(v8);
  sub_10001021C(&v9);
  operator delete();
}

void sub_101342508(uint64_t a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v2 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v4 = va_arg(va2, const void *);
  sub_10001021C(va2);
  sub_1000296E0(va);
  sub_10001021C(va1);
  operator delete();
}

void sub_1013425F8(uint64_t a1, os_log_t *a2, os_signpost_id_t *a3)
{
  v3 = *a3;
  if (*a3 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v4 = *a2;
    if (os_signpost_enabled(*a2))
    {
      *v5 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v4, OS_SIGNPOST_INTERVAL_END, v3, "Receive data from desktop host", "", v5, 2u);
    }
  }
}

uint64_t sub_101342670(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1013426BC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10134279C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013427D0(uint64_t a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "pp.push.observer");
  sub_10134288C((a1 + 8), a2, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  *a1 = &off_101F30698;
  v6 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  return a1;
}

void *sub_10134288C(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_1013428F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

push::PushMessageListenerInterface *sub_101342918(push::PushMessageListenerInterface *this)
{
  *this = &off_101F30698;
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  push::PushMessageListenerInterface::~PushMessageListenerInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
  return this;
}

void sub_101342980(push::PushMessageListenerInterface *a1)
{
  sub_101342918(a1);

  operator delete();
}

void sub_1013429B8(uint64_t a1)
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

void sub_101342AA8(uint64_t a1, const void **a2)
{
  sub_10005C7A4(&v4 + 1, a2);
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

void sub_101342BB0(uint64_t a1, const void **a2, const void **a3)
{
  sub_10002D728(&v6 + 1, a2);
  sub_10005C7A4(&v7, a3);
  v5 = *(a1 + 16);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_101342CD8(uint64_t a1)
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

void sub_101342E84(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101342F58);
  __cxa_rethrow();
}

void sub_101342EC4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101342F18(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101342F58(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101342F84(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  pthread_mutex_lock(&stru_101FB18D0);
  v3 = off_101FB1910;
  if (!off_101FB1910)
  {
    sub_100BE5C08(buf);
  }

  v4 = *(&off_101FB1910 + 1);
  if (*(&off_101FB1910 + 1))
  {
    atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  pthread_mutex_unlock(&stru_101FB18D0);
  cf = @"com.apple.OutOfBandCellularActivation";
  CFRetain(@"com.apple.OutOfBandCellularActivation");
  v5 = *(v2 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "production";
    if (*(v2 + 64))
    {
      v6 = "development";
    }

    *buf = 138412546;
    *&buf[4] = cf;
    *&buf[12] = 2080;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I register for topic %@ with %s environment", buf, 0x16u);
  }

  sub_100BE64DC(v3, *(v2 + 64));
  if ((v1[1] & 1) == 0)
  {
    v16 = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    v7 = *(v2 + 16);
    if (!v7 || (v8 = *(v2 + 8), (v9 = std::__shared_weak_count::lock(v7)) == 0))
    {
      sub_100013CC4();
    }

    *buf = v8;
    *&buf[8] = v9;
    sub_100BE6ED8(v3, &v16, buf);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    sub_100005978(&v16);
  }

  v15 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v10 = *(v2 + 16);
  if (v10)
  {
    v11 = *(v2 + 8);
    v12 = std::__shared_weak_count::lock(v10);
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      sub_100BE6604(v3, &v15, &v13);
      if (v14)
      {
        sub_100004A34(v14);
      }

      sub_100005978(&v15);
      sub_100005978(&cf);
      if (v4)
      {
        sub_100004A34(v4);
      }

      operator delete();
    }
  }

  sub_100013CC4();
}

void sub_1013431D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_101343298(void **a1)
{
  v1 = *a1;
  v10 = a1;
  v11 = v1;
  v3 = *v1;
  v2 = v1[1];
  if (v2)
  {
    if (CFEqual(v2, @"com.apple.OutOfBandCellularActivation"))
    {
      v4 = v3[7];
      if (v4)
      {
        v5 = std::__shared_weak_count::lock(v4);
        if (v5)
        {
          v6 = v5;
          v7 = v3[6];
          if (v7)
          {
            (*(*v7 + 24))(v7);
          }

          sub_100004A34(v6);
        }
      }
    }
  }

  else
  {
    v8 = v3[5];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No topic in the push message", buf, 2u);
    }
  }

  sub_100530510(&v11);
  return sub_1000049E0(&v10);
}

void sub_101343378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100004A34(v10);
  sub_100530510(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1013433A4(uint64_t *a1)
{
  v1 = *a1;
  v17 = a1;
  v18 = v1;
  v2 = *v1;
  if (*(v1 + 16) && *(v1 + 8))
  {
    memset(buf, 0, sizeof(buf));
    v26 = 0;
    ctu::cf::assign();
    *v21 = 0u;
    v22 = 0;
    v3 = v2[5];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v21;
      if (v22 < 0)
      {
        v4 = v21[0];
      }

      *buf = 136315138;
      *&buf[4] = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I push token for topic: %s", buf, 0xCu);
    }

    if (CFEqual(*(v1 + 16), @"com.apple.OutOfBandCellularActivation"))
    {
      v5 = v2[7];
      if (v5)
      {
        v6 = std::__shared_weak_count::lock(v5);
        if (v6)
        {
          v7 = v6;
          v8 = v2[6];
          if (v8)
          {
            v26 = 0;
            memset(buf, 0, sizeof(buf));
            BytePtr = CFDataGetBytePtr(*(v1 + 8));
            Length = CFDataGetLength(*(v1 + 8));
            sub_10018A52C(buf, BytePtr, &BytePtr[Length], Length);
            __p[0] = 0;
            __p[1] = 0;
            v20 = 0;
            ctu::hex();
            v11 = v2[5];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
            {
              v12 = __p;
              if (v20 < 0)
              {
                v12 = __p[0];
              }

              *__dst = 136315138;
              *&__dst[4] = v12;
              _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I activation push token received: %s", __dst, 0xCu);
            }

            if (SHIBYTE(v20) < 0)
            {
              sub_100005F2C(__dst, __p[0], __p[1]);
            }

            else
            {
              *__dst = *__p;
              v24 = v20;
            }

            (*(*v8 + 16))(v8, __dst);
            if (SHIBYTE(v24) < 0)
            {
              operator delete(*__dst);
            }

            if (SHIBYTE(v20) < 0)
            {
              operator delete(__p[0]);
            }

            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }
          }

          sub_100004A34(v7);
        }
      }
    }

    else
    {
      v14 = v2[5];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = v21;
        if (v22 < 0)
        {
          v15 = v21[0];
        }

        *buf = 136315138;
        *&buf[4] = v15;
        _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Topic mismatch for activation push token [%s]", buf, 0xCu);
      }
    }

    if (SHIBYTE(v22) < 0)
    {
      operator delete(v21[0]);
    }
  }

  else
  {
    v13 = v2[5];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "No token in activation push token handler", buf, 2u);
    }
  }

  sub_101343754(&v18);
  return sub_1000049E0(&v17);
}

void sub_1013436C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  v33 = *(v31 - 80);
  if (v33)
  {
    *(v31 - 72) = v33;
    operator delete(v33);
  }

  sub_100004A34(v30);
  if (a23 < 0)
  {
    operator delete(a18);
  }

  sub_101343754(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_101343754(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100005978((v1 + 16));
    sub_10002D760((v1 + 8));
    operator delete();
  }

  return result;
}

void sub_1013437AC(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I public token updated", buf, 2u);
  }

  sub_1013429B8(v1);
}

uint64_t sub_10134384C()
{
  if ((byte_101FB1920 & 1) == 0)
  {
    byte_101FB1920 = 1;
    return __cxa_atexit(sub_1001897A0, &stru_101FB18D0, &_mh_execute_header);
  }

  return result;
}

void sub_101343888(uint64_t a1, int a2, void *a3)
{
  v5 = a2;
  v6 = &v5;
  v4 = sub_10031D3B0(a1, &v5);
  sub_10004645C((v4 + 5), a3);
}

void sub_1013438E0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = (a2 + 1);
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v8 = 0u;
      v9 = 0u;
      sub_100E0AA08(&v8 + 1, (v4 + 5));
      sub_101343E9C(a2, &v8 + 1);
      sub_10006DCAC(&v8 + 8, v9);
      v5 = v4[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v4[2];
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != v3);
  }
}

uint64_t sub_1013439C8(uint64_t a1, int a2, unint64_t a3, unsigned int a4)
{
  v22 = a2;
  v21 = a3;
  v7 = *(a1 + 32);
  v5 = a1 + 32;
  v6 = v7;
  if (v7)
  {
    v8 = v5;
    do
    {
      if (*(v6 + 32) >= a2)
      {
        v8 = v6;
      }

      v6 = *(v6 + 8 * (*(v6 + 32) < a2));
    }

    while (v6);
    if (v8 != v5 && *(v8 + 32) <= a2)
    {
      v11 = *(v8 + 48);
      v9 = v8 + 48;
      v10 = v11;
      if (v11)
      {
        v12 = v9;
        do
        {
          v13 = *(v10 + 32);
          v14 = v13 >= a3;
          v15 = v13 < a3;
          if (v14)
          {
            v12 = v10;
          }

          v10 = *(v10 + 8 * v15);
        }

        while (v10);
        if (v12 != v9 && *(v12 + 32) <= a3 && *(v12 + 40) == a4)
        {
          return 0;
        }
      }
    }
  }

  v17 = v5 - 8;
  v23 = &v22;
  v18 = sub_10031D3B0(v5 - 8, &v22);
  v19 = v18 + 6;
  sub_10006DCAC((v18 + 5), v18[6]);
  *v19 = 0;
  v19[1] = 0;
  *(v19 - 1) = v19;
  v23 = &v22;
  v20 = sub_10031D3B0(v17, &v22);
  v23 = &v21;
  *(sub_100701064((v20 + 5), &v21) + 10) = a4;
  sub_101343B20(v21, a4);
  return 1;
}

void sub_101343B20(int64_t a1, unsigned int a2)
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

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
    goto LABEL_9;
  }

  v6 = xpc_null_create();
LABEL_8:
  v16 = v6;
LABEL_9:
  xpc_release(v5);
  v14 = xpc_int64_create(a1);
  if (!v14)
  {
    v14 = xpc_null_create();
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v11 = 0;
  v12 = &v16;
  v13 = __p;
  sub_10000F688(&v12, &v14, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v14);
  v14 = 0;
  v8 = xpc_int64_create(a2);
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *__p = v17;
  v11 = v18;
  v7 = __p;
  if (v18 < 0)
  {
    v7 = __p[0];
  }

  v12 = &v16;
  v13 = v7;
  sub_10000F688(&v12, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v8);
  v8 = 0;
  *&v17 = v16;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *&v17 = xpc_null_create();
  }

  __p[0] = xpc_null_create();
  sub_10002A37C(144, &v17, __p);
  xpc_release(__p[0]);
  xpc_release(v17);
  xpc_release(v16);
}

void sub_101343D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, xpc_object_t a17)
{
  xpc_release(object);
  xpc_release(*(v17 - 56));
  xpc_release(*(v17 - 64));
  _Unwind_Resume(a1);
}

void sub_101343E08(uint64_t a1, int a2)
{
  v4 = *(a1 + 32);
  v2 = a1 + 32;
  v3 = v4;
  if (v4)
  {
    v5 = v2;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != v2 && *(v5 + 32) <= a2 && *(v5 + 56))
    {
      v7 = *(v5 + 48);
      v6 = (v5 + 48);
      sub_10006DCAC((v6 - 1), v7);
      *v6 = 0;
      v6[1] = 0;
      *(v6 - 1) = v6;

      sub_101343B20(0, 0);
    }
  }
}

uint64_t *sub_101343E9C(uint64_t *result, uint64_t **a2)
{
  v3 = a2 + 1;
  v2 = *a2;
  if (*a2 != (a2 + 1))
  {
    v5 = result;
    v6 = (result + 1);
    do
    {
      v7 = *v6;
      if (*v6)
      {
        v8 = v2[4];
        v9 = v6;
        while (1)
        {
          while (1)
          {
            v10 = v7;
            v11 = v7[4];
            if (v8 >= v11)
            {
              break;
            }

            v7 = *v10;
            v9 = v10;
            if (!*v10)
            {
              v12 = 1;
              v9 = v10;
              goto LABEL_13;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v9 = v10 + 1;
          v7 = v10[1];
          if (!v7)
          {
            v12 = 1;
            goto LABEL_13;
          }
        }

        v12 = 0;
      }

      else
      {
        v12 = 1;
        v10 = v6;
        v9 = v6;
      }

LABEL_13:
      v13 = v2[1];
      v14 = v2;
      if (v13)
      {
        do
        {
          v15 = v13;
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        do
        {
          v15 = v14[2];
          v16 = *v15 == v14;
          v14 = v15;
        }

        while (!v16);
      }

      if (v12)
      {
        sub_1000194D8(a2, v2);
        result = sub_1000070DC(v5, v10, v9, v2);
      }

      v2 = v15;
    }

    while (v15 != v3);
  }

  return result;
}

void sub_101343FB8(uint64_t a1, int a2)
{
  v2 = *(a1 + 88);
  if (v2 != a2 && v2 != 0)
  {
    v5 = [(objc_class *)off_101FB9768() sharedInstance];
    *(a1 + 64) = [v5 isDeviceEnrolledWithDeKOTA:0];
  }
}

Class sub_10134404C()
{
  if (qword_101FCA928 != -1)
  {
    dispatch_once(&qword_101FCA928, &stru_101F307D8);
  }

  result = objc_getClass("MSDKDemoState");
  qword_101FCA920 = result;
  off_101FB9768 = sub_1013440B0;
  return result;
}

void sub_1013440E8(void *a1, void *a2)
{
  v5 = @"Stewie";
  memset(__p, 0, sizeof(__p));
  sub_10005B328(__p, &v5, &v6, 1uLL);
  sub_101644F28(a1, a2, "stw.em.env");
}

void sub_1013443AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1013443A4);
}

void sub_1013443F8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting up environment", v5, 2u);
  }

  sub_10164531C(a1, (a2 + 8), *a2);
  if ((*(a1 + 272) & 1) == 0 && sub_1013444AC(a1 + 296, 0) != 2)
  {
    *(a1 + 314) = 0;
    sub_10079CC68(*(a1 + 304));
  }
}

uint64_t sub_1013444AC(uint64_t a1, char a2)
{
  if (*(a1 + 18) != 1 || (a2 & 1) != 0)
  {
    *(a1 + 18) = 1;
    v7 = 0;
    sub_10007B7D8(*(a1 + 8));
    sub_10010B240(&v7, &v6);
    sub_10000A1EC(&v6);
    if (v7)
    {
      LODWORD(v6) = 0;
      ctu::cf::assign(&v6, v7, v4);
      v3 = v6;
    }

    else
    {
      v3 = *(a1 + 16);
    }

    *(a1 + 17) = v3;
    sub_100029A48(&v7);
  }

  else
  {
    return *(a1 + 17);
  }

  return v3;
}

void sub_101344548(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

void sub_101344578(uint64_t a1)
{
  v1 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Teardown requested", v2, 2u);
  }
}

void sub_1013445E4(uint64_t a1, __int16 a2)
{
  *(a1 + 320) = a2 | 0x100;
  if ((sub_10134463C(a1) & 1) == 0)
  {
    v3 = *(a1 + 336);
    *(a1 + 328) = 0;
    *(a1 + 336) = 0;
    if (v3)
    {

      sub_100004A34(v3);
    }
  }
}

uint64_t sub_10134463C(uint64_t a1)
{
  if (*(a1 + 321) == 1)
  {
    v2 = sub_1013444AC(a1 + 296, 0);
    if (v2 == 2)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }

    v4 = *(a1 + 321) ^ 1 | (v3 != *(a1 + 320));
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_1013446A4(uint64_t a1, unsigned int a2)
{
  *(a1 + 18) = 1;
  *(a1 + 17) = a2;
  v2 = *(a1 + 8);
  v8 = 0;
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v3)
  {
    v8 = v3;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = 0;
  sub_100029A48(&v8);
  v5 = sub_10079CC40(v2);
  sub_100029A48(&v7);
  return v5;
}

void sub_101344740(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101344774(uint64_t a1)
{
  if (sub_101344894(a1) >= 0x100u)
  {
    operator new();
  }

  return 0;
}

uint64_t sub_101344894(uint64_t a1)
{
  v2 = sub_100E415B0(a1);
  if (v2)
  {
    v2 = sub_1013448D8(a1 + 352, 0);
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  return v2 | (v3 << 8);
}

uint64_t sub_1013448D8(uint64_t a1, char a2)
{
  if (*(a1 + 18) != 1 || (a2 & 1) != 0)
  {
    *(a1 + 18) = 1;
    v7 = 0;
    sub_10007B7D8(*(a1 + 8));
    sub_10010B240(&v7, &v6);
    sub_10000A1EC(&v6);
    if (v7)
    {
      LODWORD(v6) = 0;
      ctu::cf::assign(&v6, v7, v4);
      v3 = v6;
    }

    else
    {
      v3 = *(a1 + 16);
    }

    *(a1 + 17) = v3;
    sub_100029A48(&v7);
  }

  else
  {
    return *(a1 + 17);
  }

  return v3;
}

void sub_101344974(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

void sub_101344998(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 280);
  if (v4)
  {
    v5 = *(a1 + 288);
    *a2 = v4;
    a2[1] = v5;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v6 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Trying to get EED key", buf, 2u);
    }

    v7 = atomic_load(byte_101FCA930);
    if ((v7 & 1) == 0)
    {
      atomic_store(1u, byte_101FCA930);
      v9 = *(a1 + 24);
      v11 = *(a1 + 16);
      v12 = v9;
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = sub_100032AC8((a1 + 8));
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I EED key fetch is now in progress", buf, 2u);
      }

      operator new();
    }

    v8 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Previous EED key fetch is still in progress and seems to be stuck. Skip fetching EED key.", buf, 2u);
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_10134515C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::exception_ptr a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, std::mutex *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

void sub_1013452FC(uint64_t a1)
{
  sub_101646E5C(a1);
  v2 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 273) == 1 && *(a1 + 88))
    {
      v3 = "false";
      if (*(a1 + 152) && *(a1 + 168))
      {
        v3 = "true";
      }
    }

    else
    {
      v3 = "false";
    }

    v21 = 136315138;
    v22 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I [d] Ready: %s", &v21, 0xCu);
  }

  v4 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = sub_1013444AC(a1 + 296, 0);
    if (v5 == 2)
    {
      v6 = 0;
    }

    else
    {
      v6 = v5;
    }

    if (v6 > 2)
    {
      v7 = "???";
    }

    else
    {
      v7 = off_101F30B08[v6];
    }

    v21 = 136315138;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [d] Notify options: %s", &v21, 0xCu);
  }

  v8 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = sub_10134463C(a1);
    v10 = "false";
    if (v9)
    {
      v10 = "true";
    }

    v21 = 136315138;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I [d] Need to sync notify option: %s", &v21, 0xCu);
  }

  if (*(a1 + 328))
  {
    v11 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      isExpired = AutoStartTimer::isExpired(*(a1 + 328));
      v13 = "false";
      if (isExpired)
      {
        v13 = "true";
      }

      v21 = 136315138;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I [d] Notify option timer exists. isExpired: %s", &v21, 0xCu);
    }
  }

  v14 = sub_101344894(a1);
  v15 = v14;
  if (v14 >= 0x100u)
  {
    v16 = sub_100032AC8((a1 + 8));
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = sub_100976958(v15);
      v21 = 136315138;
      v22 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I [d] Mock Mode Type: %s", &v21, 0xCu);
    }
  }

  v18 = sub_100032AC8((a1 + 8));
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 344);
    if (v19 > 3)
    {
      v20 = "???";
    }

    else
    {
      v20 = off_101F30B20[v19];
    }

    v21 = 136315138;
    v22 = v20;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I [d] (Em Env) User incapacitated: %s", &v21, 0xCu);
  }
}

void *sub_10134567C(void *a1)
{
  *a1 = off_101F30808;
  sub_101018D74(a1 + 45);
  v2 = a1[42];
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_101018D74(a1 + 38);
  v3 = a1[36];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return sub_101647298(a1);
}

void sub_101345724(void *a1)
{
  sub_10134567C(a1);

  operator delete();
}

void sub_10134577C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F30960;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1013457D0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    if ((*(v1 + 136) & 1) == 0)
    {
      v5.__vftable = 0;
      v3 = *(v1 + 16);
      std::exception_ptr::~exception_ptr(&v5);
      v1 = *(a1 + 24);
      if (!v3 && *(v1 + 8) >= 1)
      {
        v7.__cat_ = std::future_category();
        *&v7.__val_ = 4;
        std::future_error::future_error(&v5, v7);
        sub_100AE85C8(&v5);
        v4.__ptr_ = &v6;
        std::__assoc_sub_state::set_exception(v1, v4);
        std::exception_ptr::~exception_ptr(&v6);
        std::future_error::~future_error(&v5);
        v1 = *(a1 + 24);
      }
    }

    if (!atomic_fetch_add((v1 + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (*(*v1 + 16))(v1);
    }
  }
}

void sub_1013458B4(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

void sub_101345920(uint64_t a1)
{
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  operator delete();
}

uint64_t sub_1013459A0(uint64_t a1)
{
  if (*(a1 + 136))
  {
  }

  v2 = *(*a1 + 8);

  return v2(a1);
}

uint64_t *sub_101345A04(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    ctu::OsLogLogger::~OsLogLogger((v1 + 16));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_101345A60(uint64_t a1)
{
  v10[0] = a1;
  v10[1] = 0;
  v2 = CLGetEEDCloakingKey();
  v3 = 0;
  v4 = v3;
  v5 = **a1;
  if (!v2 || v3)
  {
    if (!v5)
    {
      sub_100AE88D8(3u);
    }

    std::mutex::lock((v5 + 24));
    if ((*(v5 + 136) & 1) != 0 || (v11.__ptr_ = 0, v7 = *(v5 + 16), std::exception_ptr::~exception_ptr(&v11), v7))
    {
      sub_100AE88D8(2u);
    }

    *(v5 + 144) = 0;
  }

  else
  {
    if (!v5)
    {
      sub_100AE88D8(3u);
    }

    std::mutex::lock((v5 + 24));
    if ((*(v5 + 136) & 1) != 0 || (v11.__ptr_ = 0, v6 = *(v5 + 16), std::exception_ptr::~exception_ptr(&v11), v6))
    {
      sub_100AE88D8(2u);
    }

    *(v5 + 144) = v2;
  }

  *(v5 + 136) |= 5u;
  std::condition_variable::notify_all((v5 + 88));
  std::mutex::unlock((v5 + 24));
  atomic_store(0, byte_101FCA930);
  v8 = sub_100032AC8((a1 + 16));
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v11.__ptr_) = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I EED key fetch is now complete", &v11, 2u);
  }

  return sub_101345A04(v10);
}

void sub_101345C24(uint64_t a1)
{
  sub_101018D74((a1 + 8));

  operator delete();
}

uint64_t sub_101345C70(uint64_t a1, unsigned int a2)
{
  *(a1 + 18) = 1;
  *(a1 + 17) = a2;
  v2 = *(a1 + 8);
  v8 = 0;
  valuePtr = a2;
  v3 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, &valuePtr);
  if (v3)
  {
    v8 = v3;
    valuePtr = 0;
    sub_100029A48(&valuePtr);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  v7 = v4;
  v8 = 0;
  sub_100029A48(&v8);
  v5 = sub_10079CC40(v2);
  sub_100029A48(&v7);
  return v5;
}

void sub_101345D0C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

void sub_101345D40(uint64_t a1)
{
  sub_101018D74((a1 + 8));

  operator delete();
}

void sub_101345DAC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F30AC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_101345E7C(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3EEC0;
  v4 = *a2;
  v5 = *a3;
  a1[4] = 0;
  a1[5] = 0;
  a1[3] = 0;
  sub_1000DCF88((a1 + 3), v4, v5, v5 - v4);
  return a1;
}

const void **sub_101345EEC@<X0>(const void **result@<X0>, void *a2@<X8>)
{
  v13 = result;
  v2 = *result;
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  if (v2)
  {
    v16 = begin();
    v4 = end();
    while (1)
    {
      result = v16;
      if (v16 == v4)
      {
        return result;
      }

      v5 = operator*();
      v15 = 0;
      sub_100010024(&theDict, v13);
      if (v5 > 7)
      {
        switch(v5)
        {
          case 8:
            v6 = "gsm";
            break;
          case 16:
            v6 = "scdma";
            break;
          case 32:
            v6 = "nr";
            break;
          default:
            goto LABEL_15;
        }
      }

      else
      {
        switch(v5)
        {
          case 1:
            v6 = "umts";
            break;
          case 2:
            v6 = "cdma";
            break;
          case 4:
            v6 = "lte";
            break;
          default:
LABEL_15:
            v6 = "unknown";
            break;
        }
      }

      v17[0] = CFStringCreateWithCString(kCFAllocatorDefault, v6, 0x8000100u);
      Value = CFDictionaryGetValue(theDict, v17[0]);
      v8 = Value;
      if (Value && (v9 = CFGetTypeID(Value), v9 == CFDictionaryGetTypeID()))
      {
        v15 = v8;
        CFRetain(v8);
      }

      else
      {
        v15 = 0;
      }

      sub_100005978(v17);
      sub_10001021C(&theDict);
      if (v15)
      {
        CFDictionaryGetValue(v15, @"Version");
        v17[0] = 0;
        v17[1] = 0;
        v18 = 0;
        ctu::cf::assign();
        v10 = *v3;
        if (!*v3)
        {
LABEL_29:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v11 = v10;
            v12 = *(v10 + 32);
            if (v12 <= v5)
            {
              break;
            }

            v10 = *v11;
            if (!*v11)
            {
              goto LABEL_29;
            }
          }

          if (v12 >= v5)
          {
            break;
          }

          v10 = v11[1];
          if (!v10)
          {
            goto LABEL_29;
          }
        }

        if (SHIBYTE(v18) < 0)
        {
          operator delete(v17[0]);
        }
      }

      sub_10001021C(&v15);
      operator++();
    }
  }

  return result;
}

uint64_t sub_101346228(capabilities::ct *a1)
{
  v1 = capabilities::ct::supportsLASDGSMDatabase(a1);
  if (v1)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  v3 = capabilities::ct::supportsLASDUMTSDatabase(v1);
  v4 = v2 | v3;
  v5 = capabilities::ct::supportsCapabilityC2KDevice(v3);
  if (v5)
  {
    v4 |= 2u;
  }

  v6 = capabilities::ct::supportsCapabilityTDSCDMADevice(v5);
  if (v6)
  {
    v7 = 20;
  }

  else
  {
    v7 = 4;
  }

  v8 = v4 | v7;
  if (capabilities::ct::supports5G(v6))
  {
    return v8 | 0x20;
  }

  else
  {
    return v8;
  }
}

const void **sub_101346294@<X0>(const void **result@<X0>, void *a2@<X8>)
{
  if (result[2])
  {
    v3 = result;
    v17 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v5 = v17;
      v17 = Mutable;
      v18 = v5;
      sub_1000296E0(&v18);
    }

    v8 = *v3;
    v6 = v3 + 1;
    v7 = v8;
    if (v8 != v6)
    {
      do
      {
        v9 = *(v7 + 8);
        if (v9 > 7)
        {
          switch(v9)
          {
            case 8:
              v10 = "gsm";
              break;
            case 16:
              v10 = "scdma";
              break;
            case 32:
              v10 = "nr";
              break;
            default:
              goto LABEL_16;
          }
        }

        else
        {
          switch(v9)
          {
            case 1:
              v10 = "umts";
              break;
            case 2:
              v10 = "cdma";
              break;
            case 4:
              v10 = "lte";
              break;
            default:
LABEL_16:
              v10 = "unknown";
              break;
          }
        }

        v11 = CFStringCreateWithCString(kCFAllocatorDefault, v10, 0x8000100u);
        v12 = (v7 + 5);
        v18 = v11;
        if (*(v7 + 63) < 0)
        {
          v12 = *v12;
        }

        v16 = CFStringCreateWithCString(kCFAllocatorDefault, v12, 0x8000100u);
        sub_1001768B8(v17, v18, v16);
        sub_100005978(&v16);
        sub_100005978(&v18);
        v13 = v7[1];
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
            v14 = v7[2];
            v15 = *v14 == v7;
            v7 = v14;
          }

          while (!v15);
        }

        v7 = v14;
      }

      while (v14 != v6);
    }

    sub_100010180(a2, &v17);
    return sub_1000296E0(&v17);
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_101346484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

CFDictionaryRef *sub_1013464BC@<X0>(CFDictionaryRef *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  a2[1] = 0;
  v3 = a2 + 1;
  a2[2] = 0;
  *a2 = a2 + 1;
  if (v2)
  {
    v4 = result;
    v13 = begin();
    v5 = end();
    while (1)
    {
      result = v13;
      if (v13 == v5)
      {
        return result;
      }

      v6 = operator*();
      v7 = v6;
      if (v6 > 7)
      {
        if (v6 == 8)
        {
          v8 = "gsm";
          goto LABEL_18;
        }

        if (v6 != 16)
        {
          if (v6 == 32)
          {
            v8 = "nr";
            goto LABEL_18;
          }

          goto LABEL_15;
        }

        v8 = "scdma";
      }

      else
      {
        if (v6 == 1)
        {
          v8 = "umts";
          goto LABEL_18;
        }

        if (v6 != 2)
        {
          if (v6 == 4)
          {
            v8 = "lte";
            goto LABEL_18;
          }

LABEL_15:
          v8 = "unknown";
          goto LABEL_18;
        }

        v8 = "cdma";
      }

LABEL_18:
      v12 = CFStringCreateWithCString(kCFAllocatorDefault, v8, 0x8000100u);
      if (CFDictionaryGetValue(*v4, v12))
      {
        __p = 0;
        v15 = 0uLL;
        ctu::cf::assign();
        v16[0] = v15;
        *(v16 + 7) = *(&v15 + 7);
        v9 = *v3;
        if (!*v3)
        {
LABEL_25:
          operator new();
        }

        while (1)
        {
          while (1)
          {
            v10 = v9;
            v11 = *(v9 + 32);
            if (v11 <= v7)
            {
              break;
            }

            v9 = *v10;
            if (!*v10)
            {
              goto LABEL_25;
            }
          }

          if (v11 >= v7)
          {
            break;
          }

          v9 = v10[1];
          if (!v9)
          {
            goto LABEL_25;
          }
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p);
        }
      }

      sub_100005978(&v12);
      operator++();
    }
  }

  return result;
}

void sub_1013468F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = NanoRegistryObserver;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_101346A7C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_101346B18;
  v7[3] = &unk_101F0F6C0;
  v7[4] = v4;
  v8 = v3;
  v5 = *(v4 + 8);
  v6 = v3;
  dispatch_async(v5, v7);
}

void sub_101346C28(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 didEnterCompatibilityState_sync:?];
}

void sub_101346DE8(_Unwind_Exception *a1)
{
  sub_100004A34(v3);

  _Unwind_Resume(a1);
}

void sub_101346ECC(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) userInfo];
  [v1 didDeviceUnpair_sync:?];
}

void sub_1013470A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v16);
  _Unwind_Resume(a1);
}

void sub_1013471E4(uint64_t a1)
{
  sub_100020850();
  v2 = qword_101FCA938;
  if (os_log_type_enabled(qword_101FCA938, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = [*(a1 + 40) valueForProperty:NRDevicePropertyName];
    *buf = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I propertyDidChange (%@) for %@", buf, 0x16u);
  }

  v5 = *(a1 + 48);
  v7 = *(a1 + 40);
  v6 = [NSArray arrayWithObjects:&v7 count:1];
  [v5 notifyDevicesUpdated:v6];
}

void sub_101347C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, xpc_object_t object, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, char a41)
{
  sub_100004A34(v42);
  *(v43 - 240) = &a38;
  sub_10032DC68((v43 - 240));

  _Unwind_Resume(a1);
}

void sub_101347D98(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) >= 0)
  {
    v3 = a2;
  }

  else
  {
    v3 = *a2;
  }

  v7 = xpc_string_create(v3);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v9 = 0uLL;
  v10 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v5 = 0;
  v6[0] = a1;
  v6[1] = __p;
  sub_10000F688(v6, &v7, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v7);
}

void sub_101347E70(_Unwind_Exception *a1)
{
  if (*(v2 - 17) < 0)
  {
    operator delete(*(v2 - 40));
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_101347E9C(Registry **a1, uint64_t a2, xpc_object_t *a3, uint64_t a4)
{
  v4 = *(a4 + 95);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a4 + 80);
  }

  if (!v4 || xpc_get_type(*a3) != &_xpc_type_dictionary)
  {
    return 0;
  }

  v27 = 0;
  v28 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v12 = ServiceMap;
  if (v13 < 0)
  {
    v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v15 = 5381;
    do
    {
      v13 = v15;
      v16 = *v14++;
      v15 = (33 * v15) ^ v16;
    }

    while (v16);
  }

  std::mutex::lock(ServiceMap);
  *&v29 = v13;
  v17 = sub_100009510(&v12[1].__m_.__sig, &v29);
  if (v17)
  {
    v19 = v17[3];
    v18 = v17[4];
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v19 = 0;
    v18 = 0;
  }

  std::mutex::unlock(v12);
  v27 = v19;
  v28 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v18);
  }

  if (v19 && (sub_10057BD14(a2, &v27, carrier_space::kCBAuthorizationRequestRequiresICCIDKey, 0) & 1) != 0)
  {
    if (*(a4 + 95) >= 0)
    {
      v20 = (a4 + 72);
    }

    else
    {
      v20 = *(a4 + 72);
    }

    v25 = xpc_string_create(v20);
    if (!v25)
    {
      v25 = xpc_null_create();
    }

    v29 = 0uLL;
    v30 = 0;
    ctu::cf::assign();
    *__p = v29;
    v23 = v30;
    v24[0] = a3;
    v21 = __p;
    if (v30 < 0)
    {
      v21 = v29;
    }

    v24[1] = v21;
    sub_10000F688(v24, &v25, &object);
    xpc_release(object);
    object = 0;
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(v25);
    v25 = 0;
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  if (v28)
  {
    sub_100004A34(v28);
  }

  return v9;
}

void sub_1013480AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v23);
  if (a17)
  {
    sub_100004A34(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1013480F0(Registry **a1@<X0>, uint64_t a2@<X1>, xpc_object_t *a3@<X8>)
{
  v5 = *a1;
  if (!v5)
  {
    *a3 = xpc_null_create();
    return;
  }

  v68 = 0;
  v69 = 0;
  ServiceMap = Registry::getServiceMap(v5);
  v8 = ServiceMap;
  if (v9 < 0)
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
  *&v70 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v70);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  std::mutex::unlock(v8);
  v68 = v15;
  v69 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
    v15 = v68;
  }

  if (v15)
  {
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v63[1] = 0;
    v64 = 0;
    v63[0] = 0;
    sub_101348A58(v63, &v65);
    if (SHIBYTE(v64) < 0)
    {
      operator delete(v63[0]);
    }

    v16 = HIBYTE(v67);
    if (v67 < 0)
    {
      v16 = v66;
    }

    if (!v16)
    {
      *a3 = xpc_null_create();
LABEL_96:
      if (SHIBYTE(v67) < 0)
      {
        operator delete(v65);
      }

      goto LABEL_98;
    }

    v60 = 0;
    v61 = 0;
    v62 = 0;
    v58[1] = 0;
    v59 = 0;
    v58[0] = 0;
    sub_101348A58(v58, &v60);
    if (SHIBYTE(v59) < 0)
    {
      operator delete(v58[0]);
    }

    v17 = HIBYTE(v62);
    if (v62 < 0)
    {
      v17 = v61;
    }

    if (!v17)
    {
      *a3 = xpc_null_create();
LABEL_94:
      if (SHIBYTE(v62) < 0)
      {
        operator delete(v60);
      }

      goto LABEL_96;
    }

    v55 = 0;
    v56 = 0;
    v57 = 0;
    __p[1] = 0;
    v54 = 0;
    __p[0] = 0;
    sub_101348A58(__p, &v55);
    if (SHIBYTE(v54) < 0)
    {
      operator delete(__p[0]);
    }

    v18 = HIBYTE(v57);
    if (v57 < 0)
    {
      v18 = v56;
    }

    if (!v18)
    {
      *a3 = xpc_null_create();
      goto LABEL_92;
    }

    *a3 = 0;
    v19 = xpc_dictionary_create(0, 0, 0);
    v20 = v19;
    if (v19)
    {
      *a3 = v19;
    }

    else
    {
      v20 = xpc_null_create();
      *a3 = v20;
      if (!v20)
      {
        v21 = xpc_null_create();
        v20 = 0;
        goto LABEL_39;
      }
    }

    if (xpc_get_type(v20) == &_xpc_type_dictionary)
    {
      xpc_retain(v20);
      goto LABEL_40;
    }

    v21 = xpc_null_create();
LABEL_39:
    *a3 = v21;
LABEL_40:
    xpc_release(v20);
    if (v67 >= 0)
    {
      v22 = &v65;
    }

    else
    {
      v22 = v65;
    }

    v51 = xpc_string_create(v22);
    if (!v51)
    {
      v51 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v23 = string;
    if (v71 < 0)
    {
      v23 = string[0];
    }

    v34[0] = a3;
    v34[1] = v23;
    sub_10000F688(v34, &v51, &object);
    xpc_release(object);
    object = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v51);
    v51 = 0;
    if (v62 >= 0)
    {
      v24 = &v60;
    }

    else
    {
      v24 = v60;
    }

    v47 = xpc_string_create(v24);
    if (!v47)
    {
      v47 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v25 = string;
    if (v71 < 0)
    {
      v25 = string[0];
    }

    v34[0] = a3;
    v34[1] = v25;
    sub_10000F688(v34, &v47, &v48);
    xpc_release(v48);
    v48 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v47);
    v47 = 0;
    if (v57 >= 0)
    {
      v26 = &v55;
    }

    else
    {
      v26 = v55;
    }

    v45 = xpc_string_create(v26);
    if (!v45)
    {
      v45 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v27 = string;
    if (v71 < 0)
    {
      v27 = string[0];
    }

    v34[0] = a3;
    v34[1] = v27;
    sub_10000F688(v34, &v45, &v46);
    xpc_release(v46);
    v46 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v45);
    v45 = 0;
    sub_101348B24(a1, a2, v36);
    ctu::cf_to_xpc(&v43, v36[0], v28);
    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v29 = string;
    if (v71 < 0)
    {
      v29 = string[0];
    }

    v34[0] = a3;
    v34[1] = v29;
    sub_10000F688(v34, &v43, &v44);
    xpc_release(v44);
    v44 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v43);
    v43 = 0;
    sub_100005978(v36);
    v30 = sub_10057BD14(a2, &v68, carrier_space::kCBSupportsStateParameterKey, 0);
    v41 = xpc_BOOL_create(v30);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *string = v70;
    v50 = v71;
    v31 = string;
    if (v71 < 0)
    {
      v31 = string[0];
    }

    v34[0] = a3;
    v34[1] = v31;
    sub_10000F688(v34, &v41, &v42);
    xpc_release(v42);
    v42 = 0;
    if (SHIBYTE(v50) < 0)
    {
      operator delete(string[0]);
    }

    xpc_release(v41);
    v41 = 0;
    string[0] = 0;
    string[1] = 0;
    v50 = 0;
    v39[1] = 0;
    v40 = 0;
    v39[0] = 0;
    sub_101348A58(v39, string);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39[0]);
    }

    if (SHIBYTE(v50) < 0)
    {
      if (!string[1])
      {
LABEL_91:
        operator delete(string[0]);
LABEL_92:
        if (SHIBYTE(v57) < 0)
        {
          operator delete(v55);
        }

        goto LABEL_94;
      }

      v32 = string[0];
    }

    else
    {
      if (!HIBYTE(v50))
      {
        goto LABEL_92;
      }

      v32 = string;
    }

    v37 = xpc_string_create(v32);
    if (!v37)
    {
      v37 = xpc_null_create();
    }

    v70 = 0uLL;
    v71 = 0;
    ctu::cf::assign();
    *v34 = v70;
    v35 = v71;
    v36[0] = a3;
    v33 = v34;
    if (v71 < 0)
    {
      v33 = v34[0];
    }

    v36[1] = v33;
    sub_10000F688(v36, &v37, &v38);
    xpc_release(v38);
    v38 = 0;
    if (SHIBYTE(v35) < 0)
    {
      operator delete(v34[0]);
    }

    xpc_release(v37);
    v37 = 0;
    if ((SHIBYTE(v50) & 0x80000000) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  *a3 = xpc_null_create();
LABEL_98:
  if (v69)
  {
    sub_100004A34(v69);
  }
}

void sub_10134883C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, xpc_object_t object, uint64_t a23, xpc_object_t a24, uint64_t a25, xpc_object_t a26, uint64_t a27, xpc_object_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, xpc_object_t a36, uint64_t a37, char a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  if (*(v51 - 65) < 0)
  {
    operator delete(*(v51 - 88));
  }

  xpc_release(v50);
  if (a35 < 0)
  {
    operator delete(a30);
  }

  sub_10134A104(v49);
  if (a49 < 0)
  {
    operator delete(a44);
  }

  if (*(v51 - 153) < 0)
  {
    operator delete(*(v51 - 176));
  }

  if (*(v51 - 105) < 0)
  {
    operator delete(*(v51 - 128));
  }

  v53 = *(v51 - 96);
  if (v53)
  {
    sub_100004A34(v53);
  }

  _Unwind_Resume(a1);
}

const void **sub_101348A58@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = 0;
  carrier_space::getCarrierSpaceValueForKey();
  *a2 = *a1;
  *(a2 + 16) = *(a1 + 16);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  return sub_10000A1EC(&v5);
}

const void **sub_101348B24@<X0>(Registry **a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  v17 = @"Carrier";
  CFRetain(@"Carrier");
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
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

      goto LABEL_11;
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
    sub_10005C7A4(a3, &v17);
    if (v15)
    {
      return sub_100005978(&v17);
    }

    goto LABEL_12;
  }

LABEL_11:
  (*(*v14 + 96))(&v18, v14, a2, 1, @"CarrierName", v17, 0);
  sub_100060DE8(a3, &v18);
  sub_10000A1EC(&v18);
  if ((v15 & 1) == 0)
  {
LABEL_12:
    sub_100004A34(v13);
  }

  return sub_100005978(&v17);
}

void sub_101348C98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10000A1EC(&a10);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

const void **sub_101348CD8@<X0>(Registry **a1@<X0>, uint64_t a2@<X1>, CFStringRef *a3@<X8>)
{
  v19 = 0;
  sub_101348B24(a1, a2, &v19);
  v18 = CFStringCreateWithFormat(0, 0, @"Touch ID to Change this %@ Plan", v19);
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
  cf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &cf);
  if (!v11)
  {
    std::mutex::unlock(v6);
    goto LABEL_9;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v6);
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
    if (!v13)
    {
      *a3 = v18;
      v18 = 0;
LABEL_15:
      sub_100004A34(v12);
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  std::mutex::unlock(v6);
  if (!v13)
  {
LABEL_9:
    *a3 = v18;
    v18 = 0;
    goto LABEL_16;
  }

LABEL_11:
  cf = 0;
  (*(*v13 + 40))(&cf, v13, kCBMessageLocalizationTable, @"TOUCH_ID_AUTH_TITLE", v18);
  if (cf)
  {
    v17 = cf;
    CFRetain(cf);
    v14 = sub_10082F9E8(@"%@", &v17);
    sub_100005978(&v17);
    *a3 = CFStringCreateWithFormat(0, 0, v14, v19, v14, v17);
    sub_100005978(&v16);
  }

  else
  {
    *a3 = v18;
    v18 = 0;
  }

  sub_100005978(&cf);
  if (v12)
  {
    goto LABEL_15;
  }

LABEL_16:
  sub_100005978(&v18);
  return sub_100005978(&v19);
}

void sub_101348EC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v7 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v9 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_100005978(va3);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_100005978(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

BOOL sub_101348F28(int a1)
{
  v1 = &byte_101958B8B;
  v2 = 4;
  while (*v1 != a1)
  {
    ++v1;
    if (!--v2)
    {
      v1 = "14WebPushFactory";
      return v1 != "14WebPushFactory";
    }
  }

  return v1 != "14WebPushFactory";
}

const void **sub_101348F70@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  propertyList = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = propertyList;
    propertyList = Mutable;
    v30 = v5;
    sub_1000296E0(&v30);
  }

  v6 = *a1;
  v7 = a1[1];
  if (*a1 != v7)
  {
    v22 = 0;
    v23 = 0;
    v21 = 0;
    sub_100034C50(&v21, v6, v7, v7 - v6);
    v28 = 0;
    v29 = 0;
    __p = 0;
    sub_100034C50(&__p, v21, v22, v22 - v21);
    v26 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_100034C50(&v30, __p, v28, v28 - __p);
    v33 = 0;
    if (ctu::cf::convert_copy())
    {
      v8 = v26;
      v26 = v33;
      v34 = v8;
      sub_10002D760(&v34);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    v24 = v26;
    v26 = 0;
    sub_10002D760(&v26);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    sub_100DA3358(propertyList, @"kAccessTokenKey", v24);
    sub_10002D760(&v24);
    if (v21)
    {
      v22 = v21;
      operator delete(v21);
    }
  }

  v9 = a1[3];
  v10 = a1[4];
  if (v9 != v10)
  {
    v19 = 0;
    v20 = 0;
    v18 = 0;
    sub_100034C50(&v18, v9, v10, v10 - v9);
    v28 = 0;
    v29 = 0;
    __p = 0;
    sub_100034C50(&__p, v18, v19, v19 - v18);
    v26 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    sub_100034C50(&v30, __p, v28, v28 - __p);
    v33 = 0;
    if (ctu::cf::convert_copy())
    {
      v11 = v26;
      v26 = v33;
      v34 = v11;
      sub_10002D760(&v34);
    }

    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    v12 = v26;
    v24 = v26;
    v26 = 0;
    sub_10002D760(&v26);
    if (__p)
    {
      v28 = __p;
      operator delete(__p);
    }

    sub_100DA3358(propertyList, @"kRefreshTokenKey", v12);
    sub_10002D760(&v24);
    if (v18)
    {
      v19 = v18;
      operator delete(v18);
    }
  }

  v13 = a1[6];
  if (v13)
  {
    sub_10040CE7C(propertyList, @"kExpiresAtKey", v13);
  }

  Data = CFPropertyListCreateData(0, propertyList, kCFPropertyListBinaryFormat_v1_0, 0, 0);
  v30 = Data;
  BytePtr = CFDataGetBytePtr(Data);
  Length = CFDataGetLength(Data);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1000DCF88(a2, BytePtr, &BytePtr[Length], Length);
  sub_10002D760(&v30);
  return sub_1000296E0(&propertyList);
}

void sub_101349224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, const void *a16, const void *a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22)
{
  sub_10002D760(&a16);
  if (__p)
  {
    operator delete(__p);
  }

  sub_1000296E0(&a17);
  _Unwind_Resume(a1);
}

const void **sub_101349318@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = 0;
  data = 0;
  v15 = 0;
  v16 = 0;
  sub_100034C50(&v15, *a1, a1[1], a1[1] - *a1);
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_100034C50(&__p, v15, v16, v16 - v15);
  v19 = 0;
  v23 = 0uLL;
  v24 = 0;
  sub_100034C50(&v23, __p, v21, v21 - __p);
  v25 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v19;
    v19 = v25;
    v26 = v3;
    sub_10002D760(&v26);
  }

  if (v23)
  {
    *(&v23 + 1) = v23;
    operator delete(v23);
  }

  data = v19;
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

  __p = 0;
  *&v23 = CFPropertyListCreateWithData(0, data, 0, 0, 0);
  sub_100138C38(&__p, &v23);
  v4 = __p;
  if (__p)
  {
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    if (CFDictionaryGetValue(v4, @"kAccessTokenKey"))
    {
      v23 = 0uLL;
      v24 = 0;
      ctu::cf::assign();
      v5 = v23;
      v6 = v24;
      v7 = *a2;
      if (*a2)
      {
        *(a2 + 8) = v7;
        v13 = v5;
        operator delete(v7);
        v5 = v13;
      }

      *a2 = v5;
      *(a2 + 16) = v6;
    }

    if (CFDictionaryGetValue(__p, @"kRefreshTokenKey"))
    {
      v23 = 0uLL;
      v24 = 0;
      ctu::cf::assign();
      v8 = v23;
      v9 = v24;
      v10 = *(a2 + 24);
      if (v10)
      {
        *(a2 + 32) = v10;
        v14 = v8;
        operator delete(v10);
        v8 = v14;
      }

      *(a2 + 24) = v8;
      *(a2 + 40) = v9;
    }

    Value = CFDictionaryGetValue(__p, @"kExpiresAtKey");
    if (Value)
    {
      *&v23 = Value;
      sub_100D1A30C((a2 + 48), &v23);
    }
  }

  else
  {
    *(a2 + 42) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  sub_10001021C(&__p);
  return sub_10002D760(&data);
}

void sub_10134951C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, const void *a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19)
{
  sub_100D176E4(v19);
  sub_10001021C(&__p);
  sub_10002D760(&a14);
  _Unwind_Resume(a1);
}

void sub_1013495C0(Registry **a1@<X0>, void *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
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
  v16 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v16);
  if (v9)
  {
    v11 = v9[3];
    v10 = v9[4];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v11 = 0;
    v10 = 0;
  }

  std::mutex::unlock(v4);
  v14 = v11;
  v15 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v10);
  }

  if (v11)
  {
    __p[0] = 0;
    __p[1] = 0;
    v13 = 0;
    sub_101348A58(__p, a2);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_1013496EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101349718(Registry **a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v19 = 0;
  ctu::ns::AutoPool::AutoPool(&v19);
  v6 = +[NSMutableArray array];
  [v6 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%@", @"grant_type", @"refresh_token"}];
  [v6 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%@", @"refresh_token", objc_msgSend([NSString alloc], "initWithBytes:length:encoding:", *(a2 + 24), *(a2 + 32) - *(a2 + 24), 4))}];
  v17 = 0;
  v18 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v8 = ServiceMap;
  if (v9 < 0)
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
  *&v20 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v20);
  if (v13)
  {
    v15 = v13[3];
    v14 = v13[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  std::mutex::unlock(v8);
  v17 = v15;
  v18 = v14;
  if (v14)
  {
    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v14);
  }

  *&v20 = 0;
  carrier_space::getCarrierSpaceValueForKey();
  sub_100060DE8(&v20, &v16);
  sub_10000A1EC(&v16);
  if (v20)
  {
    [v6 addObject:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@=%@", @"scope", v20)}];
  }

  sub_100005978(&v20);
  [objc_msgSend(objc_msgSend(v6 componentsJoinedByString:{@"&", "stringByAddingPercentEncodingWithAllowedCharacters:", +[NSCharacterSet URLQueryAllowedCharacterSet](NSCharacterSet, "URLQueryAllowedCharacterSet")), "dataUsingEncoding:", 4}];
  v20 = 0uLL;
  v21 = 0;
  ctu::cf::assign();
  *a3 = v20;
  *(a3 + 16) = v21;
  if (v18)
  {
    sub_100004A34(v18);
  }

  ctu::ns::AutoPool::~AutoPool(&v19);
}

void sub_101349968(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, std::__shared_weak_count *a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  ctu::ns::AutoPool::~AutoPool(&a14);
  _Unwind_Resume(a1);
}

void sub_1013499DC(uint64_t a1@<X8>)
{
  sub_10134A138(v2, off_101F30B68, &off_101F30B70);
  sub_1000DF684(a1, v2, 1);
  if (v5 < 0)
  {
    operator delete(__p);
  }

  if (v3 < 0)
  {
    operator delete(v2[0]);
  }
}

void sub_101349A7C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D6F38(va);
  _Unwind_Resume(a1);
}

const void **sub_101349A98@<X0>(const void **result@<X0>, Registry **a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a3;
  v7 = a3[1];
  if (v6 == v7)
  {
    *(a4 + 42) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return result;
  }

  v8 = result;
  v35 = 0;
  v36 = 0;
  v33 = 0;
  v34 = 0;
  sub_100034C50(&v33, v6, v7, v7 - v6);
  v39 = 0;
  v40 = 0;
  v38 = 0;
  sub_100034C50(&v38, v33, v34, v34 - v33);
  v37 = 0;
  __p[0] = 0;
  __p[1] = 0;
  v44 = 0;
  sub_100034C50(__p, v38, v39, v39 - v38);
  v41 = 0;
  if (ctu::cf::convert_copy())
  {
    v9 = v37;
    v37 = v41;
    v42 = v9;
    sub_10002D760(&v42);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  v36 = v37;
  v37 = 0;
  sub_10002D760(&v37);
  if (v38)
  {
    v39 = v38;
    operator delete(v38);
  }

  if (v33)
  {
    v34 = v33;
    operator delete(v33);
  }

  if (!v36)
  {
    v13 = *v8;
    if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Could not convert refresh token response to data blob", __p, 2u);
    }

    *(a4 + 42) = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    return sub_10002D760(&v36);
  }

  v38 = 0;
  ctu::ns::AutoPool::AutoPool(&v38);
  v42 = 0;
  v10 = [NSJSONSerialization JSONObjectWithData:v36 options:0 error:&v42];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_15;
  }

  v11 = [v10 objectForKeyedSubscript:@"error"];
  if (!v11)
  {
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    v14 = [v10 objectForKeyedSubscript:@"access_token"];
    if (v14)
    {
      [v14 dataUsingEncoding:4];
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      ctu::cf::assign();
      v15 = v44;
      *a4 = *__p;
      *(a4 + 16) = v15;
    }

    v16 = [v10 objectForKeyedSubscript:@"refresh_token"];
    if (v16)
    {
      [v16 dataUsingEncoding:4];
      __p[0] = 0;
      __p[1] = 0;
      v44 = 0;
      ctu::cf::assign();
      v17 = v44;
      *(a4 + 24) = *__p;
      *(a4 + 40) = v17;
    }

    v18 = [v10 objectForKeyedSubscript:@"expires_in"];
    if (!v18)
    {
      goto LABEL_16;
    }

    ServiceMap = Registry::getServiceMap(*a2);
    v20 = ServiceMap;
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

    std::mutex::lock(ServiceMap);
    __p[0] = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, __p);
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
        goto LABEL_35;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
LABEL_35:
    v29 = (*(*v27 + 96))(v27);
    v30 = CFDateCreate(0, v29 + [v18 integerValue]);
    v31 = *(a4 + 48);
    *(a4 + 48) = v30;
    __p[0] = v31;
    sub_1003EC530(__p);
    if ((v28 & 1) == 0)
    {
      sub_100004A34(v26);
    }

    goto LABEL_16;
  }

  v12 = *v8;
  if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
  {
    v32 = [v11 UTF8String];
    LODWORD(__p[0]) = 136315138;
    *(__p + 4) = v32;
    _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Refresh token response contains error: %s", __p, 0xCu);
  }

LABEL_15:
  *(a4 + 42) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
LABEL_16:
  ctu::ns::AutoPool::~AutoPool(&v38);
  return sub_10002D760(&v36);
}

void sub_101349EBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10134A030@<X0>(CFDateRef *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = CFDateFormatterCreate(kCFAllocatorDefault, 0, kCFDateFormatterShortStyle, kCFDateFormatterFullStyle);
  StringWithDate = CFDateFormatterCreateStringWithDate(kCFAllocatorDefault, v6, *a1);
  v7 = 0uLL;
  v8 = 0;
  ctu::cf::assign();
  *a2 = 0uLL;
  *(a2 + 16) = v8;
  sub_100005978(&StringWithDate);
  return sub_1009524A8(&v6);
}

void sub_10134A0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, const void *a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a10);
  sub_1009524A8(&a11);
  _Unwind_Resume(a1);
}

xpc_object_t *sub_10134A104(xpc_object_t *a1)
{
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

_BYTE *sub_10134A138(_BYTE *a1, char **a2, char **a3)
{
  v5 = sub_10000501C(a1, *a2);
  sub_10000501C(v5 + 24, *a3);
  return a1;
}

void sub_10134A174(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10134A194()
{
  TMKXPCServer.shutdown()();

  operator delete();
}

id sub_10134A1CC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = a3;
  v8 = [[APSConnection alloc] initWithEnvironmentName:v6 namedDelegatePort:v7 queue:*a4];

  return v8;
}

void sub_10134A294(unsigned __int8 *a1, os_log_t *a2)
{
  v3 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = CSIBOOLAsString(*a1);
    v5 = CSIBOOLAsString(a1[1]);
    v6 = CSIBOOLAsString(a1[2]);
    v7 = 136315650;
    v8 = v4;
    v9 = 2080;
    v10 = v5;
    v11 = 2080;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fResetInProgress = %s, fServiceProvisioningInProgress = %s, fPendingToProcessSim = %s", &v7, 0x20u);
  }
}

void sub_10134A36C(uint64_t a1, int a2, os_log_t *a3)
{
  v4 = *(a1 + 2);
  *a1 = 0;
  *(a1 + 2) = 0;
  if (a2)
  {
    if (v4)
    {
      v5 = *a3;
      if (os_log_type_enabled(*a3, OS_LOG_TYPE_DEFAULT))
      {
        *v6 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Retaining pending SIM info event to process", v6, 2u);
      }

      *(a1 + 2) = v4;
    }
  }

  else
  {
    *a1 = 1;
  }
}

uint64_t sub_10134A3FC(void *a1, uint64_t a2, int a3, uint64_t *a4, uint64_t a5)
{
  v5 = a1[3];
  if (a1[4])
  {
    memset(buf, 0, sizeof(buf));
    v24 = 0;
    if (a3 == 6)
    {
      sub_10000501C(buf, "gri");
    }

    else if (a3)
    {
      if (*(a2 + 23) < 0)
      {
        sub_100005F2C(buf, *a2, *(a2 + 8));
      }

      else
      {
        *buf = *a2;
        v24 = *(a2 + 16);
      }
    }

    else
    {
      sub_10000501C(buf, "pri");
    }

    v11 = a1[2];
    if (!v11 || (v12 = a1[1], (v13 = std::__shared_weak_count::lock(v11)) == 0))
    {
      sub_100013CC4();
    }

    v14 = v13;
    atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v13);
    v15 = a1[4];
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&__dst, *buf, *&buf[8]);
    }

    else
    {
      __dst = *buf;
      v35 = v24;
    }

    *v20 = 0;
    v21 = 0;
    v22 = 0;
    sub_10016FB64(v20, &__dst, &v36, 1uLL);
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1174405120;
    aBlock[2] = sub_10134A824;
    aBlock[3] = &unk_101F30C18;
    aBlock[4] = a1;
    aBlock[5] = v12;
    v27 = v14;
    atomic_fetch_add_explicit(&v14->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    v28 = v5;
    sub_10134B520(v29, a5);
    if (SHIBYTE(v24) < 0)
    {
      sub_100005F2C(&__p, *buf, *&buf[8]);
    }

    else
    {
      __p = *buf;
      v31 = v24;
    }

    v16 = a4[1];
    v32 = *a4;
    v33 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = _Block_copy(aBlock);
    v10 = (**v15)(v15, v20, &v19, 10);
    if (v19)
    {
      _Block_release(v19);
    }

    v25 = v20;
    sub_1000087B4(&v25);
    if (SHIBYTE(v35) < 0)
    {
      operator delete(__dst);
      if (v10)
      {
LABEL_30:
        if (v33)
        {
          sub_100004A34(v33);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p);
        }

        sub_10134B4A0(v29);
        if (v27)
        {
          std::__shared_weak_count::__release_weak(v27);
        }

        std::__shared_weak_count::__release_weak(v14);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(*buf);
        }

        return v10;
      }
    }

    else if (v10)
    {
      goto LABEL_30;
    }

    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
    {
      *v20 = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Queuing file failed", v20, 2u);
    }

    goto LABEL_30;
  }

  v9 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to create write session", buf, 2u);
  }

  return 0;
}

void sub_10134A75C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *aBlock, char a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42)
{
  sub_10134B4A0(v43 + 64);
  if (a29)
  {
    std::__shared_weak_count::__release_weak(a29);
  }

  a22 = &a11;
  sub_1000087B4(&a22);
  if (*(v44 - 89) < 0)
  {
    operator delete(*(v44 - 112));
  }

  std::__shared_weak_count::__release_weak(v42);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10134A824(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 48);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      v8 = *(a1 + 40);
      if (v8)
      {
        if (a3)
        {
          v9 = **(a1 + 56);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v21 = hsfiler::support::to_string();
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Queuing file status: %s", buf, 0xCu);
          }

          if (a3 != 1)
          {
            sub_10134AAD8(*(a1 + 88), 1);
          }
        }

        else
        {
          v10 = *(a1 + 128);
          v15 = v10;
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
            v8 = *(a1 + 40);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_10134AB28;
          aBlock[3] = &unk_101F30BE8;
          v11 = *(a1 + 48);
          aBlock[4] = v8;
          v17 = v11;
          if (v11)
          {
            atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          }

          v18 = *(a1 + 56);
          sub_10134B520(v19, a1 + 64);
          v14 = _Block_copy(aBlock);
          v12 = HSFilerWriteSession::writeWithStream();
          if (v14)
          {
            _Block_release(v14);
          }

          if (v15)
          {
            sub_100004A34(v15);
          }

          if ((v12 & 1) == 0)
          {
            v13 = **(a1 + 56);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Writing file failed", buf, 2u);
            }

            sub_10134AAD8(*(a1 + 88), 1);
          }

          sub_10134B4A0(v19);
          if (v17)
          {
            std::__shared_weak_count::__release_weak(v17);
          }
        }
      }

      sub_100004A34(v7);
    }
  }
}

void sub_10134AA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *aBlock, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_10134B4A0(v18 + 56);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  sub_100004A34(v17);
  _Unwind_Resume(a1);
}

uint64_t sub_10134AAD8(uint64_t a1, char a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

void sub_10134AB28(uint64_t a1, uint64_t a2, int a3)
{
  v4 = *(a1 + 40);
  if (v4)
  {
    v6 = std::__shared_weak_count::lock(v4);
    if (v6)
    {
      v7 = v6;
      if (*(a1 + 32) && a3 != 1)
      {
        if (a3)
        {
          v10 = 1;
        }

        else
        {
          v8 = **(a1 + 48);
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          v10 = 0;
          if (v9)
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Writing file was successful", v11, 2u);
            v10 = 0;
          }
        }

        sub_10134AAD8(*(a1 + 80), v10);
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10134ABF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10134B520(a1 + 56, a2 + 56);
}

void sub_10134AC3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10134AC54(uint64_t a1)
{
  sub_10134B4A0(a1 + 56);
  v2 = *(a1 + 40);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_10134ACA0(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  result = sub_10134B520(a1 + 64, a2 + 64);
  if (*(a2 + 119) < 0)
  {
    result = sub_100005F2C((a1 + 96), *(a2 + 96), *(a2 + 104));
  }

  else
  {
    v6 = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 96) = v6;
  }

  v7 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10134AD28(_Unwind_Exception *a1)
{
  sub_10134B4A0(v1 + 64);
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10134AD50(uint64_t a1)
{
  v2 = *(a1 + 128);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  sub_10134B4A0(a1 + 64);
  v3 = *(a1 + 48);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_10134ADB8@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::supportsHiSpeedFiler(a1);
  if (result)
  {
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void *sub_10134AE58(void *a1)
{
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, "hs.filer");
  ctu::OsLogLogger::OsLogLogger(&v5, &v7);
  ctu::OsLogLogger::OsLogLogger(v2, &v5);
  ctu::OsLogLogger::~OsLogLogger(&v5);
  ctu::OsLogContext::~OsLogContext(&v7);
  v6[0] = off_101E2B528;
  v6[1] = sub_1000A82D8;
  v6[3] = v6;
  a1[2] = 0;
  if ((capabilities::ct::supportsGemini(v3) & 1) == 0)
  {
    operator new();
  }

  if (!a1[2])
  {
    operator new();
  }

  sub_1000A8744(v6);
  *a1 = off_101F30C58;
  return a1;
}

void sub_10134B064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_1000A8744(va);
  operator delete();
}

void sub_10134B110(void *a1)
{
  v2 = a1[2];
  a1[2] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  HiSpeedFilerFactoryInterface::~HiSpeedFilerFactoryInterface(a1);
}

void sub_10134B180(void *a1)
{
  sub_10134B110(a1);

  operator delete();
}

void sub_10134B3BC(HiSpeedFilerWriteSessionInterface *this)
{
  *this = off_101F30BD0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  HiSpeedFilerWriteSessionInterface::~HiSpeedFilerWriteSessionInterface(this);
}

void sub_10134B424(HiSpeedFilerWriteSessionInterface *this)
{
  *this = off_101F30BD0;
  v2 = *(this + 5);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 2);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  HiSpeedFilerWriteSessionInterface::~HiSpeedFilerWriteSessionInterface(this);

  operator delete();
}

uint64_t sub_10134B4A0(uint64_t a1)
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

uint64_t sub_10134B520(uint64_t a1, uint64_t a2)
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

void sub_10134B620(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10134B65C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134B694(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10134B6C4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10134B72C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134B764(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10134B794(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10134BA00(ctu::DispatchTimerService *a1)
{
  ctu::DispatchTimerService::~DispatchTimerService(a1);

  operator delete();
}

void sub_10134BA3C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10134BA90(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10134BAD0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t *sub_10134BAFC(void **a1, uint64_t a2)
{
  v2 = *a1;
  v4 = a1;
  v5 = v2;
  (*(**v2 + 56))(*v2, a2);
  sub_10024BAAC(&v5);
  return sub_1000049E0(&v4);
}

void sub_10134BB60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10024BAAC(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10134BB7C@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::supportsPhoneNumberRegistration(a1);
  *a2 = 0;
  a2[1] = 0;
  if (result)
  {
    operator new();
  }

  return result;
}

void sub_10134C30C(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v3);
  ctu::OsLogContext::~OsLogContext(va1);
  JUMPOUT(0x10134C2E4);
}

void sub_10134C33C(uint64_t a1, dispatch_object_t object)
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

void sub_10134C43C(uint64_t a1)
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

uint64_t sub_10134C540(uint64_t a1, uint64_t a2, int a3)
{
  v7 = a3;
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = &v7;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_101350A00;
  v8[3] = &unk_101F31298;
  v8[4] = a1 + 8;
  v8[5] = v6;
  v9 = v8;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_10006A440;
    v13 = &unk_101F312D8;
    v14 = &v16;
    v15 = &v9;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v16 = 0;
    block = _NSConcreteStackBlock;
    v11 = 0x40000000;
    v12 = sub_1000594E4;
    v13 = &unk_101F312B8;
    v14 = &v16;
    v15 = &v9;
    dispatch_sync(v3, &block);
  }

  return v16 & 1;
}

const void **sub_10134C67C(uint64_t a1, CFTypeRef cf)
{
  v4 = CFCopyDescription(cf);
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  *a1 = 0uLL;
  *(a1 + 16) = v6;
  return sub_100005978(&v4);
}

void sub_10134C6D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10134C6FC(uint64_t a1, PersonalityInfo **a2)
{
  *valuePtr = 2048;
  if (!IsTelephonyRunningExtended(valuePtr))
  {
    v18 = *(a1 + 40);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *valuePtr = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Radio Module is not present, Phone number registration is not supported", valuePtr, 2u);
    }

    goto LABEL_16;
  }

  v4 = *a2;
  if (*(*a2 + 49) - 1 < 2)
  {
    goto LABEL_16;
  }

  if ((*(v4 + 48) & 1) == 0)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v57 = PersonalityInfo::logPrefix(v4);
      v58 = *a2 + 24;
      v59 = *(*a2 + 47);
      v60 = v59;
      if ((v59 & 0x80u) != 0)
      {
        v59 = *(*a2 + 4);
      }

      if (v60 < 0)
      {
        v58 = *(*a2 + 3);
      }

      if (!v59)
      {
        v58 = "<invalid>";
      }

      *valuePtr = 136315394;
      *&valuePtr[4] = v57;
      *&valuePtr[12] = 2080;
      *&valuePtr[14] = v58;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "%s, calculatePhoneNumberRegistrationSupportStatus called on non-active persona %s", valuePtr, 0x16u);
      v4 = *a2;
    }
  }

  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(v4 + 13));
  if (*(*a2 + 96) & 1) != 0 || (*(*a2 + 62))
  {
LABEL_16:
    v19 = 1;
    goto LABEL_17;
  }

  v7 = v6;
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  *valuePtr = v10;
  v14 = sub_100009510(&v9[1].__m_.__sig, valuePtr);
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
        goto LABEL_47;
      }

      goto LABEL_46;
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
    goto LABEL_47;
  }

LABEL_46:
  v40 = PersonalityInfo::iccid(*a2);
  if (((*(*v16 + 104))(v16, v40) & 1) == 0)
  {
    v51 = *v7;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I MDM does not allow PNR for line", valuePtr, 2u);
    }

    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    v19 = 2;
    goto LABEL_17;
  }

LABEL_47:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  *valuePtr = 0;
  *&valuePtr[8] = 0;
  v41 = Registry::getServiceMap(*(a1 + 56));
  v42 = v41;
  if (v43 < 0)
  {
    v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
    v45 = 5381;
    do
    {
      v43 = v45;
      v46 = *v44++;
      v45 = (33 * v45) ^ v46;
    }

    while (v46);
  }

  std::mutex::lock(v41);
  *buf = v43;
  v47 = sub_100009510(&v42[1].__m_.__sig, buf);
  if (v47)
  {
    v49 = v47[3];
    v48 = v47[4];
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v42);
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v48);
      v50 = 0;
      goto LABEL_62;
    }
  }

  else
  {
    v49 = 0;
  }

  std::mutex::unlock(v42);
  v48 = 0;
  v50 = 1;
LABEL_62:
  (**v49)(valuePtr, v49, *a2 + 24);
  if ((v50 & 1) == 0)
  {
    sub_100004A34(v48);
  }

  if (*valuePtr && (*(**valuePtr + 80))(*valuePtr, 1))
  {
    v52 = *v7;
    if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I Carrier Supports PNR over entitlements", buf, 2u);
    }

    v53 = 0;
    v19 = 0;
  }

  else
  {
    v19 = 2;
    v53 = 1;
  }

  v54 = *&valuePtr[8];
  if (*&valuePtr[8])
  {
    sub_100004A34(*&valuePtr[8]);
  }

  if (v53)
  {
    if (capabilities::ct::supportsPhoneNumberRegistration(v54))
    {
      v55 = sub_100837FF8((a1 + 40), (a1 + 56), *a2 + 24);
      *valuePtr = v55;
      if (v55)
      {
        if (CFStringGetLength(v55) > 0)
        {
          v19 = 0;
LABEL_90:
          sub_100005978(valuePtr);
          goto LABEL_17;
        }

        v61 = *v7;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
LABEL_89:
          v19 = 1;
          goto LABEL_90;
        }

        *buf = 0;
        v62 = "Gateway address is not valid?";
      }

      else
      {
        v61 = *v7;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_89;
        }

        *buf = 0;
        v62 = "Failed to find gateway address";
      }

      _os_log_error_impl(&_mh_execute_header, v61, OS_LOG_TYPE_ERROR, v62, buf, 2u);
      goto LABEL_89;
    }

    v56 = *v7;
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "#I Device does not support PNR", valuePtr, 2u);
    }

    goto LABEL_16;
  }

LABEL_17:
  v20 = sub_100007A6C(a1 + 136, *a2 + 3);
  v21 = (a1 + 144);
  if (a1 + 144 != v20 && *(v20 + 56) == v19)
  {
    v22 = 0;
    return v22 | (v19 << 8);
  }

  v23 = *a2;
  v24 = *v21;
  if (!*v21)
  {
    goto LABEL_26;
  }

  while (1)
  {
    while (1)
    {
      v25 = v24;
      if ((sub_1000068BC(v23 + 3, (v24 + 32)) & 0x80) == 0)
      {
        break;
      }

      v24 = *v25;
      v21 = v25;
      if (!*v25)
      {
        goto LABEL_26;
      }
    }

    if ((sub_1000068BC(v25 + 4, v23 + 3) & 0x80) == 0)
    {
      break;
    }

    v21 = v25 + 1;
    v24 = v25[1];
    if (!v24)
    {
      goto LABEL_26;
    }
  }

  if (!*v21)
  {
LABEL_26:
    operator new();
  }

  *(*v21 + 56) = v19;
  v26 = Registry::getServiceMap(*(a1 + 56));
  v27 = v26;
  if (v28 < 0)
  {
    v29 = (v28 & 0x7FFFFFFFFFFFFFFFLL);
    v30 = 5381;
    do
    {
      v28 = v30;
      v31 = *v29++;
      v30 = (33 * v30) ^ v31;
    }

    while (v31);
  }

  std::mutex::lock(v26);
  *valuePtr = v28;
  v32 = sub_100009510(&v27[1].__m_.__sig, valuePtr);
  if (!v32)
  {
    v34 = 0;
    goto LABEL_34;
  }

  v34 = v32[3];
  v33 = v32[4];
  if (!v33)
  {
LABEL_34:
    std::mutex::unlock(v27);
    v33 = 0;
    v35 = 1;
    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v27);
  atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v33);
  v35 = 0;
LABEL_35:
  v36 = *a2;
  *buf = 0;
  *valuePtr = v19;
  v37 = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongLongType, valuePtr);
  if (v37)
  {
    *buf = v37;
    *valuePtr = 0;
    sub_100029A48(valuePtr);
    v38 = *buf;
  }

  else
  {
    v38 = 0;
  }

  v63 = v38;
  *buf = 0;
  sub_100029A48(buf);
  (*(*v34 + 16))(v34, v36 + 24, @"PNRStatus", v38, @"PNRCtrl", 0, 2, 0);
  sub_100029A48(&v63);
  if ((v35 & 1) == 0)
  {
    sub_100004A34(v33);
  }

  v22 = 1;
  return v22 | (v19 << 8);
}

void sub_10134CED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10134CF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101351AA8;
  v7[3] = &unk_101F31358;
  v7[4] = a1 + 8;
  v7[5] = v6;
  v8 = v7;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1013503E4;
    v12 = &unk_101F31278;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v15 = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1013503A8;
    v12 = &unk_101F31258;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }

  return v15;
}

uint64_t sub_10134D098(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v135 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(*a2 + 52));
  v5 = *v135;
  if (os_log_type_enabled(*v135, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Issuing phone number registration request", buf, 2u);
  }

  v148 = 0uLL;
  v149 = 0;
  *&v168 = a3;
  *(&v168 + 1) = "kSmsToken";
  sub_100006354(&v168, object);
  memset(buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  v147 = 0;
  *&v168 = 0;
  *buf = a3;
  *&buf[8] = "kPhoneNumberRegistrationEmbedded";
  sub_100006354(buf, &v168);
  if (xpc_get_type(v168) != &_xpc_type_null)
  {
    ctu::xpc_to_cf(v150, v168, v6);
    sub_100060DE8(object, v150);
    *buf = v147;
    v147 = object[0];
    object[0] = 0;
    sub_100005978(buf);
    sub_100005978(object);
    sub_10000A1EC(v150);
  }

  xpc_release(v168);
  v7 = HIBYTE(v149);
  if (SHIBYTE(v149) < 0)
  {
    v7 = *(&v148 + 1);
  }

  v132 = v7;
  v8 = v147;
  v145[0] = 0;
  v145[1] = 0;
  v146 = 0;
  *&v168 = a3;
  *(&v168 + 1) = "kSmsSessionToken";
  sub_100006354(&v168, object);
  memset(buf, 0, 24);
  xpc::dyn_cast_or_default();
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  xpc_release(object[0]);
  xarray = 0;
  *buf = a3;
  *&buf[8] = "kPhoneNumberRegistrationMechanisms";
  sub_100015504(buf, &xarray);
  v9 = *a2;
  v10 = *(a1 + 56);
  v136 = (a1 + 56);
  *buf = 0;
  *&buf[8] = 0;
  ServiceMap = Registry::getServiceMap(v10);
  v12 = ServiceMap;
  v14 = v13;
  if (v13 < 0)
  {
    v15 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
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
  *&v168 = v14;
  v18 = sub_100009510(&v12[1].__m_.__sig, &v168);
  v134 = a1;
  if (v18)
  {
    v20 = v18[3];
    v19 = v18[4];
    if (v19)
    {
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v12);
      atomic_fetch_add_explicit(&v19->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v19);
      v21 = 0;
      goto LABEL_19;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v12);
  v19 = 0;
  v21 = 1;
LABEL_19:
  v22 = v135;
  (**v20)(buf, v20, v9 + 24);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (*buf)
  {
    v23 = (*(**buf + 72))(*buf, 1);
  }

  else
  {
    v23 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v24 = *a2;
  v133 = v8;
  if (*(*a2 + 49))
  {
    v25 = 0;
    v26 = 0;
    goto LABEL_44;
  }

  v27 = *v136;
  *buf = 0;
  *&buf[8] = 0;
  v28 = Registry::getServiceMap(v27);
  v29 = v28;
  v30 = v13;
  if (v13 < 0)
  {
    v31 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v32 = 5381;
    do
    {
      v30 = v32;
      v33 = *v31++;
      v32 = (33 * v32) ^ v33;
    }

    while (v33);
  }

  std::mutex::lock(v28);
  *&v168 = v30;
  v34 = sub_100009510(&v29[1].__m_.__sig, &v168);
  if (!v34)
  {
    v36 = 0;
    goto LABEL_35;
  }

  v36 = v34[3];
  v35 = v34[4];
  if (!v35)
  {
LABEL_35:
    std::mutex::unlock(v29);
    v35 = 0;
    v37 = 1;
    goto LABEL_36;
  }

  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v29);
  atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  v22 = v135;
  sub_100004A34(v35);
  v37 = 0;
LABEL_36:
  (**v36)(buf, v36, v24 + 24);
  if ((v37 & 1) == 0)
  {
    sub_100004A34(v35);
  }

  if (*buf)
  {
    v26 = (*(**buf + 72))(*buf, 14);
  }

  else
  {
    v26 = 0;
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v25 = *(*a2 + 49) == 0;
LABEL_44:
  v38 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    v39 = CSIBOOLAsString(v23);
    *buf = 136315138;
    *&buf[4] = v39;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Can use entitlement getPhoneNumber: %s", buf, 0xCu);
    v38 = *v22;
  }

  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    v40 = CSIBOOLAsString(v26);
    *buf = 136315138;
    *&buf[4] = v40;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Can use entitlement RCSToken: %s", buf, 0xCu);
    v38 = *v22;
  }

  v41 = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
  if (v41)
  {
    v42 = CSIBOOLAsString(v25);
    *buf = 136315138;
    *&buf[4] = v42;
    _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "#I Can use entitlement SMS: %s", buf, 0xCu);
  }

  if (*(*a2 + 49) != 3 || (capabilities::euicc::supportsPartialActive(v41) & v23 & 1) != 0)
  {
    *buf = a3;
    *&buf[8] = "kSmsPhoneNumberRegistrationAttemptCount";
    sub_100006354(buf, &v168);
    v44 = xpc::dyn_cast_or_default(&v168, 0, v43);
    xpc_release(v168);
    if (v44 < 3)
    {
      v45 = v23;
    }

    else
    {
      v45 = 0;
    }

    if (v44 >= 5)
    {
      v25 = 0;
    }

    v142[0] = 0;
    v142[1] = 0;
    v143 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v141 = 0;
    if (xpc_get_type(xarray) == &_xpc_type_array)
    {
      if (v45)
      {
        if (xpc_get_type(xarray) == &_xpc_type_array)
        {
          count = xpc_array_get_count(xarray);
          if (count)
          {
            for (i = 0; i != count; ++i)
            {
              *&v168 = 0;
              *buf = &xarray;
              *&buf[8] = i;
              sub_10003EAD4(buf, &v168);
              if (xpc_get_type(v168) == &_xpc_type_dictionary)
              {
                *buf = &v168;
                *&buf[8] = "kPhoneNumberRegistrationMechanismType";
                sub_100006354(buf, object);
                v69 = xpc::dyn_cast_or_default(object, 0, v68);
                xpc_release(object[0]);
                if (v69 == 2)
                {
                  v70 = *(v134 + 40);
                  if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#I Can use sms less PNR mechanism", buf, 2u);
                  }

                  v67 = 1;
                }

                else
                {
                  v67 = 0;
                }
              }

              else
              {
                v67 = 4;
              }

              xpc_release(v168);
              if ((v67 | 4) != 4)
              {
                break;
              }
            }
          }
        }
      }

      if (v25)
      {
        if (xpc_get_type(xarray) == &_xpc_type_array && (v71 = xpc_array_get_count(xarray)) != 0)
        {
          v72 = 0;
          LOBYTE(v25) = 1;
          do
          {
            v150[0] = 0;
            *buf = &xarray;
            *&buf[8] = v72;
            sub_10003EAD4(buf, v150);
            if (xpc_get_type(v150[0]) == &_xpc_type_dictionary)
            {
              *buf = v150;
              *&buf[8] = "kPhoneNumberRegistrationMechanismType";
              sub_100006354(buf, &v168);
              v75 = xpc::dyn_cast_or_default(&v168, 0, v74);
              xpc_release(v168);
              if (v75 == 1)
              {
                object[0] = v150;
                object[1] = "kPhoneNumberRegistrationDestinationAddress";
                sub_100006354(object, v155);
                memset(buf, 0, 24);
                xpc::dyn_cast_or_default();
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                if (SHIBYTE(v141) < 0)
                {
                  operator delete(__p[0]);
                }

                *__p = v168;
                v141 = v169;
                BYTE7(v169) = 0;
                LOBYTE(v168) = 0;
                xpc_release(v155[0]);
                object[0] = v150;
                object[1] = "kPhoneNumberRegistrationServiceCenterAddress";
                sub_100006354(object, v155);
                memset(buf, 0, 24);
                xpc::dyn_cast_or_default();
                if (buf[23] < 0)
                {
                  operator delete(*buf);
                }

                if (SHIBYTE(v143) < 0)
                {
                  operator delete(v142[0]);
                }

                *v142 = v168;
                v143 = v169;
                BYTE7(v169) = 0;
                LOBYTE(v168) = 0;
                xpc_release(v155[0]);
                v76 = *(v134 + 40);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  v77 = __p;
                  if (v141 < 0)
                  {
                    v77 = __p[0];
                  }

                  v78 = v142;
                  if (v143 < 0)
                  {
                    v78 = v142[0];
                  }

                  *buf = 136315394;
                  *&buf[4] = v77;
                  *&buf[12] = 2080;
                  *&buf[14] = v78;
                  _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "#I Can use sms PNR mechanism. Destination address: %s service center address: %s", buf, 0x16u);
                }

                v73 = 1;
              }

              else
              {
                v73 = 0;
              }
            }

            else
            {
              v73 = 4;
            }

            xpc_release(v150[0]);
            if ((v73 | 4) != 4)
            {
              break;
            }

            LOBYTE(v25) = ++v72 < v71;
          }

          while (v71 != v72);
        }

        else
        {
          LOBYTE(v25) = 0;
        }
      }

      if (v26)
      {
        for (j = 0; ; ++j)
        {
          if (xpc_get_type(xarray) == &_xpc_type_array)
          {
            v47 = xpc_array_get_count(xarray);
          }

          else
          {
            v47 = 0;
          }

          if (j >= v47)
          {
            v26 = 0;
            v22 = v135;
            goto LABEL_133;
          }

          *&v168 = 0;
          *buf = &xarray;
          *&buf[8] = j;
          sub_10003EAD4(buf, &v168);
          if (xpc_get_type(v168) == &_xpc_type_dictionary)
          {
            *buf = &v168;
            *&buf[8] = "kPhoneNumberRegistrationMechanismType";
            sub_100006354(buf, object);
            v49 = xpc::dyn_cast_or_default(object, 0, v48);
            xpc_release(object[0]);
            if (v49 == 3)
            {
              break;
            }
          }

          xpc_release(v168);
        }

        v79 = *(v134 + 40);
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I Can use RCS token PNR mechanism", buf, 2u);
        }

        xpc_release(v168);
        v22 = v135;
        v26 = 1;
      }
    }

LABEL_133:
    v80 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109632;
      *&buf[4] = v44;
      *&buf[8] = 1024;
      *&buf[10] = 3;
      *&buf[14] = 1024;
      *&buf[16] = 5;
      _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#I Attempt: %d, max http attempts allowed: %d, max attempts allowed: %d", buf, 0x14u);
    }

    sub_10119D984(*(*a2 + 52), v44);
    if (v133)
    {
      v81 = v26;
    }

    else
    {
      v81 = 0;
    }

    if (v81 == 1)
    {
      v82 = *v22;
      if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v82, OS_LOG_TYPE_DEFAULT, "#I Issuing phone number registration request over ENT (RCSToken)", buf, 2u);
      }

      v83 = *(*a2 + 52);
      v84 = v147;
      v155[0] = 0;
      v155[1] = 0;
      v85 = Registry::getServiceMap(*v136);
      v86 = v85;
      if (v13 < 0)
      {
        v87 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
        v88 = 5381;
        do
        {
          v13 = v88;
          v89 = *v87++;
          v88 = (33 * v88) ^ v89;
        }

        while (v89);
      }

      std::mutex::lock(v85);
      *buf = v13;
      v90 = sub_100009510(&v86[1].__m_.__sig, buf);
      if (v90)
      {
        v92 = v90[3];
        v91 = v90[4];
        if (v91)
        {
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v86);
          atomic_fetch_add_explicit(&v91->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v91);
          v93 = 0;
LABEL_153:
          (*(*v92 + 8))(v155, v92, v83);
          if ((v93 & 1) == 0)
          {
            sub_100004A34(v91);
          }

          v154[0] = 0;
          *object = 0u;
          v153 = 0u;
          LODWORD(object[0]) = 1;
          *buf = v84;
          sub_10021D11C(v154, buf);
          v169 = 0u;
          v170 = 0u;
          v168 = 0u;
          sub_1003D27A0(&v169 + 1, object);
          *v158 = 0u;
          *v159 = 0u;
          *v157 = 0u;
          memset(buf, 0, sizeof(buf));
          buf[3] = 1;
          v160 = 0;
          (*(*v155[0] + 480))();
          v151 = 0;
          memset(v150, 0, sizeof(v150));
          LOBYTE(v150[0]) = 1;
          if (SHIBYTE(v149) < 0)
          {
            sub_100005F2C(&v150[1], v148, *(&v148 + 1));
          }

          else
          {
            *&v150[1] = v148;
            v150[3] = v149;
          }

          LODWORD(v151) = 0;
          (***(v134 + 104))(*(v134 + 104), v83, v150);
          if (SHIBYTE(v150[3]) < 0)
          {
            operator delete(v150[1]);
          }

          if (v160 == 1 && SHIBYTE(v159[1]) < 0)
          {
            operator delete(v158[1]);
          }

          if (LOBYTE(v158[0]) == 1 && SHIBYTE(v157[1]) < 0)
          {
            operator delete(*&buf[24]);
          }

          *buf = &v169 + 8;
          sub_1003EC564(buf);
          if (v168)
          {
            *(&v168 + 1) = v168;
            operator delete(v168);
          }

          sub_100005978(v154);
          *buf = &object[1];
          sub_1000087B4(buf);
          if (v155[1])
          {
            sub_100004A34(v155[1]);
          }

          v64 = 257;
          goto LABEL_188;
        }
      }

      else
      {
        v92 = 0;
      }

      std::mutex::unlock(v86);
      v91 = 0;
      v93 = 1;
      goto LABEL_153;
    }

    v94 = sub_1004437AC(@"kCTAutomaticSMS");
    v95 = *v22;
    if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
    {
      v96 = CSIBOOLAsString(v25);
      v97 = CSIBOOLAsString(v94);
      *buf = 136315394;
      *&buf[4] = v96;
      *&buf[12] = 2080;
      *&buf[14] = v97;
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "#I Sms ok :- %s Automatic sms disallowed :- %s", buf, 0x16u);
    }

    if ((v132 == 0 || !v25) | v94 & 1)
    {
      v64 = 0;
LABEL_188:
      if (SHIBYTE(v141) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v143) < 0)
      {
        operator delete(v142[0]);
      }

      goto LABEL_192;
    }

    v98 = *v22;
    if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "#I Issuing phone number registration request over SMS", buf, 2u);
    }

    v99 = *(*a2 + 52);
    if (SHIBYTE(v143) < 0)
    {
      sub_100005F2C(__dst, v142[0], v142[1]);
    }

    else
    {
      *__dst = *v142;
      *&__dst[16] = v143;
    }

    if (SHIBYTE(v141) < 0)
    {
      sub_100005F2C(v138, __p[0], __p[1]);
    }

    else
    {
      *v138 = *__p;
      *&v138[16] = v141;
    }

    v100 = (*(**(v134 + 48) + 16))(*(v134 + 48), v99);
    v101 = __dst[23];
    if (__dst[23] < 0)
    {
      v101 = *&__dst[8];
    }

    if (v101)
    {
LABEL_207:
      v117 = v138[23];
      v118 = v138[23];
      v119 = *&v138[8];
      if (v138[23] >= 0)
      {
        v120 = v138[23];
      }

      else
      {
        v120 = *&v138[8];
      }

      if (!v120)
      {
        object[0] = 0;
        PersonalityIdFromSlotId();
        object[0] = sub_100837FF8((v134 + 40), v136, buf);
        if (buf[23] < 0)
        {
          operator delete(*buf);
        }

        memset(buf, 0, 24);
        ctu::cf::assign();
        v121 = *buf;
        *&v168 = *&buf[8];
        *(&v168 + 7) = *&buf[15];
        v122 = buf[23];
        if ((v138[23] & 0x80000000) != 0)
        {
          operator delete(*v138);
        }

        *v138 = v121;
        *&v138[8] = v168;
        *&v138[15] = *(&v168 + 7);
        v138[23] = v122;
        v123 = *v100;
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
        {
          v124 = v138;
          if (v122 < 0)
          {
            v124 = v121;
          }

          *buf = 136315138;
          *&buf[4] = v124;
          _os_log_impl(&_mh_execute_header, v123, OS_LOG_TYPE_DEFAULT, "#I Found destination address %s in carrier bundle", buf, 0xCu);
        }

        sub_100005978(object);
        v117 = v138[23];
        v119 = *&v138[8];
        v118 = v138[23];
      }

      if (v118 < 0)
      {
        v117 = v119;
      }

      if (v117)
      {
        v169 = 0u;
        v170 = 0u;
        v168 = 0u;
        sub_10164F640(*(v134 + 72), v99, &v168);
        if (*(&v170 + 1))
        {
          sub_10164E62C(*(v134 + 72), v99);
          v125 = sub_10164E674(*(v134 + 72), v99);
          *buf = _NSConcreteStackBlock;
          *&buf[8] = 0x40000000;
          *&buf[16] = sub_10119D93C;
          *&buf[24] = &unk_101F16B10;
          v157[0] = __PAIR64__(v99, v125);
          sub_10119D790(0x800EA);
        }

        v126 = *v100;
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I PNR request cookies:", buf, 2u);
        }

        v127 = *(&v170 + 1);
        if (*(&v170 + 1))
        {
          v128 = 0;
          do
          {
            v129 = *v100;
            if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
            {
              v130 = *(*(&v168 + 1) + 8 * ((v128 + v170) / 0xAA)) + 24 * ((v128 + v170) % 0xAA);
              if (*(v130 + 23) < 0)
              {
                v130 = *v130;
              }

              *buf = 134218242;
              *&buf[4] = v128;
              *&buf[12] = 2082;
              *&buf[14] = v130;
              _os_log_impl(&_mh_execute_header, v129, OS_LOG_TYPE_DEFAULT, "#I Cookie %zu = %{public}s", buf, 0x16u);
              v127 = *(&v170 + 1);
            }

            ++v128;
          }

          while (v128 < v127);
        }

        object[0] = 0;
        object[1] = 0;
        *&v153 = 0;
        sub_10164EDA0(*(v134 + 72), v136, &v148, v145, v99, object);
        v150[0] = 0;
        v150[1] = 0;
        if ((v138[23] & 0x80000000) != 0)
        {
          sub_100005F2C(buf, *v138, *&v138[8]);
        }

        else
        {
          *buf = *v138;
          *&buf[16] = *&v138[16];
        }

        *&buf[24] = v99;
        if (SBYTE7(v153) < 0)
        {
          sub_100005F2C(v157, object[0], object[1]);
        }

        else
        {
          *v157 = *object;
          v158[0] = v153;
        }

        LODWORD(v158[1]) = 3;
        if ((__dst[23] & 0x80000000) != 0)
        {
          sub_100005F2C(v159, *__dst, *&__dst[8]);
        }

        else
        {
          *v159 = *__dst;
          v160 = *&__dst[16];
        }

        v161 = 0;
        v162 = 0;
        v163 = 0;
        v164 = 0;
        v165 = 9;
        v166 = 0;
        v167 = 0;
        sub_1001F7C1C();
      }

      v131 = *v100;
      if (os_log_type_enabled(*v100, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v131, OS_LOG_TYPE_ERROR, "Destination address for PNR SMS is empty", buf, 2u);
      }

      v64 = 1;
      if ((v138[23] & 0x80000000) != 0)
      {
        operator delete(*v138);
      }

      if ((__dst[23] & 0x80000000) != 0)
      {
        operator delete(*__dst);
      }

      goto LABEL_188;
    }

    v102 = Registry::getServiceMap(*v136);
    v103 = v102;
    if (v104 < 0)
    {
      v105 = (v104 & 0x7FFFFFFFFFFFFFFFLL);
      v106 = 5381;
      do
      {
        v104 = v106;
        v107 = *v105++;
        v106 = (33 * v106) ^ v107;
      }

      while (v107);
    }

    std::mutex::lock(v102);
    *buf = v104;
    v108 = sub_100009510(&v103[1].__m_.__sig, buf);
    if (v108)
    {
      v110 = v108[3];
      v109 = v108[4];
      if (v109)
      {
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v103);
        atomic_fetch_add_explicit(&v109->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v109);
        v111 = 0;
LABEL_199:
        (*(*v110 + 96))(object, v110, v99, 1, @"PhoneNumberRegistrationServiceCenter", 0, 0);
        memset(buf, 0, 24);
        ctu::cf::assign();
        v113 = *buf;
        *&v168 = *&buf[8];
        *(&v168 + 7) = *&buf[15];
        v114 = buf[23];
        if ((__dst[23] & 0x80000000) != 0)
        {
          operator delete(*__dst);
        }

        *__dst = v113;
        *&__dst[8] = v168;
        *&__dst[15] = *(&v168 + 7);
        __dst[23] = v114;
        sub_10000A1EC(object);
        if ((v111 & 1) == 0)
        {
          sub_100004A34(v109);
        }

        v115 = *v100;
        if (os_log_type_enabled(*v100, OS_LOG_TYPE_DEFAULT))
        {
          v116 = __dst;
          if (__dst[23] < 0)
          {
            v116 = *__dst;
          }

          *buf = 136315138;
          *&buf[4] = v116;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "#I Found service center address %s in carrier bundle", buf, 0xCu);
        }

        goto LABEL_207;
      }
    }

    else
    {
      v110 = 0;
    }

    std::mutex::unlock(v103);
    v109 = 0;
    v111 = 1;
    goto LABEL_199;
  }

  v50 = *v22;
  if (os_log_type_enabled(*v22, OS_LOG_TYPE_DEFAULT))
  {
    v51 = (*a2 + 24);
    v52 = *(*a2 + 47);
    v53 = v52;
    if ((v52 & 0x80u) != 0)
    {
      v52 = *(*a2 + 32);
    }

    if (v53 < 0)
    {
      v51 = *(*a2 + 24);
    }

    if (!v52)
    {
      v51 = "<invalid>";
    }

    *buf = 136315138;
    *&buf[4] = v51;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Cannot issuePNR in limited use state (%s)", buf, 0xCu);
  }

  v54 = Registry::getServiceMap(*v136);
  v55 = v54;
  v56 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v57 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
    v58 = 5381;
    do
    {
      v56 = v58;
      v59 = *v57++;
      v58 = (33 * v58) ^ v59;
    }

    while (v59);
  }

  std::mutex::lock(v54);
  *buf = v56;
  v60 = sub_100009510(&v55[1].__m_.__sig, buf);
  if (v60)
  {
    v62 = v60[3];
    v61 = v60[4];
    if (v61)
    {
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v55);
      atomic_fetch_add_explicit(&v61->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v61);
      v63 = 0;
      if (!v62)
      {
        goto LABEL_91;
      }

      goto LABEL_90;
    }
  }

  else
  {
    v62 = 0;
  }

  std::mutex::unlock(v55);
  v61 = 0;
  v63 = 1;
  if (v62)
  {
LABEL_90:
    (*(*v62 + 1136))(v62, *a2 + 24);
  }

LABEL_91:
  if ((v63 & 1) == 0)
  {
    sub_100004A34(v61);
  }

  v64 = 0;
LABEL_192:
  xpc_release(xarray);
  if (SHIBYTE(v146) < 0)
  {
    operator delete(v145[0]);
  }

  sub_100005978(&v147);
  if (SHIBYTE(v149) < 0)
  {
    operator delete(v148);
  }

  return v64;
}