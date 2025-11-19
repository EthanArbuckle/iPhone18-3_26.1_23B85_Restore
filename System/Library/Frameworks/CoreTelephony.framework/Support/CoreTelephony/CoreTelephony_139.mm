uint64_t sub_1012295E4(uint64_t a1)
{
  if (!subscriber::isValidSimSlot())
  {
    return 0;
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 40);

  return v3();
}

uint64_t sub_101229660(uint64_t a1, uint64_t a2)
{
  *buf = @"SMSSettings";
  v25 = @"UseWifiForEmergencyText";
  v21 = 0;
  v22 = 0;
  __p = 0;
  sub_10005B328(&__p, buf, &v26, 2uLL);
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
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
        goto LABEL_7;
      }

      goto LABEL_13;
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
LABEL_7:
    v15 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Invalid carrier interface", buf, 2u);
    }

    LOBYTE(v16) = 1;
    if (v14)
    {
      goto LABEL_19;
    }

LABEL_18:
    sub_100004A34(v12);
    goto LABEL_19;
  }

LABEL_13:
  (*(*v13 + 104))(buf, v13, a2, 1, &__p, kCFBooleanFalse, 0);
  v16 = *buf;
  v23 = 0;
  if (*buf)
  {
    v17 = CFGetTypeID(*buf);
    if (v17 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v23, v16, v18);
      LOBYTE(v16) = v23;
    }

    else
    {
      LOBYTE(v16) = 0;
    }
  }

  sub_10000A1EC(buf);
  if ((v14 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_19:
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v16 & 1;
}

void sub_1012298C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101229924(void *a1, void *a2, uint64_t a3)
{
  if (!*a3)
  {
    goto LABEL_9;
  }

  TextToEmergencyFlag = sms::Model::getTextToEmergencyFlag(*a3);
  v7 = *a3;
  if (TextToEmergencyFlag)
  {
    v8 = *(a3 + 8);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(v7 + 2);
    v16 = *(v7 + 2);
    if (sms::Model::isIMSOverAP(v7))
    {
      goto LABEL_6;
    }

    v14 = sub_101229660(a2, v9);
    isIMSOverAP = sms::Model::isIMSOverAP(v7);
    if (v14)
    {
      if (!isIMSOverAP)
      {
LABEL_18:
        v11 = a2[14];
        v10 = a2[15];
        goto LABEL_19;
      }
    }

    else if (!isIMSOverAP || (v17 = &v16, (*(sub_1002D750C((a2 + 320), &v16)[5] + 294) & 1) != 0))
    {
      v17 = &v16;
      if (*(sub_1002D750C((a2 + 320), &v16)[5] + 285))
      {
        goto LABEL_18;
      }
    }

LABEL_6:
    v11 = a2[16];
    v10 = a2[17];
LABEL_19:
    *a1 = v11;
    a1[1] = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    if (v8)
    {

      sub_100004A34(v8);
    }

    return;
  }

  if (sms::Model::isIMSOverAP(*a3))
  {
    v13 = a2[16];
    v12 = a2[17];
  }

  else
  {
LABEL_9:
    v13 = a2[14];
    v12 = a2[15];
  }

  *a1 = v13;
  a1[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_101229AA8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sms::Controller::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10122A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000A8744(va);
  operator delete();
}

void sub_10122A3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  JUMPOUT(0x10122A7C8);
}

void sub_10122A46C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    dispatch_barrier_async_f(v2[3], v2, sub_10124D154);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_10122A4B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_10122A4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void **a14)
{
  sub_10006DCAC(v14 + 2448, *(v14 + 2456));
  sub_101229234(v14 + 2392);
  EmergencyMode::~EmergencyMode((v14 + 2368));
  sub_1001A918C(v14 + 2344, *(v14 + 2352));
  sub_10006DCAC(v14 + 2320, *(v14 + 2328));
  sub_100077CD4(v14 + 2288, *(v14 + 2296));
  sub_10083C218(v14 + 2232);
  sub_10083C218(v14 + 2176);
  sub_10083C218(v14 + 2120);
  sub_10006DCAC(v14 + 2096, *(v14 + 2104));
  sub_10004543C(v14 + 1288);
  sub_10004543C(v14 + 480);
  sub_10004C4EC(v14 + 456, *(v14 + 464));
  sub_100170380(v14 + 432, *(v14 + 440));
  sub_100077CD4(v14 + 408, *(v14 + 416));
  a14 = (v14 + 384);
  sub_1000B2AF8(&a14);
  sub_10032D3A4(v14 + 360, *(v14 + 368));
  sub_10032D3A4(v14 + 336, *(v14 + 344));
  sub_10006DCAC(v14 + 312, *(v14 + 320));
  sub_10006DCAC(v14 + 288, *(v14 + 296));
  sub_10006DCAC(v17 + 56, *(v14 + 272));
  sub_10006DCAC(v19, *(v14 + 240));
  sub_100009970(v17, *(v14 + 216));
  if (*(v14 + 199) < 0)
  {
    operator delete(*(v14 + 176));
  }

  v21 = *(v14 + 152);
  if (v21)
  {
    sub_100004A34(v21);
  }

  v22 = *(v14 + 136);
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = *(v14 + 120);
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = *(v14 + 104);
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = *(v14 + 88);
  if (v25)
  {
    sub_100004A34(v25);
  }

  sub_1000FEFCC(v20);
  v26 = *(v14 + 48);
  *(v14 + 48) = 0;
  if (v26)
  {
    (*(*v26 + 8))(v26);
  }

  SmsControllerInterface::~SmsControllerInterface(v14);
  ctu::OsLogLogger::~OsLogLogger((v14 + 40));
  sub_1000C0544(v18);
  if (v16)
  {
    sub_100004A34(v16);
    if (!v15)
    {
LABEL_20:
      operator delete();
    }
  }

  else if (!v15)
  {
    goto LABEL_20;
  }

  dispatch_release(v15);
  goto LABEL_20;
}

void sub_10122A508(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object, dispatch_object_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a13)
  {
    dispatch_release(a13);
  }

  if (a24 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10122A6F0);
}

void sub_10122A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v7);
  ctu::OsLogContext::~OsLogContext(va1);
  if (v6)
  {
    dispatch_release(v6);
  }

  JUMPOUT(0x10122A770);
}

void sub_10122A5BC()
{
  sub_10006DCAC(v0 + 2496, *(v0 + 2504));
  sub_10006DCAC(v0 + 2472, *(v0 + 2480));
  JUMPOUT(0x10122A5D8);
}

void sub_10122A7D8(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10122A8CC(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v10 = a2;
  v9[0] = a1;
  v9[1] = &v10;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v5 = v10;
      block[0] = &v10;
      v6 = sub_1002D750C(a1 + 2560, &v10);
      sub_10122B3A4(a3, a1, v5, *(v6[5] + 244));
      return;
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_10124DF20;
  v11[3] = &unk_101F1D9D8;
  v11[4] = a1 + 8;
  v11[5] = v9;
  v12 = v11;
  v8 = *(a1 + 24);
  *a3 = 0;
  a3[1] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v14 = sub_10124DF90;
    v15 = &unk_101F1D9F8;
    v16 = a3;
    v17 = &v12;
    dispatch_sync(v8, block);
  }

  else
  {
    v14 = sub_10124DFF8;
    v15 = &unk_101F1DA18;
    v16 = a3;
    v17 = &v12;
    dispatch_async_and_wait(v8, block);
  }
}

uint64_t sub_10122AA78(uint64_t a1, int a2)
{
  v18 = a2;
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  v19 = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &v19);
  if (!v10)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    if (!v12)
    {
      goto LABEL_19;
    }

    goto LABEL_10;
  }

  v12 = v10[3];
  v11 = v10[4];
  if (!v11)
  {
    goto LABEL_9;
  }

  v2 = v11 + 8;
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v5);
  atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v13 = 0;
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_10:
  if (!(*(*v12 + 16))(v12))
  {
    goto LABEL_19;
  }

  v14 = *(a1 + 344);
  if (!v14)
  {
    goto LABEL_19;
  }

  v15 = a1 + 344;
  do
  {
    if (*(v14 + 32) >= v18)
    {
      v15 = v14;
    }

    v14 = *(v14 + 8 * (*(v14 + 32) < v18));
  }

  while (v14);
  if (v15 == a1 + 344 || v18 < *(v15 + 32) || *(v15 + 41) == 2)
  {
LABEL_19:
    v16 = 1;
    if (v13)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v16 = 0;
  v2 = *(a1 + 2736);
  if ((v13 & 1) == 0)
  {
LABEL_20:
    sub_100004A34(v11);
  }

LABEL_21:
  if (v16)
  {
    v19 = &v18;
    v2 = *(sub_1002D750C(a1 + 2560, &v18)[5] + 40);
  }

  return v2 & 1;
}

void sub_10122AC20(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10122AC3C(uint64_t a1, unsigned int a2)
{
  v22 = a2;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    if (sub_10122AEE8(a1, a2))
    {
      return 1;
    }

    *buf = &v22;
    v5 = *(sub_1002D750C(a1 + 2560, &v22)[5] + 41) == 1 && *(a1 + 2376) != 3;
    v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), v22);
    v7 = v6;
    v8 = *(a1 + 200);
    if ((v8 & 1) != 0 || *(a1 + 260) == 1)
    {
      v9 = *v6;
      result = os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      v20 = CSIBOOLAsString(v8);
      v21 = CSIBOOLAsString(*(a1 + 260));
      *buf = 136315394;
      *&buf[4] = v20;
      v24 = 2080;
      v25 = v21;
      v17 = "Cannot compose SMS [airplane: %s, in-reset: %s]";
      v18 = v9;
      v19 = 22;
LABEL_19:
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, v17, buf, v19);
      return 0;
    }

    if (sub_100A7F520())
    {
      v10 = *v7;
      if (os_log_type_enabled(*v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I SMS composition during lockdown", buf, 2u);
      }

      return 1;
    }

    if ((v5 & 1) == 0)
    {
      *buf = &v22;
      if (*(sub_1002D750C(a1 + 2560, &v22)[5] + 293))
      {
        return 1;
      }
    }

    v11 = *v7;
    result = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (result)
    {
      *buf = &v22;
      v12 = sub_1002D750C(a1 + 2560, &v22);
      v13 = CSIBOOLAsString(*(v12[5] + 293));
      v14 = CSIBOOLAsString(v5);
      v15 = sub_10122AA78(a1, v22);
      v16 = CSIBOOLAsString(v15);
      *buf = 136315650;
      *&buf[4] = v13;
      v24 = 2080;
      v25 = v14;
      v26 = 2080;
      v27 = v16;
      v17 = "Cannot compose SMS [ready: %s, ecbm for text: %s, bb activated: %s]";
      v18 = v11;
      v19 = 32;
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_10122AEE8(uint64_t a1, unsigned int a2)
{
  v5 = a2;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v6 = &v5;
    if (*(sub_1002D750C(a1 + 2560, &v5)[5] + 41))
    {
      return 0;
    }

    v6 = &v5;
    v4 = sub_1002D750C(a1 + 2560, &v5);
    if (*(v4[5] + 42) != 1)
    {
      return 0;
    }

    else if (capabilities::ct::supportsVoiceCall(v4) && (*(*a1 + 424))(a1, v5))
    {
      return sub_10122AA78(a1, v5);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_10122AFDC(uint64_t a1, unsigned int a2)
{
  v28 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *&v29 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v29);
  if (v9)
  {
    v10 = v9[3];
    v11 = v9[4];
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v4);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      v22 = v11;
      sub_100004A34(v11);
      v12 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    v10 = 0;
  }

  std::mutex::unlock(v4);
  v22 = 0;
  v12 = 1;
LABEL_10:
  *&v29 = &v28;
  v13 = sub_1002D750C(a1 + 2560, &v28);
  *(v13[5] + 376) = *(v13[5] + 368);
  v29 = *off_101EE80A0;
  v30 = @"SMSCPreferenceOrder";
  v26 = 0;
  v27 = 0;
  __p = 0;
  sub_10005B328(&__p, &v29, &v31, 3uLL);
  v23 = v12;
  theArray = 0;
  (*(*v10 + 104))(&v29, v10, v28, 1, &__p, 0, 0);
  sub_10006DD00(&theArray, &v29);
  sub_10000A1EC(&v29);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v17 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v18 = CFGetTypeID(ValueAtIndex);
          if (v18 == CFStringGetTypeID())
          {
            if (CFEqual(v17, @"PSI_SMSC"))
            {
              *&v29 = &v28;
              v19 = sub_1002D750C(a1 + 2560, &v28)[5];
              LOBYTE(v29) = 0;
              sub_1001CD884(v19 + 368, &v29);
            }

            if (CFEqual(v17, @"SMSC"))
            {
              *&v29 = &v28;
              v20 = sub_1002D750C(a1 + 2560, &v28)[5];
              LOBYTE(v29) = 1;
              sub_1001CD884(v20 + 368, &v29);
            }

            if (CFEqual(v17, @"CarrierBundle"))
            {
              *&v29 = &v28;
              v21 = sub_1002D750C(a1 + 2560, &v28)[5];
              LOBYTE(v29) = 2;
              sub_1001CD884(v21 + 368, &v29);
            }
          }
        }
      }
    }
  }

  sub_100010250(&theArray);
  if (__p)
  {
    v26 = __p;
    operator delete(__p);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }
}

void sub_10122B328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, int a11, char a12, const void *a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, char a18)
{
  sub_100010250(&a13);
  if (__p)
  {
    a15 = __p;
    operator delete(__p);
  }

  if ((a12 & 1) == 0)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(a1);
}

void sub_10122B3A4(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = a3;
  v36 = a3;
  v8 = (*(**(a2 + 48) + 16))(*(a2 + 48), a3);
  *a1 = 0;
  a1[1] = 0;
  v9 = sub_10122AC3C(a2, v5);
  v10 = *v8;
  if (v9)
  {
    v11 = *v8;
    if (a4 == 1)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Composing SMS message using GsmModel", buf, 2u);
      }

      operator new();
    }

    if (a4 == 2)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Composing SMS message using C2KModel", buf, 2u);
      }

      operator new();
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      *&buf[4] = sms::asString();
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid encoder :- %s", buf, 0xCu);
    }

    v12 = *a1;
    if (*a1)
    {
      v13 = a1[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      LODWORD(v37) = *(v12 + 2);
      if (subscriber::isValidSimSlot())
      {
        v14 = (*(**(a2 + 48) + 16))(*(a2 + 48), v37);
        *buf = &v37;
        if (*(sub_1002D750C(a2 + 2560, &v37)[5] + 42) == 1 && (sub_10123BB40(a2, v37) & 1) == 0)
        {
          sms::Model::setTransportType(v12, 2);
          *buf = &v37;
          v15 = *(sub_1002D750C(a2 + 2560, &v37)[5] + 24) == *(a2 + 128) ? 2 : 1;
          sms::Model::setIMSMode(v12, v15);
          v16 = *v14;
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = sms::asString(2);
            IMSMode = sms::Model::getIMSMode(v12);
            v19 = sms::asString(IMSMode);
            *buf = 136315394;
            *&buf[4] = v17;
            v42 = 2080;
            v43 = v19;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I SMS Transport Type:%s, Transport Mode:%s", buf, 0x16u);
          }
        }
      }

      if (v13)
      {
        sub_100004A34(v13);
      }

      if (*a1 && sms::Model::isIMSOverAP(*a1))
      {
        ServiceMap = Registry::getServiceMap(*(a2 + 80));
        v21 = ServiceMap;
        if (v22 < 0)
        {
          v23 = (v22 & 0x7FFFFFFFFFFFFFFFLL);
          v24 = 5381;
          do
          {
            v22 = v24;
            v25 = *v23++;
            v24 = (33 * v24) ^ v25;
          }

          while (v25);
        }

        std::mutex::lock(ServiceMap);
        *buf = v22;
        v26 = sub_100009510(&v21[1].__m_.__sig, buf);
        if (!v26)
        {
          std::mutex::unlock(v21);
          return;
        }

        v28 = v26[3];
        v27 = v26[4];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v21);
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v27);
          if (!v28)
          {
            v29 = v27;
LABEL_58:
            sub_100004A34(v29);
            return;
          }
        }

        else
        {
          std::mutex::unlock(v21);
          if (!v28)
          {
            return;
          }
        }

        PersonalityIdFromSlotId();
        (*(*v28 + 40))(&v37, v28, buf);
        (*(*v37 + 40))(&cf);
        v31 = cf;
        v40 = 0;
        if (cf)
        {
          v32 = CFGetTypeID(cf);
          if (v32 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(&v40, v31, v33);
            LOBYTE(v31) = v40;
          }

          else
          {
            LOBYTE(v31) = 0;
          }
        }

        sub_10000A1EC(&cf);
        if (v38)
        {
          sub_100004A34(v38);
        }

        if (v44 < 0)
        {
          operator delete(*buf);
        }

        if (v27)
        {
          sub_100004A34(v27);
        }

        if (v31)
        {
          v34 = *v8;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I IMS/AP Test Mode enabled - Attempt SMS over CS", buf, 2u);
          }

          *buf = &v36;
          if (*(sub_1002D750C(a2 + 2560, &v36)[5] + 288) == 7)
          {
            v35 = *(a2 + 40);
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "IMS/AP Test Mode & LTE cannot co-exist. Fail SMS", buf, 2u);
            }

            v29 = a1[1];
            *a1 = 0;
            a1[1] = 0;
            if (v29)
            {
              goto LABEL_58;
            }
          }

          else
          {
            sms::Model::setTransportType(*a1, 0);
            sms::Model::setIMSMode(*a1, 0);
          }
        }
      }
    }

    else
    {
      v30 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Invalid message shared_ptr, exiting", buf, 2u);
      }
    }
  }

  else if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I MO-SMS not allowed", buf, 2u);
  }
}

void sub_10122BB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (v23)
  {
    sub_100004A34(v23);
  }

  v25 = *(v22 + 8);
  if (v25)
  {
    sub_100004A34(v25);
  }

  _Unwind_Resume(exception_object);
}

void sub_10122BC78(uint64_t a1, uint64_t a2)
{
  v34 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  *buf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, buf);
  if (!v11)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v13 = v11[3];
  v12 = v11[4];
  if (!v12)
  {
LABEL_9:
    std::mutex::unlock(v6);
    v12 = 0;
    v14 = 1;
    goto LABEL_10;
  }

  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v12);
  v14 = 0;
LABEL_10:
  if (v13)
  {
    (*(*v13 + 96))(&cf, v13, v34, 1, @"EnableSMSReplyAddress", kCFBooleanFalse, 0);
    v15 = cf;
    buf[0] = 0;
    if (cf)
    {
      v16 = CFGetTypeID(cf);
      if (v16 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v15, v17);
      }
    }

    v18 = buf[0];
    *buf = &v34;
    *(sub_1002D750C(a1 + 2560, &v34)[5] + 72) = v18;
    sub_10000A1EC(&cf);
  }

  else
  {
    v19 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed to get carrierSettings, userReplyAddress set to false.", buf, 2u);
    }

    *buf = &v34;
    *(sub_1002D750C(a1 + 2560, &v34)[5] + 72) = 0;
  }

  v20 = *v4;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    cf = &v34;
    if (*(sub_1002D750C(a1 + 2560, &v34)[5] + 72))
    {
      v21 = "";
    }

    else
    {
      v21 = " not";
    }

    *buf = 136315138;
    *&buf[4] = v21;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Carrier does%s use Reply Address", buf, 0xCu);
  }

  (*(*v13 + 96))(&cf, v13, v34, 1, @"EnableSMSReplyAddress", kCFBooleanFalse, 0);
  v22 = cf;
  buf[0] = 0;
  if (cf && (v23 = CFGetTypeID(cf), v23 == CFBooleanGetTypeID()))
  {
    ctu::cf::assign(buf, v22, v24);
    v25 = buf[0];
  }

  else
  {
    v25 = 0;
  }

  *buf = &v34;
  *(sub_1002D750C(a1 + 2560, &v34)[5] + 72) = v25;
  sub_10000A1EC(&cf);
  *buf = @"com.apple.voicemail.imap";
  *&buf[8] = @"BeaconServiceCenter";
  v32 = 0;
  v33 = 0;
  cf = 0;
  sub_10005B328(&cf, buf, &buf[16], 2uLL);
  (*(*v13 + 104))(&v30, v13, v34, 1, &cf, 0, 0);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  v26 = *buf;
  v35[0] = *&buf[8];
  *(v35 + 7) = *&buf[15];
  v27 = buf[23];
  *buf = &v34;
  v28 = sub_1002D750C(a1 + 2560, &v34)[5];
  if (*(v28 + 415) < 0)
  {
    operator delete(*(v28 + 392));
  }

  v29 = v35[0];
  *(v28 + 392) = v26;
  *(v28 + 400) = v29;
  *(v28 + 407) = *(v35 + 7);
  *(v28 + 415) = v27;
  sub_10000A1EC(&v30);
  if (cf)
  {
    v32 = cf;
    operator delete(cf);
  }

  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_10122C138(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if ((v23 & 1) == 0)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(exception_object);
}

void sub_10122C1CC(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10122C2DC;
  v4[3] = &unk_101F1D498;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
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

void sub_10122C2EC(uint64_t a1, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_10122C3FC;
  v4[3] = &unk_101F1D4B8;
  v4[4] = a1;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  v3 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
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

uint64_t sub_10122C40C(uint64_t a1)
{
  v6 = a1;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v2 = *(a1 + 160);
      return v2 & 1;
    }

    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_10124E334;
  v7[3] = &unk_101F1DB60;
  v7[4] = a1 + 8;
  v7[5] = &v6;
  v8 = v7;
  v4 = *(a1 + 24);
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v3)
  {
    v10 = sub_1000593F4;
    v11 = &unk_101F1DB80;
    v12 = &v14;
    v13 = &v8;
    dispatch_sync(v4, block);
  }

  else
  {
    v10 = sub_10006A350;
    v11 = &unk_101F1DBA0;
    v12 = &v14;
    v13 = &v8;
    dispatch_async_and_wait(v4, block);
  }

  v2 = v14;
  return v2 & 1;
}

uint64_t *sub_10122C574(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v3 = sub_100838AB0(a2, (a1 + 80));
  if (v3 <= 520)
  {
    if (v3 == 513)
    {
      v8 = &v7;
      result = sub_1002D750C(a1 + 2560, &v7);
      v5 = result + 5;
      v6 = 3;
      goto LABEL_12;
    }

    if (v3 == 519)
    {
      v8 = &v7;
      result = sub_1002D750C(a1 + 2560, &v7);
      v5 = result + 5;
      v6 = 6;
      goto LABEL_12;
    }

LABEL_11:
    v8 = &v7;
    result = sub_1002D750C(a1 + 2560, &v7);
    v5 = result + 5;
    v6 = 8;
    goto LABEL_12;
  }

  if (v3 == 521)
  {
    v8 = &v7;
    result = sub_1002D750C(a1 + 2560, &v7);
    v5 = result + 5;
    v6 = 5;
    goto LABEL_12;
  }

  if (v3 != 2368 && v3 != 1058)
  {
    goto LABEL_11;
  }

  v8 = &v7;
  result = sub_1002D750C(a1 + 2560, &v7);
  v5 = result + 5;
  v6 = 2;
LABEL_12:
  *(*v5 + 44) = v6;
  return result;
}

