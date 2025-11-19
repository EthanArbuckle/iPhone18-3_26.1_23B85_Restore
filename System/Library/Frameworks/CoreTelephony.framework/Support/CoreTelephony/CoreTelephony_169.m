void sub_101459570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _BYTE *a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, int a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25)
{
  *a10 = a15;
  a10[24] = v25;
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 217) < 0)
  {
    operator delete(*(v26 - 240));
  }

  if (*(v26 - 185) < 0)
  {
    operator delete(*(v26 - 208));
  }

  std::ios::~ios();
  a25 = v26 - 176;
  sub_101459A2C(&a25);
  _Unwind_Resume(a1);
}

uint64_t sub_101459748(uint64_t a1)
{
  *a1 = off_101F3D748;
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

void sub_1014597A4(uint64_t a1)
{
  *a1 = off_101F3D748;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete();
}

void sub_101459820(unint64_t a1)
{
  if (a1 < 0x333333333333334)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_101459878(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = 0;
    do
    {
      v7 = v5 + v6;
      *(a3 + v6) = *(v5 + v6);
      v8 = (a3 + v6 + 8);
      if (*(v5 + v6 + 31) < 0)
      {
        sub_100005F2C(v8, *(v7 + 8), *(v7 + 16));
      }

      else
      {
        v9 = *(v7 + 8);
        *(a3 + v6 + 24) = *(v7 + 24);
        *v8 = v9;
      }

      v10 = a3 + v6;
      v11 = v5 + v6;
      if (*(v7 + 55) < 0)
      {
        sub_100005F2C((v10 + 32), *(v11 + 32), *(v11 + 40));
      }

      else
      {
        v12 = *(v11 + 32);
        *(v10 + 48) = *(v11 + 48);
        *(v10 + 32) = v12;
      }

      v13 = a3 + v6;
      v14 = v5 + v6;
      if (*(v7 + 79) < 0)
      {
        sub_100005F2C((v13 + 56), *(v14 + 56), *(v14 + 64));
      }

      else
      {
        v15 = *(v14 + 56);
        *(v13 + 72) = *(v14 + 72);
        *(v13 + 56) = v15;
      }

      v6 += 80;
    }

    while (v7 + 80 != a2);
    do
    {
      sub_100F663E0(v5);
      v5 += 80;
    }

    while (v5 != a2);
  }
}

void sub_101459974(_Unwind_Exception *exception_object)
{
  if (*(v1 + v2 + 31) < 0)
  {
    operator delete(*(v1 + v2 + 8));
  }

  if (v2)
  {
    v4 = v1 + v2 - 80;
    v5 = -v2;
    do
    {
      sub_100F663E0(v4);
      v4 -= 80;
      v5 += 80;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014599DC(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 80;
    sub_100F663E0(i - 80);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_101459A2C(void ***a1)
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
        v4 -= 80;
        sub_100F663E0(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void sub_101459B18(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101459B54(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101459B8C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101459BBC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_101459BFC(void *a1@<X8>)
{
  v3[0] = off_101F3D9A0;
  v3[3] = v3;
  inactive = dispatch_workloop_create_inactive("EmergencyNumbersController");
  sub_1001FA58C(v3, inactive);
  dispatch_activate(inactive);
  sub_1001FAD0C(v3);
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10145A3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  sub_1000A8744(va);
  operator delete();
}

void sub_10145A3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a17)
  {
    (*(*a17 + 8))(a17);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  sub_100004A34(v23);
  if (v22)
  {
    JUMPOUT(0x10145A674);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A430()
{
  sub_100004A34(v1);
  if (v0)
  {
    JUMPOUT(0x10145A674);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A438(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a11)
  {
    std::__shared_weak_count::__release_weak(a11);
  }

  (*(*v18 + 8))(v18);
  JUMPOUT(0x10145A668);
}

void sub_10145A474(void *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    dispatch_barrier_async_f(v2[4], v2, sub_10145BF64);
    __cxa_rethrow();
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A4B8(void *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A4C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t a10, uint64_t a11, dispatch_object_t object, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  v27 = *(v26 + 72);
  if (v27)
  {
    sub_100004A34(v27);
  }

  v28 = *(v26 + 56);
  *(v26 + 56) = 0;
  if (v28)
  {
    (*(*v28 + 8))(v28);
  }

  JUMPOUT(0x10145A578);
}

void sub_10145A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v9 + 2);
  ctu::OsLogContext::~OsLogContext(va1);
  if (v8)
  {
    dispatch_release(v8);
  }

  EmergencyNumbersModelDelegate::~EmergencyNumbersModelDelegate(v10);
  EmergencyNumbersInterface::~EmergencyNumbersInterface(v9);
  if (v8)
  {
    dispatch_release(v8);
  }

  operator delete();
}

void sub_10145A614(_Unwind_Exception *a1)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(a1);
}

void sub_10145A620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1001FAD0C(va);
  JUMPOUT(0x10145A67CLL);
}

void sub_10145A638()
{
  if (v2)
  {
    JUMPOUT(0x10145A648);
  }

  sub_100004A34(v1);
  if (v0)
  {
    JUMPOUT(0x10145A674);
  }

  JUMPOUT(0x10145A67CLL);
}

void sub_10145A684(uint64_t a1)
{
  *a1 = off_101F3D800;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101F3D8A0;
  sub_1001A90CC(a1 + 184, *(a1 + 192));
  sub_100AE7E40(a1 + 152);
  v3 = *(a1 + 144);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1001A904C(a1 + 96, *(a1 + 104));
  v5 = *(a1 + 88);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  EmergencyNumbersModelDelegate::~EmergencyNumbersModelDelegate(v2);

  EmergencyNumbersInterface::~EmergencyNumbersInterface(a1);
}

void sub_10145A798(uint64_t a1)
{
  sub_10145A684(a1);

  operator delete();
}

void sub_10145A7D0(uint64_t a1)
{
  sub_10145A684(a1 - 8);

  operator delete();
}

void sub_10145A80C(uint64_t a1)
{
  v1 = *(a1 + 96);
  v2 = (a1 + 104);
  if (v1 != (a1 + 104))
  {
    while (1)
    {
      v21 = 0;
      v22 = 0;
      ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
        break;
      }

      v12 = v10[3];
      v11 = v10[4];
      if (!v11)
      {
        goto LABEL_9;
      }

      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v5);
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v11);
      v13 = 0;
LABEL_10:
      (**v12)(&v21, v12, (v1 + 4));
      if ((v13 & 1) == 0)
      {
        sub_100004A34(v11);
      }

      if (v21)
      {
        v14 = *(*(**(a1 + 56) + 16))(*(a1 + 56), *(v21 + 52));
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = asString();
          v16 = CSIBOOLAsString(*(a1 + 120) != 0);
          v17 = CSIBOOLAsString(*(a1 + 136) != 0);
          *buf = 136315650;
          *&buf[4] = v15;
          v24 = 2080;
          v25 = v16;
          v26 = 2080;
          v27 = v17;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I VoWiFiProvState config %s, fSimModel: %s, fIcloudModel: %s", buf, 0x20u);
        }
      }

      if (v22)
      {
        sub_100004A34(v22);
      }

      v18 = v1[1];
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
          v19 = v1[2];
          v20 = *v19 == v1;
          v1 = v19;
        }

        while (!v20);
      }

      v1 = v19;
      if (v19 == v2)
      {
        return;
      }
    }

    v12 = 0;
LABEL_9:
    std::mutex::unlock(v5);
    v11 = 0;
    v13 = 1;
    goto LABEL_10;
  }
}

void sub_10145AA74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145AAB8(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145AC84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, dispatch_group_t a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145ACCC(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145AE98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_group_t group, dispatch_group_t a10)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10145AEE0(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 8);

    return v4();
  }

  return result;
}

void sub_10145AF70(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 120);
  if (v8)
  {
    memset(v11, 0, sizeof(v11));
    sub_10004EFD0(v11, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v8 + 40))(v8, a2, v11, a4);
    v12 = v11;
    sub_1000087B4(&v12);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    memset(v10, 0, sizeof(v10));
    sub_10004EFD0(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v9 + 40))(v9, a2, v10, a4);
    v12 = v10;
    sub_1000087B4(&v12);
  }
}

void sub_10145B09C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10145B0C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 120);
  if (v4)
  {
    (*(*v4 + 48))(v4, a2, a3);
  }

  result = *(a1 + 136);
  if (result)
  {
    v6 = *(*result + 48);

    return v6();
  }

  return result;
}

void sub_10145B174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = *(a1 + 120);
  if (v8)
  {
    memset(v11, 0, sizeof(v11));
    sub_10004EFD0(v11, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v8 + 56))(v8, a2, v11, a4);
    v12 = v11;
    sub_1000087B4(&v12);
  }

  v9 = *(a1 + 136);
  if (v9)
  {
    memset(v10, 0, sizeof(v10));
    sub_10004EFD0(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
    (*(*v9 + 56))(v9, a2, v10, a4);
    v12 = v10;
    sub_1000087B4(&v12);
  }
}

void sub_10145B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10145B2C4(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 64))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 64);

    return v4();
  }

  return result;
}

uint64_t sub_10145B354(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 80))(v2);
  }

  result = *(a1 + 136);
  if (result)
  {
    v4 = *(*result + 80);

    return v4();
  }

  return result;
}

void sub_10145B3E4(uint64_t a1@<X0>, CSIPhoneNumber *a2@<X8>)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    (*(*v2 + 88))();
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(a2);
  }
}

void sub_10145B418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    sub_1000AE428(v19, a2);
    (*(*v6 + 96))(v6, v19, a3);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    sub_1000AE428(&v8, a2);
    (*(*v7 + 96))(v7, &v8, a3);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }
  }
}

void sub_10145B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 120);
  if (v6)
  {
    sub_1000AE428(v19, a2);
    (*(*v6 + 104))(v6, v19, a3);
    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 < 0)
    {
      operator delete(v24);
    }

    if (v23 < 0)
    {
      operator delete(v22);
    }

    if (v21 < 0)
    {
      operator delete(v20);
    }
  }

  v7 = *(a1 + 136);
  if (v7)
  {
    sub_1000AE428(&v8, a2);
    (*(*v7 + 104))(v7, &v8, a3);
    if (v18 < 0)
    {
      operator delete(v17);
    }

    if (v16 < 0)
    {
      operator delete(v15);
    }

    if (v14 < 0)
    {
      operator delete(v13);
    }

    if (v12 < 0)
    {
      operator delete(v11);
    }

    if (v10 < 0)
    {
      operator delete(v9);
    }
  }
}

void sub_10145B728(void *a1, uint64_t a2, unsigned int a3)
{
  v8 = a3;
  v7[0] = a1;
  v7[1] = a2;
  v7[2] = &v8;
  if (!a1[5])
  {
    v5 = 1;
    goto LABEL_7;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v5 = a1[5] == 0;
LABEL_7:
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10145CCA8;
    v12 = &unk_101F3DD10;
    v13 = a1 + 2;
    v14 = v7;
    v6 = a1[4];
    if (v5)
    {
      dispatch_sync(v6, &block);
    }

    else
    {
      dispatch_async_and_wait(v6, &block);
    }

    return;
  }

  block = 0;
  v10 = 0;
  sub_1000B1804(&block, a1);
  if (block)
  {
    (*(*block + 14))(block, a2, v8);
  }

  else
  {
    sub_1001A918C(a2, *(a2 + 8));
    *a2 = a2 + 8;
    *(a2 + 16) = 0;
    *(a2 + 8) = 0;
  }

  if (v10)
  {
    sub_100004A34(v10);
  }
}

void sub_10145B864(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_10004F058(a1);
}

void sub_10145B87C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  if (!a1[5])
  {
    v8 = 1;
    goto LABEL_7;
  }

  if ((dispatch_workloop_is_current() & 1) == 0)
  {
    v8 = a1[5] == 0;
LABEL_7:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 0x40000000;
    v13[2] = sub_10145CD7C;
    v13[3] = &unk_101F3DD30;
    v13[4] = a1 + 2;
    v13[5] = &v10;
    v14 = v13;
    v9 = a1[4];
    *(a4 + 128) = 0uLL;
    *(a4 + 144) = 0uLL;
    *(a4 + 96) = 0uLL;
    *(a4 + 112) = 0uLL;
    *(a4 + 64) = 0uLL;
    *(a4 + 80) = 0uLL;
    *(a4 + 32) = 0uLL;
    *(a4 + 48) = 0uLL;
    *a4 = 0uLL;
    *(a4 + 16) = 0uLL;
    if (v8)
    {
      CSIPhoneNumber::CSIPhoneNumber(a4);
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_10145CE3C;
      v18 = &unk_101F3DD50;
      v19 = a4;
      v20 = &v14;
      dispatch_sync(v9, &block);
    }

    else
    {
      CSIPhoneNumber::CSIPhoneNumber(a4);
      block = _NSConcreteStackBlock;
      v16 = 0x40000000;
      v17 = sub_10145CFE4;
      v18 = &unk_101F3DD70;
      v19 = a4;
      v20 = &v14;
      dispatch_async_and_wait(v9, &block);
    }

    return;
  }

  block = 0;
  v16 = 0;
  sub_1000B1804(&block, a1);
  if (block)
  {
    (*(*block + 15))(block, a2, a3);
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(a4);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }
}

void sub_10145BA90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a20)
  {
    sub_100004A34(a20);
  }

  sub_10004F058(a1);
}

