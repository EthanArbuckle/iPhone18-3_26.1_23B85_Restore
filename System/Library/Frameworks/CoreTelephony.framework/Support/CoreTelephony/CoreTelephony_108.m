uint64_t sub_10071C9FC(uint64_t a1, void *a2, const void **a3)
{
  v6 = a2[1];
  v7 = *(a1 + 8);
  if (v7 != a3)
  {
    v8 = a2[2];
    v9 = a3;
    do
    {
      *v8 = 0;
      *v8++ = *v9;
      *v9++ = 0;
    }

    while (v9 != v7);
    v10 = a3;
    do
    {
      v10 = sub_100005978(v10) + 1;
    }

    while (v10 != v7);
  }

  v11 = *a1;
  v12 = a2[1];
  a2[2] += *(a1 + 8) - a3;
  *(a1 + 8) = a3;
  v13 = (v12 + v11 - a3);
  if (v11 != a3)
  {
    v14 = v11;
    v15 = (v12 + v11 - a3);
    do
    {
      *v15 = 0;
      *v15++ = *v14;
      *v14++ = 0;
    }

    while (v14 != a3);
    do
    {
      v11 = sub_100005978(v11) + 1;
    }

    while (v11 != a3);
  }

  a2[1] = v13;
  v16 = *a1;
  *a1 = v13;
  *(a1 + 8) = v16;
  a2[1] = v16;
  v17 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v17;
  v18 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return v6;
}

const void **sub_10071CB08(uint64_t a1, const void **a2, const void ***a3, const void **a4)
{
  result = a4;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = sub_10005C7A4(result, v6 + 4);
      v8 = v6[1];
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
          v9 = v6[2];
          v10 = *v9 == v6;
          v6 = v9;
        }

        while (!v10);
      }

      result = v7 + 1;
      v6 = v9;
    }

    while (v9 != a3);
  }

  return result;
}

const void **sub_10071CB80(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  if (a3 != a2)
  {
    v7 = a3;
    do
    {
      v8 = v7;
      v9 = a4;
      --v7;
      --a4;
      if (v8 != v9)
      {
        v10 = *a4;
        *a4 = 0;
        v12 = v10;
        *a4 = *v7;
        *v7 = 0;
        sub_100005978(&v12);
      }
    }

    while (v7 != a2);
  }

  return a3;
}

const void **sub_10071CC0C(uint64_t a1, const void **a2, const void ***a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_100222570(a4, v5 + 4);
      v7 = v5[1];
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
          v8 = v5[2];
          v9 = *v8 == v5;
          v5 = v8;
        }

        while (!v9);
      }

      ++a4;
      v5 = v8;
    }

    while (v8 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_10071CC98(uint64_t a1, CFStringRef *a2)
{
  v4 = 0;
  v2 = *sub_10071CD50(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *sub_10071CD50(uint64_t a1, void *a2, CFStringRef *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v7 = v4;
      v8 = *a3;
      v9 = v7[4];
      if (*a3)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 1;
      }

      if (v10)
      {
        if (v8)
        {
          v11 = 1;
        }

        else
        {
          v11 = v9 == 0;
        }

        if (!v11)
        {
          goto LABEL_22;
        }

LABEL_14:
        if (v9)
        {
          v12 = v8 == 0;
        }

        else
        {
          v12 = 1;
        }

        if (v12)
        {
          if (v9 || !v8)
          {
            goto LABEL_28;
          }
        }

        else if (CFStringCompare(v9, v8, 0) != kCFCompareLessThan)
        {
          goto LABEL_28;
        }

        v5 = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_28;
        }
      }

      else
      {
        if (CFStringCompare(*a3, v9, 0) != kCFCompareLessThan)
        {
          v9 = v7[4];
          v8 = *a3;
          goto LABEL_14;
        }

LABEL_22:
        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_28;
        }
      }
    }
  }

  v7 = (a1 + 8);
LABEL_28:
  *a2 = v7;
  return v5;
}

uint64_t sub_10071CE28(uint64_t a1, CFStringRef *a2)
{
  v4 = 0;
  v2 = *sub_10071CD50(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_10071CF00(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E75E58;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10071CFA4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E75EA8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10071D070(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_10177C5C8(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10071D08C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10071D0C4(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10071D0F4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_10071D25C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (v15)
  {
    sub_100004A34(v15);
    if (!v14)
    {
      goto LABEL_3;
    }
  }

  else if (!v14)
  {
    goto LABEL_3;
  }

  dispatch_release(v14);
LABEL_3:
  operator delete();
}

uint64_t sub_10071D2C0(uint64_t a1, NSObject **a2, void *a3, uint64_t *a4, uint64_t a5)
{
  v9 = *a2;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v10 = a4[1];
  v15 = *a4;
  v16 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v14 = *(a5 + 16);
  }

  sub_10031435C(a1, &object, a3, &v15, "cp.mm.dp", __p);
  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p[0]);
  }

  if (v16)
  {
    sub_100004A34(v16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  *a1 = &off_101E75F70;
  v11 = a4[1];
  *(a1 + 160) = *a4;
  *(a1 + 168) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 16), 1uLL, memory_order_relaxed);
  }

  *(a1 + 176) = 1;
  return a1;
}

void sub_10071D3D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, dispatch_object_t object)
{
  if (a16)
  {
    sub_100004A34(a16);
  }

  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

CellularPlanProvisioningMonitorModeInterface *sub_10071D410(CellularPlanProvisioningMonitorModeInterface *this)
{
  *this = &off_101E75F70;
  v2 = *(this + 21);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return sub_10031452C(this);
}

void sub_10071D470(CellularPlanProvisioningMonitorModeInterface *a1)
{
  sub_10071D410(a1);

  operator delete();
}

void sub_10071D4A8(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    *(a1 + 176) = 0;

    sub_100314A14(a1, 0x100u);
    return;
  }

  v2 = *(a1 + 168);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 160);
      if (v4)
      {
        (*(*v4 + 24))(v4, a1 + 64);
        sub_100314A14(a1, 0x100u);
LABEL_13:
        sub_100004A34(v3);
        return;
      }
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10177C5EC(v5);
  }

  if (v3)
  {
    goto LABEL_13;
  }
}

uint64_t sub_10071D598(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I handling vinyl info update in monitor mode", v4, 2u);
  }

  result = sIsProfileInstalled();
  if (result)
  {
    return (*(*a1 + 40))(a1, 257);
  }

  return result;
}

void sub_10071D6CC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10071D7A0);
  __cxa_rethrow();
}

void sub_10071D70C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10071D760(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10071D7A0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

const char *sub_10071D7CC(int a1)
{
  if ((a1 - 1) > 4)
  {
    return "kInvalid";
  }

  else
  {
    return off_101E76268[a1 - 1];
  }
}

uint64_t sub_10071D7F4(uint64_t a1, int a2, __int128 *a3)
{
  *a1 = off_101E76080;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v6;
  }

  v7 = *(a3 + 24);
  *(a1 + 48) = *(a3 + 5);
  *(a1 + 32) = v7;
  sub_1006A7ED8((a1 + 56), a3 + 3);
  sub_100A972E8(a1 + 104);
  *(a1 + 128) = a2;
  return a1;
}

uint64_t sub_10071D8C4(uint64_t a1, int a2, __int128 *a3, __int128 *a4)
{
  *a1 = off_101E76080;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 8), *a3, *(a3 + 1));
  }

  else
  {
    v8 = *a3;
    *(a1 + 24) = *(a3 + 2);
    *(a1 + 8) = v8;
  }

  v9 = *(a3 + 24);
  *(a1 + 48) = *(a3 + 5);
  *(a1 + 32) = v9;
  sub_1006A7ED8((a1 + 56), a3 + 3);
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 104), *a4, *(a4 + 1));
  }

  else
  {
    v10 = *a4;
    *(a1 + 120) = *(a4 + 2);
    *(a1 + 104) = v10;
  }

  *(a1 + 128) = a2;
  return a1;
}

uint64_t sub_10071D9C0(uint64_t a1)
{
  *a1 = off_101E76080;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 96) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_10071DA4C@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  v40 = 0;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *__p = 0u;
  v29 = 0u;
  v26 = 0u;
  *__src = 0u;
  v24 = 0u;
  v25 = 0u;
  v23 = 0u;
  sub_10000C320(&v23);
  v4 = sub_10000C030(&v24);
  v5 = (*(*a1 + 16))(a1) - 1;
  if (v5 > 4)
  {
    v6 = "kInvalid";
  }

  else
  {
    v6 = off_101E76268[v5];
  }

  strlen(v6);
  v7 = sub_10000C030(v4);
  v8 = sub_10000C030(v7);
  v9 = sub_10000C030(v8);
  v10 = Lazuli::asString();
  strlen(v10);
  v11 = sub_10000C030(v9);
  v12 = sub_10000C030(v11);
  v13 = a1 + 8;
  if (a1[31] < 0)
  {
    v13 = *v13;
  }

  strlen(v13);
  v14 = sub_10000C030(v12);
  v15 = sub_10000C030(v14);
  v16 = a1 + 104;
  if (a1[127] < 0)
  {
    v16 = *v16;
  }

  strlen(v16);
  v17 = sub_10000C030(v15);
  sub_10000C030(v17);
  if ((BYTE8(v30) & 0x10) != 0)
  {
    v19 = v30;
    if (v30 < __src[1])
    {
      *&v30 = __src[1];
      v19 = __src[1];
    }

    v20 = __src[0];
  }

  else
  {
    if ((BYTE8(v30) & 8) == 0)
    {
      v18 = 0;
      a2[23] = 0;
      goto LABEL_21;
    }

    v20 = *(&v25 + 1);
    v19 = *(&v26 + 1);
  }

  v18 = v19 - v20;
  if ((v19 - v20) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v18 >= 0x17)
  {
    operator new();
  }

  a2[23] = v18;
  if (v18)
  {
    memmove(a2, v20, v18);
  }

LABEL_21:
  a2[v18] = 0;
  *&v24 = v21;
  if (SHIBYTE(v29) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v25);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10071DDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void *sub_10071DE1C(void *a1, int a2, uint64_t a3, __int128 *a4)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v11, *a3, *(a3 + 8));
  }

  else
  {
    *v11 = *a3;
    v12 = *(a3 + 16);
  }

  v13 = *(a3 + 24);
  v14 = *(a3 + 40);
  sub_1006A7ED8(&__p, (a3 + 48));
  sub_10071D7F4(a1, a2, v11);
  if (v17 == 1 && v16 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v12) < 0)
  {
    operator delete(v11[0]);
  }

  *a1 = off_101E760A8;
  v8 = a1 + 17;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v8, *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    a1[19] = *(a4 + 2);
    *v8 = v9;
  }

  return a1;
}

uint64_t sub_10071DF60(uint64_t a1)
{
  *a1 = off_101E760A8;
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  return sub_10071D9C0(a1);
}

void sub_10071DFC8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  if (*(a1 + 31) < 0)
  {
    sub_100005F2C(a2, *(a1 + 8), *(a1 + 16));
  }

  else
  {
    *a2 = *(a1 + 8);
    *(a2 + 16) = *(a1 + 24);
  }

  *(a2 + 24) = *(a1 + 32);
  *(a2 + 40) = *(a1 + 48);
  sub_1006A7ED8((a2 + 48), (a1 + 56));
  *(&v18.__r_.__value_.__s + 23) = 2;
  strcpy(&v18, "__");
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = *(a2 + 8);
  }

  v7 = std::string::insert(&v18, 0, v5, v6);
  v8 = *&v7->__r_.__value_.__l.__data_;
  v19.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
  *&v19.__r_.__value_.__l.__data_ = v8;
  v7->__r_.__value_.__l.__size_ = 0;
  v7->__r_.__value_.__r.__words[2] = 0;
  v7->__r_.__value_.__r.__words[0] = 0;
  v11 = *(a1 + 136);
  v10 = a1 + 136;
  v9 = v11;
  v12 = *(v10 + 23);
  if (v12 >= 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = v9;
  }

  if (v12 >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v14 = *(v10 + 8);
  }

  v15 = std::string::append(&v19, v13, v14);
  v16 = v15->__r_.__value_.__r.__words[0];
  v20[0] = v15->__r_.__value_.__l.__size_;
  *(v20 + 7) = *(&v15->__r_.__value_.__r.__words[1] + 7);
  v17 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v16;
  *(a2 + 8) = v20[0];
  *(a2 + 15) = *(v20 + 7);
  *(a2 + 23) = v17;
  if (SHIBYTE(v19.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v19.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v18.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v18.__r_.__value_.__l.__data_);
  }
}

void sub_10071E15C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_10067A5EC(v21);
  _Unwind_Resume(a1);
}

void sub_10071E1B0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&__str, 0, sizeof(__str));
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(&__str, *a1, *(a1 + 8));
  }

  else
  {
    __str = *a1;
  }

  size = SHIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size >= 2)
  {
    v6 = p_str + size;
    v7 = p_str;
    do
    {
      v8 = memchr(v7, 95, size - 1);
      if (!v8)
      {
        break;
      }

      if (*v8 == 24415)
      {
        if (v8 != v6)
        {
          v9 = v8 - p_str;
          if (v9 != -1)
          {
            std::string::basic_string(&v11, &__str, 0, v9, &v10);
            std::string::basic_string(&v10, &__str, v9 + 2, 0xFFFFFFFFFFFFFFFFLL, &v13);
            *a2 = v11;
            a2[1] = v10;
            goto LABEL_20;
          }
        }

        break;
      }

      v7 = (v8 + 1);
      size = v6 - v7;
    }

    while (v6 - v7 >= 2);
  }

  memset(&v11, 0, sizeof(v11));
  sub_100580870(a2, a1, &v11);
  if (SHIBYTE(v11.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v11.__r_.__value_.__l.__data_);
  }

LABEL_20:
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }
}

void sub_10071E31C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10071E354(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v9, *a4, *(a4 + 8));
  }

  else
  {
    *v9 = *a4;
    v10 = *(a4 + 16);
  }

  v11 = *(a4 + 24);
  v12 = *(a4 + 40);
  sub_1006A7ED8(&__p, (a4 + 48));
  sub_10071D7F4(a1, a3, v9);
  if (v15 == 1 && v14 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(v9[0]);
  }

  *a1 = off_101E760D0;
  a1[17] = a2;
  return a1;
}

void *sub_10071E464(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v14 = *(a4 + 16);
  }

  v15 = *(a4 + 24);
  v16 = *(a4 + 40);
  sub_1006A7ED8(&v17, (a4 + 48));
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v12 = *(a5 + 16);
  }

  sub_10071D8C4(a1, a3, __dst, __p);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (v19 == 1 && v18 < 0)
  {
    operator delete(v17);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst[0]);
  }

  *a1 = off_101E760D0;
  a1[17] = a2;
  return a1;
}

void *sub_10071E5E4(void *a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v13, *a3, *(a3 + 8));
  }

  else
  {
    *v13 = *a3;
    v14 = *(a3 + 16);
  }

  v15 = *(a3 + 24);
  v16 = *(a3 + 40);
  sub_1006A7ED8(&__p, (a3 + 48));
  sub_10071DE1C(a1, a2, v13, a5);
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *a1 = off_101E760F8;
  v10 = a1 + 20;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v10, *a4, *(a4 + 1));
  }

  else
  {
    v11 = *a4;
    a1[22] = *(a4 + 2);
    *v10 = v11;
  }

  return a1;
}

uint64_t sub_10071E738(uint64_t a1)
{
  *a1 = off_101E760F8;
  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  return sub_10071DF60(a1);
}

void sub_10071E79C(uint64_t a1)
{
  sub_10071E738(a1);

  operator delete();
}

void *sub_10071E7DC(void *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v13, *a4, *(a4 + 8));
  }

  else
  {
    *v13 = *a4;
    v14 = *(a4 + 16);
  }

  v15 = *(a4 + 24);
  v16 = *(a4 + 40);
  sub_1006A7ED8(&__p, (a4 + 48));
  sub_10071E354(a1, a2, a3, v13);
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *a1 = off_101E76120;
  v10 = a1 + 18;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v10, *a5, *(a5 + 1));
  }

  else
  {
    v11 = *a5;
    a1[20] = *(a5 + 2);
    *v10 = v11;
  }

  return a1;
}

void *sub_10071E930(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v18 = *(a4 + 16);
  }

  v19 = *(a4 + 24);
  v20 = *(a4 + 40);
  sub_1006A7ED8(&v21, (a4 + 48));
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v16 = *(a5 + 16);
  }

  sub_10071E464(a1, a2, a3, __dst, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  *a1 = off_101E76120;
  v12 = a1 + 18;
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(v12, *a6, *(a6 + 1));
  }

  else
  {
    v13 = *a6;
    a1[20] = *(a6 + 2);
    *v12 = v13;
  }

  return a1;
}

uint64_t sub_10071EAE0(uint64_t a1)
{
  *a1 = off_101E76120;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_10071D9C0(a1);
}

void sub_10071EB44(uint64_t a1)
{
  sub_10071EAE0(a1);

  operator delete();
}

uint64_t sub_10071EB84(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, __int128 *a6)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v14, *a4, *(a4 + 8));
  }

  else
  {
    *v14 = *a4;
    v15 = *(a4 + 16);
  }

  v16 = *(a4 + 24);
  v17 = *(a4 + 40);
  sub_1006A7ED8(&__p, (a4 + 48));
  sub_10071E354(a1, a2, a3, v14);
  if (v20 == 1 && v19 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14[0]);
  }

  *a1 = off_101E76148;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  sub_10071F420(a1 + 144, *a5, a5[1], 0xAAAAAAAAAAAAAAABLL * ((a5[1] - *a5) >> 3));
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C((a1 + 168), *a6, *(a6 + 1));
  }

  else
  {
    v12 = *a6;
    *(a1 + 184) = *(a6 + 2);
    *(a1 + 168) = v12;
  }

  return a1;
}

void sub_10071ECCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  *(v16 - 56) = v15;
  sub_10005AAF8((v16 - 56));
  sub_10071D9C0(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_10071ED1C(uint64_t a1)
{
  *a1 = off_101E76148;
  if (*(a1 + 191) < 0)
  {
    operator delete(*(a1 + 168));
  }

  v3 = (a1 + 144);
  sub_10005AAF8(&v3);
  return sub_10071D9C0(a1);
}

void sub_10071ED8C(uint64_t a1)
{
  sub_10071ED1C(a1);

  operator delete();
}

uint64_t sub_10071EDCC(uint64_t a1, int a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, __int128 *a7)
{
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(v18, *a3, *(a3 + 8));
  }

  else
  {
    *v18 = *a3;
    v19 = *(a3 + 16);
  }

  v20 = *(a3 + 24);
  v21 = *(a3 + 40);
  sub_1006A7ED8(&__p, (a3 + 48));
  sub_10071DE1C(a1, a2, v18, a6);
  if (v24 == 1 && v23 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v19) < 0)
  {
    operator delete(v18[0]);
  }

  *a1 = off_101E76170;
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C((a1 + 160), *a4, *(a4 + 1));
  }

  else
  {
    v14 = *a4;
    *(a1 + 176) = *(a4 + 2);
    *(a1 + 160) = v14;
  }

  if (*(a5 + 23) < 0)
  {
    sub_100005F2C((a1 + 184), *a5, *(a5 + 1));
  }

  else
  {
    v15 = *a5;
    *(a1 + 200) = *(a5 + 2);
    *(a1 + 184) = v15;
  }

  if (*(a7 + 23) < 0)
  {
    sub_100005F2C((a1 + 208), *a7, *(a7 + 1));
  }

  else
  {
    v16 = *a7;
    *(a1 + 224) = *(a7 + 2);
    *(a1 + 208) = v16;
  }

  return a1;
}