void sub_10122C6D4(uint64_t a1, char a2, int a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_10122C7E8;
  v5[3] = &unk_101F1D4D8;
  v5[4] = a1;
  v6 = a3;
  v7 = a2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, (a1 + 8));
  v4 = *(a1 + 24);
  block[0] = _NSConcreteStackBlock;
  block[1] = 1174405120;
  block[2] = sub_10124E2F8;
  block[3] = &unk_101F1DB30;
  block[5] = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_10122C7E8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 44);
  v4 = *(a1 + 40);
  v5 = &v4;
  *(sub_1002D750C(v2 + 2560, &v4)[5] + 284) = v3;
  sub_10122C860(v2, *(a1 + 40));
}

void sub_10122C860(uint64_t a1, unsigned int a2)
{
  v9 = a2;
  if (subscriber::isValidSimSlot())
  {
    *buf = &v9;
    if (*(sub_1002D750C(a1 + 2560, &v9)[5] + 285) == 1)
    {
      v3 = 1;
    }

    else
    {
      *buf = &v9;
      v3 = *(sub_1002D750C(a1 + 2560, &v9)[5] + 285) == 3;
    }

    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v9);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v5 = "";
      }

      else
      {
        v5 = "not ";
      }

      *buf = &v9;
      if (*(sub_1002D750C(a1 + 2560, &v9)[5] + 284))
      {
        v6 = "";
      }

      else
      {
        v6 = "not ";
      }

      *buf = &v9;
      if (*(sub_1002D750C(a1 + 2560, &v9)[5] + 24))
      {
        v7 = "not ";
      }

      else
      {
        v7 = "";
      }

      *buf = 136315650;
      *&buf[4] = v5;
      v11 = 2080;
      v12 = v6;
      v13 = 2080;
      v14 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SMS is %sready, Reading SMS from sim is %senabled, fTransport is %snull", buf, 0x20u);
    }

    if (v3)
    {
      *buf = &v9;
      if (*(sub_1002D750C(a1 + 2560, &v9)[5] + 284) == 1)
      {
        *buf = &v9;
        if (*(sub_1002D750C(a1 + 2560, &v9)[5] + 24))
        {
          *buf = &v9;
          v8 = sub_1002D750C(a1 + 2560, &v9);
          (*(**(v8[5] + 24) + 72))(*(v8[5] + 24), v9, 1);
        }
      }
    }
  }
}

uint64_t sub_10122CB10(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4)
{
  v11 = a4;
  v12 = a2;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = a3;
  v10[3] = &v11;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      isValidSimSlot = subscriber::isValidSimSlot();
      if (isValidSimSlot)
      {
        LOBYTE(isValidSimSlot) = sub_10122D97C(a1, v12, a3, v11);
      }

      return isValidSimSlot & 1;
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_10124E344;
  v13[3] = &unk_101F1DBC0;
  v13[4] = a1 + 8;
  v13[5] = v10;
  v14 = v13;
  v8 = *(a1 + 24);
  v20 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v7)
  {
    v16 = sub_1000593F4;
    v17 = &unk_101F1DB80;
    v18 = &v20;
    v19 = &v14;
    dispatch_sync(v8, block);
  }

  else
  {
    v16 = sub_10006A350;
    v17 = &unk_101F1DBA0;
    v18 = &v20;
    v19 = &v14;
    dispatch_async_and_wait(v8, block);
  }

  LOBYTE(isValidSimSlot) = v20;
  return isValidSimSlot & 1;
}

void sub_10122CCAC(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10124E3A8(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10122CE3C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10122CE5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = a2;
  if (*(a3 + 24))
  {
    if (subscriber::isValidSimSlot())
    {
      *buf = &v14;
      v6 = sub_1002D750C(a1 + 2560, &v14);
      sub_101166D14(v6[5], v11);
      sub_10122D028(*(a3 + 24), v11, 0);
      v7 = v11[1];
      v8 = v11;
    }

    else
    {
      v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid slot while reading Emergency Address...", buf, 2u);
      }

      v13[0] = 0;
      v13[1] = 0;
      v12 = v13;
      sub_10122D028(*(a3 + 24), &v12, 0x1600000001);
      v7 = v13[0];
      v8 = &v12;
    }

    sub_100009970(v8, v7);
  }

  else
  {
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid callback while reading Emergency Address...", buf, 2u);
    }
  }
}

uint64_t sub_10122D028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

BOOL sms::Controller::isEmergencyTextNumberForSlot_sync(uint64_t a1, int a2, uint64_t a3)
{
  v9 = a2;
  if ((*(a3 + 23) & 0x8000000000000000) != 0)
  {
    if (*(a3 + 8))
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!*(a3 + 23))
  {
    return 0;
  }

LABEL_3:
  v7 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v10 = &v9;
  v4 = sub_1002D750C(a1 + 2560, &v9);
  sub_101166D14(v4[5], &v7);
  LOBYTE(v10) = 0;
  v5 = v8 != sub_100D5E7A8(v7, v8, a3);
  sub_100009970(&v7, v8[0]);
  return v5;
}

BOOL sub_10122D148(uint64_t a1, int a2, __int128 *a3)
{
  v11 = a2;
  v10[0] = a1;
  v10[1] = &v11;
  v10[2] = a3;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      v5 = v11;
      if (*(a3 + 23) < 0)
      {
        sub_100005F2C(&block, *a3, *(a3 + 1));
      }

      else
      {
        block = *a3;
        v15 = *(a3 + 2);
      }

      isEmergencyTextNumberForSlot_sync = sms::Controller::isEmergencyTextNumberForSlot_sync(a1, v5, &block);
      if (SHIBYTE(v15) < 0)
      {
        operator delete(block);
      }

      return isEmergencyTextNumberForSlot_sync;
    }

    v6 = *(a1 + 32) == 0;
  }

  else
  {
    v6 = 1;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_10124E578;
  v12[3] = &unk_101F1DBE0;
  v12[4] = a1 + 8;
  v12[5] = v10;
  v13 = v12;
  v7 = *(a1 + 24);
  v19 = 0;
  *&block = _NSConcreteStackBlock;
  *(&block + 1) = 0x40000000;
  if (v6)
  {
    v15 = sub_1000593F4;
    v16 = &unk_101F1DB80;
    v17 = &v19;
    v18 = &v13;
    dispatch_sync(v7, &block);
  }

  else
  {
    v15 = sub_10006A350;
    v16 = &unk_101F1DBA0;
    v17 = &v19;
    v18 = &v13;
    dispatch_async_and_wait(v7, &block);
  }

  return v19;
}

void sub_10122D338(uint64_t a1, int a2, uint64_t a3)
{
  v4[4] = a1;
  v5 = a2;
  sub_10124E618(&v6, a3);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10122D4C8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10122D4E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, a2, &v4);
}

void sub_10122D538(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      sms::Controller::getDynamicMessageModes_sync(a1, v8, a3);
      return;
    }

    v5 = *(a1 + 32) == 0;
  }

  else
  {
    v5 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10124E9BC;
  v9[3] = &unk_101F1DC00;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v6 = *(a1 + 24);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v5)
  {
    v12 = sub_10124E9CC;
    v13 = &unk_101F1DC20;
    v14 = a3;
    v15 = &v10;
    dispatch_sync(v6, block);
  }

  else
  {
    v12 = sub_10124EA38;
    v13 = &unk_101F1DC40;
    v14 = a3;
    v15 = &v10;
    dispatch_async_and_wait(v6, block);
  }
}

void sub_10122D6B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 24))
  {
    if (subscriber::isValidSimSlot())
    {
      v6 = (*(*a1 + 240))(a1, a2);
      v7 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 136315138;
        v10 = CSIBOOLAsString(v6);
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I SMSReadyStatus %s ", &v9, 0xCu);
      }

      sub_100707C10(a3, v6, 0);
    }

    else
    {

      sub_100707C10(a3, 0, 0x1600000001);
    }
  }

  else
  {
    v8 = *(a1 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v9) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid callback while reading SMS ready status...", &v9, 2u);
    }
  }
}

void sub_10122D878(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a2;
  v10 = a5;
  v11 = a4;
  v9[0] = a1;
  v9[1] = &v12;
  v9[2] = a3;
  v9[3] = &v11;
  v9[4] = &v10;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      if (subscriber::isValidSimSlot())
      {
        sub_10122DB00(a1, v12, a3, v11, v10);
      }

      return;
    }

    v7 = *(a1 + 32) == 0;
  }

  else
  {
    v7 = 1;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10124EAA4;
  block[3] = &unk_101F1DC60;
  block[4] = a1 + 8;
  block[5] = v9;
  v8 = *(a1 + 24);
  if (v7)
  {
    dispatch_sync(v8, block);
  }

  else
  {
    dispatch_async_and_wait(v8, block);
  }
}

uint64_t sub_10122D97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a2;
  v14 = 0;
  v15 = 0;
  *buf = &v16;
  v8 = sub_1002D750C(a1 + 2560, &v16);
  sub_10122B3A4(&v14, a1, a2, *(v8[5] + 244));
  v9 = v14;
  if (v14)
  {
    *buf = &v16;
    v10 = sub_1002D750C(a1 + 2560, &v16);
    (*(*v9 + 136))(v9, a3, *(v10[5] + 44));
    v11 = (*(*v14 + 208))(v14, a4);
  }

  else
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "encodedMessageBodyExceedsSizeInBytes outgoing message is invalid", buf, 2u);
    }

    v11 = 0;
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  return v11;
}

void sub_10122DAE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10122DB00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a2;
  v14 = 0;
  v15 = 0;
  *buf = &v16;
  v10 = sub_1002D750C(a1 + 2560, &v16);
  sub_10122B3A4(&v14, a1, a2, *(v10[5] + 244));
  v11 = v14;
  if (v14)
  {
    *buf = &v16;
    v12 = sub_1002D750C(a1 + 2560, &v16);
    (*(*v11 + 136))(v11, a3, *(v12[5] + 44));
    (*(*v14 + 216))(v14, a4, a5);
  }

  else
  {
    v13 = *(a1 + 40);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "getMessageSizeInEncodedCharactersAndSplitThreshold_sync outgoing message is invalid", buf, 2u);
    }
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_10122DC68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_10122DC80(unint64_t a1, uint64_t *a2)
{
  v3[0] = a1;
  v3[1] = 0uLL;
  sub_10124CA5C(v3 + 8, *a2, a2[1], (a2[1] - *a2) >> 4);
  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, (a1 + 8));
  operator new();
}

void sub_10122DDA4(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, (a1 + 8));
  operator new();
}

void sub_10122DE94(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v8 = (v4 - *a1) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v10 = v5 - *a1;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1000210A8(a1, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy((v12 - v14), *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    v4[1] = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 2;
  }

  *(a1 + 8) = v7;
}

void sub_10122DF90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v57 = 0;
  if (a2 == a3)
  {
    goto LABEL_81;
  }

  v4 = a3;
  v5 = a2;
  v6 = 0;
  do
  {
    v8 = *v5;
    v7 = v5[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v57 = *(v8 + 152);
    if (subscriber::isValidSimSlot())
    {
      v9 = (*(**(a1 + 48) + 16))(*(a1 + 48), v57);
      v55 = 0;
      v56 = 0;
      sGetSubscriberSimInterface();
      if (v55)
      {
        v10 = (*(*v55 + 232))(v55, v57, 31);
      }

      else
      {
        v11 = *(a1 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Failed to get SubscriberSimController", buf, 2u);
        }

        v10 = 0;
      }

      if ((sub_10122AC3C(a1, v57) & 1) == 0)
      {
        v14 = *v9;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Sending SMS not allowed", buf, 2u);
        }

        v15 = *(v8 + 136);
        *&buf[4] = *(v8 + 96);
        *&buf[8] = v57;
        *buf = 1;
        *&buf[12] = 0uLL;
        (*(*v15 + 16))(v15, a1 + 80, buf);
        goto LABEL_50;
      }

      v12 = *(v8 + 87);
      if (v12 < 0)
      {
        v13 = *(v8 + 72);
      }

      else
      {
        v13 = *(v8 + 87);
      }

      v16 = (v8 + 64);
      if (v13)
      {
        v17 = *v9;
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if ((v12 & 0x80000000) != 0)
          {
            v16 = *v16;
          }

          *buf = 136315138;
          *&buf[4] = v16;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I SMS Service Center Address set to :- %s", buf, 0xCu);
        }
      }

      else
      {
        v58 = &v57;
        v18 = sub_1002D750C(a1 + 2560, &v57);
        CSIPhoneNumber::getFullNumber(buf, (v18[5] + 80));
        if (*(v8 + 87) < 0)
        {
          operator delete(*v16);
        }

        *v16 = *buf;
        *(v8 + 80) = *&buf[16];
      }

      if (sub_1012295E4(a1))
      {
        ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
        *buf = v21;
        v25 = sub_100009510(&v20[1].__m_.__sig, buf);
        if (!v25)
        {
          std::mutex::unlock(v20);
          goto LABEL_40;
        }

        v26 = v25[3];
        v27 = v25[4];
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v20);
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v27);
          sub_100004A34(v27);
          v4 = a3;
          if (((v26 != 0) & v10) != 1)
          {
            goto LABEL_40;
          }
        }

        else
        {
          std::mutex::unlock(v20);
          if (((v26 != 0) & v10) == 0)
          {
            goto LABEL_40;
          }
        }

        v53 = v8;
        v54 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*a1 + 464))(a1, &v53);
        v28 = v54;
        if (!v54)
        {
          goto LABEL_44;
        }

LABEL_43:
        sub_100004A34(v28);
LABEL_44:
        v29 = v57;
        if (*(v8 + 63) < 0)
        {
          sub_100005F2C(__p, *(v8 + 40), *(v8 + 48));
        }

        else
        {
          *__p = *(v8 + 40);
          v51 = *(v8 + 56);
        }

        isEmergencyTextNumberForSlot_sync = sms::Controller::isEmergencyTextNumberForSlot_sync(a1, v29, __p);
        if (SHIBYTE(v51) < 0)
        {
          operator delete(__p[0]);
        }

        v6 |= isEmergencyTextNumberForSlot_sync;
LABEL_50:
        if (v56)
        {
          sub_100004A34(v56);
        }

        goto LABEL_52;
      }

LABEL_40:
      *&v52 = v8;
      *(&v52 + 1) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10122E804(a1, &v52);
      v28 = v7;
      if (!v7)
      {
        goto LABEL_44;
      }

      goto LABEL_43;
    }

