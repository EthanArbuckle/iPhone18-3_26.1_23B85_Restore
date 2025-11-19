uint64_t sub_1002F6398(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t *a4, __int128 *a5)
{
  v9 = *a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a4[1];
  v13 = *a4;
  v14 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *a5;
  *a5 = 0;
  *(a5 + 1) = 0;
  sub_100A77C0C(a1, a2, &object, &v13, &v12);
  if (*(&v12 + 1))
  {
    sub_100004A34(*(&v12 + 1));
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F644C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  sub_10176AD50(v10 + 8);
  _Unwind_Resume(a1);
}

void *sub_1002F64FC(void *a1, NSObject **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F0D0;
  sub_1002F65F4(a1 + 3, a2, a3);
  return a1;
}

void sub_1002F6578(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F0D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1002F65F4(void *a1, NSObject **a2, void *a3)
{
  v5 = *a2;
  object = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  sub_1000CED4C(a1, &object, a3);
  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_1002F6650(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002F66D4(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3F120;
  sub_10099B79C(a1 + 3);
  return a1;
}

void sub_1002F6750(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3F120;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1002F67CC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1002F6864(uint64_t a1)
{
  *a1 = off_101E3F170;
  sub_1002F31C8(a1 + 80);
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

void sub_1002F68D8(uint64_t a1)
{
  *a1 = off_101E3F170;
  sub_1002F31C8(a1 + 80);
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

  operator delete();
}

void sub_1002F6A10(uint64_t a1)
{
  sub_1002F31C8(a1 + 80);
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
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

void sub_1002F6A80(uint64_t a1)
{
  sub_1002F31C8(a1 + 80);
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

  operator delete(a1);
}

void sub_1002F6AEC(uint64_t a1, _BYTE *a2)
{
  v3 = *a2;
  if (v3 <= 1)
  {
    if (!*a2)
    {
LABEL_11:
      if (*(a1 + 31) < 0)
      {
        sub_100005F2C(&__dst, *(a1 + 8), *(a1 + 16));
      }

      else
      {
        __dst = *(a1 + 8);
        v14 = *(a1 + 24);
      }

      if (*(a1 + 55) < 0)
      {
        sub_100005F2C(&v15, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        v15 = *(a1 + 32);
        v16[0] = *(a1 + 48);
      }

      sub_10011C9B0(&v11, &__dst, 2);
      v5 = *(a1 + 104);
      if (!v5)
      {
        sub_100022DB4();
      }

      (*(*v5 + 48))(v5, &v11);
      sub_100009970(&v11, v12);
      for (i = 0; i != -6; i -= 3)
      {
        if (SHIBYTE(v16[i]) < 0)
        {
          operator delete(v16[i - 2]);
        }
      }

      return;
    }

    if (v3 == 1)
    {
      if (*(a1 + 55) < 0)
      {
        sub_100005F2C(&__dst, *(a1 + 32), *(a1 + 40));
      }

      else
      {
        __dst = *(a1 + 32);
        v14 = *(a1 + 48);
      }

      if (*(a1 + 79) < 0)
      {
        sub_100005F2C(&v15, *(a1 + 56), *(a1 + 64));
      }

      else
      {
        v15 = *(a1 + 56);
        v16[0] = *(a1 + 72);
      }

      sub_10011C9B0(&v11, &__dst, 2);
      v9 = *(a1 + 104);
      if (!v9)
      {
        sub_100022DB4();
      }

      (*(*v9 + 48))(v9, &v11);
      sub_100009970(&v11, v12);
      for (j = 0; j != -6; j -= 3)
      {
        if (SHIBYTE(v16[j]) < 0)
        {
          operator delete(v16[j - 2]);
        }
      }
    }
  }

  else
  {
    if (v3 != 2)
    {
      if (v3 != 3)
      {
        if (v3 != 4)
        {
          return;
        }

        CellularPlanSettingsDeviceLog = sGetCellularPlanSettingsDeviceLog();
        if (os_log_type_enabled(*CellularPlanSettingsDeviceLog, OS_LOG_TYPE_ERROR))
        {
          sub_10176AE18();
        }
      }

      goto LABEL_11;
    }

    if (*(a1 + 31) < 0)
    {
      sub_100005F2C(&__dst, *(a1 + 8), *(a1 + 16));
    }

    else
    {
      __dst = *(a1 + 8);
      v14 = *(a1 + 24);
    }

    if (*(a1 + 79) < 0)
    {
      sub_100005F2C(&v15, *(a1 + 56), *(a1 + 64));
    }

    else
    {
      v15 = *(a1 + 56);
      v16[0] = *(a1 + 72);
    }

    sub_10011C9B0(&v11, &__dst, 2);
    v7 = *(a1 + 104);
    if (!v7)
    {
      sub_100022DB4();
    }

    (*(*v7 + 48))(v7, &v11);
    sub_100009970(&v11, v12);
    for (k = 0; k != -6; k -= 3)
    {
      if (SHIBYTE(v16[k]) < 0)
      {
        operator delete(v16[k - 2]);
      }
    }
  }
}

void sub_1002F6E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002F6F30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002F6F7C(uint64_t a1, uint64_t a2)
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

char *sub_1002F6FFC(char *__dst, __int128 *a2)
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

  sub_1002F67CC((__dst + 72), a2 + 72);
  return __dst;
}

void sub_1002F70A8(_Unwind_Exception *exception_object)
{
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

uint64_t sub_1002F7114(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sCopyCellularDataSettings(Registry **a1@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  ServiceMap = Registry::getServiceMap(*a1);
  v5 = ServiceMap;
  v7 = v6;
  if (v6 < 0)
  {
    v8 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
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
  v27 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, &v27);
  if (v11)
  {
    v13 = v11[3];
    v12 = v11[4];
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
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

  std::mutex::unlock(v5);
  v12 = 0;
  v14 = 1;
LABEL_9:
  (*(*v13 + 80))(&v26, v13, 1, 1, @"EsimCellularDataPlanSettings", 0, 0);
  sub_100010180(a2, &v26);
  sub_10000A1EC(&v26);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!*a2)
  {
    v15 = Registry::getServiceMap(*a1);
    v16 = v15;
    if (v6 < 0)
    {
      v17 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
      v18 = 5381;
      do
      {
        v6 = v18;
        v19 = *v17++;
        v18 = (33 * v18) ^ v19;
      }

      while (v19);
    }

    std::mutex::lock(v15);
    v27 = v6;
    v20 = sub_100009510(&v16[1].__m_.__sig, &v27);
    if (v20)
    {
      v22 = v20[3];
      v21 = v20[4];
      if (v21)
      {
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v21);
        v23 = 0;
LABEL_20:
        (*(*v22 + 80))(&v25, v22, 1, 1, @"CellularDataPlanSettings", 0, 0);
        sub_100010180(&v26, &v25);
        if (&v26 != a2)
        {
          v24 = *a2;
          *a2 = v26;
          v26 = 0;
          v27 = v24;
          sub_10001021C(&v27);
        }

        sub_10001021C(&v26);
        sub_10000A1EC(&v25);
        if ((v23 & 1) == 0)
        {
          sub_100004A34(v21);
        }

        return;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v16);
    v21 = 0;
    v23 = 1;
    goto LABEL_20;
  }
}

void sub_1002F73B8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  sub_10001021C(v2);
  _Unwind_Resume(a1);
}

uint64_t sIsNotSubscribedError(CFDictionaryRef *a1, int a2)
{
  valuePtr = a2;
  if (a2 == 1)
  {
    return 1;
  }

  Value = CFDictionaryGetValue(*a1, @"CellularDataPlanNotSubscribedErrors");
  if (!Value)
  {
    return a2 == 65;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFArrayGetTypeID())
  {
    return a2 == 65;
  }

  v8 = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &valuePtr);
  v10.length = CFArrayGetCount(v5);
  v10.location = 0;
  v2 = CFArrayGetCountOfValue(v5, v10, v8) > 0;
  sub_100029A48(&v8);
  return v2;
}

void sSendCSIObserverEvent(uint64_t a1, uint64_t a2, uint64_t a3, Registry **a4)
{
  ServiceMap = Registry::getServiceMap(*a4);
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
  v17 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v17);
  if (!v13)
  {
    v15 = 0;
LABEL_9:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
LABEL_10:
    (*(*v15 + 40))(v15, a1, a2, a3);
  }

LABEL_11:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1002F7628(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataPlanManagerBootstrap::DataPlanManagerBootstrap(uint64_t a1, uint64_t a2, NSObject **a3, void *a4)
{
  *a1 = off_101E89490;
  *(a1 + 8) = &off_101E39D80;
  *(a1 + 16) = off_101E66FE8;
  ctu::OsLogContext::OsLogContext(&v23, kCtLoggingSystemName, "cdp");
  sub_1001303E4((a1 + 32), a3, &v23);
  ctu::OsLogContext::~OsLogContext(&v23);
  *a1 = off_101E3F228;
  *(a1 + 8) = &off_101E3F3E8;
  *(a1 + 16) = off_101E3F4B0;
  *(a1 + 24) = off_101E3F550;
  *(a1 + 72) = *a2;
  v8 = *(a2 + 8);
  *(a1 + 80) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 88) = *a4;
  v9 = a4[1];
  *(a1 + 96) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "DataPlanManagerBootstrap");
  v10 = *a3;
  v20 = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v19[1] = 0;
  ctu::RestModule::RestModule();
  if (v20)
  {
    dispatch_release(v20);
  }

  if (v22 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 216) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 1;
  *(a1 + 256) = 0;
  *(a1 + 248) = a1 + 256;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 232) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 504) = 0;
  *(a1 + 512) = 0;
  *(a1 + 496) = a1 + 504;
  MCCAndMNC::MCCAndMNC((a1 + 520));
  *(a1 + 592) = 0;
  *(a1 + 600) = 0;
  v11 = *a4;
  v12 = *(a2 + 8);
  v23.var0 = *a2;
  v23.var1.fRef = v12;
  if (v12)
  {
    atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
  }

  v13 = *a3;
  v19[0] = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  (*(*v11 + 16))(v11, &v23, v19);
  if (v19[0])
  {
    dispatch_release(v19[0]);
  }

  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  v14 = *a4;
  v15 = *(a2 + 8);
  v23.var0 = *a2;
  v23.var1.fRef = v15;
  if (v15)
  {
    atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 24))(v14, &v23);
  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  *(a1 + 688) = 0;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 640) = 0u;
  Registry::getNotificationSenderFactory(&v23, *(a1 + 72));
  (*(*v23.var0 + 88))(v23.var0);
  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  sub_10010674C((a1 + 712));
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 720) = 0u;
  v16 = *a4;
  v17 = *(a2 + 8);
  v23.var0 = *a2;
  v23.var1.fRef = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(v17 + 1, 1uLL, memory_order_relaxed);
  }

  (*(*v16 + 32))(v16, &v23);
  if (v23.var1.fRef)
  {
    sub_100004A34(v23.var1.fRef);
  }

  *(a1 + 784) = 0u;
  return a1;
}

void sub_1002F7A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, dispatch_object_t a12, dispatch_object_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100004A34(a21);
  }

  if (*(v21 + 767) < 0)
  {
    operator delete(*(v21 + 744));
  }

  if (*(v21 + 743) < 0)
  {
    operator delete(*v26);
  }

  v28 = *(v21 + 704);
  if (v28)
  {
    sub_100004A34(v28);
  }

  v29 = *(v21 + 680);
  if (v29)
  {
    sub_100004A34(v29);
  }

  v30 = *(v21 + 664);
  if (v30)
  {
    sub_100004A34(v30);
  }

  v31 = *(v21 + 648);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v21 + 632);
  if (v32)
  {
    sub_100004A34(v32);
  }

  v33 = *(v21 + 616);
  if (v33)
  {
    sub_100004A34(v33);
  }

  sub_1002FECBC(v24 + 304);
  sub_10006DCAC(v24 + 280, *(v21 + 504));
  if (*(v21 + 488) == 1)
  {
    sub_100E3A5D4(v25);
  }

  sub_10006DCAC(v22, *(v21 + 256));
  a20 = v24;
  sub_1000B2AF8(&a20);
  sub_1002FED00(v24 - 48);
  sub_1002FED80(v24 - 96);
  v34 = *(v21 + 112);
  if (v34)
  {
    sub_100004A34(v34);
  }

  v35 = *(v21 + 96);
  if (v35)
  {
    sub_100004A34(v35);
  }

  v36 = *(v21 + 80);
  if (v36)
  {
    sub_100004A34(v36);
  }

  ctu::OsLogLogger::~OsLogLogger((v21 + 64));
  sub_1000C0544((v21 + 32));
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v23);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1002F7C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  ctu::OsLogContext::~OsLogContext(va);
  JUMPOUT(0x1002F7BECLL);
}

void DataPlanManagerBootstrap::connectEvents_sync(Registry **this)
{
  Registry::createRestModuleOneTimeUseConnection(&v6, this[9]);
  ctu::RestModule::connect();
  v2 = v7;
  if (v7)
  {
    sub_100004A34(v7);
  }

  if (capabilities::ct::supportsVoiceCall(v2))
  {
    sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
    v9 = off_101E3F718;
    v10 = this;
    v11 = &v9;
    ctu::RestModule::getPropertyOnce();
    sub_1000062D4(&v9);
    if (v5 < 0)
    {
      operator delete(__p);
    }

    sub_1002F86E0(this + 15, (this + 13));
    sub_1002F8744((this + 34));
    sub_100004AA0(&v9, this + 4);
    v3 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 2, 1uLL, memory_order_relaxed);
      sub_100004A34(v3);
    }

    sub_10000501C(&v8, "/cc/events/dump_state");
    operator new();
  }

  v9 = DataPlanManagerBootstrap::handlePSNetworkReject_sync;
  v10 = 0;
  sub_1002FF5E8();
}

void sub_1002F80A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  sub_1000062D4(v25 - 72);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t DataPlanManagerBootstrap::serviceShouldShutdown_sync(DataPlanManagerBootstrap *this, group_session a2)
{
  ctu::RestModule::disconnect((this + 104));
  v3 = *(this + 80);
  if (v3)
  {
    (*(*v3 + 768))(v3);
  }

  v4 = *(this + 82);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  result = *(this + 84);
  if (result)
  {
    v6 = *(*result + 24);

    return v6();
  }

  return result;
}

void DataPlanManagerBootstrap::handlePSNetworkReject_sync(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
    v14 = *(a1 + 64);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Missing subscriber utility", buf, 2u);
    }

    goto LABEL_34;
  }

LABEL_11:
  v15 = *(a1 + 504);
  if (v15)
  {
    v16 = a1 + 504;
    do
    {
      if (*(v15 + 28) >= 1)
      {
        v16 = v15;
      }

      v15 = *(v15 + 8 * (*(v15 + 28) < 1));
    }

    while (v15);
    if (v16 != a1 + 504 && *(v16 + 28) < 2)
    {
      v19 = *(a2 + 8);
      v18 = a2 + 8;
      v17 = v19;
      if (!v19)
      {
        goto LABEL_27;
      }

      v20 = v18;
      do
      {
        if (*(v17 + 28) >= 1)
        {
          v20 = v17;
        }

        v17 = *(v17 + 8 * (*(v17 + 28) < 1));
      }

      while (v17);
      if (v20 == v18 || *(v20 + 28) > 1 || *(v20 + 32) != *(v16 + 32) || *(v20 + 36) != *(v16 + 36))
      {
LABEL_27:
        v21 = *(a1 + 64);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          v22 = *(v16 + 32);
          v23 = *(v16 + 36);
          *buf = 67109376;
          *&buf[4] = v22;
          LOWORD(v28) = 1024;
          *(&v28 + 2) = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I rejectCauseCode[%d], inputRAT[%d]", buf, 0xEu);
        }

        MCCAndMNC::getMcc(buf, (a1 + 520));
        v24 = MCC::valid(buf);
        v25 = v24;
        if (v29 < 0)
        {
          operator delete(v28);
          if (v25)
          {
LABEL_31:
            MCCAndMNC::getMcc(buf, (a1 + 520));
            MCC::getStringValue(__p, buf);
            __p[6] = 0;
            operator new();
          }
        }

        else if (v24)
        {
          goto LABEL_31;
        }

        DataPlanManagerBootstrap::processPSNetworkReject_sync(a1, *(v16 + 32), *(v16 + 36));
      }
    }
  }

LABEL_34:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }
}

