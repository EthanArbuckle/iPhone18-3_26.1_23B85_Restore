void sub_1013282FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1013283B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101328470(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F658;
  a2[1] = v2;
  return result;
}

uint64_t sub_1013284CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101328588(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2F6D8;
  a2[1] = v2;
  return result;
}

uint64_t sub_1013285B4(uint64_t a1)
{
  v1 = *(a1 + 8);
  result = (*(**(v1 + 104) + 40))(*(v1 + 104), 1);
  v3 = *(v1 + 64);
  if (v3 != v1 + 72)
  {
    (*(**(v3 + 40) + 560))(*(v3 + 40), 1, 11);
    v4 = *(v3 + 48);
    v5[0] = *(v3 + 40);
    v5[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    RegistrationController::setRegistrationStatus_sync(v1, v5);
  }

  return result;
}

void sub_1013286C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013286E0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10132872C(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    if (v2[6] == *(a1 + 32))
    {
      v3 = v2[4];
      if (v3 == v2 + 5)
      {
        goto LABEL_24;
      }

      v4 = *(a1 + 16);
      while (*(v3 + 7) == *(v4 + 7) && rest::NREntitlementStatus::operator==())
      {
        v5 = v3[1];
        v6 = v3;
        if (v5)
        {
          do
          {
            v3 = v5;
            v5 = *v5;
          }

          while (v5);
        }

        else
        {
          do
          {
            v3 = v6[2];
            v7 = *v3 == v6;
            v6 = v3;
          }

          while (!v7);
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
            v7 = *v9 == v4;
            v4 = v9;
          }

          while (!v7);
        }

        v4 = v9;
        if (v3 == v2 + 5)
        {
          goto LABEL_24;
        }
      }
    }

    v10 = v2 + 5;
    sub_10006DCAC((v2 + 4), v2[5]);
    v2[4] = *(a1 + 16);
    v12 = *(a1 + 24);
    v13 = *(a1 + 32);
    v11 = (a1 + 24);
    v2[5] = v12;
    v2[6] = v13;
    if (v13)
    {
      *(v12 + 16) = v10;
      *(a1 + 16) = v11;
      *v11 = 0;
      *(a1 + 32) = 0;
    }

    else
    {
      v2[4] = v10;
    }

    v14 = v2[3];
    if (v14)
    {
      (*(*v14 + 48))(v14, v2 + 4);
    }
  }

LABEL_24:
  sub_10006DCAC(a1 + 16, *(a1 + 24));
  return a1;
}

void sub_1013288C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2F758;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_101328924(uint64_t a1, int a2)
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

void sub_1013289E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(**(a1 + 48) + 16))(*(a1 + 48));
  v10 = 0;
  v11 = 0;
  RegistrationController::getModel_sync(a1, a2, &v10);
  if (v10 && (*(*v10 + 896))(v10, a3))
  {
    v7 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I 5G Standalone changed due to slicing config. Sending 5G Standalone user setting to baseband", v9, 2u);
    }

    RegistrationController::send5GStandaloneEnabledSettingFromPreference_sync(a1, a2, 3);
    v8 = *(a1 + 328);
    RegistrationController::getNRStatus_sync(a1, a2, v9);
    (*(*v8 + 144))(v8, a2, v9);
    RegistrationController::update5GSACapabilityRestProperty_sync(a1, a2);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_101328B44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void *sub_101328B60(void *a1, char *a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v7, kCtLoggingSystemName, a2);
  ctu::OsLogLogger::OsLogLogger(v8, &v7);
  ctu::OsLogLogger::OsLogLogger((a1 + 1), v8);
  ctu::OsLogLogger::~OsLogLogger(v8);
  ctu::OsLogContext::~OsLogContext(&v7);
  *a1 = off_101F2F7A8;
  v5 = a3[1];
  a1[2] = *a3;
  a1[3] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[6] = 0;
  a1[5] = 0;
  a1[4] = a1 + 5;
  return a1;
}

void sub_101328C14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_101328C38(void *a1, void **a2, uint64_t a3)
{
  v4 = a2;
  *buf = a2;
  *(sub_101329334((a1 + 4), a2) + 56) = a3;
  (*(*a1 + 24))(a1, v4, a3);
  v6 = a1[1];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (*(v4 + 23) < 0)
    {
      v4 = *v4;
    }

    *buf = 136446466;
    *&buf[4] = v4;
    v8 = 2082;
    v9 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Setting user notification state for bundle id: %{public}s to %{public}s", buf, 0x16u);
  }
}

void sub_101328D5C(uint64_t a1)
{
  v40[0] = 0;
  v40[1] = 0;
  v39 = v40;
  v1 = *(a1 + 32);
  v19 = a1;
  if (v1 != a1 + 40)
  {
    operator new();
  }

  v38 = 0;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  *v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  *__src = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  sub_10000C320(&v21);
  v2 = v39;
  if (v39 != v40)
  {
    do
    {
      v3 = sub_10000C030(&v22);
      v4 = asString();
      strlen(v4);
      v5 = sub_10000C030(v3);
      sub_10000C030(v5);
      sub_100074B94(v2[1].__r_.__value_.__r.__words[2], v2 + 2, ", ", 2, &__p);
      sub_10000C030(&v22);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__s.__data_[0] = 10;
      sub_10000C030(&v22);
      size = v2->__r_.__value_.__l.__size_;
      if (size)
      {
        do
        {
          v7 = size;
          size = size->__r_.__value_.__r.__words[0];
        }

        while (size);
      }

      else
      {
        do
        {
          v7 = v2->__r_.__value_.__r.__words[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v40);
  }

  memset(&__p, 0, sizeof(__p));
  if ((BYTE8(v28) & 0x10) != 0)
  {
    v10 = v28;
    if (v28 < __src[1])
    {
      *&v28 = __src[1];
      v10 = __src[1];
    }

    v11 = __src[0];
  }

  else
  {
    if ((BYTE8(v28) & 8) == 0)
    {
      v9 = 0;
      goto LABEL_25;
    }

    v11 = *(&v23 + 1);
    v10 = *(&v24 + 1);
  }

  v9 = v10 - v11;
  if ((v10 - v11) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v9 >= 0x17)
  {
    operator new();
  }

  *(&__p.__r_.__value_.__s + 23) = v10 - v11;
  if (v9)
  {
    memmove(&__p, v11, v9);
  }

LABEL_25:
  __p.__r_.__value_.__s.__data_[v9] = 0;
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x8000000000000000) != 0)
  {
    if (!__p.__r_.__value_.__l.__size_)
    {
LABEL_35:
      operator delete(__p.__r_.__value_.__l.__data_);
      goto LABEL_36;
    }

    v12 = __p.__r_.__value_.__l.__size_ - 1;
    p_p = __p.__r_.__value_.__r.__words[0];
    --__p.__r_.__value_.__l.__size_;
  }

  else
  {
    if (!*(&__p.__r_.__value_.__s + 23))
    {
      goto LABEL_36;
    }

    v12 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) - 1;
    --*(&__p.__r_.__value_.__s + 23);
    p_p = &__p;
  }

  p_p->__r_.__value_.__s.__data_[v12] = 0;
  v14 = *(v19 + 8);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if (v15)
  {
    v17 = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v17 = __p.__r_.__value_.__r.__words[0];
    }

    *buf = 136446210;
    v42 = v17;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I %{public}s", buf, 0xCu);
    v16 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  if (v16 < 0)
  {
    goto LABEL_35;
  }

LABEL_36:
  *&v22 = v18;
  if (SHIBYTE(v27) < 0)
  {
    operator delete(v26[1]);
  }

  std::locale::~locale(&v23);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  sub_101329490(v40[0]);
}

uint64_t sub_101329334(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_1013293D8();
  }

  return result;
}

void sub_101329474(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

void sub_101329490(void *a1)
{
  if (a1)
  {
    sub_101329490(*a1);
    sub_101329490(a1[1]);
    sub_100009970((a1 + 5), a1[6]);

    operator delete(a1);
  }
}

uint64_t sub_1013294E8@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = capabilities::ct::supportsThumperService(a1);
  if (result)
  {
    memset(v4, 0, sizeof(v4));
    sub_1011CF58C(v4);
    operator new();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1013295EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_1000087B4(&a16);
  _Unwind_Resume(a1);
}

void *sub_101329650(void *a1, void *a2, NSObject **a3, uint64_t *a4, uint64_t *a5)
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
  v15[1] = sub_1000A82AC;
  v15[3] = v15;
  sub_1011CF6B4(a1, a2, &object, a4, "iCloudEmergencyNumbers", "call.em.iCloud", &v12, v15);
  sub_1000A8744(v15);
  if (v13)
  {
    std::__shared_weak_count::__release_weak(v13);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101F2F820;
  return a1;
}

void sub_101329780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, dispatch_object_t object, char a12)
{
  sub_1000A8744(&a12);
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_1013297B0(uint64_t a1)
{
  sub_1011CFD08(a1);

  operator delete();
}

void sub_1013297E8(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_1013298D0(uint64_t a1, uint64_t a2, uint64_t *a3, int a4)
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

void sub_101329A30(uint64_t a1)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, (a1 + 8));
  operator new();
}

void sub_101329B0C(uint64_t a1, uint64_t a2, int a3)
{
  sub_1000AE428(&v5, a2);
  v6 = a3;
  v7[0] = 0;
  v7[1] = 0;
  sub_100004AA0(v7, (a1 + 8));
  operator new();
}

void sub_101329DC4(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_101329E98);
  __cxa_rethrow();
}

void sub_101329E04(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101329E58(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101329E98(uint64_t result)
{
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t *sub_101329EC4(void *a1)
{
  v2 = a1;
  if (*a1)
  {
    operator delete();
  }

  return sub_1000049E0(&v2);
}

uint64_t *sub_101329F08(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v2 = *v1;
  sub_1011D0918(*v1, *(v1 + 8), (v1 + 16), *(v1 + 40));
  sub_1011D1160(v2);
  sub_101329F84(&v5);
  return sub_1000049E0(&v4);
}

void sub_101329F68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101329F84(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101329F84(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = (v1 + 16);
    sub_1000087B4(&v2);
    operator delete();
  }

  return result;
}

void sub_101329FE4(uint64_t **a1)
{
  v1 = 0;
  v2 = **a1;
  while (1)
  {
    if (v1 != 8)
    {
      subscriber::makeSimSlotRange();
      v3 = v4;
      if (v4 != v5)
      {
        do
        {
          if (v6(*v3))
          {
            break;
          }

          ++v3;
        }

        while (v3 != v5);
        while (v3 != v5)
        {
          sub_1011D2AC8(v2, *v3, v1);
          do
          {
            ++v3;
          }

          while (v3 != v5 && (v6(*v3) & 1) == 0);
        }
      }
    }

    if (++v1 == 13)
    {
      operator delete();
    }
  }
}

uint64_t *sub_10132A104(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8[0] = v1;
  v2 = *v1;
  v8[2] = v1 + 168;
  v3 = sub_10132A288(v2 + 104, (v1 + 168));
  v3[5] = *(v1 + 8);
  std::string::operator=(v3 + 2, (v1 + 16));
  std::string::operator=(v3 + 3, (v1 + 40));
  v4 = *(v1 + 64);
  *(v3 + 100) = *(v1 + 68);
  *(v3 + 24) = v4;
  std::string::operator=((v3 + 13), (v1 + 72));
  v5 = *(v1 + 96);
  *(v3 + 68) = *(v1 + 104);
  v3[16] = v5;
  std::string::operator=(v3 + 6, (v1 + 112));
  std::string::operator=(v3 + 7, (v1 + 136));
  *(v3 + 48) = *(v1 + 160);
  sub_10132A1F0(v8);
  return sub_1000049E0(&v7);
}

void sub_10132A1D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10132A1F0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10132A1F0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 159) < 0)
    {
      operator delete(*(v1 + 136));
    }

    if (*(v1 + 135) < 0)
    {
      operator delete(*(v1 + 112));
    }

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

    operator delete();
  }

  return result;
}

uint64_t *sub_10132A288(uint64_t a1, int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    sub_10132A34C();
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

void sub_10132A3CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10132A3E8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10132A3E8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 191) < 0)
    {
      operator delete(__p[21]);
    }

    if (*(__p + 167) < 0)
    {
      operator delete(__p[18]);
    }

    if (*(__p + 127) < 0)
    {
      operator delete(__p[13]);
    }

    if (*(__p + 95) < 0)
    {
      operator delete(__p[9]);
    }

    if (*(__p + 71) < 0)
    {
      operator delete(__p[6]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10132A48C(uint64_t a1, uint64_t *a2, char a3, const char *a4)
{
  *a1 = a3;
  v6 = (a1 + 8);
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = &unk_101CE5C43;
  }

  v8 = strlen(v7);
  if (v8 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  v9 = v8;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(a1 + 31) = v8;
  if (v8)
  {
    memmove(v6, v7, v8);
  }

  *(v6 + v9) = 0;
  v10 = *a2;
  *a2 = 0;
  *(a1 + 32) = v10;
  *(v10 + 8) = a1;
  *(v10 + 16) = 1;
  return a1;
}

BOOL ImsSmsCommandDriverDelegate::setMessageDelegate(ImsSmsCommandDriverDelegate *this)
{
  if (subscriber::isValidSimSlot())
  {
    v2 = *(this + 7);
    if (v2)
    {
      v3 = std::__shared_weak_count::lock(v2);
      if (v3)
      {
        v4 = *(this + 6);
        if (v4)
        {
          v34 = 0;
          v35 = 0;
          ServiceMap = Registry::getServiceMap(*(this + 4));
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
          __p = v7;
          v11 = sub_100009510(&v6[1].__m_.__sig, &__p);
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
LABEL_23:
              PersonalityIdFromSlotId();
              (*(*v13 + 24))(&v34, v13, &__p);
              if (v33 < 0)
              {
                operator delete(__p);
              }

              if ((v14 & 1) == 0)
              {
                sub_100004A34(v12);
              }

              v19 = v34;
              v16 = v34 != 0;
              if (v34)
              {
                v20 = *(this + 2);
                if (!v20 || (v21 = *(this + 1), (v22 = std::__shared_weak_count::lock(v20)) == 0))
                {
                  sub_100013CC4();
                }

                v23 = v22;
                v24 = "ims.sms.?";
                v25 = *(this + 6);
                if (v25 == 2)
                {
                  v24 = "ims.sms.2";
                }

                if (v25 == 1)
                {
                  v24 = "ims.sms.1";
                }

                v33 = 9;
                v26 = *v24;
                v29 = v22;
                __p = v26;
                v31 = v24[8];
                v32 = 0;
                v28 = v21;
                atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
                (*(*v19 + 144))(v19, &__p, &v28, *(v4 + 24));
                if (v29)
                {
                  sub_100004A34(v29);
                }

                if (v33 < 0)
                {
                  operator delete(__p);
                }

                sub_100004A34(v23);
              }

              else
              {
                v27 = **(this + 8);
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  LOWORD(__p) = 0;
                  _os_log_error_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to set delegate as unable to get client handle.", &__p, 2u);
                }
              }

              if (v35)
              {
                sub_100004A34(v35);
              }

LABEL_18:
              if (v3)
              {
                sub_100004A34(v3);
              }

              return v16;
            }
          }

          else
          {
            v13 = 0;
          }

          std::mutex::unlock(v6);
          v12 = 0;
          v14 = 1;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v3 = 0;
    }

    v17 = **(this + 8);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to set delegate as controller reference is invalid.", &__p, 2u);
    }

    v16 = 0;
    goto LABEL_18;
  }

  v15 = **(this + 8);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    LOWORD(__p) = 0;
    _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Failed to set delegate as slot is invalid", &__p, 2u);
  }

  return 0;
}

void sub_10132A8B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v20);
  if (a19)
  {
    sub_100004A34(a19);
  }

  sub_100004A34(v19);
  _Unwind_Resume(a1);
}

void sub_10132A934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        ImsSmsCommandDriver::handleMessageSendFailure(v6, *(a1 + 24), a2);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = **(a1 + 64);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *v8 = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get reference to Controller while handling SMS Send failure", v8, 2u);
  }

  if (v5)
  {
    sub_100004A34(v5);
  }
}

void sub_10132A9FC(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 48);
      if (v4)
      {
        ImsSmsCommandDriver::handleMessageSendSuccess(v4);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = **(a1 + 64);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to get reference to Controller while handling SMS Send success", v6, 2u);
  }

  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_10132AAB4(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 56);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 48);
      if (v6)
      {
        *__p = 0u;
        v16 = 0u;
        v13 = 0u;
        *v14 = 0u;
        *v11 = 0u;
        *v12 = 0u;
        *v9 = 0u;
        v10 = 0u;
        *v8 = 0u;
        sub_10132AF04(v8, a2);
        ImsSmsCommandDriver::handleMessageReceived(v6, *(a1 + 24), v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v7 = **(a1 + 64);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v8[0]) = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to get reference to Controller while handling SMS Send success", v8, 2u);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  sub_100004A34(v5);
}

void sub_10132ABF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_10132B088(&a9);
  sub_100004A34(v9);
  _Unwind_Resume(a1);
}

void ImsSmsCommandDriverDelegate::sendSms(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
        goto LABEL_7;
      }

      goto LABEL_11;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v13);
  v19 = 0;
  v21 = 1;
  if (!v20)
  {
LABEL_7:
    v22 = **(a1 + 64);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "SystemDetermination interface is nil", buf, 2u);
    }

    goto LABEL_19;
  }

LABEL_11:
  v26 = 0;
  v27 = 0;
  PersonalityIdFromSlotId();
  (*(*v20 + 24))(&v26, v20, buf);
  if (v25 < 0)
  {
    operator delete(*buf);
  }

  if (v26)
  {
    (*(*v26 + 296))(v26, a2, a3, a4, a5, a6);
  }

  else
  {
    v23 = **(a1 + 64);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "imsClient is nil", buf, 2u);
    }
  }

  if (v27)
  {
    sub_100004A34(v27);
  }

LABEL_19:
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }
}