LABEL_52:
    if (v7)
    {
      sub_100004A34(v7);
    }

    v5 += 2;
  }

  while (v5 != v4);
  if ((v6 & 1) == 0 || *(a1 + 2376) != 2)
  {
LABEL_81:
    sub_10122FFB8(a1);
    return;
  }

  *buf = &v57;
  if (*(sub_1002D750C(a1 + 2560, &v57)[5] + 42) == 1)
  {
    *buf = &v57;
    if ((*(sub_1002D750C(a1 + 2560, &v57)[5] + 294) & 1) == 0)
    {
      v41 = *(a1 + 40);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#I Transport available for Emergency Text", buf, 2u);
      }

      goto LABEL_81;
    }
  }

  v31 = *(a1 + 40);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#I Waiting for a better transport for emergency text.", buf, 2u);
  }

  v32 = *(a1 + 16);
  if (!v32 || (v33 = *(a1 + 8), (v34 = std::__shared_weak_count::lock(v32)) == 0))
  {
    sub_100013CC4();
  }

  v35 = v34;
  atomic_fetch_add_explicit(&v34->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v34);
  Registry::getTimerService(buf, *(a1 + 80));
  v36 = *buf;
  sub_10000501C(v48, "SMS Hold timer");
  v37 = *(a1 + 24);
  object = v37;
  if (v37)
  {
    dispatch_retain(v37);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1174405120;
  aBlock[2] = sub_10122E87C;
  aBlock[3] = &unk_101F1D4F8;
  aBlock[4] = a1;
  aBlock[5] = v33;
  v44 = v35;
  atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  v45 = v57;
  v46 = _Block_copy(aBlock);
  sub_100D23364(v36, v48, 0, 5000000, &object, &v46);
  v38 = v55;
  v55 = 0;
  v39 = *(a1 + 2640);
  *(a1 + 2640) = v38;
  if (v39)
  {
    (*(*v39 + 8))(v39);
    v40 = v55;
    v55 = 0;
    if (v40)
    {
      (*(*v40 + 8))(v40);
    }
  }

  if (v46)
  {
    _Block_release(v46);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v49 < 0)
  {
    operator delete(v48[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  if (v44)
  {
    std::__shared_weak_count::__release_weak(v44);
  }

  std::__shared_weak_count::__release_weak(v35);
}

void sub_10122E6F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, void *aBlock, dispatch_object_t object, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10122E804(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 164);
  v4 = *a2;
  *(v4 + 88) = v3;
  *(a1 + 164) = v3 + 1;
  v6 = *(v4 + 152);
  v7 = &v6;
  v5 = sub_1002D750C(a1 + 2560, &v6);
  sub_10122DE94(v5[5] + 512, a2);
}

void sub_10122E87C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v6 = *(v3 + 2640);
        *(v3 + 2640) = 0;
        if (v6)
        {
          (*(*v6 + 8))(v6);
        }

        if (sub_10122E954(v3, *(a1 + 56)))
        {
          sub_10122EA4C(v3);
        }

        else
        {
          sub_10122EA90(v3, *(a1 + 56));
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10122E954(uint64_t a1, int a2)
{
  v10 = a2;
  v11 = &v10;
  v3 = sub_1002D750C(a1 + 2560, &v10);
  if (*(v3[5] + 512) == *(v3[5] + 520) || !*(a1 + 96))
  {
    return 1;
  }

  v11 = &v10;
  v4 = *(sub_1002D750C(a1 + 2560, &v10)[5] + 512);
  v5 = *v4;
  v6 = v4[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(v5 + 88);
  v8 = v7 != sms::Model::getEnqueueId(*(a1 + 96));
  if (v6)
  {
    sub_100004A34(v6);
  }

  return v8;
}

void sub_10122EA34(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10122EA4C(uint64_t a1)
{
  v2 = *(a1 + 104);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10122FFB8(a1);
}

void sub_10122EA90(uint64_t a1, int a2)
{
  v117 = a2;
  v3 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  buf.__r_.__value_.__r.__words[0] = &v117;
  v4 = sub_1002D750C(a1 + 2560, &v117);
  if (*(v4[5] + 512) != *(v4[5] + 520))
  {
    v5 = *(a1 + 96);
    if (v5)
    {
      v6 = *v3;
      if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
      {
        MessageID = sms::Model::getMessageID(v5);
        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = MessageID;
        v8 = "#I Message sending in progress: [ID: %hu]";
        v9 = v6;
        v10 = 8;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, &buf, v10);
        return;
      }

      return;
    }

    buf.__r_.__value_.__r.__words[0] = &v117;
    v12 = *(sub_1002D750C(a1 + 2560, &v117)[5] + 512);
    v14 = *v12;
    v13 = v12[1];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v116 = *(v14 + 38);
    if ((subscriber::isValidSimSlot() & 1) == 0)
    {
      goto LABEL_182;
    }

    buf.__r_.__value_.__r.__words[0] = &v116;
    v15 = *(sub_1002D750C(a1 + 2560, &v116)[5] + 244);
    if (!sub_100A7F520() || (buf.__r_.__value_.__r.__words[0] = &v116, *(sub_1002D750C(a1 + 2560, &v116)[5] + 244)))
    {
LABEL_13:
      buf.__r_.__value_.__r.__words[0] = &v116;
      if (!*(sub_1002D750C(a1 + 2560, &v116)[5] + 244))
      {
        if (!sub_10123005C(a1, v116))
        {
          *&buf.__r_.__value_.__l.__data_ = 0uLL;
          sub_100E13114(&buf, *(a1 + 8), *(a1 + 16));
          Registry::getTimerService(v118, *(a1 + 80));
          v28 = *v118;
          sub_10000501C(__p, "SMS encoder wait");
          v29 = *(a1 + 24);
          object = v29;
          if (v29)
          {
            dispatch_retain(v29);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_101230214;
          aBlock[3] = &unk_101F1D528;
          size = buf.__r_.__value_.__l.__size_;
          aBlock[4] = a1;
          v107 = *&buf.__r_.__value_.__l.__data_;
          if (buf.__r_.__value_.__l.__size_)
          {
            atomic_fetch_add_explicit((buf.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
          }

          v108 = v116;
          v109 = _Block_copy(aBlock);
          sub_100D23364(v28, __p, 0, 5000000, &object, &v109);
          *v121 = &v116;
          v31 = sub_1002D750C(a1 + 2560, &v116)[5];
          v32 = v113;
          v113 = 0;
          v33 = *(v31 + 320);
          *(v31 + 320) = v32;
          if (v33)
          {
            (*(*v33 + 8))(v33);
            v34 = v113;
            v113 = 0;
            if (v34)
            {
              (*(*v34 + 8))(v34);
            }
          }

          if (v109)
          {
            _Block_release(v109);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v112 < 0)
          {
            operator delete(__p[0]);
          }

          if (*&v118[8])
          {
            sub_100004A34(*&v118[8]);
          }

          v35 = *v3;
          if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
          {
            *v118 = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Current encoder is unknown, waiting for encoder to become available", v118, 2u);
          }

          if (*(&v107 + 1))
          {
            std::__shared_weak_count::__release_weak(*(&v107 + 1));
          }

          if (size)
          {
            std::__shared_weak_count::__release_weak(size);
          }

          goto LABEL_182;
        }

        v21 = *v3;
        if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v22 = "#I Rat change timer is already running";
          v23 = v21;
          v24 = 2;
LABEL_30:
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v22, &buf, v24);
        }

LABEL_182:
        if (v13)
        {
          sub_100004A34(v13);
        }

        return;
      }

LABEL_14:
      if (*(v14 + 30))
      {
        v16 = *(v14 + 30);
      }

      else
      {
        v16 = v15;
      }

      sub_10122B3A4(&buf, a1, *(v14 + 38), v16);
      v17 = *&buf.__r_.__value_.__l.__data_;
      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      v18 = *(a1 + 104);
      *(a1 + 96) = v17;
      if (v18)
      {
        sub_100004A34(v18);
        if (buf.__r_.__value_.__l.__size_)
        {
          sub_100004A34(buf.__r_.__value_.__l.__size_);
        }

        v19 = *(a1 + 96);
        if (v19)
        {
LABEL_21:
          if (*(v14 + 32) == 2 && sms::Model::getIMSMode(v19) != 2)
          {
            v48 = *v3;
            if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(buf.__r_.__value_.__l.__data_) = 0;
              _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Can't send the message since assigned transport is not IMS over AP", &buf, 2u);
            }

            *&buf.__r_.__value_.__l.__data_ = 0uLL;
            sub_10123051C(a1, v116, 3, &buf);
            goto LABEL_182;
          }

          if ((*(*v14[17] + 24))(v14[17]) == 2)
          {
            (*(**(a1 + 96) + 104))(*(a1 + 96), 1);
          }

          v20 = *(a1 + 96);
          if (*(v14 + 116) == 1)
          {
            (*(*v20 + 136))(v20, v14 + 2, *(v14 + 25));
          }

          else
          {
            (*(*v20 + 144))(v20, v14 + 2);
          }

          (*(**(a1 + 96) + 120))(*(a1 + 96), v14 + 5);
          v36 = *(v14 + 87);
          if ((v36 & 0x8000000000000000) != 0)
          {
            v36 = v14[9];
          }

          if (v36)
          {
            v37 = *(a1 + 96);
            CSIPhoneNumber::CSIPhoneNumber();
            (*(*v37 + 296))(v37, &buf);
            if (v131 < 0)
            {
              operator delete(v130);
            }

            if (v129 < 0)
            {
              operator delete(v128);
            }

            if (v127 < 0)
            {
              operator delete(v126);
            }

            if (v125 < 0)
            {
              operator delete(v124);
            }

            if (v123 < 0)
            {
              operator delete(buf.__r_.__value_.__l.__size_);
            }
          }

          if (*(v14 + 28) != -1)
          {
            (*(**(a1 + 96) + 304))(*(a1 + 96));
          }

          v38 = *(v14 + 31);
          if (v38)
          {
            sms::Model::setTransportType(*(a1 + 96), v38);
            v39 = *v3;
            if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
            {
              v40 = sms::asString(*(v14 + 31));
              LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
              *(buf.__r_.__value_.__r.__words + 4) = v40;
              _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I Overriding transport to %s", &buf, 0xCu);
            }
          }

          sms::Model::setEnqueueId(*(a1 + 96), *(v14 + 22));
          v41 = *(a1 + 96);
          v42 = *(v14 + 117);
          *(v41 + 54) = v42;
          if (v42 == 1)
          {
            sms::Model::setMessageID(v41, *(v14 + 52));
          }

          v43 = *(v14 + 116);
          LODWORD(v113) = v116;
          v44 = (*(**(a1 + 48) + 16))(*(a1 + 48));
          v45 = v44;
          v46 = *(a1 + 96);
          v47 = v46[12];
          if (v47 != 1)
          {
            if (v47 == 2)
            {
              (*(*v46 + 256))(&buf, *(a1 + 96));
              sms::Model::setDAForSmsOverIMS(v46, &buf);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              v59 = *v44;
              if (os_log_type_enabled(*v44, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Unable to determine the message type", &buf, 2u);
              }
            }

            goto LABEL_150;
          }

          ServiceMap = Registry::getServiceMap(*(a1 + 80));
          v50 = ServiceMap;
          if ((v51 & 0x8000000000000000) != 0)
          {
            v52 = (v51 & 0x7FFFFFFFFFFFFFFFLL);
            v53 = 5381;
            do
            {
              v51 = v53;
              v54 = *v52++;
              v53 = (33 * v53) ^ v54;
            }

            while (v54);
          }

          std::mutex::lock(ServiceMap);
          buf.__r_.__value_.__r.__words[0] = v51;
          v55 = sub_100009510(&v50[1].__m_.__sig, &buf);
          v102 = v45;
          if (v55)
          {
            v57 = v55[3];
            v56 = v55[4];
            if (v56)
            {
              atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v50);
              atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
              v103 = v56;
              sub_100004A34(v56);
              v58 = 0;
              goto LABEL_104;
            }
          }

          else
          {
            v57 = 0;
          }

          std::mutex::unlock(v50);
          v103 = 0;
          v58 = 1;
LABEL_104:
          if (v57)
          {
            memset(v118, 0, sizeof(v118));
            PersonalityIdFromSlotId();
            (*(*v57 + 40))(v118, v57, &buf);
            if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(buf.__r_.__value_.__l.__data_);
            }

            v64 = *v118;
            if (*v118)
            {
              sub_10000501C(&buf, "addressSmsToRecipient");
              v65 = (*(*v64 + 64))(v64, &buf, 0);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }

              if (*&v118[8])
              {
                sub_100004A34(*&v118[8]);
              }

              if (v65)
              {
                v66 = *(a1 + 96);
LABEL_120:
                (*(*v66 + 256))(&buf, v66);
                sms::Model::setDAForSmsOverIMS(v66, &buf);
                if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(buf.__r_.__value_.__l.__data_);
                }

                if ((v58 & 1) == 0)
                {
                  sub_100004A34(v103);
                }

LABEL_150:
                v84 = *(a1 + 96);
                if (v84[12] == 1 && *v14)
                {
                  (*(*v84 + 56))(v84, **v14);
                  (*(**(a1 + 96) + 72))(*(a1 + 96), (*v14)[1]);
                  (*(**(a1 + 96) + 80))(*(a1 + 96), *(*v14 + 8));
                  v84 = *(a1 + 96);
                }

                v84[38] = *(v14 + 2);
                v85 = (*(*v84 + 152))(v84);
                if (v85)
                {
                  v86 = *v3;
                  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
                  {
                    v87 = sms::asString();
                    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                    *(buf.__r_.__value_.__r.__words + 4) = v87;
                    _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I Failed to compose the SMS: %s", &buf, 0xCu);
                  }

                  v88 = *(a1 + 96);
                  if (v88)
                  {
                    v89 = v116;
                    TransportType = sms::Model::getTransportType(v88);
                    sms::Controller::submitSMSSendEndMetric(a1, v89, TransportType, *(v14 + 2), (v14 + 5), 5, 2, v91, v14[20], v14[21]);
                  }

                  else
                  {
                    v95 = *v3;
                    if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
                    {
                      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                      _os_log_error_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "Failed to submit SMS send end metric. Invalid msg.", &buf, 2u);
                    }
                  }

                  if (v85 == 3)
                  {
                    v96 = 16;
                  }

                  else
                  {
                    v96 = 45;
                  }

                  if (v85 == 4)
                  {
                    v96 = 50;
                  }

                  *(buf.__r_.__value_.__r.__words + 4) = &_mh_execute_header;
                  LODWORD(buf.__r_.__value_.__l.__data_) = v96;
                  HIDWORD(buf.__r_.__value_.__r.__words[1]) = 5;
                  sub_10123051C(a1, v116, 1, &buf);
                  goto LABEL_182;
                }

                v92 = *(v14 + 2);
                if (v92 == 4)
                {
                  v97 = *v3;
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                    _os_log_impl(&_mh_execute_header, v97, OS_LOG_TYPE_DEFAULT, "#I AML SMS detected: Skipping emergency mode extension", &buf, 2u);
                  }

                  goto LABEL_181;
                }

                if (v92 == 3)
                {
                  Registry::getTimerService(&buf, *(a1 + 80));
                  v93 = (**buf.__r_.__value_.__l.__data_)(buf.__r_.__value_.__r.__words[0]);
                  *v118 = &v116;
                  v94 = sub_1002D750C(a1 + 2560, &v116)[5];
                  if ((*(v94 + 624) & 1) == 0)
                  {
                    *(v94 + 624) = 1;
                  }

                  *(v94 + 616) = v93;
                  if (buf.__r_.__value_.__l.__size_)
                  {
                    sub_100004A34(buf.__r_.__value_.__l.__size_);
                  }

LABEL_181:
                  sub_101230BE4(a1);
                  goto LABEL_182;
                }

                v98 = v116;
                if (*(v14 + 63) < 0)
                {
                  sub_100005F2C(v104, v14[5], v14[6]);
                }

                else
                {
                  *v104 = *(v14 + 5);
                  v105 = v14[7];
                }

                v99 = sub_101230714(a1, v98, v104);
                if (SHIBYTE(v105) < 0)
                {
                  operator delete(v104[0]);
                }

                if (!v99 || (isActive() & 1) != 0)
                {
                  goto LABEL_181;
                }

                v100 = *v3;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_DEFAULT))
                {
                  v101 = asString();
                  LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
                  *(buf.__r_.__value_.__r.__words + 4) = v101;
                  v22 = "#I Waiting for emergency mode ready..[%s]";
                  v23 = v100;
                  v24 = 12;
                  goto LABEL_30;
                }

                goto LABEL_182;
              }
            }

            else
            {
              v67 = *v102;
              if (os_log_type_enabled(*v102, OS_LOG_TYPE_ERROR))
              {
                LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                _os_log_error_impl(&_mh_execute_header, v67, OS_LOG_TYPE_ERROR, "Unable to determine the imsConfigRef", &buf, 2u);
              }

              if (*&v118[8])
              {
                sub_100004A34(*&v118[8]);
              }
            }
          }

          if ((v43 & 1) == 0)
          {
            v66 = *(a1 + 96);
            if (v66[96])
            {
              goto LABEL_120;
            }
          }

          *&buf.__r_.__value_.__r.__words[1] = 0uLL;
          buf.__r_.__value_.__r.__words[0] = &buf.__r_.__value_.__l.__size_;
          *v118 = &v113;
          v68 = *(sub_1002D750C(a1 + 2560, &v113)[5] + 512);
          v69 = *v68;
          v70 = v68[1];
          if (v70)
          {
            atomic_fetch_add_explicit((v70 + 8), 1uLL, memory_order_relaxed);
          }

          if (*(v69 + 8) == 2)
          {
            *v118 = &v113;
            v71 = sub_1002D750C(a1 + 2560, &v113)[5];
            v72 = *(v71 + 415);
            if (v72 < 0)
            {
              v72 = *(v71 + 400);
            }

            if (v72)
            {
              *v118 = &v113;
              v73 = sub_1002D750C(a1 + 2560, &v113)[5];
              v121[0] = 2;
              *v118 = v121;
              v74 = sub_10124F8B4(&buf, 2u);
              std::string::operator=((v74 + 5), (v73 + 392));
            }
          }

          v75 = *(a1 + 416);
          if (v75)
          {
            v76 = a1 + 416;
            do
            {
              if (*(v75 + 32) >= v113)
              {
                v76 = v75;
              }

              v75 = *(v75 + 8 * (*(v75 + 32) < v113));
            }

            while (v75);
            if (v76 != a1 + 416 && v113 >= *(v76 + 32))
            {
              v77 = *(v76 + 63);
              if (v77 < 0)
              {
                v77 = *(v76 + 48);
              }

              if (v77)
              {
                v121[0] = 0;
                *v118 = v121;
                v78 = sub_10124F8B4(&buf, 0);
                std::string::operator=((v78 + 5), (v76 + 40));
              }
            }
          }

          *v121 = &v113;
          v79 = sub_1002D750C(a1 + 2560, &v113);
          CSIPhoneNumber::getFullNumber(v118, (v79[5] + 80));
          if (SHIBYTE(v119) < 0)
          {
            v80 = *&v118[8];
            operator delete(*v118);
            if (!v80)
            {
              goto LABEL_147;
            }
          }

          else if (!HIBYTE(v119))
          {
            goto LABEL_147;
          }

          *v121 = &v113;
          v81 = sub_1002D750C(a1 + 2560, &v113);
          CSIPhoneNumber::getFullNumber(v118, (v81[5] + 80));
          v120 = 1;
          *v121 = &v120;
          v82 = sub_10124F8B4(&buf, 1u);
          v83 = v82;
          if (*(v82 + 63) < 0)
          {
            operator delete(v82[5]);
          }

          *(v83 + 5) = *v118;
          v83[7] = v119;
LABEL_147:
          memset(v118, 0, sizeof(v118));
          v119 = 0;
          sub_1012300C8(v118, a1, v113);
        }
      }

      else
      {
        v19 = v17;
        if (v17)
        {
          goto LABEL_21;
        }
      }

      v25 = *v3;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = sms::asString();
        LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
        *(buf.__r_.__value_.__r.__words + 4) = v26;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Failed to compose the SMS with encoder: %s", &buf, 0xCu);
      }

      *&buf.__r_.__value_.__l.__data_ = 0uLL;
      sub_10123051C(a1, v116, 1, &buf);
      goto LABEL_182;
    }

    v27 = v116;
    if (*(v14 + 63) < 0)
    {
      sub_100005F2C(__dst, v14[5], v14[6]);
    }

    else
    {
      *__dst = *(v14 + 5);
      v115 = v14[7];
    }

    isEmergencyTextNumberForSlot_sync = sms::Controller::isEmergencyTextNumberForSlot_sync(a1, v27, __dst);
    v61 = isEmergencyTextNumberForSlot_sync;
    if (SHIBYTE(v115) < 0)
    {
      operator delete(__dst[0]);
      if (!v61)
      {
        goto LABEL_13;
      }
    }

    else if (!isEmergencyTextNumberForSlot_sync)
    {
      goto LABEL_13;
    }

    v62 = *v3;
    if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
    {
      v63 = sms::asString();
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = v63;
      _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, "#I Using %s encoder in lockdown", &buf, 0xCu);
    }

    v15 = 1;
    goto LABEL_14;
  }

  v11 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    v8 = "#I No pending SMS messages";
    v9 = v11;
    v10 = 2;
    goto LABEL_7;
  }
}

void sub_10122FD3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, uint64_t a29, void *aBlock, dispatch_object_t object, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, void *__p, uint64_t a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, std::__shared_weak_count *a56, int a57, __int16 a58, char a59, char a60)
{
  if (v60)
  {
    sub_100004A34(v60);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10122FF8C(uint64_t result, uint64_t a2)
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

void sub_10122FFA8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10122FFB8(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    while (v2 != v5)
    {
      v3 = *v2++;
      sub_10122EA90(a1, v3);
      while (v2 != v5 && (v6(*v2) & 1) == 0)
      {
        ++v2;
      }
    }
  }
}

uint64_t sub_10123005C(uint64_t a1, int a2)
{
  v4 = a2;
  result = subscriber::isValidSimSlot();
  if (result)
  {
    v5 = &v4;
    return *(sub_1002D750C(a1 + 2560, &v4)[5] + 320) != 0;
  }

  return result;
}

void sub_1012300C8(void *a1, uint64_t a2, int a3)
{
  v10 = a3;
  v11 = &v10;
  v4 = sub_1002D750C(a2 + 2560, &v10)[5];
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = *(v4 + 368);
  v5 = *(v4 + 376);
  if (v5 != v6)
  {
    sub_100034CCC(a1, v5 - v6);
  }

  v7 = a1[2];
  v8 = 2 * v7;
  if (2 * v7 <= 2)
  {
    v8 = 2;
  }

  if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v8;
  }

  sub_100034CCC(a1, v9);
}

void sub_1012301E4(_Unwind_Exception *exception_object)
{
  v4 = *v1;
  if (*v1)
  {
    *v2 = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_101230214(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 40))
      {
        v7 = *(a1 + 56);
        v6 = (a1 + 56);
        if (sub_10123005C(v3, v7))
        {
          v12 = v6;
          v8 = sub_1002D750C(v3 + 2560, v6)[5];
          v9 = *(v8 + 320);
          *(v8 + 320) = 0;
          if (v9)
          {
            (*(*v9 + 8))(v9);
          }

          v10 = *(v3 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *v11 = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I RAT change timer expiry. Purging MO messages.", v11, 2u);
          }

          sub_10123032C(v3, 0);
        }
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10123032C(uint64_t a1, char a2)
{
  subscriber::makeSimSlotRange();
  v4 = v24;
  v5 = v25;
  if (v24 != v25)
  {
    do
    {
      if (v26(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v25);
    v15 = v25;
    if (v4 != v25)
    {
      v14 = v26;
      do
      {
        v23 = *v4;
        v16 = &v23;
        v6 = sub_1002D750C(a1 + 2560, &v23)[5];
        v7 = *(v6 + 512);
        v8 = *(v6 + 520);
        while (v7 != v8)
        {
          v9 = *v7;
          v10 = v7[1];
          if (v10)
          {
            atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v21 = 0;
          v20 = 0;
          v11 = *(v9 + 136);
          v12 = *(v9 + 152);
          HIDWORD(v16) = *(v9 + 96);
          v17 = v12;
          LODWORD(v16) = 1;
          v18 = 45;
          v19 = a2;
          v22 = 5;
          (*(*v11 + 16))(v11, a1 + 80, &v16);
          if (v10)
          {
            sub_100004A34(v10);
          }

          v7 += 2;
        }

        v16 = &v23;
        v13 = sub_1002D750C(a1 + 2560, &v23);
        sub_100021348((v13[5] + 512));
        for (++v4; v4 != v5; ++v4)
        {
          if (v14(*v4))
          {
            break;
          }
        }
      }

      while (v4 != v15);
    }
  }
}

void sub_101230504(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10123051C(uint64_t a1, int a2, int a3, __int128 *a4)
{
  v25 = a2;
  v22 = &v25;
  v7 = sub_1002D750C(a1 + 2560, &v25);
  if (*(v7[5] + 520) != *(v7[5] + 512))
  {
    v22 = &v25;
    v8 = *(sub_1002D750C(a1 + 2560, &v25)[5] + 512);
    v9 = *v8;
    v10 = v8[1];
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v9 + 136);
    HIDWORD(v22) = *(v9 + 96);
    v23 = v25;
    LODWORD(v22) = a3;
    v24 = *a4;
    (*(*v11 + 16))(v11, a1 + 80, &v22);
    v22 = &v25;
    v12 = sub_1002D750C(a1 + 2560, &v25)[5];
    v22 = &v25;
    v13 = *(sub_1002D750C(a1 + 2560, &v25)[5] + 512);
    v14 = *(v12 + 520);
    if (v13 + 16 != v14)
    {
      do
      {
        v15 = *(v13 + 16);
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        v16 = *(v13 + 8);
        *v13 = v15;
        if (v16)
        {
          sub_100004A34(v16);
        }

        v17 = v13 + 16;
        v18 = v13 + 32;
        v13 += 16;
      }

      while (v18 != v14);
      v14 = *(v12 + 520);
      v13 = v17;
    }

    while (v14 != v13)
    {
      v19 = *(v14 - 8);
      if (v19)
      {
        sub_100004A34(v19);
      }

      v14 -= 16;
    }

    *(v12 + 520) = v13;
    if (v10)
    {
      sub_100004A34(v10);
    }
  }

  v20 = *(a1 + 104);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  if (v20)
  {
    sub_100004A34(v20);
  }

  return sub_10122FFB8(a1);
}

void sub_1012306F4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_101230714(uint64_t a1, int a2, uint64_t a3)
{
  v34 = a2;
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v33 = *(a3 + 16);
  }

  isEmergencyTextNumberForSlot_sync = sms::Controller::isEmergencyTextNumberForSlot_sync(a1, a2, __p);
  v8 = isEmergencyTextNumberForSlot_sync;
  if (SHIBYTE(v33) < 0)
  {
    operator delete(__p[0]);
    if (!v8)
    {
      return 0;
    }
  }

  else if (!isEmergencyTextNumberForSlot_sync)
  {
    return 0;
  }

  if (sub_100A7F520())
  {
    v9 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Emergency Text: Bypassing home country check", buf, 2u);
    }
  }

  else
  {
    v10 = *(a1 + 2328);
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = a1 + 2328;
    do
    {
      if (*(v10 + 28) >= v34)
      {
        v11 = v10;
      }

      v10 = *(v10 + 8 * (*(v10 + 28) < v34));
    }

    while (v10);
    if (v11 != a1 + 2328 && v34 >= *(v11 + 28))
    {
      if ((*(v11 + 32) & 1) == 0)
      {
        v29 = *v6;
        if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#I Emergency Text: Not in home country.", buf, 2u);
        }

        return 0;
      }
    }

    else
    {
LABEL_18:
      v12 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Emergency Text: Failed to determine if in home country", buf, 2u);
      }
    }
  }

  if (sms::Model::isIMSOverAP(*(a1 + 96)))
  {
    *buf = &v34;
    if (*(sub_1002D750C(a1 + 2560, &v34)[5] + 294))
    {
      v13 = 2;
    }

    else
    {
      *buf = &v34;
      if (*(sub_1002D750C(a1 + 2560, &v34)[5] + 288) == 10)
      {
        v13 = 4;
      }

      else
      {
        v13 = 3;
      }
    }
  }

  else
  {
    v13 = 1;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  if (!v20)
  {
    v22 = 0;
    goto LABEL_34;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (!v21)
  {
LABEL_34:
    std::mutex::unlock(v15);
    v21 = 0;
    v23 = 1;
    goto LABEL_35;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v15);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v23 = 0;
LABEL_35:
  v24 = v22 != 0;
  v25 = *v6;
  if (v22)
  {
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = a3;
      if (*(a3 + 23) < 0)
      {
        v26 = *a3;
      }

      v27 = EmCallTypeAsString();
      *buf = 136315394;
      *&buf[4] = v26;
      v36 = 2080;
      v37 = v27;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Emergency dest addr: %s Call Type: %s", buf, 0x16u);
    }

    v28 = *(a1 + 96);
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v31, *a3, *(a3 + 8));
    }

    else
    {
      v31 = *a3;
    }

    sms::Model::setTextToEmergencyFlag(v28, &v31);
    if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v31.__r_.__value_.__l.__data_);
    }

    (*(*v22 + 64))(v22, v34, v13);
  }

  else if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Failed to get Emergency Manager Interface...", buf, 2u);
  }

  if ((v23 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  return v24;
}

void sub_101230B80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_101230BE4(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (!v1)
  {
    return;
  }

  v25 = 0;
  v26 = 0;
  v3 = *(a1 + 104);
  v24[0] = v1;
  v24[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101229924(&v25, a1, v24);
  if (v3)
  {
    sub_100004A34(v3);
  }

  (*(**(a1 + 96) + 360))(*(a1 + 96));
  v4 = *(*(a1 + 96) + 8);
  (*(**(a1 + 48) + 16))(*(a1 + 48), v4);
  (*(**(a1 + 96) + 192))(&__p);
  if ((v23 & 0x80u) == 0)
  {
    v5 = v23;
  }

  else
  {
    v5 = v22;
  }

  v6 = (*(**(a1 + 96) + 176))(*(a1 + 96));
  TransportType = sms::Model::getTransportType(*(a1 + 96));
  v8 = *(a1 + 96);
  v9 = v8[38];
  v10 = (*(*v8 + 128))(v8);
  sms::Controller::submitSMSSendStartMetric(a1, v4, v5, v6, TransportType, v9, v10);
  if (v23 < 0)
  {
    operator delete(__p);
  }

  v11 = v25;
  v12 = *(a1 + 104);
  v19 = *(a1 + 96);
  v20 = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v27 = v4;
  __p = &v27;
  v13 = sub_1002D750C(a1 + 2560, &v27);
  if (*(v13[5] + 512) == *(v13[5] + 520))
  {
    v18 = 0;
  }

  else
  {
    __p = &v27;
    v14 = *(sub_1002D750C(a1 + 2560, &v27)[5] + 512);
    v15 = *v14;
    v16 = v14[1];
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if ((*(v15 + 92) & 1) != 0 || (__p = &v27, v17 = sub_1002D750C(a1 + 2560, &v27), *(v17[5] + 520) - *(v17[5] + 512) > 0x10uLL))
    {
      v18 = 1;
      if (!v16)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    v18 = (*(**(a1 + 96) + 176))(*(a1 + 96)) > 1;
    if (v16)
    {
LABEL_22:
      sub_100004A34(v16);
    }
  }

LABEL_23:
  (*(*v11 + 56))(v11, &v19, v18);
  if (v20)
  {
    sub_100004A34(v20);
  }

  if (v26)
  {
    sub_100004A34(v26);
  }
}

void sub_101230F08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (v21)
  {
    sub_100004A34(v21);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_101230F7C(uint64_t a1)
{
  v6 = *(*(a1 + 96) + 8);
  v7 = &v6;
  v2 = *(sub_1002D750C(a1 + 2560, &v6)[5] + 244);
  v3 = *(a1 + 96);
  if (v2 == v3[12] || ((*(*v3 + 328))(v3) & 1) != 0)
  {
    sub_101230BE4(a1);
  }

  else
  {
    v4 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v6);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Resetting current message, encoders changed", v5, 2u);
    }

    sub_10122EA4C(a1);
  }
}

uint64_t sub_101231098(uint64_t a1, int a2)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      block[0] = &v8;
      v3 = *(sub_1002D750C(a1 + 2560, &v8)[5] + 42);
      return v3 & 1;
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10124F97C;
  v9[3] = &unk_101F1DD48;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = *(a1 + 24);
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v12 = sub_1000593F4;
    v13 = &unk_101F1DB80;
    v14 = &v16;
    v15 = &v10;
    dispatch_sync(v5, block);
  }

  else
  {
    v12 = sub_10006A350;
    v13 = &unk_101F1DBA0;
    v14 = &v16;
    v15 = &v10;
    dispatch_async_and_wait(v5, block);
  }

  v3 = v16;
  return v3 & 1;
}