void sub_10071EF48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 + 207) < 0)
  {
    operator delete(*(v14 + 184));
  }

  if (*(v14 + 183) < 0)
  {
    operator delete(*v15);
  }

  sub_10071DF60(v14);
  _Unwind_Resume(a1);
}

uint64_t sub_10071EFBC(uint64_t a1)
{
  *a1 = off_101E76170;
  if (*(a1 + 231) < 0)
  {
    operator delete(*(a1 + 208));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  return sub_10071DF60(a1);
}

void sub_10071F040(uint64_t a1)
{
  sub_10071EFBC(a1);

  operator delete();
}

void *sub_10071F078(void *a1, uint64_t a2, int a3, uint64_t a4, __int128 *a5)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(v13, *a4, *(a4 + 8));
  }

  else
  {
    *v13 = *a4;
    v14 = *(a4 + 16);
  }

  v15 = *(a4 + 24);
  v16 = *(a4 + 40);
  sub_1006A7ED8(&__p, (a4 + 48));
  sub_10071E354(a1, a2, a3, v13);
  if (v19 == 1 && v18 < 0)
  {
    operator delete(__p);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(v13[0]);
  }

  *a1 = off_101E76198;
  v10 = a1 + 18;
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(v10, *a5, *(a5 + 1));
  }

  else
  {
    v11 = *a5;
    a1[20] = *(a5 + 2);
    *v10 = v11;
  }

  return a1;
}

void *sub_10071F1CC(void *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  if (*(a4 + 23) < 0)
  {
    sub_100005F2C(__dst, *a4, *(a4 + 8));
  }

  else
  {
    *__dst = *a4;
    v18 = *(a4 + 16);
  }

  v19 = *(a4 + 24);
  v20 = *(a4 + 40);
  sub_1006A7ED8(&v21, (a4 + 48));
  if (*(a5 + 23) < 0)
  {
    sub_100005F2C(__p, *a5, *(a5 + 8));
  }

  else
  {
    *__p = *a5;
    v16 = *(a5 + 16);
  }

  sub_10071E464(a1, a2, a3, __dst, __p);
  if (SHIBYTE(v16) < 0)
  {
    operator delete(__p[0]);
  }

  if (v23 == 1 && v22 < 0)
  {
    operator delete(v21);
  }

  if (SHIBYTE(v18) < 0)
  {
    operator delete(__dst[0]);
  }

  *a1 = off_101E76198;
  v12 = a1 + 18;
  if (*(a6 + 23) < 0)
  {
    sub_100005F2C(v12, *a6, *(a6 + 1));
  }

  else
  {
    v13 = *a6;
    a1[20] = *(a6 + 2);
    *v12 = v13;
  }

  return a1;
}

uint64_t sub_10071F384(uint64_t a1)
{
  *a1 = off_101E76198;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  return sub_10071D9C0(a1);
}

void sub_10071F3E8(uint64_t a1)
{
  sub_10071F384(a1);

  operator delete();
}

uint64_t sub_10071F420(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10008E2D0(result, a4);
  }

  return result;
}

void sub_10071F488(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10005AAF8(&a9);
  _Unwind_Resume(a1);
}

char *sub_10071F4A8(uint64_t a1, __int128 *a2, __int128 *a3, char *__dst)
{
  v4 = __dst;
  v11 = __dst;
  v12 = __dst;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v4, *v6, *(v6 + 1));
        v4 = v12;
      }

      else
      {
        v7 = *v6;
        *(v4 + 2) = *(v6 + 2);
        *v4 = v7;
      }

      v6 = (v6 + 24);
      v4 += 24;
      v12 = v4;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_10071F564(v9);
  return v4;
}

uint64_t sub_10071F564(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1000D46BC(a1);
  }

  return a1;
}

void sub_10071F5B8()
{
  TMKXPCServer.shutdown()();

  operator delete();
}

void sub_10071F5F8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[1] = 0;
  *a2 = a2 + 1;
  if ((atomic_load_explicit(&qword_101FBAA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAA70))
  {
    sub_1002C7D30(xmmword_101FBAA30, ", \t\n", 0, 0);
    __cxa_atexit(sub_1002C5D28, xmmword_101FBAA30, &_mh_execute_header);
    __cxa_guard_release(&qword_101FBAA70);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = 0u;
  v4 = sub_1002C7E58(&v27, a1, xmmword_101FBAA30);
  sub_1002C5D6C(v4, v18);
  sub_1002C5E58(&v27, &v9);
  while (v15 == 1 && (v24 & 1) != 0)
  {
    if (v13 != v22)
    {
      goto LABEL_10;
    }

    if (v14 == v23)
    {
      goto LABEL_19;
    }

LABEL_9:
    if ((v24 & 1) == 0)
    {
      __assert_rtn("dereference", "token_iterator.hpp", 59, "valid_");
    }

LABEL_10:
    v32 = 0;
    v5 = v26;
    v6 = v25[0];
    if (v26 >= 0)
    {
      v6 = v25;
    }

    if (v26 < 0)
    {
      v5 = v25[1];
    }

    v33.__vftable = v6;
    v34 = (v5 + v6);
    if ((sub_10071F928(&v33, &v32) & 1) == 0)
    {
      v7 = std::bad_cast::bad_cast(&v33);
      v33.__vftable = &off_101E69338;
      sub_1005DE100(v7);
    }

    v8 = v32;
    if (v32 >= 1)
    {
      sub_1000C4284(a2, &v8);
    }

    sub_1002C8BCC(v18);
  }

  if (v15 != v24)
  {
    goto LABEL_9;
  }

LABEL_19:
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v12 < 0)
  {
    operator delete(v11);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v26 < 0)
  {
    operator delete(v25[0]);
  }

  if (v21 < 0)
  {
    operator delete(v20);
  }

  if (v19 < 0)
  {
    operator delete(v18[0]);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(*(&v29 + 1));
  }

  if (SBYTE7(v29) < 0)
  {
    operator delete(v28);
  }
}

uint64_t sub_10071F928(unsigned __int8 **a1, int *a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (*a1 == v4)
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  v18 = 0;
  v7 = *v5;
  if (v7 == 45 || v7 == 43)
  {
    *a1 = ++v5;
  }

  v13[0] = 0;
  v14 = 1;
  v15 = &v18;
  v16 = v5;
  v17 = v4;
  v8 = sub_1005DDDA0(v13);
  v9 = v18;
  if (v18 >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0;
  }

  if (v18 < 0x80000001)
  {
    v11 = v8;
  }

  else
  {
    v11 = 0;
  }

  if (v7 == 45)
  {
    v9 = -v18;
    result = v11;
  }

  else
  {
    result = v10;
  }

  *a2 = v9;
  return result;
}

int *sub_10071FEE4(int *result, int a2)
{
  if (a2)
  {
    v2 = *result;
    result[18] = result[19];
    result[19] = v2;
  }

  result[3] = 0;
  result[4] = 0;
  return result;
}

uint64_t sub_10071FEFC(uint64_t result, int *a2, int a3, int a4)
{
  v4 = *a2;
  *result = *a2;
  *(result + 4) = a3;
  *(result + 8) = a4;
  *(result + 32) = 0;
  *(result + 24) = result + 32;
  *(result + 64) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 48) = result + 56;
  *(result + 72) = *a2;
  *(result + 76) = v4;
  *(result + 12) = 0;
  *(result + 16) = 0;
  return result;
}

uint64_t sub_10071FF34(uint64_t a1, unsigned int *a2, int a3)
{
  if (!a3)
  {
    return 0;
  }

  v3 = 24;
  if (a3 == 1)
  {
    v3 = 48;
  }

  v4 = a1 + v3;
  v5 = 4;
  if (a3 == 1)
  {
    v5 = 8;
  }

  result = *(a1 + v5);
  v9 = *(v4 + 8);
  v7 = v4 + 8;
  v8 = v9;
  if (v9)
  {
    v10 = *a2;
    v11 = v7;
    do
    {
      v12 = *(v8 + 28);
      v13 = v12 >= v10;
      v14 = v12 < v10;
      if (v13)
      {
        v11 = v8;
      }

      v8 = *(v8 + 8 * v14);
    }

    while (v8);
    if (v11 != v7 && v10 >= *(v11 + 28))
    {
      return *(v11 + 32);
    }
  }

  return result;
}

const char *sub_10071FFA8(unsigned int a1)
{
  if (a1 > 2)
  {
    return "???";
  }

  else
  {
    return off_101E76340[a1];
  }
}

const char *sub_10071FFCC(unsigned int a1)
{
  if (a1 > 5)
  {
    return "???";
  }

  else
  {
    return off_101E76358[a1];
  }
}

const char *sub_10071FFF0(unsigned int a1)
{
  if (a1 > 0xA)
  {
    return "???";
  }

  else
  {
    return off_101E76388[a1];
  }
}

const char *sub_100720014(unsigned int a1)
{
  if (a1 > 3)
  {
    return "???";
  }

  else
  {
    return off_101E763E0[a1];
  }
}

const char *sub_100720038(unsigned int a1)
{
  if (a1 > 0xE)
  {
    return "???";
  }

  else
  {
    return off_101E76400[a1];
  }
}

uint64_t getFileConfigurationKeyNameForType(int a1, unsigned int a2)
{
  if ((atomic_load_explicit(&qword_101FBAA90, memory_order_acquire) & 1) == 0)
  {
    v18 = a1;
    v12 = a2;
    v13 = __cxa_guard_acquire(&qword_101FBAA90);
    a2 = v12;
    v14 = v13;
    a1 = v18;
    if (v14)
    {
      v24 = unk_101E764C8;
      v25 = unk_101E764D8;
      v26 = unk_101E764E8;
      v20 = unk_101E76488;
      v21 = unk_101E76498;
      v22 = unk_101E764A8;
      v23 = unk_101E764B8;
      sub_100729848(&qword_101FBAA78, &v20, 7);
      __cxa_atexit(sub_1007202D0, &qword_101FBAA78, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAA90);
      a2 = v12;
      a1 = v18;
    }
  }

  if ((atomic_load_explicit(&qword_101FBAAB0, memory_order_acquire) & 1) == 0)
  {
    v19 = a1;
    v15 = a2;
    v16 = __cxa_guard_acquire(&qword_101FBAAB0);
    a2 = v15;
    v17 = v16;
    a1 = v19;
    if (v17)
    {
      v24 = unk_101E76538;
      v25 = unk_101E76548;
      v26 = unk_101E76558;
      v20 = unk_101E764F8;
      v21 = unk_101E76508;
      v22 = unk_101E76518;
      v23 = unk_101E76528;
      sub_100729848(&qword_101FBAA98, &v20, 7);
      __cxa_atexit(sub_1007202D0, &qword_101FBAA98, &_mh_execute_header);
      __cxa_guard_release(&qword_101FBAAB0);
      a2 = v15;
      a1 = v19;
    }
  }

  if (a1 == 2)
  {
    v8 = qword_101FBAAA0;
    if (!qword_101FBAAA0)
    {
      return 0;
    }

    v3 = &qword_101FBAAA0;
    v4 = &qword_101FBAAA0;
    do
    {
      v9 = *(v8 + 32);
      v6 = v9 >= a2;
      v10 = v9 < a2;
      if (v6)
      {
        v4 = v8;
      }

      v8 = *(v8 + 8 * v10);
    }

    while (v8);
  }

  else
  {
    if (a1 != 1)
    {
      return 0;
    }

    v2 = qword_101FBAA80;
    if (!qword_101FBAA80)
    {
      return 0;
    }

    v3 = &qword_101FBAA80;
    v4 = &qword_101FBAA80;
    do
    {
      v5 = *(v2 + 32);
      v6 = v5 >= a2;
      v7 = v5 < a2;
      if (v6)
      {
        v4 = v2;
      }

      v2 = *(v2 + 8 * v7);
    }

    while (v2);
  }

  if (v4 == v3 || *(v4 + 32) > a2)
  {
    return 0;
  }

  return v4[5];
}

void *sub_100720620(void *a1, uint64_t a2)
{
  sub_10070C8B4(v4, a2);
  sub_1007105F8(v4, a1);
  sub_10070CF14(v4);
  return a1;
}

void sub_100720694(uint64_t a1)
{
  v2 = **(a1 + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = asString(*(a1 + 84));
    v4 = asString();
    v5 = CSIBOOLAsString(*(a1 + 85));
    v8 = 136315650;
    v9 = v3;
    v10 = 2080;
    v11 = v4;
    v12 = 2080;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s Format: %s, OTA config: %s", &v8, 0x20u);
    v2 = **(a1 + 8);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = asString(*(a1 + 84));
    v7 = *(a1 + 88);
    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s Config: %@", &v8, 0x16u);
  }
}

uint64_t sub_1007207D4(uint64_t a1)
{
  *a1 = &off_101E76578;
  sub_10001021C((a1 + 88));
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

  sub_10070CF14(a1 + 16);
  sub_1001A966C((a1 + 8), 0);
  return a1;
}

void sub_10072084C(uint64_t a1@<X0>, const void *a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  if (*(a1 + 85) == 1)
  {
    v30[0] = @"OTAActivation";
    v30[1] = a2;
    v28 = 0;
    v29 = 0;
    __p = 0;
    sub_10005B328(&__p, v30, &v31, 2uLL);
    ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
    v30[0] = v8;
    v12 = sub_100009510(&v7[1].__m_.__sig, v30);
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
LABEL_22:
        (*(*v14 + 88))(&v26, v14, *(a1 + 80), 1, &__p, 0, 0);
        if (&v26 != a3)
        {
          v30[0] = *a3;
          *a3 = v26;
          v26 = 0;
          sub_10000A1EC(v30);
        }

        sub_10000A1EC(&v26);
        if ((v15 & 1) == 0)
        {
          sub_100004A34(v13);
        }

        if (__p)
        {
          v28 = __p;
          operator delete(__p);
        }

        return;
      }
    }

    else
    {
      v14 = 0;
    }

    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    goto LABEL_22;
  }

  v16 = Registry::getServiceMap(*(a1 + 64));
  v17 = v16;
  if (v18 < 0)
  {
    v19 = (v18 & 0x7FFFFFFFFFFFFFFFLL);
    v20 = 5381;
    do
    {
      v18 = v20;
      v21 = *v19++;
      v20 = (33 * v20) ^ v21;
    }

    while (v21);
  }

  std::mutex::lock(v16);
  __p = v18;
  v22 = sub_100009510(&v17[1].__m_.__sig, &__p);
  if (!v22)
  {
    v24 = 0;
    goto LABEL_15;
  }

  v24 = v22[3];
  v23 = v22[4];
  if (!v23)
  {
LABEL_15:
    std::mutex::unlock(v17);
    v23 = 0;
    v25 = 1;
    goto LABEL_16;
  }

  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v17);
  atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v23);
  v25 = 0;
LABEL_16:
  (*(*v24 + 80))(v30, v24, *(a1 + 80), 1, a2, 0, 0);
  if (v30 != a3)
  {
    __p = *a3;
    *a3 = v30[0];
    v30[0] = 0;
    sub_10000A1EC(&__p);
  }

  sub_10000A1EC(v30);
  if ((v25 & 1) == 0)
  {
    sub_100004A34(v23);
  }
}

void sub_100720B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (__p)
  {
    operator delete(__p);
  }

  sub_10000A1EC(v12);
  _Unwind_Resume(a1);
}

void sub_100720BA4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v15 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v15);
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
    (*(*v12 + 40))(v12, a2, kCommCenterPreferencesNoBackupAppID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  if (!v12)
  {
    *a3 = 0;
  }
}

void sub_100720CF0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100720D10(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

uint64_t sub_100720D48(uint64_t a1)
{
  *a1 = off_101E767C8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_1007207D4(a1);
}

void sub_100720DAC(uint64_t a1)
{
  sub_100720D48(a1);

  operator delete();
}

void sub_100720DE8(uint64_t a1)
{
  sub_100720D48(a1);

  operator delete();
}

void sub_100720E24(uint64_t a1)
{
  sub_100720D48(a1);

  operator delete();
}

const void **sub_100720E5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v128 = 0;
  v126 = 0;
  v127 = 0;
  v123 = 0;
  v124 = 0;
  v125 = 0;
  v138.__r_.__value_.__r.__words[0] = &v127;
  v138.__r_.__value_.__l.__size_ = &v126;
  v138.__r_.__value_.__r.__words[2] = &v123;
  v139 = &v128;
  v4 = capabilities::ct::supportsDERFileFormat(a1);
  v5 = *(a1 + 64);
  if (v4)
  {
    ServiceMap = Registry::getServiceMap(v5);
    v7 = ServiceMap;
    v9 = v8;
    if (v8 < 0)
    {
      v10 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
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
    __dst.__r_.__value_.__r.__words[0] = v9;
    v13 = sub_100009510(&v7[1].__m_.__sig, &__dst);
    if (v13)
    {
      v15 = v13[3];
      v14 = v13[4];
      if (v14)
      {
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v7);
        atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v14);
        v16 = 0;
        goto LABEL_16;
      }
    }

    else
    {
      v15 = 0;
    }

    std::mutex::unlock(v7);
    v14 = 0;
    v16 = 1;
LABEL_16:
    (*(*v15 + 128))(&__p, v15, *(a1 + 80));
    v137[0] = off_101E76AB0;
    v137[1] = a1;
    v137[3] = v137;
    v28 = sub_1007220E8(&v138, @"DerPriFileName", @"DerPriFileVersion", 2, &__p, v137);
    sub_100729AAC(v137);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      if (v16)
      {
LABEL_19:
        v29 = **(a1 + 8);
        v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
        if (v28)
        {
          if (v30)
          {
            LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
            v31 = "#I Found DER PRI files in the Carrier Bundle";
LABEL_99:
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v31, &__dst, 2u);
            goto LABEL_100;
          }

          goto LABEL_100;
        }

        if (!v30)
        {
LABEL_64:
          v52 = capabilities::ct::supportsDERFileFormat(v30);
          v53 = *(a1 + 64);
          if (v52)
          {
            v54 = Registry::getServiceMap(v53);
            v55 = v54;
            if ((v56 & 0x8000000000000000) != 0)
            {
              v57 = (v56 & 0x7FFFFFFFFFFFFFFFLL);
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
            __dst.__r_.__value_.__r.__words[0] = v56;
            v60 = sub_100009510(&v55[1].__m_.__sig, &__dst);
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
                goto LABEL_79;
              }
            }

            else
            {
              v62 = 0;
            }

            std::mutex::unlock(v55);
            v61 = 0;
            v63 = 1;
LABEL_79:
            (*(*v62 + 152))(&v120, v62);
            v135[0] = off_101E76B40;
            v135[1] = a1;
            v135[3] = v135;
            v74 = sub_1007220E8(&v138, @"DerPriFileName", @"DerPriFileVersion", 2, &v120, v135);
            sub_100729AAC(v135);
            if (SHIBYTE(v120.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v120.__r_.__value_.__l.__data_);
            }

            if ((v63 & 1) == 0)
            {
              sub_100004A34(v61);
            }

            v29 = **(a1 + 8);
            v75 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
            if (v74)
            {
              if (v75)
              {
                LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
                v31 = "#I Found DER PRI files in the Default Bundle";
                goto LABEL_99;
              }
            }

            else if (v75)
            {
              LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
              v31 = "#N Did not find DER PRI files in the Default Bundle";
              goto LABEL_99;
            }

            goto LABEL_100;
          }

          v64 = Registry::getServiceMap(v53);
          v65 = v64;
          if ((v66 & 0x8000000000000000) != 0)
          {
            v67 = (v66 & 0x7FFFFFFFFFFFFFFFLL);
            v68 = 5381;
            do
            {
              v66 = v68;
              v69 = *v67++;
              v68 = (33 * v68) ^ v69;
            }

            while (v69);
          }

          std::mutex::lock(v64);
          __dst.__r_.__value_.__r.__words[0] = v66;
          v70 = sub_100009510(&v65[1].__m_.__sig, &__dst);
          if (v70)
          {
            v72 = v70[3];
            v71 = v70[4];
            if (v71)
            {
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v65);
              atomic_fetch_add_explicit(&v71->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v71);
              v73 = 0;
              goto LABEL_90;
            }
          }

          else
          {
            v72 = 0;
          }

          std::mutex::unlock(v65);
          v71 = 0;
          v73 = 1;