void sub_10132AE78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19)
{
  if (a19)
  {
    sub_100004A34(a19);
  }

  if ((v20 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  _Unwind_Resume(exception_object);
}

void sub_10132AEC4(void *a1)
{
  sub_10132B10C(a1);

  operator delete();
}

char *sub_10132AF04(char *__dst, __int128 *a2)
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

  if (*(a2 + 119) < 0)
  {
    sub_100005F2C(__dst + 96, *(a2 + 12), *(a2 + 13));
  }

  else
  {
    v8 = a2[6];
    *(__dst + 14) = *(a2 + 14);
    *(__dst + 6) = v8;
  }

  *(__dst + 15) = 0;
  *(__dst + 16) = 0;
  *(__dst + 17) = 0;
  sub_100034C50((__dst + 120), *(a2 + 15), *(a2 + 16), *(a2 + 16) - *(a2 + 15));
  return __dst;
}

void sub_10132B00C(_Unwind_Exception *exception_object)
{
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

uint64_t sub_10132B088(uint64_t a1)
{
  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
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

void *sub_10132B10C(void *a1)
{
  *a1 = off_101F2F958;
  v2 = a1[7];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = a1[2];
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  return a1;
}

void sub_10132B170(uint64_t *a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    sub_10132BAA4(a1, v6);
  }

  else if (!v5)
  {
    v7 = *a1 + 24 * a2;
    if (v3 != v7)
    {
      do
      {
        v8 = v3 - 24;
        sub_10006DCAC(v3 - 24, *(v3 - 16));
        v3 = v8;
      }

      while (v8 != v7);
    }

    a1[1] = v7;
  }
}

uint64_t sub_10132B214(void *a1, unsigned int a2, unint64_t a3, unsigned int a4, uint64_t a5)
{
  v12[0] = a3;
  v5 = *a1 + 24 * a2;
  v6 = *(v5 + 8);
  if (v6)
  {
    v7 = v5 + 8;
    do
    {
      v8 = *(v6 + 32);
      v9 = v8 >= a3;
      v10 = v8 < a3;
      if (v9)
      {
        v7 = v6;
      }

      v6 = *(v6 + 8 * v10);
    }

    while (v6);
    if (v7 != v5 + 8 && *(v7 + 32) <= a3 && *(v7 + 40) == a4)
    {
      return 0;
    }
  }

  v12[2] = v12;
  sub_10132BD0C(v5, v12)[5] = a4 | (a5 << 32);
  return 1;
}

void sub_10132B2D0(void *a1)
{
  v1 = a1[1];
  if (*a1 != v1)
  {
    v2 = *a1 + 8;
    do
    {
      sub_10006DCAC(v2 - 8, *v2);
      *v2 = 0;
      *(v2 + 8) = 0;
      *(v2 - 8) = v2;
      v3 = v2 + 16;
      v2 += 24;
    }

    while (v3 != v1);
  }
}

void sub_10132B320(void *a1, unsigned int a2, std::string *a3)
{
  if (*(*a1 + 24 * a2 + 16))
  {
    v6 = desenseClientAsString();
    v7 = strlen(v6);
    if (v7 > 0x7FFFFFFFFFFFFFF7)
    {
      sub_1000A2378();
    }

    v8 = v7;
    if (v7 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v7;
    if (v7)
    {
      memmove(&__dst, v6, v7);
    }

    __dst.__r_.__value_.__s.__data_[v8] = 0;
    v9 = std::string::append(&__dst, ":\n", 2uLL);
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&v32 = *(&v9->__r_.__value_.__l + 2);
    *__p = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if ((SBYTE7(v32) & 0x80u) == 0)
    {
      v11 = __p;
    }

    else
    {
      v11 = __p[0];
    }

    if ((SBYTE7(v32) & 0x80u) == 0)
    {
      v12 = BYTE7(v32);
    }

    else
    {
      v12 = __p[1];
    }

    std::string::append(a3, v11, v12);
    if (SBYTE7(v32) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v13 = (*a1 + 24 * a2);
    v16 = *v13;
    v14 = v13 + 1;
    v15 = v16;
    if (v16 != v14)
    {
      while (1)
      {
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
        *v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        *__src = 0u;
        v32 = 0u;
        v33 = 0u;
        *__p = 0u;
        sub_10000C320(__p);
        v17 = std::ostream::operator<<();
        sub_10000C030(v17);
        v18 = std::ostream::operator<<();
        sub_10000C030(v18);
        v19 = std::ostream::operator<<();
        sub_10000C030(v19);
        if ((BYTE8(v38) & 0x10) != 0)
        {
          break;
        }

        if ((BYTE8(v38) & 8) != 0)
        {
          v22 = *(&v33 + 1);
          v21 = *(&v34 + 1);
LABEL_27:
          v20 = v21 - v22;
          if ((v21 - v22) > 0x7FFFFFFFFFFFFFF7)
          {
            sub_1000A2378();
          }

          if (v20 >= 0x17)
          {
            operator new();
          }

          *(&__dst.__r_.__value_.__s + 23) = v21 - v22;
          if (v20)
          {
            memmove(&__dst, v22, v20);
          }

          goto LABEL_33;
        }

        v20 = 0;
        *(&__dst.__r_.__value_.__s + 23) = 0;
LABEL_33:
        __dst.__r_.__value_.__s.__data_[v20] = 0;
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
          size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __dst.__r_.__value_.__l.__size_;
        }

        std::string::append(a3, p_dst, size);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        __p[0] = v30;
        *(__p + *(v30 - 3)) = v29;
        *&v32 = v28;
        if (SHIBYTE(v37) < 0)
        {
          operator delete(v36[1]);
        }

        std::locale::~locale(&v33);
        std::iostream::~basic_iostream();
        std::ios::~ios();
        v25 = v15[1];
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
            v26 = v15[2];
            v27 = *v26 == v15;
            v15 = v26;
          }

          while (!v27);
        }

        v15 = v26;
        if (v26 == v14)
        {
          return;
        }
      }

      v21 = v38;
      if (v38 < __src[1])
      {
        *&v38 = __src[1];
        v21 = __src[1];
      }

      v22 = __src[0];
      goto LABEL_27;
    }
  }
}

void sub_10132B7B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (*(v20 - 89) < 0)
  {
    operator delete(*(v20 - 112));
  }

  _Unwind_Resume(exception_object);
}

void sub_10132B828(void *a1, std::string *a2)
{
  if (a1[1] != *a1)
  {
    v4 = 0;
    do
    {
      sub_10132B320(a1, v4++, a2);
    }

    while (v4 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  }
}

void *sub_10132B89C(void *result, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v4 = (*result + 24 * a2);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    v9 = (a4 + 8);
    do
    {
      v10 = v6 + 4;
      v11 = *v9;
      if (!*v9)
      {
        goto LABEL_11;
      }

      v12 = *v10;
      v13 = v9;
      do
      {
        v14 = v11[4];
        v15 = v14 >= v12;
        v16 = v14 < v12;
        if (v15)
        {
          v13 = v11;
        }

        v11 = v11[v16];
      }

      while (v11);
      if (v13 == v9 || v12 < v13[4])
      {
LABEL_11:
        result = sub_10132BD0C(a3, v10);
        result[5] = v6[5];
      }

      v17 = v6[1];
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
          v18 = v6[2];
          v19 = *v18 == v6;
          v6 = v18;
        }

        while (!v19);
      }

      v6 = v18;
    }

    while (v18 != v5);
  }

  return result;
}

void *sub_10132B990(void *result, unsigned int a2, uint64_t a3, void *a4)
{
  v4 = a4 + 1;
  v5 = *a4;
  if (*a4 != a4 + 1)
  {
    v7 = result;
    do
    {
      v9 = v5 + 4;
      v10 = *v7 + 24 * a2;
      v13 = *(v10 + 8);
      v11 = v10 + 8;
      v12 = v13;
      if (!v13)
      {
        goto LABEL_12;
      }

      v14 = *v9;
      v15 = v11;
      do
      {
        v16 = *(v12 + 32);
        v17 = v16 >= v14;
        v18 = v16 < v14;
        if (v17)
        {
          v15 = v12;
        }

        v12 = *(v12 + 8 * v18);
      }

      while (v12);
      if (v15 == v11 || v14 < *(v15 + 32) || *(v15 + 40) != *(v5 + 10))
      {
LABEL_12:
        result = sub_10132BD0C(a3, v9);
        result[5] = v5[5];
      }

      v19 = v5[1];
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
          v20 = v5[2];
          v21 = *v20 == v5;
          v5 = v20;
        }

        while (!v21);
      }

      v5 = v20;
    }

    while (v20 != v4);
  }

  return result;
}

uint64_t *sub_10132BAA4(uint64_t *result, unint64_t a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v3) >> 3) >= a2)
  {
    if (a2)
    {
      v9 = v3 + 24 * a2;
      v10 = 24 * a2;
      v11 = (v3 + 8);
      do
      {
        *v11 = 0;
        v11[1] = 0;
        *(v11 - 1) = v11;
        v11 += 3;
        v10 -= 24;
      }

      while (v10);
    }

    else
    {
      v9 = result[1];
    }

    result[1] = v9;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x555555555555555)
    {
      v8 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v8 = v6;
    }

    v30 = result;
    if (v8)
    {
      if (v8 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      sub_100013D10();
    }

    v12 = 0;
    v29 = 0;
    v13 = 24 * v5 + 24 * a2;
    v14 = 24 * a2;
    v15 = (24 * v5 + 8);
    do
    {
      *v15 = 0;
      v15[1] = 0;
      *(v15 - 1) = v15;
      v15 += 3;
      v14 -= 24;
    }

    while (v14);
    v16 = *result;
    v17 = result[1];
    v18 = 24 * v5 - (v17 - *result);
    v28 = 24 * v5 + 24 * a2;
    if (v17 != v16)
    {
      v19 = 0;
      v20 = -8 * ((v17 - v16) >> 3) + 24 * v5;
      do
      {
        v21 = (v20 + v19);
        *v21 = *(v16 + v19);
        v22 = (v16 + v19 + 8);
        v23 = *v22;
        *(v20 + v19 + 8) = *v22;
        v24 = v20 + v19 + 8;
        v25 = *(v16 + v19 + 16);
        v21[2] = v25;
        if (v25)
        {
          *(v23 + 16) = v24;
          *(v16 + v19) = v22;
          *v22 = 0;
          *(v16 + v19 + 16) = 0;
        }

        else
        {
          *v21 = v24;
        }

        v19 += 24;
      }

      while (v16 + v19 != v17);
      do
      {
        sub_10006DCAC(v16, *(v16 + 8));
        v16 += 24;
      }

      while (v16 != v17);
      v16 = *v2;
      v13 = v28;
      v12 = v29;
    }

    *v2 = v18;
    v2[1] = v13;
    v26 = v2[2];
    v2[2] = v12;
    v28 = v16;
    v29 = v26;
    v27[0] = v16;
    v27[1] = v16;
    return sub_10132BCB8(v27);
  }

  return result;
}

uint64_t sub_10132BCB8(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_10006DCAC(i - 24, *(i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *sub_10132BD0C(uint64_t a1, unint64_t *a2)
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
      v5 = v2[4];
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

uint64_t sub_10132BDDC(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  sub_1000194D8(a1, v4);
  operator delete(v4);
  return 1;
}

void sub_10132C158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_100005978(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_10132C690(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
  }

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_10132C6F4(Registry *a1, std::__shared_weak_count *a2, void *a3, void *a4)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v5 = sub_101331010(a1, kAlertDialogLocalizationTable, a3, a4);
  if (a2)
  {
    sub_100004A34(a2);
  }

  return v5;
}

void sub_10132C748(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_10132C760(Registry *a1, std::__shared_weak_count *a2, uint64_t a3, void *a4, void *a5)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = sub_101331010(a1, a3, a4, a5);
  if (a2)
  {
    sub_100004A34(a2);
  }

  return v6;
}

void sub_10132C7B4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10132DAE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, xpc_object_t object, xpc_object_t a35, xpc_object_t a36, char a37, uint64_t a38, xpc_object_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (v46)
  {
    sub_100004A34(v46);
  }

  if ((v47 & 1) == 0)
  {
    sub_100004A34(v45);
  }

  _Unwind_Resume(exception_object);
}

void sub_10132E0B4(__CFUserNotification *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  if (a2 == 1)
  {
    [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState handleActionResponse];
  }

  if (a1)
  {
    CFUserNotificationCancel(a1);
    CFRelease(a1);
  }

  [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState unlockScheduled];

  objc_autoreleasePoolPop(v4);
}

uint64_t DataActivationFailureEventObserver::DataActivationFailureEventObserver(uint64_t a1, void *a2)
{
  *a1 = off_101F2F9F8;
  v4 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v16, kCtLoggingSystemName, "dafEvent");
  v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  v6 = dispatch_queue_create("DataActivationFailureEventObserver", v5);
  *v4 = 0;
  v4[1] = 0;
  *(a1 + 24) = v6;
  if (v6)
  {
    v7 = v6;
    dispatch_retain(v6);
    *(a1 + 32) = 0;
    dispatch_release(v7);
  }

  else
  {
    *(a1 + 32) = 0;
  }

  ctu::OsLogLogger::OsLogLogger(v17, &v16);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v17);
  ctu::OsLogLogger::~OsLogLogger(v17);
  ctu::OsLogContext::~OsLogContext(&v16);
  *a1 = off_101F2F9F8;
  *(a1 + 48) = *a2;
  v8 = a2[1];
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 64) = 0;
  *(a1 + 68) = -1;
  sub_10000501C(&__p, "DataActivationFailureEventObserver");
  v9 = *(a1 + 24);
  v13 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = *(a1 + 32);
  object = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  ctu::RestModule::RestModule();
  if (object)
  {
    dispatch_release(object);
  }

  if (v13)
  {
    dispatch_release(v13);
  }

  if (v15 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 96) = 0;
  *(a1 + 136) = 0;
  *(a1 + 128) = a1 + 136;
  *(a1 + 144) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 160) = 0;
  *(a1 + 152) = a1 + 160;
  *(a1 + 168) = 0;
  *(a1 + 176) = 1;
  *(a1 + 180) = 0;
  *(a1 + 184) = 0;
  *(a1 + 186) = 0;
  *(a1 + 192) = 0;
  [+[CellDataActivationFailureAlertState appInit:object]];
  return a1;
}