uint64_t sub_101231234(uint64_t a1, uint64_t a2, __int128 *a3)
{
  if (a3 != a2)
  {
    v5 = sub_10124CB1C(a3, *(a1 + 8), a2);
    for (i = *(a1 + 8); i != v5; i -= 16)
    {
      v7 = *(i - 8);
      if (v7)
      {
        sub_100004A34(v7);
      }
    }

    *(a1 + 8) = v5;
  }

  return a2;
}

void sub_1012312A8(uint64_t a1, unsigned int **a2)
{
  v221 = 0uLL;
  v222 = 0;
  (*(**a2 + 192))(&v221);
  v220 = (*a2)[2];
  if ((subscriber::isValidSimSlot() & 1) == 0)
  {
    goto LABEL_50;
  }

  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), v220);
  v5 = v4;
  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  memset(&__p, 0, 24);
  capabilities::ct::getSupportedMTSMSTypes(&__p.var0, v4);
  if (*(a1 + 2620) == 1)
  {
    v8 = *&__p.var0;
    if (__p.var2.__rep_.__l.__size_ == *&__p.var0)
    {
      if (__p.var2.__rep_.__l.__size_)
      {
        __p.var2.__rep_.__l.__data_ = *&__p.var0;
        operator delete(*&__p.var0);
        memset(&__p, 0, 24);
      }

      operator new();
    }

    data = __p.var2.__rep_.__l.__data_;
    v10 = &__p.var2.__rep_.__l.__data_[-*&__p.var0];
    if (__p.var2.__rep_.__l.__data_ == *&__p.var0)
    {
      *__p.var2.__rep_.__l.__data_ = 0;
      v11 = &data[v10 + 4];
    }

    else
    {
      **&__p.var0 = 0;
      v11 = (v8 + 4);
    }

    __p.var2.__rep_.__l.__data_ = v11;
  }

  else
  {
    v11 = __p.var2.__rep_.__l.__data_;
  }

  v12 = *&__p.var0;
  if (*&__p.var0 != v11)
  {
    v13 = *&__p.var0;
    while (*v13)
    {
      v13 += 4;
      if (v13 == v11)
      {
        goto LABEL_22;
      }
    }

    if (v13 != v11)
    {
      goto LABEL_31;
    }

LABEL_22:
    while (*v12 != 2)
    {
      v12 += 4;
      if (v12 == v11)
      {
        goto LABEL_29;
      }
    }

    if (v12 != v11)
    {
      *&v233 = v7;
      *(&v233 + 1) = v6;
      if (v6)
      {
        atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v14 = sub_101235E6C(a1, &v233);
      if (v6)
      {
        sub_100004A34(v6);
      }

      if (v14)
      {
        goto LABEL_31;
      }
    }
  }

LABEL_29:
  if ((*(*v7 + 248))(v7) == 2 || *(a1 + 2728) != 0.0)
  {
LABEL_31:
    v15 = 1;
    goto LABEL_32;
  }

  v40 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v7[2]);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "MT SMS type not handled...", &buf, 2u);
  }

  v15 = 0;
LABEL_32:
  if (*&__p.var0)
  {
    __p.var2.__rep_.__l.__data_ = *&__p.var0;
    operator delete(*&__p.var0);
  }

  if (v6)
  {
    sub_100004A34(v6);
  }

  if ((v15 & 1) == 0)
  {
    v19 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    LOWORD(__p.var0) = 0;
    v20 = "#I MT SMS of this type not supported...";
    goto LABEL_49;
  }

  v16 = HIBYTE(v222);
  if (v222 < 0)
  {
    v16 = *(&v221 + 1);
  }

  if (v16)
  {
    goto LABEL_40;
  }

  v22 = v220;
  v23 = *(a1 + 80);
  *&v233 = 0;
  ServiceMap = Registry::getServiceMap(v23);
  v25 = ServiceMap;
  if (v26 < 0)
  {
    v27 = (v26 & 0x7FFFFFFFFFFFFFFFLL);
    v28 = 5381;
    do
    {
      v26 = v28;
      v29 = *v27++;
      v28 = (33 * v28) ^ v29;
    }

    while (v29);
  }

  std::mutex::lock(ServiceMap);
  *&__p.var0 = v26;
  v30 = sub_100009510(&v25[1].__m_.__sig, &__p);
  if (v30)
  {
    v32 = v30[3];
    v31 = v30[4];
    if (v31)
    {
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v25);
      atomic_fetch_add_explicit(&v31->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v31);
      v34 = 0;
      goto LABEL_82;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v25);
  v31 = 0;
  v34 = 1;
LABEL_82:
  SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v33);
  (*(*v32 + 96))(&buf, v32, v22, 1, SMSCarrierBundleString, 0, 0);
  sub_100010180(&v233, &buf);
  sub_10000A1EC(&buf);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v31);
  }

  if (v233)
  {
    *&__p.var0 = 0;
    *&buf = CFDictionaryGetValue(v233, @"ShowEmptySMS");
    sub_1005DEE94(&__p, &buf);
    LOBYTE(buf) = 1;
    ctu::cf::assign(&buf, *&__p.var0, v46);
    v47 = buf;
    sub_100045C8C(&__p);
    sub_10001021C(&v233);
    if ((v47 & 1) == 0)
    {
      v19 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_50;
      }

      LOWORD(__p.var0) = 0;
      v20 = "#I SMS body is empty";
LABEL_49:
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &__p, 2u);
      goto LABEL_50;
    }
  }

  else
  {
    sub_10001021C(&v233);
  }

LABEL_40:
  if ((*(**a2 + 248))() == 2)
  {
    v17 = *v5;
    if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.var0) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Handling as Cell Broadcast SMS", &__p, 2u);
    }

    v18 = a2[1];
    v218 = *a2;
    v219 = v18;
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sms::Controller::handleCellBroadcast_sync(a1, &v218);
    if (v219)
    {
      sub_100004A34(v219);
    }

    goto LABEL_50;
  }

  v21 = *a2;
  if ((*a2)[12] == 2 && v21[52] == 4)
  {
    v19 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_50;
    }

    LOWORD(__p.var0) = 0;
    v20 = "#I Dropping delivery ackowlegdement message";
    goto LABEL_49;
  }

  if ((*(*v21 + 16))(v21))
  {
    v35 = (*(**a2 + 24))();
    v36 = (*(**a2 + 32))();
    v37 = (*(**a2 + 40))();
    if (sms::Model::isIMSOverAP(*a2))
    {
      v38 = *(a1 + 112);
      v39 = v220;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 0x40000000;
      aBlock[2] = sub_101247820;
      aBlock[3] = &unk_101F1D6E8;
      aBlock[4] = a1;
      aBlock[5] = v5;
      v215 = v35;
      v216 = v36;
      v213 = v220;
      v214 = v37;
      v217 = _Block_copy(aBlock);
      (*(*v38 + 144))(v38, v39, v35, v37, &v217);
      if (v217)
      {
        _Block_release(v217);
      }

LABEL_101:
      v58 = v220;
      (*(**a2 + 192))(&__p);
      if (__p.var2.__rep_.__s.__data_[15] >= 0)
      {
        v59 = __p.var2.__rep_.__s.__data_[15];
      }

      else
      {
        v59 = *__p.var2.__rep_.__s.__data_;
      }

      *&v233 = &v220;
      v60 = sub_1002D750C(a1 + 2560, &v220)[5];
      v62 = *v60;
      v61 = v60[1];
      TransportType = sms::Model::getTransportType(*a2);
      sms::Controller::submitSMSReceivedMetric(a1, v58, v59, (v61 - v62) >> 4, 1u, TransportType, 0);
      if ((__p.var2.__rep_.__s.__data_[15] & 0x80000000) == 0)
      {
        goto LABEL_50;
      }

      v64 = *&__p.var0;
LABEL_317:
      operator delete(v64);
      goto LABEL_50;
    }

    v48 = Registry::getServiceMap(*(a1 + 80));
    v49 = v48;
    if (v50 < 0)
    {
      v51 = (v50 & 0x7FFFFFFFFFFFFFFFLL);
      v52 = 5381;
      do
      {
        v50 = v52;
        v53 = *v51++;
        v52 = (33 * v52) ^ v53;
      }

      while (v53);
    }

    std::mutex::lock(v48);
    *&__p.var0 = v50;
    v54 = sub_100009510(&v49[1].__m_.__sig, &__p);
    if (v54)
    {
      v56 = v54[3];
      v55 = v54[4];
      if (v55)
      {
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v49);
        atomic_fetch_add_explicit(&v55->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v55);
        v57 = 0;
LABEL_97:
        if (v56)
        {
          (*(*v56 + 16))(v56, v220, v35, v36, v37, 1);
        }

        if ((v57 & 1) == 0)
        {
          sub_100004A34(v55);
        }

        goto LABEL_101;
      }
    }

    else
    {
      v56 = 0;
    }

    std::mutex::unlock(v49);
    v55 = 0;
    v57 = 1;
    goto LABEL_97;
  }

  buf = 0uLL;
  v211 = 0;
  (*(**a2 + 256))(&buf);
  *v232 = 0;
  if (v211 >= 0)
  {
    p_buf = &buf;
  }

  else
  {
    p_buf = buf;
  }

  if (v211 >= 0)
  {
    v42 = HIBYTE(v211);
  }

  else
  {
    v42 = *(&buf + 1);
  }

  *v232 = CFStringCreateWithBytesNoCopy(0, p_buf, v42, 0x8000100u, 0, kCFAllocatorNull);
  if (!*v232)
  {
    v43 = *(a1 + 40);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v129 = v211 >= 0 ? &buf : buf;
      v130 = v211 >= 0 ? HIBYTE(v211) : *(&buf + 1);
      ctu::hex(&__p.var0, v129, v130, v44);
      v131 = __p.var2.__rep_.__s.__data_[15] >= 0 ? &__p : *&__p.var0;
      LODWORD(v233) = 136315138;
      *(&v233 + 4) = v131;
      _os_log_error_impl(&_mh_execute_header, v43, OS_LOG_TYPE_ERROR, "Detected non UTF-8 address string: %s", &v233, 0xCu);
      if (__p.var2.__rep_.__s.__data_[15] < 0)
      {
        operator delete(*&__p.var0);
      }
    }

    if (SHIBYTE(v211) < 0)
    {
      *buf = 0;
      *(&buf + 1) = 0;
    }

    else
    {
      LOBYTE(buf) = 0;
      HIBYTE(v211) = 0;
    }
  }

  sub_100005978(v232);
  v65 = v220;
  (*(**a2 + 320))(&__p);
  v66 = sub_100838E74(v65, (a1 + 80), &__p);
  v67 = Registry::getServiceMap(*(a1 + 80));
  v68 = v67;
  if (v69 < 0)
  {
    v70 = (v69 & 0x7FFFFFFFFFFFFFFFLL);
    v71 = 5381;
    do
    {
      v69 = v71;
      v72 = *v70++;
      v71 = (33 * v71) ^ v72;
    }

    while (v72);
  }

  std::mutex::lock(v67);
  *&__p.var0 = v69;
  v73 = sub_100009510(&v68[1].__m_.__sig, &__p);
  if (v73)
  {
    v75 = v73[3];
    v74 = v73[4];
    if (v74)
    {
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v68);
      atomic_fetch_add_explicit(&v74->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v74);
      v76 = 0;
      goto LABEL_115;
    }
  }

  else
  {
    v75 = 0;
  }

  std::mutex::unlock(v68);
  v74 = 0;
  v76 = 1;
LABEL_115:
  if (v75)
  {
    v77 = a2[1];
    v208 = *a2;
    v209 = v77;
    if (v77)
    {
      atomic_fetch_add_explicit(&v77->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v78 = (**v75)(v75, &v208);
    if (v209)
    {
      sub_100004A34(v209);
      if (v78)
      {
LABEL_120:
        v79 = *v5;
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.var0) = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I Handling as Terminal Registration response...", &__p, 2u);
        }

        v80 = v220;
        (*(**a2 + 192))(&__p);
        if (__p.var2.__rep_.__s.__data_[15] >= 0)
        {
          v81 = __p.var2.__rep_.__s.__data_[15];
        }

        else
        {
          v81 = *__p.var2.__rep_.__s.__data_;
        }

        *&v233 = &v220;
        v82 = sub_1002D750C(a1 + 2560, &v220)[5];
        v84 = *v82;
        v83 = v82[1];
        v85 = sms::Model::getTransportType(*a2);
        sms::Controller::submitSMSReceivedMetric(a1, v80, v81, (v83 - v84) >> 4, 3u, v85, 0);
        if (__p.var2.__rep_.__s.__data_[15] < 0)
        {
          operator delete(*&__p.var0);
        }

        v86 = a2[1];
        v206 = *a2;
        v207 = v86;
        if (v86)
        {
          atomic_fetch_add_explicit(&v86->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v75 + 8))(v75, &v206);
        if (v207)
        {
          sub_100004A34(v207);
        }

        goto LABEL_313;
      }
    }

    else if (v78)
    {
      goto LABEL_120;
    }
  }

  v87 = (*a2)[2];
  if (subscriber::isValidSimSlot())
  {
    memset(&__p, 0, 24);
    sms::Controller::getDynamicMessageModes_sync(a1, v87, &__p.var0);
    v88 = *&__p.var0;
    if (*&__p.var0 != __p.var2.__rep_.__l.__data_)
    {
      while (*v88 != 1)
      {
        v88 += 4;
        if (v88 == __p.var2.__rep_.__l.__data_)
        {
          goto LABEL_156;
        }
      }
    }

    if (v88 == __p.var2.__rep_.__l.__data_)
    {
      goto LABEL_156;
    }

    sub_100838C48(v87, (a1 + 80), &v233);
    if (v211 >= 0)
    {
      v89 = HIBYTE(v211);
    }

    else
    {
      v89 = *(&buf + 1);
    }

    v90 = HIBYTE(v234);
    v91 = SHIBYTE(v234);
    if (v234 < 0)
    {
      v90 = *(&v233 + 1);
    }

    if (v89 == v90)
    {
      if (v211 >= 0)
      {
        v92 = &buf;
      }

      else
      {
        v92 = buf;
      }

      if (v234 >= 0)
      {
        v93 = &v233;
      }

      else
      {
        v93 = v233;
      }

      v94 = memcmp(v92, v93, v89) == 0;
    }

    else
    {
      v94 = 0;
    }

    if (v91 < 0)
    {
      operator delete(v233);
    }

    if (!v94)
    {
LABEL_156:
      v95 = 0;
    }

    else
    {
      (*(**(a1 + 2544) + 80))(*(a1 + 2544), v87, &v221, v66);
      v95 = 1;
    }

    if (*&__p.var0)
    {
      __p.var2.__rep_.__l.__data_ = *&__p.var0;
      operator delete(*&__p.var0);
    }

    if (v95)
    {
      v96 = *v5;
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.var0) = 0;
        _os_log_impl(&_mh_execute_header, v96, OS_LOG_TYPE_DEFAULT, "#I Handling SMS as MMS", &__p, 2u);
      }

      v97 = v220;
      (*(**a2 + 192))(&__p);
      if (__p.var2.__rep_.__s.__data_[15] >= 0)
      {
        v98 = __p.var2.__rep_.__s.__data_[15];
      }

      else
      {
        v98 = *__p.var2.__rep_.__s.__data_;
      }

      *&v233 = &v220;
      v99 = sub_1002D750C(a1 + 2560, &v220)[5];
      v101 = *v99;
      v100 = v99[1];
      v102 = sms::Model::getTransportType(*a2);
      sms::Controller::submitSMSReceivedMetric(a1, v97, v98, (v100 - v101) >> 4, 8u, v102, 0);
      goto LABEL_181;
    }
  }

  v205 = (*(**a2 + 64))();
  v103 = (*(**a2 + 48))();
  if (!(v205 | v103))
  {
    (*(**a2 + 192))(&__p);
    sub_100839038(&__p, &v205);
    if (__p.var2.__rep_.__s.__data_[15] < 0)
    {
      operator delete(*&__p.var0);
    }
  }

  v193 = v76;
  (*(**a2 + 320))(&__p);
  v104 = sub_100838E04(&__p);
  v105 = v205;
  v106 = v220;
  if (!(v205 | v103))
  {
    v76 = v193;
    if (sub_1012489F8(a1, v220))
    {
      v115 = *v5;
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.var0) = 0;
        _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "#I PNR SMS auto detected", &__p, 2u);
      }

      v116 = v220;
      v117 = (*(**a2 + 200))();
      sub_101247A34(a1, v116, &v221, 5497, v104, v117);
      v118 = v220;
      (*(**a2 + 192))(&__p);
      if (__p.var2.__rep_.__s.__data_[15] >= 0)
      {
        v119 = __p.var2.__rep_.__s.__data_[15];
      }

      else
      {
        v119 = *__p.var2.__rep_.__s.__data_;
      }

      *&v233 = &v220;
      v120 = sub_1002D750C(a1 + 2560, &v220)[5];
      v122 = *v120;
      v121 = v120[1];
      v123 = sms::Model::getTransportType(*a2);
      sms::Controller::submitSMSReceivedMetric(a1, v118, v119, (v121 - v122) >> 4, 2u, v123, 0);
      goto LABEL_181;
    }

    v124 = (*a2)[2];
    v125 = (*(**a2 + 344))(*a2);
    if (sub_101248BE8(a1, v124, &v221, &buf, v125))
    {
      v126 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_313;
      }

      LOWORD(__p.var0) = 0;
      v127 = "#I VVM Indicator filtered";