void sub_10145BAB0(uint64_t a1, char *a2, void *a3)
{
  v9[0] = 0;
  v9[1] = 0;
  v10 = 0;
  if (!a2)
  {
    a2 = "unknown";
  }

  sub_10000501C(v9, a2);
  if (SHIBYTE(v10) < 0)
  {
    sub_100005F2C(__p, v9[0], v9[1]);
  }

  else
  {
    *__p = *v9;
    v7 = v10;
  }

  sub_10145D18C(&v8, a3);
  v5 = *(a1 + 24);
  if (v5)
  {
    if (std::__shared_weak_count::lock(v5))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145BC48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145BCAC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1011D5E2C(&v5, a2);
  v3 = *(a1 + 24);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10145BDDC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10145BE80(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10145BED0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10145BF24(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10145BF64(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

void sub_10145BF90(ServiceManager::Service *this)
{
  *this = off_101F3DA80;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10145BFEC(ServiceManager::Service *this)
{
  *this = off_101F3DA80;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10145C06C@<X0>(void *a1@<X8>)
{
  v2 = 2;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10145C0B0(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  v4 = v3;
  sub_10145ACCC(v2, &v4);
}

void sub_10145C150(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_group_leave(v1);
    dispatch_release(v1);
    dispatch_group_leave(v1);
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145C1A4(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group, this);
  sub_10145AAB8(v3, &group);
}

void sub_10145C1FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145C244(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping EmergencyNumbersController", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v4, *(v1 + 64));
  ctu::RestModule::connect();
  if (v5)
  {
    sub_100004A34(v5);
  }

  sub_10000501C(__p, "/cc/props/vowifi_provisioning_state");
  *buf = off_101F3DB40;
  v9 = v1 + 96;
  v10 = v1;
  v11 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  *buf = off_101F3DBC0;
  v9 = v1 + 80;
  v11 = buf;
  sub_100AEE6DC(buf, (v1 + 152));
  sub_100AE7E40(buf);
  v3 = *(v1 + 176);
  if (v3)
  {
    (*(*v3 + 48))(v3, v1 + 184);
  }

  sub_10000501C(__p, "/cc/events/dump_state");
  operator new();
}

void sub_10145C468(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  sub_1000062D4(&a20);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

__n128 sub_10145C538(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3DB40;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10145C568(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v27 = *v3;
  v28 = v5;
  if (v3[2])
  {
    *(v5 + 16) = &v28;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v27 = &v28;
  }

  read_rest_value(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(v6 + 96);
  if (v7 != (v6 + 104))
  {
    while (1)
    {
      v8 = sub_100007A6C(&v27, v7 + 4);
      v30 = 0;
      v31 = 0;
      ServiceMap = Registry::getServiceMap(*(v6 + 64));
      v10 = ServiceMap;
      if (v11 < 0)
      {
        v12 = (v11 & 0x7FFFFFFFFFFFFFFFLL);
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
      v15 = sub_100009510(&v10[1].__m_.__sig, buf);
      if (!v15)
      {
        break;
      }

      v17 = v15[3];
      v16 = v15[4];
      if (!v16)
      {
        goto LABEL_12;
      }

      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v10);
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v16);
      v18 = 0;
LABEL_13:
      (**v17)(&v30, v17, (v7 + 4));
      if ((v18 & 1) == 0)
      {
        sub_100004A34(v16);
      }

      if (v30)
      {
        v19 = (*(**(v6 + 56) + 16))(*(v6 + 56), *(v30 + 52));
        if (&v28 != v8)
        {
          v20 = v19;
          if (!sub_1011D44D8((v8 + 7), (v7 + 7)))
          {
            v21 = *v20;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              v22 = asString();
              v23 = asString();
              *buf = 136315394;
              *&buf[4] = v22;
              v33 = 2080;
              v34 = v23;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I VoWiFiProvState changed from %s -> %s", buf, 0x16u);
            }
          }
        }
      }

      if (v31)
      {
        sub_100004A34(v31);
      }

      v24 = v7[1];
      if (v24)
      {
        do
        {
          v25 = v24;
          v24 = *v24;
        }

        while (v24);
      }

      else
      {
        do
        {
          v25 = v7[2];
          v26 = *v25 == v7;
          v7 = v25;
        }

        while (!v26);
      }

      v7 = v25;
      if (v25 == (v6 + 104))
      {
        goto LABEL_28;
      }
    }

    v17 = 0;
LABEL_12:
    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    goto LABEL_13;
  }

LABEL_28:
  sub_1001A904C(&v27, v28);
}

uint64_t sub_10145C8A4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10145C960(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3DBC0;
  a2[1] = v2;
  return result;
}

void sub_10145C98C(uint64_t a1, const CSIPhoneNumber ***a2)
{
  v5 = 0;
  sub_100AEE294(a2, &v5);
  sub_10000501C(&__p, "/cc/props/emergency_numbers");
  object = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    object = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (v4 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v5);
}

void sub_10145CA30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10145CA74(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10145CB3C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3DC40;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10145CB74(void *a1)
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

uint64_t sub_10145CBBC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10145CC08(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 80));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_10145CC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_10145CCA8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v5 = 0;
  v6 = 0;
  sub_1000B1804(&v5, v2);
  v3 = *(v1 + 8);
  if (v5)
  {
    (*(*v5 + 112))(v5, *(v1 + 8), **(v1 + 16));
  }

  else
  {
    sub_1001A918C(v3, *(v3 + 8));
    *v3 = v3 + 8;
    *(v3 + 16) = 0;
    *(v3 + 8) = 0;
  }

  v4 = v6;
  if (v6)
  {

    sub_100004A34(v4);
  }
}

void sub_10145CD64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145CD7C(uint64_t a1@<X0>, CSIPhoneNumber *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *v3;
  v6 = 0;
  v7 = 0;
  sub_1000B1804(&v6, v4);
  if (v6)
  {
    (*(*v6 + 120))(v6, *(v3 + 8), *(v3 + 12));
  }

  else
  {
    CSIPhoneNumber::CSIPhoneNumber(a2);
  }

  v5 = v7;
  if (v7)
  {

    sub_100004A34(v5);
  }
}

void sub_10145CE24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145CE3C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v12);
  v2 = *(a1 + 32);
  *v2 = v12;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  v3 = v13;
  *(v2 + 24) = v14;
  *(v2 + 8) = v3;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  v4 = v15;
  *(v2 + 48) = v16;
  *(v2 + 32) = v4;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v5 = v18;
  *(v2 + 56) = v17;
  *(v2 + 60) = v5;
  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  v6 = v19;
  *(v2 + 80) = v20;
  *(v2 + 64) = v6;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v7 = v22;
  *(v2 + 88) = v21;
  *(v2 + 96) = v7;
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  v8 = __p;
  *(v2 + 120) = v24;
  *(v2 + 104) = v8;
  HIBYTE(v24) = 0;
  LOBYTE(__p) = 0;
  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
    v10 = SHIBYTE(v24);
    v11 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v11;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v9 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v9;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void sub_10145CFE4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v12);
  v2 = *(a1 + 32);
  *v2 = v12;
  if (*(v2 + 31) < 0)
  {
    operator delete(*(v2 + 8));
  }

  v3 = v13;
  *(v2 + 24) = v14;
  *(v2 + 8) = v3;
  HIBYTE(v14) = 0;
  LOBYTE(v13) = 0;
  if (*(v2 + 55) < 0)
  {
    operator delete(*(v2 + 32));
  }

  v4 = v15;
  *(v2 + 48) = v16;
  *(v2 + 32) = v4;
  HIBYTE(v16) = 0;
  LOBYTE(v15) = 0;
  v5 = v18;
  *(v2 + 56) = v17;
  *(v2 + 60) = v5;
  if (*(v2 + 87) < 0)
  {
    operator delete(*(v2 + 64));
  }

  v6 = v19;
  *(v2 + 80) = v20;
  *(v2 + 64) = v6;
  HIBYTE(v20) = 0;
  LOBYTE(v19) = 0;
  v7 = v22;
  *(v2 + 88) = v21;
  *(v2 + 96) = v7;
  if (*(v2 + 127) < 0)
  {
    operator delete(*(v2 + 104));
  }

  v8 = __p;
  *(v2 + 120) = v24;
  *(v2 + 104) = v8;
  HIBYTE(v24) = 0;
  LOBYTE(__p) = 0;
  if (*(v2 + 151) < 0)
  {
    operator delete(*(v2 + 128));
    v10 = SHIBYTE(v24);
    v11 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v11;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
    if (v10 < 0)
    {
      operator delete(__p);
    }
  }

  else
  {
    v9 = v25;
    *(v2 + 144) = v26;
    *(v2 + 128) = v9;
    HIBYTE(v26) = 0;
    LOBYTE(v25) = 0;
    *(v2 + 152) = v27;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13);
  }
}

void *sub_10145D18C(void *result, void *a2)
{
  result[1] = 0;
  result[2] = 0;
  *result = result + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = result[1];
      v4 = result + 1;
      if (*result == result + 1)
      {
        goto LABEL_8;
      }

      v5 = result[1];
      v6 = result + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 8);
      if (*(v4 + 8) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = result + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 32);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
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
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return result;
}

uint64_t *sub_10145D358(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *v1;
  v19[0] = 1;
  v20 = 0u;
  v21 = 0;
  v19[1] = v2 + 152;
  sub_10145D18C(&v20, (v2 + 184));
  v3 = *(v1 + 32);
  if (v3 != (v1 + 40))
  {
    do
    {
      v4 = *(v3 + 5);
      v5 = *(v3 + 6);
      memset(&__p, 0, sizeof(__p));
      if (v4 != v5)
      {
        sub_10145D6F8(&__s, v4);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = __s;
        while (1)
        {
          v4 += 5;
          if (v4 == v5)
          {
            break;
          }

          *(&__s.__r_.__value_.__s + 23) = 1;
          strcpy(&__s, ",");
          std::string::append(&__p, &__s, 1uLL);
          if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__s.__r_.__value_.__l.__data_);
          }

          sub_10145D6F8(&__s, v4);
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
        }
      }

      v8 = *(*(**(v2 + 56) + 16))(*(v2 + 56), v3[8]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v1 + 8;
        if (*(v1 + 31) < 0)
        {
          v9 = *(v1 + 8);
        }

        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(__s.__r_.__value_.__l.__data_) = 136315394;
        *(__s.__r_.__value_.__r.__words + 4) = v9;
        WORD2(__s.__r_.__value_.__r.__words[1]) = 2080;
        *(&__s.__r_.__value_.__r.__words[1] + 6) = p_p;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s sending emergency_numbers update: %s", &__s, 0x16u);
      }

      __s.__r_.__value_.__r.__words[0] = (v3 + 8);
      v11 = sub_1001AB974(&v20, v3 + 8);
      if (v3 != v11)
      {
        sub_1001A7D40(v11 + 5, *(v3 + 5), *(v3 + 6), 0xCCCCCCCCCCCCCCCDLL * ((*(v3 + 6) - *(v3 + 5)) >> 5));
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v12 = *(v3 + 1);
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
          v13 = *(v3 + 2);
          v14 = *v13 == v3;
          v3 = v13;
        }

        while (!v14);
      }

      v3 = v13;
    }

    while (v13 != (v1 + 40));
  }

  sub_10145D8AC(v19);
  sub_10145D694(&v17);
  return sub_1000049E0(&v16);
}

void sub_10145D630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  sub_10145D694(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_10145D694(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1001A90CC(v1 + 32, *(v1 + 40));
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

void sub_10145D6F8(std::string *a1, CSIPhoneNumber *this)
{
  CSIPhoneNumber::getFullNumber(&v17, this);
  v4 = std::string::append(&v17, " SupportsSMS: ", 0xEuLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v18.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v18.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  IsEmSMSTextSupported = CSIPhoneNumber::getIsEmSMSTextSupported(this);
  v7 = CSIBOOLAsString(IsEmSMSTextSupported);
  v8 = strlen(v7);
  v9 = std::string::append(&v18, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  v11 = std::string::append(&v19, " SupportsEmVoice: ", 0x12uLL);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v20.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  IsEmVoiceSupported = CSIPhoneNumber::getIsEmVoiceSupported(this);
  v14 = CSIBOOLAsString(IsEmVoiceSupported);
  v15 = strlen(v14);
  v16 = std::string::append(&v20, v14, v15);
  *a1 = *v16;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v17.__r_.__value_.__l.__data_);
  }
}

void sub_10145D848(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
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

uint64_t sub_10145D8AC(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_27;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 8) == *(v4 + 8))
      {
        v5 = v3[5];
        v6 = v3[6];
        v7 = v4[5];
        if (v6 - v5 != v4[6] - v7)
        {
          break;
        }

        while (v5 != v6)
        {
          if (!CSIPhoneNumber::operator==())
          {
            goto LABEL_22;
          }

          v5 += 160;
          v7 += 160;
        }

        v8 = v3[1];
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
            v9 = v3[2];
            v10 = *v9 == v3;
            v3 = v9;
          }

          while (!v10);
        }

        v11 = v4[1];
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
            v12 = v4[2];
            v10 = *v12 == v4;
            v4 = v12;
          }

          while (!v10);
        }

        v4 = v12;
        v3 = v9;
        if (v9 == v2 + 5)
        {
          goto LABEL_27;
        }
      }
    }

LABEL_22:
    v13 = v2 + 5;
    sub_1001A90CC((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v15 = *(a1 + 24);
    v16 = *(a1 + 32);
    v14 = (a1 + 24);
    v2[5] = v15;
    v2[6] = v16;
    if (v16)
    {
      *(v15 + 16) = v13;
      *(a1 + 16) = v14;
      *v14 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v13;
    }

    v17 = v2[3];
    if (v17)
    {
      (*(*v17 + 48))(v17, v2 + 4);
    }
  }

LABEL_27:
  sub_1001A90CC(a1 + 16, *(a1 + 24));
  return a1;
}

uint64_t *sub_10145DA58(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v9 = 0;
  v10 = 0;
  sub_1000B1804(&v9, v2);
  if (v9)
  {
    (*(*v9 + 128))(v9, v1 + 8);
  }

  else
  {
    v8[0] = 0;
    v8[1] = 0;
    v7 = v8;
    v3 = *(v1 + 32);
    if (!v3)
    {
      sub_100022DB4();
    }

    (*(*v3 + 48))(v3, &v7);
    sub_100009970(&v7, v8[0]);
  }

  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1011D633C(&v6);
  return sub_1000049E0(&v5);
}

void sub_10145DB38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v4 = *(v2 - 24);
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1011D633C(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

void sub_10145DB74(uint64_t *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a1[1];
  if (!v9 || (v10 = *a1, (v11 = std::__shared_weak_count::lock(v9)) == 0))
  {
    sub_100013CC4();
  }

  v12 = v11;
  p_shared_weak_owners = &v11->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v11->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v11);
  v14 = +[DCAppAttestServicePriv sharedService];
  v15 = *(a1 + 60);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3321888768;
  v18[2] = sub_10145DD68;
  v18[3] = &unk_101F3DD98;
  v20 = a1;
  v21 = v10;
  v22 = v12;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  sub_100115BE0(v23, a4);
  if (v15)
  {
    v16 = @"rcsStressTest";
  }

  else
  {
    v16 = 0;
  }

  v17 = v7;
  v19 = v17;
  [v14 attestKey:v17 teamIdentifier:v16 clientDataHash:v8 completionHandler:v18];

  sub_100115C78(v23);
  if (v22)
  {
    std::__shared_weak_count::__release_weak(v22);
  }

  std::__shared_weak_count::__release_weak(v12);
}

void sub_10145DD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  sub_100115C78(v21 + 64);
  if (a17)
  {
    std::__shared_weak_count::__release_weak(a17);
  }

  std::__shared_weak_count::__release_weak(v19);
  _Unwind_Resume(a1);
}