void sub_10132E390(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a10)
  {
    dispatch_release(a10);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  v22 = v19[7];
  if (v22)
  {
    sub_100004A34(v22);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  CSIEventObserverInterface::~CSIEventObserverInterface(v19);
  _Unwind_Resume(a1);
}

void sub_10132E45C(uint64_t a1)
{
  *a1 = off_101F2F9F8;
  sub_10006DCAC(a1 + 152, *(a1 + 160));
  sub_100077CD4(a1 + 128, *(a1 + 136));
  v4 = (a1 + 96);
  sub_100112048(&v4);
  v2 = *(a1 + 88);
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
  CSIEventObserverInterface::~CSIEventObserverInterface(a1);
}

void sub_10132E4FC(uint64_t a1)
{
  sub_10132E45C(a1);

  operator delete();
}

void sub_10132E534(uint64_t a1, uint64_t a2, xpc_object_t *a3)
{
  if (*a3)
  {
    xpc_retain(*a3);
  }

  else
  {
    xpc_null_create();
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

void sub_10132E664(uint64_t a1, void *a2)
{
  v219 = 0;
  v218 = 0;
  __p = 0;
  v217 = 0uLL;
  v221 = -1;
  *v194 = *(a1 + 176);
  v215 = 0;
  *buf = a2;
  *&buf[8] = "kNotificationFlag";
  sub_100006354(buf, object);
  v5 = xpc::dyn_cast_or_default(object, 0, v4);
  xpc_release(object[0]);
  if (v5)
  {
    memset(buf, 0, 128);
    v250.__r_.__value_.__r.__words[0] = 0;
    object[0] = a2;
    object[1] = "kArgs";
    sub_100015504(object, &v250);
    if (xpc_get_type(v250.__r_.__value_.__l.__data_) == &_xpc_type_array)
    {
      count = xpc_array_get_count(v250.__r_.__value_.__l.__data_);
      if (count >= 16)
      {
        v6 = 16;
      }

      else
      {
        v6 = count;
      }

      if (count >= 1)
      {
        v9 = 0;
        do
        {
          object[0] = &v250;
          object[1] = v9;
          sub_100008EF0(object, &v248);
          *&buf[8 * v9] = xpc::dyn_cast_or_default(&v248, 0, v10);
          xpc_release(v248.__r_.__value_.__l.__data_);
          v9 = v9 + 1;
        }

        while (v6 != v9);
      }
    }

    else
    {
      v6 = 0;
    }

    xpc_release(v250.__r_.__value_.__l.__data_);
    sub_101330A30(a2, &v219, &v218, &__p, &v221, &v215);
    if (v6 < 4)
    {
      goto LABEL_29;
    }

    v221 = *buf;
    if (!*&buf[24])
    {
      goto LABEL_29;
    }

    v219 = *&buf[24];
    if (*&buf[24] > -3)
    {
      if (*&buf[24] >= 0xFFFFFFFFFFFFFFFELL)
      {
LABEL_26:
        memset(object, 0, 24);
        ctu::cf::assign();
        v13 = object[0];
        v250.__r_.__value_.__l.__data_ = object[1];
        *(v250.__r_.__value_.__r.__words + 7) = *(&object[1] + 7);
        v14 = HIBYTE(object[2]);
        if (SHIBYTE(v217) < 0)
        {
          operator delete(__p);
        }

        __p = v13;
        *&v217 = v250.__r_.__value_.__r.__words[0];
        *(&v217 + 7) = *(v250.__r_.__value_.__r.__words + 7);
        HIBYTE(v217) = v14;
      }
    }

    else
    {
      if (*&buf[24] == -4)
      {
        memset(object, 0, 24);
        ctu::cf::assign();
        v11 = object[0];
        v250.__r_.__value_.__l.__data_ = object[1];
        *(v250.__r_.__value_.__r.__words + 7) = *(&object[1] + 7);
        v12 = HIBYTE(object[2]);
        if (SHIBYTE(v217) < 0)
        {
          operator delete(__p);
        }

        __p = v11;
        *&v217 = v250.__r_.__value_.__r.__words[0];
        *(&v217 + 7) = *(v250.__r_.__value_.__r.__words + 7);
        HIBYTE(v217) = v12;
        v218 = 1;
        goto LABEL_29;
      }

      if (*&buf[24] == -3)
      {
        goto LABEL_26;
      }
    }

LABEL_29:
    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(object[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I old style dict", object, 2u);
    }

    goto LABEL_31;
  }

  object[0] = 0;
  *buf = a2;
  *&buf[8] = "kNotificationDict";
  sub_100048A24(buf, object);
  if (xpc_get_type(object[0]) == &_xpc_type_dictionary)
  {
    sub_101330A30(object, &v219, &v218, &__p, &v221, &v215);
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I new style dict", buf, 2u);
  }

  xpc_release(object[0]);
LABEL_31:
  isStewieActive = StewieFeatureState::isStewieActive((a1 + 186));
  memset(object, 0, 24);
  ServiceMap = Registry::getServiceMap(*(a1 + 48));
  v18 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
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
      goto LABEL_39;
    }
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(v18);
  v24 = 0;
  v26 = 1;
LABEL_39:
  v195 = v24;
  if (v25)
  {
    v196 = (*(*v25 + 64))(v25);
    (*(*v25 + 40))(buf, v25);
    sub_100071A6C(object);
    *object = *buf;
    object[2] = *&buf[16];
    memset(buf, 0, 24);
    v250.__r_.__value_.__r.__words[0] = buf;
    sub_1000087B4(&v250);
    *v207 = (*(*v25 + 56))(v25);
    *v197 = (*(*v25 + 168))(v25);
  }

  else
  {
    *v207 = 0;
    v196 = -1;
    *v197 = 0;
  }

  v184 = isStewieActive;
  v204 = v26;
  v209 = a2;
  *v210 = a1;
  memset(&v250, 0, sizeof(v250));
  v27 = object[0];
  v28 = object[1];
  if (object[0] == object[1])
  {
    v29 = 0;
  }

  else
  {
    v29 = 0;
    do
    {
      memset(buf, 0, 24);
      if (v27[23] < 0)
      {
        sub_100005F2C(buf, *v27, *(v27 + 1));
      }

      else
      {
        v30 = *v27;
        *&buf[16] = *(v27 + 2);
        *buf = v30;
      }

      if (v25)
      {
        v29 |= (*(*v25 + 48))(v25, buf);
      }

      if ((v250.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v250.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v250.__r_.__value_.__l.__size_;
      }

      if (size)
      {
        memset(&v248, 0, sizeof(v248));
        sub_1000677C4(&v248, size + 2);
        if ((v248.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v248;
        }

        else
        {
          v32 = v248.__r_.__value_.__r.__words[0];
        }

        if ((v250.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v250;
        }

        else
        {
          v33 = v250.__r_.__value_.__r.__words[0];
        }

        memmove(v32, v33, size);
        strcpy(v32 + size, ", ");
        if (buf[23] >= 0)
        {
          v34 = buf;
        }

        else
        {
          v34 = *buf;
        }

        if (buf[23] >= 0)
        {
          v35 = buf[23];
        }

        else
        {
          v35 = *&buf[8];
        }

        v36 = std::string::append(&v248, v34, v35);
        v37 = v36->__r_.__value_.__r.__words[0];
        v249[0] = v36->__r_.__value_.__l.__size_;
        *(v249 + 7) = *(&v36->__r_.__value_.__r.__words[1] + 7);
        v38 = HIBYTE(v36->__r_.__value_.__r.__words[2]);
        v36->__r_.__value_.__l.__size_ = 0;
        v36->__r_.__value_.__r.__words[2] = 0;
        v36->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v250.__r_.__value_.__l.__data_);
        }

        v250.__r_.__value_.__r.__words[0] = v37;
        v250.__r_.__value_.__l.__size_ = v249[0];
        *(&v250.__r_.__value_.__r.__words[1] + 7) = *(v249 + 7);
        *(&v250.__r_.__value_.__s + 23) = v38;
        if (SHIBYTE(v248.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v248.__r_.__value_.__l.__data_);
        }
      }

      else
      {
        std::string::operator=(&v250, buf);
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v27 += 24;
    }

    while (v27 != v28);
  }

  v249[0] = 0;
  if (v25)
  {
    *&v201[4] = (*(*v25 + 96))(v25);
    v39 = v209;
    v40 = *v210;
    v201[0] = (*(*v25 + 104))(v25);
    v41 = (*(*v25 + 24))(v25, v249);
    v42 = (*(*v25 + 112))(v25);
    *v202 = (*(*v25 + 16))(v25);
    v190 = (*(*v25 + 128))(v25);
    v192 = v42;
    sub_10000501C(buf, "com.apple.DataActivation");
    v43 = (*(*v25 + 88))(v25, buf);
    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    *v202 = 0;
    v43 = 0;
    v190 = 0;
    v192 = 0;
    v41 = 0;
    *v201 = 0;
    v39 = v209;
    v40 = *v210;
  }

  xdict = 0;
  *buf = v39;
  *&buf[8] = "kNotificationAdditional";
  sub_100048A24(buf, &xdict);
  if (xpc_get_type(xdict) == &_xpc_type_dictionary)
  {
    if (xpc_dictionary_get_value(xdict, kDataActivateFailureDueToDataPlanKey))
    {
      *buf = &xdict;
      *&buf[8] = kDataActivateFailureDueToDataPlanKey;
      sub_100006354(buf, &v248);
      *v199 = xpc::dyn_cast_or_default(&v248, 0, v45);
      xpc_release(v248.__r_.__value_.__l.__data_);
    }

    else
    {
      *v199 = 0;
    }

    if (xpc_dictionary_get_value(xdict, kDataActivateFailureAlertCallbackKey))
    {
      *buf = &xdict;
      *&buf[8] = kDataActivateFailureAlertCallbackKey;
      sub_100006354(buf, &v248);
      v44 = xpc::dyn_cast_or_default(&v248, 0, v46);
      xpc_release(v248.__r_.__value_.__l.__data_);
    }

    else
    {
      v44 = 0;
    }
  }

  else
  {
    v44 = 0;
    *v199 = 0;
  }

  v47 = Registry::getServiceMap(*(v40 + 48));
  v48 = v47;
  v50 = v49;
  if (v49 < 0)
  {
    v51 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
    v52 = 5381;
    do
    {
      v50 = v52;
      v53 = *v51++;
      v52 = (33 * v52) ^ v53;
    }

    while (v53);
  }

  std::mutex::lock(v47);
  *buf = v50;
  v54 = sub_100009510(&v48[1].__m_.__sig, buf);
  v187 = v29;
  v188 = v43;
  if (v54)
  {
    v55 = v54[3];
    v56 = v54[4];
    if (v56)
    {
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v48);
      atomic_fetch_add_explicit(&v56->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v56);
      v203 = 0;
      goto LABEL_95;
    }
  }

  else
  {
    v55 = 0;
  }

  std::mutex::unlock(v48);
  v56 = 0;
  v203 = 1;
LABEL_95:
  v206 = v56;
  v183 = v49;
  v58 = object[0];
  v59 = object[1];
  if (object[0] == object[1])
  {
    v60 = 0;
    if (v55)
    {
      goto LABEL_106;
    }

LABEL_109:
    v198 = 0;
    if (v25)
    {
      goto LABEL_107;
    }

    goto LABEL_110;
  }

  v60 = 0;
  do
  {
    memset(buf, 0, 24);
    if (v58[23] < 0)
    {
      v57 = sub_100005F2C(buf, *v58, *(v58 + 1));
    }

    else
    {
      v61 = *v58;
      *&buf[16] = *(v58 + 2);
      *buf = v61;
    }

    if (!(v60 & 1 | (v55 == 0)))
    {
      v57 = (*(*v55 + 64))(v55, 45, buf);
      v60 = v57;
    }

    if ((buf[23] & 0x80000000) != 0)
    {
      operator delete(*buf);
    }

    v58 += 24;
  }

  while (v58 != v59);
  if (!v55)
  {
    goto LABEL_109;
  }

LABEL_106:
  v57 = (*(*v55 + 80))(v55);
  v198 = v57;
  if (v25)
  {
LABEL_107:
    v62 = (*(*v25 + 144))(v25);
    v57 = (*(*v25 + 152))(v25);
    v185 = v57;
    goto LABEL_111;
  }

LABEL_110:
  v185 = 0;
  v62 = 1;
LABEL_111:
  v205 = v44;
  if ((capabilities::ct::supportsGemini(v57) & 1) == 0)
  {
    v200 = 0;
    goto LABEL_145;
  }

  v180 = v62;
  v63 = Registry::getServiceMap(*(v40 + 48));
  v64 = v63;
  if (v65 < 0)
  {
    v66 = (v65 & 0x7FFFFFFFFFFFFFFFLL);
    v67 = 5381;
    do
    {
      v65 = v67;
      v68 = *v66++;
      v67 = (33 * v67) ^ v68;
    }

    while (v68);
  }

  std::mutex::lock(v63);
  *buf = v65;
  v69 = sub_100009510(&v64[1].__m_.__sig, buf);
  v70 = v41;
  if (!v69)
  {
    v71 = 0;
LABEL_121:
    std::mutex::unlock(v64);
    v72 = 0;
    v73 = 1;
    if (!v71)
    {
      goto LABEL_118;
    }

LABEL_122:
    v74 = Registry::getServiceMap(*(v40 + 48));
    v75 = v74;
    if (v76 < 0)
    {
      v77 = (v76 & 0x7FFFFFFFFFFFFFFFLL);
      v78 = 5381;
      do
      {
        v76 = v78;
        v79 = *v77++;
        v78 = (33 * v78) ^ v79;
      }

      while (v79);
    }

    std::mutex::lock(v74);
    *buf = v76;
    v80 = sub_100009510(&v75[1].__m_.__sig, buf);
    v178 = v73;
    if (v80)
    {
      v82 = v80[3];
      v81 = v80[4];
      if (v81)
      {
        atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v75);
        atomic_fetch_add_explicit(&v81->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v81);
        v83 = 0;
        if (!v82)
        {
          goto LABEL_140;
        }

        goto LABEL_131;
      }
    }

    else
    {
      v82 = 0;
    }

    std::mutex::unlock(v75);
    v81 = 0;
    v83 = 1;
    if (!v82)
    {
      goto LABEL_140;
    }

LABEL_131:
    if ((**v82)(v82))
    {
      v84 = *(*v210 + 152);
      if (v84 != (*v210 + 160))
      {
        while (1)
        {
          v85 = *(v84 + 7);
          if (v85 != (*(*v71 + 792))(v71))
          {
            break;
          }

          v86 = v84[1];
          if (v86)
          {
            do
            {
              v87 = v86;
              v86 = *v86;
            }

            while (v86);
          }

          else
          {
            do
            {
              v87 = v84[2];
              v88 = *v87 == v84;
              v84 = v87;
            }

            while (!v88);
          }

          v84 = v87;
          if (v87 == (*v210 + 160))
          {
            goto LABEL_140;
          }
        }

        v145 = (*(*v71 + 768))(v71, *(v84 + 7));
        v41 = v70;
        v73 = v178;
        if (v145)
        {
          v89 = *(v84 + 8) == 0;
        }

        else
        {
          v89 = 0;
        }

        v200 = v89;
        if (v83)
        {
          goto LABEL_142;
        }

        goto LABEL_141;
      }
    }

LABEL_140:
    v89 = 0;
    v200 = 0;
    v41 = v70;
    v73 = v178;
    if (v83)
    {
      goto LABEL_142;
    }

LABEL_141:
    sub_100004A34(v81);
    v200 = v89;
    goto LABEL_142;
  }

  v71 = v69[3];
  v72 = v69[4];
  if (!v72)
  {
    goto LABEL_121;
  }

  atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v64);
  atomic_fetch_add_explicit(&v72->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v72);
  v73 = 0;
  if (v71)
  {
    goto LABEL_122;
  }

LABEL_118:
  v200 = 0;
  v41 = v70;
LABEL_142:
  if ((v73 & 1) == 0)
  {
    sub_100004A34(v72);
  }

  v40 = *v210;
  v62 = v180;
LABEL_145:
  v90 = (v40 + 40);
  v91 = *(v40 + 40);
  if (os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
  {
    v179 = v41;
    v181 = (v40 + 40);
    v92 = v219;
    v177 = CSIErrorString();
    v176 = asStringBool(v207[0]);
    v175 = v221;
    if (v217 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    v94 = &v250;
    if ((v250.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v94 = v250.__r_.__value_.__r.__words[0];
    }

    v173 = v94;
    v174 = p_p;
    v172 = asStringBool(v218);
    v171 = asString();
    v170 = asStringBool(v201[0]);
    *v193 = asStringBool(v192);
    v169 = asStringBool(v202[0]);
    *v191 = asStringBool(v190);
    v168 = asStringBool(v62);
    *v186 = asStringBool(v185);
    v167 = asStringBool(v60 & 1);
    *v189 = asStringBool(v188);
    v95 = asStringBool(v197[0]);
    v96 = asStringBool(v198);
    v97 = asStringBool(v199[0]);
    v98 = *(*v210 + 72);
    v99 = asStringBool(*(*v210 + 120));
    v100 = asStringBool(*(*v210 + 184));
    v101 = asStringBool(v200);
    *buf = 67115522;
    *&buf[4] = v92;
    *&buf[8] = 2080;
    *&buf[10] = v177;
    *&buf[18] = 2080;
    *&buf[20] = v176;
    *&buf[28] = 1024;
    *&buf[30] = v175;
    *&buf[34] = 2080;
    *&buf[36] = v174;
    *&buf[44] = 2080;
    *&buf[46] = v173;
    *&buf[54] = 2048;
    *&buf[56] = v187;
    *&buf[64] = 2080;
    *&buf[66] = v172;
    *&buf[74] = 2048;
    *&buf[76] = v196;
    *&buf[84] = 2080;
    *&buf[86] = v171;
    *&buf[94] = 2080;
    *&buf[96] = v170;
    *&buf[104] = 2048;
    *&buf[106] = v179;
    *&buf[114] = 2080;
    *&buf[116] = *v193;
    *&buf[124] = 2080;
    *&buf[126] = v169;
    v224 = 2080;
    v225 = *v191;
    v226 = 2080;
    v227 = v168;
    v228 = 2080;
    v229 = *v186;
    v230 = 2080;
    v231 = v167;
    v232 = 2080;
    v233 = *v189;
    v234 = 2080;
    v235 = v95;
    v236 = 2080;
    v237 = v96;
    v238 = 2080;
    v239 = v97;
    v41 = v179;
    v240 = 2048;
    v241 = v98;
    v242 = 2080;
    v243 = v99;
    v244 = 2080;
    v245 = v100;
    v246 = 2080;
    v247 = v101;
    _os_log_impl(&_mh_execute_header, v91, OS_LOG_TYPE_DEFAULT, "#I err_code=%d (%s); lockState = %s; contextId = %d; reason: %s; frontmost app=%s; uses network=%ld; forMMS=%s; appSequence=%lu; simStatus=%s; needsUserIdentificationModule=%s; calls=%lu; fallingBackToCellular=%s; usingWifi=%s; isBluetoothTethering=%s; isWifiCapable=%s; isWAPICapable=%s; suppressed=%s; DataActivation active = %s; webSheetVisibility = %s; dataPlanFailingActivation = %s; failureFromDataPlan = %s; lockSequence = %lu; isVinylAvailable = %s; fInternetActive = %s, canSwitchToOtherSIM = %s", buf, 0xFEu);
    v40 = *v210;
    v90 = v181;
  }

  if (v41 && (v41 != 1 || !v249[0]))
  {
    v103 = *v90;
    v102 = v205;
    if (os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v104 = "#I In a call - do not show ";
      goto LABEL_163;
    }

    goto LABEL_164;
  }

  v102 = v205;
  if (*v207)
  {
    v103 = *v90;
    if (os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v104 = "#I UI Locked - do not show ";
LABEL_163:
      _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_DEFAULT, v104, buf, 2u);
      goto LABEL_164;
    }

    goto LABEL_164;
  }

  if (*&v201[4] == 0 && v201[0])
  {
    v103 = *v90;
    if (os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v104 = "#I Invalid SIM status - do not show ";
      goto LABEL_163;
    }

LABEL_164:
    v105 = 0;
    v106 = v206;
LABEL_165:
    v107 = v203;
    goto LABEL_166;
  }

  if (v219 == 106)
  {
    v106 = v206;
    if ([+[CellDataActivationFailureAlertState trylockMain] sharedInstance]
    {
      v132 = v90;
      memset(buf, 0, 24);
      sub_10000501C(buf, "com.apple.Preferences");
      v133 = SHIBYTE(v250.__r_.__value_.__r.__words[2]);
      if ((v250.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v134 = HIBYTE(v250.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v134 = v250.__r_.__value_.__l.__size_;
      }

      if (!v134)
      {
        goto LABEL_264;
      }

      v135 = buf[23];
      if (buf[23] < 0)
      {
        v135 = *&buf[8];
      }

      if (v134 == v135 && ((v250.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (v136 = &v250) : (v136 = v250.__r_.__value_.__r.__words[0]), buf[23] >= 0 ? (v137 = buf) : (v137 = *buf), !memcmp(v136, v137, v134)))
      {
LABEL_264:
        v151 = *v132;
        v107 = v203;
        if (os_log_type_enabled(*v132, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v248.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v151, OS_LOG_TYPE_DEFAULT, "#I kUncertifiedWifiCallingFatalError to show", &v248, 2u);
        }

        v105 = 1;
      }

      else
      {
        v138 = *v132;
        v105 = 0;
        v107 = v203;
        if (os_log_type_enabled(*v132, OS_LOG_TYPE_DEFAULT))
        {
          v139 = v250.__r_.__value_.__r.__words[0];
          if (v133 >= 0)
          {
            v139 = &v250;
          }

          LODWORD(v248.__r_.__value_.__l.__data_) = 136315138;
          *(v248.__r_.__value_.__r.__words + 4) = v139;
          _os_log_impl(&_mh_execute_header, v138, OS_LOG_TYPE_DEFAULT, "#I kUncertifiedWifiCallingFatalError displayApps=%s", &v248, 0xCu);
          v105 = 0;
        }
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v90 = v132;
      goto LABEL_166;
    }

    v143 = *v90;
    if (os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v144 = "#I kUncertifiedWifiCallingFatalError alert is already being shown";
LABEL_243:
      _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, v144, buf, 2u);
      goto LABEL_244;
    }

    goto LABEL_244;
  }

  if (v200)
  {
    if (v219 != 65)
    {
      v103 = *v90;
      if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *buf = 0;
      v104 = "#I Soft error - do not show ";
      goto LABEL_163;
    }
  }

  else if (v219 == 109)
  {
    v103 = *v90;
    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v104 = "#I Temprorary Failure - do not show regardless of Internet status";
    goto LABEL_163;
  }

  if (v219 == -9 || ((v219 == -5) & *(v40 + 184)) != 0)
  {
    v103 = *v90;
    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v104 = "#I Temprorary Failure - do not show";
    goto LABEL_163;
  }

  if (!v199[0] && v198)
  {
    v103 = *v90;
    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v104 = "#I Data plan blocking activation - do not show";
    goto LABEL_163;
  }

  v141 = !v199[0];
  if (!v25)
  {
    v141 = 1;
  }

  if ((v141 & 1) == 0)
  {
    v142 = *(v40 + 72);
    if (v142 == (*(*v25 + 72))(v25))
    {
      v103 = *v90;
      if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_164;
      }

      *buf = 0;
      v104 = "#I Already shown data plan alert this unlock - do not show ";
      goto LABEL_163;
    }
  }

  if (*v197)
  {
    v103 = *v90;
    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v104 = "#I Websheet visible - do not show ";
    goto LABEL_163;
  }

  if (v60)
  {
    v103 = *v90;
    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_164;
    }

    *buf = 0;
    v104 = "#I Suppressed - do not show ";
    goto LABEL_163;
  }

  if (v221 && !v218)
  {
    v143 = *v90;
    v106 = v206;
    if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_244;
    }

    *buf = 0;
    v144 = "#I Not internet and not for MMS - do not show ";
    goto LABEL_243;
  }

  v106 = v206;
  if (v25)
  {
    if ((*(*v25 + 80))(v25))
    {
      v152 = *(v40 + 68);
      if (v152 != -1 && v152 == v196)
      {
        v143 = *v90;
        if (!os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_244;
        }

        *buf = 0;
        v144 = "#I Application event sequeunce is the same - do not show ";
        goto LABEL_243;
      }
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  v153 = Registry::getServiceMap(*(v40 + 48));
  sub_101331AE4(v153, buf);
  if (!*buf || !(*(**buf + 1216))(*buf, 3))
  {
    v182 = v90;
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }

    v155 = object[0];
    v156 = object[1];
    if (object[0] == object[1])
    {
      v105 = 0;
      v102 = v205;
      v106 = v206;
      v107 = v203;
      v90 = v182;
      goto LABEL_166;
    }

    v157 = 0;
    v158 = 1;
    v159 = v218;
    do
    {
      memset(buf, 0, 24);
      if (v155[23] < 0)
      {
        sub_100005F2C(buf, *v155, *(v155 + 1));
      }

      else
      {
        v160 = *v155;
        *&buf[16] = *(v155 + 2);
        *buf = v160;
      }

      v161 = 0;
      v162 = 0;
      v248.__r_.__value_.__s.__data_[0] = 0;
      if (v158)
      {
        v162 = sub_1013305A4(v40, v159, buf, &v248);
        v161 = v248.__r_.__value_.__s.__data_[0];
      }

      if ((buf[23] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }

      v157 |= v161;
      v155 += 24;
      v158 = v162;
    }

    while (v155 != v156);
    if ((v162 & v157 & 1) != 0 && (v163.__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_, v163.__d_.__rep_ - *(v40 + 192) >= 0x34630B8A001))
    {
      *(v40 + 192) = v163;
      v102 = v205;
      v90 = v182;
    }

    else
    {
      v102 = v205;
      v90 = v182;
      if (v162)
      {
        goto LABEL_164;
      }
    }

    v106 = v206;
    v164 = [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState trylockMain];
    v143 = *v90;
    v165 = os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT);
    if (v164)
    {
      if (v165)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v143, OS_LOG_TYPE_DEFAULT, "#I to show", buf, 2u);
      }

      if (v25)
      {
        *(v40 + 68) = (*(*v25 + 64))(v25);
        if (*v199)
        {
          *(v40 + 72) = (*(*v25 + 72))(v25);
        }
      }

      v105 = 1;
      goto LABEL_165;
    }

    if (v165)
    {
      *buf = 0;
      v144 = "#I alert is already being shown, we skip the new alert.";
      goto LABEL_243;
    }

LABEL_244:
    v105 = 0;
    goto LABEL_165;
  }

  v154 = *v90;
  if (os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v248.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v154, OS_LOG_TYPE_DEFAULT, "#I Baseband refreshing - do not show ", &v248, 2u);
  }

  v107 = v203;
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v105 = 0;
LABEL_166:
  if ((v107 & 1) == 0)
  {
    sub_100004A34(v106);
  }

  xpc_release(xdict);
  if (SHIBYTE(v250.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v250.__r_.__value_.__l.__data_);
  }

  if ((v204 & 1) == 0)
  {
    sub_100004A34(v195);
  }

  *buf = object;
  sub_1000087B4(buf);
  if (v105)
  {
    v108 = v215;
    if (v215)
    {
      v211 = 1;
    }

    else
    {
      v211 = StewieFeatureState::isStewieActive((v40 + 186));
    }

    v109 = *v90;
    if (os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
    {
      v208 = v108;
      v110 = v90;
      v111 = v40;
      v112 = v102;
      if (v217 >= 0)
      {
        v113 = &__p;
      }

      else
      {
        v113 = __p;
      }

      v114 = v219;
      v115 = CSIErrorString();
      v116 = asStringBool(v218);
      v117 = asStringBool(v202[0]);
      v118 = asStringBool(v194[0]);
      v119 = asStringBool(v211);
      *buf = 136316674;
      *&buf[4] = v113;
      *&buf[12] = 2048;
      *&buf[14] = v114;
      *&buf[22] = 2080;
      *&buf[24] = v115;
      *&buf[32] = 2080;
      *&buf[34] = v116;
      *&buf[42] = 2080;
      *&buf[44] = v117;
      *&buf[52] = 2080;
      *&buf[54] = v118;
      *&buf[62] = 2080;
      *&buf[64] = v119;
      _os_log_impl(&_mh_execute_header, v109, OS_LOG_TYPE_DEFAULT, "#I Entering DataActivationFailureEvent Display Message process with settings: reason=%s; err_code=%ld; err.str=%s; forMMS=%s; usingWiFi=%s; cellularDataOn=%s; satelliteOn=%s", buf, 0x48u);
      v102 = v112;
      v40 = v111;
      v90 = v110;
      v108 = v208;
    }

    if (v102)
    {
      v120 = *v90;
      if (os_log_type_enabled(*v90, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_DEFAULT, "#I show callback alert.", buf, 2u);
      }

      v121 = Registry::getServiceMap(*(v40 + 48));
      v122 = v183;
      v123 = v121;
      if (v183 < 0)
      {
        v124 = (v183 & 0x7FFFFFFFFFFFFFFFLL);
        v125 = 5381;
        do
        {
          v122 = v125;
          v126 = *v124++;
          v125 = (33 * v125) ^ v126;
        }

        while (v126);
      }

      std::mutex::lock(v121);
      *buf = v122;
      v127 = sub_100009510(&v123[1].__m_.__sig, buf);
      if (v127)
      {
        v129 = v127[3];
        v128 = v127[4];
        if (v128)
        {
          atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v123);
          atomic_fetch_add_explicit(&v128->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v128);
          if (!v129)
          {
LABEL_228:
            sub_100004A34(v128);
            goto LABEL_258;
          }

LABEL_224:
          *buf = 0;
          (*(*v129 + 96))(buf, v129);
          if (*buf)
          {
            (*(*buf + 16))();
            if (*buf)
            {
              _Block_release(*buf);
            }
          }

          if (!v128)
          {
            goto LABEL_258;
          }

          goto LABEL_228;
        }

        std::mutex::unlock(v123);
        if (v129)
        {
          goto LABEL_224;
        }
      }

      else
      {
        std::mutex::unlock(v123);
      }

LABEL_258:
      [+[CellDataActivationFailureAlertState sharedInstance](CellDataActivationFailureAlertState unlockMain];
      goto LABEL_259;
    }

    if (SHIBYTE(v217) < 0)
    {
      v140 = 0;
      if (!v217)
      {
        v130 = v90;
        goto LABEL_248;
      }

      v130 = v90;
      v131 = __p;
      if (!__p)
      {
LABEL_248:
        object[0] = 0;
        *buf = v209;
        *&buf[8] = "kNotificationAdditional";
        sub_100048A24(buf, object);
        v146 = [CellDataActivationFailureAlertItem alloc];
        v147 = v219;
        v214 = object[0];
        if (object[0])
        {
          xpc_retain(object[0]);
        }

        else
        {
          v214 = xpc_null_create();
        }

        v148 = !v218;
        v149 = *(v40 + 56);
        v212 = *(v40 + 48);
        v213 = v149;
        if (v149)
        {
          atomic_fetch_add_explicit(&v149->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        BYTE1(v166) = v184;
        LOBYTE(v166) = v108;
        v150 = [(CellDataActivationFailureAlertItem *)v146 initWithErrorCode:v147 reason:v140 additionalData:&v214 suggestWiFi:v148 cellularDataOn:*v194 wifiOn:*v202 isSatelliteSystem:v166 isStewieActive:&v212 registry:v130 logger:?];
        if (v213)
        {
          sub_100004A34(v213);
        }

        xpc_release(v214);
        v214 = 0;
        if ((v211 & 1) == 0)
        {
          [(CellDataActivationFailureAlertItem *)v150 button_config:*(v40 + 120)];
        }

        [(CellDataActivationFailureAlertItem *)v150 show];
        xpc_release(object[0]);
        goto LABEL_258;
      }
    }

    else
    {
      v130 = v90;
      if (!HIBYTE(v217))
      {
        v140 = 0;
        goto LABEL_248;
      }

      v131 = &__p;
    }

    v140 = [[NSString alloc] initWithCString:v131 encoding:4];
    goto LABEL_248;
  }

LABEL_259:
  if (SHIBYTE(v217) < 0)
  {
    operator delete(__p);
  }
}

void sub_1013302BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, int a39, char a40, __int16 a41, char a42, std::__shared_weak_count *a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, xpc_object_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, xpc_object_t object, uint64_t a59, xpc_object_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    sub_100004A34(a65);
  }

  if ((a40 & 1) == 0)
  {
    sub_100004A34(a43);
  }

  xpc_release(object);
  if (*(v65 - 105) < 0)
  {
    operator delete(*(v65 - 128));
  }

  if ((a42 & 1) == 0)
  {
    sub_100004A34(a34);
  }

  aBlock = &a60;
  sub_1000087B4(&aBlock);
  if (a56 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013305A4(uint64_t a1, int a2, uint64_t *a3, _BYTE *a4)
{
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
LABEL_9:
    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
    if (!v16)
    {
      goto LABEL_29;
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
    goto LABEL_29;
  }

LABEL_10:
  v18 = (*(*v16 + 48))(v16, a3);
  *a4 = 0;
  v19 = *(a3 + 23);
  if (v19 < 0)
  {
    if (a3[1] != 21)
    {
      goto LABEL_22;
    }

    v20 = *a3;
  }

  else
  {
    v20 = a3;
    if (v19 != 21)
    {
      goto LABEL_22;
    }
  }

  v21 = *v20;
  v22 = v20[1];
  v23 = *(v20 + 13);
  if (v21 == 0x6C7070612E6D6F63 && v22 == 0x7265666572502E65 && v23 == 0x7365636E65726566)
  {
    goto LABEL_23;
  }

LABEL_22:
  if (*(a1 + 180) == 2 || ((*(*v16 + 112))(v16) & 1) == 0 && (((*(*v16 + 16))(v16) & 1) != 0 || ((*(*v16 + 128))(v16) & 1) != 0))
  {
LABEL_23:
    v16 = 1;
    goto LABEL_24;
  }

  if (((**v16)(v16, v18) & 1) == 0 && (!a2 || ((*(*v16 + 8))(v16, v18) & 1) == 0))
  {
    v30 = Registry::getServiceMap(*(a1 + 48));
    v31 = v30;
    if (v32 < 0)
    {
      v33 = (v32 & 0x7FFFFFFFFFFFFFFFLL);
      v34 = 5381;
      do
      {
        v32 = v34;
        v35 = *v33++;
        v34 = (33 * v34) ^ v35;
      }

      while (v35);
    }

    std::mutex::lock(v30);
    *buf = v32;
    v36 = sub_100009510(&v31[1].__m_.__sig, buf);
    if (v36)
    {
      v38 = v36[3];
      v37 = v36[4];
      if (v37)
      {
        v42 = v36[4];
        v39 = (v37 + 8);
        atomic_fetch_add_explicit((v37 + 8), 1uLL, memory_order_relaxed);
        std::mutex::unlock(v31);
        atomic_fetch_add_explicit(v39, 1uLL, memory_order_relaxed);
        v40 = v42;
        sub_100004A34(v42);
        v41 = 0;
LABEL_48:
        if (v38)
        {
          *a4 = (*(*v38 + 704))(v38, a3);
        }

        if ((v41 & 1) == 0)
        {
          sub_100004A34(v40);
        }

        goto LABEL_23;
      }
    }

    else
    {
      v38 = 0;
    }

    std::mutex::unlock(v31);
    v40 = 0;
    v41 = 1;
    goto LABEL_48;
  }

  v16 = 0;
LABEL_24:
  v26 = *(a1 + 40);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a3 + 23) >= 0)
    {
      v27 = a3;
    }

    else
    {
      v27 = *a3;
    }

    v28 = *a4;
    *buf = 136316162;
    *&buf[4] = v27;
    v44 = 1024;
    v45 = v18;
    v46 = 1024;
    v47 = v28;
    v48 = 1024;
    v49 = a2;
    v50 = 1024;
    v51 = v16;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I app %s, data %d, frontAppCanCauseNetworkError %d, mms %d: silent %d", buf, 0x24u);
  }

LABEL_29:
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  return v16;
}

void sub_1013309EC(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  if ((v4 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101330A30(uint64_t a1, _DWORD *a2, _BYTE *a3, uint64_t a4, _DWORD *a5, _BYTE *a6)
{
  v32 = 0;
  ctu::cf::assign();
  v29 = 0u;
  v30 = 0;
  *&v31 = a1;
  *(&v31 + 1) = &v29;
  sub_100006354(&v31, object);
  *a3 = xpc::dyn_cast_or_default(object, 0, v12);
  xpc_release(object[0]);
  object[0] = 0;
  object[1] = 0;
  v28 = 0;
  v31 = 0uLL;
  v32 = 0;
  ctu::cf::assign();
  *object = v31;
  v28 = v32;
  v13 = v31;
  if (v32 >= 0)
  {
    v13 = object;
  }

  *&v31 = a1;
  *(&v31 + 1) = v13;
  sub_100006354(&v31, v25);
  *a5 = xpc::dyn_cast_or_default(v25, 0xFFFFFFFFLL, v14);
  xpc_release(v25[0]);
  v25[0] = 0;
  v25[1] = 0;
  v26 = 0;
  v31 = 0uLL;
  v32 = 0;
  ctu::cf::assign();
  *v25 = v31;
  v26 = v32;
  v15 = v31;
  if (v32 >= 0)
  {
    v15 = v25;
  }

  *&v31 = a1;
  *(&v31 + 1) = v15;
  sub_100006354(&v31, __p);
  *a2 = xpc::dyn_cast_or_default(__p, 0, v16);
  xpc_release(__p[0]);
  __p[0] = 0;
  __p[1] = 0;
  v24 = 0;
  v31 = 0uLL;
  v32 = 0;
  ctu::cf::assign();
  *__p = v31;
  v24 = v32;
  v17 = v31;
  if (v32 >= 0)
  {
    v17 = __p;
  }

  v19[0] = a1;
  v19[1] = v17;
  sub_100006354(v19, &v20);
  v31 = 0uLL;
  v32 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31);
  }

  if (*(a4 + 23) < 0)
  {
    operator delete(*a4);
  }

  *a4 = *v21;
  *(a4 + 16) = v22;
  HIBYTE(v22) = 0;
  LOBYTE(v21[0]) = 0;
  xpc_release(v20);
  *&v31 = a1;
  *(&v31 + 1) = kDataActivateFailureSatelliteSystemKey;
  sub_100006354(&v31, v21);
  *a6 = xpc::dyn_cast_or_default(v21, 0, v18);
  xpc_release(v21[0]);
  if (SHIBYTE(v24) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v26) < 0)
  {
    operator delete(v25[0]);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(object[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29);
  }
}

void sub_101330D00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t object, uint64_t a13, uint64_t a14, xpc_object_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, xpc_object_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  xpc_release(object);
  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a27 < 0)
  {
    operator delete(a22);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 89) < 0)
  {
    operator delete(*(v34 - 112));
  }

  _Unwind_Resume(a1);
}

void sub_101330E00()
{
  if (*(v0 - 65) < 0)
  {
    JUMPOUT(0x101330DE0);
  }

  JUMPOUT(0x101330DE8);
}

void sub_101330E34()
{
  if (*(v0 - 65) < 0)
  {
    JUMPOUT(0x101330DF4);
  }

  JUMPOUT(0x101330DF8);
}

void sub_101330E48(uint64_t a1)
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

void sub_101330F28(uint64_t a1)
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

id sub_101331010(Registry *a1, uint64_t a2, void *a3, void *a4)
{
  if (a4)
  {
    v4 = a4;
  }

  else
  {
    v4 = a3;
  }

  if (!a1)
  {
    return [v4 copy];
  }

  ServiceMap = Registry::getServiceMap(a1);
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
  *&v27 = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &v27);
  if (!v13)
  {
    std::mutex::unlock(v8);
    return [v4 copy];
  }

  v15 = v13[3];
  v14 = v13[4];
  if (!v14)
  {
    std::mutex::unlock(v8);
    if (v15)
    {
      goto LABEL_14;
    }

    return [v4 copy];
  }

  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v8);
  atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v14);
  if (!v15)
  {
    v16 = 0;
LABEL_30:
    sub_100004A34(v14);
    goto LABEL_31;
  }