LABEL_192:
      _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, v127, &__p, 2u);
      goto LABEL_313;
    }

    if (!sub_1012494E8(a1, v220, &buf))
    {
      v126 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_313;
      }

      LOWORD(__p.var0) = 0;
      v127 = "#I Filtering out, SMS not allowed on unsupported devices";
      goto LABEL_192;
    }

    if ((*(**a2 + 224))())
    {
      v126 = *v5;
      if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_313;
      }

      LOWORD(__p.var0) = 0;
      v127 = "#I Not handling a Type-0 SMS";
      goto LABEL_192;
    }

    v204 = 0;
    if (v222 >= 0)
    {
      v132 = &v221;
    }

    else
    {
      v132 = v221;
    }

    *v232 = 0;
    *&v233 = 0;
    if (ctu::cf::convert_copy(&v233, v132, 0x8000100, kCFAllocatorDefault, v128))
    {
      v133 = *v232;
      *v232 = v233;
      *&__p.var0 = v133;
      sub_100005978(&__p);
    }

    v204 = *v232;
    *v232 = 0;
    sub_100005978(v232);
    if (v204)
    {
      if (*(a1 + 160) == 1)
      {
        (*(**(a1 + 2544) + 32))(*(a1 + 2544), v220, &v221, &buf);
        v134 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.var0) = 0;
          _os_log_impl(&_mh_execute_header, v134, OS_LOG_TYPE_DEFAULT, "#I Handling as test SMS", &__p, 2u);
        }

        goto LABEL_312;
      }

      v233 = 0uLL;
      v138 = Registry::getServiceMap(*(a1 + 80));
      sub_100099CD8(v138, &v233);
      v139 = v233;
      if (v233)
      {
        v140 = v220;
        *v232 = @"SMSSettings";
        *&v232[8] = @"ShowClass0SMSInLockScreen";
        memset(&__p, 0, 24);
        sub_10005B328(&__p, v232, &v232[16], 2uLL);
        (*(*v139 + 104))(&cf, v139, v140, 2, &__p, kCFBooleanFalse, 0);
        v141 = cf;
        LOBYTE(v203[0]) = 0;
        if (cf)
        {
          v142 = CFGetTypeID(cf);
          if (v142 == CFBooleanGetTypeID())
          {
            ctu::cf::assign(v203, v141, v143);
          }
        }

        v144 = v203[0];
        sub_10000A1EC(&cf);
        if (*&__p.var0)
        {
          __p.var2.__rep_.__l.__data_ = *&__p.var0;
          operator delete(*&__p.var0);
        }
      }

      else
      {
        v149 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
        {
          LOWORD(__p.var0) = 0;
          _os_log_error_impl(&_mh_execute_header, v149, OS_LOG_TYPE_ERROR, "Invalid carrier interface while reading flash sms settings", &__p, 2u);
        }

        v144 = 0;
      }

      if (*(&v233 + 1))
      {
        sub_100004A34(*(&v233 + 1));
      }

      if ((*(**a2 + 240))())
      {
        if ((v144 & 1) != 0 || (*(a1 + 2389) & 1) == 0)
        {
          v155 = *v5;
          if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(__p.var0) = 0;
            _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "#I Handling as Class 0 SMS", &__p, 2u);
          }

          (*(**(a1 + 2544) + 40))(*(a1 + 2544), v220, &v221, &buf);
          v156 = v220;
          (*(**a2 + 192))(&__p);
          if (__p.var2.__rep_.__s.__data_[15] >= 0)
          {
            v157 = __p.var2.__rep_.__s.__data_[15];
          }

          else
          {
            v157 = *__p.var2.__rep_.__s.__data_;
          }

          *&v233 = &v220;
          v158 = sub_1002D750C(a1 + 2560, &v220)[5];
          v160 = *v158;
          v159 = v158[1];
          v161 = sms::Model::getTransportType(*a2);
          sms::Controller::submitSMSReceivedMetric(a1, v156, v157, (v159 - v160) >> 4, 9u, v161, 0);
          if (__p.var2.__rep_.__s.__data_[15] < 0)
          {
            operator delete(*&__p.var0);
          }

          v76 = v193;
          goto LABEL_312;
        }

        v150 = *v5;
        if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
        {
          v151 = CSIBOOLAsString(0);
          v152 = "Unlocked";
          if (*(a1 + 2389))
          {
            v152 = "Locked";
          }

          __p.var0 = 136315394;
          *&__p.var1 = v151;
          WORD2(__p.var2.__rep_.__l.__data_) = 2080;
          *(&__p.var2.__rep_.__l.__data_ + 6) = v152;
          _os_log_impl(&_mh_execute_header, v150, OS_LOG_TYPE_DEFAULT, "#I Class 0 SMS treated as regular SMS [bundle: %s, screen: %s]", &__p, 0x16u);
        }
      }

      v190 = (*(**a2 + 272))(*a2);
      *(v203 + 3) = 0;
      v203[0] = 0;
      if ((*(**a2 + 280))(*a2))
      {
        v230 = 0u;
        v231 = 0u;
        v228 = 0u;
        v229 = 0u;
        v226 = 0u;
        v227 = 0u;
        v224 = 0u;
        v225 = 0u;
        memset(&__p, 0, sizeof(__p));
        (*(**a2 + 288))(&__p);
        CSIPhoneNumber::getFullNumber(&v233, &__p);
        v189 = *(&v233 + 1);
        v153 = v233;
        v203[0] = v234;
        *(v203 + 3) = *(&v234 + 3);
        v154 = HIBYTE(v234);
        sub_10034F8E8(&__p);
      }

      else
      {
        v153 = 0;
        v189 = 0;
        v154 = 0;
      }

      v192 = v154;
      __src = v153;
      v162 = *(a1 + 2728);
      v163 = *v5;
      v164 = os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT);
      if (v162 == 0.0)
      {
        if (v164)
        {
          LOWORD(__p.var0) = 0;
          _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#I Handling as regular SMS", &__p, 2u);
        }

        v175 = v220;
        (*(**a2 + 192))(&__p);
        if (__p.var2.__rep_.__s.__data_[15] >= 0)
        {
          v176 = __p.var2.__rep_.__s.__data_[15];
        }

        else
        {
          v176 = *__p.var2.__rep_.__s.__data_;
        }

        *&v233 = &v220;
        v177 = sub_1002D750C(a1 + 2560, &v220)[5];
        v179 = *v177;
        v178 = v177[1];
        v180 = sms::Model::getTransportType(*a2);
        sms::Controller::submitSMSReceivedMetric(a1, v175, v176, (v178 - v179) >> 4, 4u, v180, 0);
        if (__p.var2.__rep_.__s.__data_[15] < 0)
        {
          operator delete(*&__p.var0);
        }
      }

      else
      {
        if (v164)
        {
          LOWORD(__p.var0) = 0;
          _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#I Handling as emergency SMS", &__p, 2u);
        }

        memset(&__p, 0, 24);
        *&v233 = &v220;
        v165 = sub_1002D750C(a1 + 2560, &v220);
        sub_101166D14(v165[5], &__p);
        LOBYTE(v233) = 0;
        if (&__p.var2 == sub_100D5E7A8(*&__p.var0, &__p.var2.__rep_.__l.__data_, &buf))
        {
          *&v233 = &v220;
          v166 = sub_1002D750C(a1 + 2560, &v220);
          sub_100005BA0(v166[5] + 560, &buf);
          v167 = *v5;
          if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
          {
            v168 = &buf;
            if (v211 < 0)
            {
              v168 = buf;
            }

            LODWORD(v233) = 136315138;
            *(&v233 + 4) = v168;
            _os_log_impl(&_mh_execute_header, v167, OS_LOG_TYPE_DEFAULT, "#I Emergency Text: Added %s to the list of emergency numbers", &v233, 0xCu);
          }
        }

        v188 = v220;
        (*(**a2 + 192))(&v233);
        if (v234 >= 0)
        {
          v169 = HIBYTE(v234);
        }

        else
        {
          v169 = WORD4(v233);
        }

        *v232 = &v220;
        v170 = sub_1002D750C(a1 + 2560, &v220)[5];
        v171 = *v170;
        v172 = v170[1];
        v173 = sms::Model::getTransportType(*a2);
        v174 = sub_100071DF8(&buf, (a1 + 176));
        sms::Controller::submitSMSReceivedMetric(a1, v188, v169, (v172 - v171) >> 4, 6u, v173, v174);
        if (SHIBYTE(v234) < 0)
        {
          operator delete(v233);
        }

        sub_100009970(&__p, __p.var2.__rep_.__l.__data_);
      }

      v181 = v192;
      v76 = v193;
      v182 = __src;
      v183 = *(a1 + 2528);
      if (v183)
      {
        v184 = a1 + 2528;
        do
        {
          if (*(v183 + 28) >= v220)
          {
            v184 = v183;
          }

          v183 = *(v183 + 8 * (*(v183 + 28) < v220));
        }

        while (v183);
        if (v184 != a1 + 2528 && v220 >= *(v184 + 28))
        {
          v181 = v192;
          v76 = v193;
          v182 = __src;
          if (*sub_1000A8C4C(a1 + 2520, &v220) == 1)
          {
            *v232 = 0;
            *&v232[8] = 0;
            sub_10124996C(v232, *(a1 + 80));
            cf = 0;
            v202 = 0;
            if (*v232)
            {
              (*(**v232 + 16))(&cf);
              if (cf)
              {
                sub_100A98FF0();
              }
            }

            v185 = *v5;
            if (os_log_type_enabled(v185, OS_LOG_TYPE_ERROR))
            {
              LOWORD(__p.var0) = 0;
              _os_log_error_impl(&_mh_execute_header, v185, OS_LOG_TYPE_ERROR, "Failed to find lazuli manager...", &__p, 2u);
            }

            if (v202)
            {
              sub_100004A34(v202);
            }

            if (*&v232[8])
            {
              sub_100004A34(*&v232[8]);
            }

            v181 = v192;
            v76 = v193;
            v182 = __src;
          }
        }
      }

      v186 = *(a1 + 2544);
      v187 = v220;
      if (SHIBYTE(v211) < 0)
      {
        sub_100005F2C(__dst, buf, *(&buf + 1));
      }

      else
      {
        *__dst = buf;
        v200 = v211;
      }

      if (SHIBYTE(v222) < 0)
      {
        sub_100005F2C(v197, v221, *(&v221 + 1));
      }

      else
      {
        *v197 = v221;
        v198 = v222;
      }

      if (v181 < 0)
      {
        sub_100005F2C(v194, v182, v189);
      }

      else
      {
        v194[0] = v182;
        v194[1] = v189;
        *v195 = v203[0];
        *&v195[3] = *(v203 + 3);
        v196 = v181;
      }

      (*(*v186 + 72))(v186, v187, __dst, v197, v194, v66, v66, v190, *(*a2 + 184));
      if (v196 < 0)
      {
        operator delete(v194[0]);
      }

      if (SHIBYTE(v198) < 0)
      {
        operator delete(v197[0]);
      }

      if (SHIBYTE(v200) < 0)
      {
        operator delete(__dst[0]);
      }

      if ((v181 & 0x80) == 0)
      {
LABEL_312:
        sub_100005978(&v204);
        goto LABEL_313;
      }

      v148 = v182;
    }

    else
    {
      v135 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p.var0) = 0;
        _os_log_impl(&_mh_execute_header, v135, OS_LOG_TYPE_DEFAULT, "#I Failed to convert SMS body to utf8 string, bailing out", &__p, 2u);
      }

      v136 = SHIBYTE(v222);
      if ((SHIBYTE(v222) & 0x8000000000000000) != 0)
      {
        v136 = *(&v221 + 1);
        v137 = v221;
      }

      else
      {
        v137 = &v221;
      }

      memset(&__p, 0, 24);
      sub_100837690(&__p, v137, v137 + v136, v136);
      v233 = 0uLL;
      v234 = 0;
      sub_10123802C(&v233, &__p);
      v145 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v146 = HIBYTE(v234);
        v147 = &v233;
        if (v234 < 0)
        {
          v146 = *(&v233 + 1);
          v147 = v233;
        }

        *v232 = 136315394;
        *&v232[4] = v147;
        *&v232[12] = 2048;
        *&v232[14] = v146;
        _os_log_impl(&_mh_execute_header, v145, OS_LOG_TYPE_DEFAULT, "#I pdu = %s len = %lu ", v232, 0x16u);
      }

      if (SHIBYTE(v234) < 0)
      {
        operator delete(v233);
      }

      v148 = *&__p.var0;
      if (!*&__p.var0)
      {
        goto LABEL_312;
      }

      __p.var2.__rep_.__l.__data_ = *&__p.var0;
    }

    operator delete(v148);
    goto LABEL_312;
  }

  v107 = (*(**a2 + 200))();
  v108 = sub_101247A34(a1, v106, &v221, v105, v104, v107);
  v109 = v220;
  v76 = v193;
  (*(**a2 + 192))(&__p);
  if (__p.var2.__rep_.__s.__data_[15] >= 0)
  {
    v110 = __p.var2.__rep_.__s.__data_[15];
  }

  else
  {
    v110 = *__p.var2.__rep_.__s.__data_;
  }

  *&v233 = &v220;
  v111 = sub_1002D750C(a1 + 2560, &v220)[5];
  v113 = *v111;
  v112 = v111[1];
  v114 = sms::Model::getTransportType(*a2);
  sms::Controller::submitSMSReceivedMetric(a1, v109, v110, (v112 - v113) >> 4, v108, v114);
LABEL_181:
  if (__p.var2.__rep_.__s.__data_[15] < 0)
  {
    operator delete(*&__p.var0);
  }

LABEL_313:
  if ((v76 & 1) == 0)
  {
    sub_100004A34(v74);
  }

  if (SHIBYTE(v211) < 0)
  {
    v64 = buf;
    goto LABEL_317;
  }

LABEL_50:
  if (SHIBYTE(v222) < 0)
  {
    operator delete(v221);
  }
}

void sub_10123339C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13, __int16 a14, char a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, const void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *aBlock, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *__p, uint64_t a62, int a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  v69 = *(v67 - 168);
  if (v69)
  {
    sub_100004A34(v69);
  }

  if (a13 < 0)
  {
    operator delete(a12);
  }

  sub_100005978(&a31);
  if ((a15 & 1) == 0)
  {
    sub_100004A34(v66);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101233798(uint64_t a1, uint64_t a2)
{
  v4 = sub_10124CB1C((a2 + 16), *(a1 + 8), a2);
  for (i = *(a1 + 8); i != v4; i -= 16)
  {
    v6 = *(i - 8);
    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  *(a1 + 8) = v4;
  return a2;
}

void sub_101233804(uint64_t a1, int a2)
{
  v18 = a2;
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  if (sub_10122E954(a1, a2))
  {
    v5 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I handleSegmentSent, current message was purged", buf, 2u);
    }

    sub_10122EA4C(a1);
  }

  else
  {
    *buf = &v18;
    v6 = *(sub_1002D750C(a1 + 2560, &v18)[5] + 512);
    v8 = *v6;
    v7 = v6[1];
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v8 && (v9 = *(a1 + 96)) != 0)
    {
      v10 = v18;
      TransportType = sms::Model::getTransportType(v9);
      sms::Controller::submitSMSSendEndMetric(a1, v10, TransportType, *(v8 + 8), (v8 + 40), 0, 0, v12, *(v8 + 160), *(v8 + 168));
    }

    else
    {
      v13 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Failed to submit send end metric. Invalid pending message.", buf, 2u);
      }
    }

    (*(**(a1 + 96) + 160))(*(a1 + 96));
    v14 = (*(**(a1 + 96) + 176))(*(a1 + 96));
    v15 = v18;
    v16 = sub_10123D1E0(a1, v18);
    sub_10123CC14(a1, v15, v16, 1);
    if (v14)
    {
      v17 = *v4;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = v14;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I handleSegmentSent - Num segments remaining = %lu", buf, 0xCu);
      }

      *(*(a1 + 96) + 54) = 0;
      sub_101230BE4(a1);
    }

    else
    {
      *buf = 0;
      *&buf[8] = 0;
      sub_10123051C(a1, v18, 0, buf);
    }

    if (v7)
    {
      sub_100004A34(v7);
    }
  }
}

void sub_101233AB0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101233AD8(uint64_t a1, uint64_t a2)
{
  if (sms::Model::getTransportType(*(a1 + 96)) != 2)
  {
    return 2;
  }

  (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  v4 = *(a1 + 2568);
  if (!v4)
  {
LABEL_8:
    sub_1000A58E4("map::at:  key not found");
  }

  while (1)
  {
    while (1)
    {
      v5 = *(v4 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v4 = *v4;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v4 = v4[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }

  if (*(v4[5] + 42) != 1)
  {
    return 2;
  }

  *cf = *off_101EE80B8;
  v28 = @"MaxRetries";
  v24 = 0;
  v25 = 0;
  __p = 0;
  sub_10005B328(&__p, cf, &v29, 3uLL);
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  cf[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, cf);
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
        goto LABEL_16;
      }

LABEL_22:
      cf[0] = 0;
      (*(*v14 + 104))(cf, v14, a2, 1, &__p, 0, 0);
      v18 = cf[0];
      v16 = 2;
      if (cf[0])
      {
        v26 = 2;
        v19 = CFGetTypeID(cf[0]);
        TypeID = CFNumberGetTypeID();
        v22 = 2;
        if (v19 == TypeID)
        {
          ctu::cf::assign(&v26, v18, v21);
          v22 = v26;
        }

        if (v22 >= 2)
        {
          v16 = 2;
        }

        else
        {
          v16 = v22;
        }
      }

      sub_10000A1EC(cf);
      if (v15)
      {
        goto LABEL_30;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
  if (v14)
  {
    goto LABEL_22;
  }

LABEL_16:
  v16 = 2;
  if ((v15 & 1) == 0)
  {
LABEL_29:
    sub_100004A34(v13);
  }

LABEL_30:
  if (__p)
  {
    v24 = __p;
    operator delete(__p);
  }

  return v16;
}

void sub_101233D60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101233DBC(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v153 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48), a2);
  if (sub_10122E954(a1, a2))
  {
    v7 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Current message was purged", buf, 2u);
    }

    sub_10122EA4C(a1);
    return;
  }

  *buf = &v153;
  v8 = *(sub_1002D750C(a1 + 2560, &v153)[5] + 512);
  v10 = *v8;
  v9 = v8[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v143 = v6;
  *v152 = *a3;
  v142 = v9;
  if (*&v152[12] != 3)
  {
    goto LABEL_55;
  }

  v11 = v152[8];
  v12 = v153;
  SmsTypeBundleReference = getSmsTypeBundleReference();
  ServiceMap = Registry::getServiceMap(*(a1 + 80));
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
  if (!v20)
  {
    std::mutex::unlock(v15);
    v23 = v152[8];
    goto LABEL_61;
  }

  v22 = v20[3];
  v21 = v20[4];
  if (v21)
  {
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    std::mutex::unlock(v15);
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v21);
    if (!v22)
    {
      v23 = v152[8];
LABEL_60:
      sub_100004A34(v21);
      goto LABEL_61;
    }

    *&v162 = v22;
    *(&v162 + 1) = v21;
    v140 = v21;
    atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  else
  {
    v140 = 0;
    std::mutex::unlock(v15);
    if (!v22)
    {
      v23 = v152[8];
      goto LABEL_61;
    }

    v162 = v22;
  }

  v24 = sub_10083A6E4(v12, &v162, SmsTypeBundleReference, *v152);
  if (*(&v162 + 1))
  {
    sub_100004A34(*(&v162 + 1));
  }

  Value = v22;
  v155 = v140;
  if (v140)
  {
    atomic_fetch_add_explicit(&v140->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v25 = SmsTypeBundleReference;
  v26 = sub_10083A760(v12, &Value, SmsTypeBundleReference, *v152);
  if (v155)
  {
    sub_100004A34(v155);
  }

  v139 = (*(**(a1 + 48) + 16))(*(a1 + 48), v12);
  v27 = *(a1 + 2456);
  if (!v27)
  {
    goto LABEL_32;
  }

  v28 = a1 + 2456;
  do
  {
    if (*(v27 + 28) >= v12)
    {
      v28 = v27;
    }

    v27 = *(v27 + 8 * (*(v27 + 28) < v12));
  }

  while (v27);
  if (v28 != a1 + 2456 && *(v28 + 28) <= v12)
  {
    v29 = *(v28 + 32) == 4;
  }

  else
  {
LABEL_32:
    v29 = 0;
  }

  v30 = *(a1 + 2480);
  if (!v30)
  {
    goto LABEL_40;
  }

  v31 = a1 + 2480;
  do
  {
    if (*(v30 + 28) >= v12)
    {
      v31 = v30;
    }

    v30 = *(v30 + 8 * (*(v30 + 28) < v12));
  }

  while (v30);
  if (v31 != a1 + 2480 && *(v31 + 28) <= v12)
  {
    v32 = *(v31 + 32);
  }

  else
  {
LABEL_40:
    v32 = 0;
  }

  v21 = v140;
  v33 = sub_10083A7DC(v32 & 1, v29);
  if (!v152[8] && v24)
  {
    v152[8] = (v33 & v24) != 0;
    if ((v33 & v24) != 0)
    {
      v34 = *v139;
      if (os_log_type_enabled(*v139, OS_LOG_TYPE_DEFAULT))
      {
        v35 = @"?";
        if (v25)
        {
          v35 = v25;
        }

        *buf = 67109378;
        *&buf[4] = *v152;
        *&buf[8] = 2112;
        *&buf[10] = v35;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I RP-Error %d now being considered fatal for sms type: %@", buf, 0x12u);
      }

      goto LABEL_56;
    }

LABEL_58:
    v23 = 0;
    goto LABEL_59;
  }

  v23 = v152[8];
  if (v152[8] && v26)
  {
    v152[8] = (v33 & v26) == 0;
    if ((v33 & v26) == 0)
    {
LABEL_56:
      v23 = 1;
      goto LABEL_59;
    }

    v36 = *v139;
    if (!os_log_type_enabled(*v139, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_58;
    }

    v37 = @"?";
    if (v25)
    {
      v37 = v25;
    }

    *buf = 67109378;
    *&buf[4] = *v152;
    *&buf[8] = 2114;
    *&buf[10] = v37;
    _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I RP-Error %d now being considered non-fatal for sms type: %{public}@", buf, 0x12u);
    v23 = 0;
    if (v140)
    {
      goto LABEL_60;
    }

LABEL_55:
    v38 = 0;
    goto LABEL_66;
  }

LABEL_59:
  if (v140)
  {
    goto LABEL_60;
  }

LABEL_61:
  v38 = 0;
  if (v23 && !v11)
  {
    v39 = *v143;
    if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "#I RP-Error custom updated to fatal - bailing out", buf, 2u);
    }

    v38 = 1;
  }

LABEL_66:
  v40 = *v143;
  if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
  {
    v41 = CSIBOOLAsString(v152[8]);
    v42 = sms::asString();
    *buf = 67109890;
    *&buf[4] = *v152;
    *&buf[8] = 1024;
    *&buf[10] = *&v152[4];
    *&buf[14] = 2080;
    *&buf[16] = v41;
    *v161 = 2080;
    *&v161[2] = v42;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I SMS Send Error error1: %d, error2: %d, fatal: %s, group: %s", buf, 0x22u);
  }

  v43 = *(a1 + 96);
  if (v43)
  {
    v44 = v153;
    TransportType = sms::Model::getTransportType(v43);
    sms::Controller::submitSMSSendEndMetric(a1, v44, TransportType, *(v10 + 8), (v10 + 40), *&v152[12], *v152, v46, *(v10 + 160), *(v10 + 168));
  }

  v47 = v153;
  v48 = *(a1 + 80);
  *&v162 = 0;
  v49 = Registry::getServiceMap(v48);
  v50 = v49;
  v52 = v51;
  if (v51 < 0)
  {
    v53 = (v51 & 0x7FFFFFFFFFFFFFFFLL);
    v54 = 5381;
    do
    {
      v52 = v54;
      v55 = *v53++;
      v54 = (33 * v54) ^ v55;
    }

    while (v55);
  }

  std::mutex::lock(v49);
  *buf = v52;
  v56 = sub_100009510(&v50[1].__m_.__sig, buf);
  if (!v56)
  {
    v58 = 0;
LABEL_78:
    std::mutex::unlock(v50);
    v57 = 0;
    v60 = 1;
    if (!v58)
    {
      goto LABEL_80;
    }

    goto LABEL_79;
  }

  v58 = v56[3];
  v57 = v56[4];
  if (!v57)
  {
    goto LABEL_78;
  }

  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v50);
  atomic_fetch_add_explicit(&v57->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v57);
  v60 = 0;
  if (v58)
  {
LABEL_79:
    SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v59);
    (*(*v58 + 80))(&v159, v58, v47, 1, SMSCarrierBundleString, 0, 0);
    sub_100010180(&Value, &v159);
    *buf = v162;
    *&v162 = Value;
    Value = 0;
    sub_10001021C(buf);
    sub_10001021C(&Value);
    sub_10000A1EC(&v159);
  }

LABEL_80:
  if ((v60 & 1) == 0)
  {
    sub_100004A34(v57);
  }

  if (!v162)
  {
LABEL_90:
    sub_10001021C(&v162);
    v65 = sub_101233AD8(a1, v153);
    *(v10 + 117) = 1;
    Value = 0;
    v155 = 0;
    v66 = *(a1 + 104);
    v151[0] = *(a1 + 96);
    v151[1] = v66;
    if (v66)
    {
      atomic_fetch_add_explicit(&v66->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_101229924(&Value, a1, v151);
    if (v66)
    {
      sub_100004A34(v66);
    }

    if (v38)
    {
      v67 = v143;
      if (v152[8])
      {
LABEL_96:
        v68 = 1;
        goto LABEL_163;
      }

LABEL_137:
      v90 = *(v10 + 108);
      if (v90 < v65)
      {
        *(v10 + 108) = v90 + 1;
        *(v10 + 104) = sms::Model::getMessageID(*(a1 + 96));
        v91 = *(a1 + 96);
        v91[54] = *(v10 + 117);
        (*(*v91 + 152))(v91);
        v92 = *v67;
        if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
        {
          v93 = *(v10 + 108);
          *buf = 67109376;
          *&buf[4] = v93;
          *&buf[8] = 1024;
          *&buf[10] = v65;
          _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I re-sending segment (retry %d of max %d)", buf, 0xEu);
        }

        v94 = *(*(a1 + 96) + 56);
        if (v94)
        {
          *buf = 0;
          *&buf[8] = 0;
          sub_100E13114(buf, *(a1 + 8), *(a1 + 16));
          Registry::getTimerService(&v162, *(a1 + 80));
          v95 = v162;
          sub_10000501C(__p, "SMS retry wait");
          v96 = *(a1 + 24);
          object = v96;
          if (v96)
          {
            dispatch_retain(v96);
          }

          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1174405120;
          aBlock[2] = sub_10123575C;
          aBlock[3] = &unk_101F1D558;
          v97 = *&buf[8];
          aBlock[4] = a1;
          aBlock[5] = *buf;
          v145 = *&buf[8];
          if (*&buf[8])
          {
            atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
          }

          v146 = v153;
          v147 = _Block_copy(aBlock);
          sub_100D23364(v95, __p, 0, 1000000 * v94, &object, &v147);
          v159 = &v153;
          v98 = sub_1002D750C(a1 + 2560, &v153)[5];
          v99 = v158;
          v158 = 0;
          v100 = *(v98 + 328);
          *(v98 + 328) = v99;
          if (v100)
          {
            (*(*v100 + 8))(v100);
            v101 = v158;
            v158 = 0;
            if (v101)
            {
              (*(*v101 + 8))(v101);
            }
          }

          if (v147)
          {
            _Block_release(v147);
          }

          if (object)
          {
            dispatch_release(object);
          }

          if (v150 < 0)
          {
            operator delete(__p[0]);
          }

          if (*(&v162 + 1))
          {
            sub_100004A34(*(&v162 + 1));
          }

          v102 = *v67;
          if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
          {
            LODWORD(v162) = 134217984;
            *(&v162 + 4) = v94;
            _os_log_impl(&_mh_execute_header, v102, OS_LOG_TYPE_DEFAULT, "#I Delaying by %llu seconds", &v162, 0xCu);
          }

          if (v145)
          {
            std::__shared_weak_count::__release_weak(v145);
          }

          if (v97)
          {
            std::__shared_weak_count::__release_weak(v97);
          }
        }

        else
        {
          sub_101230F7C(a1);
        }

        goto LABEL_182;
      }

      v68 = 0;
LABEL_163:
      (*(*Value + 64))(Value, v153);
      v103 = *v67;
      if (os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
      {
        v119 = CSIBOOLAsString(v68);
        v121 = *v152;
        v120 = *&v152[4];
        v122 = *(v10 + 108);
        v123 = CSIBOOLAsString(*(*(a1 + 96) + 44));
        *buf = 136316162;
        *&buf[4] = v119;
        *&buf[12] = 1024;
        *&buf[14] = v121;
        *&buf[18] = 1024;
        *&buf[20] = v120;
        *v161 = 1024;
        *&v161[2] = v122;
        *&v161[6] = 2080;
        *&v161[8] = v123;
        _os_log_error_impl(&_mh_execute_header, v103, OS_LOG_TYPE_ERROR, "Segment failed permanently [fatal: %s, error1: %d, error2: %d, retries:%d, sent over IMS: %s]", buf, 0x28u);
        v67 = v143;
      }

      v104 = Registry::getServiceMap(*(a1 + 80));
      v105 = v104;
      if (v106 < 0)
      {
        v107 = (v106 & 0x7FFFFFFFFFFFFFFFLL);
        v108 = 5381;
        do
        {
          v106 = v108;
          v109 = *v107++;
          v108 = (33 * v108) ^ v109;
        }

        while (v109);
      }

      std::mutex::lock(v104);
      *buf = v106;
      v110 = sub_100009510(&v105[1].__m_.__sig, buf);
      if (v110)
      {
        v112 = v110[3];
        v111 = v110[4];
        if (v111)
        {
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v105);
          atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v111);
          v113 = 0;
          if (!v112)
          {
            goto LABEL_171;
          }

          goto LABEL_175;
        }
      }

      else
      {
        v112 = 0;
      }

      std::mutex::unlock(v105);
      v111 = 0;
      v113 = 1;
      if (!v112)
      {
LABEL_171:
        v114 = *v67;
        if (os_log_type_enabled(*v67, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v114, OS_LOG_TYPE_ERROR, "Failed to get Emergency Manager Interface...", buf, 2u);
        }

LABEL_179:
        if ((v113 & 1) == 0)
        {
          sub_100004A34(v111);
        }

        v116 = v153;
        v117 = sub_10123D1E0(a1, v153);
        sub_10123CC14(a1, v116, v117, 1);
        sub_10123051C(a1, v153, 2, v152);
LABEL_182:
        if (v155)
        {
          sub_100004A34(v155);
        }

        v64 = v142;
        goto LABEL_185;
      }

LABEL_175:
      if (sms::Model::getTextToEmergencyFlag(*(a1 + 96)))
      {
        v115 = *v67;
        if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v115, OS_LOG_TYPE_DEFAULT, "#I Emergency Text Cancelling Emergency Mode...", buf, 2u);
        }

        (*(*v112 + 72))(v112);
      }

      goto LABEL_179;
    }

    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v141 = v152[8];
    v156 = *(v10 + 152);
    v69 = v156;
    v70 = (*(**(a1 + 48) + 16))(*(a1 + 48), v156);
    if (sms::Model::getTransportType(*(a1 + 96)) != 2)
    {
      goto LABEL_124;
    }

    if ((*(*(v10 + 136) + 24) & 1) == 0)
    {
      v80 = *v70;
      v67 = v143;
      if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v80, OS_LOG_TYPE_DEFAULT, "#I Fallback not supported for delegate", buf, 2u);
      }

      v79 = 0;
LABEL_126:
      if (v9)
      {
        sub_100004A34(v9);
        if (v79)
        {
LABEL_128:
          v85 = *v67;
          if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v85, OS_LOG_TYPE_DEFAULT, "#I IMS send failed, attempting to go over signaling", buf, 2u);
          }

          (*(*Value + 64))(Value, v153);
          v86 = sub_101235500(*(a1 + 80), v153, *(*(a1 + 96) + 48));
          if (v86)
          {
            *buf = &v153;
            v87 = *(sub_1002D750C(a1 + 2560, &v153)[5] + 512);
            v88 = *v87;
            v89 = v87[1];
            if (v89)
            {
              atomic_fetch_add_explicit(&v89->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v88[27] = 0;
            v88[30] = v86;
            v88[31] = 1;
            sub_10122EA4C(a1);
            if (v89)
            {
              sub_100004A34(v89);
            }
          }

          else
          {
            v118 = *v67;
            if (os_log_type_enabled(*v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I Unknown encoder while falling back to signaling", buf, 2u);
            }

            sub_10123051C(a1, v153, 1, v152);
          }

          goto LABEL_182;
        }
      }

      else if (v79)
      {
        goto LABEL_128;
      }

      if (v141)
      {
        goto LABEL_96;
      }

      goto LABEL_137;
    }

    if (*(v10 + 108) >= sub_101233AD8(a1, v69) || v141)
    {
      if (sub_10123EEF8(*(a1 + 80), v69))
      {
        if (sms::Model::getIMSMode(*(a1 + 96)) != 2)
        {
          v124 = *v70;
          if (os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
          {
            IMSMode = sms::Model::getIMSMode(*(a1 + 96));
            v126 = sms::asString(IMSMode);
            *buf = 136315138;
            *&buf[4] = v126;
            _os_log_impl(&_mh_execute_header, v124, OS_LOG_TYPE_DEFAULT, "#I IMS over %s. Falling back to CS", buf, 0xCu);
          }

          v79 = 1;
          goto LABEL_125;
        }

        v71 = Registry::getServiceMap(*(a1 + 80));
        v72 = v71;
        if (v51 < 0)
        {
          v73 = (v51 & 0x7FFFFFFFFFFFFFFFLL);
          v74 = 5381;
          do
          {
            v51 = v74;
            v75 = *v73++;
            v74 = (33 * v74) ^ v75;
          }

          while (v75);
        }

        std::mutex::lock(v71);
        *buf = v51;
        v76 = sub_100009510(&v72[1].__m_.__sig, buf);
        if (v76)
        {
          v77 = v76[3];
          v78 = v76[4];
          if (v78)
          {
            v79 = 1;
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v72);
            atomic_fetch_add_explicit(&v78->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v78);
            if (!v77)
            {
              goto LABEL_207;
            }

            goto LABEL_198;
          }

          std::mutex::unlock(v72);
          if (v77)
          {
LABEL_198:
            v159 = 0;
            memset(buf, 0, sizeof(buf));
            *&v162 = @"IMSConfig";
            sub_10005B328(buf, &v162, &v162 + 8, 1uLL);
            (*(*v77 + 104))(&v159, v77, v69, 1, buf, 0, 0);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            v158 = 0;
            v162 = *off_101F1D788;
            v163 = @"allowCSFBInVolteMode";
            memset(buf, 0, sizeof(buf));
            sub_10005B328(buf, &v162, v164, 3uLL);
            (*(*v77 + 104))(&v157, v77, v69, 1, buf, 0, 0);
            sub_10002FE1C(&v158, &v157);
            sub_10000A1EC(&v157);
            if (*buf)
            {
              *&buf[8] = *buf;
              operator delete(*buf);
            }

            if (v158)
            {
              buf[0] = 0;
              ctu::cf::assign(buf, v158, v127);
              v79 = buf[0];
              v128 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v69);
              if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
              {
                v129 = CSIBOOLAsString(v79);
                *buf = 136315138;
                *&buf[4] = v129;
                _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "#I Carrier pref for csfb: %s", buf, 0xCu);
              }
            }

            else
            {
              v79 = 1;
            }

            sub_100045C8C(&v158);
            sub_10000A1EC(&v159);
            if (!v78)
            {
LABEL_208:
              *buf = &v156;
              sub_1002D750C(a1 + 2560, &v156);
              v130 = isImsTechBasedRat();
              v131 = *v70;
              v132 = os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT);
              if (v130)
              {
                if (v132)
                {
                  v133 = CSIBOOLAsString(v79);
                  *buf = 136315138;
                  *&buf[4] = v133;
                  _os_log_impl(&_mh_execute_header, v131, OS_LOG_TYPE_DEFAULT, "#I Fallback to CS: %s", buf, 0xCu);
                }

                goto LABEL_125;
              }

              if (v132)
              {
                *buf = &v156;
                sub_1002D750C(a1 + 2560, &v156);
                v134 = asString();
                v135 = sms::Model::getTransportType(*(a1 + 96));
                v136 = sms::asString(v135);
                v137 = CSIBOOLAsString(1);
                v138 = CSIBOOLAsString(v79);
                *buf = 136315906;
                *&buf[4] = v134;
                *&buf[12] = 2080;
                *&buf[14] = v136;
                *&buf[22] = 2080;
                *v161 = v137;
                *&v161[8] = 2080;
                *&v161[10] = v138;
                v82 = "#I No Fallback to CS - rat: %s, transport: %s, supports fallback: %s, supports csfb: %s";
                v83 = v131;
                v84 = 42;
                goto LABEL_123;
              }

LABEL_124:
              v79 = 0;
LABEL_125:
              v67 = v143;
              goto LABEL_126;
            }

LABEL_207:
            sub_100004A34(v78);
            goto LABEL_208;
          }
        }

        else
        {
          std::mutex::unlock(v72);
        }

        v79 = 1;
        goto LABEL_208;
      }

      v81 = *v70;
      if (!os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *buf = 0;
      v82 = "#I Transport fallback not supported";
    }

    else
    {
      v81 = *v70;
      if (!os_log_type_enabled(*v70, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_124;
      }

      *buf = 0;
      v82 = "#I Continuing on IMS transport";
    }

    v83 = v81;
    v84 = 2;
LABEL_123:
    _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, v82, buf, v84);
    goto LABEL_124;
  }

  *buf = 0;
  Value = CFDictionaryGetValue(v162, @"IgnoreDuplicateSMSSendError");
  sub_1005DEE94(buf, &Value);
  LOBYTE(Value) = 0;
  ctu::cf::assign(&Value, *buf, v62);
  if (Value != 1 || gsmToCsiErrorWithCode() != 45 || *&v152[4] != 197)
  {
    sub_100045C8C(buf);
    goto LABEL_90;
  }

  sub_100045C8C(buf);
  sub_10001021C(&v162);
  v63 = *v143;
  if (os_log_type_enabled(*v143, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *&buf[4] = *v152;
    *&buf[8] = 1024;
    *&buf[10] = 197;
    _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "#I Ignoring SMS send error (%d, %d)", buf, 0xEu);
  }

  v64 = v142;
  (*(*a1 + 40))(a1, v153);