void sub_1002F8588(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  sub_10001C200(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  _Unwind_Resume(a1);
}

void sub_1002F8600(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/last_visible_plmns");
  v4[0] = off_101E3F8A8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002F86B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002F86E0(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1002FFEDC(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void sub_1002F8744(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/vinyl_info");
  v4[0] = off_101E3F9B8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002F87F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1002F8824(int a1, dispatch_object_t object, __int128 *a3)
{
  objecta = object;
  v4 = *a3;
  v5 = *(a3 + 2);
  dispatch_retain(object);
  sub_100300BC8(v6, &objecta);
}

void sub_1002F88B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  sub_1008F153C(&a13);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::handleCambioMode_sync(DataPlanManagerBootstrap *this, int a2)
{
  if ((capabilities::ct::supportsPCOForCambioTrigger(this) & 1) == 0)
  {
    v4 = *(this + 8);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (a2)
    {
      if (v5)
      {
        LOWORD(v34[0]) = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current provisioning mode is true, disabling it before OTASP", v34, 2u);
      }

      ServiceMap = Registry::getServiceMap(*(this + 9));
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
      v34[0] = v8;
      v12 = sub_100009510(&v7[1].__m_.__sig, v34);
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
LABEL_21:
          (*(*v14 + 328))(v14, 0);
          goto LABEL_35;
        }
      }

      else
      {
        v14 = 0;
      }

      std::mutex::unlock(v7);
      v13 = 0;
      v15 = 1;
      goto LABEL_21;
    }

    if (v5)
    {
      LOWORD(v34[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current provisioning mode is false, performing OTASP", v34, 2u);
    }

    v16 = Registry::getServiceMap(*(this + 9));
    v17 = v16;
    v19 = v18;
    if ((v18 & 0x8000000000000000) != 0)
    {
      v20 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(v16);
    v34[0] = v19;
    v23 = sub_100009510(&v17[1].__m_.__sig, v34);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v17);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        goto LABEL_24;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v17);
    v24 = 0;
    v26 = 1;
LABEL_24:
    (*(*v25 + 32))(v25);
    if ((v26 & 1) == 0)
    {
      sub_100004A34(v24);
    }

    v27 = Registry::getServiceMap(*(this + 9));
    v28 = v27;
    if ((v18 & 0x8000000000000000) != 0)
    {
      v29 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v30 = 5381;
      do
      {
        v18 = v30;
        v31 = *v29++;
        v30 = (33 * v30) ^ v31;
      }

      while (v31);
    }

    std::mutex::lock(v27);
    v34[0] = v18;
    v32 = sub_100009510(&v28[1].__m_.__sig, v34);
    if (v32)
    {
      v33 = v32[3];
      v13 = v32[4];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v13);
        v15 = 0;
LABEL_34:
        (*(*v33 + 96))(v33, 0);
LABEL_35:
        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        return;
      }
    }

    else
    {
      v33 = 0;
    }

    std::mutex::unlock(v28);
    v13 = 0;
    v15 = 1;
    goto LABEL_34;
  }
}

void sub_1002F8BF0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002F8C24(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/reg_ps_attached");
  v4[0] = off_101E3FBF8;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_1002F8CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::handleSelectedSimChanged_sync(uint64_t a1, int a2)
{
  if (a2 == 2 && *(a1 + 208) != 2)
  {
    v3 = *(a1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Selected profile changed from sid 2", v14, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
    v15 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v15);
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
        goto LABEL_13;
      }
    }

    else
    {
      v12 = 0;
    }

    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
LABEL_13:
    (*(*v12 + 40))(v12);
    if ((v13 & 1) == 0)
    {
      sub_100004A34(v11);
    }
  }
}

void sub_1002F8E58(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::~DataPlanManagerBootstrap(DataPlanManagerBootstrap *this)
{
  *this = off_101E3F228;
  *(this + 1) = &off_101E3F3E8;
  *(this + 2) = off_101E3F4B0;
  v2 = (this + 24);
  *(this + 3) = off_101E3F550;
  v3 = *(this + 99);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 97);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(this + 767) < 0)
  {
    operator delete(*(this + 93));
  }

  if (*(this + 743) < 0)
  {
    operator delete(*(this + 90));
  }

  v5 = *(this + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 85);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 83);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(this + 81);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(this + 79);
  if (v9)
  {
    sub_100004A34(v9);
  }

  v10 = *(this + 77);
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1002FECBC(this + 520);
  sub_10006DCAC(this + 496, *(this + 63));
  if (*(this + 488) == 1)
  {
    sub_100E3A5D4(this + 272);
  }

  sub_10006DCAC(this + 248, *(this + 32));
  v14 = (this + 216);
  sub_1000B2AF8(&v14);
  sub_1002FED00(this + 168);
  sub_1002FED80(this + 120);
  v11 = *(this + 14);
  if (v11)
  {
    sub_100004A34(v11);
  }

  v12 = *(this + 12);
  if (v12)
  {
    sub_100004A34(v12);
  }

  v13 = *(this + 10);
  if (v13)
  {
    sub_100004A34(v13);
  }

  ctu::OsLogLogger::~OsLogLogger((this + 64));
  sub_1000C0544(this + 4);
  CellularPlanProvisioningMonitorModeDelegate::~CellularPlanProvisioningMonitorModeDelegate(v2);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap(this);

  operator delete();
}

void non-virtual thunk toDataPlanManagerBootstrap::~DataPlanManagerBootstrap(DataPlanManagerBootstrap *this)
{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 8));
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 16));
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 24));
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 8));

  operator delete();
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 16));

  operator delete();
}

{
  DataPlanManagerBootstrap::~DataPlanManagerBootstrap((this - 24));

  operator delete();
}

std::__shared_weak_count *DataPlanManagerBootstrap::instance_if_created@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  result = qword_101FCB728;
  if (qword_101FCB728)
  {
    result = std::__shared_weak_count::lock(qword_101FCB728);
    a1[1] = result;
    if (result)
    {
      *a1 = DataPlanManagerBootstrap::sInstance;
    }
  }

  return result;
}

void DataPlanManagerBootstrap::sCreate(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    sub_100301B04();
  }

  sub_10176AE4C();
}

void sub_1002F9674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_object_t object, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, std::__shared_weak_count *a29, uint64_t a30, uint64_t a31)
{
  __cxa_free_exception(v33);
  if (a27)
  {
    sub_100004A34(a27);
  }

  if (a29)
  {
    sub_100004A34(a29);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    sub_100004A34(v36);
  }

  v37 = *(v34 - 88);
  if (v37)
  {
    sub_100004A34(v37);
    if (!v31)
    {
LABEL_9:
      if (!v32)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else if (!v31)
  {
    goto LABEL_9;
  }

  sub_100004A34(v31);
  if (!v32)
  {
LABEL_11:
    _Unwind_Resume(a1);
  }

LABEL_10:
  sub_100004A34(v32);
  goto LABEL_11;
}

void DataPlanManagerBootstrap::setWebsheetVisibility(DataPlanManagerBootstrap *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002F98D8;
  v4[3] = &unk_101E26058;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 4);
  v3 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
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

void sub_1002F98D8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  *(v1 + 600) = v2;
  if (v2 != 1)
  {
    return;
  }

  ServiceMap = Registry::getServiceMap(*(v1 + 72));
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
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
LABEL_10:
  v12 = (*(*v11 + 712))(v11);
  if (v12)
  {
    if (!v10)
    {
      return;
    }

LABEL_29:
    sub_100004A34(v10);
    return;
  }

  v13 = capabilities::ct::supportsGemini(v12);
  if (v10)
  {
    sub_100004A34(v10);
  }

  if ((v13 & 1) == 0)
  {
    v14 = *(v1 + 64);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Enabling cellular data on opening websheet", buf, 2u);
    }

    v15 = Registry::getServiceMap(*(v1 + 72));
    v16 = v15;
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

    std::mutex::lock(v15);
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (v21)
    {
      v22 = v21[3];
      v10 = v21[4];
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v16);
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v10);
        v23 = 0;
        goto LABEL_26;
      }
    }

    else
    {
      v22 = 0;
    }

    std::mutex::unlock(v16);
    v10 = 0;
    v23 = 1;
LABEL_26:
    v24 = 0;
    v25 = 0;
    (*(*v22 + 80))(v22, 1, 1, &v24);
    if (v25)
    {
      sub_100004A34(v25);
    }

    if ((v23 & 1) == 0)
    {
      goto LABEL_29;
    }
  }
}

void sub_1002F9B30(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if ((v11 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::setEventSender(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002F9C84;
  v4[3] = &unk_101E26940;
  v4[4] = a1;
  v4[5] = a2;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void *sub_1002F9C84(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  *(v2 + 592) = v1;
  return sub_100106754((v2 + 712), v1);
}

void DataPlanManagerBootstrap::getEffectivePhoneNumber(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002F9DA0;
  v4[3] = &unk_101E3F570;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1002F9DA0(uint64_t a1)
{
  v2 = *(a1 + 40);
  memset(v11, 0, 32);
  v3 = *(v2 + 640);
  v4 = *(v2 + 648);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3)
  {
    (*(*v3 + 712))(v9);
    sub_10016E3EC(v11, v9);
    if (LOBYTE(v9[0]) == 1 && v10 < 0)
    {
      operator delete(v9[1]);
    }

    v5 = *(a1 + 32);
    v6[0] = 0;
    if (v11[0])
    {
      if (SHIBYTE(v11[3]) < 0)
      {
        sub_100005F2C(v7, v11[1], v11[2]);
      }

      else
      {
        *v7 = *&v11[1];
        v8 = v11[3];
      }

      v6[0] = 1;
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6[0] = 0;
  }

  (*(v5 + 16))(v5, v6);
  if (v6[0] == 1)
  {
    if (SHIBYTE(v8) < 0)
    {
      operator delete(v7[0]);
    }

    v6[0] = 0;
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  if (LOBYTE(v11[0]) == 1 && SHIBYTE(v11[3]) < 0)
  {
    operator delete(v11[1]);
  }
}

void sub_1002F9F28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (v23)
  {
    sub_100004A34(v23);
  }

  if (a17 == 1 && a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::handleSMSEvent(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Data plan SMS notification should be ignored because device does not have a valid data plan", v2, 2u);
  }
}

void DataPlanManagerBootstrap::handleDumpState_sync(DataPlanManagerBootstrap *this)
{
  v2 = *(this + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(this + 600));
    v8 = 136315138;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fWebsheetVisible:%s", &v8, 0xCu);
    v2 = *(this + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    atomic_load(this + 40);
    v4 = subscriber::asString();
    v8 = 136315138;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I fDefaultVoiceSim:%s", &v8, 0xCu);
  }

  (*(**(this + 78) + 216))(*(this + 78));
  v5 = *(this + 76);
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  v6 = *(this + 8);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = (this + 720);
    if (*(this + 743) < 0)
    {
      v7 = *v7;
    }

    v8 = 136315138;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Plan Expiry ICCID: (%s)", &v8, 0xCu);
  }
}

uint64_t DataPlanManagerBootstrap::handleSubscriptionThrottledTransition_sync(DataPlanManagerBootstrap *a1, uint64_t a2)
{
  v21 = 0;
  v4 = sub_10005D028();
  sub_10000501C(&__p, "DataPlanManagerBootstrap::kDataPlanThrottled");
  sub_10005D0D8(v4, &__p.__r_.__value_.__l.__data_, &v21);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v5 = sub_10164D3F0(a2);
  v20 = v5 == 8;
  if (v21 && v5 == 8)
  {
    v6 = *(a1 + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Ignoring usage notification in throttled state", &__p, 2u);
    }
  }

  else
  {
    if ((sub_10164D3F0(a2) & 9) == 0 || v21 == v20)
    {
      return 0;
    }

    v8 = sub_10005D028();
    sub_10000501C(&__p, "DataPlanManagerBootstrap::kDataPlanThrottled");
    sub_1006197F4(v8, &__p, &v20);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v9 = *(a1 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = CSIBOOLAsString(v20);
      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Sending throttle state transition, is throttled:%s", &__p, 0xCu);
    }

    __p.__r_.__value_.__r.__words[0] = 0;
    __p.__r_.__value_.__r.__words[0] = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(__p.__r_.__value_.__l.__data_, kCTCellularDataPlanStatusTypeKey, kCTCellularDataPlanSubscriptionStatus);
    if (v20)
    {
      v11 = @"throttled";
    }

    else
    {
      v11 = @"subscribed";
    }

    CFDictionarySetValue(__p.__r_.__value_.__l.__data_, kCTCellularDataPlanSubscriptionStateKey, v11);
    ctu::cf_to_xpc(&object, __p.__r_.__value_.__l.__data_, v12);
    v13 = object;
    if (object && xpc_get_type(object) == &_xpc_type_dictionary)
    {
      xpc_retain(v13);
    }

    else
    {
      v13 = xpc_null_create();
    }

    xpc_release(object);
    object = v13;
    if (v13)
    {
      xpc_retain(v13);
    }

    else
    {
      object = xpc_null_create();
    }

    v18 = xpc_null_create();
    sub_10002A37C(82, &object, &v18);
    xpc_release(v18);
    xpc_release(object);
    object = 0;
    v14 = *(a1 + 78);
    v15 = v20;
    DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(a1, &v17);
    v16 = 0;
    (**v14)(v14, v15, &v17, &v16);
    sub_100005978(&v16);
    sub_100005978(&v17);
    sub_100005978(&object);
    xpc_release(v13);
    sub_1000296E0(&__p.__r_.__value_.__l.__data_);
  }

  return 1;
}

void sub_1002FA4D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, xpc_object_t object, xpc_object_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(DataPlanManagerBootstrap *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v4 = *(this + 80);
  v5 = *(this + 81);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4 && (*(*v4 + 728))(v4))
  {
    DataPlanManagerBootstrap::getCellularPlanAccountUrl_sync(this, &v7);
    if (&v7 != a2)
    {
      v6 = *a2;
      *a2 = v7;
      v7 = 0;
      v8 = v6;
      sub_100005978(&v8);
    }

    sub_100005978(&v7);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1002FA658(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::handleDataUsagePush_sync(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I data plan does not exist, bail usage", v2, 2u);
  }
}

void DataPlanManagerBootstrap::handleDataUsagePushTrigger(DataPlanManagerBootstrap *this, CFAbsoluteTime a2)
{
  v4 = *(this + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Triggering data usage query for prepaid alert with timestamp - %f", buf, 0xCu);
  }

  if (CFAbsoluteTimeGetCurrent() + -86400.0 > a2)
  {
    v5 = *(this + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Data usage push message timestamp is too old", buf, 2u);
    }

    return;
  }

  *buf = 0uLL;
  ServiceMap = Registry::getServiceMap(*(this + 9));
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
  v18 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v18);
  if (!v12)
  {
    v14 = 0;
    goto LABEL_13;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
LABEL_13:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_14;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
LABEL_14:
  (*(*v14 + 8))(buf, v14, 1);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (*buf)
  {
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1002FA9B0;
    v17[3] = &unk_101E3F590;
    v17[4] = this;
    v18 = v17;
    (*(**buf + 264))(*buf, 3, this + 48, 0, &v18, v16);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1002FA970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_1002FA9B0(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a1 + 32);
  if (a3)
  {

    DataPlanManagerBootstrap::handleDataUsagePush_sync(v5);
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v6 = *(v5 + 64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Error while querying entitlements", v7, 2u);
    }
  }
}

void DataPlanManagerBootstrap::handleMultiSIMUpdatePush(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v6 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 32));
  operator new();
}

void DataPlanManagerBootstrap::handleProfileReleasedPush(uint64_t a1, uint64_t a2, char a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    __p[2] = *(a2 + 16);
  }

  v6 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 32));
  operator new();
}

void DataPlanManagerBootstrap::handleMultiSIMProvisioningFailedPush(uint64_t a1, uint64_t a2, char a3)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1002FADE8;
  v5[3] = &unk_101E3F5B0;
  v5[4] = a1;
  v5[5] = a2;
  v6 = a3;
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 32));
  v4 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v4, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_1002FADE8(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(v3 + 656);
  if (v4)
  {
    v5 = *(*v4 + 224);

    v5();
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v6 = *(v3 + 64);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I fCellularPlanControllerPhone is not available!", v7, 2u);
    }
  }
}