void sub_10145DD68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      if (*(a1 + 48))
      {
        v5;
        v6;
        sub_100115BE0(v11, a1 + 64);
        v11[4] = *(a1 + 32);
        v10 = *(v8 + 8);
        if (v10)
        {
          if (std::__shared_weak_count::lock(v10))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_10145DF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10145DFAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100115BE0(a1 + 64, a2 + 64);
}

void sub_10145DFF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145E008(uint64_t a1)
{
  sub_100115C78(a1 + 64);
  v2 = *(a1 + 56);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10145E054(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 56);
  if (v7)
  {
    v8 = *(a1 + 40);
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      if (*(a1 + 48))
      {
        v5;
        v6;
        sub_100115BE0(v11, a1 + 64);
        v11[4] = *(a1 + 32);
        v10 = *(v8 + 8);
        if (v10)
        {
          if (std::__shared_weak_count::lock(v10))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_10145E234(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145E298(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[6];
  if (v7)
  {
    v8 = a1[4];
    v9 = std::__shared_weak_count::lock(v7);
    if (v9)
    {
      if (a1[5])
      {
        v5;
        sub_100115BE0(v11, (a1 + 7));
        v11[4] = v6;
        v10 = *(v8 + 8);
        if (v10)
        {
          if (std::__shared_weak_count::lock(v10))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v9);
    }
  }
}

void sub_10145E44C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10145E4A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100115BE0(a1 + 56, a2 + 56);
}

void sub_10145E4E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10145E4FC(uint64_t a1)
{
  sub_100115C78(a1 + 56);
  v2 = *(a1 + 48);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10145E548(void *a1@<X8>)
{
  v2 = +[DCAppAttestServicePriv sharedService];
  if ([v2 isSupported])
  {
    operator new();
  }

  *a1 = 0;
  a1[1] = 0;
}

void sub_10145E9CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, id a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  v17 = v15[3].__vftable;
  if (v17)
  {
    sub_100004A34(v17);
  }

  ctu::OsLogLogger::~OsLogLogger(&v15[2].__shared_owners_);
  sub_1000C0544(v16);
  std::__shared_weak_count::~__shared_weak_count(v15);
  operator delete(v18);
  v19 = v14[7];
  if (v19)
  {
    sub_100004A34(v19);
  }

  ctu::OsLogLogger::~OsLogLogger((v14 + 5));
  sub_1000C0544(v14 + 1);
  operator delete();
}

void *sub_10145EB20(void *a1)
{
  *a1 = off_101F3DE40;
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

void sub_10145EB8C(void *a1)
{
  sub_10145EB20(a1);

  operator delete();
}

void sub_10145EBC4(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  [NSData dataWithBytes:*a2 length:a2[1] - *a2];
  v9 = v8 = a1;
  sub_100115BE0(v10, a3);
  v10[32] = a4;
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

void sub_10145ED94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10145EDCC(id **a1)
{
  v1 = *a1;
  v74 = a1;
  v75 = v1;
  v2 = *v1;
  v3 = *(*v1 + 4);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[2];
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I attestKeyAfterKeyGen error=%@", buf, 0xCu);
  }

  if (!v1[2] && v1[1])
  {
    memset(buf, 0, sizeof(buf));
    ServiceMap = Registry::getServiceMap(*(v2 + 5));
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
    *__dst = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, __dst);
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
        goto LABEL_34;
      }
    }

    else
    {
      v23 = 0;
    }

    std::mutex::unlock(v16);
    v22 = 0;
    v24 = 1;
LABEL_34:
    (*(*v23 + 8))(buf, v23, v2[14]);
    if ((v24 & 1) == 0)
    {
      sub_100004A34(v22);
    }

    if (!*buf)
    {
      goto LABEL_82;
    }

    v37 = Registry::getServiceMap(*(v2 + 5));
    v38 = v37;
    v40 = v39;
    if (v39 < 0)
    {
      v41 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      v42 = 5381;
      do
      {
        v40 = v42;
        v43 = *v41++;
        v42 = (33 * v42) ^ v43;
      }

      while (v43);
    }

    std::mutex::lock(v37);
    *__dst = v40;
    v44 = sub_100009510(&v38[1].__m_.__sig, __dst);
    if (v44)
    {
      v46 = v44[3];
      v45 = v44[4];
      if (v45)
      {
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v38);
        atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v45);
        v47 = 0;
        goto LABEL_70;
      }
    }

    else
    {
      v46 = 0;
    }

    std::mutex::unlock(v38);
    v45 = 0;
    v47 = 1;
LABEL_70:
    (*(*v46 + 16))(v46, *buf + 24, @"AttestationKeyId", v1[7], @"LazuliAttestation", 0, 1, 0, v74, v75);
    if ((v47 & 1) == 0)
    {
      sub_100004A34(v45);
    }

    v59 = Registry::getServiceMap(*(v2 + 5));
    v60 = v59;
    if (v39 < 0)
    {
      v61 = (v39 & 0x7FFFFFFFFFFFFFFFLL);
      v62 = 5381;
      do
      {
        v39 = v62;
        v63 = *v61++;
        v62 = (33 * v62) ^ v63;
      }

      while (v63);
    }

    std::mutex::lock(v59);
    *__dst = v39;
    v64 = sub_100009510(&v60[1].__m_.__sig, __dst);
    if (v64)
    {
      v66 = v64[3];
      v65 = v64[4];
      if (v65)
      {
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v60);
        atomic_fetch_add_explicit(&v65->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v65);
        v67 = 0;
        goto LABEL_80;
      }
    }

    else
    {
      v66 = 0;
    }

    std::mutex::unlock(v60);
    v65 = 0;
    v67 = 1;
LABEL_80:
    (*(*v66 + 16))(v66, *buf + 24, @"AttestationAttested", kCFBooleanTrue, @"LazuliAttestation", 0, 1, 0);
    if ((v67 & 1) == 0)
    {
      sub_100004A34(v65);
    }

LABEL_82:
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    if (v1[6])
    {
      v68 = [v1[1] base64EncodedStringWithOptions:0];
      v85 = 0uLL;
      v86 = 0;
      v69 = v68;
      sub_10000501C(&v85, [v68 UTF8String]);
      v83 = 0uLL;
      v84 = 0;
      sub_10000501C(&v83, [v1[7] UTF8String]);
      sub_10006772C(__dst, &v85, &v83);
      *buf = *__dst;
      v70 = v80;
      memset(__dst, 0, sizeof(__dst));
      v71 = *v81;
      v80 = 0;
      v81[0] = 0;
      __p = v71;
      v88 = v70;
      v90 = v82;
      v81[1] = 0;
      v82 = 0;
      v91 = 1;
      LOBYTE(v76) = 0;
      v78 = 0;
      v72 = v1[6];
      if (!v72)
      {
        sub_100022DB4();
      }

      (*(*v72 + 48))(v72, buf, &v76);
      if (v78 == 1 && v77 < 0)
      {
        operator delete(v76);
      }

      if (v91 == 1)
      {
        if (SHIBYTE(v90) < 0)
        {
          operator delete(__p);
        }

        if (SHIBYTE(v88) < 0)
        {
          operator delete(*buf);
        }
      }

      if (SHIBYTE(v82) < 0)
      {
        operator delete(v81[0]);
      }

      if (SHIBYTE(v80) < 0)
      {
        operator delete(*__dst);
      }

      if (SHIBYTE(v84) < 0)
      {
        operator delete(v83);
      }

      if (SHIBYTE(v86) < 0)
      {
        operator delete(v85);
      }
    }

    goto LABEL_103;
  }

  memset(buf, 0, sizeof(buf));
  v5 = Registry::getServiceMap(*(v2 + 5));
  v6 = v5;
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

  std::mutex::lock(v5);
  *__dst = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __dst);
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
      goto LABEL_19;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
  v14 = 1;
LABEL_19:
  (*(*v13 + 8))(buf, v13, v2[14]);
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (!*buf)
  {
    goto LABEL_57;
  }

  v25 = v1[2];
  if (v25 && [v25 code] != 4)
  {
    v26 = *(v2 + 4);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *__dst = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I attestKeyAfterKeyGen failed. Erase key from NV", __dst, 2u);
    }

    v27 = Registry::getServiceMap(*(v2 + 5));
    v28 = v27;
    if (v29 < 0)
    {
      v30 = (v29 & 0x7FFFFFFFFFFFFFFFLL);
      v31 = 5381;
      do
      {
        v29 = v31;
        v32 = *v30++;
        v31 = (33 * v31) ^ v32;
      }

      while (v32);
    }

    std::mutex::lock(v27);
    *__dst = v29;
    v33 = sub_100009510(&v28[1].__m_.__sig, __dst);
    if (v33)
    {
      v35 = v33[3];
      v34 = v33[4];
      if (v34)
      {
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v28);
        atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v34);
        v36 = 0;
        goto LABEL_45;
      }
    }

    else
    {
      v35 = 0;
    }

    std::mutex::unlock(v28);
    v34 = 0;
    v36 = 1;
LABEL_45:
    (*(*v35 + 32))(v35, *buf + 24, @"AttestationKeyId", @"LazuliAttestation", 0, 1);
    if ((v36 & 1) == 0)
    {
      sub_100004A34(v34);
    }
  }

  v48 = Registry::getServiceMap(*(v2 + 5));
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
  *__dst = v50;
  v54 = sub_100009510(&v49[1].__m_.__sig, __dst);
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
      goto LABEL_55;
    }
  }

  else
  {
    v56 = 0;
  }

  std::mutex::unlock(v49);
  v55 = 0;
  v57 = 1;
LABEL_55:
  (*(*v56 + 16))(v56, *buf + 24, @"AttestationAttested", kCFBooleanFalse, @"LazuliAttestation", 0, 1, 0);
  if ((v57 & 1) == 0)
  {
    sub_100004A34(v55);
  }

LABEL_57:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v58 = v1[6];
  if (v58)
  {
    buf[0] = 0;
    v91 = 0;
    __dst[0] = 0;
    LOBYTE(v81[0]) = 0;
    (*(*v58 + 48))(v58, buf, __dst);
    if (LOBYTE(v81[0]) == 1 && SHIBYTE(v80) < 0)
    {
      operator delete(*__dst);
    }

    if (v91 == 1)
    {
      if (SHIBYTE(v90) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v88) < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_103:
  sub_10145F800(&v75);
  return sub_1000049E0(&v74);
}

void sub_10145F6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, char a39, uint64_t a40)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  sub_10145F800(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

id **sub_10145F800(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    sub_100115C78((v1 + 3));
    operator delete();
  }

  return result;
}

uint64_t *sub_10145F868(void *a1)
{
  v1 = *a1;
  v40 = a1;
  v41 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(v1 + 8);
    v5 = *(v1 + 16);
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2112;
    *&buf[14] = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I generateKey keyId=%@, error=%@", buf, 0x16u);
  }

  if (*(v1 + 16))
  {
    v6 = *(v1 + 48);
    if (v6)
    {
      buf[0] = 0;
      v49 = 0;
      LOBYTE(__p[0]) = 0;
      v44 = 0;
      (*(*v6 + 48))(v6, buf, __p);
      if (v44 == 1 && v43 < 0)
      {
        operator delete(__p[0]);
      }

      if (v49 == 1)
      {
        if (v48 < 0)
        {
          operator delete(v47);
        }

        if (v46 < 0)
        {
          operator delete(*buf);
        }
      }
    }

    goto LABEL_47;
  }

  *buf = 0;
  *&buf[8] = 0;
  ServiceMap = Registry::getServiceMap(v2[5]);
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
  __p[0] = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, __p);
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
LABEL_21:
  (*(*v15 + 8))(buf, v15, *(v2 + 14));
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (!*buf)
  {
    goto LABEL_44;
  }

  v17 = Registry::getServiceMap(v2[5]);
  v18 = v17;
  v20 = v19;
  if (v19 < 0)
  {
    v21 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v22 = 5381;
    do
    {
      v20 = v22;
      v23 = *v21++;
      v22 = (33 * v22) ^ v23;
    }

    while (v23);
  }

  std::mutex::lock(v17);
  __p[0] = v20;
  v24 = sub_100009510(&v18[1].__m_.__sig, __p);
  if (v24)
  {
    v26 = v24[3];
    v25 = v24[4];
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v18);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
      v27 = 0;
      goto LABEL_32;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v18);
  v25 = 0;
  v27 = 1;
LABEL_32:
  (*(*v26 + 16))(v26, *buf + 24, @"AttestationKeyId", *(v1 + 8), @"LazuliAttestation", 0, 1, 0, v40, v41);
  if ((v27 & 1) == 0)
  {
    sub_100004A34(v25);
  }

  v28 = Registry::getServiceMap(v2[5]);
  v29 = v28;
  if (v19 < 0)
  {
    v30 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
    v31 = 5381;
    do
    {
      v19 = v31;
      v32 = *v30++;
      v31 = (33 * v31) ^ v32;
    }

    while (v32);
  }

  std::mutex::lock(v28);
  __p[0] = v19;
  v33 = sub_100009510(&v29[1].__m_.__sig, __p);
  if (v33)
  {
    v35 = v33[3];
    v34 = v33[4];
    if (v34)
    {
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v29);
      atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v34);
      v36 = 0;
      goto LABEL_42;
    }
  }

  else
  {
    v35 = 0;
  }

  std::mutex::unlock(v29);
  v34 = 0;
  v36 = 1;
LABEL_42:
  (*(*v35 + 16))(v35, *buf + 24, @"AttestationAttested", kCFBooleanFalse, @"LazuliAttestation", 0, 1, 0);
  if ((v36 & 1) == 0)
  {
    sub_100004A34(v34);
  }

LABEL_44:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v37 = *(v1 + 8);
  v38 = *(v1 + 56);
  sub_100115BE0(buf, v1 + 24);
  sub_10145DB74(v2, v37, v38, buf);
  sub_100115C78(buf);
LABEL_47:
  sub_10145F800(&v41);
  return sub_1000049E0(&v40);
}

void sub_10145FCE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, int a18, __int16 a19, char a20, char a21, std::__shared_weak_count *a22)
{
  if ((v22 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  sub_10145F800(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10145FD90(void **a1)
{
  v1 = *a1;
  v42 = a1;
  v43 = v1;
  v2 = *v1;
  v3 = *(*v1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v1[6];
    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I generateAssertion error=%@", buf, 0xCu);
  }

  if (!v1[6])
  {
    v15 = v1[1];
    if (v15)
    {
      if (v1[5])
      {
        v16 = [v15 base64EncodedStringWithOptions:0];
        v44[0] = 0;
        v44[1] = 0;
        v45 = 0;
        v17 = v16;
        sub_10000501C(v44, [v16 UTF8String]);
        buf[0] = 0;
        v53 = 0;
        if (SHIBYTE(v45) < 0)
        {
          sub_100005F2C(__dst, v44[0], v44[1]);
        }

        else
        {
          *__dst = *v44;
          v47 = v45;
        }

        v48 = 1;
        v40 = v1[5];
        if (!v40)
        {
          sub_100022DB4();
        }

        (*(*v40 + 48))(v40, buf, __dst);
        if (v48 == 1 && SHIBYTE(v47) < 0)
        {
          operator delete(*__dst);
        }

        if (v53 == 1)
        {
          if (v52 < 0)
          {
            operator delete(__p);
          }

          if (v50 < 0)
          {
            operator delete(*buf);
          }
        }

        if (SHIBYTE(v45) < 0)
        {
          operator delete(v44[0]);
        }
      }

      goto LABEL_65;
    }
  }

  *buf = 0uLL;
  ServiceMap = Registry::getServiceMap(*(v2 + 40));
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
  *__dst = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, __dst);
  if (v11)
  {
    v12 = v11[3];
    v13 = v11[4];
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v6);
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v13);
      v14 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v6);
  v13 = 0;
  v14 = 1;
LABEL_16:
  (*(*v12 + 8))(buf, v12, *(v2 + 56));
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (!*buf)
  {
    goto LABEL_41;
  }

  v18 = *(v2 + 32);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *__dst = 0;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I assertKey failed. Erase key from NV", __dst, 2u);
  }

  v19 = Registry::getServiceMap(*(v2 + 40));
  v20 = v19;
  v22 = v21;
  if (v21 < 0)
  {
    v23 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v24 = 5381;
    do
    {
      v22 = v24;
      v25 = *v23++;
      v24 = (33 * v24) ^ v25;
    }

    while (v25);
  }

  std::mutex::lock(v19);
  *__dst = v22;
  v26 = sub_100009510(&v20[1].__m_.__sig, __dst);
  if (v26)
  {
    v27 = v26[3];
    v28 = v26[4];
    if (v28)
    {
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v20);
      atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v28);
      v29 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v27 = 0;
  }

  std::mutex::unlock(v20);
  v28 = 0;
  v29 = 1;
LABEL_29:
  (*(*v27 + 32))(v27, *buf + 24, @"AttestationKeyId", @"LazuliAttestation", 0, 1);
  if ((v29 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v30 = Registry::getServiceMap(*(v2 + 40));
  v31 = v30;
  if (v21 < 0)
  {
    v32 = (v21 & 0x7FFFFFFFFFFFFFFFLL);
    v33 = 5381;
    do
    {
      v21 = v33;
      v34 = *v32++;
      v33 = (33 * v33) ^ v34;
    }

    while (v34);
  }

  std::mutex::lock(v30);
  *__dst = v21;
  v35 = sub_100009510(&v31[1].__m_.__sig, __dst);
  if (v35)
  {
    v36 = v35[3];
    v37 = v35[4];
    if (v37)
    {
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v31);
      atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v37);
      v38 = 0;
      goto LABEL_39;
    }
  }

  else
  {
    v36 = 0;
  }

  std::mutex::unlock(v31);
  v37 = 0;
  v38 = 1;
LABEL_39:
  (*(*v36 + 16))(v36, *buf + 24, @"AttestationAttested", kCFBooleanFalse, @"LazuliAttestation", 0, 1, 0);
  if ((v38 & 1) == 0)
  {
    sub_100004A34(v37);
  }