LABEL_185:
  if (v64)
  {
    sub_100004A34(v64);
  }
}

void sub_10123528C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24, uint64_t a25, void *aBlock, dispatch_object_t object, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, std::__shared_weak_count *a41)
{
  sub_100045C8C((v42 - 192));
  sub_10000A1EC((v42 - 184));
  if (v41)
  {
    sub_100004A34(v41);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  if (a41)
  {
    sub_100004A34(a41);
  }

  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101235500(Registry *a1, uint64_t a2, uint64_t a3)
{
  theDict = 0;
  ServiceMap = Registry::getServiceMap(a1);
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
  v24 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v24);
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
      v15 = 0;
      if (!v13)
      {
        goto LABEL_18;
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
  v15 = 1;
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_10:
  SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v14);
  (*(*v13 + 80))(&v21, v13, a2, 2, SMSCarrierBundleString, 0, 0);
  sub_100010180(&Value, &v21);
  v17 = theDict;
  theDict = Value;
  v24 = v17;
  Value = 0;
  sub_10001021C(&v24);
  sub_10001021C(&Value);
  sub_10000A1EC(&v21);
  if (theDict)
  {
    v24 = 0;
    Value = CFDictionaryGetValue(theDict, @"MessageFormat");
    sub_100010180(&v24, &Value);
    if (v24)
    {
      Value = CFDictionaryGetValue(v24, @"SignalingFormat");
      sub_1002AF4F0(&v20, &Value);
      if (v20)
      {
        LODWORD(v21) = 0;
        ctu::cf::assign(&v21, v20, v18);
        if ((v21 - 1) >= 2)
        {
          a3 = 0;
        }

        else
        {
          a3 = v21;
        }
      }

      sub_100029A48(&v20);
    }

    sub_10001021C(&v24);
  }

LABEL_18:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  sub_10001021C(&theDict);
  return a3;
}

void sub_1012356F4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v9 = va_arg(va2, const void *);
  sub_100029A48(va);
  sub_10001021C(va2);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_10123575C(void *a1)
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
        v6 = (a1 + 7);
        v7 = sub_1002D750C(v3 + 2560, v6)[5];
        v8 = *(v7 + 328);
        *(v7 + 328) = 0;
        if (v8)
        {
          (*(*v8 + 8))(v8);
        }

        if (sub_10122E954(v3, *v6))
        {
          sub_10122EA4C(v3);
        }

        else
        {
          sub_101230F7C(v3);
        }
      }

      sub_100004A34(v5);
    }
  }
}

BOOL sub_101235844(uint64_t a1, int a2)
{
  v8 = a2;
  v7[0] = a1;
  v7[1] = &v8;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return sub_101235BA4(a1, v8);
    }

    v4 = *(a1 + 32) == 0;
  }

  else
  {
    v4 = 1;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_10124FC5C;
  v9[3] = &unk_101F1DE58;
  v9[4] = a1 + 8;
  v9[5] = v7;
  v10 = v9;
  v5 = *(a1 + 24);
  v16 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v4)
  {
    v12 = sub_1000593F4;
    v13 = &unk_101F1DB80;
    v14 = &v16;
    v15 = &v10;
    dispatch_sync(v5, block);
  }

  else
  {
    v12 = sub_10006A350;
    v13 = &unk_101F1DBA0;
    v14 = &v16;
    v15 = &v10;
    dispatch_async_and_wait(v5, block);
  }

  return v16;
}

void sub_1012359C0(uint64_t a1, uint64_t a2)
{
  v8[0] = a1;
  v8[1] = a2;
  if (!*(a1 + 32))
  {
    v6 = 1;
    goto LABEL_9;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v6 = *(a1 + 32) == 0;
LABEL_9:
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10124FC6C;
    v12 = &unk_101F1DE78;
    v13 = a1 + 8;
    v14 = v8;
    v7 = *(a1 + 24);
    if (v6)
    {
      dispatch_sync(v7, &block);
    }

    else
    {
      dispatch_async_and_wait(v7, &block);
    }

    return;
  }

  v4 = *a2;
  v5 = *(a2 + 8);
  block = v4;
  v10 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101235AC8(a1, &block);
  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_101235AB0(void *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_10004F058(a1);
}

void sub_101235AC8(uint64_t a1, sms::Model **a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = a2;
    v5 = *(v3 + 2);
    TransportType = sms::Model::getTransportType(v3);
    v7 = *v4;
    LODWORD(v4) = *(*v4 + 38);
    v8 = (*(*v7 + 128))(v7);
    sms::Controller::submitSMSSendEndMetric(a1, v5, TransportType, v4, v8, 5, 6, v9, 0, 0);
  }

  else
  {
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "Invalid model object", buf, 2u);
    }
  }
}

BOOL sub_101235BA4(uint64_t a1, int a2)
{
  v6 = 0;
  v7 = 0;
  v8 = 0;
  sms::Controller::getDynamicMessageModes_sync(a1, a2, &v6);
  v2 = v6;
  if (v6 == v7)
  {
LABEL_13:
    v4 = v2 == v7;
    if (v6)
    {
LABEL_14:
      v7 = v6;
      operator delete(v6);
    }
  }

  else
  {
    v3 = v6;
    while (*v3 != 1)
    {
      if (++v3 == v7)
      {
        goto LABEL_9;
      }
    }

    if (v3 == v7)
    {
LABEL_9:
      v2 = v6;
      while (*v2 != 2)
      {
        if (++v2 == v7)
        {
          v2 = v7;
          goto LABEL_13;
        }
      }

      goto LABEL_13;
    }

    v4 = 0;
    if (v6)
    {
      goto LABEL_14;
    }
  }

  return v4;
}

void sms::Controller::getDynamicMessageModes_sync(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v21 = a2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  capabilities::ct::getSupportedMessageModes(a3, a1);
  v5 = *(a1 + 2620);
  v6 = v5 == 1;
  v22 = &v21;
  v7 = sub_1002D750C(a1 + 2560, &v21);
  sub_101166D14(v7[5], &v18);
  if (v20)
  {
    v8 = *(a1 + 2728);
    sub_100009970(&v18, v19);
    if (v8 != 0.0)
    {
      v9 = *(a1 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v18) = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Prevent detach timer is active. Alowing MO/MT SMS", &v18, 2u);
      }

      v6 = 1;
    }
  }

  else
  {
    sub_100009970(&v18, v19);
  }

  v11 = *a3;
  v10 = a3[1];
  v12 = *a3;
  if (*a3 != v10)
  {
    v12 = *a3;
    while (*v12)
    {
      if (++v12 == v10)
      {
        v12 = a3[1];
        break;
      }
    }
  }

  v13 = v12 == v10;
  v14 = !v6;
  if (!v13)
  {
    v14 = 1;
  }

  if ((v14 & 1) == 0)
  {
    LODWORD(v18) = 0;
    sub_1001FDFFC(a3, &v18);
    v11 = *a3;
    v10 = a3[1];
  }

  v15 = v10;
  if (v11 != v10)
  {
    v15 = v11;
    while (*v15 != 1)
    {
      if (++v15 == v10)
      {
        v15 = v10;
        break;
      }
    }
  }

  v13 = v15 == v10;
  v16 = !v6;
  if (!v13)
  {
    v16 = 1;
  }

  if ((v16 & 1) == 0)
  {
    LODWORD(v18) = 1;
    sub_1001FDFFC(a3, &v18);
    v11 = *a3;
    v10 = a3[1];
  }

  v17 = v10;
  if (v11 != v10)
  {
    while (*v11 != 3)
    {
      if (++v11 == v10)
      {
        v17 = v10;
        goto LABEL_30;
      }
    }

    v17 = v11;
  }

LABEL_30:
  if (v5 == 1 && v17 == v10)
  {
    LODWORD(v18) = 3;
    sub_1001FDFFC(a3, &v18);
  }
}

void sub_101235E44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101235E6C(uint64_t a1, uint64_t *a2)
{
  v20 = (*(**a2 + 64))();
  v4 = (*(**a2 + 48))();
  if (!(v20 | v4))
  {
    (*(**a2 + 192))(__p);
    sub_100839038(__p, &v20);
    if (v18 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = (*(**(a1 + 48) + 16))(*(a1 + 48), *(*a2 + 8));
  v6 = v5;
  if (v20 == 7275 || v20 == 2948 && v4 == 7275)
  {
    v7 = *v5;
    if (!os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
    {
      return 1;
    }

    LOWORD(__p[0]) = 0;
    v8 = "#I SUPL INIT SMS detected..";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, __p, 2u);
    return 1;
  }

  if (v20 == 2948)
  {
    v10 = *a2;
    v11 = *(*a2 + 8);
    (*(*v10 + 192))(v15);
    (*(**(a1 + 2544) + 144))(v13);
    sub_100B28350(v11, v15, v13, __p);
    v12 = v19;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v14 < 0)
    {
      operator delete(v13[0]);
    }

    if (v16 < 0)
    {
      operator delete(v15[0]);
    }

    if (!v12)
    {
      v7 = *v6;
      if (!os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        return 1;
      }

      LOWORD(__p[0]) = 0;
      v8 = "#I SUPL wap push detected...";
      goto LABEL_9;
    }
  }

  return 0;
}

void sub_1012360C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
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

void sub_10123610C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (!*(a4 + 24))
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "Failed to get driver callback while handling decoded SMS";
    goto LABEL_11;
  }

  v7 = CTParser::kDecodedStatusKey;
  v8 = (*a2 + 8);
  if (!xpc_dictionary_get_value(*v8, CTParser::kDecodedStatusKey))
  {
    v13 = *(a1 + 40);
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v14 = "Decoding status missing";
LABEL_11:
    _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, v14, buf, 2u);
    return;
  }

  *buf = v8;
  *&buf[8] = v7;
  sub_100006354(buf, object);
  v10 = xpc::dyn_cast_or_default(object, 0, v9);
  xpc_release(object[0]);
  v27 = 0;
  v28 = 0;
  if (v10)
  {
    v11 = *a3;
    v12 = *(*a3 + 8);
    if (v12 == 2)
    {
      operator new();
    }

    if (v12 == 1)
    {
      memset(buf, 0, sizeof(buf));
      sub_101237154(buf);
    }

    v19 = *(a1 + 40);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = sms::asString();
      *buf = 136315138;
      *&buf[4] = v20;
      _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Unhandled SMS decoding response: %s", buf, 0xCu);
      v11 = *a3;
    }

    v17 = a3[1];
    v23[0] = v11;
    v23[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v21 = v27;
    v22 = v28;
    sub_10124FCF8(v30, a4);
    sub_101236B38(a1, v23, 2u, &v21, v30);
    sub_10124FD90(v30);
    v18 = v22;
    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Decoding 3GPP SMS failed", buf, 2u);
    }

    v16 = *a3;
    v17 = a3[1];
    v26[0] = v16;
    v26[1] = v17;
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = v27;
    v25 = v28;
    sub_10124FCF8(v31, a4);
    sub_101236B38(a1, v26, 2u, &v24, v31);
    sub_10124FD90(v31);
    v18 = v25;
    if (!v25)
    {
      goto LABEL_18;
    }
  }

  sub_100004A34(v18);
LABEL_18:
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (v28)
  {
    sub_100004A34(v28);
  }
}

void sub_1012368FC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, std::__shared_weak_count *a28, xpc_object_t object, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *__p, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10124FE40(&a66);
  if (a49 < 0)
  {
    operator delete(__p);
  }

  if (a50)
  {
    operator delete(a50);
  }

  if (a2 != 3 && a2 != 2)
  {
    sub_100004A34(v66);
    if (a28)
    {
      sub_100004A34(a28);
    }

    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x101236590);
}

void sub_101236B38(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if (!*a4)
  {
    v20 = *(a1 + 40);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Failed to decode message", buf, 2u);
    }

    return;
  }

  v10 = *(*a4 + 8);
  v36 = (*(**(a1 + 48) + 16))(*(a1 + 48), v10);
  v11 = 112;
  if (*(*a2 + 4) == 2)
  {
    v11 = 128;
  }

  v12 = *(a1 + v11 + 8);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (a3 > 8 || ((1 << a3) & 0x1B2) == 0)
  {
    v23 = *v36;
    if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Parsing failed. SMS to be handled by driver.", buf, 2u);
    }

    goto LABEL_36;
  }

  if (*a4)
  {
    v13 = *(*a4 + 8);
    v14 = (*(**(a1 + 48) + 16))(*(a1 + 48), v13);
    if ((*(**a4 + 248))() != 1)
    {
      goto LABEL_29;
    }

    if (a3 == 5)
    {
      v16 = *(*a2 + 16);
      v15 = *(*a2 + 24);
      TransportType = sms::Model::getTransportType(*a4);
      sms::Controller::submitSMSReceivedMetric(a1, v10, (v15 - v16), 0, 0xAu, TransportType, 0);
      a3 = 5;
      goto LABEL_12;
    }

    if (*(a1 + 2728) == 0.0)
    {
      v24 = *(a4 + 8);
      *buf = *a4;
      v41 = v24;
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v25 = sub_101235E6C(a1, buf);
      if (v24)
      {
        v35 = v25;
        sub_100004A34(v24);
        v25 = v35;
      }

      if ((v25 & 1) == 0)
      {
        if (sub_101235BA4(a1, v13))
        {
          v32 = *v14;
          if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
          {
            *v42 = 0;
            _os_log_error_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Discarding MT SMS as its not allowed on this device", v42, 2u);
          }

          a3 = 8;
        }

        else
        {
          if (a3 != 7)
          {
            goto LABEL_29;
          }

          isIMSOverAP = sms::Model::isIMSOverAP(*a4);
          if (isIMSOverAP)
          {
            goto LABEL_29;
          }

          if (capabilities::ct::supportsVoicemailIndicationInCS(isIMSOverAP))
          {
            v34 = *v14;
            if (os_log_type_enabled(*v14, OS_LOG_TYPE_DEFAULT))
            {
              *v42 = 0;
              _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "#I Handling voicemail indications in CS path", v42, 2u);
            }

            goto LABEL_29;
          }

          a3 = 7;
        }

LABEL_12:
        v18 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v10);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v19 = "#I SMS handled by driver...";
LABEL_40:
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 2u);
          goto LABEL_45;
        }

        goto LABEL_45;
      }
    }

    else
    {
      v21 = *v14;
      if (os_log_type_enabled(*v14, OS_LOG_TYPE_ERROR))
      {
        *v42 = 0;
        v22 = "Emergency Text received...";
        goto LABEL_23;
      }
    }
  }

  else
  {
    v21 = *(a1 + 40);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v42 = 0;
      v22 = "Invalid message...";
LABEL_23:
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v22, v42, 2u);
    }
  }