void DataPlanManagerBootstrap::handleInternetActivateFailedTrigger_sync(uint64_t a1)
{
  v2 = *(a1 + 640);
  v3 = *(a1 + 648);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v2)
  {
    (*(*v2 + 688))(v2);
  }

  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_1002FAF54(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataPlanManagerBootstrap::allowInternetInterfaceActivate_sync(DataPlanManagerBootstrap *this, BOOL *a2)
{
  v4 = *(this + 80);
  v5 = *(this + 81);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v4)
  {
    v6 = 1;
    goto LABEL_44;
  }

  v35 = 0;
  v6 = (*(*v4 + 672))(v4, &v35);
  ServiceMap = Registry::getServiceMap(*(this + 9));
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
  *buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, buf);
  if (!v13)
  {
    v15 = 0;
LABEL_13:
    std::mutex::unlock(v8);
    v14 = 0;
    v16 = 1;
    if (!v15)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  v16 = 0;
  if (v15)
  {
LABEL_14:
    (*(*v15 + 72))(v15, v6 ^ 1);
  }

LABEL_15:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if ((v6 & 1) == 0)
  {
    v17 = Registry::getServiceMap(*(this + 9));
    v18 = v17;
    if (v19 < 0)
    {
      v20 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v21 = 5381;
      do
      {
        v19 = v21;
        v22 = *v20++;
        v21 = (33 * v21) ^ v22;
      }

      while (v22);
    }

    std::mutex::lock(v17);
    *buf = v19;
    v23 = sub_100009510(&v18[1].__m_.__sig, buf);
    if (v23)
    {
      v25 = v23[3];
      v24 = v23[4];
      if (v24)
      {
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v18);
        atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v24);
        v26 = 0;
        if (!v25)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v18);
    v24 = 0;
    v26 = 1;
    if (!v25)
    {
LABEL_28:
      if ((v26 & 1) == 0)
      {
        sub_100004A34(v24);
      }

      if (v35)
      {
        *a2 = 1;
        v27 = *(this + 32);
        if (!v27)
        {
          goto LABEL_39;
        }

        v28 = (this + 256);
        do
        {
          if (v27[7] >= 1)
          {
            v28 = v27;
          }

          v27 = *&v27[2 * (v27[7] < 1)];
        }

        while (v27);
        if (v28 == (this + 256) || v28[7] > 1)
        {
LABEL_39:
          v29 = 0;
        }

        else
        {
          v29 = *(v28 + 32);
        }

        v30 = *(this + 8);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I posting activation failure", buf, 2u);
        }

        v31 = asDataActivateFailureReason();
        sub_10000501C(__p, v31);
        DataPlanManagerBootstrap::postInternetDataActivateFailed_sync(this, 0, 0, v29, 18, 0, 0, __p);
        if (v34 < 0)
        {
          operator delete(__p[0]);
        }
      }

      goto LABEL_44;
    }

LABEL_27:
    (*(*v25 + 488))(v25, 0, 5);
    goto LABEL_28;
  }

LABEL_44:
  if (v5)
  {
    sub_100004A34(v5);
  }

  return v6;
}

void sub_1002FB2DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

const void **DataPlanManagerBootstrap::postInternetDataActivateFailed_sync(DataPlanManagerBootstrap *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, const __CFString *a7, const void **a8)
{
  v65[0] = @"kCTRegistrationDataContextID";
  v66[0] = [NSNumber numberWithInt:a2];
  v65[1] = @"kCTRegistrationDataActive";
  v66[1] = [NSNumber numberWithInt:a3];
  v65[2] = @"kCTRegistrationDataAttached";
  v66[2] = [NSNumber numberWithInt:a4];
  v65[3] = @"kCTRegistrationDataActivateFailure";
  v66[3] = [NSNumber numberWithInt:a5];
  v65[4] = @"kCTRegistrationDataActivateFailureString";
  if (!a6)
  {
    a6 = sub_100FE7F70(a5);
  }

  v15 = @"Unknown reason";
  if (a7)
  {
    v15 = a7;
  }

  v66[4] = a6;
  v66[5] = v15;
  v65[5] = @"kCTRegistrationDataActivationPreventionReason";
  v65[6] = @"kCTRegistrationDataConnectionServices";
  v66[6] = &off_101F92CD0;
  v17 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:7];
  v18 = *(a1 + 76);
  if (!v18 || ((*(*v18 + 32))(v18) & 1) != 0)
  {
    goto LABEL_7;
  }

  v22 = strlen(kDataActivateFailureReasonDataPlanExpiredSequoia);
  v23 = v22;
  v24 = *(a8 + 23);
  if ((v24 & 0x8000000000000000) == 0)
  {
    v25 = a8;
    if (v23 != v24)
    {
      goto LABEL_91;
    }

LABEL_90:
    if (!memcmp(v25, kDataActivateFailureReasonDataPlanExpiredSequoia, v23))
    {
      goto LABEL_105;
    }

    goto LABEL_91;
  }

  if (v22 == a8[1])
  {
    if (v22 == -1)
    {
      sub_10013C334();
    }

    v25 = *a8;
    goto LABEL_90;
  }

LABEL_91:
  v39 = strlen(kDataActivateFailureReasonDataPlanNoExistingPlan);
  v40 = v39;
  if ((v24 & 0x80000000) != 0)
  {
    if (v39 != a8[1])
    {
      goto LABEL_98;
    }

    if (v39 == -1)
    {
      sub_10013C334();
    }

    v41 = *a8;
  }

  else
  {
    v41 = a8;
    if (v40 != v24)
    {
LABEL_98:
      v42 = strlen(kDataActivateFailureReasonDataPlanUnusableProfile);
      v43 = v42;
      if ((v24 & 0x80000000) != 0)
      {
        if (v42 != a8[1])
        {
          goto LABEL_7;
        }

        if (v42 == -1)
        {
          sub_10013C334();
        }

        v44 = *a8;
      }

      else
      {
        v44 = a8;
        if (v43 != v24)
        {
          goto LABEL_7;
        }
      }

      if (!memcmp(v44, kDataActivateFailureReasonDataPlanUnusableProfile, v43))
      {
        goto LABEL_105;
      }

LABEL_7:
      v19 = 0;
      goto LABEL_8;
    }
  }

  if (memcmp(v41, kDataActivateFailureReasonDataPlanNoExistingPlan, v40))
  {
    goto LABEL_98;
  }

LABEL_105:
  v19 = 1;
LABEL_8:
  v62 = v17;
  if (v17)
  {
    CFRetain(v17);
    v20 = v62;
  }

  else
  {
    v20 = 0;
  }

  ctu::cf_to_xpc(&object, v20, v16);
  v21 = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(v21);
  }

  else
  {
    v21 = xpc_null_create();
  }

  xpc_release(object);
  *&object = v21;
  if (v21)
  {
    xpc_retain(v21);
  }

  else
  {
    *&object = xpc_null_create();
  }

  __p[0] = xpc_null_create();
  sub_10002A37C(45, &object, __p);
  xpc_release(__p[0]);
  xpc_release(object);
  v26 = *(a1 + 80);
  v27 = *(a1 + 81);
  if (v27)
  {
    atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v61 = 0;
  if (v26)
  {
    (*(*v26 + 720))(__p);
    *&object = v61;
    v61 = __p[0];
    __p[0] = 0;
    sub_10002D760(&object);
    sub_10002D760(__p);
  }

  v60 = 0;
  v28 = xpc_dictionary_create(0, 0, 0);
  v29 = v28;
  if (v28)
  {
    v60 = v28;
  }

  else
  {
    v29 = xpc_null_create();
    v60 = v29;
    if (!v29)
    {
      v30 = xpc_null_create();
      v29 = 0;
      goto LABEL_32;
    }
  }

  if (xpc_get_type(v29) == &_xpc_type_dictionary)
  {
    xpc_retain(v29);
    goto LABEL_33;
  }

  v30 = xpc_null_create();
LABEL_32:
  v60 = v30;
LABEL_33:
  xpc_release(v29);
  v58 = xpc_BOOL_create(1);
  if (!v58)
  {
    v58 = xpc_null_create();
  }

  *&object = &v60;
  *(&object + 1) = kDataActivateFailureDueToDataPlanKey;
  sub_10000F688(&object, &v58, &v59);
  xpc_release(v59);
  v59 = 0;
  xpc_release(v58);
  v58 = 0;
  if (v19)
  {
    v45 = xpc_string_create(kDataActivateFailureReasonDataPlanConnectToWifi);
    if (!v45)
    {
      v45 = xpc_null_create();
    }

    *&object = &v60;
    *(&object + 1) = kDataActivateFailureReasonKey;
    sub_10000F688(&object, &v45, &v46);
    xpc_release(v46);
    v46 = 0;
    xpc_release(v45);
    v45 = 0;
    __p[0] = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    v49 = v60;
    if (v60)
    {
      xpc_retain(v60);
    }

    else
    {
      v49 = xpc_null_create();
    }

    v36 = *(a1 + 10);
    *&object = *(a1 + 9);
    *(&object + 1) = v36;
    if (v36)
    {
      atomic_fetch_add_explicit(&v36->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sSendCSIObserverEvent(45, __p, &v49, &object);
    if (v36)
    {
      sub_100004A34(v36);
    }

    xpc_release(v49);
    xpc_release(__p[0]);
  }

  else
  {
    if (*(a8 + 23) < 0)
    {
      a8 = *a8;
    }

    v56 = xpc_string_create(a8);
    if (!v56)
    {
      v56 = xpc_null_create();
    }

    *&object = &v60;
    *(&object + 1) = kDataActivateFailureReasonKey;
    sub_10000F688(&object, &v56, &v57);
    xpc_release(v57);
    v57 = 0;
    xpc_release(v56);
    v56 = 0;
    if (v61)
    {
      ctu::cf_to_xpc(&v54, v61, v31);
      *&object = &v60;
      *(&object + 1) = "DataPlanCsn";
      sub_10000F688(&object, &v54, &v55);
      xpc_release(v55);
      v55 = 0;
      xpc_release(v54);
      v54 = 0;
    }

    DataPlanManagerBootstrap::getEfectiveIccid_sync(a1, &object);
    v32 = object;
    sub_100005978(&object);
    if (v32)
    {
      DataPlanManagerBootstrap::getEfectiveIccid_sync(a1, &v49);
      object = 0uLL;
      v64 = 0;
      ctu::cf::assign();
      *__p = object;
      v51 = v64;
      if (v64 >= 0)
      {
        v33 = __p;
      }

      else
      {
        v33 = __p[0];
      }

      v52 = xpc_string_create(v33);
      if (!v52)
      {
        v52 = xpc_null_create();
      }

      *&object = &v60;
      *(&object + 1) = "DataPlanIccid";
      sub_10000F688(&object, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      xpc_release(v52);
      v52 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100005978(&v49);
    }

    DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(a1, &object);
    v34 = object;
    sub_100005978(&object);
    if (v34)
    {
      DataPlanManagerBootstrap::getCellularDataPlanAccountUrl_sync(a1, &v49);
      object = 0uLL;
      v64 = 0;
      ctu::cf::assign();
      *__p = object;
      v51 = v64;
      if (v64 >= 0)
      {
        v35 = __p;
      }

      else
      {
        v35 = __p[0];
      }

      v47 = xpc_string_create(v35);
      if (!v47)
      {
        v47 = xpc_null_create();
      }

      *&object = &v60;
      *(&object + 1) = "DataPlanUrl";
      sub_10000F688(&object, &v47, &v48);
      xpc_release(v48);
      v48 = 0;
      xpc_release(v47);
      v47 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(__p[0]);
      }

      sub_100005978(&v49);
    }

    __p[0] = v21;
    if (v21)
    {
      xpc_retain(v21);
    }

    else
    {
      __p[0] = xpc_null_create();
    }

    v49 = v60;
    if (v60)
    {
      xpc_retain(v60);
    }

    else
    {
      v49 = xpc_null_create();
    }

    v37 = *(a1 + 10);
    *&object = *(a1 + 9);
    *(&object + 1) = v37;
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sSendCSIObserverEvent(45, __p, &v49, &object);
    if (v37)
    {
      sub_100004A34(v37);
    }

    xpc_release(v49);
    xpc_release(__p[0]);
  }

  xpc_release(v60);
  sub_10002D760(&v61);
  if (v27)
  {
    sub_100004A34(v27);
  }

  xpc_release(v21);
  return sub_10001021C(&v62);
}

void sub_1002FBB88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, xpc_object_t object, char a27, int a28, __int16 a29, char a30, char a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t DataPlanManagerBootstrap::socketThatWouldBringUpInternetIsFailing_sync(DataPlanManagerBootstrap *this)
{
  v2 = *(this + 80);
  v3 = *(this + 81);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v2)
    {
      sub_100004A34(v3);
      return 0;
    }
  }

  else if (!v2)
  {
    return 0;
  }

  v4 = (*(*v2 + 696))(v2);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (v4)
  {
    v5 = *(this + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I run activate mechanism for failing socket", buf, 2u);
    }

    v7 = 0;
    DataPlanManagerBootstrap::allowInternetInterfaceActivate_sync(this, &v7);
    if (v7)
    {
      return 1;
    }
  }

  return 0;
}

void sub_1002FBE58(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::handlePlanExpired_sync(uint64_t a1, uint64_t a2)
{
  (*(**(a1 + 624) + 152))(*(a1 + 624));
  v4 = *(a1 + 640);
  v5 = *(a1 + 648);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v4)
  {
    (*(*v4 + 680))(v4, a2);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  v16 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v16);
  if (!v12)
  {
    v14 = 0;
LABEL_13:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_13;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (v14)
  {
LABEL_14:
    (*(*v14 + 488))(v14, 0, 5);
  }

LABEL_15:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_1002FC020(_Unwind_Exception *exception_object)
{
  v4 = v2;
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::getCellularPlanAccountUrl_sync(DataPlanManagerBootstrap *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v3 = *(this + 80);
  v4 = *(this + 81);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3 && (*(*v3 + 728))(v3))
  {
    (*(*v3 + 736))(&v6, v3);
    if (&v6 != a2)
    {
      v5 = *a2;
      *a2 = v6;
      v6 = 0;
      v7 = v5;
      sub_100005978(&v7);
    }

    sub_100005978(&v6);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1002FC150(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::maybeStartPlanExpiryDetection_sync(DataPlanManagerBootstrap *this)
{
  if (*(this + 96))
  {
    v2 = *(this + 743);
    if (v2 < 0)
    {
      if (!*(this + 91))
      {
        return;
      }
    }

    else if (!*(this + 743))
    {
      return;
    }

    v3 = (this + 720);
    v4 = *(this + 27);
    v5 = *(this + 28);
    if (v4 != v5)
    {
      if (v2 >= 0)
      {
        v6 = *(this + 743);
      }

      else
      {
        v6 = *(this + 91);
      }

      for (i = v4 + 72; ; i += 168)
      {
        v8 = *(i + 23);
        v9 = v8;
        if ((v8 & 0x80u) != 0)
        {
          v8 = *(i + 8);
        }

        if (v8 == v6)
        {
          v10 = v9 >= 0 ? i : *i;
          v11 = v2 >= 0 ? (this + 720) : *v3;
          if (!memcmp(v10, v11, v6))
          {
            v12 = *(i + 47);
            if ((v12 & 0x80u) != 0)
            {
              v12 = *(i + 32);
            }

            if (v12)
            {
              break;
            }
          }
        }

        v13 = i + 96;
        if (v13 == v5)
        {
          return;
        }
      }

      v4 = i - 72;
    }

    if (v4 != v5 && subscriber::isEsimCapable())
    {
      v14 = *(this + 743);
      if (*(this + 488))
      {
        v15 = *(this + 311);
        if (v15 >= 0)
        {
          v16 = *(this + 311);
        }

        else
        {
          v16 = *(this + 37);
        }

        v17 = *(this + 91);
        if ((v14 & 0x80u) == 0)
        {
          v18 = *(this + 743);
        }

        else
        {
          v18 = *(this + 91);
        }

        if (v16 == v18)
        {
          v19 = v15 >= 0 ? (this + 288) : *(this + 36);
          v20 = (v14 & 0x80u) == 0 ? (this + 720) : *(this + 90);
          if (!memcmp(v19, v20, v16))
          {
            return;
          }
        }
      }

      else
      {
        v17 = *(this + 91);
      }

      v21 = *(this + 767);
      if (v21 >= 0)
      {
        v22 = *(this + 767);
      }

      else
      {
        v22 = *(this + 94);
      }

      if ((v14 & 0x80u) == 0)
      {
        v23 = v14;
      }

      else
      {
        v23 = v17;
      }

      if (v22 == v23)
      {
        if (v21 >= 0)
        {
          v24 = this + 744;
        }

        else
        {
          v24 = *(this + 93);
        }

        if ((v14 & 0x80u) == 0)
        {
          v25 = this + 720;
        }

        else
        {
          v25 = *(this + 90);
        }

        v26 = memcmp(v24, v25, v22) == 0;
      }

      else
      {
        v26 = 0;
      }

      v27 = *(this + 96);
      v28 = *(this + 6);
      object = v28;
      if (v28)
      {
        dispatch_retain(v28);
      }

      sub_100004AA0(&v42, this + 4);
      if (v42)
      {
        v29 = v42 + 24;
      }

      else
      {
        v29 = 0;
      }

      v44 = v29;
      v45 = v43;
      v42 = 0;
      v43 = 0;
      (*(*v27 + 16))(&v47, v27, &object, v4, &v44, v26);
      v30 = v47;
      v47 = 0uLL;
      v31 = *(this + 99);
      *(this + 49) = v30;
      if (v31)
      {
        sub_100004A34(v31);
        if (*(&v47 + 1))
        {
          sub_100004A34(*(&v47 + 1));
        }
      }

      if (v45)
      {
        sub_100004A34(v45);
      }

      if (v43)
      {
        sub_100004A34(v43);
      }

      if (object)
      {
        dispatch_release(object);
      }

      if (*(this + 743) < 0)
      {
        **(this + 90) = 0;
        *(this + 91) = 0;
      }

      else
      {
        *(this + 720) = 0;
        *(this + 743) = 0;
      }

      if (*(this + 98))
      {
        ServiceMap = Registry::getServiceMap(*(this + 9));
        v33 = ServiceMap;
        if (v34 < 0)
        {
          v35 = (v34 & 0x7FFFFFFFFFFFFFFFLL);
          v36 = 5381;
          do
          {
            v34 = v36;
            v37 = *v35++;
            v36 = (33 * v36) ^ v37;
          }

          while (v37);
        }

        std::mutex::lock(ServiceMap);
        *&v47 = v34;
        v38 = sub_100009510(&v33[1].__m_.__sig, &v47);
        if (v38)
        {
          v40 = v38[3];
          v39 = v38[4];
          if (v39)
          {
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v33);
            atomic_fetch_add_explicit(&v39->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v39);
            v41 = 0;
LABEL_87:
            if (v40)
            {
              (*(*v40 + 24))(v40, 0, v26 | 0x100);
            }

            if ((v41 & 1) == 0)
            {
              sub_100004A34(v39);
            }

            return;
          }
        }

        else
        {
          v40 = 0;
        }

        std::mutex::unlock(v33);
        v39 = 0;
        v41 = 1;
        goto LABEL_87;
      }
    }
  }
}

void sub_1002FC4F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, dispatch_object_t object)
{
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::setPlanAsExpired(DataPlanManagerBootstrap *this)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1002FC650;
  v3[3] = &unk_101E26008;
  v3[4] = this;
  v6 = 0;
  v7 = 0;
  sub_100004AA0(&v6, this + 4);
  v2 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
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

void sub_1002FC650(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 64);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I expiring plan due to debug trigger", v3, 2u);
  }

  DataPlanManagerBootstrap::handlePlanExpired_sync(v1, 1);
}

const void **DataPlanManagerBootstrap::userDidTapManagePlan(uint64_t a1, const void **a2)
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3321888768;
  v5[2] = sub_1002FC7E4;
  v5[3] = &unk_101E3F5D0;
  v5[4] = a1;
  sub_10005C7A4(&v6, a2);
  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v5;
  dispatch_async(v3, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return sub_100005978(&v6);
}

void sub_1002FC7E4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 64);
  if (v2)
  {
    if (os_log_type_enabled(*(v1 + 64), OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I manage plan for alert", buf, 2u);
      v2 = *(a1 + 40);
    }

    v9[0] = @"Iccid";
    v9[1] = @"FlowTypeKey";
    v10[0] = v2;
    v10[1] = &off_101F910C8;
    v5 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:2];
    v6 = *(v1 + 624);
    v7 = v5;
    if (v5)
    {
      CFRetain(v5);
    }

    (*(*v6 + 208))(v6, &v7);
    sub_10001021C(&v7);
  }

  else if (os_log_type_enabled(*(v1 + 64), OS_LOG_TYPE_FAULT))
  {
    sub_10176AE78(v3);
  }
}

