void sub_10012C160(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 152) == *(a2 + 152))
  {
    if (*(a1 + 152))
    {
      v4 = *a2;
      *(a1 + 16) = *(a2 + 16);
      *a1 = v4;
      std::string::operator=((a1 + 24), (a2 + 24));
      std::string::operator=((a1 + 48), (a2 + 48));
      *(a1 + 72) = *(a2 + 72);
      *(a1 + 76) = *(a2 + 76);
      sub_10001A9AC((a1 + 80), (a2 + 80));
      if (a1 != a2)
      {
        v5 = *(a2 + 128);

        sub_10001ACB0((a1 + 128), v5, (a2 + 136));
      }
    }
  }

  else if (*(a1 + 152))
  {
    sub_10001BB0C(a1 + 128, *(a1 + 136));
    sub_10001BB68((a1 + 80));
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    *(a1 + 152) = 0;
  }

  else
  {
    sub_10009AC40(a1, a2);
    *(a1 + 152) = 1;
  }
}

void sub_10012C350(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  if (v2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012C378(uint64_t a1, void *a2, NSObject **a3, void *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "ps.sat");
  sub_10012C550((a1 + 8), a3, &v17);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101E2AB08;
  v10 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 80) = a5;
  sub_10000501C(&__p, "SatelliteControl");
  v12 = *(a1 + 24);
  v14 = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 104) = 0;
  *(a1 + 108) = 0x300000000;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 149) = 0;
  *(a1 + 160) = 0;
  *(a1 + 166) = 0;
  return a1;
}

void sub_10012C4D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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

  v20 = v18[9];
  if (v20)
  {
    sub_100004A34(v20);
  }

  v21 = v18[7];
  if (v21)
  {
    sub_100004A34(v21);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void *sub_10012C550(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10012C5B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_10012C5DC(void *a1)
{
  *a1 = off_101E2AB08;
  v2 = a1[23];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[18];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[16];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[12];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[9];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = a1[7];
  if (v7)
  {
    sub_100004A34(v7);
  }

  TMKXPCServer.shutdown()();
  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_10012C680(void *a1)
{
  sub_10012C5DC(a1);

  operator delete();
}

void sub_10012C6C4(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v3;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sinitializing", buf, 0x16u);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
      goto LABEL_11;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
LABEL_11:
  v13 = *(a1 + 184);
  *(a1 + 176) = v12;
  *(a1 + 184) = v11;
  if (v13)
  {
    sub_100004A34(v13);
  }

  Registry::createRestModuleOneTimeUseConnection(&v14, *(a1 + 48));
  ctu::RestModule::connect();
  if (v15)
  {
    sub_100004A34(v15);
  }

  *buf = sub_10012C8E4;
  *&buf[8] = 0;
  sub_10012FAE4();
}

void sub_10012C8B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10012C8E8(uint64_t a1)
{
  *(a1 + 160) = 0;
  v21 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  (*(*v10 + 64))(&v20, v10, **(a1 + 64) + 24, @"SatelliteUserPreference", kPhoneServicesWalletDomain, 0, 1);
  sub_10010B240(&v21, &v20);
  sub_10000A1EC(&v20);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  if (v21)
  {
    *buf = 0;
    ctu::cf::assign(buf, v21, v12);
    v13 = *buf;
    if (*buf > 0)
    {
      v14 = 2;
LABEL_19:
      *(a1 + 160) = v14;
      return sub_100029A48(&v21);
    }

    v15 = sub_10012D22C(a1);
    v16 = -v13;
    if (v15 <= -v13)
    {
      v14 = 1;
      goto LABEL_19;
    }

    v17 = *(a1 + 40);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315906;
      *&buf[4] = v18;
      v23 = 2080;
      v24 = " ";
      v25 = 1024;
      v26 = v16;
      v27 = 1024;
      v28 = v15;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I %s%sSwitch: user preference has ver:%d vs current:%d, force reset to default", buf, 0x22u);
    }

    (*(*a1 + 96))(a1);
  }

  return sub_100029A48(&v21);
}

void sub_10012CB58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100029A48(va);
  _Unwind_Resume(a1);
}

BOOL sub_10012CBAC(uint64_t a1)
{
  *buf = 0;
  (*(**(a1 + 176) + 96))(&v10);
  sub_10002FE1C(buf, &v10);
  sub_10000A1EC(&v10);
  LOBYTE(v10) = 0;
  ctu::cf::assign(&v10, *buf, v2);
  v3 = v10;
  sub_100045C8C(buf);
  v4 = *(a1 + 104);
  if (v4 != v3)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      v7 = asStringBool(*(a1 + 104));
      v8 = asStringBool(v3);
      *buf = 136315906;
      *&buf[4] = v6;
      v12 = 2080;
      v13 = " ";
      v14 = 2080;
      v15 = v7;
      v16 = 2080;
      v17 = v8;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSupports capability is changing from %s to %s", buf, 0x2Au);
    }

    *(a1 + 104) = v3;
  }

  return v4 != v3;
}

void sub_10012CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012CD6C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstarted", &v5, 0x16u);
  }

  sub_10012CE60(a1);
  return (*(*a1 + 104))(a1, 0, 1);
}

void sub_10012CE60(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  if (!v8)
  {
    v10 = 0;
LABEL_9:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    if (!v10)
    {
      goto LABEL_17;
    }

LABEL_10:
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315394;
      *&buf[4] = v13;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%sfetching MDM state isSatelliteConnectionAllowed", buf, 0x16u);
    }

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    dispatch_queue_create("read MDM config queue", v14);
    sub_100004AA0(buf, (a1 + 8));
    v15 = *&buf[8];
    if (*&buf[8])
    {
      atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v15);
    }

    if ((v11 & 1) == 0)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    operator new();
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
  if (v10)
  {
    goto LABEL_10;
  }

LABEL_17:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_10012D0F4(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012D138(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sSwitch: review provisioning on migration", &v5, 0x16u);
  }

  sub_10012C8E8(a1);
  return (*(*a1 + 104))(a1, 0, 0);
}

unint64_t sub_10012D22C(uint64_t a1)
{
  cf = 0;
  (*(**(a1 + 176) + 96))(&cf, *(a1 + 176), *(**(a1 + 64) + 52), 1, @"ResetSatelliteAfterUpgrade", 0, 0);
  if (!cf)
  {
    goto LABEL_9;
  }

  v1 = CFGetTypeID(cf);
  TypeID = CFNumberGetTypeID();
  v3 = cf;
  if (v1 != TypeID)
  {
    v10 = 0;
    if (!cf)
    {
      goto LABEL_10;
    }

    v6 = CFGetTypeID(cf);
    if (v6 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v10, v3, v7);
      v3 = v10;
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v11 = 0;
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFNumberGetTypeID())
    {
      ctu::cf::assign(&v11, v3, v5);
      v3 = v11;
      goto LABEL_10;
    }

LABEL_9:
    v3 = 0;
  }

LABEL_10:
  sub_10000A1EC(&cf);
  return v3;
}

BOOL sub_10012D350(uint64_t a1)
{
  BOOLean = 0;
  (*(**(a1 + 176) + 96))(&v3, *(a1 + 176), *(**(a1 + 64) + 52), 1, @"ShowSatelliteSwitch", 0, 0);
  sub_10002FE1C(&BOOLean, &v3);
  sub_10000A1EC(&v3);
  if (BOOLean)
  {
    v1 = CFBooleanGetValue(BOOLean) == 1;
  }

  else
  {
    v1 = 0;
  }

  sub_100045C8C(&BOOLean);
  return v1;
}

void sub_10012D404(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

BOOL sub_10012D428(uint64_t a1)
{
  v2 = sub_10012D350(a1);
  v3 = sub_10012D5AC(a1, v2);
  if (v2 && (v4 = *(a1 + 160)) != 0)
  {
    v5 = *(a1 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      v7 = sub_10060FFC0(*(a1 + 160));
      v11 = 136315650;
      v12 = v6;
      v13 = 2080;
      v14 = " ";
      v15 = 2080;
      v16 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSwitch: Using manual preference %s", &v11, 0x20u);
      v4 = *(a1 + 160);
    }

    return v4 == 2;
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = PersonalityInfo::logPrefix(**(a1 + 64));
      v11 = 136315650;
      v12 = v9;
      v13 = 2080;
      v14 = " ";
      v15 = 1024;
      LODWORD(v16) = v3;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%sSwitch: Using carrier default %d", &v11, 0x1Cu);
    }
  }

  return v3;
}

uint64_t sub_10012D5AC(uint64_t a1, char a2)
{
  (*(**(a1 + 176) + 96))(&cf, *(a1 + 176), *(**(a1 + 64) + 52), 1, @"EnableSatelliteByDefault", kCFBooleanTrue, 0);
  v3 = cf;
  v4 = a2 ^ 1;
  v9 = a2 ^ 1;
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v9, v3, v6);
      v4 = v9;
    }
  }

  sub_10000A1EC(&cf);
  return v4 & 1;
}

uint64_t sub_10012D68C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    *v15 = 136315394;
    *&v15[4] = v3;
    v16 = 2080;
    v17 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sSwitch: Reset", v15, 0x16u);
  }

  *(a1 + 160) = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  *v15 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, v15);
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
LABEL_11:
  (*(*v12 + 72))(v12, **(a1 + 64) + 24, @"SatelliteUserPreference", kPhoneServicesWalletDomain, 0, 1);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  return (*(*a1 + 104))(a1, 0, 0);
}

void sub_10012D880(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10012D8B0(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if (*(result + 160) == v2)
  {
    return result;
  }

  v4 = result;
  v5 = *(result + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = PersonalityInfo::logPrefix(**(v4 + 64));
    v7 = sub_10060FFC0(*(v4 + 160));
    *buf = 136315906;
    *&buf[4] = v6;
    v26 = 2080;
    v27 = " ";
    v28 = 2080;
    v29 = v7;
    v30 = 2080;
    v31 = sub_10060FFC0(v2);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s%sSwitch: changed user preference from %s to %s", buf, 0x2Au);
  }

  v8 = sub_10012D22C(v4);
  if (a2)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = -v8;
  }

  ServiceMap = Registry::getServiceMap(*(v4 + 48));
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
  *buf = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, buf);
  if (!v16)
  {
    v18 = 0;
    goto LABEL_17;
  }

  v18 = v16[3];
  v17 = v16[4];
  if (!v17)
  {
LABEL_17:
    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v11);
  atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v17);
  v19 = 0;
LABEL_18:
  v20 = **(v4 + 64);
  v24 = 0;
  *buf = v9;
  v21 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, buf);
  if (v21)
  {
    v24 = v21;
    *buf = 0;
    sub_100029A48(buf);
    v22 = v24;
  }

  else
  {
    v22 = 0;
  }

  v24 = 0;
  sub_100029A48(&v24);
  (*(*v18 + 48))(v18, v20 + 24, @"SatelliteUserPreference", v22, kPhoneServicesWalletDomain, 0, 1, 0, v22);
  sub_100029A48(&v23);
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v17);
  }

  *(v4 + 160) = v2;
  result = *(v4 + 173) == 1 && *(v4 + 172) == 1 && sub_10012D428(v4);
  *(v4 + 156) = result;
  return result;
}

void sub_10012DB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_100029A48(&a9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  _Unwind_Resume(a1);
}

void sub_10012DB9C(uint64_t a1)
{
  if (*(a1 + 164) != 2)
  {
    v1 = 0;
    goto LABEL_10;
  }

  if (*(a1 + 120))
  {
    v1 = *(a1 + 128);
    if (!v1)
    {
      goto LABEL_10;
    }

LABEL_8:
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_10;
  }

  if (!*(a1 + 136))
  {
    operator new();
  }

  v1 = *(a1 + 144);
  if (v1)
  {
    goto LABEL_8;
  }

LABEL_10:
  if (*(a1 + 80))
  {
    operator new();
  }

  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10012DD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t sub_10012DD8C(uint64_t result)
{
  if (*(**(result + 64) + 48) == 1)
  {
    phoneservices::submitSwitchAnalytics();
  }

  return result;
}

BOOL sub_10012DDBC(uint64_t a1)
{
  v2 = **(a1 + 64);
  if (*(v2 + 48) == 1 && (v3 = *(a1 + 152)) != 0)
  {
    if (((v3 == 2) & *(a1 + 156)) != 0)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 164);
  if (v4 != v5)
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315650;
      v9 = PersonalityInfo::logPrefix(v2);
      v10 = 2080;
      v11 = " ";
      v12 = 2080;
      v13 = asString();
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s%sfeature re-evaluated to %s", &v8, 0x20u);
    }

    *(a1 + 164) = v4;
  }

  return v4 != v5;
}

uint64_t sub_10012DEEC(uint64_t a1, int a2)
{
  if (a2)
  {
    return sub_10012DEF8(a1);
  }

  return a1;
}

const void **sub_10012DEF8(uint64_t a1)
{
  *(a1 + 136) = 0;
  v2 = a1 + 136;
  v3 = *(a1 + 144);
  *(v2 + 8) = 0;
  if (v3)
  {
    sub_100004A34(v3);
  }

  theDict = 0;
  (*(**(a1 + 176) + 96))(&v6);
  sub_100010180(&theDict, &v6);
  sub_10000A1EC(&v6);
  if (theDict)
  {
    operator new();
  }

  return sub_10001021C(&theDict);
}

void sub_10012E2D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10012E358(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonality config changed", &v5, 0x16u);
  }

  sub_10012DEF8(a1);
  sub_10012C8E8(a1);
  return (*(*a1 + 104))(a1, 0, 0);
}

uint64_t sub_10012E454(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v5 = 136315394;
    v6 = v3;
    v7 = 2080;
    v8 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%spersonal wallet changed", &v5, 0x16u);
  }

  sub_10012C8E8(a1);
  return (*(*a1 + 104))(a1, 0, 0);
}

void sub_10012E548(void *a1@<X1>, void *a2@<X8>)
{
  if (*a1)
  {
    operator new();
  }

  v3 = a1[1];
  *a2 = 0;
  a2[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }
}

uint64_t sub_10012E73C(uint64_t a1, int a2, int a3, uint64_t a4)
{
  if (a2)
  {
    *(a1 + 108) = 2;
    if (*(a1 + 112) != a3)
    {
      v7 = *(a1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315650;
        v26 = v8;
        v27 = 2080;
        v28 = " ";
        v29 = 2080;
        v30 = sub_100A38E08(a3);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sentitlement supported and changed to %s", buf, 0x20u);
      }

      *(a1 + 112) = a3;
    }

    v23 = 0;
    v24 = 0;
    sub_10012E548((a4 + 64), &v23);
    v9 = v23;
    v10 = *(a1 + 120);
    if (v23 != v10 && (!v23 || !v10 || !sub_1013E6BFC(v23, v10)))
    {
      v11 = *(a1 + 40);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = PersonalityInfo::logPrefix(**(a1 + 64));
        v13 = v12;
        if (v9)
        {
          sub_1013E68CC(v9, __p);
          if (v22 >= 0)
          {
            v14 = __p;
          }

          else
          {
            v14 = __p[0];
          }

          *buf = 136315650;
          v26 = v13;
          v27 = 2080;
          v28 = " ";
          v29 = 2080;
          v30 = v14;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%stier info changed: %s", buf, 0x20u);
          if (v22 < 0)
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *buf = 136315650;
          v26 = v12;
          v27 = 2080;
          v28 = " ";
          v29 = 2080;
          v30 = "-";
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s%stier info changed: %s", buf, 0x20u);
        }
      }

      v19 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v20 = *(a1 + 128);
      *(a1 + 120) = v9;
      *(a1 + 128) = v19;
      if (v20)
      {
        sub_100004A34(v20);
      }
    }

    v17 = v24;
    if (!v24)
    {
      return (*(*a1 + 104))(a1, 0, 1);
    }

LABEL_20:
    sub_100004A34(v17);
    return (*(*a1 + 104))(a1, 0, 1);
  }

  v15 = *(a1 + 40);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    v26 = v16;
    v27 = 2080;
    v28 = " ";
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sentitlement is not supported", buf, 0x16u);
  }

  *(a1 + 108) = 0x200000001;
  v17 = *(a1 + 128);
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  if (v17)
  {
    goto LABEL_20;
  }

  return (*(*a1 + 104))(a1, 0, 1);
}