LABEL_29:
  if (*(a1 + 168) == 1 && (*(**a4 + 232))())
  {
    v26 = *v36;
    if (os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Dropping the SMS since device memory is full and its not a class 0 SMS", buf, 2u);
    }

    v27 = *(a4 + 8);
    *a4 = 0;
    *(a4 + 8) = 0;
    if (v27)
    {
      sub_100004A34(v27);
    }

    a3 = 1;
LABEL_36:
    (*(*a1 + 152))(a1);
    goto LABEL_45;
  }

  if ((*(*a2 + 41) & 1) == 0)
  {
    v28 = *(a4 + 8);
    v38 = *a4;
    v39 = v28;
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*a1 + 24))(a1, &v38);
    if (v39)
    {
      sub_100004A34(v39);
    }

    goto LABEL_45;
  }

  v18 = *v36;
  if (os_log_type_enabled(*v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v19 = "#I Waiting for Ack completion";
    goto LABEL_40;
  }

LABEL_45:
  v29 = *(a5 + 24);
  if (v29)
  {
    v30 = *(a4 + 8);
    v37 = v30;
    if (v30)
    {
      atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
      v29 = *(a5 + 24);
    }

    sub_1012374B0(v29, a3);
    if (v37)
    {
      sub_100004A34(v37);
      if (!v12)
      {
        return;
      }

      goto LABEL_53;
    }

LABEL_52:
    if (!v12)
    {
      return;
    }

    goto LABEL_53;
  }

  v31 = *v36;
  if (!os_log_type_enabled(*v36, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_52;
  }

  *buf = 0;
  _os_log_error_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "No driver callback specified", buf, 2u);
  if (v12)
  {
LABEL_53:
    sub_100004A34(v12);
  }
}

void sub_101237104(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101237154(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012373D8(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  sub_10124FE40(va);
  if (*(v19 - 81) < 0)
  {
    operator delete(*(v19 - 104));
  }

  v22 = *(v19 - 80);
  if (v22)
  {
    *(v19 - 72) = v22;
    operator delete(v22);
  }

  if (a2 != 2 && a2 != 1)
  {
    v23 = *(v18 + 8);
    if (v23)
    {
      sub_100004A34(v23);
    }

    _Unwind_Resume(a1);
  }

  __cxa_begin_catch(a1);
  __cxa_end_catch();
  JUMPOUT(0x1012373C0);
}

uint64_t sub_1012374B0(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t sub_101237500(uint64_t a1, unsigned int *a2)
{
  result = subscriber::isValidSimSlot();
  if (result)
  {
    (*(**(a1 + 48) + 16))(*(a1 + 48), *a2);
    operator new();
  }

  return result;
}

void sub_101237E18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, int a11, uint64_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10123802C(uint64_t *a1, uint64_t a2)
{
  if (*a2 == *(a2 + 8))
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  else
  {
    v4[0] = 0;
    v4[1] = 0;
    ctu::TextConverter::TextConverter(v4);
    ctu::TextConverter::pushConversion();
    ctu::TextConverter::setSource(v4, *a2, *(a2 + 8) - *a2);
    ctu::TextConverter::readChars(a1, v4, 0x7FFFFFFFuLL);
    ctu::TextConverter::~TextConverter(v4);
  }
}

void sub_1012380D0(uint64_t a1, uint64_t a2, std::__shared_weak_count *a3)
{
  if (a3)
  {
    atomic_fetch_add_explicit(&a3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  MTSmsDetailsSerialized::MTSmsDetailsSerialized();
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
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  __src = 0u;
  v19 = 0u;
  v20 = 0u;
  sub_10000D518(&v19);
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  boost::archive::text_oarchive_impl<boost::archive::text_oarchive>::text_oarchive_impl(v17, &v19, 0);
  *&v17[0] = &off_101F1F548;
  boost::archive::basic_text_oarchive<boost::archive::text_oarchive>::init(v17);
  sub_10124C910();
  boost::archive::detail::basic_oarchive::save_object(v17, v10, qword_101FCA698);
  __dst = 0;
  v15 = 0;
  v16 = 0;
  if ((BYTE8(v25) & 0x10) != 0)
  {
    v5 = v25;
    if (v25 < *(&__src + 1))
    {
      *&v25 = *(&__src + 1);
      v5 = *(&__src + 1);
    }

    v6 = __src;
  }

  else
  {
    if ((BYTE8(v25) & 8) == 0)
    {
      v4 = 0;
      goto LABEL_16;
    }

    v6 = *(&v20 + 1);
    v5 = *(&v21 + 1);
  }

  v4 = v5 - v6;
  if ((v5 - v6) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v4 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v16) = v5 - v6;
  if (v4)
  {
    memmove(&__dst, v6, v4);
  }

LABEL_16:
  *(&__dst + v4) = 0;
  v7 = SHIBYTE(v16);
  if ((SHIBYTE(v16) & 0x8000000000000000) != 0)
  {
    p_dst = __dst;
    v7 = v15;
  }

  else
  {
    p_dst = &__dst;
  }

  __p = 0;
  v12 = 0;
  v13 = 0;
  sub_100837690(&__p, p_dst, p_dst + v7, v7);
  if (__p)
  {
    v12 = __p;
    operator delete(__p);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(__dst);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(v17);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(v18);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(*(&v23 + 1));
  }

  std::locale::~locale(&v20);
  std::ostream::~ostream();
  std::ios::~ios();
  MTSmsDetailsSerialized::~MTSmsDetailsSerialized(v10);
  if (a3)
  {
    sub_100004A34(a3);
  }
}

void sub_101238414(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, char a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40)
{
  if (__p)
  {
    a16 = __p;
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  boost::archive::detail::basic_oarchive::~basic_oarchive(&a24);
  boost::archive::basic_text_oprimitive<std::ostream>::~basic_text_oprimitive(&a30);
  std::ios::~ios();
  if (a2 == 2 || a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1012383E0);
  }

  MTSmsDetailsSerialized::~MTSmsDetailsSerialized(&a12);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012384EC(uint64_t a1)
{
  sub_10124FD90(a1 + 32);
  v2 = *(a1 + 24);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void sub_101238530(uint64_t a1, unsigned int **a2)
{
  v4 = (*(**a2 + 328))(*a2);
  v5 = *a2;
  if (v4)
  {
    v169 = a1;
    if ((*(*v5 + 248))(v5) == 2)
    {
      (*(**a2 + 416))(&buf);
      v6 = buf.__r_.__value_.__r.__words[0];
      if (buf.__r_.__value_.__l.__size_)
      {
        sub_100004A34(buf.__r_.__value_.__l.__size_);
      }

      if (v6)
      {
        v7 = *a2;
        v8 = a2[1];
        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v179 = 0;
        v180 = 0;
        (*(*v7 + 416))(&v179, v7);
        v164 = v7;
        v177 = v7[2];
        v9 = (*(**(a1 + 48) + 16))(*(a1 + 48));
        v10 = v179;
        v167 = v9;
        v11 = *v9;
        v12 = os_log_type_enabled(*v9, OS_LOG_TYPE_DEFAULT);
        if (v10)
        {
          v165 = v8;
          if (v12)
          {
            v13 = *(v10 + 80);
            LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
            HIDWORD(buf.__r_.__value_.__r.__words[0]) = v13 >> 4;
            LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
            *(&buf.__r_.__value_.__r.__words[1] + 2) = v13 & 0xF;
            _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I concatenated CB message (part %d/%d)", &buf, 0xEu);
          }

          for (i = 0; ; i = v16 + 1)
          {
            v172.__r_.__value_.__r.__words[0] = &v177;
            v15 = sub_1002D750C(a1 + 2560, &v177);
            v16 = i;
            if (i >= ((*(v15[5] + 304) - *(v15[5] + 296)) >> 4))
            {
              v69 = 0;
              v8 = v165;
              goto LABEL_131;
            }

            v172.__r_.__value_.__r.__words[0] = &v177;
            v17 = **(*(sub_1002D750C(a1 + 2560, &v177)[5] + 296) + 16 * i);
            v172.__r_.__value_.__r.__words[0] = &v177;
            v18 = *(*(*(sub_1002D750C(a1 + 2560, &v177)[5] + 296) + 16 * i) + 4);
            v172.__r_.__value_.__r.__words[0] = &v177;
            v19 = *(*(*(sub_1002D750C(a1 + 2560, &v177)[5] + 296) + 16 * i) + 8);
            v172.__r_.__value_.__r.__words[0] = &v177;
            v20 = *(*(*(sub_1002D750C(a1 + 2560, &v177)[5] + 296) + 16 * i) + 12);
            v21 = *(v179 + 72);
            v22 = *(v179 + 144);
            v175 = v179;
            v176 = v180;
            if (v180)
            {
              atomic_fetch_add_explicit(&v180->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v172.__r_.__value_.__r.__words[0] = &v177;
            v23 = sub_1002D750C(v169 + 2560, &v177)[5];
            MCC::MCC(&buf, (v23 + 26));
            MCC::MCC(v186, (v23 + 28));
            *v189 = v23[30];
            *&v189[9] = *(v23 + 489);
            v24 = sub_100DAA68C(&v175, &buf);
            v25 = *(v179 + 148);
            if (v188 < 0)
            {
              operator delete(v186[1]);
            }

            if (v185 < 0)
            {
              operator delete(buf.__r_.__value_.__l.__size_);
            }

            if (v176)
            {
              sub_100004A34(v176);
            }

            v172.__r_.__value_.__r.__words[0] = __PAIR64__(v18, v17);
            *&v172.__r_.__value_.__r.__words[1] = __PAIR64__(v20, v19);
            v173 = 0;
            __dst.__r_.__value_.__r.__words[0] = __PAIR64__(v22, v21);
            *&__dst.__r_.__value_.__r.__words[1] = __PAIR64__(v25, v24);
            v182 = 0;
            v26 = sub_100DAAD54(&v172, &__dst);
            a1 = v169;
            if (v26 == 1)
            {
              v8 = v165;
              (*(*v169 + 152))(v169);
              v78 = *v167;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "#I Received replacement CB message, discarding incomplete", &v172, 2u);
              }

              v172.__r_.__value_.__r.__words[0] = &v177;
              v79 = sub_1002D750C(v169 + 2560, &v177)[5];
              v172.__r_.__value_.__r.__words[0] = &v177;
              v80 = *(sub_1002D750C(v169 + 2560, &v177)[5] + 296) + 16 * v16;
              v81 = sub_10124CB1C((v80 + 16), *(v79 + 304), v80);
              for (j = *(v79 + 304); j != v81; j -= 16)
              {
                v83 = *(j - 8);
                if (v83)
                {
                  sub_100004A34(v83);
                }
              }

              v69 = 0;
              *(v79 + 304) = v81;
LABEL_131:
              v88 = *v167;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v88, OS_LOG_TYPE_DEFAULT, "#I First sequence of concatenated CB message", &v172, 2u);
              }

              if ((*(v179 + 80) & 0xF) != 0)
              {
                operator new();
              }

              (*(*a1 + 152))(a1);
              v90 = *v167;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I invalid CB PDU: concatenated element count is 0", &v172, 2u);
              }

              v87 = v69;
              goto LABEL_198;
            }

            if (v26 == -1)
            {
              break;
            }

            if (v26 == -2)
            {
              v84 = *v167;
              v8 = v165;
              if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
              {
                LOWORD(v172.__r_.__value_.__l.__data_) = 0;
                _os_log_impl(&_mh_execute_header, v84, OS_LOG_TYPE_DEFAULT, "#I Found partial CB message", &v172, 2u);
              }

              v172.__r_.__value_.__r.__words[0] = &v177;
              v85 = (*(sub_1002D750C(v169 + 2560, &v177)[5] + 296) + 16 * v16);
              v86 = *v85;
              v69 = v85[1];
              if (v69)
              {
                atomic_fetch_add_explicit(&v69->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v87 = v69;
              if (!v86)
              {
                goto LABEL_131;
              }

              v92 = *(v179 + 80) >> 4;
              if (v92 > *(v86 + 16))
              {
                (*(*v169 + 152))(v169);
                v93 = *v167;
                if (os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                  v94 = "#I Concatenated cbs segment address out of bounds, discarding";
                  v95 = v93;
                  v96 = 2;
                  goto LABEL_197;
                }

                goto LABEL_198;
              }

              v97 = *(v86 + 24);
              v98 = v97 + 24 * (*(v179 + 80) >> 4);
              if (*(v98 - 1) < 0)
              {
                if (!*(v98 - 16))
                {
                  goto LABEL_153;
                }

LABEL_150:
                (*(*v169 + 152))(v169);
                v99 = *v167;
                if (!os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
                {
                  goto LABEL_198;
                }

                v100 = *(v179 + 80) >> 4;
                LODWORD(__dst.__r_.__value_.__l.__data_) = 67109120;
                HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v100;
                v94 = "#I Received duplicated cbs part %d";
                v95 = v99;
                v96 = 8;
              }

              else
              {
                if (*(v98 - 1))
                {
                  goto LABEL_150;
                }

LABEL_153:
                if (*(v179 + 111) < 0)
                {
                  sub_100005F2C(&__dst, *(v179 + 88), *(v179 + 96));
                  v97 = *(v86 + 24);
                  v92 = *(v179 + 80) >> 4;
                }

                else
                {
                  __dst = *(v179 + 88);
                }

                v113 = v97 + 24 * v92;
                v114 = v113 - 24;
                if (*(v113 - 1) < 0)
                {
                  operator delete(*v114);
                }

                v115 = *&__dst.__r_.__value_.__l.__data_;
                *(v114 + 16) = *(&__dst.__r_.__value_.__l + 2);
                *v114 = v115;
                v116 = *(v86 + 16);
                v117 = *(v86 + 20) + 1;
                *(v86 + 20) = v117;
                v118 = *v167;
                v119 = os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT);
                if (v117 == v116)
                {
                  if (v119)
                  {
                    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                    _os_log_impl(&_mh_execute_header, v118, OS_LOG_TYPE_DEFAULT, "#I cbs message is complete", &__dst, 2u);
                  }

                  memset(&__dst, 0, sizeof(__dst));
                  if (*(v86 + 16))
                  {
                    v120 = 0;
                    v121 = 0;
                    do
                    {
                      v122 = *(v86 + 24) + v120;
                      v123 = *(v122 + 23);
                      if (v123 >= 0)
                      {
                        v124 = (*(v86 + 24) + v120);
                      }

                      else
                      {
                        v124 = *v122;
                      }

                      if (v123 >= 0)
                      {
                        v125 = *(v122 + 23);
                      }

                      else
                      {
                        v125 = *(v122 + 8);
                      }

                      std::string::append(&__dst, v124, v125);
                      ++v121;
                      v120 += 24;
                    }

                    while (v121 < *(v86 + 16));
                  }

                  (*(*v164 + 136))(v164, &__dst, 8);
                  (*(*v164 + 360))(v164);
                  v171[0] = v164;
                  v171[1] = v165;
                  if (v165)
                  {
                    atomic_fetch_add_explicit(&v165->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  sub_1012312A8(v169, v171);
                  if (v165)
                  {
                    sub_100004A34(v165);
                  }

                  v178 = &v177;
                  v126 = sub_1002D750C(v169 + 2560, &v177)[5];
                  v178 = &v177;
                  v127 = *(sub_1002D750C(v169 + 2560, &v177)[5] + 296) + 16 * v16;
                  v128 = sub_10124CB1C((v127 + 16), *(v126 + 304), v127);
                  for (k = *(v126 + 304); k != v128; k -= 16)
                  {
                    v130 = *(k - 8);
                    if (v130)
                    {
                      sub_100004A34(v130);
                    }
                  }

                  *(v126 + 304) = v128;
                  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(__dst.__r_.__value_.__l.__data_);
                  }

                  goto LABEL_198;
                }

                if (!v119)
                {
LABEL_198:
                  if (v87)
                  {
                    sub_100004A34(v87);
                  }

                  goto LABEL_200;
                }

                LODWORD(__dst.__r_.__value_.__l.__data_) = 67109376;
                HIDWORD(__dst.__r_.__value_.__r.__words[0]) = v117;
                LOWORD(__dst.__r_.__value_.__r.__words[1]) = 1024;
                *(&__dst.__r_.__value_.__r.__words[1] + 2) = v116;
                v94 = "#I cbs message have %d out of %d parts of this message";
                v95 = v118;
                v96 = 14;
              }

LABEL_197:
              _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, v94, &__dst, v96);
              goto LABEL_198;
            }
          }

          v8 = v165;
          (*(*v169 + 152))(v169);
          v89 = *v167;
          if (!os_log_type_enabled(*v167, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_200;
          }

          LOWORD(v172.__r_.__value_.__l.__data_) = 0;
          v39 = "#I Old CB message, discarding";
          p_buf = &v172;
          v41 = v89;
        }

        else
        {
          if (!v12)
          {
            goto LABEL_200;
          }

          LOWORD(buf.__r_.__value_.__l.__data_) = 0;
          v39 = "#I CB PDU Decoder is invalid";
          p_buf = &buf;
          v41 = v11;
        }

        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, v39, p_buf, 2u);
LABEL_200:
        v77 = v180;
        if (!v180)
        {
          goto LABEL_202;
        }

        goto LABEL_201;
      }
    }

    v28 = *a2;
    v8 = a2[1];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    LODWORD(v175) = -1;
    LODWORD(v174) = 0;
    LODWORD(v171[0]) = 0;
    LODWORD(v178) = v28[2];
    v168 = (*(**(a1 + 48) + 16))(*(a1 + 48), v178);
    if ((subscriber::isValidSimSlot() & 1) == 0)
    {
      goto LABEL_202;
    }

    v166 = v8;
    if ((*(*v28 + 248))(v28) != 2)
    {
      goto LABEL_81;
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 80));
    v30 = ServiceMap;
    if ((v31 & 0x8000000000000000) != 0)
    {
      v32 = (v31 & 0x7FFFFFFFFFFFFFFFLL);
      v33 = 5381;
      do
      {
        v31 = v33;
        v34 = *v32++;
        v33 = (33 * v33) ^ v34;
      }

      while (v34);
    }

    std::mutex::lock(ServiceMap);
    buf.__r_.__value_.__r.__words[0] = v31;
    v35 = sub_100009510(&v30[1].__m_.__sig, &buf);
    if (v35)
    {
      v37 = v35[3];
      v36 = v35[4];
      if (v36)
      {
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v30);
        atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v36);
        v38 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v37 = 0;
    }

    std::mutex::unlock(v30);
    v36 = 0;
    v38 = 1;
LABEL_45:
    v42 = (*(*v37 + 88))(v37);
    if ((v38 & 1) == 0)
    {
      sub_100004A34(v36);
    }

    buf.__r_.__value_.__r.__words[0] = &v178;
    v43 = *sub_1002D750C(a1 + 2560, &v178)[5];
    buf.__r_.__value_.__r.__words[0] = &v178;
    v44 = *(sub_1002D750C(a1 + 2560, &v178)[5] + 8);
    v45 = v178;
    v46 = *(a1 + 2584);
    v47 = *(a1 + 2592);
    if (v47)
    {
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
      atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v43 == v44)
    {
      goto LABEL_78;
    }

    while (1)
    {
      v48 = *v43;
      v49 = v43[1];
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (!*(v48 + 208) || (*(*v46 + 200))(v46, v45, v42))
      {
        break;
      }

      v50 = 1;
      if (v49)
      {
        goto LABEL_55;
      }

LABEL_56:
      if (v50)
      {
        a1 = v169;
        if (v43 != v44)
        {
          for (m = v43 + 2; ; m += 2)
          {
            if (m == v44)
            {
              goto LABEL_78;
            }

            v52 = *m;
            v53 = m[1];
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (!*(v52 + 208) || (*(*v46 + 200))(v46, v45, v42))
            {
              break;
            }

            v54 = 1;
            if (v53)
            {
              goto LABEL_69;
            }

LABEL_70:
            if (v54)
            {
              a1 = v169;
            }

            else
            {
              v55 = *m;
              *m = 0;
              m[1] = 0;
              v56 = v43[1];
              *v43 = v55;
              a1 = v169;
              if (v56)
              {
                sub_100004A34(v56);
              }

              v43 += 2;
            }
          }

          v54 = 0;
          if (!v53)
          {
            goto LABEL_70;
          }

LABEL_69:
          sub_100004A34(v53);
          goto LABEL_70;
        }

LABEL_78:
        if (v47)
        {
          sub_100004A34(v47);
          sub_100004A34(v47);
        }

        buf.__r_.__value_.__r.__words[0] = &v178;
        v8 = v166;
        v57 = sub_1002D750C(a1 + 2560, &v178)[5];
        buf.__r_.__value_.__r.__words[0] = &v178;
        v58 = sub_1002D750C(a1 + 2560, &v178);
        sub_101231234(v57, v43, *(v58[5] + 8));
LABEL_81:
        (*(*v28 + 336))(v28, &v175, &v174, v171);
        v59 = *v168;
        if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v174;
          _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "#I Received concatenated message segment (index %d)", &buf, 8u);
        }

        for (n = 0; ; ++n)
        {
          buf.__r_.__value_.__r.__words[0] = &v178;
          v61 = sub_1002D750C(a1 + 2560, &v178);
          v62 = n;
          if (n >= ((*(v61[5] + 8) - *v61[5]) >> 4))
          {
            goto LABEL_100;
          }

          buf.__r_.__value_.__r.__words[0] = &v178;
          v63 = sub_1002D750C(a1 + 2560, &v178);
          if (*(*(*v63[5] + 16 * n) + 4) == v175)
          {
            buf.__r_.__value_.__r.__words[0] = &v178;
            sub_1002D750C(a1 + 2560, &v178);
            (*(*v28 + 256))(&v172, v28);
            CSIPhoneNumber::CSIPhoneNumber();
            v64 = CSIPhoneNumber::operator==();
            if (v193 < 0)
            {
              operator delete(v192[0]);
            }

            if (v191 < 0)
            {
              operator delete(v190);
            }

            if ((v189[23] & 0x80000000) != 0)
            {
              operator delete(*v189);
            }

            if (v187 < 0)
            {
              operator delete(v186[0]);
            }

            if (v185 < 0)
            {
              operator delete(buf.__r_.__value_.__l.__size_);
            }

            if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v172.__r_.__value_.__l.__data_);
            }

            if (v64)
            {
              break;
            }
          }
        }

        buf.__r_.__value_.__r.__words[0] = &v178;
        v65 = (*sub_1002D750C(a1 + 2560, &v178)[5] + 16 * n);
        v66 = *v65;
        v67 = v65[1];
        if (v67)
        {
          atomic_fetch_add_explicit(&v67->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v68 = v67;
        if (!v66)
        {
LABEL_100:
          operator new();
        }

        v70 = v174;
        if (v174 < v66[2])
        {
          v71 = *(v66 + 23) + 32 * v174;
          v72 = *(v71 + 23);
          if ((v72 & 0x80u) != 0)
          {
            v72 = *(v71 + 8);
          }

          if (v72 || *(v71 + 24) | *(v71 + 26))
          {
            v73 = *v168;
            if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
            {
              LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v70;
              v74 = "#I Warning: Received duplicate segment (index %d), ignoring";
              goto LABEL_115;
            }

            goto LABEL_117;
          }

          if (!v174)
          {
            v66[3] = (*(*v28 + 48))(v28);
            v66[4] = (*(*v28 + 64))(v28);
          }

          (*(*v28 + 192))(&v172, v28);
          v91 = (*(*v28 + 96))(v28);
          if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&buf, v172.__r_.__value_.__l.__data_, v172.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = v172;
          }

          v184 = v91;
          v101 = *(v66 + 23) + 32 * v174;
          if (*(v101 + 23) < 0)
          {
            operator delete(*v101);
          }

          v102 = *&buf.__r_.__value_.__l.__data_;
          *(v101 + 16) = *(&buf.__r_.__value_.__l + 2);
          *v101 = v102;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          *(v101 + 24) = v184;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v172.__r_.__value_.__l.__data_);
          }

          ++*v66;
          if ((*(*v28 + 248))(v28) != 2)
          {
            v66[52] = 0;
            goto LABEL_209;
          }

          v103 = Registry::getServiceMap(*(a1 + 80));
          v104 = v103;
          if ((v105 & 0x8000000000000000) != 0)
          {
            v106 = (v105 & 0x7FFFFFFFFFFFFFFFLL);
            v107 = 5381;
            do
            {
              v105 = v107;
              v108 = *v106++;
              v107 = (33 * v107) ^ v108;
            }

            while (v108);
          }

          std::mutex::lock(v103);
          buf.__r_.__value_.__r.__words[0] = v105;
          v109 = sub_100009510(&v104[1].__m_.__sig, &buf);
          if (v109)
          {
            v110 = v109[3];
            v111 = v109[4];
            if (v111)
            {
              atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v104);
              atomic_fetch_add_explicit(&v111->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v111);
              v112 = 0;
LABEL_207:
              v66[52] = (*(*v110 + 88))(v110);
              v8 = v166;
              if ((v112 & 1) == 0)
              {
                sub_100004A34(v111);
              }

LABEL_209:
              v131 = *v66;
              v132 = v66[2];
              v133 = *v168;
              v134 = os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT);
              if (v131 == v132)
              {
                if (v134)
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&_mh_execute_header, v133, OS_LOG_TYPE_DEFAULT, "#I All segments for this message have arrived, reassembling...", &buf, 2u);
                }

                memset(&v172, 0, sizeof(v172));
                v135 = v169;
                if (v66[2] >= 1)
                {
                  v136 = 0;
                  v137 = 0;
                  v138 = *(v66 + 23);
                  v139 = 23;
                  do
                  {
                    v140 = *v168;
                    if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                    {
                      v141 = *(v138 + v139);
                      if ((v141 & 0x8000000000000000) != 0)
                      {
                        v141 = *(v138 + v139 - 15);
                      }

                      LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
                      HIDWORD(buf.__r_.__value_.__r.__words[0]) = v136;
                      LOWORD(buf.__r_.__value_.__r.__words[1]) = 2048;
                      *(&buf.__r_.__value_.__r.__words[1] + 2) = v141;
                      _os_log_impl(&_mh_execute_header, v140, OS_LOG_TYPE_DEFAULT, "#I Adding Part %d : size: %ld", &buf, 0x12u);
                      v138 = *(v66 + 23);
                    }

                    v135 = v169;
                    if (v137)
                    {
                      v142 = *(v138 + v139 + 3);
                      if (*(v138 + v139 + 3))
                      {
                        v143 = *v168;
                        if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                        {
                          LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
                          HIDWORD(buf.__r_.__value_.__r.__words[0]) = v137;
                          LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
                          *(&buf.__r_.__value_.__r.__words[1] + 2) = v142;
                          _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I Appending boundary split surrogate (high: %x low: %x) to message body", &buf, 0xEu);
                        }

                        memset(&buf, 0, sizeof(buf));
                        ctu::hex(&buf, (v142 | (v137 << 16)), v144);
                        v135 = v169;
                        v179 = 0;
                        v180 = 0;
                        ctu::TextConverter::TextConverter(&v179);
                        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v145 = &buf;
                        }

                        else
                        {
                          v145 = buf.__r_.__value_.__r.__words[0];
                        }

                        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          size = buf.__r_.__value_.__l.__size_;
                        }

                        ctu::TextConverter::setSource(&v179, v145, size);
                        ctu::TextConverter::pushConversion();
                        ctu::TextConverter::pushConversion();
                        ctu::TextConverter::pushConversion();
                        ctu::TextConverter::readChars(&__dst, &v179, 0x7FFFFFFFuLL);
                        ctu::TextConverter::~TextConverter(&v179);
                        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(buf.__r_.__value_.__l.__data_);
                        }

                        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          p_dst = &__dst;
                        }

                        else
                        {
                          p_dst = __dst.__r_.__value_.__r.__words[0];
                        }

                        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                        {
                          v148 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
                        }

                        else
                        {
                          v148 = __dst.__r_.__value_.__l.__size_;
                        }

                        std::string::append(&v172, p_dst, v148);
                        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                        {
                          operator delete(__dst.__r_.__value_.__l.__data_);
                        }

                        v138 = *(v66 + 23);
                      }

                      v149 = *(v138 + v139);
                      if (v149 >= 0)
                      {
                        v150 = (v138 + v139 - 23);
                      }

                      else
                      {
                        v150 = *(v138 + v139 - 23);
                      }

                      if (v149 >= 0)
                      {
                        v151 = *(v138 + v139);
                      }

                      else
                      {
                        v151 = *(v138 + v139 - 15);
                      }
                    }

                    else
                    {
                      v152 = *(v138 + v139);
                      if (v152 >= 0)
                      {
                        v150 = (v138 + v139 - 23);
                      }

                      else
                      {
                        v150 = *(v138 + v139 - 23);
                      }

                      if (v152 >= 0)
                      {
                        v151 = *(v138 + v139);
                      }

                      else
                      {
                        v151 = *(v138 + v139 - 15);
                      }
                    }

                    std::string::append(&v172, v150, v151);
                    v138 = *(v66 + 23);
                    v137 = *(v138 + v139 + 1);
                    ++v136;
                    v139 += 32;
                  }

                  while (v136 < v66[2]);
                }

                v153 = *v168;
                if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                {
                  LOWORD(buf.__r_.__value_.__l.__data_) = 0;
                  _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEFAULT, "#I Concatenated message successfully reassembled", &buf, 2u);
                }

                v8 = v166;
                if ((*(*v28 + 200))(v28) == 4)
                {
                  v154 = 4;
                }

                else
                {
                  v154 = 8;
                }

                (*(*v28 + 136))(v28, &v172, v154);
                (*(*v28 + 56))(v28, v66[3]);
                (*(*v28 + 72))(v28, v66[4]);
                v155 = *v168;
                if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                {
                  (*(*v28 + 192))(&buf, v28);
                  v156 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
                  v157 = buf.__r_.__value_.__l.__size_;
                  v158 = (*(*v28 + 200))(v28);
                  v159 = (v156 & 0x80u) == 0 ? v156 : v157;
                  LODWORD(__dst.__r_.__value_.__l.__data_) = 134218240;
                  *(__dst.__r_.__value_.__r.__words + 4) = v159;
                  WORD2(__dst.__r_.__value_.__r.__words[1]) = 1024;
                  *(&__dst.__r_.__value_.__r.__words[1] + 6) = v158;
                  _os_log_impl(&_mh_execute_header, v155, OS_LOG_TYPE_DEFAULT, "#I Full Message Length: %lu (final encoding: %u)", &__dst, 0x12u);
                  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
                  {
                    operator delete(buf.__r_.__value_.__l.__data_);
                  }
                }

                (*(*v28 + 360))(v28);
                buf.__r_.__value_.__r.__words[0] = v28;
                buf.__r_.__value_.__l.__size_ = v166;
                if (v166)
                {
                  atomic_fetch_add_explicit(&v166->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                sub_1012312A8(v135, &buf);
                if (v166)
                {
                  sub_100004A34(v166);
                }

                __dst.__r_.__value_.__r.__words[0] = &v178;
                v160 = sub_1002D750C(v135 + 2560, &v178);
                if (v62 >= (*(v160[5] + 8) - *v160[5]) >> 4)
                {
                  v163 = *v168;
                  if (os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
                  {
                    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                    _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#I reassembleConcatenatedPdu - index to erase not within bounds of partial messages, leaving partials untouched", &__dst, 2u);
                  }
                }

                else
                {
                  __dst.__r_.__value_.__r.__words[0] = &v178;
                  v161 = sub_1002D750C(v135 + 2560, &v178)[5];
                  __dst.__r_.__value_.__r.__words[0] = &v178;
                  v162 = sub_1002D750C(v135 + 2560, &v178);
                  sub_101233798(v161, *v162[5] + 16 * v62);
                }

                if (SHIBYTE(v172.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(v172.__r_.__value_.__l.__data_);
                }

                goto LABEL_117;
              }

              if (!v134)
              {
LABEL_117:
                if (!v68)
                {
                  goto LABEL_202;
                }

                v77 = v68;
LABEL_201:
                sub_100004A34(v77);
LABEL_202:
                if (v8)
                {
                  sub_100004A34(v8);
                }

                return;
              }

              LODWORD(buf.__r_.__value_.__l.__data_) = 67109376;
              HIDWORD(buf.__r_.__value_.__r.__words[0]) = v131;
              LOWORD(buf.__r_.__value_.__r.__words[1]) = 1024;
              *(&buf.__r_.__value_.__r.__words[1] + 2) = v132;
              v74 = "#I Now have %d out of %d segments for this message";
              v75 = v133;
              v76 = 14;
LABEL_116:
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, v74, &buf, v76);
              goto LABEL_117;
            }
          }

          else
          {
            v110 = 0;
          }

          std::mutex::unlock(v104);
          v111 = 0;
          v112 = 1;
          goto LABEL_207;
        }

        v73 = *v168;
        if (!os_log_type_enabled(*v168, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_117;
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 67109120;
        HIDWORD(buf.__r_.__value_.__r.__words[0]) = v70;
        v74 = "#I Warning: Discarding out of bounds segment (index %d)";
LABEL_115:
        v75 = v73;
        v76 = 8;
        goto LABEL_116;
      }

      v43 += 2;
      if (v43 == v44)
      {
        v43 = v44;
        a1 = v169;
        goto LABEL_78;
      }
    }

    v50 = 0;
    if (!v49)
    {
      goto LABEL_56;
    }