LABEL_14:
  v26 = 0;
  (*(*v15 + 40))(&v26, v15, a2, a3, v4);
  if (v26)
  {
    v27 = 0uLL;
    v28 = 0;
    ctu::cf::assign();
    v25 = v28;
    *__p = v27;
    v17 = HIBYTE(v28);
    v18 = SHIBYTE(v28);
    if ((v28 & 0x8000000000000000) != 0)
    {
      v17 = *(&v27 + 1);
    }

    if (v17 && ((v19 = [NSString alloc], v18 >= 0) ? (v20 = __p) : (v20 = __p[0]), (v21 = [v19 initWithCString:v20 encoding:{4, __p[0], __p[1], v25}]) != 0))
    {
      v22 = v21;
      if ([v22 isEqualToString:a3])
      {
        v16 = 0;
      }

      else
      {
        v16 = v22;
      }
    }

    else
    {
      v16 = 0;
    }

    if (SHIBYTE(v25) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v16 = 0;
  }

  sub_100005978(&v26);
  if (v14)
  {
    goto LABEL_30;
  }

LABEL_31:
  if (!v16)
  {
    return [v4 copy];
  }

  return v16;
}

void sub_101331204(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  sub_100005978(&a16);
  if (v22)
  {
    sub_100004A34(v22);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1013312CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2FAE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_1013312FC(uint64_t a1, xpc_object_t *a2)
{
  sub_10011D868(*(a1 + 8), a2);
  v3 = *(a1 + 16);
  v4 = *(v3 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    sub_100F012A8((v3 + 96), &object);
    v5 = xpc_copy_description(object);
    __p[0] = 0;
    __p[1] = 0;
    v11 = 0;
    sub_10000501C(__p, v5);
    free(v5);
    if (v11 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315138;
    v13 = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I vinyl info: %s", buf, 0xCu);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }

    xpc_release(object);
  }

  *(v3 + 120) = 0;
  v7 = *(v3 + 96);
  v8 = *(v3 + 104);
  if (v7 != v8)
  {
    *(v3 + 120) = *(v7 + 88 * ((v8 - v7 - 88) / 0x58uLL) + 12) == 3;
  }
}

void sub_101331454(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_101331488(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101331544(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2FB60;
  a2[1] = v2;
  return result;
}

uint64_t sub_101331578(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101331638(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F2FBE0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101331668(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  v4 = v3 + 1;
  v5 = v3[1];
  v20 = *v3;
  v21 = v5;
  v22 = v3[2];
  if (v22)
  {
    *(v5 + 16) = &v21;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v20 = &v21;
  }

  sub_10035A2E4(v3, a2);
  v6 = *(a1 + 16);
  v7 = *(v6 + 128);
  if (*(v6 + 144) == v22)
  {
    if (v7 == (v6 + 136))
    {
      goto LABEL_34;
    }

    v8 = v20;
    while (*(v7 + 8) == *(v8 + 8) && operator==())
    {
      v9 = v7[1];
      v10 = v7;
      if (v9)
      {
        do
        {
          v7 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v7 = v10[2];
          v11 = *v7 == v10;
          v10 = v7;
        }

        while (!v11);
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
          v11 = *v13 == v8;
          v8 = v13;
        }

        while (!v11);
      }

      v8 = v13;
      if (v7 == (v6 + 136))
      {
        goto LABEL_34;
      }
    }

    v7 = *(v6 + 128);
  }

  if (v7 != (v6 + 136))
  {
    do
    {
      if ((*(v7 + 68) & 1) == 0)
      {
        v14 = *(v7 + 16);
        v15 = v14 == 2;
        if (*(v6 + 184) != v15)
        {
          v16 = *(v6 + 40);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = asStringBool(v14 == 2);
            *buf = 136315138;
            v24 = v17;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I internet active: %s", buf, 0xCu);
          }

          *(v6 + 184) = v15;
        }
      }

      v18 = v7[1];
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
          v19 = v7[2];
          v11 = *v19 == v7;
          v7 = v19;
        }

        while (!v11);
      }

      v7 = v19;
    }

    while (v19 != (v6 + 136));
  }

LABEL_34:
  sub_100077CD4(&v20, v21);
}

uint64_t sub_1013318C4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101331980(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2FC60;
  a2[1] = v2;
  return result;
}

uint64_t sub_1013319B4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101331A00(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if (*(*v1 + 64) == 1)
  {
    v3 = objc_autoreleasePoolPush();
    sub_10132E664(v2, (v1 + 8));
    objc_autoreleasePoolPop(v3);
  }

  sub_101331A8C(&v6);
  return sub_1000049E0(&v5);
}

void sub_101331A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101331A8C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101331A8C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 8));
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

void sub_101331AE4(std::mutex *this@<X0>, void *a2@<X8>)
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
  v11 = v4;
  v8 = sub_100009510(&this[1].__m_.__sig, &v11);
  if (v8)
  {
    v10 = v8[3];
    v9 = v8[4];
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  std::mutex::unlock(this);
  *a2 = v10;
  a2[1] = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v9);
  }
}