LABEL_90:
          (*(*v72 + 152))(&v119, v72);
          v134[0] = off_101E76B40;
          v134[1] = a1;
          v134[3] = v134;
          v76 = sub_1007220E8(&v138, @"PRIFileName", @"PriVersion", 1, &v119, v134);
          sub_100729AAC(v134);
          if (SHIBYTE(v119.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v119.__r_.__value_.__l.__data_);
          }

          if ((v73 & 1) == 0)
          {
            sub_100004A34(v71);
          }

          v29 = **(a1 + 8);
          v77 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
          if (v76)
          {
            if (v77)
            {
              LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
              v31 = "#I Found XML PRI files in the Default Bundle";
              goto LABEL_99;
            }
          }

          else if (v77)
          {
            LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
            v31 = "#N Did not find XML PRI files in the Default Bundle";
            goto LABEL_99;
          }

          goto LABEL_100;
        }

        v32 = Registry::getServiceMap(*(a1 + 64));
        v33 = v32;
        if (v8 < 0)
        {
          v34 = (v8 & 0x7FFFFFFFFFFFFFFFLL);
          v35 = 5381;
          do
          {
            v8 = v35;
            v36 = *v34++;
            v35 = (33 * v35) ^ v36;
          }

          while (v36);
        }

        std::mutex::lock(v32);
        v117 = v8;
        v37 = sub_100009510(&v33[1].__m_.__sig, &v117);
        if (v37)
        {
          v39 = v37[3];
          v38 = v37[4];
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v33);
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v38);
            v40 = 0;
LABEL_50:
            (*(*v39 + 128))(&__dst, v39, *(a1 + 80));
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            *buf = 136446210;
            *&buf[4] = p_dst;
            v50 = "#N Did not find DER PRI files in the Carrier Bundle: %{public}s";
LABEL_60:
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, v50, buf, 0xCu);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }

            if ((v40 & 1) == 0)
            {
              sub_100004A34(v38);
            }

            goto LABEL_64;
          }
        }

        else
        {
          v39 = 0;
        }

        std::mutex::unlock(v33);
        v38 = 0;
        v40 = 1;
        goto LABEL_50;
      }
    }

    else if (v16)
    {
      goto LABEL_19;
    }

    sub_100004A34(v14);
    goto LABEL_19;
  }

  v17 = Registry::getServiceMap(v5);
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
  __dst.__r_.__value_.__r.__words[0] = v20;
  v24 = sub_100009510(&v18[1].__m_.__sig, &__dst);
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
      goto LABEL_31;
    }
  }

  else
  {
    v26 = 0;
  }

  std::mutex::unlock(v18);
  v25 = 0;
  v27 = 1;
LABEL_31:
  (*(*v26 + 128))(&v121, v26, *(a1 + 80));
  v136[0] = off_101E76AB0;
  v136[1] = a1;
  v136[3] = v136;
  v41 = sub_1007220E8(&v138, @"PRIFileName", @"PriVersion", 1, &v121, v136);
  sub_100729AAC(v136);
  if ((SHIBYTE(v121.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v27)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  operator delete(v121.__r_.__value_.__l.__data_);
  if ((v27 & 1) == 0)
  {
LABEL_33:
    sub_100004A34(v25);
  }

LABEL_34:
  v29 = **(a1 + 8);
  v30 = os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
  if (!v41)
  {
    if (!v30)
    {
      goto LABEL_64;
    }

    v42 = Registry::getServiceMap(*(a1 + 64));
    v43 = v42;
    if (v19 < 0)
    {
      v44 = (v19 & 0x7FFFFFFFFFFFFFFFLL);
      v45 = 5381;
      do
      {
        v19 = v45;
        v46 = *v44++;
        v45 = (33 * v45) ^ v46;
      }

      while (v46);
    }

    std::mutex::lock(v42);
    v117 = v19;
    v47 = sub_100009510(&v43[1].__m_.__sig, &v117);
    if (v47)
    {
      v48 = v47[3];
      v38 = v47[4];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v43);
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v38);
        v40 = 0;
LABEL_56:
        (*(*v48 + 128))(&__dst, v48, *(a1 + 80));
        if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v51 = &__dst;
        }

        else
        {
          v51 = __dst.__r_.__value_.__r.__words[0];
        }

        *buf = 136446210;
        *&buf[4] = v51;
        v50 = "#N Did not find XML PRI files in the Carrier Bundle: %{public}s";
        goto LABEL_60;
      }
    }

    else
    {
      v48 = 0;
    }

    std::mutex::unlock(v43);
    v38 = 0;
    v40 = 1;
    goto LABEL_56;
  }

  if (v30)
  {
    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    v31 = "#I Found XML PRI files in the Carrier Bundle";
    goto LABEL_99;
  }

LABEL_100:
  if (v127 && v126)
  {
    v117 = 0;
    v118 = 0;
    Registry::getFileSystemInterface(&v117, *(a1 + 64));
    memset(buf, 0, sizeof(buf));
    v133 = 0;
    if (v125 >= 0)
    {
      v78 = HIBYTE(v125);
    }

    else
    {
      v78 = v124;
    }

    memset(&v138, 0, sizeof(v138));
    v79 = &v138;
    sub_1000677C4(&v138, v78 + 1);
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v79 = v138.__r_.__value_.__r.__words[0];
    }

    if (v78)
    {
      if (v125 >= 0)
      {
        v80 = &v123;
      }

      else
      {
        v80 = v123;
      }

      memmove(v79, v80, v78);
    }

    *(&v79->__r_.__value_.__l.__data_ + v78) = 47;
    sub_10082F9B4(&__dst);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v81 = &__dst;
    }

    else
    {
      v81 = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __dst.__r_.__value_.__l.__size_;
    }

    v83 = std::string::append(&v138, v81, size);
    v84 = *&v83->__r_.__value_.__l.__data_;
    v133 = v83->__r_.__value_.__r.__words[2];
    *buf = v84;
    v83->__r_.__value_.__l.__size_ = 0;
    v83->__r_.__value_.__r.__words[2] = 0;
    v83->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    v85 = (*(*v117 + 88))(v117, buf);
    v86 = **(a1 + 8);
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_DEFAULT);
    if ((v85 & 1) == 0)
    {
      if (v87)
      {
        v90 = buf;
        if (v133 < 0)
        {
          v90 = *buf;
        }

        LODWORD(v138.__r_.__value_.__l.__data_) = 136446210;
        *(v138.__r_.__value_.__r.__words + 4) = v90;
        _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#N PRI file %{public}s does not exist", &v138, 0xCu);
      }

      goto LABEL_192;
    }

    if (v87)
    {
      sub_10082F9B4(&v138);
      v88 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136315138;
      *(__dst.__r_.__value_.__r.__words + 4) = v88;
      _os_log_impl(&_mh_execute_header, v86, OS_LOG_TYPE_DEFAULT, "#I PRI file name: %s", &__dst, 0xCu);
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }
    }

    value = 0;
    (*(*v117 + 136))(&v115);
    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, v115.__r_.__value_.__l.__data_, v115.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = v115;
    }

    v129 = 0;
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&v138, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
    }

    else
    {
      v138 = __dst;
    }

    v130 = 0;
    if (ctu::cf::convert_copy())
    {
      v91 = v129;
      v129 = v130;
      v131 = v91;
      sub_100005978(&v131);
    }

    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v138.__r_.__value_.__l.__data_);
    }

    value = v129;
    v129 = 0;
    sub_100005978(&v129);
    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v115.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v115.__r_.__value_.__l.__data_);
    }

    v92 = **(a1 + 8);
    if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
    {
      sub_10082F9B4(&v138);
      v93 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
      LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
      *(__dst.__r_.__value_.__r.__words + 4) = v93;
      _os_log_impl(&_mh_execute_header, v92, OS_LOG_TYPE_DEFAULT, "#I PRI file bundle directory: %{public}s", &__dst, 0xCu);
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }
    }

    v94 = Registry::getServiceMap(*(a1 + 64));
    v95 = v94;
    if ((v96 & 0x8000000000000000) != 0)
    {
      v97 = (v96 & 0x7FFFFFFFFFFFFFFFLL);
      v98 = 5381;
      do
      {
        v96 = v98;
        v99 = *v97++;
        v98 = (33 * v98) ^ v99;
      }

      while (v99);
    }

    std::mutex::lock(v94);
    v138.__r_.__value_.__r.__words[0] = v96;
    v100 = sub_100009510(&v95[1].__m_.__sig, &v138);
    if (v100)
    {
      v102 = v100[3];
      v101 = v100[4];
      if (v101)
      {
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v95);
        atomic_fetch_add_explicit(&v101->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v101);
        v103 = 0;
LABEL_163:
        v131 = 0;
        if (v125 >= 0)
        {
          v104 = &v123;
        }

        else
        {
          v104 = v123;
        }

        v131 = (*(*v102 + 24))(v102, v104);
        v105 = **(a1 + 8);
        if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
        {
          sub_10082F9B4(&v138);
          v106 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
          LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
          *(__dst.__r_.__value_.__r.__words + 4) = v106;
          _os_log_impl(&_mh_execute_header, v105, OS_LOG_TYPE_DEFAULT, "#I PRI file bundle ID: %{public}s", &__dst, 0xCu);
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v138.__r_.__value_.__l.__data_);
          }
        }

        v130 = 0;
        if (v125 >= 0)
        {
          v107 = &v123;
        }

        else
        {
          v107 = v123;
        }

        v130 = (*(*v102 + 40))(v102, v107);
        v108 = **(a1 + 8);
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          sub_10082F9B4(&v138);
          v109 = (v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v138 : v138.__r_.__value_.__r.__words[0];
          LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
          *(__dst.__r_.__value_.__r.__words + 4) = v109;
          _os_log_impl(&_mh_execute_header, v108, OS_LOG_TYPE_DEFAULT, "#I PRI file bundle version: %{public}s", &__dst, 0xCu);
          if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v138.__r_.__value_.__l.__data_);
          }
        }

        __dst.__r_.__value_.__r.__words[0] = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v111 = __dst.__r_.__value_.__r.__words[0];
          __dst.__r_.__value_.__r.__words[0] = Mutable;
          v138.__r_.__value_.__r.__words[0] = v111;
          sub_1000296E0(&v138.__r_.__value_.__l.__data_);
        }

        CFDictionarySetValue(__dst.__r_.__value_.__l.__data_, @"kPRIBundleDir", value);
        CFDictionarySetValue(__dst.__r_.__value_.__l.__data_, @"kPRIFileName", v126);
        CFDictionarySetValue(__dst.__r_.__value_.__l.__data_, @"kPRIFileVersion", v127);
        if (v131)
        {
          CFDictionarySetValue(__dst.__r_.__value_.__l.__data_, @"kPRIFileBundleID", v131);
        }

        if (v130)
        {
          CFDictionarySetValue(__dst.__r_.__value_.__l.__data_, @"kPRIFileBundleVersion", v130);
        }

        v112 = *(a1 + 8);
        sub_100010180(&v114, &__dst.__r_.__value_.__l.__data_);
        sub_1007221F8(v112, "PRI configuration", &v114);
        sub_10001021C(&v114);
        v138.__r_.__value_.__r.__words[0] = __dst.__r_.__value_.__r.__words[0];
        if (__dst.__r_.__value_.__r.__words[0])
        {
          CFRetain(__dst.__r_.__value_.__l.__data_);
        }

        v138.__r_.__value_.__s.__data_[8] = v128;
        sub_100722348(a2, &v138);
        sub_1000296E0(&v138.__r_.__value_.__l.__data_);
        sub_1000296E0(&__dst.__r_.__value_.__l.__data_);
        sub_100005978(&v130);
        sub_100005978(&v131);
        if ((v103 & 1) == 0)
        {
          sub_100004A34(v101);
        }

        sub_100005978(&value);
LABEL_192:
        if (SHIBYTE(v133) < 0)
        {
          operator delete(*buf);
        }

        if (v118)
        {
          sub_100004A34(v118);
        }

        goto LABEL_196;
      }
    }

    else
    {
      v102 = 0;
    }

    std::mutex::unlock(v95);
    v101 = 0;
    v103 = 1;
    goto LABEL_163;
  }

  v89 = **(a1 + 8);
  if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v138.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v89, OS_LOG_TYPE_DEFAULT, "#N No PRI available to send", &v138, 2u);
  }

LABEL_196:
  if (SHIBYTE(v125) < 0)
  {
    operator delete(v123);
  }

  sub_100005978(&v126);
  return sub_100005978(&v127);
}

void sub_100721E80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, const void *a37, const void *a38, uint64_t a39, const void *a40, uint64_t a41, uint64_t a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  sub_100005978(&a40);
  if (*(v49 - 89) < 0)
  {
    operator delete(*(v49 - 112));
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a48 < 0)
  {
    operator delete(a43);
  }

  if (a18)
  {
    sub_100004A34(a18);
  }

  if (a36 < 0)
  {
    operator delete(a31);
  }

  sub_100005978(&a37);
  sub_100005978(&a38);
  if (*(v48 + 16) == 1)
  {
    sub_10001021C(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007220E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, const std::string *a5, uint64_t a6)
{
  sub_100729574(a6, a3);
  v11 = *a1;
  if (*a1 != &v16)
  {
    v12 = *v11;
    *v11 = 0;
    v17 = v12;
    *v11 = v16;
    v16 = 0;
    sub_100005978(&v17);
  }

  sub_100005978(&v16);
  sub_100729574(a6, a2);
  v13 = *(a1 + 8);
  if (v13 != &v16)
  {
    v14 = *v13;
    *v13 = 0;
    v17 = v14;
    *v13 = v16;
    v16 = 0;
    sub_100005978(&v17);
  }

  sub_100005978(&v16);
  if (!**a1 || !**(a1 + 8))
  {
    return 0;
  }

  std::string::operator=(*(a1 + 16), a5);
  **(a1 + 24) = a4;
  return 1;
}

void sub_1007221F8(os_log_t *a1, uint64_t a2, const __CFDictionary **a3)
{
  v6 = *a1;
  if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 136315138;
    *(&buf + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I %s", &buf, 0xCu);
  }

  v7 = *a3;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 0x40000000;
  v8[2] = sub_1007295C8;
  v8[3] = &unk_101E76A58;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 0x40000000;
  v11 = sub_100729694;
  v12 = &unk_101E76A80;
  v13 = v8;
  v8[4] = a1;
  context = &buf;
  CFDictionaryApplyFunction(v7, sub_10072973C, &context);
}

uint64_t sub_100722348(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == 1)
  {
    sub_100729758(a1, a2);
  }

  else
  {
    sub_100010180(a1, a2);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = 1;
  }

  return a1;
}

void sub_1007223A0(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"kPRIBundleDir");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
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

  v37 = v7;
  v8 = CFDictionaryGetValue(*(a1 + 88), @"kPRIFileName");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v36 = v11;
  v12 = CFDictionaryGetValue(*(a1 + 88), @"kPRIFileVersion");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    v14 = v13 == CFStringGetTypeID();
  }

  else
  {
    v14 = 0;
  }

  v15 = CFDictionaryGetValue(*(a1 + 88), @"kPRIFileBundleID");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFStringGetTypeID())
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v35 = v18;
  v19 = CFDictionaryGetValue(*(a1 + 88), @"kPRIFileBundleVersion");
  if (v19)
  {
    v20 = CFGetTypeID(v19);
    v21 = v20 == CFStringGetTypeID();
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v11 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  if ((v23 & v14) == 1 && v18 && v21)
  {
    *buf = 0;
    v33 = 0;
    v34 = 0;
    sub_1000481D4(buf);
    v30[0] = 0;
    v30[1] = 0;
    v31 = 0;
    sub_1000481D4(v30);
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    sub_1000481D4(__p);
    v24 = *(a1 + 80);
    v25 = *(a1 + 84);
    v26 = *(a1 + 96);
    sub_1000224C8(v38, a2);
    sub_100722690(a1 + 16, v24, v25, buf, v30, __p, v26);
    sub_10000FF50(v38);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v27 = **(a1 + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I The contents of PRI file config dictionary is not correct", buf, 2u);
    }
  }
}

void sub_10072262C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10000FF50(&a31);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100722690(uint64_t a1, int a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v11 = a2;
  v10 = a3;
  v9 = a7;
  v7 = *(a1 + 24);
  if (!v7)
  {
    sub_100022DB4();
  }

  return (*(*v7 + 48))(v7, &v11, &v10, a4, a5, a6, &v9);
}