LABEL_55:
    sub_100004A34(v49);
    goto LABEL_56;
  }

  v27 = a2[1];
  v170[0] = v5;
  v170[1] = v27;
  if (v27)
  {
    atomic_fetch_add_explicit(v27 + 1, 1uLL, memory_order_relaxed);
  }

  sub_1012312A8(a1, v170);
  if (v27)
  {

    sub_100004A34(v27);
  }
}

void sub_10123A7CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, void *a20, int a21, __int16 a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, void *a52, void *a53, int a54, __int16 a55, char a56, char a57, int a58, __int16 a59, char a60, char a61)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v61)
  {
    sub_100004A34(v61);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10123AABC(uint64_t a1, uint64_t a2, int a3)
{
  if (subscriber::isValidSimSlot())
  {
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
    if (a3)
    {
      if (!v7)
      {
        return;
      }

      v11 = 0;
      v8 = "#I SMS Driver is ready";
      v9 = &v11;
    }

    else
    {
      if (!v7)
      {
        return;
      }

      v10 = 0;
      v8 = "#I SMS Driver is not ready";
      v9 = &v10;
    }

    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v8, v9, 2u);
  }
}

BOOL sub_10123AB8C(uint64_t a1)
{
  v6 = a1;
  if (*(a1 + 32))
  {
    if (dispatch_workloop_is_current())
    {
      return *(a1 + 2728) != 0.0;
    }

    v3 = *(a1 + 32) == 0;
  }

  else
  {
    v3 = 1;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_101257DA4;
  v7[3] = &unk_101F1F8A0;
  v7[4] = a1 + 8;
  v7[5] = &v6;
  v8 = v7;
  v4 = *(a1 + 24);
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  if (v3)
  {
    v10 = sub_1000593F4;
    v11 = &unk_101F1DB80;
    v12 = &v14;
    v13 = &v8;
    dispatch_sync(v4, block);
  }

  else
  {
    v10 = sub_10006A350;
    v11 = &unk_101F1DBA0;
    v12 = &v14;
    v13 = &v8;
    dispatch_async_and_wait(v4, block);
  }

  return v14;
}

void sub_10123ACFC(uint64_t a1, void *a2)
{
  if (*(a1 + 248) == a2[2])
  {
    v3 = *(a1 + 232);
    if (v3 == (a1 + 240))
    {
      return;
    }

    v4 = *a2;
    while (1)
    {
      v5 = *(v3 + 7) == *(v4 + 7) && *(v3 + 8) == *(v4 + 8);
      if (!v5)
      {
        break;
      }

      v6 = v3[1];
      v7 = v3;
      if (v6)
      {
        do
        {
          v3 = v6;
          v6 = *v6;
        }

        while (v6);
      }

      else
      {
        do
        {
          v3 = v7[2];
          v5 = *v3 == v7;
          v7 = v3;
        }

        while (!v5);
      }

      v8 = v4[1];
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
          v9 = v4[2];
          v5 = *v9 == v4;
          v4 = v9;
        }

        while (!v5);
      }

      v4 = v9;
      if (v3 == (a1 + 240))
      {
        return;
      }
    }
  }

  subscriber::makeSimSlotRange();
  v10 = v12;
  if (v12 != v13)
  {
    do
    {
      if (v14(*v10))
      {
        break;
      }

      ++v10;
    }

    while (v10 != v13);
    while (v10 != v13)
    {
      v11 = *v10++;
      sub_10123AE44(a1, v11);
      while (v10 != v13 && (v14(*v10) & 1) == 0)
      {
        ++v10;
      }
    }
  }
}

void sub_10123AE44(uint64_t a1, unsigned int a2)
{
  v46 = a2;
  if (!subscriber::isValidSimSlot())
  {
    return;
  }

  *v51 = &v46;
  v3 = *(sub_1002D750C(a1 + 2560, &v46)[5] + 244);
  v4 = (*(**(a1 + 48) + 16))(*(a1 + 48), v46);
  *v51 = &v46;
  if (*(sub_1002D750C(a1 + 2560, &v46)[5] + 42) == 1 && (sub_10123BB40(a1, v46) & 1) == 0)
  {
    v20 = v46;
    v21 = *(a1 + 80);
    theDict = 0;
    v47 = 0;
    ServiceMap = Registry::getServiceMap(v21);
    v23 = ServiceMap;
    if (v24 < 0)
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

    std::mutex::lock(ServiceMap);
    *v51 = v24;
    v28 = sub_100009510(&v23[1].__m_.__sig, v51);
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
        v32 = 0;
        if (!v30)
        {
          goto LABEL_26;
        }

        goto LABEL_24;
      }
    }

    else
    {
      v30 = 0;
    }

    std::mutex::unlock(v23);
    v29 = 0;
    v32 = 1;
    if (!v30)
    {
LABEL_26:
      if ((v32 & 1) == 0)
      {
        sub_100004A34(v29);
      }

      sub_10001021C(&theDict);
      if (v47)
      {
        theDict = CFDictionaryGetValue(v47, @"PacketFormat");
        sub_1002AF4F0(v51, &theDict);
        if (*v51)
        {
          LODWORD(Value) = 0;
          ctu::cf::assign(&Value, *v51, v35);
          if ((Value - 1) >= 2)
          {
            v5 = 0;
          }

          else
          {
            v5 = Value;
          }
        }

        else
        {
          v5 = 1;
        }

        sub_100029A48(v51);
      }

      else
      {
        v5 = 1;
      }

      sub_10001021C(&v47);
      *v51 = &v46;
      v36 = sub_1002D750C(a1 + 2560, &v46);
      goto LABEL_52;
    }

LABEL_24:
    SMSCarrierBundleString = sms::Model::getSMSCarrierBundleString(v31);
    (*(*v30 + 96))(&v48, v30, v20, 1, SMSCarrierBundleString, 0, 0);
    sub_100010180(&Value, &v48);
    v34 = theDict;
    theDict = Value;
    *v51 = v34;
    Value = 0;
    sub_10001021C(v51);
    sub_10001021C(&Value);
    sub_10000A1EC(&v48);
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"MessageFormat");
      *v51 = 0;
      sub_100010180(v51, &Value);
      v47 = *v51;
      *v51 = 0;
      sub_10001021C(v51);
    }

    goto LABEL_26;
  }

  *v51 = &v46;
  if ((*(sub_1002D750C(a1 + 2560, &v46)[5] + 240) & 8) != 0)
  {
    *v51 = &v46;
    v19 = sub_1002D750C(a1 + 2560, &v46) + 5;
    v5 = 2;
  }

  else
  {
    *v51 = &v46;
    if ((*(sub_1002D750C(a1 + 2560, &v46)[5] + 240) & 4) == 0)
    {
      *v51 = &v46;
      if ((*(sub_1002D750C(a1 + 2560, &v46)[5] + 240) & 0xE0) == 0)
      {
        *v51 = &v46;
        v36 = sub_1002D750C(a1 + 2560, &v46);
        v5 = 0;
LABEL_52:
        v19 = v36 + 5;
        goto LABEL_53;
      }

      v5 = sub_101235500(*(a1 + 80), v46, 1);
      v6 = v46;
      v7 = *(a1 + 80);
      theDict = 0;
      v8 = Registry::getServiceMap(v7);
      v9 = v8;
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

      std::mutex::lock(v8);
      *v51 = v10;
      v14 = sub_100009510(&v9[1].__m_.__sig, v51);
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
          v18 = 0;
          goto LABEL_40;
        }
      }

      else
      {
        v16 = 0;
      }

      std::mutex::unlock(v9);
      v15 = 0;
      v18 = 1;
LABEL_40:
      if (v16)
      {
        v37 = sms::Model::getSMSCarrierBundleString(v17);
        (*(*v16 + 80))(&v48, v16, v6, 2, v37, 0, 0);
        sub_100010180(&Value, &v48);
        v38 = theDict;
        theDict = Value;
        *v51 = v38;
        Value = 0;
        sub_10001021C(v51);
        sub_10001021C(&Value);
        sub_10000A1EC(&v48);
        if (theDict)
        {
          *v51 = 0;
          Value = CFDictionaryGetValue(theDict, @"MessageFormat");
          sub_100010180(v51, &Value);
          if (*v51)
          {
            v48 = CFDictionaryGetValue(*v51, @"CSFBFormat");
            sub_1002AF4F0(&Value, &v48);
            if (Value)
            {
              LODWORD(v47) = 0;
              ctu::cf::assign(&v47, Value, v39);
              if ((v47 - 1) >= 2)
              {
                v5 = 0;
              }

              else
              {
                v5 = v47;
              }
            }

            sub_100029A48(&Value);
          }

          sub_10001021C(v51);
        }
      }

      if ((v18 & 1) == 0)
      {
        sub_100004A34(v15);
      }

      sub_10001021C(&theDict);
      *v51 = &v46;
      v36 = sub_1002D750C(a1 + 2560, &v46);
      goto LABEL_52;
    }

    *v51 = &v46;
    v19 = sub_1002D750C(a1 + 2560, &v46) + 5;
    v5 = 1;
  }

LABEL_53:
  *(*v19 + 244) = v5;
  *v51 = &v46;
  if (v3 != *(sub_1002D750C(a1 + 2560, &v46)[5] + 244))
  {
    v40 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
    {
      *v51 = &v46;
      sub_1002D750C(a1 + 2560, &v46);
      v41 = sms::asString();
      *v51 = 136315138;
      *&v51[4] = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I Using %s Encoder", v51, 0xCu);
    }

    (*(**(a1 + 2544) + 136))(*(a1 + 2544));
    sub_10123BFE4(a1, v46);
  }

  if (!v3)
  {
    *v51 = &v46;
    if (*(sub_1002D750C(a1 + 2560, &v46)[5] + 244))
    {
      v42 = *v4;
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *v51 = &v46;
        sub_1002D750C(a1 + 2560, &v46);
        v43 = sms::asString();
        *v51 = 136315138;
        *&v51[4] = v43;
        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEFAULT, "#I Now have valid encoder %s, sending pending messages", v51, 0xCu);
      }

      *v51 = &v46;
      v44 = sub_1002D750C(a1 + 2560, &v46)[5];
      v45 = *(v44 + 320);
      *(v44 + 320) = 0;
      if (v45)
      {
        (*(*v45 + 8))(v45);
      }

      sub_10122EA90(a1, v46);
    }
  }
}

void sub_10123B670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v10 = va_arg(va2, const void *);
  sub_100029A48(va);
  sub_10001021C(va2);
  if ((v6 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_10123B748(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0 && *(a1 + 200) == 1)
  {
    v3 = *(a1 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Purging MO messages due to airplane mode", v4, 2u);
    }

    sub_10123032C(a1, 1);
  }
}

void sub_10123B7CC(uint64_t a1)
{
  subscriber::makeSimSlotRange();
  v2 = v4;
  if (v4 != v5)
  {
    do
    {
      if (v6(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v5);
    while (v2 != v5)
    {
      v3 = *v2++;
      sub_10123AE44(a1, v3);
      while (v2 != v5 && (v6(*v2) & 1) == 0)
      {
        ++v2;
      }
    }
  }
}

void sub_10123B870(uint64_t a1, uint64_t a2)
{
  subscriber::makeSimSlotRange();
  v4 = v24;
  v5 = v25;
  if (v24 != v25)
  {
    v6 = v26;
    do
    {
      if (v26(*v4))
      {
        break;
      }

      ++v4;
    }

    while (v4 != v25);
    v7 = v25;
    if (v4 != v25)
    {
      v8 = (a2 + 8);
      while (1)
      {
        v23 = *v4;
        v9 = (*(**(a1 + 48) + 16))(*(a1 + 48));
        v21 = 0;
        v22[0] = 0;
        v22[1] = 0;
        sub_101257DBC(&v21, a1 + 432);
        v10 = v22[0];
        if (!v22[0])
        {
          goto LABEL_27;
        }

        v11 = v23;
        v12 = v22;
        v13 = v22[0];
        do
        {
          if (*(v13 + 8) >= v23)
          {
            v12 = v13;
          }

          v13 = v13[*(v13 + 8) < v23];
        }

        while (v13);
        if (v12 == v22 || v23 < *(v12 + 8))
        {
          goto LABEL_27;
        }

        if (!*v8)
        {
          goto LABEL_23;
        }

        v14 = (a2 + 8);
        v15 = *v8;
        do
        {
          if (*(v15 + 8) >= v23)
          {
            v14 = v15;
          }

          v15 = v15[*(v15 + 8) < v23];
        }

        while (v15);
        if (v14 == v8 || v23 < *(v14 + 8))
        {
          goto LABEL_23;
        }

        sub_10000BA08(*v8, v23);
        sub_10000BA08(v22[0], v23);
        if (rest::operator!=())
        {
          break;
        }

LABEL_27:
        sub_100170380(&v21, v22[0]);
        do
        {
          ++v4;
        }

        while (v4 != v5 && (v6(*v4) & 1) == 0);
        if (v4 == v7)
        {
          return;
        }
      }

      v10 = v22[0];
      v11 = v23;
LABEL_23:
      v16 = sub_10000BA08(v10, v11);
      *buf = &v23;
      v17 = sub_1002D750C(a1 + 2560, &v23);
      std::string::operator=((v17[5] + 48), v16);
      v18 = *v9;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v27 = &v23;
        v19 = sub_1002D750C(a1 + 2560, &v23)[5];
        v20 = (v19 + 48);
        if (*(v19 + 71) < 0)
        {
          v20 = *v20;
        }

        *buf = 136315138;
        *&buf[4] = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Phone number updated:%s", buf, 0xCu);
      }

      goto LABEL_27;
    }
  }
}