LABEL_41:
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v39 = v1[5];
  if (v39)
  {
    buf[0] = 0;
    v53 = 0;
    __dst[0] = 0;
    v48 = 0;
    (*(*v39 + 48))(v39, buf, __dst);
    if (v48 == 1 && SHIBYTE(v47) < 0)
    {
      operator delete(*__dst);
    }

    if (v53 == 1)
    {
      if (v52 < 0)
      {
        operator delete(__p);
      }

      if (v50 < 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_65:
  sub_101460408(&v43);
  return sub_1000049E0(&v42);
}

void sub_101460310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, char a24, int a25, __int16 a26, char a27, char a28, uint64_t a29)
{
  sub_10038E598(&a26);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  sub_101460408(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_101460408(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {

    sub_100115C78(v1 + 16);
    operator delete();
  }

  return result;
}

void sub_10146046C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1014604C0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101460500(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10146054C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3DF58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1014605A0(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    sub_100004A34(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 7));

  return sub_1000C0544(a1 + 3);
}

uint64_t *sub_1014605EC(uint64_t *a1)
{
  v1 = *a1;
  v76 = a1;
  v77 = v1;
  v2 = *(v1 + 8);
  v3 = *(*v1 + 64);
  sub_100115BE0(v82, v1 + 16);
  v4 = *(v1 + 48);
  v5 = v2;
  v80 = 0;
  v81 = 0;
  ServiceMap = Registry::getServiceMap(*(v3 + 40));
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
  *buf = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  (*(*v14 + 8))(&v80, v14, *(v3 + 56));
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (v80 && (*(v80 + 48) & 1) != 0)
  {
    v79 = 0;
    v16 = Registry::getServiceMap(*(v3 + 40));
    v17 = v16;
    v19 = v18;
    if (v18 < 0)
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
    *buf = v19;
    v23 = sub_100009510(&v17[1].__m_.__sig, buf);
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
        goto LABEL_32;
      }
    }

    else
    {
      v25 = 0;
    }

    std::mutex::unlock(v17);
    v24 = 0;
    v26 = 1;
LABEL_32:
    (*(*v25 + 24))(__p, v25, v80 + 24, @"AttestationKeyId", @"LazuliAttestation", 0, 1);
    sub_100060DE8(&v79, __p);
    sub_10000A1EC(__p);
    if ((v26 & 1) == 0)
    {
      sub_100004A34(v24);
    }

    v28 = v79;
    if (v79)
    {
      v29 = v79;
      v30 = *(v3 + 32);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = (v80 + 24);
        v32 = *(v80 + 47);
        v33 = v32;
        if ((v32 & 0x80u) != 0)
        {
          v32 = *(v80 + 32);
        }

        if (v33 < 0)
        {
          v31 = *(v80 + 24);
        }

        if (!v32)
        {
          v31 = "<invalid>";
        }

        *buf = 136315394;
        *&buf[4] = v31;
        *&buf[12] = 2112;
        *&buf[14] = v29;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I Restore PersonalityID=%s, keyId=%@", buf, 0x16u);
      }
    }

    v78 = 0;
    v34 = Registry::getServiceMap(*(v3 + 40));
    v35 = v34;
    if (v18 < 0)
    {
      v36 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
      v37 = 5381;
      do
      {
        v18 = v37;
        v38 = *v36++;
        v37 = (33 * v37) ^ v38;
      }

      while (v38);
    }

    std::mutex::lock(v34);
    *buf = v18;
    v39 = sub_100009510(&v35[1].__m_.__sig, buf);
    if (v39)
    {
      v41 = v39[3];
      v40 = v39[4];
      if (v40)
      {
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v40->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v40);
        v42 = 0;
        goto LABEL_51;
      }
    }

    else
    {
      v41 = 0;
    }

    std::mutex::unlock(v35);
    v40 = 0;
    v42 = 1;
LABEL_51:
    (*(*v41 + 24))(__p, v41, v80 + 24, @"AttestationAttested", @"LazuliAttestation", 0, 1);
    sub_10002FE1C(&v78, __p);
    sub_10000A1EC(__p);
    if ((v42 & 1) == 0)
    {
      sub_100004A34(v40);
    }

    if (v78)
    {
      buf[0] = 0;
      ctu::cf::assign(buf, v78, v43);
      v44 = buf[0];
      v45 = *(v3 + 32);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = (v80 + 24);
        v47 = *(v80 + 47);
        v48 = v47;
        if ((v47 & 0x80u) != 0)
        {
          v47 = *(v80 + 32);
        }

        if (v48 < 0)
        {
          v46 = *(v80 + 24);
        }

        if (!v47)
        {
          v46 = "<invalid>";
        }

        v49 = "true";
        if (!v44)
        {
          v49 = "false";
        }

        *buf = 136315394;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = v49;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I Restore PersonalityID=%s, keyAttested=%s", buf, 0x16u);
      }
    }

    else
    {
      LOBYTE(v44) = 0;
    }

    v50 = [v28 length];
    v51 = *(v3 + 32);
    v52 = os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT);
    if (!v50 || v4)
    {
      if (v52)
      {
        *buf = 67109120;
        *&buf[4] = v4;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I Key does not exist (forced=%d), Generate the key", buf, 8u);
      }

      sub_100115BE0(__p, v82);
      v62 = v5;
      v63 = *(v3 + 8);
      if (!v63 || (v64 = *v3, (v65 = std::__shared_weak_count::lock(v63)) == 0))
      {
        sub_100013CC4();
      }

      v66 = v65;
      p_shared_weak_owners = &v65->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v65->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v65);
      v68 = +[DCAppAttestServicePriv sharedService];
      v69 = *(v3 + 60);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3321888768;
      *&buf[16] = sub_10145E054;
      v88 = &unk_101F3DDD0;
      v90 = v3;
      v91 = v64;
      v92 = v66;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      sub_100115BE0(v93, __p);
      if (v69)
      {
        v70 = @"rcsStressTest";
      }

      else
      {
        v70 = 0;
      }

      v71 = v62;
      v89 = v71;
      [v68 generateKeyWithTeamIdentifier:v70 completion:buf];

      sub_100115C78(v93);
      if (v92)
      {
        std::__shared_weak_count::__release_weak(v92);
      }

      std::__shared_weak_count::__release_weak(v66);
    }

    else
    {
      if ((v44 & 1) == 0)
      {
        if (v52)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I key exists but not attested", buf, 2u);
        }

        sub_100115BE0(buf, v82);
        v72 = buf;
        sub_10145DB74(v3, v28, v5, buf);
        goto LABEL_92;
      }

      if (v52)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "#I key already attested. Assert key", buf, 2u);
      }

      sub_100115BE0(__p, v82);
      v75 = v28;
      v53 = v5;
      v54 = *(v3 + 8);
      if (!v54 || (v55 = *v3, (v56 = std::__shared_weak_count::lock(v54)) == 0))
      {
        sub_100013CC4();
      }

      v57 = v56;
      v58 = &v56->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v56->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v56);
      v59 = +[DCAppAttestServicePriv sharedService];
      v60 = *(v3 + 60);
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3321888768;
      *&buf[16] = sub_10145E298;
      v88 = &unk_101F3DE00;
      v89 = v3;
      v90 = v55;
      v91 = v57;
      atomic_fetch_add_explicit(v58, 1uLL, memory_order_relaxed);
      sub_100115BE0(&v92, __p);
      if (v60)
      {
        v61 = @"rcsStressTest";
      }

      else
      {
        v61 = 0;
      }

      [v59 generateAssertion:v75 teamIdentifier:v61 clientDataHash:v53 completionHandler:buf];

      sub_100115C78(&v92);
      if (v91)
      {
        std::__shared_weak_count::__release_weak(v91);
      }

      std::__shared_weak_count::__release_weak(v57);
    }

    v72 = __p;
LABEL_92:
    sub_100115C78(v72);
    sub_100045C8C(&v78);
    sub_100005978(&v79);

    goto LABEL_93;
  }

  v27 = *(v3 + 32);
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    v74 = *(v3 + 56);
    *buf = 67109120;
    *&buf[4] = v74;
    _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "no active SIM on slot %d", buf, 8u);
  }

  if (v83)
  {
    buf[0] = 0;
    LOBYTE(v91) = 0;
    LOBYTE(__p[0]) = 0;
    v86 = 0;
    (*(*v83 + 48))(v83, buf, __p);
    if (v86 == 1 && v85 < 0)
    {
      operator delete(__p[0]);
    }

    if (v91 == 1)
    {
      if (SHIBYTE(v90) < 0)
      {
        operator delete(v88);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }
  }

LABEL_93:
  if (v81)
  {
    sub_100004A34(v81);
  }

  sub_100115C78(v82);
  sub_1014610B0(&v77);
  return sub_1000049E0(&v76);
}

void sub_101460EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, const void *a13, const void *a14, uint64_t a15, std::__shared_weak_count *a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, std::__shared_weak_count *a37, std::__shared_weak_count *a38)
{
  sub_100115C78(v43 + 56);
  if (a37)
  {
    std::__shared_weak_count::__release_weak(a37);
  }

  std::__shared_weak_count::__release_weak(v41);
  sub_100115C78(&__p);
  sub_100045C8C(&a13);
  sub_100005978(&a14);

  if (a16)
  {
    sub_100004A34(a16);
  }

  sub_100115C78(&a17);
  sub_1014610B0(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

uint64_t *sub_1014610B0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100115C78(v1 + 16);

    operator delete();
  }

  return result;
}

void sub_101461108(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  v1 = a1;
  sub_100A5C2CC(v2, &v1, "kCarrierBundleTriggerResetCarrierBundle", sub_1014612F4, 3);
}

void sub_1014612F4(Registry **a1)
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

void sub_1014613FC(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10146141C(Registry **a1)
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
    (*(*v9 + 96))(v9, 5);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_101461528(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101461548(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t *a5)
{
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
  cf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &cf);
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
        goto LABEL_15;
      }

      goto LABEL_10;
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

LABEL_10:
  cf = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundlePathForBundle");
  ctu::xpc_to_cf(&v22, value, v18);
  sub_101462380(&cf, &v22);
  sub_10000A1EC(&v22);
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v20 = *a5;
  v19 = a5[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v24[0] = off_101F3DFA8;
  v24[1] = v20;
  v24[2] = v19;
  v24[3] = v24;
  (*(*v15 + 80))(v15, &v21, v24);
  sub_10000FF50(v24);
  sub_1002030AC(&v21);
  sub_1002030AC(&cf);
LABEL_15:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_101461724(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101461780(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
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
  cf = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &cf);
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
  cf = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundleOTAServerOverrideUrl");
  ctu::xpc_to_cf(&v18, value, v16);
  sub_100060DE8(&cf, &v18);
  sub_10000A1EC(&v18);
  v17 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  (*(*v13 + 112))(v13, &v17);
  sub_100005978(&v17);
  sub_100005978(&cf);
LABEL_13:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_1014618E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  sub_100005978(va);
  sub_100005978(va1);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

void sub_101461928(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
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
  v16[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v16);
  if (!v12)
  {
    std::mutex::unlock(v7);
    return;
  }

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
LABEL_13:
      sub_100004A34(v13);
      return;
    }
  }

  else
  {
    std::mutex::unlock(v7);
    if (!v14)
    {
      return;
    }
  }

  v19 = 0;
  (*(*v14 + 104))(&v19, v14);
  if (v19)
  {
    ctu::cf_to_xpc(&v17, v19, v15);
    v16[0] = *a5;
    v16[1] = "kCarrierBundleOTAServerOverrideUrl";
    sub_10000F688(v16, &v17, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v17);
    v17 = 0;
  }

  sub_100005978(&v19);
  if (v13)
  {
    goto LABEL_13;
  }
}

void sub_101461A90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_100005978(va);
  if (v6)
  {
    sub_100004A34(v6);
  }

  _Unwind_Resume(a1);
}

const void **sub_101461ABC(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4)
{
  v20 = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundleAttachAPNSettings");
  ctu::xpc_to_cf(&v18, value, v6);
  sub_100010180(&v20, &v18);
  sub_10000A1EC(&v18);
  v18 = 0;
  v19 = 0;
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
  v21 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v21);
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
      goto LABEL_9;
    }
  }

  else
  {
    v15 = 0;
  }

  std::mutex::unlock(v8);
  v14 = 0;
  v16 = 1;
LABEL_9:
  sub_100419930(v15, &v18);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }

  if (v18)
  {
    v22[0] = off_101F3E028;
    v22[3] = v22;
    (*(*v18 + 112))(v18, v20, v22);
    sub_10000FF50(v22);
  }

  if (v19)
  {
    sub_100004A34(v19);
  }

  return sub_10001021C(&v20);
}

void sub_101461C7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va1, a4);
  va_start(va, a4);
  v5 = va_arg(va1, const void *);
  v7 = va_arg(va1, void);
  sub_10000FF50(va1);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101461CE8(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v19 = 0;
  v20 = 0;
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
  v21 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v21);
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
      goto LABEL_9;
    }
  }

  else
  {
    v14 = 0;
  }

  std::mutex::unlock(v7);
  v13 = 0;
  v15 = 1;
LABEL_9:
  sub_100419930(v14, &v19);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  v16 = v19;
  if (v19)
  {
    v18 = *a5;
    v17 = a5[1];
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v22[0] = off_101F3E0A8;
    v22[1] = v18;
    v22[2] = v17;
    v22[3] = v22;
    (*(*v16 + 128))(v16, v22);
    sub_10006372C(v22);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }
}

void sub_101461E80(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10006372C(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

void sub_101461EC4(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
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
  v19 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v19);
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
        goto LABEL_14;
      }

      goto LABEL_10;
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
    goto LABEL_14;
  }

LABEL_10:
  v16 = a5[1];
  v17 = *a5;
  v18 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  (*(*v14 + 224))(v14, &v17);
  if (v18)
  {
    sub_100004A34(v18);
  }

LABEL_14:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_101461FF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
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

void sub_101462020(Registry **a1)
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
    (*(*v9 + 232))(v9);
  }

LABEL_11:
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }
}

void sub_101462128(_Unwind_Exception *exception_object)
{
  v3 = v1;
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_101462148(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t *a5)
{
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
  cf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &cf);
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
        goto LABEL_15;
      }

      goto LABEL_10;
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

LABEL_10:
  cf = 0;
  value = xpc_dictionary_get_value(*a4, "kCarrierBundleWatchBundleMatchCriteria");
  ctu::xpc_to_cf(&v22, value, v18);
  sub_100010180(&cf, &v22);
  sub_10000A1EC(&v22);
  v21 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v20 = *a5;
  v19 = a5[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v24[0] = off_101F3E128;
  v24[1] = v20;
  v24[2] = v19;
  v24[3] = v24;
  (*(*v15 + 248))(v15, &v21, v24);
  sub_100D9F910(v24);
  sub_10001021C(&v21);
  sub_10001021C(&cf);
LABEL_15:
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v14);
  }
}

void sub_101462324(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101462380(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFURLGetTypeID()))
  {
    *a1 = v3;
    CFRetain(v3);
  }

  else
  {
    *a1 = 0;
  }

  return a1;
}