void sub_10012EA5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10012EA84(uint64_t a1)
{
  v2 = 1;
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 112) == 2)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }
  }

  v3 = *(a1 + 152);
  if (v3 != v2)
  {
    v4 = *(a1 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 64));
      v7 = 136315906;
      v8 = v5;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = asString();
      v13 = 2080;
      v14 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sNetwork support is changing from %s to %s", &v7, 0x2Au);
    }

    *(a1 + 152) = v2;
  }

  return v3 != v2;
}

BOOL sub_10012EBAC(uint64_t a1)
{
  if (*(a1 + 104) != 1 || *(a1 + 173) != 1 || *(a1 + 172) != 1)
  {
    goto LABEL_15;
  }

  v2 = 0;
  v3 = *(a1 + 112);
  if (v3 <= 2)
  {
    if (v3 != 1)
    {
      if (v3 != 2)
      {
        goto LABEL_16;
      }

      if (sub_10012D350(a1))
      {
        v2 = 2;
        goto LABEL_16;
      }

      v4 = *(a1 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = PersonalityInfo::logPrefix(**(a1 + 64));
        v12 = 136315394;
        v13 = v5;
        v14 = 2080;
        v15 = " ";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sEither switch support is not present or it is set to false", &v12, 0x16u);
      }
    }

    goto LABEL_15;
  }

  if ((v3 - 3) < 2 || v3 == 5 || v3 == 6)
  {
LABEL_15:
    v2 = 1;
  }

LABEL_16:
  v6 = *(a1 + 168);
  if (v6 != v2)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = PersonalityInfo::logPrefix(**(a1 + 64));
      v9 = sub_100610010(*(a1 + 168));
      v10 = sub_100610010(v2);
      v12 = 136315906;
      v13 = v8;
      v14 = 2080;
      v15 = " ";
      v16 = 2080;
      v17 = v9;
      v18 = 2080;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sSupports switch is changing from %s to %s", &v12, 0x2Au);
    }

    *(a1 + 168) = v2;
  }

  return v6 != v2;
}

const void **sub_10012ED9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  theDict = 0;
  v3 = *(a1 + 168);
  if ((v3 - 2) < 2)
  {
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v10 = theDict;
      theDict = Mutable;
      v15 = v10;
      sub_1000296E0(&v15);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSetting, kCFBooleanTrue);
    v8 = 1;
    v6 = 1;
    v7 = 1;
  }

  else if (v3 == 4)
  {
    v11 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v11)
    {
      v12 = theDict;
      theDict = v11;
      v15 = v12;
      sub_1000296E0(&v15);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCanChangeSettingEnableStillProvisioning, kCFBooleanTrue);
    v7 = 0;
    v8 = 1;
    v6 = 1;
  }

  else if (v3 == 5)
  {
    v4 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (v4)
    {
      v5 = theDict;
      theDict = v4;
      v15 = v5;
      sub_1000296E0(&v15);
    }

    CFDictionarySetValue(theDict, kCTCapabilityCannotChangeSettingNeedToCallCarrier, kCFBooleanTrue);
    v6 = 0;
    v7 = 0;
    v8 = 1;
  }

  else
  {
    v8 = 0;
    v6 = 0;
    v7 = 0;
  }

  *a2 = v8;
  *(a2 + 1) = v6;
  *(a2 + 2) = v7;
  sub_100010180((a2 + 8), &theDict);
  return sub_1000296E0(&theDict);
}

const void **sub_10012EF60@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = 0;
  v6 = 0;
  (*(*a1 + 56))(&v5);
  *a2 = a1[41] == 2;
  sub_100010024((a2 + 8), &v6);
  return sub_10001021C(&v6);
}

void sub_10012EFEC(uint64_t a1, int a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = PersonalityInfo::logPrefix(**(a1 + 64));
    v6 = asStringBool(a2);
    v7 = sub_100610010(*(a1 + 168));
    v12 = 136315906;
    v13 = v5;
    v14 = 2080;
    v15 = " ";
    v16 = 2080;
    v17 = v6;
    v18 = 2080;
    v19 = v7;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssetEnabled(%s): Current 'can set' status: %s", &v12, 0x2Au);
  }

  v8 = *(a1 + 168);
  v9 = v8 > 5;
  v10 = (1 << v8) & 0x23;
  if (v9 || v10 == 0)
  {
    sub_10012D8B0(a1, a2);
    (*(*a1 + 104))(a1, 1, 0);
  }
}

void sub_10012F144(uint64_t a1, int a2, int a3)
{
  v6 = sub_10012CBAC(a1);
  v7 = sub_10012EA84(a1);
  v8 = sub_10012EBAC(a1);
  v9 = *(a1 + 156);
  v10 = *(a1 + 173) == 1 && *(a1 + 172) == 1 && sub_10012D428(a1);
  v11 = v10;
  *(a1 + 156) = v10;
  v12 = sub_10012DDBC(a1);
  v13 = v11 != v9 || v12;
  v14 = (v6 || v7 || v8) | v13;
  v15 = *(a1 + 80);
  if (v15)
  {
    sub_10034CD9C(v15, 5, a2);
  }

  if (((v14 | a3) & 1) != 0 || a2)
  {

    sub_10012DB9C(a1);
  }
}

void sub_10012F240(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 64));
    v4 = **(a1 + 64);
    v7 = *(v4 + 24);
    v5 = (v4 + 24);
    v6 = v7;
    v8 = *(v5 + 23);
    v9 = v8;
    if ((v8 & 0x80u) != 0)
    {
      v8 = *(v5 + 1);
    }

    if (v9 < 0)
    {
      v5 = v6;
    }

    if (!v8)
    {
      v5 = "<invalid>";
    }

    *buf = 136315650;
    v40 = v3;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s=|= dump SatelliteControl '%s'", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v10 = PersonalityInfo::logPrefix(**(a1 + 64));
    v11 = asStringBool(*(a1 + 104));
    *buf = 136315650;
    v40 = v10;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Carrier support        : %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v12 = PersonalityInfo::logPrefix(**(a1 + 64));
    v13 = asString();
    v14 = sub_100A38E08(*(a1 + 112));
    *buf = 136315906;
    v40 = v12;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v13;
    v45 = 2080;
    v46 = v14;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Entitlement support    : %s state:%s", buf, 0x2Au);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v15 = PersonalityInfo::logPrefix(**(a1 + 64));
    v16 = *(a1 + 120);
    if (v16)
    {
      sub_1013E68CC(v16, __p);
      if (v38 >= 0)
      {
        v17 = __p;
      }

      else
      {
        v17 = __p[0];
      }

      *buf = 136315650;
      v40 = v15;
      v41 = 2080;
      v42 = " ";
      v43 = 2080;
      v44 = v17;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Tier info              : %s", buf, 0x20u);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315650;
      v40 = v15;
      v41 = 2080;
      v42 = " ";
      v43 = 2080;
      v44 = "-";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Tier info              : %s", buf, 0x20u);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v18 = PersonalityInfo::logPrefix(**(a1 + 64));
    v19 = *(a1 + 136);
    if (v19)
    {
      sub_1013E68CC(v19, __p);
      if (v38 >= 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      *buf = 136315650;
      v40 = v18;
      v41 = 2080;
      v42 = " ";
      v43 = 2080;
      v44 = v20;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Tier info (CB)         : %s", buf, 0x20u);
      if (v38 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      *buf = 136315650;
      v40 = v18;
      v41 = 2080;
      v42 = " ";
      v43 = 2080;
      v44 = "-";
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Tier info (CB)         : %s", buf, 0x20u);
    }

    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v21 = PersonalityInfo::logPrefix(**(a1 + 64));
    v22 = asString();
    *buf = 136315650;
    v40 = v21;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v22;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Account/Network support: %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v23 = PersonalityInfo::logPrefix(**(a1 + 64));
    v24 = asStringBool(*(a1 + 156));
    *buf = 136315650;
    v40 = v23;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v24;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Actual switch state    : %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v25 = PersonalityInfo::logPrefix(**(a1 + 64));
    v26 = sub_10060FFC0(*(a1 + 160));
    *buf = 136315650;
    v40 = v25;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v26;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | User preference        : %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v27 = PersonalityInfo::logPrefix(**(a1 + 64));
    v28 = sub_100610010(*(a1 + 168));
    *buf = 136315650;
    v40 = v27;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v28;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | CanSet state           : %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v29 = PersonalityInfo::logPrefix(**(a1 + 64));
    v30 = asString();
    *buf = 136315650;
    v40 = v29;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v30;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | Final capability state : %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v31 = PersonalityInfo::logPrefix(**(a1 + 64));
    v32 = sub_10012D350(a1);
    v33 = sub_10012D5AC(a1, v32);
    v34 = asStringBool(v33);
    *buf = 136315650;
    v40 = v31;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v34;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | EnableByDefault        : %s", buf, 0x20u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v35 = PersonalityInfo::logPrefix(**(a1 + 64));
    if (*(a1 + 173) == 1)
    {
      v36 = asStringBool(*(a1 + 172));
    }

    else
    {
      v36 = "<unknown>";
    }

    *buf = 136315650;
    v40 = v35;
    v41 = 2080;
    v42 = " ";
    v43 = 2080;
    v44 = v36;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | MDM Allow              : %s", buf, 0x20u);
  }
}

void sub_10012F9E4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10012FAB8);
  __cxa_rethrow();
}

void sub_10012FA24(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10012FA78(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10012FAB8(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10012FBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_10012FC70(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E2ACE8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10012FCA8(void *a1)
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

uint64_t sub_10012FCF0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10012FD5C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2AD68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10012FE00(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2ADB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10012FE54(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_10012FE68(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 32);
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = *(v1 + 16);
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_10012FEC8(uint64_t a1)
{
  v6 = a1;
  v2 = *a1;
  (*(**(a1 + 24) + 112))(*(a1 + 24));
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      if (*(a1 + 8))
      {
        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v2 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }

  return sub_10012FE68(&v6);
}

void sub_100130018(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10012FE68(va);
  _Unwind_Resume(a1);
}

void sub_10013002C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (*(v2 + 80))
  {
    *(v2 + 172) = *(v1 + 5);
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = PersonalityInfo::logPrefix(**(v2 + 64));
      if (*(v1 + 9) == 1)
      {
        v5 = asStringBool(*(v1 + 8));
      }

      else
      {
        v5 = "unknown";
      }

      if (*(v2 + 173) == 1)
      {
        v6 = asStringBool(*(v2 + 172));
      }

      else
      {
        v6 = "unknown";
      }

      *buf = 136315906;
      v8 = v4;
      v9 = 2080;
      v10 = " ";
      v11 = 2080;
      v12 = v5;
      v13 = 2080;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%sMDM state isSatelliteConnectionAllowed changed %s -> %s", buf, 0x2Au);
    }

    (*(*v2 + 104))(v2, 0, 0);
  }

  operator delete();
}

uint64_t PrivateNetworkTelemetryController::PrivateNetworkTelemetryController(uint64_t a1, NSObject **a2, void *a3)
{
  *a1 = off_101EA5A00;
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "pnw.metric");
  sub_1001303E4(v6, a2, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  *a1 = off_101E2AE08;
  v7 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = 0;
  *(a1 + 64) = 0;
  *(a1 + 68) = 0;
  *(a1 + 72) = 0;
  *(a1 + 76) = 0;
  *(a1 + 80) = 0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  sub_10000501C((a1 + 144), "");
  sub_10000501C((a1 + 168), "");
  *(a1 + 208) = 0;
  *(a1 + 192) = 0;
  *(a1 + 196) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = a1 + 208;
  sub_10013464C(a1 + 224);
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 480) = a1 + 488;
  sub_1001347F8(a1 + 504);
  return a1;
}

void sub_100130334(_Unwind_Exception *a1)
{
  v6 = v3;
  sub_10013574C((v1 + 60), *v6);
  sub_1001348DC(v5 + 16);
  sub_100130470(v4);
  v8 = v1[7];
  if (v8)
  {
    sub_100004A34(v8);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  PrivateNetworkTelemetryInterface::~PrivateNetworkTelemetryInterface(v1);
  _Unwind_Resume(a1);
}

void *sub_1001303E4(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10013044C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100130470(uint64_t a1)
{
  sub_1001349A0(a1 + 112, *(a1 + 120));
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

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void PrivateNetworkTelemetryController::~PrivateNetworkTelemetryController(PrivateNetworkTelemetryController *this)
{
  *this = off_101E2AE08;
  if (*(this + 631) < 0)
  {
    operator delete(*(this + 76));
  }

  if (*(this + 599) < 0)
  {
    operator delete(*(this + 72));
  }

  if (*(this + 567) < 0)
  {
    operator delete(*(this + 68));
  }

  if (*(this + 543) < 0)
  {
    operator delete(*(this + 65));
  }

  sub_10013574C(this + 480, *(this + 61));
  sub_1001348DC(this + 224);
  sub_1001349A0(this + 200, *(this + 26));
  if (*(this + 191) < 0)
  {
    operator delete(*(this + 21));
  }

  if (*(this + 167) < 0)
  {
    operator delete(*(this + 18));
  }

  if (*(this + 143) < 0)
  {
    operator delete(*(this + 15));
  }

  if (*(this + 119) < 0)
  {
    operator delete(*(this + 12));
  }

  v2 = *(this + 7);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);

  PrivateNetworkTelemetryInterface::~PrivateNetworkTelemetryInterface(this);
}

{
  PrivateNetworkTelemetryController::~PrivateNetworkTelemetryController(this);

  operator delete();
}

uint64_t sub_1001305EC(uint64_t a1)
{
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

void sub_100130754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
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

void PrivateNetworkTelemetryController::init(PrivateNetworkTelemetryController *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

uint64_t PrivateNetworkTelemetryController::updateSimEnablementInfo(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  result = PrivateNetworkTelemetryController::resetPopulationMetric(a1);
  v7 = *a3;
  for (i = a3[1]; v7 != i; v7 += 168)
  {
    result = sub_100007A6C(a2, (v7 + 72));
    if (a2 + 8 != result)
    {
      v38 = 0u;
      memset(v39, 0, 144);
      memset(v37, 0, sizeof(v37));
      memset(v36, 0, sizeof(v36));
      memset(v35, 0, sizeof(v35));
      v9 = sub_100007A6C(a2, (v7 + 72));
      sub_100134A24(v35, v9 + 56);
      if (BYTE8(v38) == 1)
      {
        sub_100032BFC(v21, v7);
        if (subscriber::isEsimCapable())
        {
          v10 = "eSIM";
        }

        else
        {
          v10 = "pSIM";
        }

        sub_10000501C(&v33, v10);
        if (*(a1 + 247) < 0)
        {
          operator delete(*(a1 + 224));
        }

        *(a1 + 224) = v33;
        *(a1 + 240) = v34;
        HIBYTE(v34) = 0;
        LOBYTE(v33) = 0;
        if (v32 < 0)
        {
          operator delete(__p);
        }

        if (v30 < 0)
        {
          operator delete(v29);
        }

        if (v28 < 0)
        {
          operator delete(v27);
        }

        if (v26 < 0)
        {
          operator delete(v25);
        }

        v40 = &v24;
        sub_100034D1C(&v40);
        if (v22)
        {
          v23 = v22;
          operator delete(v22);
        }

        std::string::operator=((a1 + 248), &v35[5]);
        std::string::operator=((a1 + 272), v36);
        std::string::operator=((a1 + 296), &v36[1]);
        std::string::operator=((a1 + 320), v37);
        *(a1 + 442) = 1;
        sub_100134E64(v11, v39);
        PrivateNetworkTelemetryController::updateGeofenceProfile(a1, v11);
        sub_1001349A0(v20, v20[1]);
        if (v19 < 0)
        {
          operator delete(v18);
        }

        if (v17 < 0)
        {
          operator delete(v16);
        }

        if (v15 < 0)
        {
          operator delete(v14);
        }

        if (v13 < 0)
        {
          operator delete(v12);
        }
      }

      else if (*(v7 + 8) == 5)
      {
        std::string::operator=((a1 + 344), &v35[5]);
        std::string::operator=((a1 + 368), v36);
        std::string::operator=((a1 + 392), &v36[1]);
        std::string::operator=((a1 + 416), v37);
      }

      result = sub_100135324(v35);
    }
  }

  return result;
}

uint64_t PrivateNetworkTelemetryController::resetPopulationMetric(PrivateNetworkTelemetryController *this)
{
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  memset(v6, 0, sizeof(v6));
  memset(v5, 0, sizeof(v5));
  memset(v4, 0, sizeof(v4));
  memset(v3, 0, sizeof(v3));
  sub_10013464C(v3);
  std::string::operator=((this + 224), v3);
  std::string::operator=((this + 248), &v3[1]);
  std::string::operator=((this + 272), v4);
  std::string::operator=((this + 296), &v4[1]);
  std::string::operator=((this + 320), v5);
  std::string::operator=((this + 344), &v5[1]);
  std::string::operator=((this + 368), v6);
  std::string::operator=((this + 392), &v6[1]);
  std::string::operator=((this + 416), &v7);
  *(this + 220) = WORD4(v8);
  *(this + 442) = BYTE10(v8);
  std::string::operator=((this + 448), &v9);
  *(this + 118) = DWORD2(v10);
  *(this + 238) = WORD6(v10);
  return sub_1001348DC(v3);
}

void PrivateNetworkTelemetryController::updateGeofenceProfile(PrivateNetworkTelemetryController *this, uint64_t a2)
{
  if (*(a2 + 128))
  {
    *(this + 22) = *a2;
    v4 = this + 88;
    v5 = (a2 + 8);
    std::string::operator=(this + 4, (a2 + 8));
    std::string::operator=(this + 5, (a2 + 32));
    std::string::operator=(this + 6, (a2 + 56));
    std::string::operator=(this + 7, (a2 + 80));
    *(this + 24) = *(a2 + 104);
    if (v4 != a2)
    {
      sub_100135418(this + 25, *(a2 + 112), (a2 + 120));
    }

    *(this + 440) = 1;
    if (*(a2 + 31) >= 0)
    {
      v6 = *(a2 + 31);
    }

    else
    {
      v6 = *(a2 + 16);
    }

    memset(&v16, 0, sizeof(v16));
    v7 = &v16;
    sub_1000677C4(&v16, v6 + 1);
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v7 = v16.__r_.__value_.__r.__words[0];
    }

    if (v6)
    {
      if (*(a2 + 31) >= 0)
      {
        v8 = v5;
      }

      else
      {
        v8 = *(a2 + 8);
      }

      memmove(v7, v8, v6);
    }

    *(&v7->__r_.__value_.__l.__data_ + v6) = 32;
    v9 = *(a2 + 55);
    if (v9 >= 0)
    {
      v10 = (a2 + 32);
    }

    else
    {
      v10 = *(a2 + 32);
    }

    if (v9 >= 0)
    {
      v11 = *(a2 + 55);
    }

    else
    {
      v11 = *(a2 + 40);
    }

    v12 = std::string::append(&v16, v10, v11);
    v13 = v12->__r_.__value_.__r.__words[0];
    v17[0] = v12->__r_.__value_.__l.__size_;
    *(v17 + 7) = *(&v12->__r_.__value_.__r.__words[1] + 7);
    v14 = HIBYTE(v12->__r_.__value_.__r.__words[2]);
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (*(this + 471) < 0)
    {
      operator delete(*(this + 56));
    }

    v15 = v17[0];
    *(this + 56) = v13;
    *(this + 57) = v15;
    *(this + 463) = *(v17 + 7);
    *(this + 471) = v14;
    if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v16.__r_.__value_.__l.__data_);
    }

    *(this + 118) = *a2;
    *(this + 441) = *(a2 + 105);
    *(this + 238) = *(a2 + 128);
  }

  else
  {

    PrivateNetworkTelemetryController::resetGeofenceProfile(this);
  }
}

void sub_100130E60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PrivateNetworkTelemetryController::handlePrivateNetworkEvent(os_log_t *this, int a2, std::string *a3, double *a4, _BYTE *a5, int a6)
{
  v41 = a2;
  if (a2 <= 3)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 == 1)
        {
          PrivateNetworkTelemetryController::calculateDurationsForEvent(this, &v41);

          PrivateNetworkTelemetryController::endMasterSession(this);
        }
      }

      else
      {

        PrivateNetworkTelemetryController::beginMasterSession(this);
      }

      return;
    }

    if (a2 != 2)
    {
      ++*(this + 326);
      *(this + 81) = 1;
      PrivateNetworkTelemetryController::calculateDurationsForEvent(this, &v41);
      return;
    }

    (*this[6]->isa)(buf);
    ServiceMap = Registry::getServiceMap(*buf);
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
    v39[0] = v14;
    v18 = sub_100009510(&v13[1].__m_.__sig, v39);
    if (v18)
    {
      v19 = v18[3];
      v20 = v18[4];
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v13);
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v20);
        v21 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v19 = 0;
    }

    std::mutex::unlock(v13);
    v20 = 0;
    v21 = 1;