void sub_101331BA8(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I bootstrapping", buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&v17, *(v1 + 48));
  ctu::RestModule::connect();
  if (v18)
  {
    sub_100004A34(v18);
  }

  sub_10000501C(__p, "/cc/props/vinyl_info");
  *buf = off_101F2FAE0;
  v22 = (v1 + 96);
  v23 = v1;
  v24 = buf;
  ctu::RestModule::observeProperty();
  v3 = sub_1000062D4(buf);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (capabilities::ct::supportsGemini(v3))
  {
    sub_10000501C(__p, "/cc/props/internet_connection_availability_any_sim");
    *buf = off_101F2FB60;
    v22 = (v1 + 152);
    v24 = buf;
    ctu::RestModule::observeProperty();
    sub_1000062D4(buf);
    if (v20 < 0)
    {
      operator delete(__p[0]);
    }
  }

  sub_10000501C(__p, "/cc/props/internal_internet_connection_state");
  *buf = off_101F2FBE0;
  v22 = (v1 + 128);
  v23 = v1;
  v24 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100118D38(v1 + 180);
  sub_1005018A0(v1 + 176);
  sub_10000501C(__p, "/cc/props/stewie_feature_state");
  *buf = off_101F2FC60;
  v22 = (v1 + 186);
  v24 = buf;
  ctu::RestModule::observeProperty();
  sub_1000062D4(buf);
  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  ServiceMap = Registry::getServiceMap(*(v1 + 48));
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
        goto LABEL_27;
      }

      goto LABEL_23;
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
    goto LABEL_27;
  }

LABEL_23:
  v14 = *(v1 + 16);
  if (!v14 || (v15 = *(v1 + 8), (v16 = std::__shared_weak_count::lock(v14)) == 0))
  {
    sub_100013CC4();
  }

  *buf = v15;
  v22 = v16;
  (*(*v12 + 104))(v12, 45, buf);
  if (v22)
  {
    sub_100004A34(v22);
  }

LABEL_27:
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  *(v1 + 192) = std::chrono::steady_clock::now().__d_.__rep_ - 86400000000000;
  *(v1 + 64) = 1;
  operator delete();
}

void sub_101331F64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19)
{
  sub_1000062D4(&a18);
  if (a17 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_101332004(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I shutting down", buf, 2u);
  }

  if (*(v1 + 64) == 1)
  {
    sub_10000501C(buf, "/cc/props/vinyl_info");
    ctu::RestModule::unobserveProperty();
    if (v5 < 0)
    {
      operator delete(*buf);
    }

    ctu::RestModule::disconnect((v1 + 80));
    *(v1 + 64) = 0;
  }

  operator delete();
}

void sub_1013320DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  operator delete();
}

void sub_101332120(uint64_t a1)
{
  if (*(a1 + 64) == 1)
  {
    v1 = *(a1 + 16);
    if (!v1 || (v2 = std::__shared_weak_count::lock(v1)) == 0)
    {
      sub_100013CC4();
    }

    v3 = v2;
    p_shared_weak_owners = &v2->__shared_weak_owners_;
    atomic_fetch_add_explicit(&v2->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v2);
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    sub_10079D8A0();
    atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
    sub_10079D8A0();
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
    std::__shared_weak_count::__release_weak(v3);
  }
}

void sub_101332274(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a22)
  {
    std::__shared_weak_count::__release_weak(a22);
  }

  std::__shared_weak_count::__release_weak(v22);
  _Unwind_Resume(a1);
}

void sub_1013322A8(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = *(v3 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1013323B8(uint64_t result, uint64_t a2)
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

void sub_1013323D4(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1013323E4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[5])
      {
        v5 = *(v3 + 16);
        if (v5)
        {
          if (std::__shared_weak_count::lock(v5))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1013324F4(uint64_t result, _DWORD *a2)
{
  v2 = *(result + 32);
  if (*(v2 + 712) == 1)
  {
    v3 = *(v2 + 688);
    a2[13] |= 5u;
    a2[4] = 3;
    a2[5] = v3;
  }

  v4 = *(v2 + 584);
  v7 = *v4;
  v5 = v4 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    v8 = a2[13];
    do
    {
      if (*(v6 + 8) == 1)
      {
        v9 = *(v6 + 9);
        if (v9 == 2)
        {
          v10 = 8;
          v11 = a2 + 6;
          goto LABEL_10;
        }

        if (v9 == 1)
        {
          v10 = 16;
          v11 = a2 + 8;
LABEL_10:
          v12 = *(v6 + 5);
          v8 |= v10;
          a2[13] = v8;
          *v11 = v12;
        }
      }

      v13 = v6[1];
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
          v14 = v6[2];
          v15 = *v14 == v6;
          v6 = v14;
        }

        while (!v15);
      }

      v6 = v14;
    }

    while (v14 != v5);
  }

  return result;
}

void sub_1013325C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (*(v3 + 888) == 1)
  {
    *(a2 + 64) |= 1u;
    *(a2 + 16) = 0;
    formPLMN((v3 + 808), (v3 + 840));
    *(a2 + 64) |= 2u;
    v4 = *(a2 + 8);
    if (v4 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v4, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v5 = *(a2 + 64);
    *(a2 + 56) = *(v3 + 874);
    v6 = *(v3 + 876);
    *(a2 + 64) = v5 | 0xC;
    *(a2 + 20) = v6;
  }

  if (*(v3 + 992) == 1)
  {
    *(a2 + 64) |= 1u;
    *(a2 + 16) = 2;
    formPLMN((v3 + 904), (v3 + 936));
    *(a2 + 64) |= 2u;
    v7 = *(a2 + 8);
    if (v7 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v7, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v8 = *(v3 + 970);
    v9 = *(a2 + 64);
    *(a2 + 64) = v9 | 8;
    *(a2 + 56) = v8;
    v10 = *(v3 + 972);
    *(a2 + 64) = v9 | 0xC;
    *(a2 + 20) = v10;
  }

  if (*(v3 + 1128) == 1)
  {
    *(a2 + 64) |= 1u;
    *(a2 + 16) = 7;
    formPLMN((v3 + 1008), (v3 + 1040));
    *(a2 + 64) |= 2u;
    v11 = *(a2 + 8);
    if (v11 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v11, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v12 = *(v3 + 1076);
    v13 = *(a2 + 64);
    *(a2 + 64) = v13 | 8;
    *(a2 + 56) = v12;
    v14 = *(v3 + 1080);
    *(a2 + 64) = v13 | 0xC;
    *(a2 + 20) = v14;
  }

  if (*(v3 + 1232) == 1)
  {
    *(a2 + 64) |= 1u;
    *(a2 + 16) = 9;
    formPLMN((v3 + 1144), (v3 + 1176));
    *(a2 + 64) |= 2u;
    v15 = *(a2 + 8);
    if (v15 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v15, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v16 = *(v3 + 1210);
    v17 = *(a2 + 64);
    *(a2 + 64) = v17 | 8;
    *(a2 + 56) = v16;
    v18 = *(v3 + 1212);
    *(a2 + 64) = v17 | 0xC;
    *(a2 + 20) = v18;
  }

  if (*(v3 + 1384) == 1)
  {
    *(a2 + 64) |= 1u;
    *(a2 + 16) = 10;
    formPLMN((v3 + 1248), (v3 + 1280));
    *(a2 + 64) |= 2u;
    v19 = *(a2 + 8);
    if (v19 == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    std::string::operator=(v19, &__str);
    if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__str.__r_.__value_.__l.__data_);
    }

    v20 = *(a2 + 64);
    *(a2 + 56) = *(v3 + 1316);
    v21 = *(v3 + 1320);
    *(a2 + 64) = v20 | 0xC;
    *(a2 + 20) = v21;
  }

  v22 = *(v3 + 584);
  v25 = *v22;
  v23 = v22 + 1;
  v24 = v25;
  if (v25 != v23)
  {
    v26 = *(a2 + 64);
    do
    {
      if (*(v24 + 8))
      {
        v27 = *(v24 + 9);
        switch(v27)
        {
          case 0:
            v28 = 16;
            v29 = (a2 + 24);
            goto LABEL_40;
          case 3:
            v28 = 64;
            v29 = (a2 + 40);
            goto LABEL_40;
          case 4:
            v28 = 32;
            v29 = (a2 + 32);
LABEL_40:
            v30 = *(v24 + 5);
            v26 |= v28;
            *(a2 + 64) = v26;
            *v29 = v30;
            break;
        }
      }

      v31 = v24[1];
      if (v31)
      {
        do
        {
          v32 = v31;
          v31 = *v31;
        }

        while (v31);
      }

      else
      {
        do
        {
          v32 = v24[2];
          v33 = *v32 == v24;
          v24 = v32;
        }

        while (!v33);
      }

      v24 = v32;
    }

    while (v32 != v23);
  }
}

void sub_1013329F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101332A20(uint64_t a1, unsigned __int16 **a2, unsigned __int8 **a3, unsigned __int16 **a4, unsigned __int16 **a5, unsigned __int16 **a6, unsigned __int16 **a7, unsigned __int16 **a8)
{
  v13 = *(a1 + 1400);
  if (!v13)
  {
    operator new();
  }

  result = (*(*v13 + 32))(v13);
  v15 = a2[1];
  for (i = *a2; i != v15; i += 4)
  {
    v17 = *(a1 + 1400);
    v18 = v17[13];
    v19 = v17[12];
    if (v19 >= v18)
    {
      if (v18 == v17[14])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v17 + 10), v18 + 1);
        v18 = v17[13];
      }

      v17[13] = v18 + 1;
      operator new();
    }

    v20 = *(v17 + 5);
    v17[12] = v19 + 1;
    v21 = *(v20 + 8 * v19);
    v22 = v21[7];
    v23 = i[1];
    v21[2] = *i;
    v21[3] = v23;
    v24 = i[2];
    v25 = i[3];
    v21[7] = v22 | 0xF;
    v21[4] = v24;
    v21[5] = v25;
  }

  v93 = a5;
  v26 = a6;
  v27 = a3[1];
  for (j = *a3; j != v27; j += 20)
  {
    v29 = *(a1 + 1400);
    v30 = v29[7];
    v31 = v29[6];
    if (v31 >= v30)
    {
      if (v30 == v29[8])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v29 + 4), v30 + 1);
        v30 = v29[7];
      }

      v29[7] = v30 + 1;
      operator new();
    }

    v32 = *(v29 + 2);
    v29[6] = v31 + 1;
    v33 = *(v32 + 8 * v31);
    v34 = *(v33 + 28);
    v35 = *(j + 1);
    *(v33 + 8) = *j;
    *(v33 + 12) = v35;
    *(v33 + 28) = v34 | 7;
    result = *(v33 + 16);
    if (result == &wireless_diagnostics::google::protobuf::internal::kEmptyString)
    {
      operator new();
    }

    if (*(result + 23) < 0)
    {
      *(result + 8) = 16;
      result = *result;
    }

    else
    {
      *(result + 23) = 16;
    }

    *result = *(j + 4);
    *(result + 16) = 0;
  }

  v36 = a4[1];
  for (k = *a4; k != v36; k += 5)
  {
    v38 = *(a1 + 1400);
    v39 = v38[25];
    v40 = v38[24];
    if (v40 >= v39)
    {
      if (v39 == v38[26])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v38 + 22), v39 + 1);
        v39 = v38[25];
      }

      v38[25] = v39 + 1;
      sub_101333158();
    }

    v41 = *(v38 + 11);
    v38[24] = v40 + 1;
    result = *(v41 + 8 * v40);
    v42 = *(result + 32);
    v43 = k[1];
    *(result + 8) = *k;
    *(result + 12) = v43;
    v44 = k[3];
    *(result + 16) = *(k + 4);
    *(result + 20) = v44;
    v45 = k[4];
    *(result + 32) = v42 | 0x1F;
    *(result + 24) = v45;
  }

  v46 = v93[1];
  for (m = *v93; m != v46; m += 5)
  {
    v48 = *(a1 + 1400);
    v49 = v48[19];
    v50 = v48[18];
    if (v50 >= v49)
    {
      if (v49 == v48[20])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v48 + 16), v49 + 1);
        v49 = v48[19];
      }

      v48[19] = v49 + 1;
      sub_101333158();
    }

    v51 = *(v48 + 8);
    v48[18] = v50 + 1;
    result = *(v51 + 8 * v50);
    v52 = *(result + 32);
    v53 = m[1];
    *(result + 8) = *m;
    *(result + 12) = v53;
    v54 = m[3];
    *(result + 16) = *(m + 4);
    *(result + 20) = v54;
    v55 = m[4];
    *(result + 32) = v52 | 0x1F;
    *(result + 24) = v55;
  }

  v56 = v26[1];
  for (n = *v26; n != v56; n += 8)
  {
    v58 = *(a1 + 1400);
    v59 = v58[31];
    v60 = v58[30];
    if (v60 >= v59)
    {
      if (v59 == v58[32])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v58 + 28), v59 + 1);
        v59 = v58[31];
      }

      v58[31] = v59 + 1;
      operator new();
    }

    v61 = *(v58 + 14);
    v58[30] = v60 + 1;
    v62 = *(v61 + 8 * v60);
    v63 = v62[9];
    v64 = n[1];
    v62[2] = *n;
    v62[3] = v64;
    v65 = *(n + 4);
    v62[9] = v63 | 7;
    v66 = *(n + 2);
    v62[4] = v65;
    v62[5] = v66;
    v67 = *(n + 12);
    v62[9] = v63 | 0x1F;
    v62[6] = v67;
    if (*(n + 14) == 1)
    {
      v62[6] = *(n + 13);
    }
  }

  v68 = a8[1];
  for (ii = *a8; ii != v68; ii += 10)
  {
    v70 = *(a1 + 1400);
    v71 = v70[43];
    v72 = v70[42];
    if (v72 >= v71)
    {
      if (v71 == v70[44])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v70 + 40), v71 + 1);
        v71 = v70[43];
      }

      v70[43] = v71 + 1;
      operator new();
    }

    v73 = *(v70 + 20);
    v70[42] = v72 + 1;
    v74 = *(v73 + 8 * v72);
    v75 = v74[10];
    v76 = ii[1];
    v74[2] = *ii;
    v74[3] = v76;
    v77 = ii[2];
    v74[10] = v75 | 7;
    v78 = *(ii + 2);
    v74[4] = v77;
    v74[5] = v78;
    v79 = ii[6];
    v74[10] = v75 | 0x3F;
    v80 = *(ii + 14);
    v74[6] = v79;
    v74[7] = v80;
    v81 = *(ii + 4);
    v74[10] = v75 | 0x7F;
    v74[8] = v81;
  }

  v82 = a7[1];
  for (jj = *a7; jj != v82; jj += 5)
  {
    v84 = *(a1 + 1400);
    v85 = v84[37];
    v86 = v84[36];
    if (v86 >= v85)
    {
      if (v85 == v84[38])
      {
        wireless_diagnostics::google::protobuf::internal::RepeatedPtrFieldBase::Reserve((v84 + 34), v85 + 1);
        v85 = v84[37];
      }

      v84[37] = v85 + 1;
      sub_101333158();
    }

    v87 = *(v84 + 17);
    v84[36] = v86 + 1;
    result = *(v87 + 8 * v86);
    v88 = *(result + 32);
    v89 = jj[1];
    *(result + 8) = *jj;
    *(result + 12) = v89;
    v90 = jj[3];
    *(result + 16) = *(jj + 4);
    *(result + 20) = v90;
    v91 = jj[4];
    *(result + 32) = v88 | 0x1F;
    *(result + 24) = v91;
  }

  return result;
}

void sub_1013331BC(wis::MetricFactory *a1)
{
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v4 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x80018u);
  if (v4)
  {
    v2 = 0;
    v3 = 0;
    sub_10001C610(&v2);
    if (v2)
    {
      operator new();
    }

    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  sub_10001C0A0(&v4);
  operator delete();
}

void sub_101333340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10001C0A0((v17 - 40));
  operator delete();
}