uint64_t sub_1007226F4(uint64_t a1)
{
  v36 = 0;
  v2 = (a1 + 88);
  if (*(a1 + 88))
  {
    cf = 0;
    FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
    sub_100720BA4(a1, FileConfigurationKeyNameForType, buf);
    sub_100010180(&cf, buf);
    sub_10000A1EC(buf);
    v4 = *(a1 + 8);
    if (!cf)
    {
      v8 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N No cached PRI file configuration", buf, 2u);
      }

      goto LABEL_10;
    }

    v34 = cf;
    CFRetain(cf);
    sub_1007221F8(v4, "Cached PRI file configuration", &v34);
    sub_10001021C(&v34);
    v5 = *(a1 + 8);
    sub_100010024(&v33, v2);
    sub_1007221F8(v5, "Intended PRI file configuration", &v33);
    sub_10001021C(&v33);
    if (CFEqual(cf, *v2))
    {
      v6 = **(a1 + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Cached PRI file configuration is same as the one intended to be pushed, bailing out", buf, 2u);
      }

      goto LABEL_11;
    }

    Value = CFDictionaryGetValue(cf, @"kPRIFileBundleID");
    v11 = CFDictionaryGetValue(*v2, @"kPRIFileBundleID");
    if (Value && v11 && !CFEqual(Value, v11))
    {
      v18 = **(a1 + 8);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_10:
        v36 = 1;
LABEL_11:
        sub_10001021C(&cf);
        return v36;
      }

      memset(buf, 0, sizeof(buf));
      v38 = 0;
      ctu::cf::assign();
      v32 = v38;
      *__p = *buf;
      v19 = SHIBYTE(v38);
      v20 = *buf;
      memset(buf, 0, sizeof(buf));
      v38 = 0;
      ctu::cf::assign();
      v21 = __p;
      if (v19 < 0)
      {
        v21 = v20;
      }

      *v29 = *buf;
      v30 = v38;
      v22 = v29;
      if (v38 < 0)
      {
        v22 = *buf;
      }

      v39 = 136446466;
      *v40 = v21;
      v41 = 2082;
      v42 = v22;
      v23 = "#I PRI bundle ID mismatch between cached (%{public}s) and intended (%{public}s)";
    }

    else
    {
      v12 = CFDictionaryGetValue(cf, @"kPRIFileName");
      v13 = CFDictionaryGetValue(*v2, @"kPRIFileName");
      if (!v12 || !v13 || CFEqual(v12, v13))
      {
        v14 = **(a1 + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Cached PRI file configuration is different than the one intended, checking the version number", buf, 2u);
        }

        v29[0] = 0;
        v29[1] = 0;
        v15 = cf;
        theDict = cf;
        if (cf)
        {
          CFRetain(cf);
          v15 = theDict;
        }

        v16 = CFDictionaryGetValue(v15, @"kPRIFileVersion");
        if (v16 && (v17 = CFGetTypeID(v16), v17 == CFStringGetTypeID()))
        {
          memset(buf, 0, sizeof(buf));
          v38 = 0;
          ctu::cf::assign();
          *__p = *buf;
          v32 = v38;
        }

        else
        {
          __p[0] = 0;
          __p[1] = 0;
          v32 = 0;
        }

        sub_100808C80();
      }

      v18 = **(a1 + 8);
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_10;
      }

      memset(buf, 0, sizeof(buf));
      v38 = 0;
      ctu::cf::assign();
      v32 = v38;
      *__p = *buf;
      v24 = SHIBYTE(v38);
      v25 = *buf;
      memset(buf, 0, sizeof(buf));
      v38 = 0;
      ctu::cf::assign();
      v26 = __p;
      if (v24 < 0)
      {
        v26 = v25;
      }

      *v29 = *buf;
      v30 = v38;
      v27 = v29;
      if (v38 < 0)
      {
        v27 = *buf;
      }

      v39 = 136446466;
      *v40 = v26;
      v41 = 2082;
      v42 = v27;
      v23 = "#I PRI file name mismatch between cached (%{public}s) and intended (%{public}s)";
    }

    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v23, &v39, 0x16u);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(__p[0]);
    }

    goto LABEL_10;
  }

  v7 = **(a1 + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#E No valid pri config?", buf, 2u);
  }

  return v36;
}

void sub_100722EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22, int a23, __int16 a24, char a25, char a26, int a27, const void *a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (v36 < 0)
  {
    operator delete(v35);
  }

  sub_10001021C(&a28);
  _Unwind_Resume(a1);
}

void sub_100723020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  sub_10000A1EC(va);
  JUMPOUT(0x100723008);
}

BOOL sub_100723038(_BYTE **a1, uint64_t a2, int a3, int a4)
{
  if (a3 != a4)
  {
    v8 = **(*a1 + 1);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 136315650;
      v11 = a2;
      v12 = 1024;
      v13 = a3;
      v14 = 1024;
      v15 = a4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#N %s version mismatch between cache (%d) and bundle (%d)", &v10, 0x18u);
    }

    *a1[1] = 1;
  }

  return a3 == a4;
}

const void **sub_100723128@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  theArray = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  __dst.__r_.__value_.__r.__words[0] = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &__dst);
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
  (*(*v12 + 80))(&buf, v12, *(a1 + 80), 1, @"EFSFiles", 0, 0);
  sub_10006DD00(&theArray, &buf.__r_.__value_.__l.__data_);
  sub_10000A1EC(&buf.__r_.__value_.__l.__data_);
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (theArray)
  {
    if (CFArrayGetCount(theArray))
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
      v15 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v16 = CFGetTypeID(ValueAtIndex);
        if (v16 == CFDictionaryGetTypeID())
        {
          Count = CFDictionaryGetCount(v15);
          keys = 0;
          v80 = 0;
          v81 = 0;
          __dst.__r_.__value_.__r.__words[0] = 0;
          sub_1002C40F0(&keys, Count);
          values = 0;
          v77 = 0;
          v78 = 0;
          __dst.__r_.__value_.__r.__words[0] = 0;
          sub_1002C40F0(&values, Count);
          CFDictionaryGetKeysAndValues(v15, keys, values);
          v18 = *keys;
          if (*keys)
          {
            v19 = CFGetTypeID(*keys);
            if (v19 == CFStringGetTypeID())
            {
              v20 = v18;
            }

            else
            {
              v20 = 0;
            }
          }

          else
          {
            v20 = 0;
          }

          v75 = v20;
          v21 = values;
          v22 = *values;
          if (!*values)
          {
LABEL_120:
            v77 = v21;
            operator delete(v21);
LABEL_121:
            if (keys)
            {
              v80 = keys;
              operator delete(keys);
            }

            return sub_100010250(&theArray);
          }

          v23 = CFGetTypeID(*values);
          if (v23 != CFStringGetTypeID() || !v75)
          {
LABEL_119:
            v21 = values;
            if (!values)
            {
              goto LABEL_121;
            }

            goto LABEL_120;
          }

          v72 = 0;
          v73 = 0;
          v74 = 0;
          v24 = Registry::getServiceMap(*(a1 + 64));
          v25 = v24;
          if ((v26 & 0x8000000000000000) != 0)
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

          std::mutex::lock(v24);
          __dst.__r_.__value_.__r.__words[0] = v26;
          v30 = sub_100009510(&v25[1].__m_.__sig, &__dst);
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
              v33 = 0;
              goto LABEL_31;
            }
          }

          else
          {
            v32 = 0;
          }

          std::mutex::unlock(v25);
          v31 = 0;
          v33 = 1;
LABEL_31:
          (*(*v32 + 128))(&v72, v32, *(a1 + 80));
          if ((v33 & 1) == 0)
          {
            sub_100004A34(v31);
          }

          v70[0] = 0;
          v70[1] = 0;
          v71 = 0;
          if (v74 >= 0)
          {
            v34 = HIBYTE(v74);
          }

          else
          {
            v34 = v73;
          }

          memset(&__dst, 0, sizeof(__dst));
          p_dst = &__dst;
          sub_1000677C4(&__dst, v34 + 1);
          if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            p_dst = __dst.__r_.__value_.__r.__words[0];
          }

          if (v34)
          {
            if (v74 >= 0)
            {
              v36 = &v72;
            }

            else
            {
              v36 = v72;
            }

            memmove(p_dst, v36, v34);
          }

          *(&p_dst->__r_.__value_.__l.__data_ + v34) = 47;
          sub_1000481D4(&buf);
          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_buf = &buf;
          }

          else
          {
            p_buf = buf.__r_.__value_.__r.__words[0];
          }

          if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = buf.__r_.__value_.__l.__size_;
          }

          v39 = std::string::append(&__dst, p_buf, size);
          v40 = *&v39->__r_.__value_.__l.__data_;
          v71 = v39->__r_.__value_.__r.__words[2];
          *v70 = v40;
          v39->__r_.__value_.__l.__size_ = 0;
          v39->__r_.__value_.__r.__words[2] = 0;
          v39->__r_.__value_.__r.__words[0] = 0;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          v68 = 0;
          v69 = 0;
          Registry::getFileSystemInterface(&v68, *(a1 + 64));
          if (((*(*v68 + 88))(v68, v70) & 1) == 0)
          {
            v41 = **(a1 + 8);
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = v70;
              if (v71 < 0)
              {
                v42 = v70[0];
              }

              LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
              *(__dst.__r_.__value_.__r.__words + 4) = v42;
              _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "#N EFS file %{public}s does not exist", &__dst, 0xCu);
            }

            goto LABEL_113;
          }

          value = 0;
          (*(*v68 + 136))(&__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            buf = __p;
          }

          v83 = 0;
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
          }

          else
          {
            __dst = buf;
          }

          v84 = 0;
          if (ctu::cf::convert_copy())
          {
            v43 = v83;
            v83 = v84;
            v85 = v43;
            sub_100005978(&v85);
          }

          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }

          value = v83;
          v83 = 0;
          sub_100005978(&v83);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v44 = **(a1 + 8);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            sub_10082F9B4(&__dst);
            v45 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
            LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
            *(buf.__r_.__value_.__r.__words + 4) = v45;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "#I EFS file bundle directory: %{public}s", &buf, 0xCu);
            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
            }
          }

          v46 = Registry::getServiceMap(*(a1 + 64));
          v47 = v46;
          if ((v48 & 0x8000000000000000) != 0)
          {
            v49 = (v48 & 0x7FFFFFFFFFFFFFFFLL);
            v50 = 5381;
            do
            {
              v48 = v50;
              v51 = *v49++;
              v50 = (33 * v50) ^ v51;
            }

            while (v51);
          }

          std::mutex::lock(v46);
          __dst.__r_.__value_.__r.__words[0] = v48;
          v52 = sub_100009510(&v47[1].__m_.__sig, &__dst);
          if (v52)
          {
            v54 = v52[3];
            v53 = v52[4];
            if (v53)
            {
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v47);
              atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v53);
              v55 = 0;
LABEL_86:
              v85 = 0;
              if (v74 >= 0)
              {
                v56 = &v72;
              }

              else
              {
                v56 = v72;
              }

              v85 = (*(*v54 + 24))(v54, v56);
              v57 = **(a1 + 8);
              if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
              {
                sub_10082F9B4(&__dst);
                v58 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
                LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
                *(buf.__r_.__value_.__r.__words + 4) = v58;
                _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "#I EFS file bundle ID: %{public}s", &buf, 0xCu);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }
              }

              v84 = 0;
              if (v74 >= 0)
              {
                v59 = &v72;
              }

              else
              {
                v59 = v72;
              }

              v84 = (*(*v54 + 40))(v54, v59);
              v60 = **(a1 + 8);
              if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
              {
                sub_10082F9B4(&__dst);
                v61 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
                LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
                *(buf.__r_.__value_.__r.__words + 4) = v61;
                _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "#I EFS file bundle version: %{public}s", &buf, 0xCu);
                if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
                {
                  operator delete(__dst.__r_.__value_.__l.__data_);
                }
              }

              buf.__r_.__value_.__r.__words[0] = 0;
              Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
              if (Mutable)
              {
                v63 = buf.__r_.__value_.__r.__words[0];
                buf.__r_.__value_.__r.__words[0] = Mutable;
                __dst.__r_.__value_.__r.__words[0] = v63;
                sub_1000296E0(&__dst.__r_.__value_.__l.__data_);
              }

              CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kEFSBundleDir", value);
              CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kEFSFileName", v75);
              CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kEFSFilePath", v22);
              CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kEFSFileBundleID", v85);
              CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kEFSFileBundleVersion", v84);
              v64 = **(a1 + 8);
              if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
              {
                LODWORD(__dst.__r_.__value_.__l.__data_) = 138543362;
                *(__dst.__r_.__value_.__r.__words + 4) = buf.__r_.__value_.__r.__words[0];
                _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "#I EFS configuration: %{public}@", &__dst, 0xCu);
              }

              __dst.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
              if (buf.__r_.__value_.__r.__words[0])
              {
                CFRetain(buf.__r_.__value_.__l.__data_);
              }

              __dst.__r_.__value_.__s.__data_[8] = 0;
              sub_100722348(a2, &__dst);
              sub_1000296E0(&__dst.__r_.__value_.__l.__data_);
              sub_1000296E0(&buf.__r_.__value_.__l.__data_);
              sub_100005978(&v84);
              sub_100005978(&v85);
              if ((v55 & 1) == 0)
              {
                sub_100004A34(v53);
              }

              sub_100005978(&value);
LABEL_113:
              if (v69)
              {
                sub_100004A34(v69);
              }

              if (SHIBYTE(v71) < 0)
              {
                operator delete(v70[0]);
              }

              if (SHIBYTE(v74) < 0)
              {
                operator delete(v72);
              }

              goto LABEL_119;
            }
          }

          else
          {
            v54 = 0;
          }

          std::mutex::unlock(v47);
          v53 = 0;
          v55 = 1;
          goto LABEL_86;
        }
      }
    }
  }

  return sub_100010250(&theArray);
}

void sub_100723B24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, const void *a38, const void *a39, __int16 a40, char a41, char a42)
{
  sub_100005978(&a39);
  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  if (a32)
  {
    operator delete(a32);
  }

  if (a35)
  {
    operator delete(a35);
  }

  sub_100010250(&a38);
  if (*(v42 + 16) == 1)
  {
    sub_10001021C(v42);
  }

  _Unwind_Resume(a1);
}

void sub_100723D24(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"kEFSBundleDir");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
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

  v37 = v7;
  v8 = CFDictionaryGetValue(*(a1 + 88), @"kEFSFileName");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v36 = v11;
  v12 = CFDictionaryGetValue(*(a1 + 88), @"kEFSFilePath");
  if (v12)
  {
    v13 = v12;
    v14 = CFGetTypeID(v12);
    if (v14 == CFStringGetTypeID())
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  v35 = v15;
  v16 = CFDictionaryGetValue(*(a1 + 88), @"kEFSFileBundleID");
  if (v16)
  {
    v17 = CFGetTypeID(v16);
    v18 = v17 == CFStringGetTypeID();
  }

  else
  {
    v18 = 0;
  }

  v19 = CFDictionaryGetValue(*(a1 + 88), @"kEFSFileBundleVersion");
  if (v19)
  {
    v20 = CFGetTypeID(v19);
    v21 = v20 == CFStringGetTypeID();
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v11 == 0;
  }

  else
  {
    v22 = 1;
  }

  v24 = !v22 && v15 != 0;
  if ((v24 & v18) == 1 && v21)
  {
    *buf = 0;
    v33 = 0;
    v34 = 0;
    sub_1000481D4(buf);
    v30[0] = 0;
    v30[1] = 0;
    v31 = 0;
    sub_1000481D4(v30);
    __p[0] = 0;
    __p[1] = 0;
    v29 = 0;
    sub_1000481D4(__p);
    v25 = *(a1 + 80);
    v26 = *(a1 + 96);
    sub_1000224C8(v38, a2);
    sub_100722690(a1 + 16, v25, 5, buf, v30, __p, v26);
    sub_10000FF50(v38);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v31) < 0)
    {
      operator delete(v30[0]);
    }

    if (SHIBYTE(v34) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v27 = **(a1 + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I The contents of EFS file config dictionary is not correct", buf, 2u);
    }
  }
}

void sub_100723FAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10000FF50(&a31);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100724010(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v15 = 0;
    FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
    sub_100720BA4(a1, FileConfigurationKeyNameForType, buf);
    sub_100010180(&v15, buf);
    sub_10000A1EC(buf);
    v3 = v15;
    v4 = **(a1 + 8);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 88);
        *buf = 138412546;
        v17 = v3;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached EFS file configuration %@, intended %@", buf, 0x16u);
        v3 = v15;
      }

      v7 = CFEqual(v3, *(a1 + 88));
      v8 = **(a1 + 8);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Cached EFS file configuration is same as the one intended to be pushed, bailing out", buf, 2u);
        }

        v10 = 0;
        goto LABEL_17;
      }

      if (v9)
      {
        *buf = 0;
        v12 = "#I Cached EFS file configuration is different than the one intended, checking the version number";
        v13 = v8;
        goto LABEL_15;
      }
    }

    else if (v5)
    {
      *buf = 0;
      v12 = "#I No cached EFS file configuration";
      v13 = v4;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }

    v10 = 1;
LABEL_17:
    sub_10001021C(&v15);
    return v10;
  }

  v11 = **(a1 + 8);
  v10 = 0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No valid efs config?", buf, 2u);
    return 0;
  }

  return v10;
}

void sub_100724218(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **sub_100724244@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = theDict;
    theDict = Mutable;
    __dst.__r_.__value_.__r.__words[0] = v5;
    sub_1000296E0(&__dst.__r_.__value_.__l.__data_);
  }

  v71 = 0;
  sub_10072084C(a1, @"PRLFileName", &__dst.__r_.__value_.__l.__data_);
  sub_100060DE8(&v71, &__dst.__r_.__value_.__l.__data_);
  sub_10000A1EC(&__dst.__r_.__value_.__l.__data_);
  v6 = v71;
  v7 = **(a1 + 8);
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      sub_10082F9B4(&__dst);
      v9 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I PRL file in carrier bundle: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    ServiceMap = Registry::getServiceMap(*(a1 + 64));
    v11 = ServiceMap;
    if ((v12 & 0x8000000000000000) != 0)
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
    __dst.__r_.__value_.__r.__words[0] = v12;
    v16 = sub_100009510(&v11[1].__m_.__sig, &__dst);
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
        goto LABEL_20;
      }
    }

    else
    {
      v18 = 0;
    }

    std::mutex::unlock(v11);
    v17 = 0;
    v19 = 1;