void *sub_1014623E4(void *a1)
{
  *a1 = off_101F3DFA8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101462430(void *a1)
{
  *a1 = off_101F3DFA8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101462508(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3DFA8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101462540(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101462550(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_101462590(uint64_t a1, BOOL *a2)
{
  v4 = xpc_BOOL_create(*a2);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = *(a1 + 8);
  v3[1] = "kCarrierBundleInstallResult";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

uint64_t sub_101462614(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014626EC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101462738(void *a1)
{
  *a1 = off_101F3E0A8;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101462784(void *a1)
{
  *a1 = off_101F3E0A8;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_10146285C(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3E0A8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101462894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1014628A4(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_1014628E4(uint64_t a1, const void **a2)
{
  v5 = *a2;
  v3 = v5;
  *a2 = 0;
  if (v3)
  {
    ctu::cf_to_xpc(&object, v3, a2);
    v6[0] = *(a1 + 8);
    v6[1] = "kCarrierBundleAttachAPNSettings";
    sub_10000F688(v6, &object, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(object);
  }

  return sub_10001021C(&v5);
}

void sub_101462968(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10146297C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_1014629C8(void *a1)
{
  *a1 = off_101F3E128;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101462A14(void *a1)
{
  *a1 = off_101F3E128;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101462AEC(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F3E128;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101462B24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101462B34(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

const void **sub_101462B74(uint64_t a1, const void **a2)
{
  v5 = *a2;
  v3 = v5;
  *a2 = 0;
  if (v3)
  {
    ctu::cf_to_xpc(&object, v3, a2);
    v6[0] = *(a1 + 8);
    v6[1] = "kCarrierBundleRemoteCardSettingsServerURL";
    sub_10000F688(v6, &object, &v8);
    xpc_release(v8);
    v8 = 0;
    xpc_release(object);
  }

  return sub_100005978(&v5);
}

void sub_101462BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101462C0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101462C74(uint64_t a1)
{
  v2 = sub_101171450(a1);
  *v2 = &off_101F3E1A8;
  sub_1008E12B8((v2 + 224));
  sub_10000501C(__p, &unk_101CEC6A2);
  sub_100634618(&v6, -1, __p);
  *(a1 + 264) = v6;
  *(a1 + 272) = v7;
  *(a1 + 288) = v8;
  v7 = 0uLL;
  v8 = 0;
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 296) = 0;
  *(a1 + 304) = -1;
  return a1;
}

void sub_101462D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (*(v15 + 255) < 0)
  {
    operator delete(*(v15 + 232));
  }

  sub_101462D64(v15);
  _Unwind_Resume(a1);
}

RestServiceBase *sub_101462D64(RestServiceBase *this)
{
  *this = off_101F145A0;
  v2 = *(this + 18);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 12);
  if (v4)
  {
    sub_100004A34(v4);
  }

  RestServiceBase::~RestServiceBase(this);
  ctu::OsLogLogger::~OsLogLogger((this + 80));
  sub_1000C0544(this + 6);
  return this;
}

void **sub_101462DE0(void **this)
{
  *this = &off_101F3E1A8;
  if (*(this + 295) < 0)
  {
    operator delete(this[34]);
  }

  if (*(this + 255) < 0)
  {
    operator delete(this[29]);
  }

  *this = off_101F145A0;
  v2 = this[18];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = this[16];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = this[12];
  if (v4)
  {
    sub_100004A34(v4);
  }

  RestServiceBase::~RestServiceBase(this);
  ctu::OsLogLogger::~OsLogLogger((this + 10));
  sub_1000C0544(this + 6);
  return this;
}

void sub_101462E9C(void **a1)
{
  sub_101462DE0(a1);

  operator delete();
}

void sub_10146324C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if ((v21 & 1) == 0)
  {
    sub_100004A34(v20);
  }

  _Unwind_Resume(a1);
}

void sub_101463300(void *a1)
{
  sub_10000501C(__p, "/cc/props/wrm-enable-baseband-state");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/props/wrm-enable-telephony");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_10000501C(__p, "/cc/prefs-nb/wrm-enable-baseband-state-override");
  ctu::RestModule::unobserveProperty();
  if (v3 < 0)
  {
    operator delete(__p[0]);
  }

  sub_101171DA8(a1);
}

void sub_1014633C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1014633E8(uint64_t a1)
{
  v2 = *(a1 + 220);
  if (v2)
  {
    v3 = *(a1 + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [    ] evaluation uses forced debug mode: %s", &v10, 0xCu);
      return *(a1 + 220);
    }
  }

  else
  {
    v2 = sub_101171F08(a1);
    v4 = *(a1 + 80);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315138;
      v11 = asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current forced_mode: %s", &v10, 0xCu);
    }

    if ((*(a1 + 176) & 1) == 0 && v2 != 3)
    {
      if (*(a1 + 208))
      {
        v5 = *(a1 + 80);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Emergency online assertion is being requested / held. No Silence assertion possible", &v10, 2u);
        }
      }

      else if (*(a1 + 300) && (v2 == 5 || !v2))
      {
        v6 = *(a1 + 264);
        if (*(a1 + 304) != -1)
        {
          v6 = *(a1 + 304);
        }

        if (v6 != 2)
        {
          v7 = *(a1 + 80);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
          {
            v8 = asString();
            v10 = 136315138;
            v11 = v8;
            _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Current forced_mode: %s Overwriting to CMAS mode", &v10, 0xCu);
          }

          return 4;
        }
      }
    }
  }

  return v2;
}

void sub_1014635DC(uint64_t a1)
{
  sub_101172530(a1);
  v2 = *(a1 + 108);
  if ((v2 - 1) >= 4)
  {
    if (v2 != 5)
    {
      return;
    }

    if (!*(a1 + 300))
    {
      return;
    }

    v4 = *(a1 + 80);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = ctu::rest::asString();
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I [    ] rejecting LimitToCmasOnly mode anti-assertion while in state: %s", buf, 0xCu);
      if (!*(a1 + 300))
      {
        return;
      }
    }

    sub_10000501C(__p, "/cc/assertions/limit_to_cmas_mode");
    *buf = *__p;
    v9 = v7;
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*(a1 + 296));
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  else
  {
    if (*(a1 + 300) != 1)
    {
      return;
    }

    v3 = *(a1 + 80);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I [    ] granting LimitToCmasOnly mode anti-assertion", buf, 2u);
      if (*(a1 + 300) != 1)
      {
        return;
      }
    }

    sub_10000501C(__p, "/cc/assertions/limit_to_cmas_mode");
    *buf = *__p;
    v9 = v7;
    __p[1] = 0;
    v7 = 0;
    __p[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*(a1 + 296));
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  ctu::RestModule::setProperty();
  xpc_release(object);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*buf);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101463800(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101463888(uint64_t a1)
{
  v2 = *(a1 + 264);
  if (*(a1 + 304) != -1)
  {
    v2 = *(a1 + 304);
  }

  if ((v2 - 1) >= 2 && !*(a1 + 216) && (*(a1 + 176) & 1) == 0 && !*(a1 + 208) && !*(a1 + 192) && !*(a1 + 220))
  {
    return 1;
  }

  result = (*(*a1 + 48))(a1);
  if (!result)
  {
    if (*(a1 + 176) == 1)
    {
      if (capabilities::ct::supportsCampOnlyMode(result))
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }

    else if (*(a1 + 192) == 1)
    {
      return 5;
    }

    else
    {
      v4 = *(a1 + 264);
      if (*(a1 + 304) != -1)
      {
        v4 = *(a1 + 304);
      }

      if (v4 == 1)
      {
        return 4;
      }

      else
      {
        return 2;
      }
    }
  }

  return result;
}

void sub_101463978(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 232);
  if (*(a1 + 255) < 0)
  {
    if (!*(a1 + 240))
    {
      goto LABEL_11;
    }

    v4 = *v4;
  }

  else if (!*(a1 + 255))
  {
    goto LABEL_11;
  }

  v13 = xpc_string_create(v4);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = 0uLL;
  v16 = 0;
  ctu::cf::assign();
  *__p = 0uLL;
  v10 = 0;
  v11 = a2;
  v12 = __p;
  sub_10000F688(&v11, &v13, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v13);
  v13 = 0;
LABEL_11:
  v5 = (a1 + 272);
  if (*(a1 + 295) < 0)
  {
    if (!*(a1 + 280))
    {
      return;
    }

    v5 = *v5;
  }

  else if (!*(a1 + 295))
  {
    return;
  }

  v7 = xpc_string_create(v5);
  if (!v7)
  {
    v7 = xpc_null_create();
  }

  v15 = 0uLL;
  v16 = 0;
  ctu::cf::assign();
  *__p = v15;
  v10 = v16;
  v11 = a2;
  v6 = __p;
  if (v16 < 0)
  {
    v6 = __p[0];
  }

  v12 = v6;
  sub_10000F688(&v11, &v7, &v8);
  xpc_release(v8);
  v8 = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v7);
}

void sub_101463B20(_Unwind_Exception *a1)
{
  if (*(v2 - 33) < 0)
  {
    operator delete(*(v2 - 56));
  }

  xpc_release(v1);
  _Unwind_Resume(a1);
}

__n128 sub_101463BF8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E218;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101463C30(uint64_t *a1, void **a2)
{
  sub_1006348DC(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101463CAC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101463D74(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E298;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101463DAC(uint64_t *a1, void **a2)
{
  sub_1006342C8(a1[1], a2);
  v3 = a1[3];
  v4 = a1[4];
  v5 = (a1[2] + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5);
}

uint64_t sub_101463E28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101463EE8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E318;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101463F18(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  v3 = *(v2 + 80);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = ctu::rest::asString();
    v5 = *(v2 + 296);
    v6 = 136315394;
    v7 = v4;
    v8 = 1024;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I LimitToCmasMode assertion change: %s (%d)", &v6, 0x12u);
  }

  sub_1011732A4(v2);
}

uint64_t sub_101463FE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1014640A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3E398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1014640E0(void *a1, xpc_object_t *a2)
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

uint64_t sub_1014641D0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10146421C(uint64_t a1, uint64_t a2)
{
  Registry::getRegistryModel(*a2);
  v3 = *(a2 + 8);
  v5 = *a2;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  sub_1012EBDFC(&v4);
}

void sub_1014674E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v30 = *(v28 - 88);
  if (v30)
  {
    sub_100004A34(v30);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v31 = *(v28 - 120);
  if (v31)
  {
    sub_100004A34(v31);
  }

  v32 = *(v28 - 104);
  if (v32)
  {
    sub_100004A34(v32);
  }

  _Unwind_Resume(exception_object);
}

void sub_10146ED10(_Unwind_Exception *a1)
{
  v5 = *(v3 - 184);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(v3 - 160);
  if (v6)
  {
    sub_100004A34(v6);
  }

  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(a1);
}

void **sub_101470254(void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      sub_1000CE3D4();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      sub_1010A6A54(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = sub_1000210F0(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

uint64_t sub_1014703DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10147042C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101470464(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101470494(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014704D4(std::mutex *this, void *a2)
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

void sub_1014705D4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E4F8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470654(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10147068C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_1014706BC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10147071C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E5C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014707B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E610;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470854(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E660;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014708F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E6B0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10147098C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E700;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470A28(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E750;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470AC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E7A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470B60(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E7F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470BFC(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E840;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470C98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E890;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101470D14()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_101470D44(uint64_t *a1)
{
  v1 = a1;
  if (*(a1 + 23) < 0)
  {
    v1 = *a1;
  }

  [NSString stringWithUTF8String:v1];
  [[NEPathRule alloc] initWithSigningIdentifier:objc_claimAutoreleasedReturnValue()];
  operator new();
}

void sub_101470ED8(id *a1)
{
  sub_100021394(a1);

  operator delete();
}

id sub_101470F24(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a2 == 0);
  }

  return [*(a1 + 8) setCellularBehavior:v2];
}

id sub_101470F40(uint64_t a1, int a2)
{
  if (a2 == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2 * (a2 == 0);
  }

  return [*(a1 + 8) setWifiBehavior:v2];
}

void sub_101470F7C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F3E9C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t NetworkEmergencyNumbers::create@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::getRadioModuleType(a1);
  if (result == 2)
  {
    memset(v4, 0, sizeof(v4));
    sub_1011CF58C(v4);
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1014710D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_1000087B4(&a16);
  _Unwind_Resume(a1);
}

void *NetworkEmergencyNumbers::NetworkEmergencyNumbers(void *a1, void *a2, NSObject **a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a5[1];
  v12 = *a5;
  v13 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  v15[0] = off_101E2B528;
  v15[1] = sub_1000A840C;
  v15[3] = v15;
  sub_1011CF6B4(a1, a2, &object, a4, "NetworkEmergencyNumbers", "call.em.Network", &v12, v15);
  sub_1000A8744(v15);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101F3EA20;
  a1[42] = 0;
  a1[43] = 0;
  a1[40] = a1 + 41;
  a1[41] = 0;
  a1[44] = 0;
  a1[45] = 0;
  sub_100AE91C4(a1 + 46, &rest::kDefaultBundles);
  sub_100AE91C4(a1 + 49, &rest::kDefaultBundles);
  return a1;
}

void sub_10147129C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, dispatch_object_t object, uint64_t a13, char a14)
{
  sub_10032D3A4(v14 + 368, *(v14 + 376));
  a13 = v14 + 344;
  sub_1000B2AF8(&a13);
  sub_10004C4EC(v14 + 320, *(v14 + 328));
  sub_1011CFD08(v14);
  _Unwind_Resume(a1);
}

void sub_101471308(uint64_t a1)
{
  *a1 = off_101F3EA20;
  sub_10032D3A4(a1 + 392, *(a1 + 400));
  sub_10032D3A4(a1 + 368, *(a1 + 376));
  v2 = (a1 + 344);
  sub_1000B2AF8(&v2);
  sub_10004C4EC(a1 + 320, *(a1 + 328));
  sub_1011CFD08(a1);
}

void sub_10147138C(uint64_t a1)
{
  sub_101471308(a1);

  operator delete();
}

void sub_1014713C4(unint64_t a1, NSObject **a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
  }

  sub_1011CFF18(a1);
}

void sub_101471808(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group, char a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101471888(void *a1)
{
  sub_1011D0774(a1);
  DefaultEmergencyNumberList = capabilities::ct::getDefaultEmergencyNumberList(v2);
  if (DefaultEmergencyNumberList)
  {
    if (DefaultEmergencyNumberList == 1)
    {
      v4 = 6;
    }

    else
    {
      v4 = 0;
    }

    if (DefaultEmergencyNumberList == 2)
    {
      v5 = 7;
    }

    else
    {
      v5 = v4;
    }

    memset(v10, 0, 24);
    sub_10000501C(&__p, "911");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "112");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "000");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "08");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "110");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "999");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "118");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "119");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "120");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    sub_10000501C(&__p, "122");
    sub_1000D1054(v10, &__p);
    if (SHIBYTE(v12) < 0)
    {
      operator delete(__p);
    }

    subscriber::makeSimSlotRange();
    v7 = *(&__p + 1);
    v6 = __p;
    if (__p != *(&__p + 1))
    {
      v8 = v12;
      do
      {
        if (v8(*v6))
        {
          break;
        }

        ++v6;
      }

      while (v6 != v7);
      v9 = *(&__p + 1);
      while (v6 != v9)
      {
        sub_1011D0918(a1, v5, v10, *v6);
        do
        {
          ++v6;
        }

        while (v6 != v7 && (v8(*v6) & 1) == 0);
      }
    }

    sub_1011D1160(a1);
    *&__p = v10;
    sub_1000087B4(&__p);
  }
}

void sub_101471B34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  a13 = &a10;
  sub_1000087B4(&a13);
  _Unwind_Resume(a1);
}

void sub_101471BE4(uint64_t a1, _DWORD **a2)
{
  subscriber::makeSimSlotRange();
  v4 = v55;
  v5 = v56;
  if (v55 == v56)
  {
    return;
  }

  v6 = v57;
  do
  {
    if (v57(*v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != v56);
  v7 = v56;
  if (v4 == v56)
  {
    return;
  }

  do
  {
    v54 = *v4;
    v8 = (*(**(a1 + 48) + 16))(*(a1 + 48));
    *v52 = 0u;
    v53 = 0u;
    *v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    *v49 = 0u;
    *v47 = 0u;
    *v45 = 0u;
    memset(v46, 0, sizeof(v46));
    v44 = 0u;
    v9 = v54;
    for (i = *(a1 + 344); ; i += 42)
    {
      if (i == *(a1 + 352))
      {
        v11 = 0;
        goto LABEL_12;
      }

      if (*i == v54)
      {
        break;
      }
    }

    sub_100032BFC(&v44, i);
    v11 = 1;
    v9 = v54;
LABEL_12:
    BYTE8(v53) = v11;
    *__p = 0u;
    v43 = 0u;
    *v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    *v39 = 0u;
    *v37 = 0u;
    *v35 = 0u;
    memset(v36, 0, sizeof(v36));
    v34 = 0u;
    for (j = *a2; ; j += 42)
    {
      if (j == a2[1])
      {
        if ((v11 & 1) == 0)
        {
          goto LABEL_53;
        }

        v13 = *v8;
        if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 0;
          v17 = 0;
          v16 = 1;
          goto LABEL_28;
        }

        v14 = "INVALID";
LABEL_19:
        v15 = subscriber::asString();
        goto LABEL_20;
      }

      if (*j == v9)
      {
        break;
      }
    }

    sub_100032BFC(&v34, j);
    v16 = BYTE8(v53);
    BYTE8(v43) = 1;
    v18 = DWORD2(v34);
    if ((BYTE8(v53) & 1) != 0 && DWORD2(v34) == DWORD2(v44))
    {
      goto LABEL_53;
    }

    v13 = *v8;
    if (!os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 1;
      goto LABEL_28;
    }

    v14 = subscriber::asString();
    v15 = "INVALID";
    if (BYTE8(v53))
    {
      goto LABEL_19;
    }

LABEL_20:
    *buf = 136315394;
    *&buf[4] = v14;
    *&buf[12] = 2080;
    *&buf[14] = v15;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I SIM state change from %s to %s. Reassess operator normal setup em number checking", buf, 0x16u);
    v16 = BYTE8(v53);
    v17 = BYTE8(v43);
    v18 = DWORD2(v34);
LABEL_28:
    v19 = v17 & (v18 == 5);
    if ((v19 & 1) == 0 && (v16 & (DWORD2(v44) == 5)) != 0)
    {
      v20 = sub_101472BB8(a1, v54);
      v21 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v22 = CSIBOOLAsString(v20);
        *buf = 136315394;
        v23 = "Not checking";
        if (v20)
        {
          v23 = "Checking";
        }

        *&buf[4] = v22;
        *&buf[12] = 2080;
        *&buf[14] = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "#I SIM ready and roaming: %s. %s operator normal setup em number first", buf, 0x16u);
      }

      v24 = a1;
      goto LABEL_39;
    }

    if (!(v16 & (DWORD2(v44) == 5) | ((v19 & 1) == 0)))
    {
      v25 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I SIM not ready. Not checking operator normal setup em number first", buf, 2u);
      }

      v24 = a1;
LABEL_39:
      sub_101472E68(v24);
    }

    if (BYTE8(v53) == 1)
    {
      v26 = subscriber::isSimAbsent() ^ 1;
    }

    else
    {
      v26 = 0;
    }

    if (BYTE8(v43) == 1)
    {
      isSimAbsent = subscriber::isSimAbsent();
      if (((isSimAbsent | v26) & 1) == 0)
      {
        v28 = *v8;
        if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "#I SIM disabled. Clearing SOS numbers from the UI.", buf, 2u);
        }

        *buf = 1;
        *&buf[16] = 0u;
        v61 = 0;
        *&buf[8] = a1 + 264;
        sub_101476A64(&buf[16], (a1 + 296));
        v32 = 0uLL;
        v33 = 0;
        v58 = &v54;
        v29 = sub_101476DE4(&buf[16], v54);
        sub_1002AF094(v29 + 5);
        *(v29 + 5) = v32;
        v29[7] = v33;
        v33 = 0;
        v32 = 0uLL;
        v59 = &v32;
        sub_1000B25C4(&v59);
        sub_101476C38(buf);
        goto LABEL_53;
      }
    }

    else
    {
      isSimAbsent = 1;
    }

    if ((isSimAbsent & v26) == 1)
    {
      v30 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I SIM re-enabled. Reading SOS numbers from the operator bundle again.", buf, 2u);
      }

      v31[0] = 0;
      v31[1] = 0;
      sub_101472F54(a1, 0, v54, v31);
    }

LABEL_53:
    if (BYTE8(v43) == 1)
    {
      if (SBYTE7(v43) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v41) < 0)
      {
        operator delete(v40[1]);
      }

      if (SHIBYTE(v40[0]) < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(v37[1]);
      }

      *buf = v36 + 8;
      sub_100034D1C(buf);
      if (v35[0])
      {
        v35[1] = v35[0];
        operator delete(v35[0]);
      }
    }

    if (BYTE8(v53) == 1)
    {
      if (SBYTE7(v53) < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[1]);
      }

      if (SHIBYTE(v50[0]) < 0)
      {
        operator delete(v49[0]);
      }

      if (SHIBYTE(v48) < 0)
      {
        operator delete(v47[1]);
      }

      *&v34 = v46 + 8;
      sub_100034D1C(&v34);
      if (v45[0])
      {
        v45[1] = v45[0];
        operator delete(v45[0]);
      }
    }

    do
    {
      ++v4;
    }

    while (v4 != v5 && (v6(*v4) & 1) == 0);
  }

  while (v4 != v7);
}

void sub_1014721E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43)
{
  *(v43 - 152) = &a17;
  sub_1000B25C4((v43 - 152));
  sub_101476C38(v43 - 144);
  sub_100A53DBC(&a21);
  sub_100A53DBC(&a43);
  _Unwind_Resume(a1);
}

void sub_10147224C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 368);
  v3 = (a1 + 376);
  if (v2 != (a1 + 376))
  {
    v5 = 0;
    v6 = (a2 + 8);
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      v8 = *(v2 + 8);
      v9 = v6;
      do
      {
        if (*(v7 + 32) >= v8)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v8));
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_18:
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
      if (v12 == v3)
      {
        if (v5)
        {
          sub_1011D1160(a1);
        }

        return;
      }
    }

    v8 = *(v2 + 8);