LABEL_32:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v19)
    {
      v22 = (*(*v19 + 104))(v19, 1);
      v23 = (*(*v19 + 104))(v19, 2);
      v24 = v23;
      v25 = WORD2(v22);
      v26 = WORD2(v23);
      if (v21)
      {
        goto LABEL_37;
      }
    }

    else
    {
      if (os_log_type_enabled(this[5], OS_LOG_TYPE_ERROR))
      {
        sub_101761968();
      }

      v26 = 0;
      v25 = 0;
      v24 = -1;
      LODWORD(v22) = -1;
      if (v21)
      {
LABEL_37:
        if (a6 == 2)
        {
          v32 = this[5];
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            PrivateNetworkTelemetryController::ratAsString(v24, v39);
            v33 = v40;
            v34 = v39[0];
            PrivateNetworkTelemetryController::ratAsString(v22, __p);
            v35 = v39;
            if (v33 < 0)
            {
              v35 = v34;
            }

            if (v38 >= 0)
            {
              v36 = __p;
            }

            else
            {
              v36 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = v35;
            *&buf[12] = 1024;
            *&buf[14] = v26;
            v43 = 2080;
            v44 = v36;
            v45 = 1024;
            v46 = v25;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Private Network registered event with rat [%s], band [%d] - macro rat [%s], band [%d]", buf, 0x22u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            if (v40 < 0)
            {
              operator delete(v39[0]);
            }
          }

          if (v24 != 11 && v26)
          {
            *(this + 16) = v24;
            *(this + 34) = v26;
          }

          if (v22 == 11)
          {
            goto LABEL_75;
          }

          v24 = v22;
          LOWORD(v26) = v25;
          if (!v25)
          {
            goto LABEL_75;
          }
        }

        else
        {
          if (a6 != 1)
          {
            goto LABEL_75;
          }

          v27 = this[5];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            PrivateNetworkTelemetryController::ratAsString(v22, v39);
            v28 = v40;
            v29 = v39[0];
            PrivateNetworkTelemetryController::ratAsString(v24, __p);
            v30 = v39;
            if (v28 < 0)
            {
              v30 = v29;
            }

            if (v38 >= 0)
            {
              v31 = __p;
            }

            else
            {
              v31 = __p[0];
            }

            *buf = 136315906;
            *&buf[4] = v30;
            *&buf[12] = 1024;
            *&buf[14] = v25;
            v43 = 2080;
            v44 = v31;
            v45 = 1024;
            v46 = v26;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Private Network registered event with rat [%s], band [%d] - macro rat [%s], band [%d]", buf, 0x22u);
            if (v38 < 0)
            {
              operator delete(__p[0]);
            }

            if (v40 < 0)
            {
              operator delete(v39[0]);
            }
          }

          if (v22 != 11 && v25)
          {
            *(this + 16) = v22;
            *(this + 34) = v25;
          }

          if (v24 == 11 || !v26)
          {
            goto LABEL_75;
          }
        }

        *(this + 18) = v24;
        *(this + 38) = v26;
LABEL_75:
        PrivateNetworkTelemetryController::calculateDurationsForEvent(this, &v41);
        return;
      }
    }

    sub_100004A34(v20);
    goto LABEL_37;
  }

  if (a2 > 5)
  {
    if (a2 == 6)
    {
      v7 = a3;
      v8 = a4;
      v9 = a5;
      v10 = 1;
    }

    else
    {
      if (a2 != 7)
      {
        return;
      }

      v7 = a3;
      v8 = a4;
      v9 = a5;
      v10 = 0;
    }

    PrivateNetworkTelemetryController::handleGeofenceStateChange(this, v7, v8, v9, v10);
  }

  else
  {
    if (a2 == 4)
    {
      ++*(this + 326);
      *(this + 81) = 0;
    }

    PrivateNetworkTelemetryController::calculateDurationsForEvent(this, &v41);
  }
}

void sub_100131454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void PrivateNetworkTelemetryController::beginMasterSession(PrivateNetworkTelemetryController *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I begin master session", buf, 2u);
  }

  *(this + 80) = 1;
  *(this + 508) = &_mh_execute_header;
  v4 = 0;
  PrivateNetworkTelemetryController::updateTimestampForSession(this, this + 126, &v4);
  v3 = 4;
  PrivateNetworkTelemetryController::updateTimestampForSession(this, this + 126, &v3);
}

void PrivateNetworkTelemetryController::calculateDurationsForEvent(PrivateNetworkTelemetryController *this, int *a2)
{
  if (*a2 == 3)
  {
    v5 = *(this + 168);
    if (!v5)
    {
      goto LABEL_8;
    }

    *(this + 162) += PrivateNetworkTelemetryController::calculateTimeInterval(this, v5);
    goto LABEL_7;
  }

  if (*a2 == 4)
  {
    v4 = *(this + 168);
    if (v4)
    {
      *(this + 161) += PrivateNetworkTelemetryController::calculateTimeInterval(this, v4);
LABEL_7:
      v22 = 4;
      PrivateNetworkTelemetryController::updateTimestampForSession(this, this + 126, &v22);
    }
  }

LABEL_8:
  v6 = *(this + 60);
  if (v6 != (this + 488))
  {
    do
    {
      if (*(v6 + 15) == 2)
      {
        if (*a2 == 5)
        {
          v10 = *(v6 + 54);
          if (!v10)
          {
            goto LABEL_39;
          }

          v11 = PrivateNetworkTelemetryController::calculateTimeInterval(this, v10);
          if (v11 >= 0x12C)
          {
            v12 = 300;
          }

          else
          {
            v12 = v11;
          }

          *(v6 + 48) = v12;
          *(v6 + 54) = 0;
        }

        else if (*a2 == 2)
        {
          v7 = *(v6 + 53);
          if (!v7)
          {
            goto LABEL_39;
          }

          *(v6 + 68) = 1;
          v8 = PrivateNetworkTelemetryController::calculateTimeInterval(this, v7);
          if (v8 >= 0x12C)
          {
            v9 = 300;
          }

          else
          {
            v9 = v8;
          }

          *(v6 + 47) = v9;
          *(v6 + 53) = 0;
        }
      }

      v13 = *a2;
      v14 = *(v6 + 16) == 4 && v13 == 1;
      if (v14)
      {
        v15 = *(v6 + 55);
        if (!v15)
        {
          goto LABEL_39;
        }

        v16 = PrivateNetworkTelemetryController::calculateTimeInterval(this, v15);
        if (v16 >= 0x12C)
        {
          v17 = 300;
        }

        else
        {
          v17 = v16;
        }

        *(v6 + 46) = v17;
        *(v6 + 55) = 0;
        v13 = *a2;
      }

      if (v13 == 3)
      {
        v19 = *(v6 + 56);
        if (v19)
        {
          ++*(v6 + 102);
          *(v6 + 50) += PrivateNetworkTelemetryController::calculateTimeInterval(this, v19);
          goto LABEL_38;
        }
      }

      else if (v13 == 4)
      {
        v18 = *(v6 + 56);
        if (v18)
        {
          ++*(v6 + 102);
          *(v6 + 49) += PrivateNetworkTelemetryController::calculateTimeInterval(this, v18);
LABEL_38:
          v22 = 4;
          PrivateNetworkTelemetryController::updateTimestampForSession(this, v6 + 14, &v22);
        }
      }

LABEL_39:
      v20 = *(v6 + 1);
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
          v21 = *(v6 + 2);
          v14 = *v21 == v6;
          v6 = v21;
        }

        while (!v14);
      }

      v6 = v21;
    }

    while (v21 != (this + 488));
  }
}

void PrivateNetworkTelemetryController::endMasterSession(PrivateNetworkTelemetryController *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I end master session", v8, 2u);
  }

  if (*(this + 80))
  {
    *(this + 80) = 0;
    PrivateNetworkTelemetryController::sendSessionEvent(this, this + 126);
    PrivateNetworkTelemetryController::resetMasterSession(this);
    v3 = *(this + 60);
    v4 = (this + 488);
    if (v3 != (this + 488))
    {
      do
      {
        PrivateNetworkTelemetryController::sendSessionEvent(this, v3 + 14);
        v5 = *(v3 + 1);
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
            v6 = *(v3 + 2);
            v7 = *v6 == v3;
            v3 = v6;
          }

          while (!v7);
        }

        v3 = v6;
      }

      while (v6 != v4);
    }
  }

  else
  {
    if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
    {
      sub_10176199C();
    }

    v4 = (this + 488);
  }

  sub_10013574C(this + 480, *(this + 61));
  *(this + 62) = 0;
  *(this + 60) = v4;
  *v4 = 0;
}

void PrivateNetworkTelemetryController::handleGeofenceStateChange(uint64_t a1, std::string *a2, double *a3, _BYTE *a4, int a5)
{
  v10 = a1 + 488;
  if (a1 + 488 != sub_100007A6C(a1 + 480, &a2->__r_.__value_.__l.__data_) || a5 == 0)
  {
    if (v10 != sub_100007A6C(a1 + 480, &a2->__r_.__value_.__l.__data_) && (a5 & 1) == 0)
    {
      *&v16 = a2;
      v12 = sub_100136004(a1 + 480, &a2->__r_.__value_.__l.__data_);
      if (*a4)
      {
        *(v12 + 64) = 5;
        PrivateNetworkTelemetryController::sendSessionEvent(a1, (v12 + 56));
        sub_100136240((a1 + 480), &a2->__r_.__value_.__l.__data_);
      }

      else
      {
        *(v12 + 64) = 4;
        LODWORD(v16) = 3;
        PrivateNetworkTelemetryController::updateTimestampForSession(a1, (v12 + 56), &v16);
      }
    }
  }

  else
  {
    memset(v25, 0, sizeof(v25));
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    *__p = 0u;
    v19 = 0u;
    *v20 = 0u;
    *v17 = 0u;
    *v18 = 0u;
    v16 = 0u;
    sub_1001347F8(&v16);
    std::string::operator=(v17, a2);
    LOWORD(v20[0]) = *a3;
    if (*a4 <= 1u)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    DWORD1(v16) = v13;
    LODWORD(v26) = 0;
    PrivateNetworkTelemetryController::updateTimestampForSession(a1, &v16, &v26);
    LODWORD(v26) = 4;
    PrivateNetworkTelemetryController::updateTimestampForSession(a1, &v16, &v26);
    LODWORD(v26) = 1;
    PrivateNetworkTelemetryController::updateTimestampForSession(a1, &v16, &v26);
    LODWORD(v26) = 2;
    PrivateNetworkTelemetryController::updateTimestampForSession(a1, &v16, &v26);
    v26 = a2;
    v14 = sub_100136004(a1 + 480, &a2->__r_.__value_.__l.__data_);
    *(v14 + 56) = v16;
    *(v14 + 61) = *(&v16 + 5);
    std::string::operator=((v14 + 72), v17);
    std::string::operator=((v14 + 96), &v18[1]);
    *(v14 + 120) = v20[0];
    *(v14 + 122) = BYTE2(v20[0]);
    std::string::operator=((v14 + 128), &v20[1]);
    *(v14 + 152) = __p[0];
    std::string::operator=((v14 + 160), &__p[1]);
    v15 = v25[0];
    *(v14 + 184) = v24;
    *(v14 + 200) = v15;
    *(v14 + 212) = *(v25 + 12);
    if (SHIBYTE(v23) < 0)
    {
      operator delete(__p[1]);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v20[1]);
    }

    if (SHIBYTE(v19) < 0)
    {
      operator delete(v18[1]);
    }

    if (SHIBYTE(v18[0]) < 0)
    {
      operator delete(v17[0]);
    }
  }
}