void sub_1002FC920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::shouldDiscourageDisableLte(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FCA6C;
  v4[3] = &unk_101E3F570;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_1002FCA6C(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 656);
  if (v2)
  {
    (*(*v2 + 280))(v2);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

void DataPlanManagerBootstrap::shouldWarnOnLteOffBeforeProvisioning_sync(uint64_t a1, uint64_t a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FCBF8;
  v4[3] = &unk_101E3F570;
  v4[4] = a2;
  v4[5] = a1;
  v7 = 0;
  v8 = 0;
  sub_100004AA0(&v7, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v7;
  v6 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

uint64_t sub_1002FCBF8(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 656);
  if (v2)
  {
    (*(*v2 + 288))(v2);
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

const void **DataPlanManagerBootstrap::processPSNetworkReject_sync(DataPlanManagerBootstrap *this, int a2, int a3)
{
  v6 = *(this + 10);
  number[0] = *(this + 9);
  number[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(v6 + 1, 1uLL, memory_order_relaxed);
  }

  theDict = 0;
  sCopyCellularDataSettings(number, &theDict);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"DataPlanNetworkRejectionCause");
    v8 = Value;
    if (Value)
    {
      v9 = CFGetTypeID(Value);
      if (v9 == CFNumberGetTypeID())
      {
        v10 = v8;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v19 = 0;
    number[0] = v10;
    v11 = CFDictionaryGetValue(theDict, @"DataPlanNetworkRejectionCauseToForce3G");
    v12 = v11;
    if (v11 && (v13 = CFGetTypeID(v11), v13 == CFNumberGetTypeID()))
    {
      v19 = v12;
      valuePtr = -1;
      CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
      if (valuePtr == a2)
      {
        v14 = *(this + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *v17 = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Rejected from LTE, forcing LTE to provisioning mode", v17, 2u);
        }

        sub_100083E9C(&event::registration::setLTEToProvisioning, 1);
      }
    }

    else
    {
      v19 = 0;
      valuePtr = -1;
    }

    if (a3 == 7)
    {
      if (number[0])
      {
        CFNumberGetValue(number[0], kCFNumberIntType, &valuePtr);
        if (valuePtr == a2)
        {
          *(this + 688) = 1;
          v15 = *(this + 8);
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *v17 = 0;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I Disable LTE", v17, 2u);
          }

          sub_100083E9C(&event::registration::setLTEEnabled, 0);
        }
      }
    }

    sub_100029A48(&v19);
    sub_100029A48(number);
  }

  return sub_10001021C(&theDict);
}

void sub_1002FCE7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  v8 = va_arg(va2, void);
  sub_100029A48(va);
  sub_100029A48(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::getEfectiveIccid_sync(DataPlanManagerBootstrap *this@<X0>, const void **a2@<X8>)
{
  *a2 = 0;
  v3 = *(this + 80);
  v4 = *(this + 81);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v3 && (*(*v3 + 728))(v3))
  {
    (*(*v3 + 704))(&v6, v3);
    if (&v6 != a2)
    {
      v5 = *a2;
      *a2 = v6;
      v6 = 0;
      v7 = v5;
      sub_100005978(&v7);
    }

    sub_100005978(&v6);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_1002FCFB4(_Unwind_Exception *a1)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  sub_100005978(v2);
  _Unwind_Resume(a1);
}

void DataPlanManagerBootstrap::didShowDataPlanAlert(uint64_t a1, __int128 *a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_1002FD120;
  v4[3] = &unk_101E3E800;
  v4[4] = a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(&__p, *a2, *(a2 + 1));
  }

  else
  {
    __p = *a2;
    v6 = *(a2 + 2);
  }

  v9 = 0;
  v10 = 0;
  sub_100004AA0(&v9, (a1 + 32));
  v3 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v9;
  v8 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v4;
  dispatch_async(v3, block);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_1002FD120(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (a1 + 40);
  v4 = strlen(kDataActivateFailureReasonDataPlanExpiredSequoia);
  v5 = v4;
  v6 = *(a1 + 63);
  if (v6 < 0)
  {
    if (v4 != *(a1 + 48))
    {
      goto LABEL_8;
    }

    if (v4 == -1)
    {
      sub_10013C334();
    }

    v7 = *v3;
  }

  else
  {
    v7 = v3;
    if (v5 != v6)
    {
      goto LABEL_8;
    }
  }

  if (!memcmp(v7, kDataActivateFailureReasonDataPlanExpiredSequoia, v5))
  {
    goto LABEL_23;
  }

LABEL_8:
  v8 = strlen(kDataActivateFailureReasonDataPlanNoExistingPlan);
  v9 = v8;
  if ((v6 & 0x80000000) != 0)
  {
    if (v8 != *(a1 + 48))
    {
      goto LABEL_15;
    }

    if (v8 == -1)
    {
      sub_10013C334();
    }

    v10 = *v3;
LABEL_14:
    if (memcmp(v10, kDataActivateFailureReasonDataPlanNoExistingPlan, v9))
    {
      goto LABEL_15;
    }

LABEL_23:
    v12 = *(**(v2 + 608) + 40);

    return v12();
  }

  v10 = v3;
  if (v9 == v6)
  {
    goto LABEL_14;
  }

LABEL_15:
  result = strlen(kDataActivateFailureReasonDataPlanUnusableProfile);
  if ((v6 & 0x80000000) != 0)
  {
    if (result != *(a1 + 48))
    {
      return result;
    }

    if (result == -1)
    {
      sub_10013C334();
    }

    v3 = *v3;
  }

  else if (result != v6)
  {
    return result;
  }

  result = memcmp(v3, kDataActivateFailureReasonDataPlanUnusableProfile, result);
  if (!result)
  {
    goto LABEL_23;
  }

  return result;
}

const void **DataPlanManagerBootstrap::launchRemoteProvisioningWebsheet(uint64_t a1, const void **a2, const void **a3)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3321888768;
  v7[2] = sub_1002FD3F4;
  v7[3] = &unk_101E3F600;
  v7[4] = a1;
  sub_10005C7A4(&v8, a2);
  sub_100010024(&v9, a3);
  v12 = 0;
  v13 = 0;
  sub_100004AA0(&v12, (a1 + 32));
  v5 = *(a1 + 48);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
  block[5] = v12;
  v11 = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[4] = v7;
  dispatch_async(v5, block);
  if (v11)
  {
    sub_100004A34(v11);
  }

  if (v13)
  {
    sub_100004A34(v13);
  }

  sub_10001021C(&v9);
  return sub_100005978(&v8);
}

const void **sub_1002FD3F4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 624);
  sub_10005C7A4(&v6, (a1 + 40));
  sub_100010024(&v5, (a1 + 48));
  v4 = 0;
  (*(*v2 + 168))(v2, &v6, &v5, &v4);
  sub_100005978(&v4);
  sub_10001021C(&v5);
  return sub_100005978(&v6);
}

void sub_1002FD48C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

const void **sub_1002FD4B0(uint64_t a1, uint64_t a2)
{
  sub_10005C7A4((a1 + 40), (a2 + 40));

  return sub_100010024((a1 + 48), (a2 + 48));
}

const void **sub_1002FD4F8(uint64_t a1)
{
  sub_10001021C((a1 + 48));

  return sub_100005978((a1 + 40));
}

uint64_t DataPlanManagerBootstrap::isACellularDataPlanNotSubscribedError(uint64_t a1, int a2)
{
  v3 = *(a1 + 80);
  v7[0] = *(a1 + 72);
  v7[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  cf = 0;
  sCopyCellularDataSettings(v7, &cf);
  if (v3)
  {
    sub_100004A34(v3);
  }

  if (cf)
  {
    v6 = cf;
    CFRetain(cf);
    IsNotSubscribedError = sIsNotSubscribedError(&v6, a2);
    sub_10001021C(&v6);
  }

  else
  {
    IsNotSubscribedError = a2 == 65;
  }

  sub_10001021C(&cf);
  return IsNotSubscribedError;
}

void sub_1002FD5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, uint64_t a11, const void *a12)
{
  sub_10001021C(&a9);
  sub_10001021C(&a12);
  _Unwind_Resume(a1);
}

const void **DataPlanManagerBootstrap::displayInstallFailedPopup_sync(uint64_t a1, uint64_t a2, const void **a3)
{
  v4 = *(a1 + 624);
  sub_10005C7A4(&v6, a3);
  (*(*v4 + 40))(v4, a2, &v6);
  return sub_100005978(&v6);
}

void sub_1002FD6D8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t DataPlanManagerBootstrap::handleCellularPlanAvailable_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 76);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t non-virtual thunk toDataPlanManagerBootstrap::handleCellularPlanAvailable_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 74);
  if (result)
  {
    return (*(*result + 24))();
  }

  return result;
}

uint64_t DataPlanManagerBootstrap::handleCellularPlanDidChange_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 76);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

uint64_t non-virtual thunk toDataPlanManagerBootstrap::handleCellularPlanDidChange_sync(DataPlanManagerBootstrap *this)
{
  result = *(this + 74);
  if (result)
  {
    return (*(*result + 48))();
  }

  return result;
}

void DataPlanManagerBootstrap::handleCellularPlanEnable_sync(uint64_t a1, void *a2)
{
  if (*(a1 + 768))
  {
    v2 = a2 + 1;
    v3 = *a2;
    if (*a2 != a2 + 1)
    {
      v5 = (a1 + 720);
      do
      {
        v6 = v3 + 4;
        v7 = *(a1 + 743);
        if (v7 >= 0)
        {
          v8 = *(a1 + 743);
        }

        else
        {
          v8 = *(a1 + 728);
        }

        v9 = *(v3 + 55);
        if (v9 >= 0)
        {
          v10 = *(v3 + 55);
        }

        else
        {
          v10 = v3[5];
        }

        if (v8 == v10)
        {
          v11 = v7 >= 0 ? v5 : v5->__r_.__value_.__r.__words[0];
          v12 = v9 >= 0 ? v3 + 4 : *v6;
          if (!memcmp(v11, v12, v8))
          {
            break;
          }
        }

        if (v8)
        {
          v13 = v10 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v14 = *(a1 + 64);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = v5;
            if (v7 < 0)
            {
              v15 = v5->__r_.__value_.__r.__words[0];
            }

            v16 = v3 + 4;
            if (v9 < 0)
            {
              v16 = *v6;
            }

            *buf = 136315394;
            v21 = v15;
            v22 = 2080;
            v23 = v16;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Overwriting plan expiry ICCID (%s) with (%s)", buf, 0x16u);
          }
        }

        std::string::operator=(v5, (v3 + 4));
        v17 = *(a1 + 792);
        *(a1 + 784) = 0u;
        if (v17)
        {
          sub_100004A34(v17);
        }

        DataPlanManagerBootstrap::maybeStartPlanExpiryDetection_sync(a1);
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
            v13 = *v19 == v3;
            v3 = v19;
          }

          while (!v13);
        }

        v3 = v19;
      }

      while (v19 != v2);
    }
  }
}

uint64_t DataPlanManagerBootstrap::handleCellularPlanWasPurchased_sync(uint64_t a1, std::string *__str)
{
  if (!*(a1 + 768))
  {
LABEL_15:
    result = *(a1 + 608);
    if (result)
    {
      v10 = *(*result + 56);

      return v10();
    }

    return result;
  }

  v3 = __str;
  v4 = *(a1 + 767);
  if (v4 >= 0)
  {
    v5 = *(a1 + 767);
  }

  else
  {
    v5 = *(a1 + 752);
  }

  size = HIBYTE(__str->__r_.__value_.__r.__words[2]);
  v7 = size;
  if ((size & 0x80u) != 0)
  {
    size = __str->__r_.__value_.__l.__size_;
  }

  if (v5 != size)
  {
    goto LABEL_14;
  }

  if (v4 >= 0)
  {
    v8 = (a1 + 744);
  }

  else
  {
    v8 = *(a1 + 744);
  }

  if (v7 < 0)
  {
    __str = __str->__r_.__value_.__r.__words[0];
  }

  result = memcmp(v8, __str, v5);
  if (result)
  {
LABEL_14:
    std::string::operator=((a1 + 744), v3);
    goto LABEL_15;
  }

  return result;
}

const void **DataPlanManagerBootstrap::launchRemoteProvisioningWebsheet_sync(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v6 = *(a1 + 624);
  sub_10005C7A4(&v10, a2);
  sub_100010024(&v9, a3);
  sub_10005C7A4(&v8, a4);
  (*(*v6 + 168))(v6, &v10, &v9, &v8);
  sub_100005978(&v8);
  sub_10001021C(&v9);
  return sub_100005978(&v10);
}

void sub_1002FDB60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_10001021C(va1);
  sub_100005978(va2);
  _Unwind_Resume(a1);
}

const void **DataPlanManagerBootstrap::launchProvisioningWebsheet_sync(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, const void **a5)
{
  v8 = *(a1 + 624);
  sub_10002D728(&v11, a2);
  sub_100010024(&v10, a5);
  (*(*v8 + 160))(v8, &v11, a3, a4, &v10);
  sub_10001021C(&v10);
  return sub_10002D760(&v11);
}

void sub_1002FDC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_10002D760(&a10);
  _Unwind_Resume(a1);
}

const void **DataPlanManagerBootstrap::launchSimSetup(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a1 + 624);
  sub_10002D728(&v16, a2);
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__dst, *a5, *(a5 + 8));
  }

  else
  {
    *__dst = *a5;
    v15 = *(a5 + 16);
  }

  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(__p, *a6, *(a6 + 8));
  }

  else
  {
    *__p = *a6;
    v13 = *(a6 + 16);
  }

  (*(*v10 + 192))(v10, &v16, a3, a4, __dst, __p);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst[0]);
  }

  return sub_10002D760(&v16);
}

void sub_1002FDD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, const void *a22)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  sub_10002D760(&a22);
  _Unwind_Resume(a1);
}

BOOL DataPlanManagerBootstrap::shouldCellularPlanPublishSubscriptionConfiguration(Registry **this)
{
  ServiceMap = Registry::getServiceMap(this[9]);
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
    goto LABEL_8;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
LABEL_8:
    std::mutex::unlock(v2);
    return v9 == 0;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  sub_100004A34(v8);
  return v9 == 0;
}