LABEL_12:
    if (v5)
    {
      v5 = 3;
    }

    else
    {
      v5 = v8;
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received Carrier Bundle setup event. Reading emergency values...", v14, 2u);
    }

    v14[0] = 0;
    v14[1] = 0;
    sub_101472F54(a1, 1, v8, v14);
    goto LABEL_18;
  }
}

void sub_1014723D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 392);
  v3 = (a1 + 400);
  if (v2 != (a1 + 400))
  {
    v5 = 0;
    v6 = (a2 + 8);
    while (1)
    {
      v7 = *v6;
      if (!*v6)
      {
        break;
      }

      v8 = *(v2 + 8);
      v9 = v6;
      do
      {
        if (*(v7 + 32) >= v8)
        {
          v9 = v7;
        }

        v7 = *(v7 + 8 * (*(v7 + 32) < v8));
      }

      while (v7);
      if (v9 == v6 || v8 < *(v9 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_18:
      v11 = v2[1];
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
          v12 = v2[2];
          v13 = *v12 == v2;
          v2 = v12;
        }

        while (!v13);
      }

      v2 = v12;
      if (v12 == v3)
      {
        if (v5)
        {
          sub_1011D1160(a1);
        }

        return;
      }
    }

    v8 = *(v2 + 8);
LABEL_12:
    if (v5)
    {
      v5 = 3;
    }

    else
    {
      v5 = v8;
    }

    v10 = *(*(**(a1 + 48) + 16))(*(a1 + 48), v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v14[0]) = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Received Operator Bundle setup event. Reading emergency values...", v14, 2u);
    }

    v14[0] = 0;
    v14[1] = 0;
    sub_101472F54(a1, 0, v8, v14);
    goto LABEL_18;
  }
}

void sub_101472564(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
{
  v7 = 0;
  v6 = 0uLL;
  sub_10004EFD0(&v6, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  v8 = a4;
  v9[0] = 0;
  v9[1] = 0;
  sub_100004AA0(v9, (a1 + 8));
  operator new();
}

void sub_1014726C4(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1014727AC(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_101472894(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000AE428(&v5, a2);
  v6 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

std::string *sub_101472A6C(uint64_t a1, uint64_t a2, int a3)
{
  v8 = a3;
  v9 = &v8;
  v4 = sub_10132A288(a1 + 104, &v8);
  v4[5] = *a2;
  std::string::operator=(v4 + 2, (a2 + 8));
  std::string::operator=(v4 + 3, (a2 + 32));
  v5 = *(a2 + 60);
  *(v4 + 24) = *(a2 + 56);
  *(v4 + 100) = v5;
  std::string::operator=((v4 + 13), (a2 + 64));
  v6 = *(a2 + 96);
  v4[16] = *(a2 + 88);
  *(v4 + 68) = v6;
  std::string::operator=(v4 + 6, (a2 + 104));
  result = std::string::operator=(v4 + 7, (a2 + 128));
  *(v4 + 48) = *(a2 + 152);
  return result;
}

uint64_t sub_101472B2C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  std::string::operator=((a1 + 8), (a2 + 8));
  std::string::operator=((a1 + 32), (a2 + 32));
  v4 = *(a2 + 60);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = v4;
  std::string::operator=((a1 + 64), (a2 + 64));
  v5 = *(a2 + 96);
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = v5;
  std::string::operator=((a1 + 104), (a2 + 104));
  std::string::operator=((a1 + 128), (a2 + 128));
  *(a1 + 152) = *(a2 + 152);
  return a1;
}

BOOL sub_101472BB8(uint64_t a1, uint64_t a2)
{
  memset(&v20, 0, sizeof(v20));
  v4 = *(a1 + 376);
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = a1 + 376;
  do
  {
    if (*(v4 + 32) >= a2)
    {
      v5 = v4;
    }

    v4 = *(v4 + 8 * (*(v4 + 32) < a2));
  }

  while (v4);
  if (v5 != a1 + 376 && *(v5 + 32) <= a2)
  {
    std::string::operator=(&v20, (v5 + 48));
    memset(&buf, 0, sizeof(buf));
    if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v20.__r_.__value_.__l.__data_, v20.__r_.__value_.__l.__size_);
      goto LABEL_12;
    }
  }

  else
  {
LABEL_8:
    v6 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Could not find carrier bundle", &buf, 2u);
    }
  }

  buf = v20;
LABEL_12:
  v7 = *(a1 + 400);
  if (!v7)
  {
    goto LABEL_19;
  }

  v8 = a1 + 400;
  do
  {
    if (*(v7 + 32) >= a2)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * (*(v7 + 32) < a2));
  }

  while (v7);
  if (v8 != a1 + 400 && *(v8 + 32) <= a2)
  {
    std::string::operator=(&buf, (v8 + 48));
  }

  else
  {
LABEL_19:
    v9 = *(*(**(a1 + 48) + 16))(*(a1 + 48), a2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Could not find operator bundle", v18, 2u);
    }
  }

  v10 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v20.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v20.__r_.__value_.__l.__size_;
  }

  v12 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
  v13 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = buf.__r_.__value_.__l.__size_;
  }

  if (size == v12)
  {
    if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v20;
    }

    else
    {
      v14 = v20.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    v16 = memcmp(v14, p_buf, size) != 0;
    if ((v13 & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v16 = 1;
    if ((SHIBYTE(buf.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_38;
    }
  }

  operator delete(buf.__r_.__value_.__l.__data_);
  v10 = HIBYTE(v20.__r_.__value_.__r.__words[2]);
LABEL_38:
  if (v10 < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  return v16;
}

void sub_101472E14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101472E68(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

uint64_t sub_101472F54(uint64_t a1, int a2, uint64_t a3, MCCAndMNC **a4)
{
  v243 = a3;
  v189 = (*(**(a1 + 48) + 16))(*(a1 + 48), a3);
  v5 = *v189;
  if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *a4 != 0;
    if (a2)
    {
      v7 = "Carrier";
    }

    else
    {
      v7 = "Operator";
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 2080;
    *&buf[14] = CSIBOOLAsString(v6);
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Loading emergency numbers from %s bundle(s), with CountryBundleLookUp: %s", buf, 0x16u);
  }

  *v241 = 0u;
  v242 = 0u;
  *v239 = 0u;
  v240 = 0u;
  *v237 = 0u;
  v238 = 0u;
  *v235 = 0u;
  v236 = 0u;
  *v233 = 0u;
  v234 = 0u;
  sub_10000501C(buf, "112");
  CSIPhoneNumber::CSIPhoneNumber();
  if ((buf[23] & 0x80000000) != 0)
  {
    operator delete(*buf);
  }

  v231 = 0;
  v230 = 0;
  v232 = 0;
  v228 = 0;
  v227 = 0;
  v229 = 0;
  v225 = 0;
  v224 = 0;
  v226 = 0;
  *v222 = 0;
  v221 = 0;
  v223 = 0;
  *v219 = 0u;
  v220 = 0u;
  *v217 = 0u;
  v218 = 0u;
  *v215 = 0u;
  v216 = 0u;
  *v213 = 0u;
  v214 = 0u;
  memset(&v212, 0, sizeof(v212));
  sub_1000AE428(&v212, v233);
  v8 = v243;
  v10 = *a4;
  v9 = a4[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v183 = v9;
  v187 = (*(**(a1 + 48) + 16))(*(a1 + 48), v8);
  if (a2)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  theDict = 0;
  if (v10)
  {
    v12 = *(a1 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Reading emergency numbers with last visible plmn", buf, 2u);
    }

    *v246 = 0;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (Mutable)
    {
      v14 = *v246;
      *v246 = Mutable;
      *buf = v14;
      sub_1000296E0(buf);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 160));
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
          goto LABEL_51;
        }

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
    if (!v23)
    {
LABEL_51:
      if ((v24 & 1) == 0)
      {
        sub_100004A34(v22);
      }

      sub_1000296E0(v246);
      goto LABEL_58;
    }

LABEL_33:
    memset(buf, 0, 32);
    MCCAndMNC::getMcc(buf, v10);
    memset(__dst, 0, 32);
    MCCAndMNC::getMnc(__dst, v10);
    memset(&v251, 0, sizeof(v251));
    formPLMN(buf, __dst);
    if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__p, v251.__r_.__value_.__l.__data_, v251.__r_.__value_.__l.__size_);
    }

    else
    {
      __p = v251;
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v269, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v269 = __p;
    }

    v248 = 0;
    if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__str, v269.__r_.__value_.__l.__data_, v269.__r_.__value_.__l.__size_);
    }

    else
    {
      __str = v269;
    }

    v249 = 0;
    if (ctu::cf::convert_copy())
    {
      v35 = v248;
      v248 = v249;
      valuePtr = v35;
      sub_100005978(&valuePtr);
    }

    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v245 = v248;
    v248 = 0;
    sub_100005978(&v248);
    if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v269.__r_.__value_.__l.__data_);
    }

    sub_1001768B8(*v246, qword_101FCB6F0, v245);
    sub_100005978(&v245);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    memset(&__str, 0, sizeof(__str));
    operator new();
  }

  v25 = Registry::getServiceMap(*(a1 + 160));
  v26 = v25;
  if (v27 < 0)
  {
    v28 = (v27 & 0x7FFFFFFFFFFFFFFFLL);
    v29 = 5381;
    do
    {
      v27 = v29;
      v30 = *v28++;
      v29 = (33 * v29) ^ v30;
    }

    while (v30);
  }

  std::mutex::lock(v25);
  *buf = v27;
  v31 = sub_100009510(&v26[1].__m_.__sig, buf);
  if (v31)
  {
    v32 = v31[3];
    v33 = v31[4];
    if (v33)
    {
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v26);
      atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v33);
      v34 = 0;
      goto LABEL_56;
    }
  }

  else
  {
    v32 = 0;
  }

  std::mutex::unlock(v26);
  v33 = 0;
  v34 = 1;
LABEL_56:
  (*(*v32 + 96))(&__str, v32, v8, v11, @"EmergencyCalling", 0, 0);
  sub_100010180(__dst, &__str.__r_.__value_.__l.__data_);
  *buf = theDict;
  theDict = *__dst;
  *__dst = 0;
  sub_10001021C(buf);
  sub_10001021C(__dst);
  sub_10000A1EC(&__str.__r_.__value_.__l.__data_);
  if ((v34 & 1) == 0)
  {
    sub_100004A34(v33);
  }

LABEL_58:
  if (!theDict)
  {
    v95 = *v187;
    if (os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v96 = "#I There is no EmergencyCalling dictionary in the bundle";
LABEL_204:
      _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, v96, buf, 2u);
    }

LABEL_205:
    v51 = 0;
    goto LABEL_214;
  }

  v36 = v231;
  v37 = v230;
  while (v36 != v37)
  {
    v38 = *(v36 - 1);
    v36 -= 3;
    if (v38 < 0)
    {
      operator delete(*v36);
    }
  }

  v231 = v37;
  v39 = v228;
  v40 = v227;
  while (v39 != v40)
  {
    v41 = *(v39 - 1);
    v39 -= 3;
    if (v41 < 0)
    {
      operator delete(*v39);
    }
  }

  v228 = v40;
  v42 = v225;
  v43 = v224;
  while (v42 != v43)
  {
    v44 = *(v42 - 1);
    v42 -= 3;
    if (v44 < 0)
    {
      operator delete(*v42);
    }
  }

  v225 = v43;
  v45 = *v222;
  v46 = v221;
  while (v45 != v46)
  {
    v45 = (v45 - 56);
    sub_1000DD108(v45);
  }

  *v222 = v46;
  Value = CFDictionaryGetValue(theDict, @"EmergencyNumbers");
  if (!Value)
  {
    v95 = *v187;
    if (os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v96 = "#I There was no emergency numbers in the dict";
      goto LABEL_204;
    }

    goto LABEL_205;
  }

  v48 = *(a1 + 40);
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = "Operator";
    if (a2)
    {
      v49 = "Carrier";
    }

    *buf = 136315138;
    *&buf[4] = v49;
    _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I Loading emergency numbers from %s bundle.", buf, 0xCu);
  }

  Count = CFArrayGetCount(Value);
  v50 = *v187;
  if (os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = Count;
    _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I Got %zu emergency numbers", buf, 0xCu);
  }

  v51 = 1;
  if (Count < 1)
  {
    goto LABEL_214;
  }

  theArray = Value;
  v52 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v52);
    TypeID = CFDictionaryGetTypeID();
    if (TypeID != CFGetTypeID(ValueAtIndex))
    {
      v70 = *v187;
      if (os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
      {
        v71 = CFGetTypeID(ValueAtIndex);
        *buf = 134218240;
        *&buf[4] = v52;
        *&buf[12] = 2048;
        *&buf[14] = v71;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "#N Expected dictionary type at index %ld, got %lu instead", buf, 0x16u);
      }

LABEL_195:
      ++v52;
      goto LABEL_196;
    }

    if (!ValueAtIndex)
    {
      v97 = *v187;
      if (!os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_213;
      }

      *buf = 0;
      v98 = "#N There was an error getting the emergeny numbers, dictionary returned null";
      v99 = v97;
      v100 = 2;
      goto LABEL_212;
    }

    v55 = CFDictionaryGetValue(ValueAtIndex, @"Number");
    v56 = CFDictionaryGetValue(ValueAtIndex, @"Category");
    v57 = v56;
    if (!v56 || (v58 = CFGetTypeID(v56), v58 != CFNumberGetTypeID()))
    {
      v59 = *(a1 + 40);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v59, OS_LOG_TYPE_ERROR, "Category is not of numeric type!", buf, 2u);
      }

      v57 = 0;
    }

    v60 = CFDictionaryGetValue(ValueAtIndex, @"Title");
    v61 = CFDictionaryGetValue(ValueAtIndex, @"PreferredEmergencyNumber");
    v62 = CFDictionaryGetValue(ValueAtIndex, @"SupportsEmergencySetup");
    v63 = CFDictionaryGetValue(ValueAtIndex, @"SupportsText");
    v64 = CFDictionaryGetValue(ValueAtIndex, @"SupportsVoice");
    v65 = CFDictionaryGetValue(ValueAtIndex, @"TestNumber");
    if (!v55)
    {
      break;
    }

    v66 = v65;
    LODWORD(valuePtr) = 0;
    memset(&__str, 0, sizeof(__str));
    memset(buf, 0, 24);
    ctu::cf::assign();
    __str = *buf;
    if (v57)
    {
      CFNumberGetValue(v57, kCFNumberIntType, &valuePtr);
    }

    if (v61)
    {
      v67 = CFBooleanGetValue(v61) == 0;
      if (!v62)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v67 = 1;
      if (!v62)
      {
LABEL_105:
        v68 = &v230;
        if (v63)
        {
          goto LABEL_99;
        }

        goto LABEL_106;
      }
    }

    if (CFBooleanGetValue(v62))
    {
      v68 = &v230;
    }

    else
    {
      v68 = &v227;
    }

    if (v63)
    {
LABEL_99:
      CFBooleanGetValue(v63);
      if (v64)
      {
        goto LABEL_100;
      }

      goto LABEL_107;
    }