LABEL_20:
    (*(*v18 + 128))(&v68, v18, *(a1 + 80));
    if ((v19 & 1) == 0)
    {
      sub_100004A34(v17);
    }

    v66[0] = 0;
    v66[1] = 0;
    v67 = 0;
    if (v70 >= 0)
    {
      v20 = HIBYTE(v70);
    }

    else
    {
      v20 = v69;
    }

    memset(&__dst, 0, sizeof(__dst));
    p_dst = &__dst;
    sub_1000677C4(&__dst, v20 + 1);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if (v20)
    {
      if (v70 >= 0)
      {
        v22 = &v68;
      }

      else
      {
        v22 = v68;
      }

      memmove(p_dst, v22, v20);
    }

    *(&p_dst->__r_.__value_.__l.__data_ + v20) = 47;
    sub_10082F9B4(&buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = buf.__r_.__value_.__l.__size_;
    }

    v25 = std::string::append(&__dst, p_buf, size);
    v26 = *&v25->__r_.__value_.__l.__data_;
    v67 = v25->__r_.__value_.__r.__words[2];
    *v66 = v26;
    v25->__r_.__value_.__l.__size_ = 0;
    v25->__r_.__value_.__r.__words[2] = 0;
    v25->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v64 = 0;
    v65 = 0;
    Registry::getFileSystemInterface(&v64, *(a1 + 64));
    if (((*(*v64 + 88))(v64, v66) & 1) == 0)
    {
      v29 = **(a1 + 8);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v66;
        if (v67 < 0)
        {
          v30 = v66[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
        *(__dst.__r_.__value_.__r.__words + 4) = v30;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "#N PRL file %{public}s does not exist", &__dst, 0xCu);
      }

      goto LABEL_132;
    }

    CFDictionarySetValue(theDict, @"kPRLFileName", v71);
    v27 = **(a1 + 8);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      sub_10082F9B4(&__dst);
      v28 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v28;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I PRL file name: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    value = 0;
    (*(*v64 + 136))(&__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = __p;
    }

    v73 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = buf;
    }

    v74 = 0;
    if (ctu::cf::convert_copy())
    {
      v31 = v73;
      v73 = v74;
      v75 = v31;
      sub_100005978(&v75);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    value = v73;
    v73 = 0;
    sub_100005978(&v73);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    v32 = **(a1 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      sub_10082F9B4(&__dst);
      v33 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I PRL file bundle directory: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    CFDictionarySetValue(theDict, @"kPRLBundleDir", value);
    v34 = Registry::getServiceMap(*(a1 + 64));
    v35 = v34;
    if ((v36 & 0x8000000000000000) != 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    __dst.__r_.__value_.__r.__words[0] = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, &__dst);
    if (v40)
    {
      v42 = v40[3];
      v41 = v40[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = 0;
        goto LABEL_81;
      }
    }

    else
    {
      v42 = 0;
    }

    std::mutex::unlock(v35);
    v41 = 0;
    v43 = 1;
LABEL_81:
    v61 = 0;
    if (v70 >= 0)
    {
      v44 = &v68;
    }

    else
    {
      v44 = v68;
    }

    v45 = (*(*v42 + 24))(v42, v44);
    v61 = v45;
    v46 = **(a1 + 8);
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      sub_10082F9B4(&__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__dst;
      }

      else
      {
        v47 = __dst.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "#I PRL file bundle ID: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v45 = v61;
    }

    CFDictionarySetValue(theDict, @"kPRLFileBundleID", v45);
    v60 = 0;
    if (v70 >= 0)
    {
      v48 = &v68;
    }

    else
    {
      v48 = v68;
    }

    v49 = (*(*v42 + 40))(v42, v48);
    v60 = v49;
    v50 = **(a1 + 8);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      sub_10082F9B4(&__dst);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v51 = &__dst;
      }

      else
      {
        v51 = __dst.__r_.__value_.__r.__words[0];
      }

      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v51;
      _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, "#I PRL file bundle version: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v49 = v60;
    }

    CFDictionarySetValue(theDict, @"kPRLFileBundleVersion", v49);
    v59 = 0;
    sub_10072084C(a1, @"PrlName", &__dst.__r_.__value_.__l.__data_);
    sub_10010B240(&v59, &__dst.__r_.__value_.__l.__data_);
    sub_10000A1EC(&__dst.__r_.__value_.__l.__data_);
    if (v59)
    {
      CFDictionarySetValue(theDict, @"kPRLFileVersion", v59);
    }

    v58 = 0;
    sub_10072084C(a1, @"PrlPushFlag", &__dst.__r_.__value_.__l.__data_);
    sub_10002FE1C(&v58, &__dst.__r_.__value_.__l.__data_);
    sub_10000A1EC(&__dst.__r_.__value_.__l.__data_);
    if (v58)
    {
      CFDictionarySetValue(theDict, @"kPRLMandatoryPushFlag", v58);
    }

    if (*(a1 + 127) < 0)
    {
      v52 = *(a1 + 112);
      if (v52)
      {
        v57 = 0;
        sub_100005F2C(&v56, *(a1 + 104), v52);
        goto LABEL_110;
      }
    }

    else if (*(a1 + 127))
    {
      v56 = *(a1 + 104);
      v57 = 0;
LABEL_110:
      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&buf, v56.__r_.__value_.__l.__data_, v56.__r_.__value_.__l.__size_);
      }

      else
      {
        buf = v56;
      }

      v73 = 0;
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
      }

      else
      {
        __dst = buf;
      }

      v74 = 0;
      if (ctu::cf::convert_copy())
      {
        v53 = v73;
        v73 = v74;
        v75 = v53;
        sub_100005978(&v75);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }

      v57 = v73;
      v73 = 0;
      sub_100005978(&v73);
      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v56.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v56.__r_.__value_.__l.__data_);
      }

      CFDictionarySetValue(theDict, @"kPushFilePath", v57);
      sub_100005978(&v57);
    }

    v54 = **(a1 + 8);
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(__dst.__r_.__value_.__l.__data_) = 138543362;
      *(__dst.__r_.__value_.__r.__words + 4) = theDict;
      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "#I PRL configuration: %{public}@", &__dst, 0xCu);
    }

    __dst.__r_.__value_.__r.__words[0] = theDict;
    if (theDict)
    {
      CFRetain(theDict);
    }

    __dst.__r_.__value_.__s.__data_[8] = 0;
    sub_100722348(a2, &__dst);
    sub_1000296E0(&__dst.__r_.__value_.__l.__data_);
    sub_100045C8C(&v58);
    sub_100029A48(&v59);
    sub_100005978(&v60);
    sub_100005978(&v61);
    if ((v43 & 1) == 0)
    {
      sub_100004A34(v41);
    }

    sub_100005978(&value);
LABEL_132:
    if (v65)
    {
      sub_100004A34(v65);
    }

    if (SHIBYTE(v67) < 0)
    {
      operator delete(v66[0]);
    }

    if (SHIBYTE(v70) < 0)
    {
      operator delete(v68);
    }

    goto LABEL_138;
  }

  if (v8)
  {
    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I No PRL file in the carrier bundle", &__dst, 2u);
  }

LABEL_138:
  sub_100005978(&v71);
  return sub_1000296E0(&theDict);
}

void sub_100724D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, const void *a19, const void *a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, const void *a27, uint64_t a28, std::__shared_weak_count *a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, void *a37, uint64_t a38, int a39, __int16 a40, char a41, char a42, const void *a43, const void *a44)
{
  sub_100005978((v47 - 168));
  if (*(v47 - 121) < 0)
  {
    operator delete(*(v47 - 144));
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100045C8C(&a17);
  sub_100029A48(&a18);
  sub_100005978(&a19);
  sub_100005978(&a20);
  if ((v46 & 1) == 0)
  {
    sub_100004A34(v45);
  }

  sub_100005978(&a27);
  if (a29)
  {
    sub_100004A34(a29);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  if (a42 < 0)
  {
    operator delete(a37);
  }

  sub_100005978(&a43);
  sub_1000296E0(&a44);
  if (*(v44 + 16) == 1)
  {
    sub_10001021C(v44);
  }

  _Unwind_Resume(a1);
}

void sub_100724FA0(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"kPushFilePath");
  if (Value && (v5 = Value, v6 = CFGetTypeID(Value), v6 == CFStringGetTypeID()))
  {
    v37 = &off_101EA1020;
    v38 = v5;
    *buf = 0;
    v35 = 0;
    v36 = 0;
    sub_1000481D4(&__p);
    sub_1009C83F0(&__p, buf);
    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    __p = 0;
    v32 = 0;
    v33 = 0;
    sub_1000481D4(&v28);
    sub_1009C8354(&v28, &__p);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    v7 = *(a1 + 80);
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v8 = *(a1 + 96);
    sub_1000224C8(v40, a2);
    sub_100722690(a1 + 16, v7, 2, buf, &__p, &v28, v8);
    sub_10000FF50(v40);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(v28);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v36) < 0)
    {
      operator delete(*buf);
    }

    FileSystemInterface::~FileSystemInterface(&v37);
  }

  else
  {
    v38 = 0;
    v9 = CFDictionaryGetValue(*(a1 + 88), @"kPRLBundleDir");
    if (v9)
    {
      v10 = v9;
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

    v37 = v12;
    v13 = CFDictionaryGetValue(*(a1 + 88), @"kPRLFileName");
    if (v13)
    {
      v14 = v13;
      v15 = CFGetTypeID(v13);
      if (v15 == CFStringGetTypeID())
      {
        v16 = v14;
      }

      else
      {
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    v17 = CFDictionaryGetValue(*(a1 + 88), @"kPRLFileBundleID");
    if (v17)
    {
      v18 = CFGetTypeID(v17);
      v19 = v18 == CFStringGetTypeID();
    }

    else
    {
      v19 = 0;
    }

    v20 = CFDictionaryGetValue(*(a1 + 88), @"kPRLFileBundleVersion");
    if (v20 && ((v21 = CFGetTypeID(v20), TypeID = CFStringGetTypeID(), v12) ? (v23 = v16 == 0) : (v23 = 1), v23 ? (v24 = 0) : (v24 = 1), (v24 & v19) == 1 && v21 == TypeID))
    {
      *buf = 0;
      v35 = 0;
      v36 = 0;
      sub_1000481D4(buf);
      __p = 0;
      v32 = 0;
      v33 = 0;
      sub_1000481D4(&__p);
      v25 = *(a1 + 80);
      v28 = 0;
      v29 = 0;
      v30 = 0;
      v26 = *(a1 + 96);
      sub_1000224C8(v39, a2);
      sub_100722690(a1 + 16, v25, 2, buf, &__p, &v28, v26);
      sub_10000FF50(v39);
      if (SHIBYTE(v30) < 0)
      {
        operator delete(v28);
      }

      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v36) < 0)
      {
        operator delete(*buf);
      }
    }

    else
    {
      v27 = **(a1 + 8);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I The contents of PRL file config dictionary is not correct", buf, 2u);
      }
    }
  }
}

void sub_100725308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, uint64_t a30, char a31)
{
  sub_10000FF50(&a31);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1007253EC(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v20 = 0;
    FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
    sub_100720BA4(a1, FileConfigurationKeyNameForType, buf);
    sub_100010180(&v20, buf);
    sub_10000A1EC(buf);
    v3 = v20;
    v4 = **(a1 + 8);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 88);
        *buf = 138412546;
        v22 = v3;
        v23 = 2112;
        v24 = v6;
        v7 = "#I Cached PRL file configuration %@, intended %@";
        v8 = v4;
        v9 = 22;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v7, buf, v9);
      }
    }

    else if (v5)
    {
      *buf = 0;
      v7 = "#I No cached PRL file configuration";
      v8 = v4;
      v9 = 2;
      goto LABEL_9;
    }

    Value = CFDictionaryGetValue(*(a1 + 88), @"kPRLMandatoryPushFlag");
    v13 = Value;
    if (Value && (v14 = CFGetTypeID(Value), v14 == CFBooleanGetTypeID()))
    {
      v15 = CFEqual(v13, kCFBooleanFalse);
      v16 = **(a1 + 8);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (!v15)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Mandatory PRL push flag is true, pushing PRL", buf, 2u);
        }

        v11 = 1;
        goto LABEL_19;
      }

      if (v17)
      {
        *buf = 0;
        v18 = "#I Mandatory PRL push flag is false, not pushing PRL";
LABEL_17:
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, v18, buf, 2u);
      }
    }

    else
    {
      v16 = **(a1 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v18 = "#I Did not find mandatory PRL push flag in bundle, not pushing PRL";
        goto LABEL_17;
      }
    }

    v11 = 0;
LABEL_19:
    sub_10001021C(&v20);
    return v11;
  }

  v10 = **(a1 + 8);
  v11 = 0;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I No valid PRL config?", buf, 2u);
    return 0;
  }

  return v11;
}

void sub_100725660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

const void **sub_10072568C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v61 = 0;
  sub_10072084C(a1, @"DMUFileName", &__dst.__r_.__value_.__l.__data_);
  sub_100060DE8(&v61, &__dst.__r_.__value_.__l.__data_);
  sub_10000A1EC(&__dst.__r_.__value_.__l.__data_);
  memset(&__p, 0, sizeof(__p));
  v4 = v61;
  v5 = **(a1 + 8);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      sub_10082F9B4(&__dst);
      v7 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I DMU file in carrier bundle: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
    buf.__r_.__value_.__r.__words[0] = v10;
    v14 = sub_100009510(&v9[1].__m_.__sig, &buf);
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
        goto LABEL_19;
      }
    }

    else
    {
      v16 = 0;
    }

    std::mutex::unlock(v9);
    v15 = 0;
    v17 = 1;
LABEL_19:
    (*(*v16 + 128))(&__dst, v16, *(a1 + 80));
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = __dst;
    *(&__dst.__r_.__value_.__s + 23) = 0;
    __dst.__r_.__value_.__s.__data_[0] = 0;
    if ((v17 & 1) == 0)
    {
      sub_100004A34(v15);
    }

    v58[0] = 0;
    v58[1] = 0;
    v59 = 0;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    memset(&__dst, 0, sizeof(__dst));
    p_dst = &__dst;
    sub_1000677C4(&__dst, size + 1);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if (size)
    {
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      memmove(p_dst, p_p, size);
    }

    *(&p_dst->__r_.__value_.__l.__data_ + size) = 47;
    sub_10082F9B4(&buf);
    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_buf = &buf;
    }

    else
    {
      p_buf = buf.__r_.__value_.__r.__words[0];
    }

    if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v23 = HIBYTE(buf.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v23 = buf.__r_.__value_.__l.__size_;
    }

    v24 = std::string::append(&__dst, p_buf, v23);
    v25 = *&v24->__r_.__value_.__l.__data_;
    v59 = v24->__r_.__value_.__r.__words[2];
    *v58 = v25;
    v24->__r_.__value_.__l.__size_ = 0;
    v24->__r_.__value_.__r.__words[2] = 0;
    v24->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    v56 = 0;
    v57 = 0;
    Registry::getFileSystemInterface(&v56, *(a1 + 64));
    v26 = (*(*v56 + 88))(v56, v58);
    v27 = **(a1 + 8);
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if ((v26 & 1) == 0)
    {
      if (v28)
      {
        v30 = v58;
        if (v59 < 0)
        {
          v30 = v58[0];
        }

        LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
        *(__dst.__r_.__value_.__r.__words + 4) = v30;
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I DMU file %{public}s does not exist", &__dst, 0xCu);
      }

      v18 = 2;
      goto LABEL_110;
    }

    if (v28)
    {
      sub_10082F9B4(&__dst);
      v29 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v29;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I DMU file name: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    value = 0;
    (*(*v56 + 136))(&v54);
    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&buf, v54.__r_.__value_.__l.__data_, v54.__r_.__value_.__l.__size_);
    }

    else
    {
      buf = v54;
    }

    v62 = 0;
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_100005F2C(&__dst, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
    }

    else
    {
      __dst = buf;
    }

    v63 = 0;
    if (ctu::cf::convert_copy())
    {
      v31 = v62;
      v62 = v63;
      v64 = v31;
      sub_100005978(&v64);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    value = v62;
    v62 = 0;
    sub_100005978(&v62);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v54.__r_.__value_.__l.__data_);
    }

    v32 = **(a1 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      sub_10082F9B4(&__dst);
      v33 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
      LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
      *(buf.__r_.__value_.__r.__words + 4) = v33;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I DMU file bundle directory: %{public}s", &buf, 0xCu);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
      }
    }

    v34 = Registry::getServiceMap(*(a1 + 64));
    v35 = v34;
    if ((v36 & 0x8000000000000000) != 0)
    {
      v37 = (v36 & 0x7FFFFFFFFFFFFFFFLL);
      v38 = 5381;
      do
      {
        v36 = v38;
        v39 = *v37++;
        v38 = (33 * v38) ^ v39;
      }

      while (v39);
    }

    std::mutex::lock(v34);
    __dst.__r_.__value_.__r.__words[0] = v36;
    v40 = sub_100009510(&v35[1].__m_.__sig, &__dst);
    if (v40)
    {
      v42 = v40[3];
      v41 = v40[4];
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v35);
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v41);
        v43 = 0;
LABEL_83:
        v64 = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v44 = &__p;
        }

        else
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        v64 = (*(*v42 + 24))(v42, v44);
        v45 = **(a1 + 8);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          sub_10082F9B4(&__dst);
          v46 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I DMU file bundle ID: %{public}s", &buf, 0xCu);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        v63 = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v47 = &__p;
        }

        else
        {
          v47 = __p.__r_.__value_.__r.__words[0];
        }

        v63 = (*(*v42 + 40))(v42, v47);
        v48 = **(a1 + 8);
        if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
        {
          sub_10082F9B4(&__dst);
          v49 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
          LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
          *(buf.__r_.__value_.__r.__words + 4) = v49;
          _os_log_impl(&_mh_execute_header, v48, OS_LOG_TYPE_DEFAULT, "#I DMU file bundle version: %{public}s", &buf, 0xCu);
          if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__dst.__r_.__value_.__l.__data_);
          }
        }

        buf.__r_.__value_.__r.__words[0] = 0;
        Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (Mutable)
        {
          v51 = buf.__r_.__value_.__r.__words[0];
          buf.__r_.__value_.__r.__words[0] = Mutable;
          __dst.__r_.__value_.__r.__words[0] = v51;
          sub_1000296E0(&__dst.__r_.__value_.__l.__data_);
        }

        CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kDMUBundleDir", value);
        CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kDMUFileName", v61);
        CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kDMUFileBundleID", v64);
        CFDictionarySetValue(buf.__r_.__value_.__l.__data_, @"kDMUFileBundleVersion", v63);
        v52 = **(a1 + 8);
        if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(__dst.__r_.__value_.__l.__data_) = 138543362;
          *(__dst.__r_.__value_.__r.__words + 4) = buf.__r_.__value_.__r.__words[0];
          _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_DEFAULT, "#I DMU configuration: %{public}@", &__dst, 0xCu);
        }

        __dst.__r_.__value_.__r.__words[0] = buf.__r_.__value_.__r.__words[0];
        if (buf.__r_.__value_.__r.__words[0])
        {
          CFRetain(buf.__r_.__value_.__l.__data_);
        }

        __dst.__r_.__value_.__s.__data_[8] = 0;
        sub_100722348(a2, &__dst);
        sub_1000296E0(&__dst.__r_.__value_.__l.__data_);
        sub_1000296E0(&buf.__r_.__value_.__l.__data_);
        sub_100005978(&v63);
        sub_100005978(&v64);
        if ((v43 & 1) == 0)
        {
          sub_100004A34(v41);
        }

        sub_100005978(&value);
        v18 = 0;
LABEL_110:
        if (v57)
        {
          sub_100004A34(v57);
        }

        if (SHIBYTE(v59) < 0)
        {
          operator delete(v58[0]);
        }

        goto LABEL_114;
      }
    }

    else
    {
      v42 = 0;
    }

    std::mutex::unlock(v35);
    v41 = 0;
    v43 = 1;
    goto LABEL_83;
  }

  if (v6)
  {
    LOWORD(__dst.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I No DMU file in the carrier bundle", &__dst, 2u);
  }

  v18 = 1;
LABEL_114:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  result = sub_100005978(&v61);
  if ((v18 | 2) != 2 && v4 && *(a2 + 16) == 1)
  {
    return sub_10001021C(a2);
  }

  return result;
}

void sub_10072600C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, const void *a32, const void *a33, __int16 a34, char a35, char a36, int a37, __int16 a38, char a39, char a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  sub_100005978(&a33);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a30 < 0)
  {
    operator delete(a25);
  }

  sub_100005978(&a32);
  if (*(v46 + 16) == 1)
  {
    sub_10001021C(v46);
  }

  _Unwind_Resume(a1);
}