void DataPlanManagerBootstrap::setUserSlotsSelection(uint64_t a1, void *a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  *v29 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v29);
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
      sub_100004A34(v13);
      if (v14)
      {
        return;
      }
    }

    else
    {
      std::mutex::unlock(v7);
      if (v14)
      {
        return;
      }
    }
  }

  else
  {
    std::mutex::unlock(v7);
  }

  v15 = Registry::getServiceMap(*(a1 + 72));
  v16 = v15;
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

  std::mutex::lock(v15);
  *v29 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v29);
  if (!v21)
  {
    v23 = 0;
LABEL_19:
    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
    if (!v23)
    {
      goto LABEL_26;
    }

LABEL_20:
    if (a2[1] - *a2 <= 4uLL)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    v26 = *(a1 + 64);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = subscriber::asString();
      v28 = subscriber::asString();
      *v29 = 136315394;
      *&v29[4] = v27;
      v30 = 2080;
      v31 = v28;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I setting msim config to: %s, default user data slot to: %s", v29, 0x16u);
    }

    (*(*v23 + 1280))(v23, a3, v25);
    goto LABEL_26;
  }

  v23 = v21[3];
  v22 = v21[4];
  if (!v22)
  {
    goto LABEL_19;
  }

  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v16);
  atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v22);
  v24 = 0;
  if (v23)
  {
    goto LABEL_20;
  }

LABEL_26:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }
}

void sub_1002FE13C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::setActiveUserDataSlot(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(a3 + 23) >= 0)
  {
    v6 = *(a3 + 23);
  }

  else
  {
    v6 = a3[1];
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 72));
  v8 = ServiceMap;
  if (v6)
  {
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
    *v27 = v9;
    v13 = sub_100009510(&v8[1].__m_.__sig, v27);
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
          goto LABEL_31;
        }

        goto LABEL_21;
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
      goto LABEL_31;
    }

LABEL_21:
    v23 = *(a1 + 64);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      if (*(a3 + 23) >= 0)
      {
        v24 = a3;
      }

      else
      {
        v24 = *a3;
      }

      *v27 = 136315138;
      *&v27[4] = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I Requesting default active user data: (%s)", v27, 0xCu);
    }

    (*(*v15 + 64))(v15, a3);
    goto LABEL_31;
  }

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
  *v27 = v17;
  v21 = sub_100009510(&v8[1].__m_.__sig, v27);
  if (v21)
  {
    v22 = v21[3];
    v14 = v21[4];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v8);
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v14);
      v16 = 0;
      if (!v22)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
  if (!v22)
  {
    goto LABEL_31;
  }

LABEL_29:
  (*(*v22 + 1272))(v22, a2);
  v25 = *(a1 + 64);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = subscriber::asString();
    *v27 = 136315138;
    *&v27[4] = v26;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I active user set to: %s", v27, 0xCu);
  }

LABEL_31:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_1002FE454(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t DataPlanManagerBootstrap::setDefaultVoiceSlot(uint64_t a1, uint64_t a2)
{
  atomic_store(a2, (a1 + 160));
  v4 = a1 + 200;
  if (*(a1 + 200) != a2)
  {
    *(a1 + 200) = a2;
    v5 = *(a1 + 192);
    if (v5)
    {
      (*(*v5 + 48))(v5, v4);
    }
  }

  v6 = *(a1 + 64);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = subscriber::asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I default voice set to: %s", &v8, 0xCu);
  }

  return (*(**(a1 + 696) + 80))(*(a1 + 696), a2);
}

BOOL DataPlanManagerBootstrap::configureSubscriptions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
  if (!v11)
  {
    v12 = 0;
LABEL_9:
    std::mutex::unlock(v6);
    v13 = 0;
    v14 = 1;
    if (!v12)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v12 = v11[3];
  v13 = v11[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v6);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v14 = 0;
  if (v12)
  {
LABEL_10:
    (*(*v12 + 72))(v12, a2, a3);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  return v12 != 0;
}

void sub_1002FE6E8(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::monitorModeCompleted(uint64_t a1, __int16 a2)
{
  v2 = a2;
  if ((a2 & 0x100) == 0)
  {
    v4 = *(a1 + 64);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28[0]) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Unknown result, leave plan as enabled and do not show anything", v28, 2u);
    }

    if (*(a1 + 767) < 0)
    {
      **(a1 + 744) = 0;
      *(a1 + 752) = 0;
    }

    else
    {
      *(a1 + 744) = 0;
      *(a1 + 767) = 0;
    }

    return;
  }

  v5 = *(a1 + 640);
  if (v5)
  {
    if ((a2 & 1) == 0)
    {
      v6 = *(a1 + 64);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28[0]) = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Plan Expired", v28, 2u);
        v5 = *(a1 + 640);
      }

      (*(*v5 + 680))(v5, 1);
      v7 = *(a1 + 792);
      *(a1 + 784) = 0u;
      if (v7)
      {
        sub_100004A34(v7);
      }
    }

    if ((*(a1 + 767) & 0x8000000000000000) != 0)
    {
      if (!*(a1 + 752))
      {
        goto LABEL_29;
      }
    }

    else if (!*(a1 + 767))
    {
      goto LABEL_29;
    }

    (*(**(a1 + 640) + 752))(*(a1 + 640), v2 & 1);
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
    v28[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, v28);
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
LABEL_27:
          if ((v17 & 1) == 0)
          {
            sub_100004A34(v15);
          }

          goto LABEL_29;
        }

LABEL_26:
        (*(*v16 + 24))(v16, 0, 256);
        goto LABEL_27;
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
      goto LABEL_27;
    }

    goto LABEL_26;
  }

LABEL_29:
  if (*(a1 + 767) < 0)
  {
    if (!*(a1 + 752))
    {
      return;
    }

    **(a1 + 744) = 0;
    *(a1 + 752) = 0;
  }

  else
  {
    if (!*(a1 + 767))
    {
      return;
    }

    *(a1 + 744) = 0;
    *(a1 + 767) = 0;
  }

  v18 = Registry::getServiceMap(*(a1 + 72));
  v19 = v18;
  if ((v20 & 0x8000000000000000) != 0)
  {
    v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v18);
  v28[0] = v20;
  v24 = sub_100009510(&v19[1].__m_.__sig, v28);
  if (!v24)
  {
    v26 = 0;
LABEL_42:
    std::mutex::unlock(v19);
    v25 = 0;
    v27 = 1;
    if (!v26)
    {
      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v26 = v24[3];
  v25 = v24[4];
  if (!v25)
  {
    goto LABEL_42;
  }

  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v19);
  atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v25);
  v27 = 0;
  if (v26)
  {
LABEL_43:
    (*(*v26 + 488))(v26, 1, 5);
  }

LABEL_44:
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }
}

void sub_1002FEA78(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void DataPlanManagerBootstrap::switchSecondaryProvisioning(DataPlanManagerBootstrap *this, char a2)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1002FEBC0;
  v4[3] = &unk_101E26058;
  v4[4] = this;
  v5 = a2;
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, this + 4);
  v3 = *(this + 6);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_10030229C;
  block[3] = &unk_101E3FE60;
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

void sub_1002FEBC0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 64);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = asStringBool(*(a1 + 40));
    v7 = 136315138;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I switchSecondaryProvisioning, enable=%s", &v7, 0xCu);
  }

  v5 = *(a1 + 40);
  if (*(v2 + 152) != v5)
  {
    *(v2 + 152) = v5;
    v6 = *(v2 + 144);
    if (v6)
    {
      (*(*v6 + 48))(v6, v2 + 152);
    }
  }
}

uint64_t sub_1002FECBC(uint64_t a1)
{
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

uint64_t sub_1002FED00(uint64_t a1)
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

uint64_t sub_1002FED80(uint64_t a1)
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

uint64_t sub_1002FEE70(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F718;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002FEE9C(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v15 = 0;
    ctu::rest::detail::read_enum_string_value(&v15, a2, v5);
    v8 = v15;
    if (v15)
    {
      goto LABEL_16;
    }
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    v8 = xpc::dyn_cast_or_default(a2, 0, v5);
    if (v8)
    {
      goto LABEL_16;
    }
  }

  v9 = *(v3 + 64);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v15) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Last known default voice slot: subscriber::SimSlot::kUnknown", &v15, 2u);
  }

  v8 = 1;
LABEL_16:
  if (atomic_load((v3 + 160)))
  {
    v11 = *(v3 + 64);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = subscriber::asString();
      v15 = 136315138;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I default voice slot '%s', not initialized here", &v15, 0xCu);
    }
  }

  else
  {
    atomic_store(v8, (v3 + 160));
    *(v3 + 200) = v8;
    v13 = *(v3 + 192);
    if (v13)
    {
      (*(*v13 + 48))(v13, v3 + 200);
    }
  }

  return sub_1002FF09C((v3 + 168), v3 + 104);
}