void PrivateNetworkTelemetryController::handleDailyCallback(PrivateNetworkTelemetryController *this)
{
  PrivateNetworkTelemetryController::sendPopulationMetric(this);
  PrivateNetworkTelemetryController::sendGeofenceMetric(this);

  PrivateNetworkTelemetryController::resetSessions(this);
}

void PrivateNetworkTelemetryController::sendPopulationMetric(PrivateNetworkTelemetryController *this)
{
  if (*(this + 442) == 1)
  {
    (***(this + 6))(&__p);
    ServiceMap = Registry::getServiceMap(__p);
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
    v31[0] = v4;
    v8 = sub_100009510(&v3[1].__m_.__sig, v31);
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
        goto LABEL_10;
      }
    }

    else
    {
      v10 = 0;
    }

    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
LABEL_10:
    if (v33)
    {
      sub_100004A34(v33);
    }

    if (!v10)
    {
      if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
      {
        sub_1017619D0();
      }

      goto LABEL_80;
    }

    v59 = 0;
    v12 = xpc_dictionary_create(0, 0, 0);
    v13 = v12;
    if (v12)
    {
      v59 = v12;
    }

    else
    {
      v13 = xpc_null_create();
      v59 = v13;
      if (!v13)
      {
        v14 = xpc_null_create();
        v13 = 0;
        goto LABEL_22;
      }
    }

    if (xpc_get_type(v13) == &_xpc_type_dictionary)
    {
      xpc_retain(v13);
LABEL_23:
      xpc_release(v13);
      v15 = this + 224;
      if (*(this + 247) < 0)
      {
        v15 = *v15;
      }

      v57 = xpc_string_create(v15);
      if (!v57)
      {
        v57 = xpc_null_create();
      }

      __p = &v59;
      v33 = "privateNetworkSimType";
      sub_10000F688(&__p, &v57, &v58);
      xpc_release(v58);
      v58 = 0;
      xpc_release(v57);
      v57 = 0;
      v16 = this + 248;
      if (*(this + 271) < 0)
      {
        v16 = *v16;
      }

      v55 = xpc_string_create(v16);
      if (!v55)
      {
        v55 = xpc_null_create();
      }

      __p = &v59;
      v33 = "privateNetworkHplmnMcc";
      sub_10000F688(&__p, &v55, &v56);
      xpc_release(v56);
      v56 = 0;
      xpc_release(v55);
      v55 = 0;
      v17 = this + 272;
      if (*(this + 295) < 0)
      {
        v17 = *v17;
      }

      v53 = xpc_string_create(v17);
      if (!v53)
      {
        v53 = xpc_null_create();
      }

      __p = &v59;
      v33 = "privateNetworkHplmnMnc";
      sub_10000F688(&__p, &v53, &v54);
      xpc_release(v54);
      v54 = 0;
      xpc_release(v53);
      v53 = 0;
      v18 = this + 344;
      if (*(this + 367) < 0)
      {
        v18 = *v18;
      }

      v51 = xpc_string_create(v18);
      if (!v51)
      {
        v51 = xpc_null_create();
      }

      __p = &v59;
      v33 = "macroHplmnMcc";
      sub_10000F688(&__p, &v51, &v52);
      xpc_release(v52);
      v52 = 0;
      xpc_release(v51);
      v51 = 0;
      v19 = this + 368;
      if (*(this + 391) < 0)
      {
        v19 = *v19;
      }

      v49 = xpc_string_create(v19);
      if (!v49)
      {
        v49 = xpc_null_create();
      }

      __p = &v59;
      v33 = "macroHplmnMnc";
      sub_10000F688(&__p, &v49, &v50);
      xpc_release(v50);
      v50 = 0;
      xpc_release(v49);
      v49 = 0;
      v20 = this + 296;
      if (*(this + 319) < 0)
      {
        v20 = *v20;
      }

      v47 = xpc_string_create(v20);
      if (!v47)
      {
        v47 = xpc_null_create();
      }

      __p = &v59;
      v33 = "privateNetworkGid1";
      sub_10000F688(&__p, &v47, &v48);
      xpc_release(v48);
      v48 = 0;
      xpc_release(v47);
      v47 = 0;
      v21 = this + 320;
      if (*(this + 343) < 0)
      {
        v21 = *v21;
      }

      v45 = xpc_string_create(v21);
      if (!v45)
      {
        v45 = xpc_null_create();
      }

      __p = &v59;
      v33 = "privateNetworkGid2";
      sub_10000F688(&__p, &v45, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v45);
      v45 = 0;
      v22 = this + 392;
      if (*(this + 415) < 0)
      {
        v22 = *v22;
      }

      v43 = xpc_string_create(v22);
      if (!v43)
      {
        v43 = xpc_null_create();
      }

      __p = &v59;
      v33 = "macroGid1";
      sub_10000F688(&__p, &v43, &v44);
      xpc_release(v44);
      v44 = 0;
      xpc_release(v43);
      v43 = 0;
      v23 = this + 416;
      if (*(this + 439) < 0)
      {
        v23 = *v23;
      }

      v41 = xpc_string_create(v23);
      if (!v41)
      {
        v41 = xpc_null_create();
      }

      __p = &v59;
      v33 = "macroGid2";
      sub_10000F688(&__p, &v41, &v42);
      xpc_release(v42);
      v42 = 0;
      xpc_release(v41);
      v41 = 0;
      v39 = xpc_BOOL_create(*(this + 440));
      if (!v39)
      {
        v39 = xpc_null_create();
      }

      __p = &v59;
      v33 = "isGeofenceInfoLoaded";
      sub_10000F688(&__p, &v39, &v40);
      xpc_release(v40);
      v40 = 0;
      xpc_release(v39);
      v39 = 0;
      v24 = this + 448;
      if (*(this + 471) < 0)
      {
        v24 = *v24;
      }

      v37 = xpc_string_create(v24);
      if (!v37)
      {
        v37 = xpc_null_create();
      }

      __p = &v59;
      v33 = "geofenceInfoProfileVersion";
      sub_10000F688(&__p, &v37, &v38);
      xpc_release(v38);
      v38 = 0;
      xpc_release(v37);
      v37 = 0;
      sub_10000501C(&__p, off_101E2AFF8[*(this + 118)]);
      if (v34 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      v35 = xpc_string_create(p_p);
      if (!v35)
      {
        v35 = xpc_null_create();
      }

      v31[0] = &v59;
      v31[1] = "geofenceInfoSource";
      sub_10000F688(v31, &v35, &v36);
      xpc_release(v36);
      v36 = 0;
      xpc_release(v35);
      v35 = 0;
      if (v34 < 0)
      {
        operator delete(__p);
      }

      v29 = xpc_BOOL_create(*(this + 441));
      if (!v29)
      {
        v29 = xpc_null_create();
      }

      __p = &v59;
      v33 = "isCellularDataPreferredOverWifi";
      sub_10000F688(&__p, &v29, &v30);
      xpc_release(v30);
      v30 = 0;
      xpc_release(v29);
      v29 = 0;
      v27 = xpc_int64_create(*(this + 238));
      if (!v27)
      {
        v27 = xpc_null_create();
      }

      __p = &v59;
      v33 = "numOfGeofences";
      sub_10000F688(&__p, &v27, &v28);
      xpc_release(v28);
      v28 = 0;
      xpc_release(v27);
      v26 = v59;
      v27 = 0;
      if (v59)
      {
        xpc_retain(v59);
      }

      else
      {
        v26 = xpc_null_create();
      }

      (*(*v10 + 16))(v10, "commCenterPrivateNetworkPopulation", &v26);
      xpc_release(v26);
      v26 = 0;
      xpc_release(v59);
LABEL_80:
      if ((v11 & 1) == 0)
      {
        sub_100004A34(v9);
      }

      return;
    }

    v14 = xpc_null_create();
LABEL_22:
    v59 = v14;
    goto LABEL_23;
  }
}

void sub_1001322F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  xpc_release(object);
  xpc_release(*(v20 - 72));
  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  _Unwind_Resume(a1);
}

void PrivateNetworkTelemetryController::sendGeofenceMetric(PrivateNetworkTelemetryController *this)
{
  if (!*(this + 27))
  {
    return;
  }

  (***(this + 6))(&__p);
  ServiceMap = Registry::getServiceMap(__p);
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
  v40[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, v40);
  if (!v8)
  {
    v9 = 0;
    goto LABEL_9;
  }

  v9 = v8[3];
  v10 = v8[4];
  if (!v10)
  {
LABEL_9:
    std::mutex::unlock(v3);
    v10 = 0;
    v30 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v10);
  v30 = 0;
LABEL_10:
  if (v42)
  {
    sub_100004A34(v42);
  }

  v29 = v10;
  if (v9)
  {
    v11 = *(this + 25);
    if (v11 != (this + 208))
    {
      do
      {
        v64[0] = 0;
        v12 = xpc_dictionary_create(0, 0, 0);
        v13 = v12;
        if (v12)
        {
          v64[0] = v12;
        }

        else
        {
          v13 = xpc_null_create();
          v64[0] = v13;
          if (!v13)
          {
            v14 = xpc_null_create();
            v13 = 0;
            goto LABEL_21;
          }
        }

        if (xpc_get_type(v13) != &_xpc_type_dictionary)
        {
          v14 = xpc_null_create();
LABEL_21:
          v64[0] = v14;
          goto LABEL_22;
        }

        xpc_retain(v13);
LABEL_22:
        xpc_release(v13);
        v15 = this + 248;
        if (*(this + 271) < 0)
        {
          v15 = *(this + 31);
        }

        v62 = xpc_string_create(v15);
        if (!v62)
        {
          v62 = xpc_null_create();
        }

        __p = v64;
        v42 = "privateNetworkHplmnMcc";
        sub_10000F688(&__p, &v62, &v63);
        xpc_release(v63);
        v63 = 0;
        xpc_release(v62);
        v62 = 0;
        v16 = this + 272;
        if (*(this + 295) < 0)
        {
          v16 = *(this + 34);
        }

        v60 = xpc_string_create(v16);
        if (!v60)
        {
          v60 = xpc_null_create();
        }

        __p = v64;
        v42 = "privateNetworkHplmnMnc";
        sub_10000F688(&__p, &v60, &v61);
        xpc_release(v61);
        v61 = 0;
        xpc_release(v60);
        v60 = 0;
        v17 = this + 344;
        if (*(this + 367) < 0)
        {
          v17 = *(this + 43);
        }

        v58 = xpc_string_create(v17);
        if (!v58)
        {
          v58 = xpc_null_create();
        }

        __p = v64;
        v42 = "macroHplmnMcc";
        sub_10000F688(&__p, &v58, &v59);
        xpc_release(v59);
        v59 = 0;
        xpc_release(v58);
        v58 = 0;
        v18 = this + 368;
        if (*(this + 391) < 0)
        {
          v18 = *(this + 46);
        }

        v56 = xpc_string_create(v18);
        if (!v56)
        {
          v56 = xpc_null_create();
        }

        __p = v64;
        v42 = "macroHplmnMnc";
        sub_10000F688(&__p, &v56, &v57);
        xpc_release(v57);
        v57 = 0;
        xpc_release(v56);
        v56 = 0;
        v19 = this + 296;
        if (*(this + 319) < 0)
        {
          v19 = *(this + 37);
        }

        v54 = xpc_string_create(v19);
        if (!v54)
        {
          v54 = xpc_null_create();
        }

        __p = v64;
        v42 = "privateNetworkGid1";
        sub_10000F688(&__p, &v54, &v55);
        xpc_release(v55);
        v55 = 0;
        xpc_release(v54);
        v54 = 0;
        v20 = this + 320;
        if (*(this + 343) < 0)
        {
          v20 = *(this + 40);
        }

        v52 = xpc_string_create(v20);
        if (!v52)
        {
          v52 = xpc_null_create();
        }

        __p = v64;
        v42 = "privateNetworkGid2";
        sub_10000F688(&__p, &v52, &v53);
        xpc_release(v53);
        v53 = 0;
        xpc_release(v52);
        v52 = 0;
        v21 = this + 392;
        if (*(this + 415) < 0)
        {
          v21 = *(this + 49);
        }

        v50 = xpc_string_create(v21);
        if (!v50)
        {
          v50 = xpc_null_create();
        }

        __p = v64;
        v42 = "macroGid1";
        sub_10000F688(&__p, &v50, &v51);
        xpc_release(v51);
        v51 = 0;
        xpc_release(v50);
        v50 = 0;
        v22 = this + 416;
        if (*(this + 439) < 0)
        {
          v22 = *(this + 52);
        }

        v48 = xpc_string_create(v22);
        if (!v48)
        {
          v48 = xpc_null_create();
        }

        __p = v64;
        v42 = "macroGid2";
        sub_10000F688(&__p, &v48, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v48);
        v48 = 0;
        v23 = this + 448;
        if (*(this + 471) < 0)
        {
          v23 = *(this + 56);
        }

        v46 = xpc_string_create(v23);
        if (!v46)
        {
          v46 = xpc_null_create();
        }

        __p = v64;
        v42 = "geofenceInfoProfileVersion";
        sub_10000F688(&__p, &v46, &v47);
        xpc_release(v47);
        v47 = 0;
        xpc_release(v46);
        v46 = 0;
        sub_10000501C(&__p, off_101E2AFF8[*(this + 118)]);
        if (v43 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v44 = xpc_string_create(p_p);
        if (!v44)
        {
          v44 = xpc_null_create();
        }

        v40[0] = v64;
        v40[1] = "geofenceInfoSource";
        sub_10000F688(v40, &v44, &v45);
        xpc_release(v45);
        v45 = 0;
        xpc_release(v44);
        v44 = 0;
        if (v43 < 0)
        {
          operator delete(__p);
        }

        v38 = xpc_BOOL_create(*(this + 441));
        if (!v38)
        {
          v38 = xpc_null_create();
        }

        __p = v64;
        v42 = "isCellularDataPreferredOverWifi";
        sub_10000F688(&__p, &v38, &v39);
        xpc_release(v39);
        v39 = 0;
        xpc_release(v38);
        v38 = 0;
        v36 = xpc_int64_create(*(this + 238));
        if (!v36)
        {
          v36 = xpc_null_create();
        }

        __p = v64;
        v42 = "numOfGeofences";
        sub_10000F688(&__p, &v36, &v37);
        xpc_release(v37);
        v37 = 0;
        xpc_release(v36);
        v36 = 0;
        v25 = v11 + 80;
        if (*(v11 + 103) < 0)
        {
          v25 = *v25;
        }

        v34 = xpc_string_create(v25);
        if (!v34)
        {
          v34 = xpc_null_create();
        }

        __p = v64;
        v42 = "geofenceId";
        sub_10000F688(&__p, &v34, &v35);
        xpc_release(v35);
        v35 = 0;
        xpc_release(v34);
        v34 = 0;
        v32 = xpc_int64_create(*(v11 + 7));
        if (!v32)
        {
          v32 = xpc_null_create();
        }

        __p = v64;
        v42 = "geofenceRadius";
        sub_10000F688(&__p, &v32, &v33);
        xpc_release(v33);
        v33 = 0;
        xpc_release(v32);
        v31 = v64[0];
        v32 = 0;
        if (v64[0])
        {
          xpc_retain(v64[0]);
        }

        else
        {
          v31 = xpc_null_create();
        }

        (*(*v9 + 16))(v9, "commCenterPrivateNetworkGeofences", &v31);
        xpc_release(v31);
        v31 = 0;
        xpc_release(v64[0]);
        v26 = *(v11 + 1);
        if (v26)
        {
          do
          {
            v27 = v26;
            v26 = *v26;
          }

          while (v26);
        }

        else
        {
          do
          {
            v27 = *(v11 + 2);
            v28 = *v27 == v11;
            v11 = v27;
          }

          while (!v28);
        }

        v11 = v27;
      }

      while (v27 != (this + 208));
    }
  }

  else if (os_log_type_enabled(*(this + 5), OS_LOG_TYPE_ERROR))
  {
    sub_1017619D0();
  }

  if ((v30 & 1) == 0)
  {
    sub_100004A34(v29);
  }
}

void sub_100132BA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, int a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, std::__shared_weak_count *a30)
{
  if (a30)
  {
    sub_100004A34(a30);
  }

  _Unwind_Resume(exception_object);
}