void sub_1007261B0(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"kDMUBundleDir");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
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

  v31 = v7;
  v8 = CFDictionaryGetValue(*(a1 + 88), @"kDMUFileName");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v30 = v11;
  v12 = CFDictionaryGetValue(*(a1 + 88), @"kDMUFileBundleID");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    v14 = v13 == CFStringGetTypeID();
  }

  else
  {
    v14 = 0;
  }

  v15 = CFDictionaryGetValue(*(a1 + 88), @"kDMUFileBundleVersion");
  if (v15 && ((v16 = CFGetTypeID(v15), TypeID = CFStringGetTypeID(), v7) ? (v18 = v11 == 0) : (v18 = 1), v18 ? (v19 = 0) : (v19 = 1), (v19 & v14) == 1 && v16 == TypeID))
  {
    *buf = 0;
    v28 = 0;
    v29 = 0;
    sub_1000481D4(buf);
    v25[0] = 0;
    v25[1] = 0;
    v26 = 0;
    sub_1000481D4(v25);
    v20 = *(a1 + 80);
    __p[0] = 0;
    __p[1] = 0;
    v24 = 0;
    v21 = *(a1 + 96);
    sub_1000224C8(v32, a2);
    sub_100722690(a1 + 16, v20, 7, buf, v25, __p, v21);
    sub_10000FF50(v32);
    if (SHIBYTE(v24) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v26) < 0)
    {
      operator delete(v25[0]);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v22 = **(a1 + 8);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I The contents of PRI file config dictionary is not correct", buf, 2u);
    }
  }
}

void sub_1007263DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  sub_10000FF50(&a29);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100726438(uint64_t a1)
{
  if (*(a1 + 88))
  {
    v15 = 0;
    FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
    sub_100720BA4(a1, FileConfigurationKeyNameForType, buf);
    sub_100010180(&v15, buf);
    sub_10000A1EC(buf);
    v3 = v15;
    v4 = **(a1 + 8);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    if (v3)
    {
      if (v5)
      {
        v6 = *(a1 + 88);
        *buf = 138412546;
        v17 = v3;
        v18 = 2112;
        v19 = v6;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached DMU file configuration %@, intended %@", buf, 0x16u);
        v3 = v15;
      }

      v7 = CFEqual(v3, *(a1 + 88));
      v8 = **(a1 + 8);
      v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      if (v7)
      {
        if (v9)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Cached DMU file configuration is same as the one intended to be pushed, bailing out", buf, 2u);
        }

        v10 = 0;
        goto LABEL_17;
      }

      if (v9)
      {
        *buf = 0;
        v12 = "#I Cached DMU file configuration is different than the one intended, checking the version number";
        v13 = v8;
        goto LABEL_15;
      }
    }

    else if (v5)
    {
      *buf = 0;
      v12 = "#I No cached DMU file configuration";
      v13 = v4;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, 2u);
    }

    v10 = 1;
LABEL_17:
    sub_10001021C(&v15);
    return v10;
  }

  v11 = **(a1 + 8);
  v10 = 0;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I No valid dmu config?", buf, 2u);
    return 0;
  }

  return v10;
}

void sub_100726640(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10001021C(va);
  _Unwind_Resume(a1);
}

const void **sub_10072666C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    v5 = cf;
    cf = Mutable;
    *buf = v5;
    sub_1000296E0(buf);
  }

  v6 = cf;
  v7 = (a1 + 104);
  if (*(a1 + 127) < 0)
  {
    sub_100005F2C(v12, *(a1 + 104), *(a1 + 112));
  }

  else
  {
    *v12 = *v7;
    v13 = *(a1 + 120);
  }

  if (SHIBYTE(v13) < 0)
  {
    sub_100005F2C(__p, v12[0], v12[1]);
  }

  else
  {
    *__p = *v12;
    v18 = v13;
  }

  v16 = 0;
  if (SHIBYTE(v18) < 0)
  {
    sub_100005F2C(buf, __p[0], __p[1]);
  }

  else
  {
    *buf = *__p;
    v22 = v18;
  }

  v19 = 0;
  if (ctu::cf::convert_copy())
  {
    v8 = v16;
    v16 = v19;
    v20 = v8;
    sub_100005978(&v20);
  }

  if (SHIBYTE(v22) < 0)
  {
    operator delete(*buf);
  }

  v9 = v16;
  v14 = v16;
  v16 = 0;
  sub_100005978(&v16);
  if (SHIBYTE(v18) < 0)
  {
    operator delete(__p[0]);
  }

  CFDictionarySetValue(v6, @"kPushFilePath", v9);
  sub_100005978(&v14);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(v12[0]);
  }

  v10 = **(a1 + 8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 127) < 0)
    {
      v7 = *v7;
    }

    *buf = 136446210;
    *&buf[4] = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I PRL with file path %{public}s needs a file push", buf, 0xCu);
  }

  *buf = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  buf[8] = 0;
  sub_100722348(a2, buf);
  sub_1000296E0(buf);
  return sub_1000296E0(&cf);
}

void sub_1007268C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, int a16, const void *a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_100005978(&a18);
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  sub_1000296E0(&a17);
  if (*(v24 + 16) == 1)
  {
    sub_10001021C(v24);
  }

  _Unwind_Resume(a1);
}

void sub_100726970(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"kPushFilePath");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v16[0] = &off_101EA1020;
      v16[1] = v5;
      v14[0] = 0;
      v14[1] = 0;
      v15 = 0;
      sub_1000481D4(__p);
      sub_1009C83F0(__p, v14);
      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      __p[0] = 0;
      __p[1] = 0;
      v13 = 0;
      sub_1000481D4(v10);
      sub_1009C8354(v10, __p);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }

      v7 = *(a1 + 80);
      v8 = *(a1 + 84);
      v10[0] = 0;
      v10[1] = 0;
      v11 = 0;
      v9 = *(a1 + 96);
      sub_1000224C8(v17, a2);
      sub_100722690(a1 + 16, v7, v8, v14, __p, v10, v9);
      sub_10000FF50(v17);
      if (SHIBYTE(v11) < 0)
      {
        operator delete(v10[0]);
      }

      if (SHIBYTE(v13) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v15) < 0)
      {
        operator delete(v14[0]);
      }

      FileSystemInterface::~FileSystemInterface(v16);
    }
  }
}

void sub_100726B10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, char a27, uint64_t a28, char a29)
{
  sub_10000FF50(&a29);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  FileSystemInterface::~FileSystemInterface(&a27);
  _Unwind_Resume(a1);
}

const void **sub_100726B9C@<X0>(std::string::size_type a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v81[1] = 0;
  theDict = 0;
  v80 = 0;
  v81[0] = 0;
  v78 = 0;
  v79[0] = 0;
  v79[1] = 0;
  buf.__r_.__value_.__r.__words[0] = a1;
  if (capabilities::ct::supportsDERFileFormat(a1) && (v4 = sub_100727910(&buf, @"DerGriFileName", @"DerGriFileVersion", 1, 2, &v78)))
  {
    v5 = 1;
  }

  else
  {
    v4 = sub_100727910(&buf, @"GRIFileName", @"GRIVersion", 1, 1, &v78);
    v5 = v4;
  }

  if (capabilities::ct::supportsDERFileFormat(v4) && sub_100727910(&buf, @"DerGriFileName", @"DerGriFileVersion", 4, 2, &v80))
  {
    v6 = 1;
    goto LABEL_9;
  }

  v6 = sub_100727910(&buf, @"GRIFileName", @"GRIVersion", 4, 1, &v80);
  if (v5 || v6)
  {
LABEL_9:
    if (v5 && v6)
    {
      v5 = _CompareBundleVersionStrings(v79[0], v81[0]) != -1;
    }

    memset(&__p, 0, sizeof(__p));
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v7 = **(a1 + 8);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v8)
      {
        LOWORD(buf.__r_.__value_.__l.__data_) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Choosing GRI file inside the carrier bundle", &buf, 2u);
      }

      ServiceMap = Registry::getServiceMap(*(a1 + 64));
      v10 = ServiceMap;
      if ((v11 & 0x8000000000000000) != 0)
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
      __dst.__r_.__value_.__r.__words[0] = v11;
      v15 = sub_100009510(&v10[1].__m_.__sig, &__dst);
      if (v15)
      {
        v17 = v15[3];
        v16 = v15[4];
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v10);
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v16);
          v18 = 0;
LABEL_32:
          (*(*v17 + 128))(&buf, v17, *(a1 + 80));
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v30 = v79;
          __p = buf;
          *(&buf.__r_.__value_.__s + 23) = 0;
          buf.__r_.__value_.__s.__data_[0] = 0;
          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          v31 = &v78;
          goto LABEL_44;
        }
      }

      else
      {
        v17 = 0;
      }

      std::mutex::unlock(v10);
      v16 = 0;
      v18 = 1;
      goto LABEL_32;
    }

    if (v8)
    {
      LOWORD(buf.__r_.__value_.__l.__data_) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Choosing GRI file inside the default bundle", &buf, 2u);
    }

    v20 = Registry::getServiceMap(*(a1 + 64));
    v21 = v20;
    if ((v22 & 0x8000000000000000) != 0)
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

    std::mutex::lock(v20);
    __dst.__r_.__value_.__r.__words[0] = v22;
    v26 = sub_100009510(&v21[1].__m_.__sig, &__dst);
    if (v26)
    {
      v28 = v26[3];
      v27 = v26[4];
      if (v27)
      {
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v21);
        atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v27);
        v29 = 0;
LABEL_39:
        (*(*v28 + 152))(&buf, v28);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v30 = v81;
        __p = buf;
        *(&buf.__r_.__value_.__s + 23) = 0;
        buf.__r_.__value_.__s.__data_[0] = 0;
        if ((v29 & 1) == 0)
        {
          sub_100004A34(v27);
        }

        v31 = &v80;
LABEL_44:
        sub_100222570(&v74, v31);
        sub_100222570(&v75, v30);
        LOBYTE(v76) = *(v31 + 16);
        v72[0] = 0;
        v72[1] = 0;
        v73 = 0;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = __p.__r_.__value_.__l.__size_;
        }

        memset(&buf, 0, sizeof(buf));
        p_buf = &buf;
        sub_1000677C4(&buf, size + 1);
        if ((buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_buf = buf.__r_.__value_.__r.__words[0];
        }

        if (size)
        {
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            p_p = &__p;
          }

          else
          {
            p_p = __p.__r_.__value_.__r.__words[0];
          }

          memmove(p_buf, p_p, size);
        }

        *(&p_buf->__r_.__value_.__l.__data_ + size) = 47;
        sub_10082F9B4(&__dst);
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
          v36 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v36 = __dst.__r_.__value_.__l.__size_;
        }

        v37 = std::string::append(&buf, p_dst, v36);
        v38 = *&v37->__r_.__value_.__l.__data_;
        v73 = v37->__r_.__value_.__r.__words[2];
        *v72 = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        v70 = 0;
        v71 = 0;
        Registry::getFileSystemInterface(&v70, *(a1 + 64));
        v39 = (*(*v70 + 88))(v70, v72);
        v40 = **(a1 + 8);
        v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
        if ((v39 & 1) == 0)
        {
          if (v41)
          {
            v43 = v72;
            if (v73 < 0)
            {
              v43 = v72[0];
            }

            LODWORD(buf.__r_.__value_.__l.__data_) = 136446210;
            *(buf.__r_.__value_.__r.__words + 4) = v43;
            _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#N GRI file %{public}s does not exist", &buf, 0xCu);
          }

          goto LABEL_132;
        }

        if (v41)
        {
          sub_10082F9B4(&buf);
          v42 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
          *(__dst.__r_.__value_.__r.__words + 4) = v42;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "#I GRI file name: %{public}s", &__dst, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        value = 0;
        (*(*v70 + 136))(&v68);
        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&__dst, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
        }

        else
        {
          __dst = v68;
        }

        v83 = 0;
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          sub_100005F2C(&buf, __dst.__r_.__value_.__l.__data_, __dst.__r_.__value_.__l.__size_);
        }

        else
        {
          buf = __dst;
        }

        v84 = 0;
        if (ctu::cf::convert_copy())
        {
          v44 = v83;
          v83 = v84;
          v85 = v44;
          sub_100005978(&v85);
        }

        if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(buf.__r_.__value_.__l.__data_);
        }

        value = v83;
        v83 = 0;
        sub_100005978(&v83);
        if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__dst.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v68.__r_.__value_.__l.__data_);
        }

        v45 = **(a1 + 8);
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          sub_10082F9B4(&buf);
          v46 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
          LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
          *(__dst.__r_.__value_.__r.__words + 4) = v46;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I GRI file bundle directory: %{public}s", &__dst, 0xCu);
          if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(buf.__r_.__value_.__l.__data_);
          }
        }

        v47 = Registry::getServiceMap(*(a1 + 64));
        v48 = v47;
        if ((v49 & 0x8000000000000000) != 0)
        {
          v50 = (v49 & 0x7FFFFFFFFFFFFFFFLL);
          v51 = 5381;
          do
          {
            v49 = v51;
            v52 = *v50++;
            v51 = (33 * v51) ^ v52;
          }

          while (v52);
        }

        std::mutex::lock(v47);
        buf.__r_.__value_.__r.__words[0] = v49;
        v53 = sub_100009510(&v48[1].__m_.__sig, &buf);
        if (v53)
        {
          v55 = v53[3];
          v54 = v53[4];
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v48);
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v54);
            v56 = 0;
LABEL_103:
            v85 = 0;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = &__p;
            }

            else
            {
              v57 = __p.__r_.__value_.__r.__words[0];
            }

            v85 = (*(*v55 + 24))(v55, v57);
            v58 = **(a1 + 8);
            if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
            {
              sub_10082F9B4(&buf);
              v59 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
              LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
              *(__dst.__r_.__value_.__r.__words + 4) = v59;
              _os_log_impl(&_mh_execute_header, v58, OS_LOG_TYPE_DEFAULT, "#I GRI file bundle ID: %{public}s", &__dst, 0xCu);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            v84 = 0;
            if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v60 = &__p;
            }

            else
            {
              v60 = __p.__r_.__value_.__r.__words[0];
            }

            v84 = (*(*v55 + 40))(v55, v60);
            v61 = **(a1 + 8);
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              sub_10082F9B4(&buf);
              v62 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
              LODWORD(__dst.__r_.__value_.__l.__data_) = 136446210;
              *(__dst.__r_.__value_.__r.__words + 4) = v62;
              _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I GRI file bundle version: %{public}s", &__dst, 0xCu);
              if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(buf.__r_.__value_.__l.__data_);
              }
            }

            Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (Mutable)
            {
              v64 = theDict;
              theDict = Mutable;
              buf.__r_.__value_.__r.__words[0] = v64;
              sub_1000296E0(&buf.__r_.__value_.__l.__data_);
            }

            CFDictionarySetValue(theDict, @"kGRIBundleDir", value);
            CFDictionarySetValue(theDict, @"kGRIFileName", v74);
            CFDictionarySetValue(theDict, @"kGRIFileVersion", v75);
            if (v85)
            {
              CFDictionarySetValue(theDict, @"kGRIFileBundleID", v85);
            }

            if (v84)
            {
              CFDictionarySetValue(theDict, @"kGRIFileBundleVersion", v84);
            }

            v65 = *(a1 + 8);
            sub_100010180(&v67, &theDict);
            sub_1007221F8(v65, "GRI configuration", &v67);
            sub_10001021C(&v67);
            buf.__r_.__value_.__r.__words[0] = theDict;
            if (theDict)
            {
              CFRetain(theDict);
            }

            buf.__r_.__value_.__s.__data_[8] = v76;
            sub_100722348(a2, &buf);
            sub_1000296E0(&buf.__r_.__value_.__l.__data_);
            sub_100005978(&v84);
            sub_100005978(&v85);
            if ((v56 & 1) == 0)
            {
              sub_100004A34(v54);
            }

            sub_100005978(&value);
LABEL_132:
            if (v71)
            {
              sub_100004A34(v71);
            }

            if (SHIBYTE(v73) < 0)
            {
              operator delete(v72[0]);
            }

            sub_100005978(&v75);
            sub_100005978(&v74);
            if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__r_.__value_.__l.__data_);
            }

            goto LABEL_138;
          }
        }

        else
        {
          v55 = 0;
        }

        std::mutex::unlock(v48);
        v54 = 0;
        v56 = 1;
        goto LABEL_103;
      }
    }

    else
    {
      v28 = 0;
    }

    std::mutex::unlock(v21);
    v27 = 0;
    v29 = 1;
    goto LABEL_39;
  }

  v19 = **(a1 + 8);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I No GRI file in carrier or default bundles", &buf, 2u);
  }

LABEL_138:
  sub_100005978(v79);
  sub_100005978(&v78);
  sub_100005978(v81);
  sub_100005978(&v80);
  return sub_1000296E0(&theDict);
}

void sub_100727724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, const void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, const void *a36, uint64_t a37, uint64_t a38, const void *a39, uint64_t a40, uint64_t a41, const void *a42)
{
  sub_100005978((v43 - 184));
  if (*(v43 - 137) < 0)
  {
    operator delete(*(v43 - 160));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  sub_100005978(&a27);
  sub_100005978(&a26);
  if (a34 < 0)
  {
    operator delete(a29);
  }

  sub_100005978(&a37);
  sub_100005978(&a36);
  sub_100005978(&a40);
  sub_100005978(&a39);
  sub_1000296E0(&a42);
  if (*(v42 + 16) == 1)
  {
    sub_10001021C(v42);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100727910(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, const void **a6)
{
  v10 = *a1;
  cf = 0;
  ServiceMap = Registry::getServiceMap(*(v10 + 64));
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
  *buf = v14;
  v18 = sub_100009510(&v12[1].__m_.__sig, buf);
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
      goto LABEL_9;
    }
  }

  else
  {
    v20 = 0;
  }

  std::mutex::unlock(v12);
  v19 = 0;
  v21 = 1;
LABEL_9:
  (*(*v20 + 80))(&v38, v20, *(v10 + 80), a4, a2, 0, 0);
  sub_100060DE8(&cf, &v38);
  sub_10000A1EC(&v38);
  if ((v21 & 1) == 0)
  {
    sub_100004A34(v19);
  }

  if (!cf)
  {
    v31 = 0;
    goto LABEL_32;
  }

  v38 = 0;
  v22 = Registry::getServiceMap(*(v10 + 64));
  v23 = v22;
  if (v13 < 0)
  {
    v24 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
    v25 = 5381;
    do
    {
      v13 = v25;
      v26 = *v24++;
      v25 = (33 * v25) ^ v26;
    }

    while (v26);
  }

  std::mutex::lock(v22);
  *buf = v13;
  v27 = sub_100009510(&v23[1].__m_.__sig, buf);
  if (!v27)
  {
    v29 = 0;
    goto LABEL_20;
  }

  v29 = v27[3];
  v28 = v27[4];
  if (!v28)
  {
LABEL_20:
    std::mutex::unlock(v23);
    v28 = 0;
    v30 = 1;
    goto LABEL_21;
  }

  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v23);
  atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v28);
  v30 = 0;