uint64_t sub_1002FF050(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002FF09C(void *a1, uint64_t a2)
{
  v4 = a2;
  sub_1002FF100(a1, &v4);
  result = a1[3];
  if (result)
  {
    return (*(*result + 48))(result, a1 + 4);
  }

  return result;
}

void *sub_1002FF100(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E3F788;
  v5[1] = v3;
  v5[3] = v5;
  sub_1002FF37C(v5, a1);
  sub_1002FED00(v5);
  return a1;
}

uint64_t sub_1002FF204(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F788;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002FF238(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FF284(uint64_t a1, int *a2)
{
  v8 = 0;
  v2 = *a2;
  v3 = subscriber::asString();
  ctu::rest::detail::write_enum_string_value(&v8, v2, v3, v4);
  sub_10000501C(&__p, "/cc/prefs-nb/user_default_voice_slot");
  object = v8;
  if (v8)
  {
    xpc_retain(v8);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v7 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v8);
}

void sub_1002FF338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void *sub_1002FF37C(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1002FF5DC(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_1002FF6D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1002FF784(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3F828;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1002FF7BC(void *a1, xpc_object_t *a2)
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

  sub_1002FF8E0(v3, a2);
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

uint64_t sub_1002FF894(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1002FF8E0(uint64_t a1, xpc_object_t *a2)
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

  sub_10006DCAC(a1, *(a1 + 8));
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

    sub_100008EA4(&v11, object, 0);
    xpc_release(object[0]);
    v7 = v3;
    if (v3)
    {
      xpc_retain(v3);
    }

    else
    {
      v7 = xpc_null_create();
    }

    if (xpc_get_type(v3) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v3);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(object, &v7, count);
    xpc_release(v7);
    for (i = v12; i != object[1] || v11 != object[0]; i = ++v12)
    {
      v8 = i;
      v9 = 0;
      v7 = &v11;
      sub_10003EAD4(&v7, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        LODWORD(v8) = 11;
        v6 = v9;
        v7 = 0;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_1002FFB6C(&v7, &v6);
        xpc_release(v6);
        sub_1002FFD20(a1, &v7);
      }

      xpc_release(v9);
    }

    xpc_release(object[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_1002FFADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, xpc_object_t a12, xpc_object_t a13, uint64_t a14, xpc_object_t a15)
{
  xpc_release(object);
  xpc_release(a15);
  xpc_release(v15);
  _Unwind_Resume(a1);
}

void sub_1002FFB6C(int *a1, xpc_object_t *a2)
{
  v3 = *a2;
  v9 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v9 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v6 = &v9;
    v7 = "first";
    sub_100006354(&v6, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v10 = *a1;
      ctu::rest::detail::read_enum_string_value(&v10, &object, v5);
      *a1 = v10;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&object, 0, v5);
    }

    xpc_release(object);
    v6 = &v9;
    v7 = "second";
    sub_100006354(&v6, &object);
    rest::read_rest_value();
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_1002FFCCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, xpc_object_t a13)
{
  xpc_release(object);
  xpc_release(a13);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002FFD20(uint64_t a1, int *a2)
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
      v5 = *(v2 + 28);
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

uint64_t sub_1002FFE64(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F8A8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1002FFE90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1002FFEDC(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E3F928;
  v5[1] = v3;
  v5[3] = v5;
  sub_100300158(v5, a1);
  sub_1002FED80(v5);
  return a1;
}

uint64_t sub_1002FFFE0(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F928;
  a2[1] = v2;
  return result;
}

uint64_t sub_100300014(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100300060(uint64_t a1, BOOL *a2)
{
  v2 = xpc_BOOL_create(*a2);
  if (!v2)
  {
    v2 = xpc_null_create();
  }

  sub_10000501C(&__p, "/cc/props/provisioning_pco_switch");
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

void sub_100300110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  xpc_release(object);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v15);
  _Unwind_Resume(a1);
}

void *sub_100300158(void *result, void *a2)
{
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        memset(v5, 0, sizeof(v5));
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1003003B8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_100300434(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3F9B8;
  a2[1] = v2;
  return result;
}

uint64_t sub_100300468(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003004B4(uint64_t *a1, xpc_object_t *a2)
{
  v2 = *a1;
  v4 = 0;
  v5 = 0;
  v6 = 0;
  sub_10011D868(&v4, a2);
  memset(v3, 0, sizeof(v3));
  sub_10027E628(v3, v4, v5, 0x2E8BA2E8BA2E8BA3 * ((v5 - v4) >> 3));
  sub_101131F94(v2, v3);
  v7 = v3;
  sub_100112048(&v7);
  v7 = &v4;
  sub_100112048(&v7);
}

void sub_100300548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  *(v14 - 24) = v13;
  sub_100112048((v14 - 24));
  *(v14 - 24) = &a13;
  sub_100112048((v14 - 24));
  _Unwind_Resume(a1);
}

void *sub_100300578(void *a1)
{
  *a1 = off_101E3FA38;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003005C4(void *a1)
{
  *a1 = off_101E3FA38;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003006A4(uint64_t result, uint64_t a2)
{
  *a2 = off_101E3FA38;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003006E4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1003006F4(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100300734(void *a1)
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
        DataPlanManagerBootstrap::handleDumpState_sync(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1003007BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100300808(void *a1)
{
  *a1 = off_101E3FAB8;
  v2 = a1[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100300854(void *a1)
{
  *a1 = off_101E3FAB8;
  v1 = a1[4];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100300934(uint64_t result, uint64_t a2)
{
  *a2 = off_101E3FAB8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 32);
  *(a2 + 24) = *(result + 24);
  *(a2 + 32) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100300974(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100300984(void *__p)
{
  v2 = __p[4];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1003009C4(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v16 = *v4;
    ctu::rest::detail::read_enum_string_value(&v16, a2, v6);
    *v4 = v16;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[4];
  if (v9)
  {
    v10 = a1[2];
    v11 = std::__shared_weak_count::lock(v9);
    if (v11)
    {
      v12 = v11;
      if (a1[3])
      {
        v13 = *(v10 + 640);
        if (v13)
        {
          if (*(v10 + 240))
          {
            v14 = *(v10 + 64);
            if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
            {
              v15 = subscriber::asString();
              v16 = 136315138;
              v17 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I MSIM config changed, %s", &v16, 0xCu);
              v13 = *(v10 + 640);
            }

            (*(*v13 + 744))(v13);
          }
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_100300B7C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100300BC8(_OWORD *a1, uint64_t a2)
{
  *a1 = 0u;
  a1[1] = 0u;
  sub_100300C20(a1, a2);
}

void sub_100300C00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  sub_100084C48((v10 + 24));
  a10 = v10;
  sub_1001018AC(&a10);
  _Unwind_Resume(a1);
}

void sub_100300C20(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300C8C(a1 + 24, &object);
}

void sub_100300C8C(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300D24(v5, &object);
}

void sub_100300D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, void (**a13)(void, void, uint64_t))
{
  sub_100084C48(&a13);
  dispatch_release(object);
  _Unwind_Resume(a1);
}

void sub_100300D24(void *a1, uint64_t a2)
{
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300D98(a1, &object);
}

void sub_100300D98(void *a1, uint64_t a2)
{
  *a1 = 0;
  object = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 24);
  dispatch_retain(object);
  sub_100300E0C(a1, &object);
}

void sub_100300E0C(uint64_t a1, uint64_t a2)
{
  object = *a2;
  v3 = *(a2 + 8);
  v4 = *(a2 + 24);
  dispatch_retain(object);
  sub_100241DB8(boost::function1<void,BOOL>::assign_to<ctu::DispatchSlot<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>>(ctu::DispatchSlot<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>)::stored_vtable, &object);
}

uint64_t boost::detail::function::functor_manager<ctu::DispatchSlot<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>>::manage(uint64_t result, uint64_t a2, int a3)
{
  if (a3 != 4)
  {
    return sub_100300EC4(result, a2, a3);
  }

  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_100300EC4(uint64_t result, uint64_t a2, int a3)
{
  v4 = result;
  if (a3 <= 1)
  {
    if (!a3)
    {
      operator new();
    }

    if (a3 == 1)
    {
      *a2 = *result;
      *result = 0;
      return result;
    }

    goto LABEL_10;
  }

  if (a3 == 2)
  {
    if (*a2)
    {
      dispatch_release(**a2);
      operator delete();
    }
  }

  else
  {
    if (a3 != 3)
    {
LABEL_10:
      *(a2 + 8) = 0;
      return result;
    }

    result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
    if (result == (0x80000001017EF6D8 & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x80000001017EF6D8 & 0x7FFFFFFFFFFFFFFFLL)), !result))
    {
      *a2 = *v4;
      return result;
    }
  }

  *a2 = 0;
  return result;
}

void sub_100300FE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  v1 = boost::function1<void,BOOL>::assign_to<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>(boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>)::stored_vtable + 1;
  operator new();
}

uint64_t boost::detail::function::functor_manager<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>>::manage(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v4 = result;
  if (a3 > 1)
  {
    if (a3 != 2)
    {
      if (a3 != 3)
      {
LABEL_2:
        *(a2 + 8) = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == (0x80000001017EF75ELL & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, (0x80000001017EF75ELL & 0x7FFFFFFFFFFFFFFFLL)), !result))
      {
        *a2 = v4;
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    v5 = *result;
    *(a2 + 16) = *(result + 16);
    *a2 = v5;
  }

  return result;
}

uint64_t boost::detail::function::void_function_obj_invoker1<boost::_bi::bind_t<void,boost::_mfi::mf1<void,DataPlanManagerBootstrap,BOOL>,boost::_bi::list2<boost::_bi::value<DataPlanManagerBootstrap*>,boost::arg<1>>>,void,BOOL>::invoke(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *a1;
  v3 = (*(a1 + 16) + (v1 >> 1));
  if (v1)
  {
    return (*(*v3 + v2))();
  }

  else
  {
    return v2(v3);
  }
}

void sub_100301320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1003013D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3FB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100301408(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003014C4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E3FBF8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1003014F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100301630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1003016E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3FC78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100301718(void *a1, xpc_object_t *a2)
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

uint64_t sub_100301810(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1003018D0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E3FCF8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_100301900(uint64_t a1, xpc_object_t *a2)
{
  sub_10010A62C(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  DataPlanManagerBootstrap::maybeStartPlanExpiryDetection_sync(v3);
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_1000B2128(&v13, *(v3 + 216), *(v3 + 224), 0xCF3CF3CF3CF3CF3DLL * ((*(v3 + 224) - *(v3 + 216)) >> 3));
  if (v14 != v13 && *(v13 + 8) == 5 && *(v3 + 688) == 1)
  {
    ServiceMap = Registry::getServiceMap(*(v3 + 72));
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
    v16 = v6;
    v10 = sub_100009510(&v5[1].__m_.__sig, &v16);
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
        if (!v12)
        {
LABEL_16:
          sub_100004A34(v11);
          goto LABEL_17;
        }
      }

      else
      {
        std::mutex::unlock(v5);
        if (!v12)
        {
          goto LABEL_17;
        }
      }

      if (MaxDataRateInterface::getUserPreferenceEnableLTE(v12) == 2)
      {
        sub_100083E9C(&event::registration::setLTEEnabled, 1);
      }

      *(v3 + 688) = 0;
      if (v11)
      {
        goto LABEL_16;
      }
    }

    else
    {
      std::mutex::unlock(v5);
    }
  }

LABEL_17:
  v16 = &v13;
  sub_1000B2AF8(&v16);
}

void sub_100301A84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_100301AB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100301BA0(void *a1, uint64_t a2, NSObject **a3, uint64_t *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3FD78;
  sub_100301C98((a1 + 3), a2, a3, a4);
  return a1;
}

void sub_100301C1C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3FD78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100301C98(uint64_t a1, uint64_t a2, NSObject **a3, uint64_t *a4)
{
  v7 = *a3;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a4;
  v9 = a4[1];
  v11[0] = v8;
  v11[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  DataPlanManagerBootstrap::DataPlanManagerBootstrap(a1, a2, &object, v11);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (object)
  {
    dispatch_release(object);
  }

  return a1;
}

void sub_100301D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  if (v12)
  {
    sub_100004A34(v12);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100301DD0(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3FDC8;
  CellularPlanSettingsDevice::CellularPlanSettingsDevice(a1 + 3);
  return a1;
}

void sub_100301E4C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3FDC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_100301F44(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E3FE18;
  sub_10030203C(a1 + 3, a2, a3);
  return a1;
}

void sub_100301FC0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E3FE18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10030203C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2[1];
  v9 = *a2;
  v10 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = a3[1];
  v7 = *a3;
  v8 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100BE20A4(a1, &v9, &v7);
  if (v8)
  {
    sub_100004A34(v8);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  return a1;
}

void sub_1003020C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1003020E4(std::mutex *this, uint64_t *a2)
{
  v4 = "31CellularPlanControllerInterface";
  if (("31CellularPlanControllerInterface" & 0x8000000000000000) != 0)
  {
    v5 = ("31CellularPlanControllerInterface" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t sub_1003021C0(std::mutex *this, uint64_t *a2)
{
  v4 = "22CellularPlanController";
  if (("22CellularPlanController" & 0x8000000000000000) != 0)
  {
    v5 = ("22CellularPlanController" & 0x7FFFFFFFFFFFFFFFLL);
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

uint64_t sub_1003022AC(uint64_t result, uint64_t a2)
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

void sub_1003022C8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t *sub_1003022D8(unsigned __int8 **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 656);
  if (v2)
  {
    (*(*v2 + 208))(v2, v1 + 8, v1[32]);
  }

  else
  {
    v3 = *(*v1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fCellularPlanControllerPhone is not available!", buf, 2u);
    }
  }

  sub_1003023A8(&v6);
  return sub_1000049E0(&v5);
}

void sub_10030238C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1003023A8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1003023A8(uint64_t *result)
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

uint64_t *sub_100302400(unsigned __int8 **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *(*v1 + 656);
  if (v2)
  {
    (*(*v2 + 216))(v2, v1 + 8, v1[32]);
  }

  else
  {
    v3 = *(*v1 + 64);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I fCellularPlanControllerPhone is not available!", buf, 2u);
    }
  }

  sub_1003023A8(&v6);
  return sub_1000049E0(&v5);
}

void sub_1003024B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1003023A8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1003024D0(uint64_t a1)
{
  *a1 = off_101E3FEA0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void sub_100302520(uint64_t a1)
{
  *a1 = off_101E3FEA0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  operator delete();
}

char *sub_100302630(char *result, uint64_t a2)
{
  *a2 = off_101E3FEA0;
  *(a2 + 8) = *(result + 8);
  if (result[47] < 0)
  {
    return sub_100005F2C((a2 + 24), *(result + 3), *(result + 4));
  }

  v2 = *(result + 24);
  *(a2 + 40) = *(result + 5);
  *(a2 + 24) = v2;
  return result;
}

void sub_100302680(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }
}

void sub_100302694(void **__p)
{
  if (*(__p + 47) < 0)
  {
    operator delete(__p[3]);
  }

  operator delete(__p);
}

void sub_1003026D8(uint64_t a1, uint64_t a2)
{
  v10 = *(a2 + 16);
  *__p = *a2;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  v2 = *(a1 + 47);
  if (v2 >= 0)
  {
    v3 = *(a1 + 47);
  }

  else
  {
    v3 = *(a1 + 32);
  }

  v4 = HIBYTE(v10);
  v5 = SHIBYTE(v10);
  if (v10 < 0)
  {
    v4 = __p[1];
  }

  if (v3 == v4)
  {
    v6 = *(a1 + 8);
    v7 = v2 >= 0 ? (a1 + 24) : *(a1 + 24);
    v8 = v10 >= 0 ? __p : __p[0];
    if (!memcmp(v7, v8, v3))
    {
      v11[0] = 0;
      v11[1] = 0;
      sub_100004AA0(v11, (v6 + 32));
      operator new();
    }
  }

  if (v5 < 0)
  {
    operator delete(__p[0]);
  }
}

uint64_t sub_10030284C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100302898(DataPlanManagerBootstrap ***a1)
{
  v1 = a1;
  DataPlanManagerBootstrap::processPSNetworkReject_sync(**a1, *(*a1 + 8), *(*a1 + 12));
  operator delete();
}

id sub_100302944(uint64_t a1)
{
  v1 = [NSURL URLWithString:a1];
  v2 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [v2 openSensitiveURL:v1 withOptions:0];

  return v3;
}

uint64_t sub_1003029DC(uint64_t a1, NSObject **a2, void *a3, void *a4)
{
  *a1 = off_101E3FFB0;
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "cp.consent");
  sub_100302B04(v8, a2, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101E3FF20;
  v9 = a3[1];
  *(a1 + 48) = *a3;
  *(a1 + 56) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = a4[1];
  *(a1 + 64) = *a4;
  *(a1 + 72) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 16), 1uLL, memory_order_relaxed);
  }

  v11 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 80) = dispatch_queue_create("cp.consent", v11);
  *(a1 + 88) = 0;
  *(a1 + 416) = 0;
  return a1;
}

void *sub_100302B04(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100302B6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_100302B94(uint64_t a1)
{
  *a1 = off_101E3FF20;
  if (*(a1 + 416) == 1)
  {
    sub_100305D48(a1 + 88);
  }

  v2 = *(a1 + 80);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_100302C20(uint64_t a1)
{
  sub_100302B94(a1);

  operator delete();
}

uint64_t sub_100302C58(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t *a6, __int128 *a7, __int128 *a8, __int128 *a9, char a10, uint64_t *a11)
{
  if (*(a1 + 416) != 1)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(buf, *a2, *(a2 + 8));
    }

    else
    {
      *buf = *a2;
      *&buf[16] = *(a2 + 16);
    }

    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v31, *a3, *(a3 + 1));
    }

    else
    {
      v31 = *a3;
      v32 = *(a3 + 2);
    }

    v33 = *a5;
    if (*(a5 + 39) < 0)
    {
      sub_100005F2C(&v34, *(a5 + 16), *(a5 + 24));
    }

    else
    {
      v34 = *(a5 + 16);
      v35 = *(a5 + 32);
    }

    v36 = *(a5 + 40);
    memset(v37, 0, sizeof(v37));
    sub_10004EFD0(v37, *a6, a6[1], 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3));
    v38 = *a4;
    v39 = *a7;
    if (*(a8 + 23) < 0)
    {
      sub_100005F2C(&v40, *a8, *(a8 + 1));
    }

    else
    {
      v40 = *a8;
      v41 = *(a8 + 2);
    }

    if (*(a9 + 23) < 0)
    {
      sub_100005F2C(&v42, *a9, *(a9 + 1));
    }

    else
    {
      v42 = *a9;
      v43 = *(a9 + 2);
    }

    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = a10;
    memset(v48, 0, sizeof(v48));
    sub_10004EFD0(v48, *a11, a11[1], 0xAAAAAAAAAAAAAAABLL * ((a11[1] - *a11) >> 3));
    v49 = 0;
    sub_10030302C(a1 + 88, buf);
    sub_100305D48(buf);
    return 1;
  }

  if (sub_1013F36E8(a1 + 136, a5) && *(a1 + 224) == *a7 && *(a1 + 232) == *(a7 + 1))
  {
    v26 = *(a1 + 40);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a5 + 16);
      v28 = a5 + 16;
      v27 = v29;
      if (*(v28 + 23) >= 0)
      {
        v27 = v28;
      }

      *buf = 136315138;
      *&buf[4] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I ignore duplicate consent request:%s", buf, 0xCu);
    }

    return 1;
  }

  v15 = *(a1 + 40);
  v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v16)
  {
    v18 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v18 = *v18;
    }

    v21 = *(a5 + 16);
    v20 = a5 + 16;
    v19 = v21;
    if (*(v20 + 23) >= 0)
    {
      v19 = v20;
    }

    *buf = 136315394;
    *&buf[4] = v18;
    *&buf[12] = 2080;
    *&buf[14] = v19;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#E consent ongoing. iccid:%s, iccid: %s", buf, 0x16u);
    return 0;
  }

  return result;
}

void sub_100302F7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *__p, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a44 < 0)
  {
    operator delete(__p);
  }

  sub_1000087B4(&a10);
  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10030302C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 328) == 1)
  {
    sub_1003057DC(a1, a2);
  }

  else
  {
    v4 = *a2;
    *(a1 + 16) = *(a2 + 16);
    *a1 = v4;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 48) = *(a2 + 48);
    v6 = *(a2 + 64);
    *(a1 + 80) = *(a2 + 80);
    *(a1 + 64) = v6;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a1 + 88) = *(a2 + 88);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0;
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a2 + 96) = 0;
    *(a2 + 104) = 0;
    *(a2 + 112) = 0;
    v7 = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = v7;
    v8 = *(a2 + 152);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 152) = v8;
    *(a2 + 160) = 0;
    *(a2 + 168) = 0;
    *(a2 + 152) = 0;
    v9 = *(a2 + 176);
    *(a1 + 192) = *(a2 + 192);
    *(a1 + 176) = v9;
    *(a2 + 184) = 0;
    *(a2 + 192) = 0;
    *(a2 + 176) = 0;
    sub_100305D04((a1 + 200), a2 + 200);
    *(a1 + 288) = *(a2 + 288);
    *(a1 + 304) = 0;
    *(a1 + 312) = 0;
    *(a1 + 296) = 0;
    *(a1 + 296) = *(a2 + 296);
    *(a1 + 304) = *(a2 + 304);
    *(a2 + 304) = 0;
    *(a2 + 312) = 0;
    *(a2 + 296) = 0;
    *(a1 + 320) = *(a2 + 320);
    *(a1 + 328) = 1;
  }

  return a1;
}

uint64_t sub_10030316C(uint64_t a1)
{
  if (*(a1 + 416))
  {
    if (*(a1 + 408) == 1)
    {
      v2 = *(a1 + 40);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        v3 = (a1 + 152);
        if (*(a1 + 175) < 0)
        {
          v3 = *v3;
        }

        v10 = 136315138;
        v11 = v3;
        v4 = "#I ignore duplicate transfer consent request:%s";
        v5 = v2;
        v6 = 12;
        goto LABEL_9;
      }
    }

    else
    {
      *(a1 + 408) = 1;
      if ((sub_1003032D0(a1) & 1) == 0)
      {
        v8 = *(a1 + 40);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E display user consent failure", &v10, 2u);
        }

        sub_100304624(a1, 4);
      }
    }
  }

  else
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      v4 = "#E inconsistent state. no transfer context";
      v5 = v7;
      v6 = 2;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, &v10, v6);
    }
  }

  return 1;
}

uint64_t sub_1003032D0(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
  buf[0].__r_.__value_.__r.__words[0] = v4;
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
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#E invalid localization", buf, 2u);
    }

    goto LABEL_41;
  }

LABEL_11:
  v13 = Registry::getServiceMap(*(a1 + 48));
  v14 = v13;
  if ((v15 & 0x8000000000000000) != 0)
  {
    v16 = (v15 & 0x7FFFFFFFFFFFFFFFLL);
    v17 = 5381;
    do
    {
      v15 = v17;
      v18 = *v16++;
      v17 = (33 * v17) ^ v18;
    }

    while (v18);
  }

  std::mutex::lock(v13);
  buf[0].__r_.__value_.__r.__words[0] = v15;
  v19 = sub_100009510(&v14[1].__m_.__sig, buf);
  if (!v19)
  {
    v20 = 0;
LABEL_20:
    std::mutex::unlock(v14);
    v21 = 0;
    v22 = 1;
    if (!v20)
    {
      goto LABEL_17;
    }

    goto LABEL_21;
  }

  v20 = v19[3];
  v21 = v19[4];
  if (!v21)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v14);
  atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v21);
  v22 = 0;
  if (!v20)
  {
LABEL_17:
    v23 = *(a1 + 40);
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_39;
    }

    LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
    v24 = "#E invalid gestaltUtility";
    goto LABEL_38;
  }