void sub_1013333E8(wis::MetricFactory *a1)
{
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v4 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, 0x80017u);
  if (v4)
  {
    v2 = 0;
    v3 = 0;
    sub_10001C610(&v2);
    if (v2)
    {
      operator new();
    }

    if (v3)
    {
      sub_100004A34(v3);
    }
  }

  sub_10001C0A0(&v4);
  operator delete();
}

void sub_10133356C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_10001C0A0((v17 - 40));
  operator delete();
}

void sub_101333614(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1013336CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  if (v10)
  {
    operator delete();
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1013336F8(uint64_t a1, uint64_t a2, const void **a3, const void **a4)
{
  v8 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "cb.cache.util");
  ctu::OsLogLogger::OsLogLogger(&v19, &v17);
  ctu::OsLogLogger::OsLogLogger(v8, &v19);
  ctu::OsLogLogger::~OsLogLogger(&v19);
  ctu::OsLogContext::~OsLogContext(&v17);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F2FD80;
  v9 = *a2;
  *(a1 + 32) = *a2;
  v10 = *(a2 + 8);
  *(a1 + 40) = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    v9 = *a2;
  }

  Registry::getFileSystemInterface((a1 + 48), v9);
  sub_10005C7A4((a1 + 64), a3);
  sub_10005C7A4((a1 + 72), a4);
  *(a1 + 80) = 0;
  v11 = (a1 + 80);
  cf = CFStringCreateMutableCopy(kCFAllocatorDefault, 0, *(a1 + 72));
  CFStringAppend(cf, @":");
  CFStringAppend(cf, *(a1 + 64));
  v14 = cf;
  if (cf)
  {
    CFRetain(cf);
    v19 = cf;
    CFRetain(cf);
  }

  else
  {
    v19 = 0;
  }

  v18 = 0;
  v17.var0 = 0;
  sub_100060DE8(&v17, &v19);
  if (v17.var0)
  {
    sub_100222570(&v18, &v17.var0);
  }

  sub_100005978(&v17.var0);
  v12 = v18;
  v15 = v18;
  v18 = 0;
  sub_100005978(&v18);
  sub_100305E28(&v19);
  if (v11 != &v15)
  {
    v17.var0 = *v11;
    *v11 = v12;
    v15 = 0;
    sub_100005978(&v17.var0);
  }

  sub_100005978(&v15);
  sub_100305E28(&v14);
  sub_100305E28(&cf);
  return a1;
}

void sub_101333900(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v9 = va_arg(va1, const void *);
  v11 = va_arg(va1, void);
  va_copy(va2, va1);
  v12 = va_arg(va2, const void *);
  v14 = va_arg(va2, void);
  v15 = va_arg(va2, void);
  va_copy(va3, va2);
  v16 = va_arg(va3, const void *);
  sub_100005978(va2);
  sub_100305E28(va3);
  sub_100305E28(va);
  sub_100305E28(va1);
  sub_100005978(v4);
  sub_100005978((v2 + 72));
  sub_100005978((v2 + 64));
  v6 = *(v2 + 56);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(v2 + 40);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(v2 + 24);
  if (v8)
  {
    std::__shared_weak_count::__release_weak(v8);
  }

  ctu::OsLogLogger::~OsLogLogger(v3);
  CarrierBundleCacheInterface::~CarrierBundleCacheInterface(v2);
  _Unwind_Resume(a1);
}

void sub_1013339B8(uint64_t a1)
{
  *a1 = off_101F2FD80;
  sub_100005978((a1 + 80));
  sub_100005978((a1 + 72));
  sub_100005978((a1 + 64));
  v2 = *(a1 + 56);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 24);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  CarrierBundleCacheInterface::~CarrierBundleCacheInterface(a1);
}

void sub_101333A4C(uint64_t a1)
{
  sub_1013339B8(a1);

  operator delete();
}

void sub_101333A84(std::string *a1)
{
  v2 = sub_100357A48();
  sub_10000501C(&v11, v2);
  v3 = strlen(kUserCBDir);
  v4 = std::string::append(&v11, kUserCBDir, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v12.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v12.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v13 = 0uLL;
  v14 = 0;
  ctu::cf::assign();
  v10 = v14;
  *__p = v13;
  if (v14 >= 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    v7 = HIBYTE(v10);
  }

  else
  {
    v7 = __p[1];
  }

  v8 = std::string::append(&v12, v6, v7);
  *a1 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }
}

void sub_101333B8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_101333BE8(std::string *a1)
{
  sub_101333A84(&v10);
  v12 = 0uLL;
  v13 = 0;
  ctu::cf::assign();
  v9 = v13;
  *__p = v12;
  if (v13 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if ((v9 & 0x8000000000000000) == 0)
  {
    v3 = HIBYTE(v9);
  }

  else
  {
    v3 = __p[1];
  }

  v4 = std::string::append(&v10, v2, v3);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v11.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v11.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = strlen(kPlistExtension);
  v7 = std::string::append(&v11, kPlistExtension, v6);
  *a1 = *v7;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }
}

void sub_101333CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_101333D44(std::string *a1)
{
  WirelessUserDirectory = _GetWirelessUserDirectory();
  sub_10000501C(&v4, WirelessUserDirectory);
  v3 = std::string::append(&v4, "/Library/", 9uLL);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v4.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v4.__r_.__value_.__l.__data_);
  }
}

void sub_101333DB8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101333DD4(std::string *a1)
{
  v5 = 0uLL;
  v6 = 0;
  ctu::cf::assign();
  memset(&__p, 0, sizeof(__p));
  v2 = strlen(kPlistExtension);
  v3 = std::string::append(&__p, kPlistExtension, v2);
  *a1 = *v3;
  v3->__r_.__value_.__l.__size_ = 0;
  v3->__r_.__value_.__r.__words[2] = 0;
  v3->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_101333E70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101333EA0(uint64_t a1)
{
  sub_101333BE8(&__p);
  v2 = (*(*a1 + 88))(a1, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v2;
}

void sub_101333F14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101333F30(const void **a1, uint64_t a2)
{
  sub_101333BE8(&__p);
  sub_1009F7DEC((a2 + 8), (a2 + 32), &__p, a1);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_101333F88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101333FA4(void *a1, CFDictionaryRef theDict)
{
  *a1 = 0;
  result = CFDictionaryContainsKey(theDict, @"StoredBundleIdAndIccids");
  if (result)
  {
    Value = CFDictionaryGetValue(theDict, @"StoredBundleIdAndIccids");
    v6 = 0;
    sub_1001FA5E0(&v6, &Value);
    *a1 = v6;
    v6 = 0;
    return sub_100010250(&v6);
  }

  return result;
}

uint64_t sub_101334034(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  sub_101333D44(&v50);
  sub_101333DD4(&v49);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v5 = &v49;
  }

  else
  {
    v5 = v49.__r_.__value_.__r.__words[0];
  }

  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  v7 = std::string::append(&v50, v5, size);
  v8 = *&v7->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v9 = (*(*v4 + 184))(v4, &__p, a2, 0);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50.__r_.__value_.__l.__data_);
    if (v9)
    {
LABEL_13:
      memset(&v50, 0, sizeof(v50));
      memset(&__p, 0, sizeof(__p));
      ctu::cf::assign();
      v49 = __p;
      v10 = strlen(kPlistExtension);
      v11 = std::string::append(&v49, kPlistExtension, v10);
      v12 = *&v11->__r_.__value_.__l.__data_;
      v50.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v50.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      v47 = 0;
      v48 = 0;
      Registry::getMobileHelper(&v47, *(a1 + 32));
      v13 = v47;
      if (v47)
      {
        sub_101333D44(&__p);
        v14 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
        v15 = __p.__r_.__value_.__r.__words[0];
        sub_101333A84(&v49);
        if (v14 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = v15;
        }

        if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = &v49;
        }

        else
        {
          v17 = v49.__r_.__value_.__r.__words[0];
        }

        if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v50;
        }

        else
        {
          v18 = v50.__r_.__value_.__r.__words[0];
        }

        v19 = (*(*v13 + 48))(v13, p_p, v17, v18);
        if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v49.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v20 = *(a1 + 8);
        if (v19)
        {
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            sub_101333D44(&v49);
            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v21 = &v50;
            }

            else
            {
              v21 = v50.__r_.__value_.__r.__words[0];
            }

            if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v22 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v22 = v50.__r_.__value_.__l.__size_;
            }

            v23 = std::string::append(&v49, v21, v22);
            v24 = *&v23->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            v25 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
            v26 = __p.__r_.__value_.__r.__words[0];
            sub_101333A84(&v46);
            v27 = &__p;
            if (v25 < 0)
            {
              v27 = v26;
            }

            if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v28 = &v46;
            }

            else
            {
              v28 = v46.__r_.__value_.__r.__words[0];
            }

            *buf = 136315394;
            v53 = v27;
            v54 = 2082;
            v55 = v28;
            _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Moving %s to %{public}s Succeeded", buf, 0x16u);
            if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v46.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v49.__r_.__value_.__l.__data_);
            }
          }

          v29 = 1;
          goto LABEL_56;
        }

        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_101333D44(&v49);
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v38 = &v50;
          }

          else
          {
            v38 = v50.__r_.__value_.__r.__words[0];
          }

          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v39 = HIBYTE(v50.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v39 = v50.__r_.__value_.__l.__size_;
          }

          v40 = std::string::append(&v49, v38, v39);
          v41 = *&v40->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v41;
          v40->__r_.__value_.__l.__size_ = 0;
          v40->__r_.__value_.__r.__words[2] = 0;
          v40->__r_.__value_.__r.__words[0] = 0;
          v42 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v43 = __p.__r_.__value_.__r.__words[0];
          sub_101333A84(&v46);
          v44 = &__p;
          if (v42 < 0)
          {
            v44 = v43;
          }

          if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v45 = &v46;
          }

          else
          {
            v45 = v46.__r_.__value_.__r.__words[0];
          }

          *buf = 136315394;
          v53 = v44;
          v54 = 2082;
          v55 = v45;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Mobile helper failed to move %s to %{public}s", buf, 0x16u);
          if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v46.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v49.__r_.__value_.__l.__data_);
          }
        }
      }

      else
      {
        v31 = *(a1 + 8);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(__p.__r_.__value_.__l.__data_) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "#N Could not get MobileHelper", &__p, 2u);
        }
      }

      v29 = 0;
LABEL_56:
      if (v48)
      {
        sub_100004A34(v48);
      }

      v32 = *(a1 + 48);
      sub_101333D44(&v49);
      sub_101333DD4(&v46);
      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v33 = &v46;
      }

      else
      {
        v33 = v46.__r_.__value_.__r.__words[0];
      }

      if ((v46.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(v46.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = v46.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v49, v33, v34);
      v36 = *&v35->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v36;
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      (*(*v32 + 112))(v32, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v46.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v46.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v49.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      return v29;
    }
  }

  else if (v9)
  {
    goto LABEL_13;
  }

  v30 = *(a1 + 8);
  v29 = 0;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#N Failed to write to plist", &__p, 2u);
    return 0;
  }

  return v29;
}

void sub_1013345DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_101334710(uint64_t a1, int a2)
{
  if (!sub_101333EA0(*(a1 + 48)))
  {
    return 0;
  }

  theDict = 0;
  sub_101333F30(&theDict, a1);
  if (theDict && CFDictionaryContainsKey(theDict, @"StoredBundleIdAndIccids"))
  {
    theArray = 0;
    sub_101333FA4(&theArray, theDict);
    v4 = theArray;
    if (theArray)
    {
      if (a2 == 1)
      {
        Count = CFArrayGetCount(theArray);
        sub_10005C7A4(&value, (a1 + 80));
        v17.location = 0;
        v17.length = Count;
        v6 = CFArrayContainsValue(v4, v17, value) != 0;
      }

      else
      {
        value = 0;
        sub_10005C7A4(&value, (a1 + 72));
        v7 = 0;
        do
        {
          v8 = CFArrayGetCount(theArray);
          v6 = v7 < v8;
          if (v7 >= v8)
          {
            break;
          }

          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
          v10 = ValueAtIndex;
          if (ValueAtIndex)
          {
            v11 = CFGetTypeID(ValueAtIndex);
            v12 = v11 == CFStringGetTypeID() ? v10 : 0;
          }

          else
          {
            v12 = 0;
          }

          ++v7;
        }

        while (!CFStringHasPrefix(v12, value));
      }

      sub_100005978(&value);
    }

    else
    {
      v6 = 0;
    }

    sub_100010250(&theArray);
  }

  else
  {
    v6 = 0;
  }

  sub_10001021C(&theDict);
  return v6;
}

void sub_101334870(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_100005978(va);
  sub_100010250(va1);
  sub_10001021C(va2);
  _Unwind_Resume(a1);
}

const void **sub_1013348B8(uint64_t a1)
{
  result = sub_101334710(a1, 0);
  if (result)
  {
    theDict = 0;
    sub_101333F30(&theDict, a1);
    theArray = 0;
    sub_101333FA4(&theArray, theDict);
    Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
    Count = CFArrayGetCount(theArray);
    prefix = 0;
    sub_10005C7A4(&prefix, (a1 + 72));
    if (Count >= 1)
    {
      for (i = 0; i != Count; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        v6 = ValueAtIndex;
        if (ValueAtIndex)
        {
          v7 = CFGetTypeID(ValueAtIndex);
          if (v7 != CFStringGetTypeID())
          {
            v6 = 0;
          }
        }

        if (!CFStringHasPrefix(v6, prefix))
        {
          CFArrayAppendValue(Mutable, v6);
        }
      }
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    v11 = MutableCopy;
    if (CFArrayGetCount(Mutable))
    {
      CFDictionarySetValue(MutableCopy, @"StoredBundleIdAndIccids", Mutable);
    }

    else
    {
      CFDictionaryRemoveValue(MutableCopy, @"StoredBundleIdAndIccids");
    }

    if ((sub_101334034(a1, v11) & 1) == 0)
    {
      v9 = *(a1 + 8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Failed to write the dictionary to cache plist ", v10, 2u);
      }
    }

    sub_1000296E0(&v11);
    sub_100005978(&prefix);
    sub_1000279DC(&Mutable);
    sub_100010250(&theArray);
    return sub_10001021C(&theDict);
  }

  return result;
}

void sub_101334A7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v6 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  sub_100005978(va);
  sub_1000279DC(va1);
  sub_100010250(va2);
  sub_10001021C(va3);
  _Unwind_Resume(a1);
}

const void **sub_101334AD4(uint64_t a1)
{
  v13 = 0;
  Mutable = CFArrayCreateMutable(kCFAllocatorDefault, 0, &kCFTypeArrayCallBacks);
  if (sub_101333EA0(*(a1 + 48)))
  {
    theDict = 0;
    sub_101333F30(&theDict, a1);
    if (!theDict)
    {
      sub_10001021C(&theDict);
      goto LABEL_13;
    }

    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, theDict);
    v3 = v13;
    v13 = MutableCopy;
    theArray[0] = v3;
    sub_1000296E0(theArray);
    theArray[0] = 0;
    sub_101333FA4(theArray, theDict);
    if (theArray[0])
    {
      Count = CFArrayGetCount(theArray[0]);
      v15.location = 0;
      v15.length = Count;
      CFArrayAppendArray(Mutable, theArray[0], v15);
      if (Count >= 5)
      {
        v5 = Count + 1;
        do
        {
          CFArrayRemoveValueAtIndex(Mutable, 0);
          --v5;
        }

        while (v5 > 5);
      }
    }

    sub_100010250(theArray);
    sub_10001021C(&theDict);
  }

  else
  {
    v6 = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v7 = v13;
    v13 = v6;
    theArray[0] = v7;
    sub_1000296E0(theArray);
  }

  v8 = Mutable;
  sub_10005C7A4(theArray, (a1 + 80));
  CFArrayAppendValue(v8, theArray[0]);
  sub_100005978(theArray);
  CFDictionarySetValue(v13, @"StoredBundleIdAndIccids", Mutable);
  if ((sub_101334034(a1, v13) & 1) == 0)
  {
    v9 = *(a1 + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(theArray[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#N Failed to write the dictionary to cache plist ", theArray, 2u);
    }
  }

LABEL_13:
  sub_1000279DC(&Mutable);
  return sub_1000296E0(&v13);
}

void sub_101334C98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v5 = va_arg(va2, const void *);
  sub_10001021C(va);
  sub_1000279DC(va1);
  sub_1000296E0(va2);
  _Unwind_Resume(a1);
}

uint64_t sub_101334CFC(uint64_t a1, const UInt8 *a2)
{
  if ((*(**(a1 + 48) + 88))(*(a1 + 48)))
  {
    theDict = 0;
    sub_1009F7DEC((a1 + 8), (a1 + 32), a2, &theDict);
    if (theDict && CFDictionaryContainsKey(theDict, @"SaveICCIDToCache"))
    {
      Value = CFDictionaryGetValue(theDict, @"SaveICCIDToCache");
      v5 = Value;
      v10 = 0;
      if (!Value)
      {
LABEL_9:
        sub_10001021C(&theDict);
        return v5 & 1;
      }

      v6 = CFGetTypeID(Value);
      if (v6 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(&v10, v5, v7);
        LOBYTE(v5) = v10;
        goto LABEL_9;
      }
    }

    LOBYTE(v5) = 0;
    goto LABEL_9;
  }

  LOBYTE(v5) = 0;
  return v5 & 1;
}