LABEL_21:
  (*(*v29 + 80))(&v37, v29, *(v10 + 80), a4, a3, 0, 0);
  sub_100060DE8(&v38, &v37);
  sub_10000A1EC(&v37);
  if ((v30 & 1) == 0)
  {
    sub_100004A34(v28);
  }

  v31 = v38 != 0;
  if (v38)
  {
    v32 = **(v10 + 8);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = asString();
      v34 = asString();
      *buf = 136315394;
      *&buf[4] = v33;
      *&buf[12] = 2080;
      *&buf[14] = v34;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "#I Extracted GRI info of format %s from %s", buf, 0x16u);
    }

    *buf = cf;
    if (cf)
    {
      CFRetain(cf);
    }

    *&buf[8] = v38;
    if (v38)
    {
      CFRetain(v38);
    }

    buf[16] = a5;
    sub_1007297CC(a6, buf);
    sub_100005978(&buf[8]);
    sub_100005978(buf);
  }

  sub_100005978(&v38);
LABEL_32:
  sub_100005978(&cf);
  return v31;
}

void sub_100727C8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100727D14(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"kGRIBundleDir");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFStringGetTypeID())
    {
      v7 = v5;
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

  v36 = v7;
  v8 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileName");
  if (v8)
  {
    v9 = v8;
    v10 = CFGetTypeID(v8);
    if (v10 == CFStringGetTypeID())
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v35 = v11;
  v12 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileVersion");
  if (v12)
  {
    v13 = CFGetTypeID(v12);
    v14 = v13 == CFStringGetTypeID();
  }

  else
  {
    v14 = 0;
  }

  v15 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileBundleID");
  if (v15)
  {
    v16 = v15;
    v17 = CFGetTypeID(v15);
    if (v17 == CFStringGetTypeID())
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  v34 = v18;
  v19 = CFDictionaryGetValue(*(a1 + 88), @"kGRIFileBundleVersion");
  if (v19)
  {
    v20 = CFGetTypeID(v19);
    v21 = v20 == CFStringGetTypeID();
  }

  else
  {
    v21 = 0;
  }

  if (v7)
  {
    v22 = v11 == 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = !v22;
  if ((v23 & v14) == 1 && v18 && v21)
  {
    *buf = 0;
    v32 = 0;
    v33 = 0;
    sub_1000481D4(buf);
    v29[0] = 0;
    v29[1] = 0;
    v30 = 0;
    sub_1000481D4(v29);
    __p[0] = 0;
    __p[1] = 0;
    v28 = 0;
    sub_1000481D4(__p);
    v24 = *(a1 + 80);
    v25 = *(a1 + 96);
    sub_1000224C8(v37, a2);
    sub_100722690(a1 + 16, v24, 6, buf, v29, __p, v25);
    sub_10000FF50(v37);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v30) < 0)
    {
      operator delete(v29[0]);
    }

    if (SHIBYTE(v33) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v26 = **(a1 + 8);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I The contents of GRI file config dictionary is not correct", buf, 2u);
    }
  }
}

void sub_100727F9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  sub_10000FF50(&a31);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

BOOL sub_100728000(uint64_t a1)
{
  v2 = (a1 + 88);
  if (*(a1 + 88))
  {
    cf = 0;
    FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
    sub_100720BA4(a1, FileConfigurationKeyNameForType, buf);
    sub_100010180(&cf, buf);
    sub_10000A1EC(buf);
    v4 = *(a1 + 8);
    if (cf)
    {
      v33 = cf;
      CFRetain(cf);
      sub_1007221F8(v4, "Cached GRI file configuration", &v33);
      sub_10001021C(&v33);
      v5 = *(a1 + 8);
      sub_100010024(&v32, v2);
      sub_1007221F8(v5, "Intended GRI file configuration", &v32);
      sub_10001021C(&v32);
      if (CFEqual(cf, *v2))
      {
        v6 = **(a1 + 8);
        v7 = 0;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Cached GRI file configuration is same as the one intended to be pushed, bailing out", buf, 2u);
          v7 = 0;
        }

        goto LABEL_11;
      }

      Value = CFDictionaryGetValue(cf, @"kGRIFileBundleID");
      v12 = CFDictionaryGetValue(*v2, @"kGRIFileBundleID");
      if (!Value || !v12 || CFEqual(Value, v12))
      {
        v13 = **(a1 + 8);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Cached GRI file configuration is different than the one intended, checking the version number", buf, 2u);
        }

        v14 = CFDictionaryGetValue(cf, @"kGRIFileVersion");
        v15 = v14;
        if (v14)
        {
          v16 = CFGetTypeID(v14);
          if (v16 != CFStringGetTypeID())
          {
            v15 = 0;
          }
        }

        v17 = CFDictionaryGetValue(*v2, @"kGRIFileVersion");
        v18 = v17;
        if (v17)
        {
          v19 = CFGetTypeID(v17);
          if (v19 == CFStringGetTypeID())
          {
            v20 = v18;
          }

          else
          {
            v20 = 0;
          }
        }

        else
        {
          v20 = 0;
        }

        __p[0] = v20;
        v21 = _CompareBundleVersionStrings(v20, v15);
        v22 = **(a1 + 8);
        v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
        v7 = v21 == 1;
        if (v21 == 1)
        {
          if (v23)
          {
            sub_1000481D4(buf);
            v24 = v36 >= 0 ? buf : *buf;
            *v37 = 136446210;
            *&v37[4] = v24;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Newer GRI file is available with version %{public}s, need GRI push", v37, 0xCu);
            if (SHIBYTE(v36) < 0)
            {
              operator delete(*buf);
            }
          }
        }

        else if (v23)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Baseband already has the newest version, no need GRI file push", buf, 2u);
        }

        goto LABEL_11;
      }

      v25 = **(a1 + 8);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        v36 = 0;
        ctu::cf::assign();
        v38 = v36;
        *v37 = *buf;
        v26 = SHIBYTE(v36);
        v27 = *buf;
        memset(buf, 0, sizeof(buf));
        v36 = 0;
        ctu::cf::assign();
        v28 = v37;
        if (v26 < 0)
        {
          v28 = v27;
        }

        *__p = *buf;
        v31 = v36;
        v29 = __p;
        if (v36 < 0)
        {
          v29 = *buf;
        }

        *v39 = 136446466;
        v40 = v28;
        v41 = 2082;
        v42 = v29;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I GRI bundle ID mismatch between cached (%{public}s) and intended (%{public}s)", v39, 0x16u);
        if (SHIBYTE(v31) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v38) < 0)
        {
          operator delete(*v37);
        }
      }
    }

    else
    {
      v9 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I No cached GRI file configuration", buf, 2u);
      }
    }

    v7 = 1;
LABEL_11:
    sub_10001021C(&cf);
    return v7;
  }

  v8 = **(a1 + 8);
  v7 = 0;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I No GRI file config present", buf, 2u);
    return 0;
  }

  return v7;
}

void sub_10072848C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  sub_10001021C(&a18);
  _Unwind_Resume(a1);
}

void sub_100728530(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"EnableIMSISwitch");
  v4 = Value;
  v7 = 0;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v7, v4, v6);
    }
  }

  sub_1000224C8(v8, a2);
  v9 = 0;
  operator new();
}

void sub_100728678(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10000FF50(va1);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1007286A4(uint64_t a1)
{
  cf1 = 0;
  FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
  sub_100720BA4(a1, FileConfigurationKeyNameForType, &v8);
  sub_10002FE1C(&cf1, &v8);
  sub_10000A1EC(&v8);
  if (!cf1)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v3 = CFEqual(cf1, *(a1 + 88));
  v4 = **(a1 + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached IMSI Switch configuration is different than the one intended, checking the version number", &v8, 2u);
    }

    goto LABEL_8;
  }

  if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached IMSI Switch configuration is same as the one intended to be pushed, bailing out", &v8, 2u);
  }

  v6 = 0;
LABEL_9:
  sub_100045C8C(&cf1);
  return v6;
}

void sub_10072879C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

void sub_1007287C0(uint64_t a1, uint64_t a2)
{
  Value = CFDictionaryGetValue(*(a1 + 88), @"AllowsMultiplePDNConnectionsToSameAPN");
  v4 = Value;
  v7 = 0;
  if (Value)
  {
    v5 = CFGetTypeID(Value);
    if (v5 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v7, v4, v6);
    }
  }

  sub_1000224C8(v8, a2);
  v9 = 0;
  operator new();
}

void sub_100728908(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  sub_10000FF50(va1);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100728934(uint64_t a1)
{
  cf1 = 0;
  FileConfigurationKeyNameForType = getFileConfigurationKeyNameForType(*(a1 + 80), *(a1 + 84));
  sub_100720BA4(a1, FileConfigurationKeyNameForType, &v8);
  sub_10002FE1C(&cf1, &v8);
  sub_10000A1EC(&v8);
  if (!cf1)
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v3 = CFEqual(cf1, *(a1 + 88));
  v4 = **(a1 + 8);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (!v3)
  {
    if (v5)
    {
      LOWORD(v8) = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached Multi PDN configuration is different than the one intended, checking the version number", &v8, 2u);
    }

    goto LABEL_8;
  }

  if (v5)
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cached Multi PDN configuration is same as the one intended to be pushed, bailing out", &v8, 2u);
  }

  v6 = 0;
LABEL_9:
  sub_100045C8C(&cf1);
  return v6;
}

void sub_100728A2C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100045C8C(va);
  _Unwind_Resume(a1);
}

const void **sub_100728A50@<X0>(void *a1@<X8>)
{
  cf = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    cf = Mutable;
    v5 = 0;
    sub_1000296E0(&v5);
    v3 = cf;
    a1[1] = 0;
    a1[2] = 0;
    *a1 = 0;
    v5 = v3;
    if (v3)
    {
      CFRetain(v3);
    }
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    v5 = 0;
  }

  v6 = 0;
  sub_100722348(a1, &v5);
  sub_1000296E0(&v5);
  return sub_1000296E0(&cf);
}

void sub_100728B00(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_1000296E0(va);
  if (*(v2 + 16) == 1)
  {
    sub_10001021C(v2);
  }

  sub_1000296E0(va1);
  _Unwind_Resume(a1);
}

void sub_100728B38(uint64_t a1, uint64_t a2)
{
  sub_1000224C8(v2, a2);
  v2[7] = 0;
  operator new();
}

void sub_100728C48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  sub_10002B644(va);
  sub_10000FF50(v6 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100728C74(uint64_t a1)
{
  v2 = BasebandSettings::triggerAttachApnBundleCheck(*(a1 + 48));
  if ((v2 & 1) == 0)
  {
    v3 = **(a1 + 8);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Cached ATTACH_APN configuration is same as the one intended to be pushed, bailing out", v5, 2u);
    }
  }

  return v2;
}

const void **sub_100728CF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  value = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v15 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
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
  CarrierSettingsInterface::CopyValueFromActiveBundleForKeyWithDefault(&theDict, v11, @"EnableIMSISwitch", kCFBooleanFalse);
  sub_10002FE1C(&value, &theDict);
  sub_10000A1EC(&theDict);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v15 = 0;
    sub_1000296E0(&v15);
    Mutable = theDict;
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"EnableIMSISwitch", value);
    Mutable = theDict;
  }

  v15 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v16 = 0;
  sub_100722348(a2, &v15);
  sub_1000296E0(&v15);
  sub_1000296E0(&theDict);
  return sub_100045C8C(&value);
}

void sub_100728EA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, const void *a12)
{
  sub_1000296E0(&a9);
  sub_1000296E0(&a11);
  sub_100045C8C(&a12);
  if (*(v12 + 16) == 1)
  {
    sub_10001021C(v12);
  }

  _Unwind_Resume(a1);
}

const void **sub_100728F14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  value = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 64));
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
  v15 = v5;
  v9 = sub_100009510(&v4[1].__m_.__sig, &v15);
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
  CarrierSettingsInterface::CopyValueFromActiveBundleForKeyWithDefault(&theDict, v11, @"AllowsMultiplePDNConnectionsToSameAPN", kCFBooleanFalse);
  sub_10002FE1C(&value, &theDict);
  sub_10000A1EC(&theDict);
  if ((v12 & 1) == 0)
  {
    sub_100004A34(v10);
  }

  theDict = 0;
  Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (Mutable)
  {
    theDict = Mutable;
    v15 = 0;
    sub_1000296E0(&v15);
    Mutable = theDict;
  }

  if (value)
  {
    CFDictionarySetValue(Mutable, @"AllowsMultiplePDNConnectionsToSameAPN", value);
    Mutable = theDict;
  }

  v15 = Mutable;
  if (Mutable)
  {
    CFRetain(Mutable);
  }

  v16 = 0;
  sub_100722348(a2, &v15);
  sub_1000296E0(&v15);
  sub_1000296E0(&theDict);
  return sub_100045C8C(&value);
}

void sub_1007290C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10, const void *a11, const void *a12)
{
  sub_1000296E0(&a9);
  sub_1000296E0(&a11);
  sub_100045C8C(&a12);
  if (*(v12 + 16) == 1)
  {
    sub_10001021C(v12);
  }

  _Unwind_Resume(a1);
}

void sub_100729130(uint64_t a1, uint64_t a2)
{
  sub_1000224C8(v3, a2);
  v3[4] = a1;
  v3[8] = 0;
  operator new();
}

void sub_100729230(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  sub_10000FF50(&a14);
  sub_10000FF50(&a9);
  _Unwind_Resume(a1);
}