LABEL_21:
  if (*(a1 + 416))
  {
    cf = 0;
    format = 0;
    v79 = 0;
    v80 = 0;
    v77 = 0;
    theString = CFStringCreateMutable(kCFAllocatorDefault, 0);
    v75 = 0;
    v76 = 0;
    v26 = *(a1 + 377);
    if (v26 != 2)
    {
      if (v26 != 1)
      {
        goto LABEL_120;
      }

      v70 = *(a1 + 184);
      v71 = *(a1 + 192);
      v27 = *(a1 + 384);
      if (v27 == *(a1 + 392))
      {
        (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_CELLULAR_PLAN", 0);
        MutableCopy = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, appendedString.__r_.__value_.__l.__data_);
        v42 = theString;
        theString = MutableCopy;
        buf[0].__r_.__value_.__r.__words[0] = v42;
        sub_100305E28(&buf[0].__r_.__value_.__l.__data_);
      }

      else
      {
        v28 = 0;
        v29 = 0;
        v30 = kCBMessageLocalizationTable;
        while (1)
        {
          appendedString.__r_.__value_.__r.__words[0] = 0;
          v31 = (v27 + v28);
          if (*(v27 + v28 + 23) < 0)
          {
            v31 = *v31;
          }

          appendedString.__r_.__value_.__r.__words[0] = CFStringCreateWithCString(kCFAllocatorDefault, v31, 0x8000100u);
          if (sub_100305550(a1))
          {
            StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", @"\u202A%@\u202C", 0, appendedString.__r_.__value_.__r.__words[0]);
            v33 = appendedString.__r_.__value_.__r.__words[0];
            appendedString.__r_.__value_.__r.__words[0] = StringWithValidatedFormat;
            buf[0].__r_.__value_.__r.__words[0] = v33;
            sub_100005978(&buf[0].__r_.__value_.__l.__data_);
          }

          CFStringAppend(theString, appendedString.__r_.__value_.__l.__data_);
          v34 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 392) - *(a1 + 384)) >> 3);
          if (v29 == v34 - 1)
          {
            break;
          }

          buf[0].__r_.__value_.__r.__words[0] = 0;
          if (v29 == v34 - 2)
          {
            (*(*v10 + 40))(buf, v10, v30, @"AND", 0);
          }

          else
          {
            (*(*v10 + 40))(buf, v10, v30, @"COMMA", 0);
          }

          CFStringAppend(theString, buf[0].__r_.__value_.__l.__data_);
          sub_100005978(&buf[0].__r_.__value_.__l.__data_);
          sub_100005978(&appendedString.__r_.__value_.__l.__data_);
          ++v29;
          v27 = *(a1 + 384);
          v28 += 24;
          if (v29 >= 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 392) - v27) >> 3))
          {
            goto LABEL_53;
          }
        }
      }

      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
LABEL_53:
      isIPad = GestaltUtilityInterface::isIPad(v20);
      v44 = 0xAAAAAAAAAAAAAAABLL * ((v71 - v70) >> 3);
      v45 = kCBMessageLocalizationTable;
      if (isIPad)
      {
        if (v44 < 2)
        {
          (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_TITLE_PAD", 0);
LABEL_68:
          buf[0].__r_.__value_.__r.__words[0] = cf;
          cf = appendedString.__r_.__value_.__r.__words[0];
          goto LABEL_69;
        }

        (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_MULTIPLAN_PAD_TITLE", 0);
      }

      else
      {
        if (v44 < 2)
        {
          (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_TITLE", 0);
          goto LABEL_68;
        }

        (*(*v10 + 40))(&appendedString, v10, kCBMessageLocalizationTable, @"TRANSFER_SOURCE_MULTIPLAN_TITLE", 0);
      }

      buf[0].__r_.__value_.__r.__words[0] = format;
      format = appendedString.__r_.__value_.__r.__words[0];
LABEL_69:
      appendedString.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
      if (GestaltUtilityInterface::isIPad(v20))
      {
        if (v44 >= 2)
        {
          (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_MULTIPLAN_PROMPT_PAD", 0);
        }

        else
        {
          (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_PROMPT_PAD", 0);
        }
      }

      else if (v44 >= 2)
      {
        (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_MULTIPLAN_PROMPT", 0);
      }

      else
      {
        (*(*v10 + 40))(&appendedString, v10, v45, @"TRANSFER_REQUEST_PROMPT", 0);
      }

      buf[0].__r_.__value_.__r.__words[0] = v80;
      v80 = appendedString.__r_.__value_.__r.__words[0];
      appendedString.__r_.__value_.__r.__words[0] = 0;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
      if (format)
      {
        v74 = 0;
        std::to_string(&v73, v44);
        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&appendedString, v73.__r_.__value_.__l.__data_, v73.__r_.__value_.__l.__size_);
        }

        else
        {
          appendedString = v73;
        }

        v83 = 0;
        if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(buf, appendedString.__r_.__value_.__l.__data_, appendedString.__r_.__value_.__l.__size_);
        }

        else
        {
          buf[0] = appendedString;
        }

        v85 = 0;
        if (ctu::cf::convert_copy())
        {
          v55 = v83;
          v83 = v85;
          v86[0] = v55;
          sub_100005978(v86);
        }

        if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf[0].__r_.__value_.__l.__data_);
        }

        v74 = v83;
        v83 = 0;
        sub_100005978(&v83);
        if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(appendedString.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v73.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v73.__r_.__value_.__l.__data_);
        }

        if (v74)
        {
          v56 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, v74);
          v57 = cf;
          cf = v56;
          buf[0].__r_.__value_.__r.__words[0] = v57;
          sub_100005978(&buf[0].__r_.__value_.__l.__data_);
        }

        sub_100005978(&v74);
      }

      appendedString.__r_.__value_.__r.__words[0] = 0;
      sub_100060DE8(&appendedString, &theString);
      if (v80 && appendedString.__r_.__value_.__r.__words[0])
      {
        if (sub_100305550(a1))
        {
          v58 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", @"\u202B%@\u202C", 0, appendedString.__r_.__value_.__r.__words[0]);
          v59 = appendedString.__r_.__value_.__r.__words[0];
          appendedString.__r_.__value_.__r.__words[0] = v58;
          buf[0].__r_.__value_.__r.__words[0] = v59;
          sub_100005978(&buf[0].__r_.__value_.__l.__data_);
        }

        v60 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", v80, 0, appendedString.__r_.__value_.__r.__words[0]);
        v61 = v79;
        v79 = v60;
        buf[0].__r_.__value_.__r.__words[0] = v61;
        sub_100005978(&buf[0].__r_.__value_.__l.__data_);
        if (sub_100305550(a1))
        {
          v62 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", @"\u202B%@\u202C", 0, v79);
          v63 = v79;
          v79 = v62;
          buf[0].__r_.__value_.__r.__words[0] = v63;
          sub_100005978(&buf[0].__r_.__value_.__l.__data_);
        }
      }

      (*(*v10 + 40))(v86, v10, v45, @"TRANSFER", 0);
      buf[0].__r_.__value_.__r.__words[0] = v76;
      v76 = v86[0];
      v86[0] = 0;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      sub_100005978(v86);
      (*(*v10 + 40))(v86, v10, v45, @"CANCEL", 0);
      buf[0].__r_.__value_.__r.__words[0] = v75;
      v75 = v86[0];
      v86[0] = 0;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      sub_100005978(v86);
      sub_100005978(&appendedString.__r_.__value_.__l.__data_);
      goto LABEL_120;
    }

    v86[0] = 0;
    appendedString.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&appendedString, "A data plan purchase was requested by %@.", 0x8000100, kCFAllocatorDefault, v25))
    {
      v36 = v86[0];
      v86[0] = appendedString.__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[0] = v36;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
    }

    v85 = v86[0];
    v86[0] = 0;
    sub_100005978(v86);
    buf[0].__r_.__value_.__r.__words[0] = format;
    format = v85;
    v85 = 0;
    sub_100005978(&buf[0].__r_.__value_.__l.__data_);
    sub_100005978(&v85);
    v86[0] = 0;
    appendedString.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&appendedString, "Another Apple device wants to use this iPhone to make a purchase. If you did not request this, don't allow the purchase.", 0x8000100, kCFAllocatorDefault, v37))
    {
      v38 = v86[0];
      v86[0] = appendedString.__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[0] = v38;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
    }

    v85 = v86[0];
    v86[0] = 0;
    sub_100005978(v86);
    buf[0].__r_.__value_.__r.__words[0] = v79;
    v79 = v85;
    v85 = 0;
    sub_100005978(&buf[0].__r_.__value_.__l.__data_);
    sub_100005978(&v85);
    v40 = (a1 + 264);
    if (*(a1 + 287) < 0)
    {
      v46 = *(a1 + 272);
      if (v46)
      {
        sub_100005F2C(&__p, *v40, v46);
        goto LABEL_63;
      }
    }

    else if (*(a1 + 287))
    {
      *&__p.__r_.__value_.__l.__data_ = *v40;
      __p.__r_.__value_.__r.__words[2] = *(a1 + 280);
LABEL_63:
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&appendedString, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        appendedString = __p;
      }

      v83 = 0;
      if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(buf, appendedString.__r_.__value_.__l.__data_, appendedString.__r_.__value_.__l.__size_);
      }

      else
      {
        buf[0] = appendedString;
      }

      v85 = 0;
      if (ctu::cf::convert_copy())
      {
        v49 = v83;
        v83 = v85;
        v86[0] = v49;
        sub_100005978(v86);
      }

      if (SHIBYTE(buf[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf[0].__r_.__value_.__l.__data_);
      }

      v74 = v83;
      v83 = 0;
      sub_100005978(&v83);
      if (SHIBYTE(appendedString.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(appendedString.__r_.__value_.__l.__data_);
      }

      buf[0].__r_.__value_.__r.__words[0] = v77;
      v77 = v74;
      v74 = 0;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      sub_100005978(&v74);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

LABEL_91:
      if (format)
      {
        v50 = CFStringCreateStringWithValidatedFormat(kCFAllocatorDefault, 0, @"%@", format, 0, v77);
        v51 = cf;
        cf = v50;
        buf[0].__r_.__value_.__r.__words[0] = v51;
        sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      }

      v86[0] = 0;
      appendedString.__r_.__value_.__r.__words[0] = 0;
      if (ctu::cf::convert_copy(&appendedString, "Purchase", 0x8000100, kCFAllocatorDefault, v48))
      {
        v52 = v86[0];
        v86[0] = appendedString.__r_.__value_.__l.__data_;
        buf[0].__r_.__value_.__r.__words[0] = v52;
        sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      }

      v85 = v86[0];
      v86[0] = 0;
      sub_100005978(v86);
      buf[0].__r_.__value_.__r.__words[0] = v76;
      v76 = v85;
      v85 = 0;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      sub_100005978(&v85);
      v86[0] = 0;
      appendedString.__r_.__value_.__r.__words[0] = 0;
      if (ctu::cf::convert_copy(&appendedString, "Don't Allow", 0x8000100, kCFAllocatorDefault, v53))
      {
        v54 = v86[0];
        v86[0] = appendedString.__r_.__value_.__l.__data_;
        buf[0].__r_.__value_.__r.__words[0] = v54;
        sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      }

      v85 = v86[0];
      v86[0] = 0;
      sub_100005978(v86);
      buf[0].__r_.__value_.__r.__words[0] = v75;
      v75 = v85;
      v85 = 0;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
      sub_100005978(&v85);
LABEL_120:
      if (!cf || !v79 || !v76 || !v75)
      {
        v64 = *(a1 + 40);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#E localization string does not exist", buf, 2u);
        }
      }

      v65 = *(a1 + 72);
      if (v65)
      {
        v66 = std::__shared_weak_count::lock(v65);
        if (v66)
        {
          v67 = v66;
          v68 = *(a1 + 64);
          if (v68)
          {
            (*(*v68 + 32))(v68);
          }

          sub_100004A34(v67);
        }
      }

      if (cf)
      {
        CFRetain(cf);
      }

      if (v79)
      {
        CFRetain(v79);
      }

      if (v76)
      {
        CFRetain(v76);
      }

      if (v75)
      {
        CFRetain(v75);
      }

      sub_100004AA0(&appendedString, (a1 + 8));
      size = appendedString.__r_.__value_.__l.__size_;
      if (appendedString.__r_.__value_.__l.__size_)
      {
        atomic_fetch_add_explicit((appendedString.__r_.__value_.__l.__size_ + 16), 1uLL, memory_order_relaxed);
        sub_100004A34(size);
      }

      v86[4] = 0;
      operator new();
    }

    v86[0] = 0;
    appendedString.__r_.__value_.__r.__words[0] = 0;
    if (ctu::cf::convert_copy(&appendedString, "your iPad", 0x8000100, kCFAllocatorDefault, v39))
    {
      v47 = v86[0];
      v86[0] = appendedString.__r_.__value_.__l.__data_;
      buf[0].__r_.__value_.__r.__words[0] = v47;
      sub_100005978(&buf[0].__r_.__value_.__l.__data_);
    }

    v85 = v86[0];
    v86[0] = 0;
    sub_100005978(v86);
    buf[0].__r_.__value_.__r.__words[0] = v77;
    v77 = v85;
    v85 = 0;
    sub_100005978(&buf[0].__r_.__value_.__l.__data_);
    sub_100005978(&v85);
    goto LABEL_91;
  }

  v23 = *(a1 + 40);
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_39;
  }

  LOWORD(buf[0].__r_.__value_.__l.__data_) = 0;
  v24 = "#E inconsistent state, transfer context is invalid";
LABEL_38:
  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
LABEL_39:
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v21);
  }

LABEL_41:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }

  return 0;
}

void sub_100304354(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, std::__shared_weak_count *a13, char a14, __int16 a15, char a16, dispatch_object_t object, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, const void *a33, const void *a34, const void *a35, const void *a36, const void *a37, const void *a38, const void *a39, const void *a40, const void *a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  sub_100005978(&a41);
  if (a47 < 0)
  {
    operator delete(__p);
  }

  if (a31 < 0)
  {
    operator delete(a26);
  }

  sub_100005978(&a33);
  sub_100005978(&a34);
  sub_100005978(&a35);
  sub_100305E28(&a36);
  sub_100005978(&a37);
  sub_100005978(&a38);
  sub_100005978(&a39);
  sub_100005978(&a40);
  if ((a14 & 1) == 0)
  {
    sub_100004A34(a13);
  }

  if ((a16 & 1) == 0)
  {
    sub_100004A34(v47);
  }

  _Unwind_Resume(a1);
}

void sub_100304624(uint64_t a1, char a2)
{
  if (*(a1 + 416) == 1)
  {
    *(a1 + 408) = 0;
    *(a1 + 376) = a2;
    v3 = *(a1 + 72);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 64);
        if (v6 && *(a1 + 377) == 1)
        {
          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(&__dst, *(a1 + 88), *(a1 + 96));
          }

          else
          {
            __dst = *(a1 + 88);
            v16 = *(a1 + 104);
          }

          if (*(a1 + 135) < 0)
          {
            sub_100005F2C(v13, *(a1 + 112), *(a1 + 120));
          }

          else
          {
            *v13 = *(a1 + 112);
            v14 = *(a1 + 128);
          }

          if (*(a1 + 175) < 0)
          {
            sub_100005F2C(v11, *(a1 + 152), *(a1 + 160));
          }

          else
          {
            *v11 = *(a1 + 152);
            v12 = *(a1 + 168);
          }

          v7 = *(a1 + 208);
          v8 = *(a1 + 216);
          if (*(a1 + 263) < 0)
          {
            sub_100005F2C(__p, *(a1 + 240), *(a1 + 248));
          }

          else
          {
            *__p = *(a1 + 240);
            v10 = *(a1 + 256);
          }

          (*(*v6 + 16))(v6, &__dst, v13, v11, a1 + 184, v7, v8);
          if (SHIBYTE(v10) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11[0]);
          }

          if (SHIBYTE(v14) < 0)
          {
            operator delete(v13[0]);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(__dst);
          }
        }

        sub_100004A34(v5);
      }
    }
  }
}

void sub_1003047F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (*(v33 - 89) < 0)
  {
    operator delete(*(v33 - 112));
  }

  sub_100004A34(v32);
  _Unwind_Resume(a1);
}