void sub_101334E78(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101334EB4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101334EEC(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_101334F1C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void getPrivacyProxyFeatureEnabled(void *a1, uint64_t a2)
{
  if ((atomic_load_explicit(&qword_101FCA8F0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v5 = a2;
    v6 = __cxa_guard_acquire(&qword_101FCA8F0);
    a2 = v5;
    v7 = v6;
    a1 = v4;
    if (v7)
    {
      ctu::OsLogLogger::OsLogLogger(&qword_101FCA8E8, kCtLoggingSystemName, "npp");
      __cxa_guard_release(&qword_101FCA8F0);
      a2 = v5;
      a1 = v4;
    }
  }

  if (*(a2 + 24))
  {
    v2 = *a1;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3321888768;
    v9[2] = sub_101335114;
    v9[3] = &unk_101F2FEA0;
    sub_1000224C8(v10, a2);
    [PrivacyProxyClient getUserTier:v2 completionHandler:v9];
    sub_10000FF50(v10);
  }

  else
  {
    v3 = qword_101FCA8E8;
    if (os_log_type_enabled(qword_101FCA8E8, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "No callback provided to get privacy proxy feature enabled", v8, 2u);
    }
  }
}

void sub_101335114(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = qword_101FCA8E8;
    if (os_log_type_enabled(qword_101FCA8E8, OS_LOG_TYPE_ERROR))
    {
      v8 = 138412290;
      v9 = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Getting privacy proxy configuration returned %@", &v8, 0xCu);
    }

    v7 = 0;
  }

  else
  {
    v7 = a2 == 2;
  }

  sub_10000FFD0(a1 + 32, v7);
}

void notifyPrivacyProxyOfChangeByUser(uint64_t a1, uint64_t *a2)
{
  if ((atomic_load_explicit(&qword_101FCA900, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA900))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCA8F8, kCtLoggingSystemName, "npp");
    __cxa_guard_release(&qword_101FCA900);
  }

  v4 = [NSString alloc];
  if (*(a2 + 23) < 0)
  {
    a2 = *a2;
  }

  v5 = [v4 initWithUTF8String:a2];
  [PrivacyProxyClient reportCellularNetworkStatus:"reportCellularNetworkStatus:networkName:queue:completionHandler:" networkName:a1 queue:? completionHandler:?];
}

void sub_101335310(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = qword_101FCA8F8;
    if (os_log_type_enabled(qword_101FCA8F8, OS_LOG_TYPE_ERROR))
    {
      v4 = 138412290;
      v5 = v2;
      _os_log_error_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Reporting privacy proxy returned %@", &v4, 0xCu);
    }
  }
}

void sub_1013353C4(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_100FDD6A4();
}

void sub_101335434(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133544C(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_1013E6E68();
}

void sub_1013354BC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    dispatch_release(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013354D4(ServerUpdaterFactoryInterface *this)
{
  *this = off_101F2FF00;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServerUpdaterFactoryInterface::~ServerUpdaterFactoryInterface(this);
}

void sub_101335530(ServerUpdaterFactoryInterface *this)
{
  *this = off_101F2FF00;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServerUpdaterFactoryInterface::~ServerUpdaterFactoryInterface(this);

  operator delete();
}

void sub_101335670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, dispatch_object_t object)
{
  ctu::OsLogContext::~OsLogContext(&a10);
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(a1);
}

void sub_101335780(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_101335818(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101335850(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_101335894(os_log_t *a1, char *__s, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!__s)
  {
    __TUAssertTrigger();
  }

  strlen(__s);
  Hkdf = CCKDFParametersCreateHkdf();
  if (Hkdf)
  {
    v10 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      LODWORD(__p) = 67109120;
      HIDWORD(__p) = Hkdf;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "derive2x256bitKeys, CCKDFParametersCreateHkdf failed, %d", &__p, 8u);
    }

    return 0;
  }

  else
  {
    __p = 0;
    v20 = 0;
    v21 = 0;
    sub_1000CFAD0(&__p, 64);
    v12 = CCHKDFExpand();
    v11 = v12 == 0;
    if (v12)
    {
      v13 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        *&buf[4] = v12;
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "derive2x256bitKeys, CCHKDFExpand secret derivation failed, %d", buf, 8u);
      }
    }

    else
    {
      v18 = 0;
      memset(buf, 0, sizeof(buf));
      sub_100A23D78(buf, __p, __p + 32, 32);
      v14 = *a4;
      if (*a4)
      {
        *(a4 + 8) = v14;
        operator delete(v14);
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }

      *a4 = *buf;
      *(a4 + 16) = v18;
      v18 = 0;
      memset(buf, 0, sizeof(buf));
      sub_100A23D78(buf, __p + 32, v20, v20 - (__p + 32));
      v15 = *a5;
      if (*a5)
      {
        *(a5 + 8) = v15;
        operator delete(v15);
        *a5 = 0;
        *(a5 + 8) = 0;
        *(a5 + 16) = 0;
      }

      *a5 = *buf;
      *(a5 + 16) = v18;
    }

    CCKDFParametersDestroy();
    if (__p)
    {
      v20 = __p;
      operator delete(__p);
    }
  }

  return v11;
}

void sub_101335AC8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101335AF4(os_log_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, size_t a5@<X4>, _OWORD *a6@<X8>)
{
  *a6 = 0u;
  a6[1] = 0u;
  __p = 0uLL;
  v8 = 0;
  if (sub_101335BA0(a1, 0, a2, a3, a4, a5, &__p))
  {
    sub_1001E9734(a6, &__p);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_101335B68(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v11 + 24) == 1)
  {
    v13 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v13;
      operator delete(v13);
    }
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101335BA0(os_log_t *a1, CCOperation a2, uint64_t a3, uint64_t a4, const void *a5, size_t a6, char **a7)
{
  md = 0;
  v37 = 0;
  v38 = 0;
  sub_1000CFAD0(&md, 32);
  if (CC_SHA256(*a4, *(a4 + 8) - *a4, md))
  {
    v34 = 0;
    v35 = 0;
    iv = 0;
    sub_100A23D78(&iv, md, (md + 16), 16);
    v14 = *a3;
    v15 = *(a3 + 8) - *a3;
    cryptorRef = 0;
    v16 = CCCryptorCreateWithMode(a2, 4u, 0, 0, iv, v14, v15, 0, 0, 0, 2u, &cryptorRef);
    if (v16)
    {
      v17 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        LODWORD(dataOutMoved) = 67109120;
        HIDWORD(dataOutMoved) = v16;
        _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "msgProcessing, CCCryptorCreateWithMode failed with error %d", &dataOutMoved, 8u);
      }

      v18 = 0;
      goto LABEL_20;
    }

    OutputLength = CCCryptorGetOutputLength(cryptorRef, a6, 1);
    v21 = *a7;
    v22 = a7[1];
    v23 = v22 - *a7;
    if (OutputLength <= v23)
    {
      if (OutputLength < v23)
      {
        v22 = &v21[OutputLength];
        a7[1] = &v21[OutputLength];
      }
    }

    else
    {
      sub_10018D3CC(a7, OutputLength - v23);
      v21 = *a7;
      v22 = a7[1];
    }

    dataOutMoved = 0;
    v24 = CCCryptorUpdate(cryptorRef, a5, a6, v21, v22 - v21, &dataOutMoved);
    if (v24)
    {
      v25 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v40 = v24;
        v26 = "msgProcessing, CCCryptorUpdate failed with error %d";
LABEL_31:
        _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v26, buf, 8u);
      }
    }

    else
    {
      v27 = dataOutMoved;
      v28 = CCCryptorFinal(cryptorRef, &(*a7)[dataOutMoved], a7[1] - &(*a7)[dataOutMoved], &dataOutMoved);
      if (!v28)
      {
        v30 = dataOutMoved + v27;
        v31 = a7[1] - *a7;
        if (dataOutMoved + v27 <= v31)
        {
          if (v30 < v31)
          {
            a7[1] = &(*a7)[v30];
          }
        }

        else
        {
          sub_10018D3CC(a7, dataOutMoved + v27 - v31);
        }

        v18 = 1;
        goto LABEL_19;
      }

      v25 = *a1;
      if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v40 = v28;
        v26 = "msgProcessing, CCCryptorFinal failed with error %d";
        goto LABEL_31;
      }
    }

    v18 = 0;
LABEL_19:
    CCCryptorRelease(cryptorRef);
LABEL_20:
    if (iv)
    {
      v34 = iv;
      operator delete(iv);
    }

    goto LABEL_22;
  }

  v19 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
  {
    LOWORD(iv) = 0;
    _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "msgProcessing, CC_SHA256 failed", &iv, 2u);
  }

  v18 = 0;
LABEL_22:
  if (md)
  {
    v37 = md;
    operator delete(md);
  }

  return v18;
}

void sub_101335EB4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101335EFC(os_log_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, size_t a5@<X4>, _OWORD *a6@<X8>)
{
  *a6 = 0u;
  a6[1] = 0u;
  __p = 0uLL;
  v8 = 0;
  if (sub_101335BA0(a1, 1u, a2, a3, a4, a5, &__p))
  {
    sub_1001E9734(a6, &__p);
  }

  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }
}

void sub_101335F70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v11 + 24) == 1)
  {
    v13 = *v11;
    if (*v11)
    {
      *(v11 + 8) = v13;
      operator delete(v13);
    }
  }

  _Unwind_Resume(exception_object);
}

void sub_101335FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0uLL;
  v12 = 0;
  ctu::cf::assign();
  v9 = 0uLL;
  v10 = 0;
  sub_10133606C(a1, &v9, a3, a4, a5);
}

void sub_10133603C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  if (a9)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133606C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5 + a2[1] - *a2 + 12;
  v7 = 0;
  v8 = v5;
  v6 = 0;
  *buf = 0;
  sub_1013369D4();
}

void sub_101336238(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  _Unwind_Resume(exception_object);
}

double sub_10133625C@<D0>(os_log_t *a1@<X0>, void *a2@<X1>, void *a3@<X4>, _OWORD *a4@<X8>)
{
  v5 = a3[1] - *a3;
  if (v5 > 0xB)
  {
    if (a2[1] != *a2)
    {
      *buf = 0uLL;
      sub_101336A78();
    }

    v8 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#E empty src to encrypt - skipping", buf, 2u);
    }
  }

  else
  {
    v6 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v5;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "IV size must be at least 12 bytes, given %zu", buf, 0xCu);
    }
  }

  result = 0.0;
  *a4 = 0u;
  a4[1] = 0u;
  return result;
}

void sub_1013364B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, std::__shared_weak_count *a20)
{
  if (a15)
  {
    sub_100004A34(a15);
  }

  if (a20)
  {
    sub_100004A34(a20);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336654(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336674(os_log_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  Hkdf = CCKDFParametersCreateHkdf();
  if (!Hkdf)
  {
    *buf = 0;
    v6 = 0;
    sub_1013369D4();
  }

  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = Hkdf;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E failed to CCKDFParametersCreateHkdf: %d", buf, 8u);
  }
}

void sub_101336804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336824(os_log_t *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  Hkdf = CCKDFParametersCreateHkdf();
  if (!Hkdf)
  {
    *buf = 0;
    v6 = 0;
    sub_1013369D4();
  }

  v4 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = Hkdf;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#E failed to CCKDFParametersCreateHkdf: %d", buf, 8u);
  }
}

void sub_1013369B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336A60(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101336B04(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101336C10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 8))(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101336C84(uint64_t a1, dispatch_object_t *a2)
{
  if (*a2)
  {
    dispatch_retain(*a2);
  }

  sub_101336B1C();
}

void sub_101336D38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 8))(a11);
  }

  if (v11)
  {
    dispatch_release(v11);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101336D84(capabilities::ct *a1, const void **a2, uint64_t a3, const void **a4, uint64_t a5)
{
  if (capabilities::ct::getBasebandBootStrategy(a1) != 2)
  {
    sub_100010024(&v12, a2);
    sub_10005C7A4(&v11, a4);
    sub_101336B1C();
  }

  sub_100010024(&v14, a2);
  sub_10005C7A4(&v13, a4);
  (*(*a1 + 56))(a1, &v14, a3, 0, &v13, a5);
  sub_100005978(&v13);
  return sub_10001021C(&v14);
}

void sub_101336EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101336F44()
{
  v0 = 0;
  v1 = 0;
  sub_101336B1C();
}

void sub_101336FF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101337048(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, const void **a5)
{
  sub_100010024(&v7, a2);
  sub_10005C7A4(&v6, a5);
  sub_101336B1C();
}

void sub_10133712C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  sub_100005978(va);
  sub_10001021C(va1);
  _Unwind_Resume(a1);
}

void sub_101337180(uint64_t a1, const void **a2, const void **a3)
{
  sub_10005C7A4(&v5, a2);
  sub_10005C7A4(&v4, a3);
  sub_101333614(&v6);
}

void sub_1013371FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  _Unwind_Resume(a1);
}

void sub_1013372E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15)
{
  if (a15)
  {
    (*(*a15 + 8))(a15);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013373AC(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 8);
  ServiceMap = Registry::getServiceMap(*(a1 + 8));
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
  *&v24 = v7;
  v11 = sub_100009510(&v5[1].__m_.__sig, &v24);
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
  if (GestaltUtilityInterface::isIPad(v13))
  {
    isIPhone = 1;
    goto LABEL_21;
  }

  v16 = Registry::getServiceMap(*v3);
  v17 = v16;
  if (v6 < 0)
  {
    v18 = (v6 & 0x7FFFFFFFFFFFFFFFLL);
    v19 = 5381;
    do
    {
      v6 = v19;
      v20 = *v18++;
      v19 = (33 * v19) ^ v20;
    }

    while (v20);
  }

  std::mutex::lock(v16);
  *&v24 = v6;
  v21 = sub_100009510(&v17[1].__m_.__sig, &v24);
  if (v21)
  {
    v23 = v21[3];
    v22 = v21[4];
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v17);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
      goto LABEL_19;
    }
  }

  else
  {
    v23 = 0;
  }

  std::mutex::unlock(v17);
  v22 = 0;
LABEL_19:
  isIPhone = GestaltUtilityInterface::isIPhone(v23);
  if (v22)
  {
    sub_100004A34(v22);
  }

LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  if (isIPhone)
  {
    sub_1010C0F24(&v24);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_101337578(_Unwind_Exception *exception_object)
{
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if ((v3 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1013375EC(CarrierBundleFactoryInterface *this)
{
  *this = off_101F2FFF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CarrierBundleFactoryInterface::~CarrierBundleFactoryInterface(this);
}

void sub_101337648(CarrierBundleFactoryInterface *this)
{
  *this = off_101F2FFF8;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CarrierBundleFactoryInterface::~CarrierBundleFactoryInterface(this);

  operator delete();
}

const void **sub_1013376B8(uint64_t a1)
{
  *v7 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v7 = Mutable;
    v8 = 0;
    sub_1000296E0(&v8);
    Mutable = *v7;
  }

  sub_1001768B8(Mutable, @"MessageName", @"kCarrierBundleIDSMessageInstallIPCC");
  sub_100010180(&v5, v7);
  sub_1013377BC(&v6, v5);
  v3 = (a1 + 56);
  if ((a1 + 56) != &v6)
  {
    v8 = *v3;
    *v3 = v6;
    v6 = 0;
    sub_10002D760(&v8);
  }

  sub_10002D760(&v6);
  sub_10001021C(&v5);
  return sub_1000296E0(v7);
}

void sub_101337794(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_1000296E0(&a11);
  _Unwind_Resume(a1);
}

void sub_1013377BC(void *a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v4 = [NSKeyedArchiver archivedDataWithRootObject:v3 requiringSecureCoding:1 error:&v12];
  v5 = v12;
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      *a1 = v4;
      CFRetain(v4);
      goto LABEL_8;
    }

    sub_101337FBC();
    v7 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v14 = v6;
      v8 = "Error archiving message dictionary : %{public}@";
      v9 = v7;
      v10 = 12;
LABEL_10:
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    }
  }

  else
  {
    sub_101337FBC();
    v11 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      v8 = "nil data";
      v9 = v11;
      v10 = 2;
      goto LABEL_10;
    }
  }

  *a1 = 0;
LABEL_8:
}

void sub_101337918(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_101337958(uint64_t a1)
{
  *v7 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v7 = Mutable;
    v8 = 0;
    sub_1000296E0(&v8);
    Mutable = *v7;
  }

  sub_1001768B8(Mutable, @"MessageName", @"kCarrierBundleIDSMessageRemoteBundleInfo");
  sub_100010180(&v5, v7);
  sub_1013377BC(&v6, v5);
  v3 = (a1 + 56);
  if ((a1 + 56) != &v6)
  {
    v8 = *v3;
    *v3 = v6;
    v6 = 0;
    sub_10002D760(&v8);
  }

  sub_10002D760(&v6);
  sub_10001021C(&v5);
  return sub_1000296E0(v7);
}

void sub_101337A34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_1000296E0(&a11);
  _Unwind_Resume(a1);
}

const void **sub_101337A5C(uint64_t a1, uint64_t *a2)
{
  *v9 = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    *v9 = Mutable;
    v10 = 0;
    sub_1000296E0(&v10);
    Mutable = *v9;
  }

  sub_1001768B8(Mutable, @"MessageName", @"kCarrierBundleIDSMessageRemoteBundleInfo");
  sub_1002972A4(*v9, @"MessagePayload", *a2);
  sub_100010180(&v7, v9);
  sub_1013377BC(&v8, v7);
  v5 = (a1 + 56);
  if ((a1 + 56) != &v8)
  {
    v10 = *v5;
    *v5 = v8;
    v8 = 0;
    sub_10002D760(&v10);
  }

  sub_10002D760(&v8);
  sub_10001021C(&v7);
  return sub_1000296E0(v9);
}

void sub_101337B5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11)
{
  sub_10001021C(&a9);
  sub_1000296E0(&a11);
  _Unwind_Resume(a1);
}

const void **sub_101337B88@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  theDict = 0;
  sub_10002D728(&v11, (a1 + 56));
  sub_101337D24(&theDict, v11);
  sub_10002D760(&v11);
  if (theDict)
  {
    *buf = 0;
    Value = CFDictionaryGetValue(theDict, @"MessagePayload");
    v4 = Value;
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFDictionaryGetTypeID()))
    {
      *buf = v4;
      CFRetain(v4);
      if (v4)
      {
        *a2 = *buf;
        *buf = 0;
LABEL_10:
        sub_10001021C(buf);
        return sub_10001021C(&theDict);
      }
    }

    else
    {
      *buf = 0;
    }

    sub_101337FBC();
    v6 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Could not get the bundle info", v9, 2u);
    }

    *a2 = 0;
    goto LABEL_10;
  }

  sub_101337FBC();
  v7 = qword_101FCA908;
  if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to decode the message", buf, 2u);
  }

  *a2 = 0;
  return sub_10001021C(&theDict);
}

void sub_101337CEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101337D24(void *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v13 = 0;
    v4 = [[NSKeyedUnarchiver alloc] initForReadingFromData:v3 error:&v13];
    v5 = v13;
    if (v5)
    {
      sub_101337FBC();
      v6 = qword_101FCA908;
      if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v15 = v5;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Error creating the UnArchiver : %{public}@", buf, 0xCu);
      }

      *a1 = 0;
    }

    else
    {
      [v4 setRequiresSecureCoding:1];
      v8 = objc_opt_class();
      v9 = [NSSet setWithObjects:v8, objc_opt_class(), 0];
      v10 = [v4 decodeObjectOfClasses:v9 forKey:NSKeyedArchiveRootObjectKey];
      v11 = v10;
      if (v10)
      {
        *a1 = v10;
        CFRetain(v10);
      }

      else
      {
        sub_101337FBC();
        v12 = qword_101FCA908;
        if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "message dictionary is nil", buf, 2u);
        }

        *a1 = 0;
      }
    }
  }

  else
  {
    sub_101337FBC();
    v7 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Message data is NULL", buf, 2u);
    }

    *a1 = 0;
  }
}

void sub_101337FBC()
{
  if ((atomic_load_explicit(&qword_101FCA910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCA910))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCA908, kCtLoggingSystemName, "cb.ids.msg");

    __cxa_guard_release(&qword_101FCA910);
  }
}