void PrivateNetworkTelemetryController::resetSessions(PrivateNetworkTelemetryController *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cleaning up any outstanding sessions at end of day", buf, 2u);
  }

  if (*(this + 80) == 1)
  {
    PrivateNetworkTelemetryController::sendSessionEvent(this, this + 126);
    PrivateNetworkTelemetryController::resetMasterSession(this);
    v3 = *(this + 60);
    if (v3 != (this + 488))
    {
      do
      {
        *(v3 + 16) = 8;
        PrivateNetworkTelemetryController::sendSessionEvent(this, v3 + 14);
        *(v3 + 16) = 9;
        *(v3 + 7) = 0x800000000;
        *(v3 + 49) = 0;
        *(v3 + 50) = 0;
        *(v3 + 102) = 0;
        *(v3 + 26) = 0;
        *(v3 + 27) = 0;
        *(v3 + 56) = 0;
        v8 = 0;
        PrivateNetworkTelemetryController::updateTimestampForSession(this, v3 + 14, &v8);
        v7 = 4;
        PrivateNetworkTelemetryController::updateTimestampForSession(this, v3 + 14, &v7);
        v4 = *(v3 + 1);
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
            v5 = *(v3 + 2);
            v6 = *v5 == v3;
            v3 = v5;
          }

          while (!v6);
        }

        v3 = v5;
      }

      while (v5 != (this + 488));
    }

    PrivateNetworkTelemetryController::beginMasterSession(this);
  }
}

void PrivateNetworkTelemetryController::resetGeofenceProfile(PrivateNetworkTelemetryController *this)
{
  *(this + 440) = 0;
  if (*(this + 471) < 0)
  {
    *(this + 57) = 0;
    v2 = *(this + 56);
  }

  else
  {
    v2 = this + 448;
    *(this + 471) = 0;
  }

  *v2 = 0;
  *(this + 118) = 0;
  *(this + 441) = 0;
  *(this + 238) = 0;
  v11 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  *__p = 0u;
  *v5 = 0u;
  *v6 = 0u;
  *v3 = 0u;
  v4 = 0u;
  sub_10000501C(&v6[1], "");
  sub_10000501C(__p, "");
  WORD4(v9) = 0;
  HIDWORD(v9) = 0;
  v11 = 0;
  v10 = &v10 + 8;
  *(this + 22) = 0;
  std::string::operator=(this + 4, &v3[1]);
  std::string::operator=(this + 5, v5);
  std::string::operator=(this + 6, &v6[1]);
  std::string::operator=(this + 7, __p);
  *(this + 24) = *(&v9 + 1);
  if ((this + 88) != v3)
  {
    sub_100135418(this + 25, v10, &v10 + 1);
  }

  sub_1001349A0(&v10, *(&v10 + 1));
  if (SBYTE7(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[1]);
  }

  if (SHIBYTE(v6[0]) < 0)
  {
    operator delete(v5[0]);
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(v3[1]);
  }
}

void sub_100132FA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void PrivateNetworkTelemetryController::updateTimestampForSession(uint64_t a1, _DWORD *a2, int *a3)
{
  (***(a1 + 48))(&v17);
  ServiceMap = Registry::getServiceMap(v17);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v19 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
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
  if (v18)
  {
    sub_100004A34(v18);
  }

  if (!v13)
  {
    goto LABEL_25;
  }

  v15 = (*(*v13 + 32))(v13);
  v16 = *a3;
  if (*a3 > 1)
  {
    switch(v16)
    {
      case 2:
        a2[40] = v15;
        if (v14)
        {
          return;
        }

        goto LABEL_26;
      case 3:
        a2[41] = v15;
        break;
      case 4:
        a2[42] = v15;
        if (v14)
        {
          return;
        }

        goto LABEL_26;
    }

LABEL_25:
    if (v14)
    {
      return;
    }

    goto LABEL_26;
  }

  if (v16)
  {
    if (v16 == 1)
    {
      a2[39] = v15;
      if (v14)
      {
        return;
      }

      goto LABEL_26;
    }

    goto LABEL_25;
  }

  a2[38] = v15;
  if (v14)
  {
    return;
  }

LABEL_26:
  sub_100004A34(v12);
}

void sub_1001331AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