BOOL sub_100304868(uint64_t a1, void *a2, void *a3)
{
  if ((*(a1 + 416) & 1) == 0)
  {
    v17 = *(a1 + 40);
    result = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#E inconsistent state. no transfer context", buf, 2u);
    return 0;
  }

  v5 = a2;
  v6 = (a1 + 152);
  v7 = *(a1 + 175);
  if (v7 >= 0)
  {
    v8 = *(a1 + 175);
  }

  else
  {
    v8 = *(a1 + 160);
  }

  v9 = *(a2 + 23);
  v10 = v9;
  if ((v9 & 0x80u) != 0)
  {
    v9 = a2[1];
  }

  if (v8 == v9)
  {
    if (v7 >= 0)
    {
      v11 = (a1 + 152);
    }

    else
    {
      v11 = *v6;
    }

    if (v10 < 0)
    {
      a2 = *a2;
    }

    if (!memcmp(v11, a2, v8) && *(a1 + 224) == *a3 && *(a1 + 232) == a3[1])
    {
      *(a1 + 408) = 0;
      sub_100304AA0(a1);
      return 1;
    }
  }

  v13 = *(a1 + 40);
  result = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (result)
  {
    if (v10 < 0)
    {
      v5 = *v5;
    }

    if (v7 < 0)
    {
      v6 = *v6;
    }

    sCardSerialNumberAsString();
    sCardSerialNumberAsString();
    v15 = &v20;
    if (v21 < 0)
    {
      v15 = v20;
    }

    if (v19 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315906;
    v23 = v5;
    v24 = 2080;
    v25 = v6;
    v26 = 2080;
    v27 = v15;
    v28 = 2080;
    v29 = p_p;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#E transfer info not matched. iccid - %s vs %s(ctx). eid - %s vs %s(ctx)", buf, 0x2Au);
    if (v19 < 0)
    {
      operator delete(__p);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }

    return 0;
  }

  return result;
}

void sub_100304A7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100304AA0(uint64_t a1)
{
  if (*(a1 + 416))
  {
    *(a1 + 408) = 0;
    if (*(a1 + 368) == 1)
    {
      sub_10073A51C((a1 + 288));

      sub_100305A7C((a1 + 288));
    }
  }

  else
  {
    v2 = *(a1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I invalid transfer context", v3, 2u);
    }
  }
}

void sub_100304B48(uint64_t a1)
{
  if ((*(a1 + 416) & 1) == 0)
  {
    v7 = *(a1 + 40);
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v4 = "#E inconsistent state. no transfer context";
    v5 = v7;
    v6 = 2;
    goto LABEL_9;
  }

  if (*(a1 + 409) == 1)
  {
    v2 = *(a1 + 40);
    if (!os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v3 = (a1 + 152);
    if (*(a1 + 175) < 0)
    {
      v3 = *v3;
    }

    *buf = 136315138;
    *&buf[4] = v3;
    v4 = "#I ignore duplicate wifi consent request:%s";
    v5 = v2;
    v6 = 12;
LABEL_9:
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, v4, buf, v6);
    return;
  }

  *(a1 + 409) = 1;
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v9 = ServiceMap;
  v11 = v10;
  if (v10 < 0)
  {
    v12 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
    v13 = 5381;
    do
    {
      v11 = v13;
      v14 = *v12++;
      v13 = (33 * v13) ^ v14;
    }

    while (v14);
  }

  std::mutex::lock(ServiceMap);
  *buf = v11;
  v15 = sub_100009510(&v9[1].__m_.__sig, buf);
  if (!v15)
  {
    v17 = 0;
LABEL_20:
    std::mutex::unlock(v9);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_16;
    }

LABEL_21:
    v20 = Registry::getServiceMap(*(a1 + 48));
    v21 = v20;
    if (v10 < 0)
    {
      v22 = (v10 & 0x7FFFFFFFFFFFFFFFLL);
      v23 = 5381;
      do
      {
        v10 = v23;
        v24 = *v22++;
        v23 = (33 * v23) ^ v24;
      }

      while (v24);
    }

    std::mutex::lock(v20);
    *buf = v10;
    v25 = sub_100009510(&v21[1].__m_.__sig, buf);
    if (v25)
    {
      v27 = v25[3];
      v26 = v25[4];
      if (v26)
      {
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v21);
        atomic_fetch_add_explicit(&v26->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v26);
        goto LABEL_29;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v21);
LABEL_29:
    v28 = kCBMessageLocalizationTable;
    (*(*v17 + 40))(&v34, v17, kCBMessageLocalizationTable, @"CONNECT_TO_WIFI_TITLE_TRANSFER_TITLE", 0);
    *buf = 0;
    cf = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    (*(*v17 + 40))(&v34, v17, v28, @"CONNECT_TO_WIFI_TITLE_TRANSFER_MESSAGE", 0);
    *buf = 0;
    v32 = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    (*(*v27 + 40))(&v34, v27, v28, @"CONNECT_TO_WIFI_TRANSFER_DEFAULT_BUTTON", 0);
    *buf = 0;
    v31 = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    (*(*v27 + 40))(&v34, v27, v28, @"CONNECT_TO_WIFI_TRANSFER_ALT_BUTTON", 0);
    *buf = 0;
    v30 = v34;
    v34 = 0;
    sub_100005978(buf);
    sub_100005978(&v34);
    if (cf)
    {
      CFRetain(cf);
    }

    if (v32)
    {
      CFRetain(v32);
    }

    if (v31)
    {
      CFRetain(v31);
    }

    if (v30)
    {
      CFRetain(v30);
    }

    sub_100004AA0(&v34, (a1 + 8));
    v29 = v35;
    if (v35)
    {
      atomic_fetch_add_explicit(&v35->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v29);
    }

    v36 = 0;
    operator new();
  }

  v17 = v15[3];
  v16 = v15[4];
  if (!v16)
  {
    goto LABEL_20;
  }

  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v9);
  atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v16);
  v18 = 0;
  if (v17)
  {
    goto LABEL_21;
  }

LABEL_16:
  v19 = *(a1 + 40);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E invalid localization", buf, 2u);
  }

  sub_10030523C(a1);
  if ((v18 & 1) == 0)
  {
    sub_100004A34(v16);
  }
}

void sub_10030513C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, const void *a28, const void *a29, const void *a30, const void *a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38)
{
  sub_100005978(&a28);
  sub_100005978(&a29);
  sub_100005978(&a30);
  sub_100005978(&a31);
  if ((v41 & 1) == 0)
  {
    sub_100004A34(v39);
  }

  if ((v40 & 1) == 0)
  {
    sub_100004A34(v38);
  }

  _Unwind_Resume(a1);
}

void sub_10030523C(uint64_t a1)
{
  if (*(a1 + 416))
  {
    *(a1 + 408) = 0;
    v2 = *(a1 + 72);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = v3;
        v5 = *(a1 + 64);
        if (v5 && *(a1 + 377) == 1)
        {
          if (*(a1 + 111) < 0)
          {
            sub_100005F2C(__dst, *(a1 + 88), *(a1 + 96));
          }

          else
          {
            *__dst = *(a1 + 88);
            v16 = *(a1 + 104);
          }

          if (*(a1 + 135) < 0)
          {
            sub_100005F2C(v13, *(a1 + 112), *(a1 + 120));
          }

          else
          {
            *v13 = *(a1 + 112);
            v14 = *(a1 + 128);
          }

          if (*(a1 + 175) < 0)
          {
            sub_100005F2C(v11, *(a1 + 152), *(a1 + 160));
          }

          else
          {
            *v11 = *(a1 + 152);
            v12 = *(a1 + 168);
          }

          v7 = *(a1 + 208);
          v8 = *(a1 + 216);
          if (*(a1 + 263) < 0)
          {
            sub_100005F2C(__p, *(a1 + 240), *(a1 + 248));
          }

          else
          {
            *__p = *(a1 + 240);
            v10 = *(a1 + 256);
          }

          (*(*v5 + 24))(v5, __dst, v13, v11, a1 + 184, v7, v8);
          if (SHIBYTE(v10) < 0)
          {
            operator delete(__p[0]);
          }

          if (SHIBYTE(v12) < 0)
          {
            operator delete(v11[0]);
          }

          if (SHIBYTE(v14) < 0)
          {
            operator delete(v13[0]);
          }

          if (SHIBYTE(v16) < 0)
          {
            operator delete(__dst[0]);
          }
        }

        sub_100004A34(v4);
      }
    }
  }

  else
  {
    v6 = *(a1 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I no transfer context", buf, 2u);
    }
  }
}

void sub_10030543C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  sub_100004A34(v39);
  _Unwind_Resume(a1);
}

uint64_t sub_1003054B0(uint64_t a1, const void **a2)
{
  if (*(a1 + 80) == 1)
  {
    sub_100305974(a1, a2);
  }

  else
  {
    sub_100305AE8(a1, a2);
  }

  return a1;
}

const void **sub_1003054EC(const void **a1)
{
  sub_100305E5C((a1 + 6));
  sub_100005978(a1 + 5);
  sub_100005978(a1 + 4);
  sub_100005978(a1 + 3);
  sub_100005978(a1 + 2);
  sub_100005978(a1 + 1);

  return sub_1001DCA14(a1);
}

uint64_t sub_100305550(uint64_t a1)
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
  __p = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &__p);
  if (!v8)
  {
    std::mutex::unlock(v3);
    return 0;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
    std::mutex::unlock(v3);
    if (v10)
    {
      goto LABEL_11;
    }

    return 0;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  if (!v10)
  {
    v11 = 0;
LABEL_26:
    sub_100004A34(v9);
    return v11;
  }

LABEL_11:
  __p = 0;
  v19 = 0;
  v20 = 0;
  (*(*v10 + 64))(&__p, v10);
  if (SHIBYTE(v20) < 0)
  {
    if (!v19)
    {
LABEL_24:
      operator delete(__p);
      goto LABEL_25;
    }

    p_p = __p;
  }

  else
  {
    if (!HIBYTE(v20))
    {
      goto LABEL_25;
    }

    p_p = &__p;
  }

  v13 = [NSString stringWithUTF8String:p_p];
  v14 = [NSLocale characterDirectionForLanguage:v13];

  if (v14 == NSLocaleLanguageDirectionRightToLeft)
  {
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I RightToLeft Language detected", v17, 2u);
    }

    if (SHIBYTE(v20) < 0)
    {
      operator delete(__p);
    }

    v11 = 1;
    if (v9)
    {
      goto LABEL_26;
    }

    return v11;
  }

  if (SHIBYTE(v20) < 0)
  {
    goto LABEL_24;
  }

LABEL_25:
  v11 = 0;
  if (v9)
  {
    goto LABEL_26;
  }

  return v11;
}

void sub_100305734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100305774(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
    sub_100305E5C(a1 + 48);
    sub_100005978((a1 + 40));
    sub_100005978((a1 + 32));
    sub_100005978((a1 + 24));
    sub_100005978((a1 + 16));
    sub_100005978((a1 + 8));
    sub_1001DCA14(a1);
  }

  return a1;
}

uint64_t sub_1003057DC(uint64_t a1, __int128 *a2)
{
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v5 = *(a2 + 24);
  *(a1 + 40) = *(a2 + 5);
  *(a1 + 24) = v5;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  *(a1 + 48) = a2[3];
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v6 = a2[4];
  *(a1 + 80) = *(a2 + 10);
  *(a1 + 64) = v6;
  *(a2 + 87) = 0;
  *(a2 + 64) = 0;
  *(a1 + 88) = *(a2 + 88);
  sub_100071A6C(a1 + 96);
  *(a1 + 96) = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  *(a2 + 12) = 0;
  v7 = *(a2 + 120);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 120) = v7;
  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v8 = *(a2 + 152);
  *(a1 + 168) = *(a2 + 21);
  *(a1 + 152) = v8;
  *(a2 + 175) = 0;
  *(a2 + 152) = 0;
  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  v9 = a2[11];
  *(a1 + 192) = *(a2 + 24);
  *(a1 + 176) = v9;
  *(a2 + 199) = 0;
  *(a2 + 176) = 0;
  sub_10030594C((a1 + 200), a2 + 25);
  *(a1 + 288) = *(a2 + 144);
  sub_100071A6C(a1 + 296);
  *(a1 + 296) = *(a2 + 37);
  *(a1 + 304) = a2[19];
  *(a2 + 37) = 0;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  *(a1 + 320) = *(a2 + 160);
  return a1;
}

const void **sub_10030594C(const void **a1, const void **a2)
{
  if (*(a1 + 80) == *(a2 + 80))
  {
    if (*(a1 + 80))
    {
      return sub_100305974(a1, a2);
    }
  }

  else if (*(a1 + 80))
  {
    return sub_100305A7C(a1);
  }

  else
  {
    return sub_100305AE8(a1, a2);
  }

  return a1;
}

const void **sub_100305974(const void **a1, const void **a2)
{
  if (a1 != a2)
  {
    v4 = *a1;
    *a1 = 0;
    v11 = v4;
    *a1 = *a2;
    *a2 = 0;
    sub_1001DCA14(&v11);
    v5 = a1[1];
    a1[1] = 0;
    v11 = v5;
    a1[1] = a2[1];
    a2[1] = 0;
    sub_100005978(&v11);
    v6 = a1[2];
    a1[2] = 0;
    v11 = v6;
    a1[2] = a2[2];
    a2[2] = 0;
    sub_100005978(&v11);
    v7 = a1[3];
    a1[3] = 0;
    v11 = v7;
    a1[3] = a2[3];
    a2[3] = 0;
    sub_100005978(&v11);
    v8 = a1[4];
    a1[4] = 0;
    v11 = v8;
    a1[4] = a2[4];
    a2[4] = 0;
    sub_100005978(&v11);
    v9 = a1[5];
    a1[5] = 0;
    v11 = v9;
    a1[5] = a2[5];
    a2[5] = 0;
    sub_100005978(&v11);
  }

  sub_100305B7C((a1 + 6), (a2 + 6));
  return a1;
}

const void **sub_100305A7C(const void **result)
{
  if (*(result + 80) == 1)
  {
    v1 = result;
    sub_100305E5C((result + 6));
    sub_100005978(v1 + 5);
    sub_100005978(v1 + 4);
    sub_100005978(v1 + 3);
    sub_100005978(v1 + 2);
    sub_100005978(v1 + 1);
    result = sub_1001DCA14(v1);
    *(v1 + 80) = 0;
  }

  return result;
}

uint64_t sub_100305AE8(uint64_t a1, void *a2)
{
  *a1 = 0;
  *a1 = *a2;
  *a2 = 0;
  *(a1 + 8) = 0;
  *(a1 + 8) = a2[1];
  a2[1] = 0;
  *(a1 + 16) = 0;
  *(a1 + 16) = a2[2];
  a2[2] = 0;
  *(a1 + 24) = 0;
  *(a1 + 24) = a2[3];
  a2[3] = 0;
  *(a1 + 32) = 0;
  *(a1 + 32) = a2[4];
  a2[4] = 0;
  *(a1 + 40) = 0;
  *(a1 + 40) = a2[5];
  a2[5] = 0;
  result = sub_100305C84(a1 + 48, (a2 + 6));
  *(a1 + 80) = 1;
  return result;
}

uint64_t sub_100305B7C(uint64_t a1, uint64_t a2)
{
  sub_100305C00(a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t sub_100305C00(uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t sub_100305C84(uint64_t a1, uint64_t a2)
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

_BYTE *sub_100305D04(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[80] = 0;
  if (*(a2 + 80) == 1)
  {
    sub_100305AE8(a1, a2);
  }

  return a1;
}

uint64_t sub_100305D48(uint64_t a1)
{
  v3 = (a1 + 296);
  sub_1000087B4(&v3);
  if (*(a1 + 280) == 1)
  {
    sub_100305E5C(a1 + 248);
    sub_100005978((a1 + 240));
    sub_100005978((a1 + 232));
    sub_100005978((a1 + 224));
    sub_100005978((a1 + 216));
    sub_100005978((a1 + 208));
    sub_1001DCA14((a1 + 200));
  }

  if (*(a1 + 199) < 0)
  {
    operator delete(*(a1 + 176));
  }

  if (*(a1 + 175) < 0)
  {
    operator delete(*(a1 + 152));
  }

  v3 = (a1 + 96);
  sub_1000087B4(&v3);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
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

const void **sub_100305E28(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_100305E5C(uint64_t a1)
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

void *sub_100305EDC(void *a1)
{
  *a1 = off_101E400A8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100305F28(void *a1)
{
  *a1 = off_101E400A8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100306008(uint64_t result, uint64_t a2)
{
  *a2 = off_101E400A8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100306048(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100306058(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100306098(void *a1, int *a2, uint64_t *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8)
    {
      v9 = v8;
      if (a1[2])
      {
        v10[0] = _NSConcreteStackBlock;
        v10[1] = 3221225472;
        v10[2] = sub_1003061A4;
        v10[3] = &unk_101E40118;
        v11 = v5;
        v10[4] = v7;
        v10[5] = v6;
        sub_100306274((v7 + 8), v10);
      }

      sub_100004A34(v9);
    }
  }
}

uint64_t sub_100306158(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1003061A4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(v2 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_ERROR);
  if (v3)
  {
    if (v5)
    {
      sub_10176AEBC(v3, v4);
    }

LABEL_11:
    sub_10030523C(v2);
    goto LABEL_12;
  }

  if (v5)
  {
    sub_10176AF34(a1, v4);
  }

  v6 = *(a1 + 40);
  if (!v6)
  {
    sub_100302944(@"prefs:root=WIFI");
    sub_10030523C(v2);
    v6 = *(a1 + 40);
  }

  if (v6 == 1)
  {
    sub_10030523C(v2);
    v6 = *(a1 + 40);
  }

  if (v6 == 3)
  {
    goto LABEL_11;
  }

LABEL_12:
  if (*(v2 + 416) == 1)
  {
    sub_100305A7C((v2 + 288));
  }
}

void sub_100306274(void *a1, void *a2)
{
  v3 = a2;
  v10 = 0;
  v11 = 0;
  sub_100004AA0(&v10, a1);
  v4 = a1[2];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3321888768;
  block[2] = sub_100306354;
  block[3] = &unk_101E40140;
  v8 = v10;
  v9 = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = v3;
  v7 = v5;
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

uint64_t sub_100306364(uint64_t result, uint64_t a2)
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

void sub_100306380(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_100306390(void *a1)
{
  *a1 = off_101E40190;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1003063DC(void *a1)
{
  *a1 = off_101E40190;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1003064BC(uint64_t result, uint64_t a2)
{
  *a2 = off_101E40190;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1003064FC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10030650C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10030654C(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[2])
      {
        v5[0] = 0;
        v5[1] = 0;
        sub_100004AA0(v5, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100306668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}