void sub_100729260(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

uint64_t sub_100729298(uint64_t a1)
{
  *a1 = off_101E766A8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_1007207D4(a1);
}

void sub_1007292F8(uint64_t a1)
{
  *a1 = off_101E766A8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_1007207D4(a1);

  operator delete();
}

void sub_100729370(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

void sub_1007293AC(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

uint64_t sub_1007293EC(uint64_t a1)
{
  *a1 = off_101E767C8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  return sub_1007207D4(a1);
}

void sub_10072944C(uint64_t a1)
{
  *a1 = off_101E767C8;
  if (*(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  sub_1007207D4(a1);

  operator delete();
}

void sub_1007294C4(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

void sub_100729500(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

void sub_10072953C(uint64_t a1)
{
  sub_1007207D4(a1);

  operator delete();
}

uint64_t sub_100729574(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1007295C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = **(a1 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v6 = a2;
    }

    else
    {
      v6 = *a2;
    }

    v7 = *a3;
    v8 = 136315394;
    v9 = v6;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I %s = %@", &v8, 0x16u);
  }
}

void sub_100729694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v8 = 0uLL;
  v9 = 0;
  ctu::cf::assign();
  v7 = 0;
  *__p = 0uLL;
  v5 = *(v4 + 16);
  *&v8 = a3;
  v5(v4, __p, &v8);
  if (SHIBYTE(v7) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10072970C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100729758(uint64_t a1, uint64_t a2)
{
  sub_100010180(&v6, a2);
  if (&v6 != a1)
  {
    v4 = *a1;
    *a1 = v6;
    v6 = 0;
    v7 = v4;
    sub_10001021C(&v7);
  }

  sub_10001021C(&v6);
  *(a1 + 8) = *(a2 + 8);
  return a1;
}

const void **sub_1007297CC(const void **result, uint64_t a2)
{
  v3 = result;
  if (result != a2)
  {
    v4 = *result;
    *result = 0;
    v6 = v4;
    *result = *a2;
    *a2 = 0;
    sub_100005978(&v6);
    v5 = v3[1];
    v3[1] = 0;
    v6 = v5;
    v3[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    result = sub_100005978(&v6);
  }

  *(v3 + 16) = *(a2 + 16);
  return result;
}

void *sub_100729848(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 16 * a3;
    do
    {
      sub_1007298C8(a1, v4, a2);
      a2 += 16;
      v6 -= 16;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1007298C8(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1004FC98C(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_1007299D4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E76AB0;
  a2[1] = v2;
  return result;
}

const void **sub_100729A00@<X0>(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  sub_10072084C(*(a1 + 8), *a2, &v5);
  sub_100060DE8(a3, &v5);
  return sub_10000A1EC(&v5);
}

void sub_100729A4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100729A60(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100729AAC(uint64_t a1)
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

uint64_t sub_100729B9C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E76B40;
  a2[1] = v2;
  return result;
}

const void **sub_100729BC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  ServiceMap = Registry::getServiceMap(*(v5 + 64));
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
  (*(*v14 + 80))(&v17, v14, *(v5 + 80), 4, v4, 0, 0);
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }

  sub_100060DE8(a3, &v17);
  return sub_10000A1EC(&v17);
}

uint64_t sub_100729D34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100729D80(void *a1)
{
  *a1 = off_101E76BC0;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_100729DC4(void *a1)
{
  *a1 = off_101E76BC0;
  sub_10000FF50((a1 + 1));

  operator delete();
}

void sub_100729ED4(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_100729F1C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100729F68(void *a1)
{
  *a1 = off_101E76C40;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_100729FAC(void *a1)
{
  *a1 = off_101E76C40;
  sub_10000FF50((a1 + 1));

  operator delete();
}

void sub_10072A0BC(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10072A104(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10072A150(void *a1)
{
  *a1 = off_101E76CC0;
  sub_10000FF50((a1 + 2));
  return a1;
}

void sub_10072A194(void *a1)
{
  *a1 = off_101E76CC0;
  sub_10000FF50((a1 + 2));

  operator delete();
}

uint64_t sub_10072A274(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E76CC0;
  a2[1] = v2;
  return sub_1000224C8((a2 + 2), a1 + 16);
}

void sub_10072A2AC(void *a1)
{
  sub_10000FF50(a1 + 16);

  operator delete(a1);
}

void sub_10072A3B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10072A3BC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10072A408(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_10000FF50(v2);
    operator delete();
  }

  return a1;
}

uint64_t *sub_10072A450(uint64_t a1)
{
  v2 = a1;
  sub_10000FFD0(a1, 1);
  return sub_10072A408(&v2);
}

void sub_10072A488(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10072A408(va);
  _Unwind_Resume(a1);
}

void *sub_10072A49C(void *a1)
{
  *a1 = off_101E76D40;
  sub_10000FF50((a1 + 1));
  return a1;
}

void sub_10072A4E0(void *a1)
{
  *a1 = off_101E76D40;
  sub_10000FF50((a1 + 1));

  operator delete();
}

uint64_t sub_10072A5C4(uint64_t a1, void *a2)
{
  *a2 = off_101E76D40;
  result = sub_1000224C8((a2 + 1), a1 + 8);
  a2[5] = *(a1 + 40);
  return result;
}

void sub_10072A620(void *a1)
{
  sub_10000FF50(a1 + 8);

  operator delete(a1);
}

uint64_t sub_10072A668(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10072A6B4(uint64_t a1, void *a2, __int128 *a3, char *a4, uint64_t a5)
{
  ctu::OsLogContext::OsLogContext(&v12, kCtLoggingSystemName, a4);
  sub_10072A7C0(a1 + 8, &v12);
  ctu::OsLogContext::~OsLogContext(&v12);
  *a1 = off_101E76DC0;
  v9 = a2[1];
  *(a1 + 40) = *a2;
  *(a1 + 48) = v9;
  if (v9)
  {
    atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C((a1 + 56), *a3, *(a3 + 1));
  }

  else
  {
    v10 = *a3;
    *(a1 + 72) = *(a3 + 2);
    *(a1 + 56) = v10;
  }

  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 144) = 0;
  *(a1 + 152) = a5;
  *(a1 + 160) = 0;
  return a1;
}

void sub_10072A790(_Unwind_Exception *a1)
{
  v3 = *(v1 + 48);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_10072A838(v1 + 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10072A7C0(uint64_t a1, const OsLogContext *a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  ctu::OsLogLogger::OsLogLogger(v4, a2);
  ctu::OsLogLogger::OsLogLogger((a1 + 24), v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  return a1;
}

void sub_10072A810(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  v4 = *(v2 + 8);
  if (v4)
  {
    std::__shared_weak_count::__release_weak(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10072A838(uint64_t a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 24));
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

uint64_t sub_10072A870(uint64_t a1)
{
  *a1 = off_101E76DC0;
  v2 = *(a1 + 160);
  if (v2 && ((*(*v2 + 16))(v2), v3 = *(a1 + 160), *(a1 + 160) = 0, v3))
  {
    (*(*v3 + 8))(v3);
    v4 = *(a1 + 160);
    *(a1 + 160) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }
  }

  else
  {
    *(a1 + 160) = 0;
  }

  v8 = (a1 + 128);
  sub_1000212F4(&v8);
  v8 = (a1 + 104);
  sub_1000212F4(&v8);
  v8 = (a1 + 80);
  sub_10072C288(&v8);
  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    sub_100004A34(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 32));
  v6 = *(a1 + 16);
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_10072A9B4(uint64_t a1)
{
  sub_10072A870(a1);

  operator delete();
}

void *sub_10072AA04(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  return result;
}

void sub_10072AA38(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_10072AA70(uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = *a1;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v6 = *(a2 + 16);
  }

  (*(v4 + 16))(v4, __p, *a3);
  if (SHIBYTE(v6) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_10072AAF8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void *sub_10072AB14(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 32);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 32) = result;
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C((a1 + 40), *(a2 + 40), *(a2 + 48));
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  return result;
}

void sub_10072AB70(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    _Block_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10072AB90(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }
}

void sub_10072ABD0(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v5 = *v5;
    }

    v6 = *a2;
    *buf = 136315394;
    *&buf[4] = v5;
    *&buf[12] = 2048;
    *&buf[14] = v6;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration will be checked in %lld seconds", buf, 0x16u);
  }

  sub_100004AA0(buf, (a1 + 8));
  v7 = *&buf[8];
  if (*&buf[8])
  {
    atomic_fetch_add_explicit((*&buf[8] + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(v7);
  }

  Registry::getTimerService(&v13, *(a1 + 40));
  v17 = 1852795252;
  v16 = *"n expiration";
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  }

  *buf = 0x6F69747265737361;
  *&buf[8] = v16;
  *&buf[16] = v17;
  buf[20] = 0;
  v19 = 20;
  ctu::TimerService::createOneShotTimerImpl();
  if (v19 < 0)
  {
    operator delete(*buf);
  }

  v8 = v15;
  v15 = 0;
  v9 = *(a1 + 160);
  *(a1 + 160) = v8;
  if (v9)
  {
    (*(*v9 + 8))(v9);
    v10 = v15;
    v15 = 0;
    if (v10)
    {
      (*(*v10 + 8))(v10);
    }
  }

  if (v14)
  {
    sub_100004A34(v14);
  }

  v11 = *(a1 + 32);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v12 = *v12;
    }

    *buf = 136315138;
    *&buf[4] = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration timer created", buf, 0xCu);
  }

  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
    std::__shared_weak_count::__release_weak(v7);
  }
}

void sub_10072AE90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17)
{
  if (*(v18 - 41) < 0)
  {
    operator delete(*(v18 - 64));
  }

  if (a15)
  {
    std::__shared_weak_count::__release_weak(a15);
  }

  if (a17)
  {
    sub_100004A34(a17);
  }

  if (v17)
  {
    std::__shared_weak_count::__release_weak(v17);
  }

  _Unwind_Resume(exception_object);
}

void sub_10072AEE0(void *a1)
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
        v6[0] = _NSConcreteStackBlock;
        v6[1] = 0x40000000;
        v6[2] = sub_10072AFA0;
        v6[3] = &unk_101E76E50;
        v6[4] = v3;
        os_unfair_lock_lock(v3 + 6);
        sub_10072AFA0(v6);
        os_unfair_lock_unlock(v3 + 6);
      }

      sub_100004A34(v5);
    }
  }
}

void sub_10072AFA8(uint64_t a1)
{
  Registry::getTimerService(buf, *(a1 + 40));
  v2 = (***buf)(*buf);
  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }

  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v4 = *v4;
    }

    *buf = 136315138;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration timer fired", buf, 0xCu);
  }

  v28 = 0;
  v29 = 0;
  v30 = 0;
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  if (v5 == v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    i = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    do
    {
      if (*(v5 + 40))
      {
        ++v7;
      }

      else
      {
        ++v8;
        v11 = *(v5 + 4) + 1000000000 * *(a1 + 152);
        v15 = v11 <= v2;
        v12 = v11 - v2;
        if (v15)
        {
          v16 = *(a1 + 32);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = a1 + 56;
            if (*(a1 + 79) < 0)
            {
              v17 = *(a1 + 56);
            }

            v18 = v5;
            if (*(v5 + 23) < 0)
            {
              v18 = *v5;
            }

            *buf = 136315394;
            *&buf[4] = v17;
            *&buf[12] = 2080;
            *&buf[14] = v18;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' by %s expired, closing related xpc connection", buf, 0x16u);
          }

          sub_10072B3FC(&v28, v5);
          ++v9;
        }

        else
        {
          v13 = v12 / 1000000000;
          v14 = v12 / 1000000000 + 1;
          if (!v10 || (v10 != v14 ? (v15 = v10 <= v13) : (v15 = 1), !v15))
          {
            v10 = v14;
          }
        }
      }

      v5 += 3;
    }

    while (v5 != v6);
    v19 = v28;
    v20 = v29;
    for (i = v10; v19 != v20; v19 += 48)
    {
      v21 = *(v19 + 24);
      object = v21;
      if (v21)
      {
        xpc_retain(v21);
      }

      else
      {
        object = xpc_null_create();
      }

      sub_100019728(a1, &object, 1);
      xpc_release(object);
      object = 0;
      *(v19 + 40) = 1;
    }
  }

  v22 = *(a1 + 32);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = (a1 + 56);
    if (*(a1 + 79) < 0)
    {
      v23 = *v23;
    }

    v24 = *(a1 + 152);
    v25 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 4);
    *buf = 136316674;
    *&buf[4] = v23;
    *&buf[12] = 2048;
    *&buf[14] = v24;
    v33 = 2048;
    v34 = v10;
    v35 = 1024;
    v36 = v7;
    v37 = 1024;
    v38 = v8;
    v39 = 1024;
    v40 = v9;
    v41 = 2048;
    v42 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I Assertion '%s' expiration timer fired result: fExpirationTimeout=%lld nextTimeout=%lld expired=%u unexpired=%u newExpired=%d fAssertions.size(): %lu", buf, 0x3Cu);
  }

  if (*(a1 + 152) && v10)
  {
    sub_10072ABD0(a1, &i);
  }

  else
  {
    v26 = *(a1 + 160);
    *(a1 + 160) = 0;
    if (v26)
    {
      (*(*v26 + 8))(v26);
    }
  }

  *buf = &v28;
  sub_10072C288(buf);
}

void sub_10072B364(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *a17, uint64_t a18)
{
  a17 = &a13;
  sub_10072C288(&a17);
  _Unwind_Resume(a1);
}

uint64_t sub_10072B3D0(uint64_t result, uint64_t a2)
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

void sub_10072B3EC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10072B3FC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_10072C3C8(a1, a2);
  }

  else
  {
    sub_10072C330(a1, a2);
    result = v3 + 48;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t sub_10072B43C(uint64_t a1)
{
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

xpc_object_t sub_10072B480(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    *(a1 + 40) = result;
  }

  if (*(a2 + 71) < 0)
  {
    return sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  v6 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 48) = v6;
  return result;
}

void sub_10072B50C(uint64_t a1)
{
  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

void sub_10072B54C(os_unfair_lock_s *a1, void **a2, uint64_t a3, char a4)
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v8 = sub_10072B668;
  v9 = &unk_101E76ED0;
  v14 = a4;
  v6 = *a2;
  v10 = a1;
  object = v6;
  if (v6)
  {
    xpc_retain(v6);
  }

  else
  {
    object = xpc_null_create();
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(__p, *a3, *(a3 + 8));
  }

  else
  {
    *__p = *a3;
    v13 = *(a3 + 16);
  }

  os_unfair_lock_lock(a1 + 6);
  v8(v7);
  os_unfair_lock_unlock(a1 + 6);
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(object);
}

void sub_10072B668(uint64_t a1)
{
  if ((*(a1 + 72) & 1) == 0)
  {
    v2 = *(a1 + 32);
    if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
    {
      v3 = *(v2 + 80);
      v4 = *(v2 + 88);
      if (v3 != v4)
      {
        while (!xpc_equal(*(v3 + 24), *(a1 + 40)))
        {
          v3 += 48;
          if (v3 == v4)
          {
            v3 = v4;
            break;
          }
        }

        v4 = *(v2 + 88);
      }

      if (v3 != v4)
      {
        sub_10072C598(&v10, (v3 + 48), v4, v3);
        sub_10072C2DC(v2 + 80, v5);
      }

      v6 = *(v2 + 32);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v7 = (v2 + 56);
        if (*(v2 + 79) < 0)
        {
          v7 = *v7;
        }

        v8 = (a1 + 48);
        if (*(a1 + 71) < 0)
        {
          v8 = *v8;
        }

        v9 = 0xAAAAAAAAAAAAAAABLL * ((*(v2 + 88) - *(v2 + 80)) >> 4);
        v10 = 136315650;
        v11 = v7;
        v12 = 2080;
        v13 = v8;
        v14 = 2048;
        v15 = v9;
        _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Assertion '%s' by %s added failed; total assertion count is now %zu", &v10, 0x20u);
      }

      if (*(v2 + 80) == *(v2 + 88))
      {
        (*(*v2 + 16))(v2);
      }
    }
  }
}

void sub_10072B818(os_unfair_lock_s *a1, void **a2, __int128 *a3, uint64_t *a4)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v10 = sub_10072B958;
  v11 = &unk_101E76F00;
  v7 = *a2;
  v12 = a1;
  object = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    object = xpc_null_create();
  }

  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&__p, *a3, *(a3 + 1));
  }

  else
  {
    __p = *a3;
    v15 = *(a3 + 2);
  }

  v8 = a4[1];
  v16 = *a4;
  v17 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock(a1 + 6);
  v10(v9);
  os_unfair_lock_unlock(a1 + 6);
  if (v17)
  {
    sub_100004A34(v17);
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(__p);
  }

  xpc_release(object);
}

void sub_10072B958(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 32);
  if (xpc_get_type(*(a1 + 40)) == &_xpc_type_connection)
  {
    v5 = *(a1 + 80);
    v14 = *(a1 + 72);
    v15 = v5;
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    (*(*v3 + 40))(v3, v2, a1 + 48, &v14);
    if (v15)
    {
      sub_100004A34(v15);
    }

    if (v3[10] == v3[11])
    {
      sub_10007C8E8(v3, 1);
    }

    if (*(a1 + 71) < 0)
    {
      sub_100005F2C(__p, *(a1 + 48), *(a1 + 56));
    }

    else
    {
      *__p = *(a1 + 48);
      v13 = *(a1 + 64);
    }

    sub_10007CAD4(v3, __p, 1);
    if (SHIBYTE(v13) < 0)
    {
      operator delete(__p[0]);
    }

    Registry::getTimerService(&v6, v3[5]);
    v8 = (**v6)();
    sub_10007CD30(__dst, (a1 + 48), v2, &v8);
    sub_10007CE20((v3 + 10), __dst);
    xpc_release(object);
    object = 0;
    if (v10 < 0)
    {
      operator delete(__dst[0]);
    }

    if (v7)
    {
      sub_100004A34(v7);
    }

    if (v3[19] && !v3[20])
    {
      sub_10072ABD0(v3, v3 + 19);
    }
  }

  else if (v3[10] == v3[11])
  {
    v4 = *(*v3 + 16);

    v4(v3);
  }
}

void sub_10072BB6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  sub_10072B43C(&a13);
  if (a11)
  {
    sub_100004A34(a11);
  }

  _Unwind_Resume(a1);
}

xpc_object_t sub_10072BBBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    result = xpc_retain(v4);
  }

  else
  {
    result = xpc_null_create();
    *(a1 + 40) = result;
  }

  if (*(a2 + 71) < 0)
  {
    result = sub_100005F2C((a1 + 48), *(a2 + 48), *(a2 + 56));
  }

  else
  {
    v6 = *(a2 + 48);
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 48) = v6;
  }

  v7 = *(a2 + 80);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10072BC60(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  xpc_release(*(a1 + 40));
  *(a1 + 40) = 0;
}

xpc_object_t sub_10072BCAC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  *(a1 + 40) = v3;
  if (v3)
  {
    return xpc_retain(v3);
  }

  result = xpc_null_create();
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_10072BD1C(os_unfair_lock_s *a1)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 0x40000000;
  v2[2] = sub_10072BDE0;
  v2[3] = &unk_101E76F60;
  v2[4] = a1;
  v3 = v2;
  return sub_10072BD90(a1 + 2, &v3);
}

uint64_t sub_10072BD90(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  v4 = (*(*a2 + 16))();
  os_unfair_lock_unlock(a1 + 4);
  return v4;
}

void sub_10072BDF4(os_unfair_lock_s *a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 0x40000000;
  v1[2] = sub_10072BECC;
  v1[3] = &unk_101E76F80;
  v1[4] = a1;
  v2 = v1;
  sub_10072BE68(a1 + 2, &v2);
}

void sub_10072BE68(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  (*(*a2 + 16))();

  os_unfair_lock_unlock(a1 + 4);
}

uint64_t sub_10072BED4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  result = sub_1005DD980(a2, 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 88) - *(a1 + 80)) >> 4));
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);
  while (v5 != v6)
  {
    result = sub_100005308(a2, v5);
    v5 += 3;
  }

  return result;
}

void sub_10072BF50(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

void sub_10072BF80(os_unfair_lock_s *a1@<X0>, NSObject **a2@<X1>, void **a3@<X2>, _OWORD *a4@<X8>)
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1174405120;
  v9[2] = sub_10072C0C0;
  v9[3] = &unk_101E76FA0;
  v7 = *a2;
  v9[4] = a1;
  object = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  v8 = *a3;
  if (*a3)
  {
    v8 = _Block_copy(v8);
  }

  aBlock = v8;
  v12 = v9;
  sub_10072C05C(a1 + 2, &v12);
  *a4 = v13;
  v13 = 0uLL;
  if (aBlock)
  {
    _Block_release(aBlock);
  }

  if (object)
  {
    dispatch_release(object);
  }
}

void sub_10072C05C(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 4);
  (*(*a2 + 16))();

  os_unfair_lock_unlock(a1 + 4);
}

void sub_10072C1D4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10072C1EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *(a1 + 40) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  result = *(a2 + 48);
  if (result)
  {
    result = _Block_copy(result);
  }

  *(a1 + 48) = result;
  return result;
}

void sub_10072C234(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void sub_10072C288(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_10072C2DC(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_10072C2DC(uint64_t a1, uint64_t a2)
{
  for (i = *(a1 + 8); i != a2; sub_1000A25D8(a1, i))
  {
    i -= 48;
  }

  *(a1 + 8) = a2;
}

xpc_object_t sub_10072C330(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
  }

  v6 = *(a2 + 3);
  *(v4 + 24) = v6;
  if (v6)
  {
    result = xpc_retain(v6);
  }

  else
  {
    result = xpc_null_create();
    *(v4 + 24) = result;
  }

  v8 = *(a2 + 4);
  *(v4 + 40) = *(a2 + 40);
  *(v4 + 32) = v8;
  *(a1 + 8) = v4 + 48;
  return result;
}

uint64_t sub_10072C3C8(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x555555555555555)
  {
    sub_1000CE3D4();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 4) >= 0x2AAAAAAAAAAAAAALL)
  {
    v6 = 0x555555555555555;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_1000A24BC(a1, v6);
  }

  v7 = 48 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v7, *a2, *(a2 + 1));
  }

  else
  {
    v8 = *a2;
    *(v7 + 16) = *(a2 + 2);
    *v7 = v8;
  }

  v9 = *(a2 + 3);
  *(v7 + 24) = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *(v7 + 24) = xpc_null_create();
  }

  v10 = *(a2 + 4);
  *(v7 + 40) = *(a2 + 40);
  *(v7 + 32) = v10;
  *&v19 = v19 + 48;
  v11 = *(a1 + 8);
  v12 = v18 + *a1 - v11;
  sub_1000A2514(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = *(a1 + 16);
  v16 = v19;
  *(a1 + 8) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_1000A2630(&v17);
  return v16;
}

void sub_10072C530(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000A2630(va);
  _Unwind_Resume(a1);
}

void sub_10072C544(uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 48;
      sub_1000A25D8(v5, v3);
    }

    while (v3 != v4);
  }
}

__int128 *sub_10072C598(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (*(a4 + 23) < 0)
      {
        operator delete(*a4);
      }

      v7 = *v5;
      *(a4 + 16) = *(v5 + 2);
      *a4 = v7;
      *(v5 + 23) = 0;
      *v5 = 0;
      v8 = *(v5 + 3);
      *(v5 + 3) = xpc_null_create();
      v9 = *(a4 + 24);
      *(a4 + 24) = v8;
      xpc_release(v9);
      v10 = *(v5 + 4);
      *(a4 + 40) = *(v5 + 40);
      *(a4 + 32) = v10;
      v5 += 3;
      a4 += 48;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10072C664(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E77078;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10072C6B8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {

    dispatch_release(v3);
  }
}

NSObject **sub_10072C710(NSObject **a1, NSObject **a2, void **a3)
{
  v5 = *a2;
  *a1 = *a2;
  if (v5)
  {
    dispatch_retain(v5);
  }

  v6 = *a3;
  if (*a3)
  {
    v6 = _Block_copy(v6);
  }

  a1[1] = v6;
  return a1;
}

void sub_10072C75C(uint64_t a1, NSObject **a2, int a3, void *a4, void *a5, uint64_t a6)
{
  ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "lazuli.chatbot.mdl");
  sub_10072CACC(a1, a2, &__p);
  ctu::OsLogContext::~OsLogContext(&__p);
  v19[0] = off_101E2B528;
  v19[1] = sub_10072CB58;
  v19[3] = v19;
  sub_10072CB84((a1 + 40));
  sub_1000A8744(v19);
  *(a1 + 48) = a3;
  if (*(a6 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a6 + 56), *(a6 + 64));
  }

  else
  {
    v12 = *(a6 + 56);
    *(a1 + 72) = *(a6 + 72);
    *(a1 + 56) = v12;
  }

  *(a1 + 80) = *a4;
  v13 = a4[1];
  *(a1 + 88) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = *a5;
  v14 = a5[1];
  *(a1 + 104) = v14;
  if (v14)
  {
    atomic_fetch_add_explicit((v14 + 16), 1uLL, memory_order_relaxed);
  }

  v15 = a4[1];
  v17 = *a4;
  v18 = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "ChatBots");
  sub_100B2FB1C();
}