void PrivateNetworkTelemetryController::sendSessionEvent(uint64_t a1, unsigned int *a2)
{
  PrivateNetworkTelemetryController::calculateOutstandingTimestamps(a1, a2);
  (***(a1 + 48))(&v76);
  ServiceMap = Registry::getServiceMap(v76);
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
  v74 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v74);
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
  if (v77)
  {
    sub_100004A34(v77);
  }

  if (v12)
  {
    v89 = 0;
    v14 = xpc_dictionary_create(0, 0, 0);
    v15 = v14;
    if (v14)
    {
      v89 = v14;
    }

    else
    {
      v15 = xpc_null_create();
      v89 = v15;
      if (!v15)
      {
        v16 = xpc_null_create();
        v15 = 0;
        goto LABEL_21;
      }
    }

    if (xpc_get_type(v15) == &_xpc_type_dictionary)
    {
      xpc_retain(v15);
LABEL_22:
      xpc_release(v15);
      v17 = (a1 + 248);
      if (*(a1 + 271) < 0)
      {
        v17 = *v17;
      }

      v87 = xpc_string_create(v17);
      if (!v87)
      {
        v87 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "privateNetworkHplmnMcc";
      sub_10000F688(&v76, &v87, &v88);
      xpc_release(v88);
      v88 = 0;
      xpc_release(v87);
      v87 = 0;
      v18 = (a1 + 272);
      if (*(a1 + 295) < 0)
      {
        v18 = *v18;
      }

      v85 = xpc_string_create(v18);
      if (!v85)
      {
        v85 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "privateNetworkHplmnMnc";
      sub_10000F688(&v76, &v85, &v86);
      xpc_release(v86);
      v86 = 0;
      xpc_release(v85);
      v85 = 0;
      v19 = (a1 + 296);
      if (*(a1 + 319) < 0)
      {
        v19 = *v19;
      }

      v83 = xpc_string_create(v19);
      if (!v83)
      {
        v83 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "privateNetworkGid1";
      sub_10000F688(&v76, &v83, &v84);
      xpc_release(v84);
      v84 = 0;
      xpc_release(v83);
      v83 = 0;
      v20 = (a1 + 320);
      if (*(a1 + 343) < 0)
      {
        v20 = *v20;
      }

      v81 = xpc_string_create(v20);
      if (!v81)
      {
        v81 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "privateNetworkGid2";
      sub_10000F688(&v76, &v81, &v82);
      xpc_release(v82);
      v82 = 0;
      xpc_release(v81);
      v81 = 0;
      PrivateNetworkTelemetryController::ratAsString(*(a1 + 64), &v76);
      if (v78 >= 0)
      {
        v21 = &v76;
      }

      else
      {
        v21 = v76;
      }

      v79 = xpc_string_create(v21);
      if (!v79)
      {
        v79 = xpc_null_create();
      }

      v74 = &v89;
      v75 = "privateNetworkRat";
      sub_10000F688(&v74, &v79, &v80);
      xpc_release(v80);
      v80 = 0;
      xpc_release(v79);
      v79 = 0;
      if (v78 < 0)
      {
        operator delete(v76);
      }

      v72 = xpc_int64_create(*(a1 + 68));
      if (!v72)
      {
        v72 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "privateNetworkBand";
      sub_10000F688(&v76, &v72, &v73);
      xpc_release(v73);
      v73 = 0;
      xpc_release(v72);
      v72 = 0;
      v22 = (a1 + 344);
      if (*(a1 + 367) < 0)
      {
        v22 = *v22;
      }

      v70 = xpc_string_create(v22);
      if (!v70)
      {
        v70 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "macroHplmnMcc";
      sub_10000F688(&v76, &v70, &v71);
      xpc_release(v71);
      v71 = 0;
      xpc_release(v70);
      v70 = 0;
      v23 = (a1 + 368);
      if (*(a1 + 391) < 0)
      {
        v23 = *v23;
      }

      v68 = xpc_string_create(v23);
      if (!v68)
      {
        v68 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "macroHplmnMnc";
      sub_10000F688(&v76, &v68, &v69);
      xpc_release(v69);
      v69 = 0;
      xpc_release(v68);
      v68 = 0;
      v24 = (a1 + 392);
      if (*(a1 + 415) < 0)
      {
        v24 = *v24;
      }

      v66 = xpc_string_create(v24);
      if (!v66)
      {
        v66 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "macroGid1";
      sub_10000F688(&v76, &v66, &v67);
      xpc_release(v67);
      v67 = 0;
      xpc_release(v66);
      v66 = 0;
      v25 = (a1 + 416);
      if (*(a1 + 439) < 0)
      {
        v25 = *v25;
      }

      v64 = xpc_string_create(v25);
      if (!v64)
      {
        v64 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "macroGid2";
      sub_10000F688(&v76, &v64, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v64);
      v64 = 0;
      PrivateNetworkTelemetryController::ratAsString(*(a1 + 72), &v76);
      if (v78 >= 0)
      {
        v26 = &v76;
      }

      else
      {
        v26 = v76;
      }

      v62 = xpc_string_create(v26);
      if (!v62)
      {
        v62 = xpc_null_create();
      }

      v74 = &v89;
      v75 = "macroRat";
      sub_10000F688(&v74, &v62, &v63);
      xpc_release(v63);
      v63 = 0;
      xpc_release(v62);
      v62 = 0;
      if (v78 < 0)
      {
        operator delete(v76);
      }

      v60 = xpc_int64_create(*(a1 + 76));
      if (!v60)
      {
        v60 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "macroBand";
      sub_10000F688(&v76, &v60, &v61);
      xpc_release(v61);
      v61 = 0;
      xpc_release(v60);
      v60 = 0;
      v58 = xpc_BOOL_create(*(a1 + 441));
      if (!v58)
      {
        v58 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "isCellularDataPreferredOverWifi";
      sub_10000F688(&v76, &v58, &v59);
      xpc_release(v59);
      v59 = 0;
      xpc_release(v58);
      v58 = 0;
      v27 = (a1 + 448);
      if (*(a1 + 471) < 0)
      {
        v27 = *v27;
      }

      v56 = xpc_string_create(v27);
      if (!v56)
      {
        v56 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "geofenceInfoProfileVersion";
      sub_10000F688(&v76, &v56, &v57);
      xpc_release(v57);
      v57 = 0;
      xpc_release(v56);
      v56 = 0;
      v54 = xpc_int64_create(*a2);
      if (!v54)
      {
        v54 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "sessionLength";
      sub_10000F688(&v76, &v54, &v55);
      xpc_release(v55);
      v55 = 0;
      xpc_release(v54);
      v54 = 0;
      PrivateNetworkTelemetryController::sessionReasonAsString(a2[1], &v76);
      if (v78 >= 0)
      {
        v28 = &v76;
      }

      else
      {
        v28 = v76;
      }

      v52 = xpc_string_create(v28);
      if (!v52)
      {
        v52 = xpc_null_create();
      }

      v74 = &v89;
      v75 = "sessionStartReason";
      sub_10000F688(&v74, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      xpc_release(v52);
      v52 = 0;
      if (v78 < 0)
      {
        operator delete(v76);
      }

      PrivateNetworkTelemetryController::sessionReasonAsString(a2[2], &v76);
      if (v78 >= 0)
      {
        v29 = &v76;
      }

      else
      {
        v29 = v76;
      }

      v50 = xpc_string_create(v29);
      if (!v50)
      {
        v50 = xpc_null_create();
      }

      v74 = &v89;
      v75 = "sessionEndReason";
      sub_10000F688(&v74, &v50, &v51);
      xpc_release(v51);
      v51 = 0;
      xpc_release(v50);
      v50 = 0;
      if (v78 < 0)
      {
        operator delete(v76);
      }

      v48 = xpc_BOOL_create(*(a2 + 12));
      if (!v48)
      {
        v48 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "isRegisteredSuccessfully";
      sub_10000F688(&v76, &v48, &v49);
      xpc_release(v49);
      v49 = 0;
      xpc_release(v48);
      v48 = 0;
      if (*(a2 + 39) >= 0)
      {
        v30 = (a2 + 4);
      }

      else
      {
        v30 = *(a2 + 2);
      }

      v46 = xpc_string_create(v30);
      if (!v46)
      {
        v46 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "geofenceId";
      sub_10000F688(&v76, &v46, &v47);
      xpc_release(v47);
      v47 = 0;
      xpc_release(v46);
      v46 = 0;
      v44 = xpc_int64_create(*(a2 + 32));
      if (!v44)
      {
        v44 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "geofenceRadius";
      sub_10000F688(&v76, &v44, &v45);
      xpc_release(v45);
      v45 = 0;
      xpc_release(v44);
      v44 = 0;
      v42 = xpc_int64_create(a2[32]);
      if (!v42)
      {
        v42 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "timeToDisablePrivateNetworkAfterGeofenceExit";
      sub_10000F688(&v76, &v42, &v43);
      xpc_release(v43);
      v43 = 0;
      xpc_release(v42);
      v42 = 0;
      v40 = xpc_int64_create(a2[33]);
      if (!v40)
      {
        v40 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "timeToRegisterPrivateNetworkAfterGeofenceEntry";
      sub_10000F688(&v76, &v40, &v41);
      xpc_release(v41);
      v41 = 0;
      xpc_release(v40);
      v40 = 0;
      v38 = xpc_int64_create(a2[34]);
      if (!v38)
      {
        v38 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "timeToSwitchDdsToPrivateNetworkGeofenceEntry";
      sub_10000F688(&v76, &v38, &v39);
      xpc_release(v39);
      v39 = 0;
      xpc_release(v38);
      v38 = 0;
      v36 = xpc_int64_create(a2[35]);
      if (!v36)
      {
        v36 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "durationprivateNetworkIsRecommended";
      sub_10000F688(&v76, &v36, &v37);
      xpc_release(v37);
      v37 = 0;
      xpc_release(v36);
      v36 = 0;
      v34 = xpc_int64_create(a2[36]);
      if (!v34)
      {
        v34 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "durationprivateNetworkIsNotRecommended";
      sub_10000F688(&v76, &v34, &v35);
      xpc_release(v35);
      v35 = 0;
      xpc_release(v34);
      v34 = 0;
      v32 = xpc_int64_create(*(a2 + 74));
      if (!v32)
      {
        v32 = xpc_null_create();
      }

      v76 = &v89;
      v77 = "numDataSwitches";
      sub_10000F688(&v76, &v32, &v33);
      xpc_release(v33);
      v33 = 0;
      xpc_release(v32);
      v32 = 0;
      PrivateNetworkTelemetryController::dumpSessionMetric(a1, a2);
      v31 = v89;
      if (v89)
      {
        xpc_retain(v89);
      }

      else
      {
        v31 = xpc_null_create();
      }

      (*(*v12 + 16))(v12, "commCenterprivateNetworkSession", &v31);
      xpc_release(v31);
      v31 = 0;
      xpc_release(v89);
      goto LABEL_119;
    }

    v16 = xpc_null_create();
LABEL_21:
    v89 = v16;
    goto LABEL_22;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017619D0();
  }

LABEL_119:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_100133DB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(*(v12 - 72));
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

void PrivateNetworkTelemetryController::resetMasterSession(PrivateNetworkTelemetryController *this)
{
  memset(v12, 0, sizeof(v12));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  *__p = 0u;
  v6 = 0u;
  *v7 = 0u;
  *v4 = 0u;
  *v5 = 0u;
  v3 = 0u;
  sub_1001347F8(&v3);
  *(this + 63) = v3;
  *(this + 509) = *(&v3 + 5);
  std::string::operator=((this + 520), v4);
  std::string::operator=((this + 544), &v5[1]);
  *(this + 284) = v7[0];
  *(this + 570) = BYTE2(v7[0]);
  std::string::operator=(this + 24, &v7[1]);
  *(this + 600) = __p[0];
  std::string::operator=((this + 608), &__p[1]);
  v2 = v12[0];
  *(this + 632) = v11;
  *(this + 648) = v2;
  *(this + 660) = *(v12 + 12);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[1]);
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

void PrivateNetworkTelemetryController::calculateOutstandingTimestamps(void (****this)(Registry **__return_ptr), _DWORD *a2)
{
  v4 = a2[38];
  if (v4)
  {
    *a2 = PrivateNetworkTelemetryController::calculateTimeInterval(this, v4);
    a2[38] = 0;
  }

  v5 = a2[42];
  if (v5)
  {
    v6 = *(this + 81);
    v7 = PrivateNetworkTelemetryController::calculateTimeInterval(this, v5);
    if (v6 == 1)
    {
      a2[35] += v7;
    }

    else
    {
      a2[36] += v7;
    }

    v8 = 4;
    PrivateNetworkTelemetryController::updateTimestampForSession(this, a2, &v8);
  }
}

void PrivateNetworkTelemetryController::dumpSessionMetric(uint64_t a1, int *a2)
{
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 248);
    if (*(a1 + 271) < 0)
    {
      v5 = *v5;
    }

    v6 = (a1 + 272);
    if (*(a1 + 295) < 0)
    {
      v6 = *v6;
    }

    v7 = (a1 + 296);
    if (*(a1 + 319) < 0)
    {
      v7 = *v7;
    }

    v8 = (a1 + 320);
    if (*(a1 + 343) < 0)
    {
      v8 = *v8;
    }

    PrivateNetworkTelemetryController::ratAsString(*(a1 + 64), v49);
    if (v50 >= 0)
    {
      v9 = v49;
    }

    else
    {
      v9 = v49[0];
    }

    v42 = v9;
    v10 = (a1 + 344);
    if (*(a1 + 367) < 0)
    {
      v10 = *v10;
    }

    v11 = (a1 + 368);
    if (*(a1 + 391) < 0)
    {
      v11 = *v11;
    }

    v12 = (a1 + 392);
    if (*(a1 + 415) < 0)
    {
      v12 = *v12;
    }

    v13 = (a1 + 416);
    v40 = v12;
    v41 = v11;
    if (*(a1 + 439) < 0)
    {
      v13 = *v13;
    }

    v39 = v13;
    v38 = *(a1 + 68);
    PrivateNetworkTelemetryController::ratAsString(*(a1 + 72), v47);
    if (v48 >= 0)
    {
      v14 = v47;
    }

    else
    {
      v14 = v47[0];
    }

    v36 = v14;
    v37 = v8;
    v15 = (a1 + 448);
    v16 = v7;
    if (*(a1 + 471) < 0)
    {
      v15 = *v15;
    }

    v17 = v5;
    v18 = *(a1 + 76);
    v19 = *(a1 + 441);
    v34 = v18;
    v35 = *a2;
    PrivateNetworkTelemetryController::sessionReasonAsString(a2[1], v45);
    v20 = v46;
    v21 = v45[0];
    PrivateNetworkTelemetryController::sessionReasonAsString(a2[2], __p);
    v22 = v45;
    if (v20 < 0)
    {
      v22 = v21;
    }

    v25 = *(a2 + 2);
    v24 = a2 + 4;
    v23 = v25;
    if (v44 >= 0)
    {
      v26 = __p;
    }

    else
    {
      v26 = __p[0];
    }

    v27 = *(v24 - 4);
    if (*(v24 + 23) >= 0)
    {
      v23 = v24;
    }

    v28 = *(v24 + 24);
    v29 = v24[28];
    v30 = v24[29];
    v31 = v24[30];
    v32 = v24[31];
    v33 = v24[32];
    *buf = 136321282;
    v52 = v17;
    v53 = 2080;
    v54 = v6;
    v55 = 2080;
    v56 = v16;
    v57 = 2080;
    v58 = v37;
    v59 = 2080;
    v60 = v42;
    v61 = 1024;
    v62 = v38;
    v63 = 2080;
    v64 = v10;
    v65 = 2080;
    v66 = v41;
    v67 = 2080;
    v68 = v40;
    v69 = 2080;
    v70 = v39;
    v71 = 2080;
    v72 = v36;
    v73 = 1024;
    v74 = v34;
    v75 = 1024;
    v76 = v19;
    v77 = 2080;
    v78 = v15;
    v79 = 1024;
    v80 = v35;
    v81 = 2080;
    v82 = v22;
    v83 = 2080;
    v84 = v26;
    v85 = 1024;
    v86 = v27;
    v87 = 2080;
    v88 = v23;
    v89 = 1024;
    v90 = v28;
    v91 = 1024;
    v92 = v29;
    v93 = 1024;
    v94 = v30;
    v95 = 1024;
    v96 = v31;
    v97 = 1024;
    v98 = v32;
    v99 = 1024;
    v100 = v33;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [PnwMcc, PnwMnc, PnwGid1, PnwGid2, PnwRat, PnwBand]: (%s, %s, %s, %s, %s, %d), [MacroMcc, MacroMnc, MacroGid1, MacroGid2, MacroRat, MacroBand]: (%s, %s, %s, %s, %s, %d), IsCellularDataPreferredOverWifi: %d, GeofenceInfoProfileVersion: %s, SessionLength: %d, StartReason: %s, EndReason: %s, IsRegisteredSuccessfully: %d, GeofenceId: %s, GeofenceRadius: %d, TimeToDisablePnwAfterGeofenceExit: %d, TimeToRegisterPnwAfterGeofenceEntry: %d, TimeToSwitchDdsToPnwAfterGeofenceEntry: %d, DurationPnwIsRecommended: %d, DurationPnwIsNotRecommended: %d", buf, 0xD0u);
    if (v44 < 0)
    {
      operator delete(__p[0]);
    }

    if (v46 < 0)
    {
      operator delete(v45[0]);
    }

    if (v48 < 0)
    {
      operator delete(v47[0]);
    }

    if (v50 < 0)
    {
      operator delete(v49[0]);
    }
  }
}

void sub_100134478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t PrivateNetworkTelemetryController::calculateTimeInterval(void (****this)(Registry **__return_ptr), int a2)
{
  (**this[6])(&v15);
  ServiceMap = Registry::getServiceMap(v15);
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
  v17 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v17);
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
      goto LABEL_9;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
  v12 = 1;
LABEL_9:
  if (v16)
  {
    sub_100004A34(v16);
  }

  if (!v11)
  {
    v13 = 0;
    if (v12)
    {
      return v13;
    }

    goto LABEL_13;
  }

  v13 = (*(*v11 + 32))(v11) - a2;
  if ((v12 & 1) == 0)
  {
LABEL_13:
    sub_100004A34(v10);
  }

  return v13;
}

void sub_100134620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013464C(uint64_t a1)
{
  v2 = sub_10000501C(a1, "");
  sub_10000501C(v2 + 24, "");
  sub_10000501C((a1 + 48), "");
  sub_10000501C((a1 + 72), "");
  sub_10000501C((a1 + 96), "");
  sub_10000501C((a1 + 120), "");
  sub_10000501C((a1 + 144), "");
  sub_10000501C((a1 + 168), "");
  sub_10000501C((a1 + 192), "");
  *(a1 + 216) = 0;
  *(a1 + 218) = 0;
  sub_10000501C((a1 + 224), "");
  *(a1 + 248) = 0;
  *(a1 + 252) = 0;
  return a1;
}

void sub_10013471C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  if (*(v1 + 191) < 0)
  {
    operator delete(*(v1 + 168));
  }

  if (*(v1 + 167) < 0)
  {
    operator delete(*(v1 + 144));
  }

  if (*(v1 + 143) < 0)
  {
    operator delete(*(v1 + 120));
  }

  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

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

uint64_t sub_1001347F8(uint64_t a1)
{
  *a1 = 0x900000000;
  *(a1 + 8) = 9;
  *(a1 + 12) = 0;
  sub_10000501C((a1 + 16), "");
  sub_10000501C((a1 + 40), "");
  *(a1 + 64) = 0;
  *(a1 + 66) = 0;
  sub_10000501C((a1 + 72), "");
  *(a1 + 96) = 0;
  sub_10000501C((a1 + 104), "");
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 142) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  return a1;
}

void sub_100134890(_Unwind_Exception *exception_object)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1001348DC(uint64_t a1)
{
  if (*(a1 + 247) < 0)
  {
    operator delete(*(a1 + 224));
  }

  if (*(a1 + 215) < 0)
  {
    operator delete(*(a1 + 192));
  }

  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

  return a1;
}

void sub_1001349A0(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_1001349A0(a1, *a2);
    sub_1001349A0(a1, *(a2 + 1));
    if (a2[127] < 0)
    {
      operator delete(*(a2 + 13));
    }

    if (a2[103] < 0)
    {
      operator delete(*(a2 + 10));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

uint64_t sub_100134A24(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_100134BF4((a1 + 8), a2 + 8);
  *(a1 + 32) = *(a2 + 32);
  if (*(a2 + 63) < 0)
  {
    sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  else
  {
    v4 = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 40) = v4;
  }

  if (*(a2 + 87) < 0)
  {
    sub_100005F2C((a1 + 64), *(a2 + 64), *(a2 + 72));
  }

  else
  {
    v5 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v5;
  }

  if (*(a2 + 111) < 0)
  {
    sub_100005F2C((a1 + 88), *(a2 + 88), *(a2 + 96));
  }

  else
  {
    v6 = *(a2 + 88);
    *(a1 + 104) = *(a2 + 104);
    *(a1 + 88) = v6;
  }

  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v7 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v7;
  }

  sub_10006F264(a1 + 136, (a2 + 136));
  sub_10006F264(a1 + 168, (a2 + 168));
  *(a1 + 200) = *(a2 + 200);
  sub_100134E64(a1 + 208, a2 + 208);
  *(a1 + 344) = *(a2 + 344);
  return a1;
}

void sub_100134B34(_Unwind_Exception *a1)
{
  if (*(v1 + 111) < 0)
  {
    operator delete(*(v1 + 88));
  }

  if (*(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  sub_100009970(v1 + 8, *(v1 + 16));
  _Unwind_Resume(a1);
}

void *sub_100134BF4(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100134C4C(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100134C4C(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100134CD4(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100134CD4(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100134D64();
  }

  return result;
}

void sub_100134E00(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100134E1C(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 32);
    if (v3)
    {
      *(v1 - 24) = v3;
      operator delete(v3);
    }

    v1 -= 40;
  }
}

uint64_t sub_100134E64(uint64_t a1, uint64_t a2)
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

  *(a1 + 104) = *(a2 + 104);
  sub_100134FB8((a1 + 112), a2 + 112);
  return a1;
}

void sub_100134F54(_Unwind_Exception *exception_object)
{
  if (*(v2 + 79) < 0)
  {
    operator delete(*(v2 + 56));
  }

  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100134FB8(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100135010(a1, *a2, (a2 + 8));
  return a1;
}

void *sub_100135010(void *result, void **a2, void **a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100135098(v5, (v5 + 1), v4 + 4);
      v6 = v4[1];
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
          v7 = v4[2];
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

void *sub_100135098(void *a1, uint64_t a2, void **a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_100074A00(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100135128();
  }

  return result;
}

void sub_1001351A0(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001352A0(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1001351BC(char *__dst, __int128 *a2)
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

  v5 = *(a2 + 24);
  *(__dst + 5) = *(a2 + 5);
  *(__dst + 24) = v5;
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

void sub_10013526C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 71) < 0)
  {
    operator delete(*(v1 + 48));
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001352A0(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 127) < 0)
    {
      operator delete(__p[13]);
    }

    if (*(__p + 103) < 0)
    {
      operator delete(__p[10]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_100135324(uint64_t a1)
{
  sub_1001349A0(a1 + 320, *(a1 + 328));
  if (*(a1 + 311) < 0)
  {
    operator delete(*(a1 + 288));
  }

  if (*(a1 + 287) < 0)
  {
    operator delete(*(a1 + 264));
  }

  if (*(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 239) < 0)
  {
    operator delete(*(a1 + 216));
  }

  if (*(a1 + 192) == 1 && *(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  sub_100009970(a1 + 8, *(a1 + 16));
  return a1;
}

uint64_t **sub_100135418(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_1001355A0((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10013566C(&v13);
  }

  if (a2 != a3)
  {
    sub_1001356C4();
  }

  return result;
}

uint64_t sub_1001355A0(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  v4 = *(a2 + 40);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 40) = v4;
  std::string::operator=((a1 + 48), (a2 + 48));
  std::string::operator=((a1 + 72), (a2 + 72));
  return a1;
}

void *sub_1001355F4(uint64_t a1, void *a2, void *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if ((sub_1000068BC(a3, (v4 + 32)) & 0x80) == 0)
        {
          break;
        }

        v4 = *v5;
        result = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    result = v5 + 1;
  }

  else
  {
    result = (a1 + 8);
  }

LABEL_8:
  *a2 = v5;
  return result;
}

uint64_t sub_10013566C(uint64_t a1)
{
  sub_1001349A0(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_1001349A0(*a1, v2);
  }

  return a1;
}

void sub_1001356C4()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_100135128();
}

void sub_100135728(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_1001352A0(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013574C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10013574C(a1, *a2);
    sub_10013574C(a1, a2[1]);
    sub_1001357B8(a1, (a2 + 4));

    operator delete(a2);
  }
}

void sub_1001357B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 151) < 0)
  {
    operator delete(*(a2 + 128));
  }

  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

void sub_1001358C0(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100135994);
  __cxa_rethrow();
}

void sub_100135900(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100135954(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100135994(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1001359C0(uint64_t **a1)
{
  v1 = **a1;
  (***(v1 + 48))(&aBlock);
  ServiceMap = Registry::getServiceMap(aBlock);
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
  v20 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v20);
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
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v10)
  {
    sub_100004AA0(&aBlock, (v1 + 8));
    v12 = v15;
    v20 = aBlock;
    v21 = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 16), 1uLL, memory_order_relaxed);
      sub_100004A34(v12);
    }

    v13 = *(v1 + 24);
    object = v13;
    if (v13)
    {
      dispatch_retain(v13);
    }

    aBlock = _NSConcreteStackBlock;
    v15 = 0x40000000;
    v16 = sub_100135E00;
    v17 = &unk_101E2AF40;
    v18 = v1;
    sub_100135C60(v10, "commCenterPnwDailyEvents", 1, &v20, &object, &aBlock);
    if (object)
    {
      dispatch_release(object);
    }

    if (v21)
    {
      std::__shared_weak_count::__release_weak(v21);
      if (v11)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else if (os_log_type_enabled(*(v1 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_1017619D0();
    if (v11)
    {
LABEL_24:
      operator delete();
    }

LABEL_23:
    sub_100004A34(v9);
    goto LABEL_24;
  }

  if (v11)
  {
    goto LABEL_24;
  }

  goto LABEL_23;
}

void sub_100135BEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, dispatch_object_t object, uint64_t a17, std::__shared_weak_count *a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_weak(a18);
  }

  if ((v19 & 1) == 0)
  {
    sub_100004A34(v18);
  }

  operator delete();
}

void sub_100135C60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, dispatch_object_t *a5, void *aBlock)
{
  if (a2 && aBlock && *a5)
  {
    v11 = _Block_copy(aBlock);
    v12 = v11;
    object = *a5;
    *a5 = 0;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 1174405120;
    v15[2] = sub_100135E44;
    v15[3] = &unk_101E2AF60;
    v13 = a4[1];
    v15[4] = *a4;
    v16 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    }

    if (v11)
    {
      v14 = _Block_copy(v11);
    }

    else
    {
      v14 = 0;
    }

    aBlocka = v14;
    (*(*a1 + 40))(a1, a2, a3, &object, v15);
    if (object)
    {
      dispatch_release(object);
    }

    if (aBlocka)
    {
      _Block_release(aBlocka);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_weak(v16);
    }

    if (v12)
    {
      _Block_release(v12);
    }
  }
}

void sub_100135DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, void *aBlock, dispatch_object_t object)
{
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (a14)
  {
    std::__shared_weak_count::__release_weak(a14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v16)
  {
    _Block_release(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_100135E00(uint64_t a1)
{
  v1 = *(a1 + 32);
  PrivateNetworkTelemetryController::sendPopulationMetric(v1);
  PrivateNetworkTelemetryController::sendGeofenceMetric(v1);

  PrivateNetworkTelemetryController::resetSessions(v1);
}

void sub_100135E44(void *a1, uint64_t a2)
{
  v3 = a1[5];
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (a1[4])
      {
        sub_100135ED0(a1 + 6, a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_100135ED0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v4 = *(a2 + 16);
  }

  (*(v2 + 16))(v2, __p);
  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100135F48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100135F64(void *a1, void *a2)
{
  v3 = a2[5];
  a1[4] = a2[4];
  a1[5] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  result = a2[6];
  if (result)
  {
    result = _Block_copy(result);
  }

  a1[6] = result;
  return result;
}

void sub_100135FB0(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    std::__shared_weak_count::__release_weak(v3);
  }
}

uint64_t sub_100136004(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1001360A8();
  }

  return result;
}

void sub_100136134(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001361E0(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_100136150(char *__dst, __int128 **a2)
{
  v3 = *a2;
  if (*(*a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *v3, *(v3 + 1));
  }

  else
  {
    v4 = *v3;
    *(__dst + 2) = *(v3 + 2);
    *__dst = v4;
  }

  *(__dst + 24) = 0u;
  *(__dst + 168) = 0u;
  *(__dst + 184) = 0u;
  *(__dst + 136) = 0u;
  *(__dst + 152) = 0u;
  *(__dst + 104) = 0u;
  *(__dst + 120) = 0u;
  *(__dst + 72) = 0u;
  *(__dst + 88) = 0u;
  *(__dst + 40) = 0u;
  *(__dst + 56) = 0u;
  sub_1001347F8((__dst + 24));
  return __dst;
}

void sub_1001361C4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001361E0(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    sub_1001357B8(*a1, __p + 32);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

uint64_t sub_100136240(uint64_t **a1, void **a2)
{
  v3 = sub_100007A6C(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  sub_100136288(a1, v3);
  return 1;
}

uint64_t *sub_100136288(uint64_t **a1, uint64_t *a2)
{
  v4 = sub_1000194D8(a1, a2);
  sub_1001357B8(a1, (a2 + 4));
  operator delete(a2);
  return v4;
}

void sub_1001362D4(uint64_t a1)
{
  v1 = a1;
  memset(v2, 0, sizeof(v2));
  sub_100A5C2CC(v2, &v1, "kAudioSetAudioPath", sub_1001366A0, 3);
}

void sub_1001366A0(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v19 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v19 = a4;
    v20 = "kAudioDownPath";
    sub_100006354(&v19, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    v19 = a4;
    v20 = "kAudioUpPath";
    sub_100006354(&v19, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v17);
    xpc_release(object);
    (*(*v13 + 16))(v13, v16, v18);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100136814(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100136868(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v19 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v19 = a4;
    v20 = "kAudioVolume";
    sub_100006354(&v19, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    v19 = a4;
    v20 = "kAudioSource";
    sub_100006354(&v19, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v17);
    xpc_release(object);
    (*(*v13 + 32))(v13, v16, v18);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1001369DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100136A30(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v19 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v19 = a4;
    v20 = "kAudioMuteChannel";
    sub_100006354(&v19, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    v19 = a4;
    v20 = "kAudioMuteState";
    sub_100006354(&v19, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v17);
    xpc_release(object);
    (*(*v13 + 64))(v13, v16, v18 != 0);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100136BA8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100136BFC(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v19 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v19 = a4;
    v20 = "kAudioI2SInterface";
    sub_100006354(&v19, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    v19 = a4;
    v20 = "kAudioChannelFormat";
    sub_100006354(&v19, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v17);
    xpc_release(object);
    (*(*v13 + 72))(v13, v16, v18);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100136D70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100136DC4(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v17[0] = a4;
    v17[1] = "kAudioPcmDirection";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 80))(v13, v16);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100136F04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100136F3C(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 88))(v9);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_100137044(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137064(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v17[0] = a4;
    v17[1] = "kAudioPcmMixState";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 96))(v13, v16);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1001371A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001371DC(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v17[0] = a4;
    v17[1] = "kAudioBoolean";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 128))(v13, v16 != 0);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100137320(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137358(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v19 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v19);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v19 = a4;
    v20 = "kAudioEnableEchoCancelation";
    sub_100006354(&v19, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    v19 = a4;
    v20 = "kAudioEnableNoiseReduction";
    sub_100006354(&v19, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v17);
    xpc_release(object);
    (*(*v13 + 136))(v13, v16 != 0, v18 != 0);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1001374D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137528(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
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
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_10:
  *&buf = a4;
  *(&buf + 1) = "kAudioBoolean";
  sub_100006354(&buf, &object);
  v16 = xpc::dyn_cast_or_default(&object, 0, v15);
  xpc_release(object);
  v17 = v16;
  v18 = *sub_1000200C8();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = CSIBOOLAsString(v17 != 0);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Submitting TTY Switch Status metric with %s", &buf, 0xCu);
  }

  TMKXPCServer.shutdown()();
  (*(*v13 + 144))(v13, v17 != 0);
LABEL_13:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100137700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object)
{
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013774C(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (!v12)
  {
    v14 = 0;
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
LABEL_7:
    v18 = xpc_int64_create(45);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v17[0] = *a5;
    v17[1] = "kPosixError";
    sub_10000F688(v17, &v18, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v18);
    v18 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v16 = a5[1];
  v20 = *a5;
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 152))(v14, &v20);
  if (v21)
  {
    sub_100004A34(v21);
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_1001378E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137908(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v17[0] = a4;
    v17[1] = "kAudioMuteState";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 40))(v13, v16 != 0);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100137A4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137A84(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
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
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (!v12)
  {
    v14 = 0;
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
LABEL_7:
    v18 = xpc_int64_create(45);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v17[0] = *a5;
    v17[1] = "kPosixError";
    sub_10000F688(v17, &v18, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v18);
    v18 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v16 = a5[1];
  v20 = *a5;
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 48))(v14, &v20);
  if (v21)
  {
    sub_100004A34(v21);
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_100137C18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137C40(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v17[0] = a4;
    v17[1] = "kAudioMuteState";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 56))(v13, v16 != 0);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100137D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137DBC(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v21 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v21);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v21 = a4;
    v22 = "kAudioTone";
    sub_100006354(&v21, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    v21 = a4;
    v22 = "kAudioToneCount";
    sub_100006354(&v21, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v17);
    xpc_release(object);
    v21 = a4;
    v22 = "kAudioToneMix";
    sub_100006354(&v21, &object);
    v20 = xpc::dyn_cast_or_default(&object, 0, v19);
    xpc_release(object);
    (*(*v13 + 112))(v13, v16, v18, v20);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_100137F64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_100137FD4(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = (v3 & 0x7FFFFFFFFFFFFFFFLL);
    v5 = 5381;
    do
    {
      v3 = v5;
      v6 = *v4++;
      v5 = (33 * v5) ^ v6;
    }

    while (v6);
  }

  std::mutex::lock(ServiceMap);
  v11 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v11);
  if (!v7)
  {
    v9 = 0;
LABEL_9:
    std::mutex::unlock(v2);
    v8 = 0;
    v10 = 1;
    if (!v9)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  v10 = 0;
  if (v9)
  {
LABEL_10:
    (*(*v9 + 120))(v9);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_1001380DC(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001380FC(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  if ((v7 & 0x8000000000000000) != 0)
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
  v23 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v23);
  if (!v11)
  {
    v13 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    if (!v13)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
  if (v13)
  {
LABEL_10:
    v23 = a4;
    v24 = "kAudioAction";
    sub_100006354(&v23, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    v23 = a4;
    v24 = "kAudioIntensity";
    sub_100006354(&v23, &object);
    v18 = xpc::dyn_cast_or_default(&object, 0, v17);
    xpc_release(object);
    v23 = a4;
    v24 = "kAudioTotalTime";
    sub_100006354(&v23, &object);
    v20 = xpc::dyn_cast_or_default(&object, 0, v19);
    xpc_release(object);
    v23 = a4;
    v24 = "kAudioOnTime";
    sub_100006354(&v23, &object);
    v22 = xpc::dyn_cast_or_default(&object, 0, v21);
    xpc_release(object);
    (*(*v13 + 104))(v13, v16, v18, v20, v22);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1001382E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013836C(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  v7 = "14AudioInterface";
  if (("14AudioInterface" & 0x8000000000000000) != 0)
  {
    v8 = ("14AudioInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v17[0] = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, v17);
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
      if (!v13)
      {
        goto LABEL_13;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
  if (!v13)
  {
    goto LABEL_13;
  }

LABEL_10:
  if (sub_1001883A0() || sub_1000B1374())
  {
    v17[0] = a4;
    v17[1] = "kAudioLoggingEnabled";
    sub_100006354(v17, &object);
    v16 = xpc::dyn_cast_or_default(&object, 0, v15);
    xpc_release(object);
    (*(*v13 + 32))(v13, v16);
  }

LABEL_13:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1001384BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001384F8(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  v8 = "14AudioInterface";
  if (("14AudioInterface" & 0x8000000000000000) != 0)
  {
    v9 = ("14AudioInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  v17[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v17);
  if (!v12)
  {
    v14 = 0;
LABEL_11:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_11;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
LABEL_7:
    v18 = xpc_int64_create(45);
    if (!v18)
    {
      v18 = xpc_null_create();
    }

    v17[0] = *a5;
    v17[1] = "kPosixError";
    sub_10000F688(v17, &v18, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v18);
    v18 = 0;
    goto LABEL_16;
  }

LABEL_12:
  v16 = a5[1];
  v20 = *a5;
  v21 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 40))(v14, &v20);
  if (v21)
  {
    sub_100004A34(v21);
  }

LABEL_16:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10013868C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1001386B4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v7 = ServiceMap;
  v8 = "14AudioInterface";
  if (("14AudioInterface" & 0x8000000000000000) != 0)
  {
    v9 = ("14AudioInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  *&v31 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v31);
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
    v28 = 0;
    v16 = xpc_dictionary_create(0, 0, 0);
    v17 = v16;
    if (v16)
    {
      v28 = v16;
    }

    else
    {
      v17 = xpc_null_create();
      v28 = v17;
      if (!v17)
      {
        v19 = xpc_null_create();
        v17 = 0;
        goto LABEL_20;
      }
    }

    if (xpc_get_type(v17) == &_xpc_type_dictionary)
    {
      xpc_retain(v17);
LABEL_21:
      xpc_release(v17);
      v26 = xpc_BOOL_create(0);
      if (!v26)
      {
        v26 = xpc_null_create();
      }

      v31 = 0uLL;
      v32 = 0;
      ctu::cf::assign();
      *__p = v31;
      v24 = v32;
      v20 = __p;
      if (v32 < 0)
      {
        v20 = __p[0];
      }

      v25[0] = &v28;
      v25[1] = v20;
      sub_10000F688(v25, &v26, &object);
      xpc_release(object);
      object = 0;
      if (SHIBYTE(v24) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v26);
      v26 = 0;
      v21 = v28;
      if (v28)
      {
        xpc_retain(v28);
      }

      else
      {
        v21 = xpc_null_create();
      }

      *&v31 = *a5;
      *(&v31 + 1) = "kAudioVocoderInfo";
      sub_100DAE90C(&v31, &v21, &v22);
      xpc_release(v22);
      v22 = 0;
      xpc_release(v21);
      v21 = 0;
      xpc_release(v28);
      goto LABEL_31;
    }

    v19 = xpc_null_create();
LABEL_20:
    v28 = v19;
    goto LABEL_21;
  }

LABEL_11:
  v18 = a5[1];
  v29 = *a5;
  v30 = v18;
  if (v18)
  {
    atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 16))(v14, &v29);
  if (v30)
  {
    sub_100004A34(v30);
  }

LABEL_31:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_100138978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object, uint64_t a20, uint64_t a21)
{
  if (*(v24 - 49) < 0)
  {
    operator delete(*(v24 - 72));
  }

  xpc_release(v22);
  xpc_release(object);
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(a1);
}

void sub_1001389E4(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v6 = ServiceMap;
  v7 = "14AudioInterface";
  if (("14AudioInterface" & 0x8000000000000000) != 0)
  {
    v8 = ("14AudioInterface" & 0x7FFFFFFFFFFFFFFFLL);
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
  theDict = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &theDict);
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
      sub_100004A34(v12);
LABEL_9:
      sub_10095B580(0);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v6);
    if (!v13)
    {
      goto LABEL_9;
    }
  }

  theDict = 0;
  xpc_dictionary_get_value(*a4, "kAudioVocoderInfo");
  v26 = _CFXPCCreateCFObjectFromXPCObject();
  sub_100138C38(&theDict, &v26);
  Value = CFDictionaryGetValue(theDict, @"kCTAudioVocoderType");
  v15 = Value;
  if (Value)
  {
    v16 = CFGetTypeID(Value);
    if (v16 != CFStringGetTypeID())
    {
      v15 = 0;
    }
  }

  v17 = CFDictionaryGetValue(theDict, @"kCTAudioVocoderSampleRate");
  v18 = v17;
  if (v17)
  {
    v19 = CFGetTypeID(v17);
    if (v19 != CFNumberGetTypeID())
    {
      v18 = 0;
    }
  }

  v20 = CFDictionaryGetValue(theDict, @"kCTAudioVocoderI2SClockRate");
  v21 = v20;
  if (v20)
  {
    v22 = CFGetTypeID(v20);
    if (v22 != CFNumberGetTypeID())
    {
      v21 = 0;
    }
  }

  v23 = sub_10095B8BC(v15);
  v24 = sub_10095BB28(v18);
  v25 = sub_10095BB28(v21);
  (*(*v13 + 24))(v13, v23, v24, v25);
  sub_10001021C(&theDict);
  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_100138BF4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  if (v2)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_100138C2C()
{
  if (!v0)
  {
    JUMPOUT(0x100138C20);
  }

  JUMPOUT(0x100138C18);
}

void *sub_100138C38(void *a1, CFTypeRef *a2)
{
  v4 = *a2;
  if (*a2 && (v5 = CFGetTypeID(*a2), v5 == CFDictionaryGetTypeID()))
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

void sub_100138CC0()
{
  v0 = 0;
  v1 = 0;
  sub_100139530();
}

void sub_100138DCC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, std::__shared_weak_count *a13, uint64_t a14)
{
  if (a14)
  {
    sub_101760EE4(a14);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  if (a13)
  {
    sub_100004A34(a13);
  }

  _Unwind_Resume(exception_object);
}

void sub_100138E1C(uint64_t a1, Registry **a2)
{
  *a1 = off_101E2B070;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v9, kCtLoggingSystemName, "cp.ids.mgr");
  sub_10013914C(v4, "CellularPlanIDSServiceManager", QOS_CLASS_USER_INITIATED, &v9);
  ctu::OsLogContext::~OsLogContext(&v9);
  *a1 = off_101E2B070;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  Registry::getTelephonyCapabilities(&v9, *a2);
  if ((*(*v9.var0 + 64))(v9.var0))
  {
    v5 = 1;
  }

  else
  {
    Registry::getTelephonyCapabilities(&v7, *a2);
    v5 = (*(*v7 + 56))(v7);
    if (v8)
    {
      sub_100004A34(v8);
    }
  }

  if (v9.var1.fRef)
  {
    sub_100004A34(v9.var1.fRef);
  }

  if (v5)
  {
    sub_1001398A0();
  }

  Registry::getTelephonyCapabilities(&v9, *a2);
  v6 = (*(*v9.var0 + 72))(v9.var0);
  if (v9.var1.fRef)
  {
    sub_100004A34(v9.var1.fRef);
  }

  if (v6)
  {
    sub_1001398A0();
  }

  sub_1001398A0();
}

void sub_1001390AC(_Unwind_Exception *a1)
{
  v4 = v1[13];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = v1[11];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = v1[9];
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = v1[7];
  if (v7)
  {
    sub_100004A34(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((v1 + 5));
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_10013913C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x100139134);
}

void *sub_10013914C(void *a1, const char *a2, dispatch_qos_class_t qos_class, const OsLogContext *a4)
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

void sub_1001391EC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void *sub_100139210(void *a1)
{
  *a1 = off_101E2B070;
  v2 = a1[13];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[11];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[9];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 5));
  sub_1000C0544(a1 + 1);
  return a1;
}

void sub_100139294(void *a1)
{
  sub_100139210(a1);

  operator delete();
}

void sub_1001392CC(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 0x40000000;
  v3[2] = sub_1001393D8;
  v3[3] = &unk_101E2B0A0;
  v3[4] = a1;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, (a1 + 8));
  v2 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_100139AB8;
  block[3] = &unk_101E2B2A0;
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

uint64_t sub_1001393D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[6];
  if (v2)
  {
    (*(*v2 + 16))(v2);
  }

  v3 = v1[8];
  if (v3)
  {
    (*(*v3 + 16))(v3);
  }

  v4 = v1[10];
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  result = v1[12];
  if (result)
  {
    v6 = *(*result + 16);

    return v6();
  }

  return result;
}

uint64_t sub_1001394C0@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 56);
  *a2 = *(result + 48);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1001394DC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 72);
  *a2 = *(result + 64);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_1001394F8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 88);
  *a2 = *(result + 80);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

uint64_t sub_100139514@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 104);
  *a2 = *(result + 96);
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1001395B4(void *a1, Registry **a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E2B188;
  sub_100138E1C((a1 + 3), a2);
}

void sub_100139630(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2B188;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1001396AC(ServiceManager::Service *this)
{
  *this = off_101E2B1D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_100139708(ServiceManager::Service *this)
{
  *this = off_101E2B1D8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1001397DC@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10013981C(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v2);
    dispatch_group_leave(v2);

    dispatch_release(v2);
  }
}

void *sub_10013993C(void *a1, NSObject **a2, uint64_t a3, unsigned __int8 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E2B258;
  sub_100139A34(a1 + 3, a2, a3, a4);
  return a1;
}

void sub_1001399B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E2B258;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100139A34(void *a1, NSObject **a2, uint64_t a3, unsigned __int8 *a4)
{
  v7 = *a2;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  sub_100A479E4(a1, &object, a3, *a4);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_100139AA0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100139AC8(uint64_t result, uint64_t a2)
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

void sub_100139AE4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_100139AFC(uint64_t a1, void *a2, NSObject **a3, char *a4)
{
  *(a1 + 8) = off_101E2B3F8;
  ctu::OsLogContext::OsLogContext(&v14, kCtLoggingSystemName, a4);
  sub_100139EEC((a1 + 16), a3, &v14);
  ctu::OsLogContext::~OsLogContext(&v14);
  v20[0] = off_101E2B528;
  v20[1] = sub_1000A7A74;
  v20[3] = v20;
  sub_100139F78((a1 + 56));
  sub_1000A8744(v20);
  *a1 = off_101E2B2E0;
  *(a1 + 8) = off_101E2B390;
  *(a1 + 64) = a4;
  *(a1 + 72) = *a2;
  v8 = a2[1];
  *(a1 + 80) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, a4);
  v9 = *a3;
  v17 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  object = 0;
  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }

  if (v19 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 120) = 0;
  *(a1 + 112) = a1 + 120;
  *(a1 + 104) = 0;
  *(a1 + 128) = 0;
  *(a1 + 144) = 0;
  *(a1 + 136) = a1 + 144;
  *(a1 + 152) = 0;
  subscriber::makeSimSlotRange();
  var0 = v14.var0;
  fRef = v14.var1.fRef;
  if (v14.var0 != v14.var1.fRef)
  {
    v12 = v15;
    do
    {
      if (v12(*var0))
      {
        break;
      }

      var0 += 4;
    }

    while (var0 != fRef);
    if (var0 != v14.var1.fRef)
    {
      sub_1003B8568();
    }
  }

  return a1;
}

void sub_100139DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, dispatch_object_t object, dispatch_object_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, char a25)
{
  sub_10006DCAC(v27, *(v25 + 144));
  sub_10013C430(v26, *(v25 + 120));
  v29 = *(v25 + 96);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v25 + 80);
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = *(v25 + 56);
  *(v25 + 56) = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
  }

  ctu::OsLogLogger::~OsLogLogger((v25 + 48));
  sub_1000C0544((v25 + 16));
  DataiRatControllerInterface::~DataiRatControllerInterface(v25);
  _Unwind_Resume(a1);
}

void *sub_100139EEC(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100139F54(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

capabilities::ct *sub_100139F78(capabilities::ct *a1)
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

void sub_10013A0D0(uint64_t a1, ...)
{
  va_start(va, a1);
  sub_1000A8744(va);
  operator delete();
}

void sub_10013A13C(uint64_t a1)
{
  sub_10000501C(&v5, *(a1 + 64));
  if (v7 < 0)
  {
    v2 = v6;
    operator delete(v5);
    if (v2)
    {
LABEL_4:
      Registry::createRestModuleOneTimeUseConnection(&v3, *(a1 + 72));
      ctu::RestModule::connect();
      if (v4)
      {
        sub_100004A34(v4);
      }

      v5 = sub_10013A220;
      v6 = 0;
      sub_10013C5AC();
    }
  }

  else if (v7)
  {
    goto LABEL_4;
  }

  *(a1 + 64) = "iRatController";
  goto LABEL_4;
}

void sub_10013A208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10013A220(uint64_t result, void *a2)
{
  v2 = result;
  v3 = *(result + 136);
  if (*(result + 152) == a2[2])
  {
    if (v3 == (result + 144))
    {
      return result;
    }

    v4 = *a2;
    v5 = *(result + 136);
    while (1)
    {
      v6 = *(v5 + 7) == *(v4 + 7) && *(v5 + 32) == *(v4 + 32);
      if (!v6)
      {
        break;
      }

      v7 = v5[1];
      v8 = v5;
      if (v7)
      {
        do
        {
          v5 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v5 = v8[2];
          v6 = *v5 == v8;
          v8 = v5;
        }

        while (!v6);
      }

      v9 = v4[1];
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
          v10 = v4[2];
          v6 = *v10 == v4;
          v4 = v10;
        }

        while (!v6);
      }

      v4 = v10;
      if (v5 == (result + 144))
      {
        return result;
      }
    }
  }

  if (v3 != (result + 144))
  {
    v11 = a2 + 1;
    do
    {
      v12 = *v11;
      v13 = *(v3 + 7);
      if (!*v11)
      {
        goto LABEL_30;
      }

      v14 = v11;
      do
      {
        if (*(v12 + 28) >= v13)
        {
          v14 = v12;
        }

        v12 = *(v12 + 8 * (*(v12 + 28) < v13));
      }

      while (v12);
      if (v14 == v11 || v13 < *(v14 + 7))
      {
LABEL_30:
        v15 = *(v3 + 32);
LABEL_31:
        v20 = *(v3 + 7);
        v16 = *(*(**(result + 56) + 16))(*(result + 56));
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v22 = CSIBOOLAsString(v15);
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Potential interface cost changed to %s. Informing iRat", buf, 0xCu);
        }

        v17 = sub_100007DEC(v2 + 112, &v20);
        sub_1003B92B0(*v17);
      }

      v15 = *(v3 + 32);
      if (*(v14 + 32) != v15)
      {
        goto LABEL_31;
      }

      v18 = v3[1];
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
          v19 = v3[2];
          v6 = *v19 == v3;
          v3 = v19;
        }

        while (!v6);
      }

      v3 = v19;
    }

    while (v19 != (result + 144));
  }

  return result;
}

void sub_10013A4AC(uint64_t a1, int a2)
{
  if (*(a1 + 104) != a2)
  {
    v15 = v2;
    v16 = v3;
    v6 = *(a1 + 112);
    v7 = (a1 + 120);
    if (v6 != (a1 + 120))
    {
      do
      {
        if (v6[5])
        {
          v8 = *(*(**(a1 + 56) + 16))(*(a1 + 56), *(v6 + 8));
          v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
          if (a2)
          {
            if (v9)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Session is logged in. Start iRatClient", buf, 2u);
            }

            sub_1003B8730(v6[5]);
          }

          else
          {
            if (v9)
            {
              *v13 = 0;
              _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Session is logged out. Shut down iRatClient", v13, 2u);
            }

            sub_1003B8974(v6[5]);
          }
        }

        v10 = v6[1];
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
            v11 = v6[2];
            v12 = *v11 == v6;
            v6 = v11;
          }

          while (!v12);
        }

        v6 = v11;
      }

      while (v11 != v7);
    }

    *(a1 + 104) = a2;
  }
}

void sub_10013A608(void *a1)
{
  ctu::RestModule::disconnect((a1 + 11));
  v2 = a1[14];
  v3 = a1 + 15;
  if (v2 != v3)
  {
    do
    {
      v4 = v2[5];
      if (v4)
      {
        sub_1003B8974(v4);
      }

      v5 = v2[1];
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
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }
}

void sub_10013A684(uint64_t a1)
{
  *a1 = off_101E2B2E0;
  *(a1 + 8) = off_101E2B390;
  sub_10006DCAC(a1 + 136, *(a1 + 144));
  sub_10013C430(a1 + 112, *(a1 + 120));
  v2 = *(a1 + 96);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));

  DataiRatControllerInterface::~DataiRatControllerInterface(a1);
}

void sub_10013A774(uint64_t a1, int a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10013A884;
  v4[3] = &unk_101E2B3C8;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 16));
  v3 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10013CAFC;
  block[3] = &unk_101E2B700;
  block[5] = v8;
  v7 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

uint64_t sub_10013A884(uint64_t result)
{
  v1 = *(result + 32);
  v4 = *(v1 + 120);
  v2 = v1 + 120;
  v3 = v4;
  if (v4)
  {
    v5 = *(result + 40);
    v6 = v2;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v6 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v6 != v2 && v5 >= *(v6 + 32))
    {
      if (!*(v6 + 40) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101761A48()))
      {
        __TUAssertTrigger();
      }

      v7 = 0;
      v8 = 0;
      sub_10013AA4C();
    }
  }

  return result;
}

void sub_10013A9FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_10013ABAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v14);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

void sub_10013AD38(_Unwind_Exception *a1)
{
  sub_100004A34(v1);
  sub_100004A34(v1);
  _Unwind_Resume(a1);
}

void sub_10013AD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v7 = a1 + 120;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v7 != a1 + 120 && *(v7 + 32) <= a2)
    {
      if (!*(v7 + 40) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101761AE0()))
      {
        __TUAssertTrigger();
      }

      v8 = *(*(**(a1 + 56) + 16))(*(a1 + 56), a2);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        asString();
        v9 = v19 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v21 = v9;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I with app Types %s", buf, 0xCu);
        if (v19 < 0)
        {
          operator delete(__p[0]);
        }
      }

      if (*(v7 + 72) != *(a3 + 16))
      {
        goto LABEL_39;
      }

      v10 = *(v7 + 56);
      if (v10 != (v7 + 64))
      {
        v11 = *a3;
        while (1)
        {
          v12 = *(v10 + 7) == *(v11 + 7) && *(v10 + 8) == *(v11 + 8);
          if (!v12)
          {
            break;
          }

          v13 = v10[1];
          v14 = v10;
          if (v13)
          {
            do
            {
              v10 = v13;
              v13 = *v13;
            }

            while (v13);
          }

          else
          {
            do
            {
              v10 = v14[2];
              v12 = *v10 == v14;
              v14 = v10;
            }

            while (!v12);
          }

          v15 = v11[1];
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
              v16 = v11[2];
              v12 = *v16 == v11;
              v11 = v16;
            }

            while (!v12);
          }

          v11 = v16;
          if (v10 == (v7 + 64))
          {
            goto LABEL_37;
          }
        }

LABEL_39:
        if (v7 + 56 != a3)
        {
          sub_10013CB38((v7 + 56), *a3, (a3 + 8));
        }

        __p[0] = 0;
        __p[1] = 0;
        sub_10013ABE8();
      }

LABEL_37:
      v17 = *(*(**(a1 + 56) + 16))(*(a1 + 56), a2);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Subscribe app Types not changed", __p, 2u);
      }
    }
  }
}

void sub_10013B05C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void sub_10013B088(uint64_t a1, uint64_t a2, char a3)
{
  v3 = *(a1 + 120);
  if (v3)
  {
    v7 = a1 + 120;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v7 != a1 + 120 && *(v7 + 32) <= a2)
    {
      v9 = *(v7 + 40);
      v8 = (v7 + 40);
      if (!v9 && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101761B78()))
      {
        __TUAssertTrigger();
      }

      v10 = *(*(**(a1 + 56) + 16))(*(a1 + 56), a2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 136315138;
        v12 = asString();
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I NWD cause %s", &v11, 0xCu);
      }

      sub_1003B9E90(*v8, a3);
    }
  }
}

void sub_10013B1E8(uint64_t a1, int a2)
{
  v4 = *(a1 + 120);
  v2 = a1 + 120;
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
    if (v5 != v2 && *(v5 + 32) <= a2)
    {
      v8 = *(v5 + 40);
      v7 = (v5 + 40);
      v6 = v8;
      if (!v8)
      {
        if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101761C10(v7, &v9))
        {
          __TUAssertTrigger();
          v6 = *v7;
        }

        else
        {
          v6 = v9;
        }
      }

      sub_1003BA2C8(v6);
    }
  }
}

uint64_t sub_10013B290(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  v4 = *(a1 + 120);
  if (!v4)
  {
    return 0;
  }

  v9 = a1 + 120;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v9 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v9 == a1 + 120 || *(v9 + 32) > a2)
  {
    return 0;
  }

  if (!*(v9 + 40) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101761CBC()))
  {
    __TUAssertTrigger();
  }

  if (a3 > 2)
  {
    return 0;
  }

  result = DataiRatControllerInterface::isCriticalAppType();
  if (result)
  {
    v11 = *(*(**(a1 + 56) + 16))(*(a1 + 56), a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *&buf[4] = a3;
      LOWORD(v14) = 1024;
      *(&v14 + 2) = a4;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Report for critical appType %d with service State %d", buf, 0xEu);
    }

    sub_10013B4DC(a1, a2, a3);
    v12 = *(v9 + 8 * a3 + 80);
    if (*(v12 + 32) != a4)
    {
      *(v12 + 32) = a4;
      *buf = 0;
      v14 = 0;
      sub_10013B724();
    }

    return 1;
  }

  return result;
}

void sub_10013B4B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

uint64_t sub_10013B4DC(uint64_t result, int a2, int a3)
{
  v3 = *(result + 120);
  if (v3)
  {
    v5 = result + 120;
    do
    {
      if (*(v3 + 32) >= a2)
      {
        v5 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < a2));
    }

    while (v3);
    if (v5 != result + 120 && *(v5 + 32) <= a2)
    {
      result = DataiRatControllerInterface::isCriticalAppType();
      if (result)
      {
        if (!*(v5 + 8 * a3 + 80))
        {
          operator new();
        }
      }
    }
  }

  return result;
}

void sub_10013B6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void sub_10013B874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  sub_100004A34(v14);
  sub_100004A34(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_10013B8A8(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, char *a6)
{
  v6 = *(a1 + 120);
  if (!v6)
  {
    return 0;
  }

  v12 = a1 + 120;
  do
  {
    if (*(v6 + 32) >= a2)
    {
      v12 = v6;
    }

    v6 = *(v6 + 8 * (*(v6 + 32) < a2));
  }

  while (v6);
  if (v12 == a1 + 120 || *(v12 + 32) > a2)
  {
    return 0;
  }

  if (!*(v12 + 40) && (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR) || sub_101761D54()))
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
    v15 = *(*(**(a1 + 56) + 16))(*(a1 + 56), a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109890;
      *&buf[4] = AppType;
      *v23 = 2080;
      *&v23[2] = asString();
      v24 = 2080;
      v25 = asString();
      v26 = 2080;
      v27 = a6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Report for critical appType %d with contextType %s, transportType %s and connection ID %s", buf, 0x26u);
    }

    sub_10013B4DC(a1, a2, AppType);
    v16 = *(v12 + 8 * AppType + 80);
    if (*v16 != a4)
    {
      *v16 = a4;
    }

    v17 = *(v16 + 4);
    if (v17 != a5)
    {
      *(v16 + 4) = a5;
    }

    v18 = strlen(a6);
    v19 = v18;
    v20 = *(v16 + 31);
    if (v20 < 0)
    {
      if (v18 != *(v16 + 16))
      {
        goto LABEL_29;
      }

      if (v18 == -1)
      {
        sub_10013C334();
      }

      v21 = *(v16 + 8);
    }

    else
    {
      v21 = (v16 + 8);
      if (v19 != v20)
      {
        goto LABEL_29;
      }
    }

    if (!memcmp(v21, a6, v19))
    {
      if (v17 == a5)
      {
        return 1;
      }

LABEL_30:
      *buf = 0;
      *v23 = 0;
      sub_10013B724();
    }

LABEL_29:
    sub_100016890((v16 + 8), a6);
    goto LABEL_30;
  }

  return result;
}