uint64_t sub_101338054(uint64_t a1)
{
  theDict = 0;
  sub_10002D728(&v8, (a1 + 56));
  sub_101337D24(&theDict, v8);
  sub_10002D760(&v8);
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"MessageName");
    v2 = Value;
    if (Value)
    {
      v3 = CFGetTypeID(Value);
      if (v3 != CFStringGetTypeID())
      {
        v2 = 0;
      }
    }

    if (CFStringCompare(v2, @"kCarrierBundleIDSMessageInstallIPCC", 1uLL))
    {
      v4 = 2 * (CFStringCompare(v2, @"kCarrierBundleIDSMessageRemoteBundleInfo", 1uLL) == kCFCompareEqualTo);
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    sub_101337FBC();
    v5 = qword_101FCA908;
    if (os_log_type_enabled(qword_101FCA908, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Failed to decode the message", v7, 2u);
    }

    v4 = 0;
  }

  sub_10001021C(&theDict);
  return v4;
}

void sub_101338170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

void sub_101338198(uint64_t a1)
{
  if (!*(a1 + 456))
  {
    __p[0] = 1;
    __p[1] = (a1 + 584);
    if (*(a1 + 639) < 0)
    {
      **(a1 + 616) = 0;
      *(a1 + 624) = 0;
    }

    else
    {
      *(a1 + 616) = 0;
      *(a1 + 639) = 0;
    }

    if (*(a1 + 663) < 0)
    {
      **(a1 + 640) = 0;
      *(a1 + 648) = 0;
    }

    else
    {
      *(a1 + 640) = 0;
      *(a1 + 663) = 0;
    }

    sub_101338788(__p);
    return;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 336));
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
  __p[0] = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, __p);
  if (!v8)
  {
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v8[3];
  v9 = v8[4];
  if (!v9)
  {
LABEL_11:
    std::mutex::unlock(v3);
    v9 = 0;
    v11 = 1;
    goto LABEL_12;
  }

  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v3);
  atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v9);
  v11 = 0;
LABEL_12:
  sub_100004AA0(__p, (a1 + 8));
  v13 = __p[0];
  v12 = __p[1];
  if (__p[1])
  {
    atomic_fetch_add_explicit(__p[1] + 2, 1uLL, memory_order_relaxed);
    sub_100004A34(v12);
  }

  v16[0] = off_101F30098;
  v16[1] = v13;
  v16[2] = v12;
  v16[3] = v16;
  v15 = 14;
  strcpy(__p, "SystemObserver");
  (*(*v10 + 56))(v10, v16, __p);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  sub_1000DC854(v16);
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_1013383B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_1000DC854(&a15);
  if ((v16 & 1) == 0)
  {
    sub_100004A34(v15);
  }

  _Unwind_Resume(a1);
}

void sub_101338408(NSObject **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4.fObj.fObj = &object;
  NotifySubscription::NotifySubscription(v7, "com.apple.carplay.connected", v4);
  v5 = v7[1];
  *a2 = v7[0];
  *(a2 + 8) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  *(a2 + 16) = v8;
  *(a2 + 24) = 1;
  NotifySubscription::~NotifySubscription(v7);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_101338488(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013384A0@<X0>(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  result = sub_1013384F4(a1);
  if (result)
  {
    sub_101338D5C();
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1013384F4(capabilities::ct *a1)
{
  if (capabilities::ct::supportsSubwayDetection(a1))
  {
    return 1;
  }

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
  v13 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v13);
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
      goto LABEL_11;
    }
  }

  else
  {
    v11 = 0;
  }

  std::mutex::unlock(v4);
  v10 = 0;
LABEL_11:
  isWatch = GestaltUtilityInterface::isWatch(v11);
  if (v10)
  {
    sub_100004A34(v10);
  }

  return isWatch;
}

void sub_1013385F0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10133860C(uint64_t a1)
{
  result = sub_1013384F4((a1 + 336));
  if (result)
  {
    result = *(a1 + 912);
    if (result)
    {
      v3 = *(*result + 16);

      return v3();
    }
  }

  return result;
}

uint64_t sub_10133867C(uint64_t a1)
{
  if (!sub_1013384F4((a1 + 336)))
  {
    return 0;
  }

  v2 = *(a1 + 912);
  if (!v2)
  {
    return 0;
  }

  v3 = *(*v2 + 64);

  return v3();
}

id sub_1013386F0(uint64_t a1)
{
  v2 = [CallStateObserver alloc];
  v3 = *(a1 + 24);
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = [(CallStateObserver *)v2 initWithQueue:&object];
  *(a1 + 216) = v4;
  if (object)
  {
    dispatch_release(object);
    v4 = *(a1 + 216);
  }

  return [(CallStateObserver *)v4 registerForCallIsActiveNotification];
}

void sub_101338760(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

id sub_101338778(uint64_t a1)
{
  result = *(a1 + 216);
  if (result)
  {
    return [result getCallIsActiveState];
  }

  return result;
}

uint64_t sub_101338788(uint64_t a1)
{
  if (*a1 == 1)
  {
    v2 = *(a1 + 8);
    v3 = *(v2 + 24);
    if (v3)
    {
      (*(*v3 + 48))(v3, v2 + 32);
    }
  }

  return a1;
}

void *sub_1013387F0(void *a1)
{
  *a1 = off_101F30098;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10133883C(void *a1)
{
  *a1 = off_101F30098;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101338914(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F30098;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10133894C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10133895C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10133899C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = *(a1 + 8);
      if (v8)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        if (*(a3 + 23) < 0)
        {
          sub_100005F2C(v9, *a3, *(a3 + 8));
        }

        else
        {
          *v9 = *a3;
          v10 = *(a3 + 16);
        }

        if (*(a2 + 23) < 0)
        {
          sub_100005F2C(__p, *a2, *(a2 + 8));
        }

        else
        {
          *__p = *a2;
          v12 = *(a2 + 16);
        }

        v13[0] = 0;
        v13[1] = 0;
        sub_100004AA0(v13, (v8 + 8));
        operator new();
      }

      sub_100004A34(v7);
    }
  }
}

void sub_101338B94(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (*(v16 + 39) < 0)
  {
    operator delete(*v17);
  }

  v19 = *(v16 + 8);
  if (v19)
  {
    sub_100004A34(v19);
  }

  sub_10004F058(a1);
}

uint64_t sub_101338C08(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_101338C54(uint64_t *a1)
{
  v1 = *a1;
  v4 = a1;
  v5 = v1;
  v6[0] = 1;
  v2 = *v1;
  v6[1] = *v1 + 584;
  std::string::operator=((v2 + 616), (v1 + 16));
  std::string::operator=((v2 + 640), (v1 + 40));
  sub_101338788(v6);
  sub_101338CE8(&v5);
  return sub_1000049E0(&v4);
}

void sub_101338CC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_101338788(&a11);
  sub_101338CE8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101338CE8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

void *sub_101338DC8(void *a1, dispatch_object_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101EDD960;
  sub_101338E24((a1 + 3), a2);
  return a1;
}

uint64_t sub_101338E24(uint64_t a1, dispatch_object_t *a2)
{
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    *a1 = &off_101EE4EA8;
    *(a1 + 8) = v3;
    dispatch_retain(v3);
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 16) = 0u;
    dispatch_release(v3);
  }

  else
  {
    *a1 = &off_101EE4EA8;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 56) = 0;
  }

  return a1;
}

void sub_101338EC4(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_101338F50(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101338F80(uint64_t a1, void *a2, int a3, void *a4)
{
  v8 = (a1 + 8);
  v9 = "roam.user.?";
  if (a3 == 2)
  {
    v9 = "roam.user.2";
  }

  if (a3 == 1)
  {
    v10 = "roam.user.1";
  }

  else
  {
    v10 = v9;
  }

  ctu::OsLogContext::OsLogContext(&v14, kCtLoggingSystemName, v10);
  ctu::OsLogLogger::OsLogLogger(v15, &v14);
  ctu::OsLogLogger::OsLogLogger(v8, v15);
  ctu::OsLogLogger::~OsLogLogger(v15);
  ctu::OsLogContext::~OsLogContext(&v14);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = off_101F30118;
  *(a1 + 32) = *a2;
  v11 = a2[1];
  *(a1 + 40) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 48) = a3;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = *a4;
  v12 = a4[1];
  *(a1 + 72) = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  Registry::getNotificationSenderFactory(&v14, *(a1 + 32));
  (*(*v14.var0 + 64))(v14.var0);
  if (v14.var1.fRef)
  {
    sub_100004A34(v14.var1.fRef);
  }

  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  return a1;
}

void sub_101339104(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    sub_100004A34(a11);
  }

  v15 = *(v12 + 9);
  if (v15)
  {
    sub_100004A34(v15);
  }

  v16 = *(v12 + 5);
  if (v16)
  {
    sub_100004A34(v16);
  }

  v17 = *(v12 + 3);
  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  ctu::OsLogLogger::~OsLogLogger(v13);
  UserRoamingSettingInterface::~UserRoamingSettingInterface(v12);
  _Unwind_Resume(a1);
}

void sub_101339180(uint64_t a1)
{
  *a1 = off_101F30118;
  if (*(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  v2 = *(a1 + 88);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 24);
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  UserRoamingSettingInterface::~UserRoamingSettingInterface(a1);
}

void sub_10133921C(uint64_t a1)
{
  sub_101339180(a1);

  operator delete();
}

uint64_t sub_101339254(capabilities::ct *a1)
{
  if (capabilities::ct::supportsGemini(a1))
  {

    return sub_10133A1A0(a1);
  }

  else
  {

    return sub_10133A05C(a1);
  }
}

void sub_1013392B0(uint64_t a1)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    PersonalityIdFromSlotId();
    std::string::operator=((a1 + 96), &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v2 = sub_10133A05C(a1);
    if ((v2 & 0x100) != 0)
    {
      memset(&__p, 0, sizeof(__p));
      PersonalityIdFromSlotId();
      v3 = *(a1 + 8);
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        p_p = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        *buf = 136315138;
        *&buf[4] = p_p;
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Start InternationalRoamingEDGE migration for %s", buf, 0xCu);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        v19 = *(a1 + 8);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_fault_impl(&_mh_execute_header, v19, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", buf, 2u);
        }

        goto LABEL_41;
      }

      if ((isReal() & 1) == 0)
      {
        v20 = *(a1 + 8);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "PersonalityId is not real", buf, 2u);
        }

        goto LABEL_41;
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
          if (!v14)
          {
LABEL_19:
            v16 = *(a1 + 8);
            if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_39;
            }

            *buf = 0;
            v17 = "Failed to get Personal Wallet interface";
            goto LABEL_34;
          }

LABEL_29:
          v21 = &kCFBooleanTrue;
          if ((v2 & 1) == 0)
          {
            v21 = &kCFBooleanFalse;
          }

          if (!(*(*v14 + 48))(v14, &__p, @"InternationalRoamingEDGE", *v21, 0, 0, 1, 0))
          {
            if (*(a1 + 53) != (v2 & 0xFF00) >> 8 || *(a1 + 52) != v2)
            {
              *(a1 + 52) = v2;
              sub_10133A408(a1);
            }

            sub_10133A32C(a1);
            goto LABEL_39;
          }

          v16 = *(a1 + 8);
          if (!os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
LABEL_39:
            if ((v15 & 1) == 0)
            {
              sub_100004A34(v13);
            }

LABEL_41:
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            return;
          }

          *buf = 0;
          v17 = "Could not store InternationalRoamingEDGE";
LABEL_34:
          _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, v17, buf, 2u);
          goto LABEL_39;
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
        goto LABEL_19;
      }

      goto LABEL_29;
    }

    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Migration not needed for user's data roaming setting", &__p, 2u);
    }
  }
}

void sub_101339670(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1013396D0(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 53) == 1 && *(a1 + 52) == a2)
  {
    return 0;
  }

  *(a1 + 52) = a2 | 0x100;
  sub_10133A408(a1);
  *(a1 + 56) = a3;
  v7 = *(a1 + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    *buf = 136315394;
    *&buf[4] = CSIBOOLAsString(a2);
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Raw roaming setting has changed to %s due to %s; saving it in preferences", buf, 0x16u);
  }

  if ((capabilities::ct::supportsGemini(v8) & 1) == 0)
  {
    v26 = *(a1 + 64);
    v25 = (a1 + 64);
    v24 = v26;
    if (*(v25 - 4) == 2)
    {
      v27 = @"InternationalRoamingEDGE-2";
    }

    else
    {
      v27 = @"InternationalRoamingEDGE";
    }

    v28 = &kCFBooleanTrue;
    if (!a2)
    {
      v28 = &kCFBooleanFalse;
    }

    (*(*v24 + 16))(v24, v27, *v28, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    (*(**v25 + 48))(*v25, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    goto LABEL_39;
  }

  memset(buf, 0, sizeof(buf));
  PersonalityIdFromSlotId();
  v9 = buf[23];
  if ((buf[23] & 0x80u) != 0)
  {
    v9 = *&buf[8];
  }

  if (!v9)
  {
    v29 = *(a1 + 8);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
    {
      *v35 = 0;
      _os_log_fault_impl(&_mh_execute_header, v29, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", v35, 2u);
    }

    v30 = 0;
    goto LABEL_35;
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
  *v35 = v12;
  v16 = sub_100009510(&v11[1].__m_.__sig, v35);
  if (v16)
  {
    v18 = v16[3];
    v17 = v16[4];
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v11);
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v17);
      v19 = 0;
      if (!v18)
      {
LABEL_16:
        v20 = *(a1 + 8);
        if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_33;
        }

        *v35 = 0;
        v21 = "Failed to get Personal Wallet interface";
        v22 = v20;
        v23 = 2;
        goto LABEL_46;
      }

      goto LABEL_29;
    }
  }

  else
  {
    v18 = 0;
  }

  std::mutex::unlock(v11);
  v17 = 0;
  v19 = 1;
  if (!v18)
  {
    goto LABEL_16;
  }

LABEL_29:
  v31 = &kCFBooleanTrue;
  if (!a2)
  {
    v31 = &kCFBooleanFalse;
  }

  if ((*(*v18 + 48))(v18, buf, @"InternationalRoamingEDGE", *v31, 0, 0, 1, 0))
  {
    v32 = *(a1 + 8);
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_33;
    }

    v34 = buf;
    if ((buf[23] & 0x80u) != 0)
    {
      v34 = *buf;
    }

    *v35 = 136315138;
    *&v35[4] = v34;
    v21 = "Could not store InternationalRoamingEDGE state for %s";
    v22 = v32;
    v23 = 12;
LABEL_46:
    _os_log_error_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, v21, v35, v23);
LABEL_33:
    v30 = 0;
    if (v19)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v30 = 1;
  if ((v19 & 1) == 0)
  {
LABEL_34:
    sub_100004A34(v17);
  }

LABEL_35:
  if ((buf[23] & 0x80000000) == 0)
  {
    if (!v30)
    {
      return 1;
    }

    goto LABEL_39;
  }

  operator delete(*buf);
  if (v30)
  {
LABEL_39:
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.commcenter.InternationalRoamingEDGE.changed", 0, 0, 0);
  }

  return 1;
}

void sub_101339B18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if ((v17 & 1) == 0)
  {
    sub_100004A34(v16);
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101339B60(capabilities::ct *a1)
{
  if (capabilities::ct::supportsGemini(a1))
  {
    PersonalityIdFromSlotId();
    v2 = *(a1 + 1);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", buf, 2u);
    }
  }

  return 0;
}

void sub_101339D84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101339DB0(uint64_t a1, uint64_t a2)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 32));
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
  if (!v12)
  {
LABEL_7:
    v14 = *(a1 + 8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "Failed to get Personal Wallet interface", buf, 2u);
    }

    v15 = 0;
    v16 = 0;
    if (v13)
    {
      return v16 | (v15 << 8);
    }

LABEL_23:
    sub_100004A34(v11);
    return v16 | (v15 << 8);
  }

LABEL_13:
  v21 = 0;
  (*(*v12 + 64))(&cf, v12, a2, @"InternationalRoamingEDGE", 0, 0, 1);
  v23 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  v22 = 0;
  *buf = 0;
  sub_10002FE1C(buf, &v23);
  if (*buf)
  {
    sub_1005DDAA8(&v22, buf);
  }

  sub_100045C8C(buf);
  v17 = v22;
  v21 = v22;
  v22 = 0;
  sub_100045C8C(&v22);
  sub_10000A1EC(&v23);
  sub_10000A1EC(&cf);
  if (v17)
  {
    v16 = CFBooleanGetValue(v17) != 0;
    v15 = 1;
  }

  else
  {
    v18 = *(a1 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Failed to get InternationalRoamingEDGE from Personal Wallet", buf, 2u);
    }

    v16 = 0;
    v15 = 0;
  }

  sub_100045C8C(&v21);
  if ((v13 & 1) == 0)
  {
    goto LABEL_23;
  }

  return v16 | (v15 << 8);
}

void sub_10133A004(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10133A05C(uint64_t a1)
{
  cf = 0;
  if (*(a1 + 48) == 2)
  {
    v1 = @"InternationalRoamingEDGE-2";
  }

  else
  {
    v1 = @"InternationalRoamingEDGE";
  }

  (*(**(a1 + 64) + 40))(&cf, *(a1 + 64), v1, @"com.apple.commcenter", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  v2 = cf;
  if (!cf)
  {
    goto LABEL_12;
  }

  v3 = CFGetTypeID(cf);
  if (v3 != CFBooleanGetTypeID())
  {
    v2 = cf;
    if (cf)
    {
      v5 = CFGetTypeID(cf);
      if (v5 == CFNumberGetTypeID())
      {
        v11 = 0;
        ctu::cf::assign(&v11, v2, v6);
        LODWORD(v2) = v11 != 0;
        goto LABEL_10;
      }

      LODWORD(v2) = 0;
    }

LABEL_12:
    v7 = 0;
    goto LABEL_13;
  }

  v10 = 0;
  ctu::cf::assign(&v10, v2, v4);
  LODWORD(v2) = v10;
LABEL_10:
  v7 = 1;
LABEL_13:
  sub_10000A1EC(&cf);
  return v2 | (v7 << 8);
}

uint64_t sub_10133A1A0(uint64_t a1)
{
  __p = 0;
  v6 = 0;
  v7 = 0;
  PersonalityIdFromSlotId();
  v2 = *(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    *v4 = 0;
    _os_log_fault_impl(&_mh_execute_header, v2, OS_LOG_TYPE_FAULT, "PersonalityId is not valid", v4, 2u);
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_10133A270(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10133A28C(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Data Roaming preference is being reset as Network Settings have been reset", v5, 2u);
  }

  if (*(a1 + 53) == 1)
  {
    *(a1 + 53) = 0;
  }

  if ((capabilities::ct::supportsGemini(v3) & 1) == 0)
  {
    sub_10133A32C(a1);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.commcenter.InternationalRoamingEDGE.changed", 0, 0, 0);
}