LABEL_106:
    if (v64)
    {
LABEL_100:
      v69 = CFBooleanGetValue(v64) == 0;
      if (!v66)
      {
        goto LABEL_114;
      }

      goto LABEL_108;
    }

LABEL_107:
    v69 = 0;
    if (!v66)
    {
      goto LABEL_114;
    }

LABEL_108:
    if (!CFBooleanGetValue(v66))
    {
LABEL_114:
      v72 = 1;
      if (!v67)
      {
        goto LABEL_115;
      }

      goto LABEL_164;
    }

    if (sub_1011D0F54(a1))
    {
      if (!v69)
      {
        sub_100005308((a1 + 128), &__str);
      }

      v72 = 0;
      if (!v67)
      {
LABEL_115:
        v73 = *(a1 + 40);
        v74 = os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT);
        if (a2)
        {
          if (v74)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I NOT reading preferred number/disam number from carrier!", buf, 2u);
          }

          goto LABEL_164;
        }

        if (v74)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_DEFAULT, "#I Reading preferred/disam number from operator", buf, 2u);
        }

        if (v60)
        {
          memset(&v269, 0, sizeof(v269));
          memset(buf, 0, 24);
          ctu::cf::assign();
          v269 = *buf;
          *__val = 0;
          memset(buf, 0, sizeof(buf));
          sub_10000501C(buf, "");
          sub_10000501C(&buf[24], "");
          LOBYTE(__val[0]) = 0;
          LOBYTE(__val[1]) = 0;
          std::string::operator=(buf, &__str);
          std::string::operator=(&buf[24], &v269);
          if (v57)
          {
            __val[0] = valuePtr;
            LOBYTE(__val[1]) = 1;
          }

          sub_1001A0EFC(&v221, buf);
          v75 = *v187;
          if (os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
          {
            if (buf[23] >= 0)
            {
              v76 = buf;
            }

            else
            {
              v76 = *buf;
            }

            if (buf[47] >= 0)
            {
              v77 = &buf[24];
            }

            else
            {
              v77 = *&buf[24];
            }

            if (LOBYTE(__val[1]) == 1)
            {
              std::to_string(&v251, __val[0]);
              v78 = &v251;
              if ((v251.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v78 = v251.__r_.__value_.__r.__words[0];
              }

              *__dst = 136315650;
              *&__dst[4] = v76;
              *&__dst[12] = 2080;
              *&__dst[14] = v77;
              *&__dst[22] = 2080;
              *&__dst[24] = v78;
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I Got disambiguation num %s with title %s and category %s", __dst, 0x20u);
              if (SHIBYTE(v251.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v251.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              *__dst = 136315650;
              *&__dst[4] = v76;
              *&__dst[12] = 2080;
              *&__dst[14] = v77;
              *&__dst[22] = 2080;
              *&__dst[24] = "N/A";
              _os_log_impl(&_mh_execute_header, v75, OS_LOG_TYPE_DEFAULT, "#I Got disambiguation num %s with title %s and category %s", __dst, 0x20u);
            }
          }

          if ((buf[47] & 0x80000000) != 0)
          {
            operator delete(*&buf[24]);
          }

          if ((buf[23] & 0x80000000) != 0)
          {
            operator delete(*buf);
          }

          if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
          {
            v84 = v269.__r_.__value_.__r.__words[0];
            goto LABEL_163;
          }
        }

        else
        {
          v81 = *v187;
          if (os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
          {
            p_str = &__str;
            if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
            {
              p_str = __str.__r_.__value_.__r.__words[0];
            }

            *buf = 136315138;
            *&buf[4] = p_str;
            _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "#I Preferred number for this country: %s", buf, 0xCu);
          }

          *v261 = 0u;
          *v260 = 0u;
          *v259 = 0u;
          *v258 = 0u;
          v257 = 0u;
          *v256 = 0u;
          *__val = 0u;
          memset(buf, 0, sizeof(buf));
          CSIPhoneNumber::CSIPhoneNumber();
          *&v212.var0 = *buf;
          std::string::operator=(&v212.var2, &buf[8]);
          std::string::operator=(v213, &buf[32]);
          DWORD2(v214) = __val[2];
          BYTE12(v214) = __val[3];
          std::string::operator=(v215, v256);
          *(&v216 + 1) = *(&v257 + 1);
          LOWORD(v217[0]) = v258[0];
          std::string::operator=(&v217[1], &v258[1]);
          std::string::operator=(v219, v260);
          DWORD2(v220) = v261[1];
          if (v57)
          {
            v83 = *(a1 + 40);
            if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
            {
              *__dst = 67109120;
              *&__dst[4] = valuePtr;
              _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "#I Category of the preferred numberfor this country: %d", __dst, 8u);
            }

            CSIPhoneNumber::setEmergencyCategory(&v212, valuePtr);
          }

          if (SHIBYTE(v261[0]) < 0)
          {
            operator delete(v260[0]);
          }

          if (SHIBYTE(v259[1]) < 0)
          {
            operator delete(v258[1]);
          }

          if (SBYTE7(v257) < 0)
          {
            operator delete(v256[0]);
          }

          if (SHIBYTE(__val[1]) < 0)
          {
            operator delete(*&buf[32]);
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            v84 = *&buf[8];
LABEL_163:
            operator delete(v84);
          }
        }
      }

LABEL_164:
      v268 = 0;
      v267 = 0u;
      v266 = 0u;
      v265 = 0u;
      v264 = 0u;
      v263 = 0u;
      v262 = 0u;
      *v261 = 0u;
      *v260 = 0u;
      *v259 = 0u;
      *v258 = 0u;
      v257 = 0u;
      *v256 = 0u;
      *__val = 0u;
      memset(buf, 0, sizeof(buf));
      sub_10000D518(buf);
      v85 = sub_10000C030(buf);
      v86 = sub_10000C030(v85);
      sub_10000C030(v86);
      std::ostream::operator<<();
      sub_10000C030(buf);
      std::ostream::operator<<();
      sub_10000C030(buf);
      std::ostream::operator<<();
      sub_10000C030(buf);
      std::ostream::operator<<();
      memset(__dst, 0, 24);
      if ((v258[1] & 0x10) != 0)
      {
        v88 = v258[0];
        if (v258[0] < *&__val[2])
        {
          v258[0] = *&__val[2];
          v88 = *&__val[2];
        }

        v89 = *__val;
      }

      else
      {
        if ((v258[1] & 8) == 0)
        {
          v87 = 0;
LABEL_177:
          __dst[v87] = 0;
          v90 = *v187;
          if (os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
          {
            v91 = __dst;
            if ((__dst[23] & 0x80u) != 0)
            {
              v91 = *__dst;
            }

            LODWORD(v269.__r_.__value_.__l.__data_) = 136315138;
            *(v269.__r_.__value_.__r.__words + 4) = v91;
            _os_log_impl(&_mh_execute_header, v90, OS_LOG_TYPE_DEFAULT, "#I Command: %s", &v269, 0xCu);
          }

          v92 = __dst[23];
          v93 = __dst[23];
          if ((__dst[23] & 0x80u) != 0)
          {
            v92 = *&__dst[8];
          }

          if (v92)
          {
            if (v72)
            {
              v94 = v68;
            }

            else
            {
              v94 = &v224;
            }

            sub_100005308(v94, __dst);
            v93 = __dst[23];
          }

          if ((v93 & 0x80) != 0)
          {
            operator delete(*__dst);
          }

          *buf = v182;
          *&buf[*(v182 - 24)] = v181;
          if (SHIBYTE(v257) < 0)
          {
            operator delete(v256[1]);
          }

          std::locale::~locale(&buf[16]);
          std::ostream::~ostream();
          std::ios::~ios();
          v80 = 1;
          goto LABEL_193;
        }

        v89 = *&buf[24];
        v88 = *&buf[40];
      }

      v87 = v88 - v89;
      if ((v88 - v89) >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_1000A2378();
      }

      if (v87 >= 0x17)
      {
        operator new();
      }

      __dst[23] = v88 - v89;
      if (v87)
      {
        memmove(__dst, v89, v87);
      }

      goto LABEL_177;
    }

    ++v52;
    v79 = *(a1 + 40);
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "#I Skipping test numbers on customer build", buf, 2u);
    }

    v80 = 0;
LABEL_193:
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
      if ((v80 & 1) == 0)
      {
        goto LABEL_196;
      }

      goto LABEL_195;
    }

    if (v80)
    {
      goto LABEL_195;
    }

LABEL_196:
    if (v52 >= Count)
    {
      goto LABEL_213;
    }
  }

  v101 = *v187;
  if (!os_log_type_enabled(*v187, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_213;
  }

  v102 = "ok";
  *buf = 134218498;
  *&buf[4] = v52;
  *&buf[12] = 2080;
  if (!v57)
  {
    v102 = "not ok";
  }

  *&buf[14] = "not ok";
  *&buf[22] = 2080;
  *&buf[24] = v102;
  v98 = "#N There was an error getting the %ld emergency number. Number was %s, category was %s";
  v99 = v101;
  v100 = 32;
LABEL_212:
  _os_log_impl(&_mh_execute_header, v99, OS_LOG_TYPE_DEFAULT, v98, buf, v100);
LABEL_213:
  v51 = 1;
LABEL_214:
  sub_10001021C(&theDict);
  if (v183)
  {
    sub_100004A34(v183);
  }

  if (v51)
  {
    v103 = v230;
    for (i = v231; v103 != i; v103 = (v103 + 24))
    {
      memset(buf, 0, 24);
      if (*(v103 + 23) < 0)
      {
        sub_100005F2C(buf, *v103, *(v103 + 1));
      }

      else
      {
        v105 = *v103;
        *&buf[16] = *(v103 + 2);
        *buf = v105;
      }

      v106 = *v189;
      if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v107 = buf;
        }

        else
        {
          v107 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v107;
        _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "#I EmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v108 = v227;
    for (j = v228; v108 != j; v108 = (v108 + 24))
    {
      memset(buf, 0, 24);
      if (*(v108 + 23) < 0)
      {
        sub_100005F2C(buf, *v108, *(v108 + 1));
      }

      else
      {
        v110 = *v108;
        *&buf[16] = *(v108 + 2);
        *buf = v110;
      }

      v111 = *v189;
      if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v112 = buf;
        }

        else
        {
          v112 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v112;
        _os_log_impl(&_mh_execute_header, v111, OS_LOG_TYPE_DEFAULT, "#I NormalEmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v113 = v224;
    for (k = v225; v113 != k; v113 = (v113 + 24))
    {
      memset(buf, 0, 24);
      if (*(v113 + 23) < 0)
      {
        sub_100005F2C(buf, *v113, *(v113 + 1));
      }

      else
      {
        v115 = *v113;
        *&buf[16] = *(v113 + 2);
        *buf = v115;
      }

      v116 = *v189;
      if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v117 = buf;
        }

        else
        {
          v117 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v117;
        _os_log_impl(&_mh_execute_header, v116, OS_LOG_TYPE_DEFAULT, "#I TestEmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    v118 = v221;
    for (m = *v222; v118 != m; v118 = (v118 + 56))
    {
      *__val = 0;
      memset(buf, 0, sizeof(buf));
      if (SHIBYTE(v118->__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(buf, v118->__r_.__value_.__l.__data_, v118->__r_.__value_.__l.__size_);
      }

      else
      {
        v120 = *&v118->__r_.__value_.__l.__data_;
        *&buf[16] = *(&v118->__r_.__value_.__l + 2);
        *buf = v120;
      }

      if (SHIBYTE(v118[1].__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf[24], v118[1].__r_.__value_.__l.__data_, v118[1].__r_.__value_.__l.__size_);
      }

      else
      {
        v121 = *&v118[1].__r_.__value_.__l.__data_;
        *&buf[40] = *(&v118[1].__r_.__value_.__l + 2);
        *&buf[24] = v121;
      }

      *__val = v118[2].__r_.__value_.__l.__data_;
      v122 = *v189;
      if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        if (buf[23] >= 0)
        {
          v123 = buf;
        }

        else
        {
          v123 = *buf;
        }

        *__dst = 136315138;
        *&__dst[4] = v123;
        _os_log_impl(&_mh_execute_header, v122, OS_LOG_TYPE_DEFAULT, "#I DisambiguationEmergencyNumberList found in bundle = %s", __dst, 0xCu);
      }

      if ((buf[47] & 0x80000000) != 0)
      {
        operator delete(*&buf[24]);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (a2)
    {
      v124 = 2;
    }

    else
    {
      v124 = 0;
    }

    sub_1011D0918(a1, v124, &v230, v243);
    if (a2)
    {
      v125 = *v189;
      if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v125, OS_LOG_TYPE_DEFAULT, "#I Reading and setting carrier whitelisted numbers...", buf, 2u);
      }

      sub_1011D0918(a1, 0xCu, &v227, v243);
      v126 = *(a1 + 40);
      if (os_log_type_enabled(v126, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v126, OS_LOG_TYPE_DEFAULT, "#I Skip reading disambiguation list", buf, 2u);
      }

      goto LABEL_412;
    }

    v129 = a1;
    v130 = sub_101472BB8(a1, v243);
    v131 = v243;
    v132 = (*(**(v129 + 48) + 16))(*(v129 + 48), v243);
    memset(&__str, 0, sizeof(__str));
    sub_1000B2128(&__str, *(v129 + 344), *(v129 + 352), 0xCF3CF3CF3CF3CF3DLL * ((*(v129 + 352) - *(v129 + 344)) >> 3));
    *&v262 = 0;
    *v261 = 0u;
    *v260 = 0u;
    *v259 = 0u;
    *v258 = 0u;
    v257 = 0u;
    *v256 = 0u;
    *__val = 0u;
    memset(buf, 0, sizeof(buf));
    size = __str.__r_.__value_.__l.__size_;
    v134 = __str.__r_.__value_.__r.__words[0];
    *__dst = _NSConcreteStackBlock;
    *&__dst[8] = 0x40000000;
    *&__dst[16] = sub_101472E54;
    *&__dst[24] = &unk_101F3EAD0;
    *&__dst[32] = v131;
    if (__str.__r_.__value_.__r.__words[0] != __str.__r_.__value_.__l.__size_)
    {
      while (((*&__dst[16])(__dst, v134) & 1) == 0)
      {
        v134 += 168;
        if (v134 == size)
        {
          v134 = size;
          break;
        }
      }

      size = __str.__r_.__value_.__l.__size_;
    }

    if (v134 == size)
    {
      v139 = *v132;
      if (os_log_type_enabled(*v132, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v269.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v139, OS_LOG_TYPE_ERROR, "Didn't find the selected SIM, assume SIM is unknown", &v269, 2u);
      }

      v138 = 0;
    }

    else
    {
      *buf = *v134;
      if (buf != v134)
      {
        sub_1000B26FC(&buf[16], *(v134 + 16), *(v134 + 24), (*(v134 + 24) - *(v134 + 16)) >> 2);
        sub_1000B2828(&buf[40], *(v134 + 40), *(v134 + 48), 0xCCCCCCCCCCCCCCCDLL * ((*(v134 + 48) - *(v134 + 40)) >> 3));
      }

      v135 = *(v134 + 64);
      WORD2(v256[0]) = *(v134 + 68);
      LODWORD(v256[0]) = v135;
      std::string::operator=(&v256[1], (v134 + 72));
      std::string::operator=(v258, (v134 + 96));
      std::string::operator=(&v259[1], (v134 + 120));
      std::string::operator=(v261, (v134 + 144));
      v136 = *v132;
      if (os_log_type_enabled(*v132, OS_LOG_TYPE_DEFAULT))
      {
        v137 = subscriber::asString();
        LODWORD(v269.__r_.__value_.__l.__data_) = 136315138;
        *(v269.__r_.__value_.__r.__words + 4) = v137;
        _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_DEFAULT, "#I SIM state is %s", &v269, 0xCu);
      }

      v138 = *&buf[8] == 5;
    }

    if (SBYTE7(v262) < 0)
    {
      operator delete(v261[0]);
    }

    if (SHIBYTE(v260[1]) < 0)
    {
      operator delete(v259[1]);
    }

    if (SHIBYTE(v259[0]) < 0)
    {
      operator delete(v258[0]);
    }

    if (SHIBYTE(v257) < 0)
    {
      operator delete(v256[1]);
    }

    v269.__r_.__value_.__r.__words[0] = &buf[40];
    sub_100034D1C(&v269);
    if (*&buf[16])
    {
      *&buf[24] = *&buf[16];
      operator delete(*&buf[16]);
    }

    *buf = &__str;
    sub_1000B2AF8(buf);
    v140 = v138 && v130;
    if (v138 && v130)
    {
      v141 = 1;
    }

    else
    {
      v141 = 11;
    }

    v142 = *v189;
    if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
    {
      v143 = asString();
      *buf = 136315394;
      *&buf[4] = v143;
      *&buf[12] = 1024;
      *&buf[14] = v130;
      _os_log_impl(&_mh_execute_header, v142, OS_LOG_TYPE_DEFAULT, "#I Reading and setting operator whitelisted numbers. Operator whitelisted's type is %s Roaming: %d", buf, 0x12u);
    }

    v144 = *(a1 + 40);
    v145 = os_log_type_enabled(v144, OS_LOG_TYPE_DEFAULT);
    if (v140)
    {
      if (v145)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I Clearing up kOperatorWhitelist since we are loading numbers for kOperatorWhitelistWhenRoaming", buf, 2u);
      }

      v146 = 11;
    }

    else
    {
      if (v145)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v144, OS_LOG_TYPE_DEFAULT, "#I Clearing up kOperatorWhitelistWhenRoaming list since we are loading numbers for kOperatorWhitelist", buf, 2u);
      }

      v146 = 1;
    }

    sub_1011D2AC8(a1, v243, v146);
    sub_1011D0918(a1, v141, &v227, v243);
    v147 = *(a1 + 40);
    if (os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "#I Updating preferred or disambiguation numbers", buf, 2u);
      v147 = *(a1 + 40);
    }

    v148 = v221;
    v149 = *v222;
    v150 = os_log_type_enabled(v147, OS_LOG_TYPE_DEFAULT);
    if (v148 == v149)
    {
      if (v150)
      {
        CSIPhoneNumber::getFullNumber(buf, &v212);
        v154 = buf[23] >= 0 ? buf : *buf;
        *__dst = 136315138;
        *&__dst[4] = v154;
        _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "#I Found one preferred number for this country/network: %s", __dst, 0xCu);
        if ((buf[23] & 0x80000000) != 0)
        {
          v155 = *buf;
          goto LABEL_379;
        }
      }
    }

    else
    {
      if (v150)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v147, OS_LOG_TYPE_DEFAULT, "#I Found multiple numbers for this country/network. Updating rest with the disambiguation list and using default value of 112 as placeholder", buf, 2u);
      }

      *&v212.var0 = v233[0];
      std::string::operator=(&v212.var2, &v233[1]);
      std::string::operator=(v213, v235);
      DWORD2(v214) = DWORD2(v236);
      BYTE12(v214) = BYTE12(v236);
      std::string::operator=(v215, v237);
      *(&v216 + 1) = *(&v238 + 1);
      LOWORD(v217[0]) = v239[0];
      std::string::operator=(&v217[1], &v239[1]);
      std::string::operator=(v219, v241);
      DWORD2(v220) = DWORD2(v242);
      v151 = *(a1 + 40);
      if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        *&buf[4] = 0x6DB6DB6DB6DB6DB7 * ((*v222 - v221) >> 3);
        _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "#I Disambiguation list converted size : %lu.", buf, 0xCu);
      }

      v152 = v221;
      if (*v222 - v221 == 56)
      {
        *v253 = 0;
        memset(__dst, 0, sizeof(__dst));
        if (SHIBYTE(v221->__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(__dst, v221->__r_.__value_.__l.__data_, v221->__r_.__value_.__l.__size_);
        }

        else
        {
          v153 = *&v221->__r_.__value_.__l.__data_;
          *&__dst[16] = *(&v221->__r_.__value_.__l + 2);
          *__dst = v153;
        }

        if (SHIBYTE(v152[1].__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst[24], v152[1].__r_.__value_.__l.__data_, v152[1].__r_.__value_.__l.__size_);
        }

        else
        {
          v156 = *&v152[1].__r_.__value_.__l.__data_;
          *&__dst[40] = *(&v152[1].__r_.__value_.__l + 2);
          *&__dst[24] = v156;
        }

        data = v152[2].__r_.__value_.__l.__data_;
        *v253 = data;
        v158 = __dst[47];
        v159 = __dst[47];
        if ((__dst[47] & 0x80u) != 0)
        {
          v158 = *&__dst[32];
        }

        if (!v158 && (data & 0x100000000) != 0)
        {
          v160 = *(a1 + 40);
          if (os_log_type_enabled(v160, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v160, OS_LOG_TYPE_DEFAULT, "#I There is only one number in the list and it does not have a title set so it must be a preferred number!", buf, 2u);
          }

          *v261 = 0u;
          *v260 = 0u;
          *v259 = 0u;
          *v258 = 0u;
          v257 = 0u;
          *v256 = 0u;
          *__val = 0u;
          memset(buf, 0, sizeof(buf));
          CSIPhoneNumber::CSIPhoneNumber();
          CSIPhoneNumber::setEmergencyCategory(buf, v253[0]);
          *&v212.var0 = *buf;
          std::string::operator=(&v212.var2, &buf[8]);
          std::string::operator=(v213, &buf[32]);
          DWORD2(v214) = __val[2];
          BYTE12(v214) = __val[3];
          std::string::operator=(v215, v256);
          *(&v216 + 1) = *(&v257 + 1);
          LOWORD(v217[0]) = v258[0];
          std::string::operator=(&v217[1], &v258[1]);
          std::string::operator=(v219, v260);
          DWORD2(v220) = v261[1];
          v161 = *v222;
          v162 = v221;
          while (v161 != v162)
          {
            v161 -= 56;
            sub_1000DD108(v161);
          }

          *v222 = v162;
          v163 = *(a1 + 40);
          if (os_log_type_enabled(v163, OS_LOG_TYPE_DEFAULT))
          {
            CSIPhoneNumber::getFullNumber(&__str, &v212);
            v164 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
            LODWORD(v269.__r_.__value_.__l.__data_) = 136315138;
            *(v269.__r_.__value_.__r.__words + 4) = v164;
            _os_log_impl(&_mh_execute_header, v163, OS_LOG_TYPE_DEFAULT, "#I Updating preferred number to %s", &v269, 0xCu);
            if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__str.__r_.__value_.__l.__data_);
            }
          }

          if (SHIBYTE(v261[0]) < 0)
          {
            operator delete(v260[0]);
          }

          if (SHIBYTE(v259[1]) < 0)
          {
            operator delete(v258[1]);
          }

          if (SBYTE7(v257) < 0)
          {
            operator delete(v256[0]);
          }

          if (SHIBYTE(__val[1]) < 0)
          {
            operator delete(*&buf[32]);
          }

          if ((buf[31] & 0x80000000) != 0)
          {
            operator delete(*&buf[8]);
          }

          v159 = __dst[47];
        }

        if ((v159 & 0x80) != 0)
        {
          operator delete(*&__dst[24]);
        }

        if (__dst[23] < 0)
        {
          v155 = *__dst;
LABEL_379:
          operator delete(v155);
        }
      }
    }

    *buf = 1;
    memset(&buf[16], 0, 24);
    *&buf[8] = a1 + 264;
    sub_101476A64(&buf[16], (a1 + 296));
    *__dst = &v243;
    v165 = sub_101476DE4(&buf[16], v243);
    v166 = v165;
    v167 = (v165 + 5);
    if (v165 + 5 != &v221)
    {
      v168 = v221;
      v169 = *v222;
      v170 = *v222 - v221;
      v171 = v165[5];
      if ((v165[7] - v171) < *v222 - v221)
      {
        v172 = 0x6DB6DB6DB6DB6DB7 * (v170 >> 3);
        sub_1002AF094(v165 + 5);
        if (v172 <= 0x492492492492492)
        {
          v173 = 0xDB6DB6DB6DB6DB6ELL * ((v166[7] - v166[5]) >> 3);
          if (v173 <= v172)
          {
            v173 = v172;
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v166[7] - v166[5]) >> 3)) >= 0x249249249249249)
          {
            v174 = 0x492492492492492;
          }

          else
          {
            v174 = v173;
          }

          sub_1001A8908(v167, v174);
        }

        sub_1000CE3D4();
      }

      v175 = v165[6] - v171;
      if (v175 >= v170)
      {
        v176 = sub_101475A34(v221, *v222, v171);
        for (n = v166[6]; n != v176; sub_1000DD108(n))
        {
          n -= 56;
        }

        v166[6] = v176;
      }

      else
      {
        sub_101475A34(v221, (v221 + v175), v171);
        v166[6] = sub_1001A89B4(v167, v168 + v175, v169, v166[6]);
      }
    }

    v178 = *v189;
    if (os_log_type_enabled(*v189, OS_LOG_TYPE_DEFAULT))
    {
      CSIPhoneNumber::getFullNumber(__dst, &v212);
      v179 = (__dst[23] & 0x80u) == 0 ? __dst : *__dst;
      LODWORD(__str.__r_.__value_.__l.__data_) = 136315138;
      *(__str.__r_.__value_.__r.__words + 4) = v179;
      _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_DEFAULT, "#I Preferred emergency number = %s", &__str, 0xCu);
      if (__dst[23] < 0)
      {
        operator delete(*__dst);
      }
    }

    sub_1000AE428(v190, &v212);
    sub_101472A6C(a1, v190, v243);
    if (v200 < 0)
    {
      operator delete(v199);
    }

    if (v198 < 0)
    {
      operator delete(v197);
    }

    if (v196 < 0)
    {
      operator delete(v195);
    }

    if (v194 < 0)
    {
      operator delete(v193);
    }

    if (v192 < 0)
    {
      operator delete(v191);
    }

    sub_101476C38(buf);
LABEL_412:
    if (v224 == v225)
    {
      sub_1011D3A2C(a1, v243);
    }

    else
    {
      sub_1011D0918(a1, 0xAu, &v224, v243);
    }
  }

  else
  {
    v127 = *(a1 + 40);
    if (os_log_type_enabled(v127, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v127, OS_LOG_TYPE_ERROR, "Encountered an error when reading emergency numbers from bundle!", buf, 2u);
    }

    if ((a2 & 1) == 0)
    {
      v128 = *(a1 + 40);
      if (os_log_type_enabled(v128, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v128, OS_LOG_TYPE_DEFAULT, "#I Operator bundle is not ready! Using 112 as the preferred number.", buf, 2u);
      }

      sub_1000AE428(v201, &v212);
      sub_101472A6C(a1, v201, v243);
      if (v211 < 0)
      {
        operator delete(v210);
      }

      if (v209 < 0)
      {
        operator delete(v208);
      }

      if (v207 < 0)
      {
        operator delete(v206);
      }

      if (v205 < 0)
      {
        operator delete(v204);
      }

      if (v203 < 0)
      {
        operator delete(v202);
      }
    }
  }

  if (SBYTE7(v220) < 0)
  {
    operator delete(v219[0]);
  }

  if (SHIBYTE(v218) < 0)
  {
    operator delete(v217[1]);
  }

  if (SBYTE7(v216) < 0)
  {
    operator delete(v215[0]);
  }

  if (SBYTE7(v214) < 0)
  {
    operator delete(v213[0]);
  }

  if (*(&v212.var2.__rep_.__l + 23) < 0)
  {
    operator delete(v212.var2.__rep_.__l.__data_);
  }

  *buf = &v221;
  sub_1000B25C4(buf);
  *buf = &v224;
  sub_1000087B4(buf);
  *buf = &v227;
  sub_1000087B4(buf);
  *buf = &v230;
  sub_1000087B4(buf);
  if (SBYTE7(v242) < 0)
  {
    operator delete(v241[0]);
  }

  if (SHIBYTE(v240) < 0)
  {
    operator delete(v239[1]);
  }

  if (SBYTE7(v238) < 0)
  {
    operator delete(v237[0]);
  }

  if (SBYTE7(v236) < 0)
  {
    operator delete(v235[0]);
  }

  if (SHIBYTE(v234) < 0)
  {
    operator delete(v233[1]);
  }

  return v51;
}

void sub_1014755FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_10034F8E8(&STACK[0x440]);
  sub_1000D6F38(&STACK[0x400]);
  sub_10034F8E8(&a71);
  a71 = &STACK[0x290];
  sub_1000B25C4(&a71);
  a71 = &STACK[0x2A8];
  sub_1000087B4(&a71);
  a71 = &STACK[0x2C0];
  sub_1000087B4(&a71);
  a71 = &STACK[0x2D8];
  sub_1000087B4(&a71);
  sub_10034F8E8(&STACK[0x2F0]);
  _Unwind_Resume(a1);
}

void sub_1014759C4(void *a1, uint64_t a2)
{
  v5[0] = 0;
  v5[1] = 0;
  sub_101472F54(a1, 1, a2, v5);
  v4[0] = 0;
  v4[1] = 0;
  sub_101472F54(a1, 0, a2, v4);

  sub_1011D1160(a1);
}

std::string *sub_101475A34(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      v6 = v5[2].__r_.__value_.__s.__data_[4];
      LODWORD(this[2].__r_.__value_.__l.__data_) = v5[2].__r_.__value_.__l.__data_;
      this[2].__r_.__value_.__s.__data_[4] = v6;
      this = (this + 56);
      v5 = (v5 + 56);
    }

    while (v5 != a2);
  }

  return this;
}

void sub_101475B74(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101475C48);
  __cxa_rethrow();
}

void sub_101475BB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101475C08(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101475C48(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

__n128 sub_101475CF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3EB78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101475D28(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101475DF0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3EBF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101475E28(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v7 = *v3;
  v8 = v3[2];
  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
  sub_10010A62C(v3, a2);
  v4 = a1[3];
  v5 = a1[4];
  v6 = (a1[2] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6, &v7);
  v9 = &v7;
  sub_1000B2AF8(&v9);
}

void sub_101475ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_1000B2AF8(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_101475EE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101475FB0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3EC78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101475FE8(void *a1, xpc_object_t *a2)
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

uint64_t sub_1014760C0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101476188(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F3ECF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1014761C0(void *a1, xpc_object_t *a2)
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

uint64_t sub_101476298(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101476354(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F3ED78;
  a2[1] = v2;
  return result;
}

void sub_101476380(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
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
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v30 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v30 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        xpc_retain(v9);
        goto LABEL_16;
      }

      v10 = xpc_null_create();
LABEL_15:
      v30 = v10;
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 8);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v28, v11, v12, v13);
      value = &v30;
      v24 = "first";
      sub_10000F688(&value, &v28, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v28);
      v28 = 0;
      v14 = xpc_array_create(0, 0);
      if (v14 || (v14 = xpc_null_create()) != 0)
      {
        if (xpc_get_type(v14) == &_xpc_type_array)
        {
          xpc_retain(v14);
          v15 = v14;
        }

        else
        {
          v15 = xpc_null_create();
        }
      }

      else
      {
        v15 = xpc_null_create();
        v14 = 0;
      }

      xpc_release(v14);
      v16 = v6[5];
      v17 = v6[6];
      while (v16 != v17)
      {
        write_rest_value();
        xpc_array_append_value(v15, value);
        xpc_release(value);
        v16 += 56;
      }

      v26 = v15;
      if (v15)
      {
        xpc_retain(v15);
      }

      else
      {
        v26 = xpc_null_create();
      }

      xpc_release(v15);
      value = &v30;
      v24 = "second";
      sub_10000F688(&value, &v26, &v27);
      xpc_release(v27);
      v27 = 0;
      xpc_release(v26);
      v26 = 0;
      v18 = v30;
      if (v30)
      {
        xpc_retain(v30);
      }

      else
      {
        v18 = xpc_null_create();
      }

      xpc_release(v30);
      xpc_array_append_value(v4, v18);
      xpc_release(v18);
      v19 = v6[1];
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
          v20 = v6[2];
          v21 = *v20 == v6;
          v6 = v20;
        }

        while (!v21);
      }

      v6 = v20;
    }

    while (v20 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v22 = v4;
  }

  else
  {
    v22 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&value, "/cc/props/disambiguation_emergency_numbers");
  v30 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v30 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v30);
  v30 = 0;
  if (v25 < 0)
  {
    operator delete(value);
  }

  xpc_release(v22);
}

void sub_101476700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, xpc_object_t object)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v21);
  _Unwind_Resume(a1);
}