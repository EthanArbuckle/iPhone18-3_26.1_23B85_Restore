void sub_10151D2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, std::__shared_weak_count *a25, void *a26, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  sub_1000062D4(v35 - 88);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25)
  {
    std::__shared_weak_count::__release_weak(a25);
  }

  if (a34)
  {
    std::__shared_weak_count::__release_weak(a34);
  }

  v37 = *(v35 - 104);
  if (v37)
  {
    std::__shared_weak_count::__release_weak(v37);
  }

  std::__shared_weak_count::__release_weak(v34);
  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10151D410(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 32);
      if (v6)
      {
        atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
        *a2 = 0;
        a2[2] = 0;
        a2[3] = 0;
        v7 = *(v6 + 16);
        if (v7)
        {
          if (std::__shared_weak_count::lock(v7))
          {
            operator new();
          }
        }

        sub_100013CC4();
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10151D594(uint64_t result, uint64_t a2)
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

void sub_10151D5B0(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10151D5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 40);
  if (v5 && (v8 = std::__shared_weak_count::lock(v5), (v15 = v8) != 0))
  {
    v9 = *(a1 + 32);
    v14 = v9;
    if (!v9)
    {
      v11 = 1;
LABEL_10:
      sub_100004A34(v8);
      return v11 & 1;
    }

    v13[0] = &v14;
    v13[1] = a3;
    v13[2] = a4;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 0x40000000;
    v16[2] = sub_101520070;
    v16[3] = &unk_101F485B8;
    v16[4] = v9 + 8;
    v16[5] = v13;
    v17 = v16;
    v10 = *(v9 + 24);
    if (*(v9 + 32))
    {
      v24 = 0;
      block = _NSConcreteStackBlock;
      v19 = 0x40000000;
      v20 = sub_10006A620;
      v21 = &unk_101F485F8;
      v22 = &v24;
      v23 = &v17;
      dispatch_async_and_wait(v10, &block);
    }

    else
    {
      v24 = 0;
      block = _NSConcreteStackBlock;
      v19 = 0x40000000;
      v20 = sub_1000596C4;
      v21 = &unk_101F485D8;
      v22 = &v24;
      v23 = &v17;
      dispatch_sync(v10, &block);
    }

    v11 = v24;
    v8 = v15;
    if (v15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t sub_10151D750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v6 = *(a1 + 40);
  if (v6 && (v9 = std::__shared_weak_count::lock(v6), (v16 = v9) != 0))
  {
    v10 = *(a1 + 32);
    v15 = v10;
    if (!v10)
    {
      v12 = 1;
LABEL_10:
      sub_100004A34(v9);
      return v12 & 1;
    }

    v14[0] = &v15;
    v14[1] = a3;
    v14[2] = a4;
    v14[3] = &v17;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 0x40000000;
    v18[2] = sub_101520120;
    v18[3] = &unk_101F48618;
    v18[4] = v10 + 8;
    v18[5] = v14;
    v19 = v18;
    v11 = *(v10 + 24);
    if (*(v10 + 32))
    {
      v26 = 0;
      block = _NSConcreteStackBlock;
      v21 = 0x40000000;
      v22 = sub_10006A620;
      v23 = &unk_101F485F8;
      v24 = &v26;
      v25 = &v19;
      dispatch_async_and_wait(v11, &block);
    }

    else
    {
      v26 = 0;
      block = _NSConcreteStackBlock;
      v21 = 0x40000000;
      v22 = sub_1000596C4;
      v23 = &unk_101F485D8;
      v24 = &v26;
      v25 = &v19;
      dispatch_sync(v11, &block);
    }

    v12 = v26;
    v9 = v16;
    if (v16)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v12 = 1;
  }

  return v12 & 1;
}

void *sub_10151D8E8(void *a1)
{
  *a1 = off_101F480C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151D934(void *a1)
{
  *a1 = off_101F480C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151DA14(uint64_t result, uint64_t a2)
{
  *a2 = off_101F480C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151DA54(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151DA64(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151DAA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[3];
  if (v5)
  {
    v8 = a1[1];
    v9 = std::__shared_weak_count::lock(v5);
    if (v9)
    {
      v10 = v9;
      if (a1[2])
      {
        v11 = *(v8 + 40);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          asString();
          v12 = v14 >= 0 ? &__p : __p;
          *buf = 136315138;
          v16 = v12;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I event: %s", buf, 0xCu);
          if (v14 < 0)
          {
            operator delete(__p);
          }
        }

        if (!*(*a4 + 49) && *(a3 + 24) - 1 <= 1)
        {
          sub_10151B798(v8);
        }
      }

      sub_100004A34(v10);
    }
  }
}

uint64_t sub_10151DC24(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151DC70(void *a1)
{
  *a1 = off_101F48148;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151DCBC(void *a1)
{
  *a1 = off_101F48148;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151DD9C(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48148;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151DDDC(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151DDEC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151DE2C(void *a1, xpc_object_t *a2)
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
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = a1[2];
      if (v13)
      {
        if (*(v13 + 376) != v5)
        {
          sub_10151B798(v13);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10151DF20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151DF6C(void *a1)
{
  *a1 = off_101F481C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151DFB8(void *a1)
{
  *a1 = off_101F481C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E098(uint64_t result, uint64_t a2)
{
  *a2 = off_101F481C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151E0D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151E0E8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151E128(void *a1, xpc *this, BOOL a3)
{
  v4 = a1[1];
  v5 = *v4;
  *v4 = xpc::dyn_cast_or_default(this, 0, a3);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9 && *(v9 + 377) != v5)
      {
        sub_10151B798(v9);
      }

      sub_100004A34(v8);
    }
  }
}

uint64_t sub_10151E1CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151E218(void *a1)
{
  *a1 = off_101F48248;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151E264(void *a1)
{
  *a1 = off_101F48248;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E344(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48248;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151E384(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151E394(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151E3D4(void *a1, xpc_object_t *a2)
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
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = a1[2];
      if (v13)
      {
        if (*(v13 + 380) != v5)
        {
          sub_10151B798(v13);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10151E4C8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151E514(void *a1)
{
  *a1 = off_101F482C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151E560(void *a1)
{
  *a1 = off_101F482C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E640(uint64_t result, uint64_t a2)
{
  *a2 = off_101F482C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151E680(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151E690(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_10151E6D0(void *a1, const xpc::object *a2)
{
  v4 = a1[1];
  bzero(v16, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v16, v4);
  read_rest_value(v4, a2);
  v5 = a1[3];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        RegisteredNetworkInfo::compare(&__p, (v8 + 384), v16);
        v9 = __p;
        v10 = __p;
        if (__p != v14)
        {
          v11 = __p;
          while (*v11 != 10)
          {
            if (++v11 == v14)
            {
              goto LABEL_10;
            }
          }

          if (v11 != v14)
          {
            goto LABEL_15;
          }

LABEL_10:
          v10 = __p;
          while (*v10 != 2)
          {
            if (++v10 == v14)
            {
              goto LABEL_16;
            }
          }
        }

        if (v10 != v14)
        {
LABEL_15:
          sub_10151B798(v8);
          v9 = __p;
        }

LABEL_16:
        if (v9)
        {
          v14 = v9;
          operator delete(v9);
        }
      }

      sub_100004A34(v7);
    }
  }

  return sub_10004543C(v16);
}

void sub_10151E814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v13);
  sub_10004543C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10151E858(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151E8A4(void *a1)
{
  *a1 = off_101F48348;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151E8F0(void *a1)
{
  *a1 = off_101F48348;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151E9D0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48348;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151EA10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151EA20(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

uint64_t sub_10151EA60(void *a1, const xpc::object *a2)
{
  v4 = a1[1];
  bzero(v16, 0x328uLL);
  RegisteredNetworkInfo::RegisteredNetworkInfo(v16, v4);
  read_rest_value(v4, a2);
  v5 = a1[3];
  if (v5)
  {
    v6 = std::__shared_weak_count::lock(v5);
    if (v6)
    {
      v7 = v6;
      v8 = a1[2];
      if (v8)
      {
        __p = 0;
        v14 = 0;
        v15 = 0;
        RegisteredNetworkInfo::compare(&__p, (v8 + 1192), v16);
        v9 = __p;
        v10 = __p;
        if (__p != v14)
        {
          v11 = __p;
          while (*v11 != 10)
          {
            if (++v11 == v14)
            {
              goto LABEL_10;
            }
          }

          if (v11 != v14)
          {
            goto LABEL_15;
          }

LABEL_10:
          v10 = __p;
          while (*v10 != 2)
          {
            if (++v10 == v14)
            {
              goto LABEL_16;
            }
          }
        }

        if (v10 != v14)
        {
LABEL_15:
          sub_10151B798(v8);
          v9 = __p;
        }

LABEL_16:
        if (v9)
        {
          v14 = v9;
          operator delete(v9);
        }
      }

      sub_100004A34(v7);
    }
  }

  return sub_10004543C(v16);
}

void sub_10151EBA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  sub_100004A34(v13);
  sub_10004543C(&a13);
  _Unwind_Resume(a1);
}

uint64_t sub_10151EBE8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151EC34(void *a1)
{
  *a1 = off_101F483C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151EC80(void *a1)
{
  *a1 = off_101F483C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151ED60(uint64_t result, uint64_t a2)
{
  *a2 = off_101F483C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151EDA0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151EDB0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151EDF0(void *a1, xpc_object_t *a2)
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
  if (v10)
  {
    v11 = std::__shared_weak_count::lock(v10);
    if (v11)
    {
      v12 = v11;
      v13 = a1[2];
      if (v13)
      {
        if (*(v13 + 2000) != v5)
        {
          sub_10151B798(v13);
        }
      }

      sub_100004A34(v12);
    }
  }
}

uint64_t sub_10151EEE4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151EF30(void *a1)
{
  *a1 = off_101F48448;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151EF7C(void *a1)
{
  *a1 = off_101F48448;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151F05C(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48448;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151F09C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151F0AC(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151F0EC(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_10035A2E4(v3, a2);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9)
      {
        if (v19 != *(v9 + 2024))
        {
LABEL_24:
          sub_10151B798(v9);
          goto LABEL_25;
        }

        v10 = v17;
        if (v17 != &v18)
        {
          v11 = *(v9 + 2008);
          while (*(v10 + 8) == *(v11 + 8) && operator==())
          {
            v12 = v10[1];
            v13 = v10;
            if (v12)
            {
              do
              {
                v10 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v10 = v13[2];
                v14 = *v10 == v13;
                v13 = v10;
              }

              while (!v14);
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
                v14 = *v16 == v11;
                v11 = v16;
              }

              while (!v14);
            }

            v11 = v16;
            if (v10 == &v18)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_24;
        }
      }

LABEL_25:
      sub_100004A34(v8);
    }
  }

  sub_100077CD4(&v17, v18);
}

void sub_10151F248(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_100004A34(v11);
  sub_100077CD4(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10151F274(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151F2C0(void *a1)
{
  *a1 = off_101F484C8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151F30C(void *a1)
{
  *a1 = off_101F484C8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151F3EC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F484C8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151F42C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151F43C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151F47C(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_1008E2524(v3, a2);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9)
      {
        if (v19 != *(v9 + 2048))
        {
LABEL_24:
          sub_10151B798(v9);
          goto LABEL_25;
        }

        v10 = v17;
        if (v17 != &v18)
        {
          v11 = *(v9 + 2032);
          while (sub_100071DF8(v10 + 4, v11 + 4) && sub_1008DFB14((v10 + 7), (v11 + 7)))
          {
            v12 = v10[1];
            v13 = v10;
            if (v12)
            {
              do
              {
                v10 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v10 = v13[2];
                v14 = *v10 == v13;
                v13 = v10;
              }

              while (!v14);
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
                v14 = *v16 == v11;
                v11 = v16;
              }

              while (!v14);
            }

            v11 = v16;
            if (v10 == &v18)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_24;
        }
      }

LABEL_25:
      sub_100004A34(v8);
    }
  }

  sub_100009970(&v17, v18);
}

void sub_10151F5D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_100004A34(v11);
  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10151F600(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10151F64C(void *a1)
{
  *a1 = off_101F48548;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10151F698(void *a1)
{
  *a1 = off_101F48548;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_10151F778(uint64_t result, uint64_t a2)
{
  *a2 = off_101F48548;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10151F7B8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10151F7C8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_10151F808(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v17 = *v3;
  v18 = v5;
  v19 = v3[2];
  if (v19)
  {
    *(v5 + 16) = &v18;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v17 = &v18;
  }

  sub_10151F9DC(v3, a2);
  v6 = a1[3];
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      v9 = a1[2];
      if (v9)
      {
        if (v19 != *(v9 + 2072))
        {
LABEL_24:
          sub_10151B798(v9);
          goto LABEL_25;
        }

        v10 = v17;
        if (v17 != &v18)
        {
          v11 = *(v9 + 2056);
          while (sub_100071DF8(v10 + 4, v11 + 4) && operator==())
          {
            v12 = v10[1];
            v13 = v10;
            if (v12)
            {
              do
              {
                v10 = v12;
                v12 = *v12;
              }

              while (v12);
            }

            else
            {
              do
              {
                v10 = v13[2];
                v14 = *v10 == v13;
                v13 = v10;
              }

              while (!v14);
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
                v14 = *v16 == v11;
                v11 = v16;
              }

              while (!v14);
            }

            v11 = v16;
            if (v10 == &v18)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_24;
        }
      }

LABEL_25:
      sub_100004A34(v8);
    }
  }

  sub_100009970(&v17, v18);
}

void sub_10151F964(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, char *a11)
{
  sub_100004A34(v11);
  sub_100009970(&a10, a11);
  _Unwind_Resume(a1);
}

uint64_t sub_10151F990(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10151F9DC(uint64_t a1, xpc_object_t *a2)
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

  sub_100009970(a1, *(a1 + 8));
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

    sub_100008EA4(v10, object, count);
    xpc_release(object[0]);
    for (i = v12; i != v10[1] || v11 != v10[0]; i = ++v12)
    {
      v9 = 0;
      object[0] = &v11;
      object[1] = i;
      sub_10003EAD4(object, &v9);
      if (xpc_get_type(v9) == &_xpc_type_dictionary)
      {
        *object = 0u;
        v8 = 0u;
        v6 = v9;
        if (v9)
        {
          xpc_retain(v9);
        }

        else
        {
          v6 = xpc_null_create();
        }

        sub_10151FC84(object, &v6);
        xpc_release(v6);
        sub_10151FDCC(a1, object);
        if (SBYTE7(v8) < 0)
        {
          operator delete(object[0]);
        }
      }

      xpc_release(v9);
    }

    xpc_release(v10[0]);
    xpc_release(v11);
  }

  xpc_release(v3);
}

void sub_10151FBE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t object, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, xpc_object_t a19, xpc_object_t a20)
{
  xpc_release(object);
  xpc_release(*(v21 - 48));
  xpc_release(v20);
  _Unwind_Resume(a1);
}

void sub_10151FC84(uint64_t a1, xpc_object_t *a2)
{
  v2 = *a2;
  v6 = v2;
  if (v2 && xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    xpc_retain(v2);
  }

  else
  {
    v2 = xpc_null_create();
    v6 = v2;
  }

  if (xpc_get_type(v2) == &_xpc_type_dictionary)
  {
    v3 = &v6;
    v4 = "first";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v3 = &v6;
    v4 = "second";
    sub_100006354(&v3, &object);
    read_rest_value();
    xpc_release(object);
    v2 = v6;
  }

  xpc_release(v2);
}

void sub_10151FD78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

uint64_t sub_10151FDCC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10151FE58();
  }

  return result;
}

void sub_10151FEF4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000E16DC(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t *sub_10151FF10(unsigned __int8 **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 280);
  v4 = v1[24];
  sub_100222570((*v1 + 272), v1 + 2);
  *(v2 + 280) = v1[24];
  sub_100222570((v2 + 288), v1 + 4);
  sub_100222570((v2 + 296), v1 + 5);
  if (v3 != v4 && *(v2 + 280) == 1)
  {
    v5 = *(v2 + 40);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I watch got connected - resending states", buf, 2u);
    }

    sub_10151BD38(v2, v2 + 336);
  }

  sub_101520004(&v8);
  return sub_1000049E0(&v7);
}

void sub_10151FFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_101520004(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101520004(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100005978((v1 + 40));
    sub_100005978((v1 + 32));
    sub_100005978((v1 + 16));
    v2 = *(v1 + 8);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_101520070(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **v1;
  sub_10005C7A4(&v7, *(v1 + 8));
  v3 = *(v1 + 16);
  sub_100060E84(&v5, v3);
  sub_1002030F8(&v6, v3 + 1);
  sub_10151B24C(v2, &v5, 0);
  sub_1002030AC(&v6);
  sub_10000A1EC(&v5);
  sub_100005978(&v7);
  return 1;
}

void sub_1015200FC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_1002030AC((v2 + 8));
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_101520120(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = **v1;
  sub_10005C7A4(&v7, *(v1 + 8));
  v3 = *(v1 + 16);
  sub_100060E84(&v5, v3);
  sub_1002030F8(&v6, v3 + 1);
  sub_10151B24C(v2, &v5, **(v1 + 24));
  sub_1002030AC(&v6);
  sub_10000A1EC(&v5);
  sub_100005978(&v7);
  return 1;
}

void sub_1015201B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, const void *);
  v6 = va_arg(va1, void);
  sub_1002030AC((v2 + 8));
  sub_10000A1EC(va);
  sub_100005978(va1);
  _Unwind_Resume(a1);
}

void *sub_1015201D4(void *a1)
{
  *a1 = off_101F48648;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101520220(void *a1)
{
  *a1 = off_101F48648;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1015202F8(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F48648;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101520330(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101520340(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101520380(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      v5 = *(a1 + 8);
      if (v5)
      {
        v6 = *(v5 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | === P2WConnectivityStatesImpl ===", buf, 2u);
          v6 = *(v5 + 40);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          if (*(v5 + 264))
          {
            v7 = "";
          }

          else
          {
            v7 = "doesn't ";
          }

          *buf = 136315138;
          *&buf[4] = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | %shave outgoing timer", buf, 0xCu);
          v6 = *(v5 + 40);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(v5 + 272);
          v9 = asStringBool(*(v5 + 280));
          v10 = *(v5 + 288);
          v11 = *(v5 + 296);
          *buf = 138413058;
          *&buf[4] = v8;
          v16 = 2080;
          v17 = v9;
          v18 = 2112;
          v19 = v10;
          v20 = 2112;
          v21 = v11;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | fCompanionDevInfo: deviceId:'%@' isActive:%s hwVer:%@ swVer:%@", buf, 0x2Au);
          v6 = *(v5 + 40);
        }

        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          sub_10138CE50(v5 + 336, buf);
          v12 = v18 >= 0 ? buf : *buf;
          v13 = 136315138;
          v14 = v12;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I  | fCompanionConnectivityStatus: %s", &v13, 0xCu);
          if (SHIBYTE(v18) < 0)
          {
            operator delete(*buf);
          }
        }
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_1015205DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101520698(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F486C8;
  a2[1] = v2;
  return result;
}

void sub_1015206C4(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#E %s", &v5, 0xCu);
  }
}

uint64_t sub_101520774(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015207C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  v13 = 0;
  if (a2 != a3)
  {
    v6 = (a2 + 8);
    do
    {
      v7 = v6 - 8;
      *v4 = *(v6 - 2);
      v8 = (v4 + 8);
      if (*(v6 + 23) < 0)
      {
        sub_100005F2C(v8, *v6, *(v6 + 1));
        v10 = v15;
      }

      else
      {
        v9 = *v6;
        *(v4 + 24) = *(v6 + 2);
        *v8 = v9;
        v10 = v4;
      }

      *(v4 + 32) = *(v6 + 3);
      v4 = v10 + 40;
      v15 = v10 + 40;
      v6 = (v6 + 40);
    }

    while (v7 + 40 != a3);
  }

  LOBYTE(v13) = 1;
  sub_10138D86C(v12);
  return v4;
}

uint64_t sub_101520898(uint64_t a1)
{
  *a1 = off_101F48748;
  sub_1000296E0((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1015208E8(uint64_t a1)
{
  *a1 = off_101F48748;
  sub_1000296E0((a1 + 32));
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

const void **sub_1015209E0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F48748;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_100029714((a2 + 32), (a1 + 32));
}

void sub_101520A34(void *a1)
{
  sub_101520BF0(a1 + 8);

  operator delete(a1);
}

void sub_101520A70(uint64_t a1)
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
        sub_100029714(&v6 + 1, (a1 + 32));
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

uint64_t sub_101520BA4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101520BF0(uint64_t a1)
{
  sub_1000296E0((a1 + 24));
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_101520C3C(const void ***a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = *(*v1 + 33);
  *(*v1 + 33) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(v2 + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "";
    *&buf[12] = 2080;
    *&buf[14] = "";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%ssending update out", buf, 0x16u);
    v4 = *(v2 + 5);
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I CompanionConnectivityStatus: ", buf, 2u);
  }

  *buf = off_101F487D8;
  *&buf[8] = v2;
  v13 = buf;
  logger::CFTypeRefLogger();
  sub_100007E44(buf);
  v5 = *(v2 + 31);
  v11 = 0;
  sub_10151B188(&v9, @"co-connectivity", v1[1]);
  v10 = 0;
  *buf = _NSConcreteStackBlock;
  *&buf[8] = 0x40000000;
  *&buf[16] = sub_101520F0C;
  v13 = &unk_101F487A8;
  v14 = v2;
  (*(*v5 + 24))(v5, &v11, @"ConnectivityStates", &v9, buf);
  sub_1002030AC(&v10);
  sub_10000A1EC(&v9);
  sub_100005978(&v11);
  sub_101520EBC(&v8);
  return sub_1000049E0(&v7);
}

void sub_101520E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va3, a2);
  va_start(va2, a2);
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  va_copy(va2, va1);
  v6 = va_arg(va2, void);
  va_copy(va3, va2);
  v8 = va_arg(va3, const void *);
  v10 = va_arg(va3, void);
  sub_1002030AC((v2 + 8));
  sub_10000A1EC(va2);
  sub_100005978(va3);
  sub_101520EBC(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_101520EBC(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000296E0((v1 + 8));
    operator delete();
  }

  return result;
}

void sub_101520F0C(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v4 = *(*(a1 + 32) + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      if (a3 > 5)
      {
        v5 = 0;
      }

      else
      {
        v5 = *&asc_101984534[4 * a3 - 4];
      }

      v6 = 136315138;
      v7 = strerror(v5);
      _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to send kCFMsgCompanionConnectivity: %s", &v6, 0xCu);
    }
  }
}

uint64_t sub_101521048(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F487D8;
  a2[1] = v2;
  return result;
}

void sub_101521074(uint64_t a1, uint64_t *a2)
{
  v3 = *(*(a1 + 8) + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v4 = a2;
    }

    else
    {
      v4 = *a2;
    }

    v5 = 136315138;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s", &v5, 0xCu);
  }
}

uint64_t sub_101521124(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101521170(uint64_t **a1)
{
  v3 = a1;
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I connectivity state requested - resending", buf, 2u);
  }

  sub_10151BD38(v1, v1 + 336);
  operator delete();
}

uint64_t sub_101521234(unsigned int *a1, char *a2, _DWORD *a3)
{
  v7 = 0;
  v8 = 0;
  v9 = 0;
  result = sub_101158300(a1, &v7, 0);
  if (!result)
  {
    if (v7 == 0x2000000000000010)
    {
      result = sub_1011584D4(&v8, 6u, &unk_101984548, a2, 0);
    }

    else
    {
      result = 2;
    }
  }

  *a3 = v8 + v9 - *a1;
  return result;
}

void CellularUsagePolicyController::createNEConfigurationStore_sync(uint64_t a1)
{
  v1 = *(a1 + 744);
  if (v1)
  {
    atomic_fetch_add_explicit((v1 + 8), 1uLL, memory_order_relaxed);
  }

  v2 = *(a1 + 216);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v4[0] = off_101F488C8;
  v4[1] = a1;
  v4[3] = v4;
  sub_1010DEE98(&v3);
}

void sub_1015213F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_10002B644(va);
  if (v9)
  {
    sub_100004A34(v9);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  _Unwind_Resume(a1);
}

void CellularUsagePolicyController::stop_sync(CellularUsagePolicyController *this)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterRemoveObserver(DistributedCenter, this, @"com.apple.LaunchServices.applicationRegistered", 0);
  CFNotificationCenterRemoveObserver(DistributedCenter, this, @"com.apple.LaunchServices.applicationUnregistered", 0);
  v3 = *(this + 56);
  *(this + 56) = 0;
  if (v3 == (this + 424))
  {
    (*(*v3 + 32))(v3);
  }

  else if (v3)
  {
    (*(*v3 + 40))(v3);
  }

  ctu::RestModule::disconnect((this + 408));
  v4 = *(this + 5);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Stopped cupolicy server", v5, 2u);
  }
}

void CellularUsagePolicyController::start_sync(NSObject **this)
{
  DistributedCenter = CFNotificationCenterGetDistributedCenter();
  CFNotificationCenterAddObserver(DistributedCenter, this, sub_1015215E4, @"com.apple.LaunchServices.applicationRegistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  CFNotificationCenterAddObserver(DistributedCenter, this, sub_1015215E4, @"com.apple.LaunchServices.applicationUnregistered", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v3 = this[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Started cupolicy server", v4, 2u);
  }
}

void sub_1015215E4(int a1, uint64_t a2, const void *a3, int a4, CFDictionaryRef theDict)
{
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"isPlaceholder");
    v9 = Value;
    buf[0] = 0;
    if (Value)
    {
      v10 = CFGetTypeID(Value);
      if (v10 == CFBooleanGetTypeID())
      {
        ctu::cf::assign(buf, v9, v11);
        LOBYTE(v9) = buf[0];
      }

      else
      {
        LOBYTE(v9) = 0;
      }
    }

    if (CFEqual(a3, @"com.apple.LaunchServices.applicationRegistered"))
    {
      *buf = CFDictionaryGetValue(theDict, @"bundleIDs");
      sub_1001FA5E0(&v14, buf);
      CellularUsagePolicyController::appsRegistered(a2, &v14, v9 & 1);
    }

    if (CFEqual(a3, @"com.apple.LaunchServices.applicationUnregistered"))
    {
      *buf = CFDictionaryGetValue(theDict, @"bundleIDs");
      sub_1001FA5E0(&v13, buf);
      CellularUsagePolicyController::appsUnRegistered(a2, &v13);
    }
  }

  else
  {
    v12 = *(a2 + 40);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Not processing App Registered Notification - empty userInfo indicates an update", buf, 2u);
    }
  }
}

void CellularUsagePolicyController::setupAwdMetrics_sync(CellularUsagePolicyController *this)
{
  sub_100004AA0(&v2, this + 1);
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

void sub_101521844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a16)
  {
    std::__shared_weak_count::__release_weak(a16);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_weak(v16);
  }

  _Unwind_Resume(exception_object);
}

void sub_101521868(void *a1)
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
        v7[0] = _NSConcreteStackBlock;
        v7[1] = 3221225472;
        v7[2] = sub_1015219A4;
        v7[3] = &unk_101E26008;
        v7[4] = v3;
        v10 = 0;
        v11 = 0;
        sub_100004AA0(&v10, (v3 + 8));
        v6 = *(v3 + 24);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3321888768;
        block[2] = sub_101522940;
        block[3] = &unk_101F48940;
        block[5] = v10;
        v9 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        block[4] = v7;
        dispatch_async(v6, block);
        if (v9)
        {
          sub_100004A34(v9);
        }

        if (v11)
        {
          sub_100004A34(v11);
        }
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_1015219A4(uint64_t a1)
{
  (*(**(*(a1 + 32) + 256) + 40))(*(*(a1 + 32) + 256), *(*(a1 + 32) + 328));

  return WISPostSimpleMetricWithUnsignedInteger();
}

uint64_t sub_101521A04(uint64_t result, uint64_t a2)
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

void sub_101521A20(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void CellularUsagePolicyController::sendDeprecatedRnfNotification_sync(uint64_t a1, int a2)
{
  sub_101521AF8(a2, &object);
  v4 = object;
  if (object)
  {
    xpc_retain(object);
  }

  else
  {
    v4 = xpc_null_create();
  }

  v2 = xpc_null_create();
  sub_10002A37C(133, &v4, &v2);
  xpc_release(v2);
  xpc_release(v4);
  v4 = 0;
  xpc_release(object);
}

void sub_101521ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

void sub_101521AF8(int a1@<W0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    *a2 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    *a2 = v5;
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
  *a2 = v6;
LABEL_9:
  xpc_release(v5);
  v18 = 0;
  ctu::cf::assign();
  *v15 = 0uLL;
  v16 = 0;
  v13 = xpc_BOOL_create(a1 == 1);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v7 = v15;
  if (v16 < 0)
  {
    v7 = v15[0];
  }

  *&v17 = a2;
  *(&v17 + 1) = v7;
  sub_10000F688(&v17, &v13, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v13);
  v13 = 0;
  v17 = 0uLL;
  v18 = 0;
  ctu::cf::assign();
  *__p = v17;
  v12 = v18;
  v9 = xpc_BOOL_create(a1 != -1);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v8 = __p;
  if (v12 < 0)
  {
    v8 = __p[0];
  }

  *&v17 = a2;
  *(&v17 + 1) = v8;
  sub_10000F688(&v17, &v9, &v10);
  xpc_release(v10);
  v10 = 0;
  xpc_release(v9);
  v9 = 0;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_101521CE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (*(v23 - 33) < 0)
  {
    operator delete(*(v23 - 56));
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  sub_100DC3ED0(v22);
  _Unwind_Resume(a1);
}

void sub_101521D4C(Registry **a1, xpc_object_t *a2, void (**a3)(void, void))
{
  v54[0] = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6)
  {
    v7 = v6;
    v54[0] = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v54[0] = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_9;
  }

  v8 = xpc_null_create();
LABEL_8:
  v54[0] = v8;
LABEL_9:
  xpc_release(v7);
  ServiceMap = Registry::getServiceMap(*a1);
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
      if (!v17)
      {
        goto LABEL_15;
      }

LABEL_23:
      v49[0] = 0;
      v49[1] = 0;
      v50 = 0;
      v47[0] = a2;
      v47[1] = "kCUPolicyBundleName";
      sub_100006354(v47, &object);
      memset(buf, 0, sizeof(buf));
      *&v43 = 0;
      xpc::dyn_cast_or_default();
      if (SBYTE7(v43) < 0)
      {
        operator delete(*buf);
      }

      xpc_release(object);
      v20 = HIBYTE(v50);
      if (v50 < 0)
      {
        v20 = v49[1];
      }

      if (!v20)
      {
        sub_1015225E0();
        v24 = qword_101FCACF0;
        if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Arguments are invalid", buf, 2u);
        }

        v45 = xpc_int64_create(22);
        if (!v45)
        {
          v45 = xpc_null_create();
        }

        *buf = v54;
        *&buf[8] = "kPosixError";
        sub_10000F688(buf, &v45, &v46);
        xpc_release(v46);
        v46 = 0;
        xpc_release(v45);
        v44 = v54[0];
        v45 = 0;
        if (v54[0])
        {
          xpc_retain(v54[0]);
        }

        else
        {
          v44 = xpc_null_create();
        }

        (a3)[2](a3, &v44);
        xpc_release(v44);
        v44 = 0;
        if (SHIBYTE(v50) < 0)
        {
          operator delete(v49[0]);
          if (v18)
          {
            goto LABEL_61;
          }
        }

        else if (v18)
        {
          goto LABEL_61;
        }

LABEL_60:
        sub_100004A34(v16);
        goto LABEL_61;
      }

      if (xpc_dictionary_get_value(*a2, "kCUPolicyKeyDataAllowed"))
      {
        *buf = a2;
        *&buf[8] = "kCUPolicyKeyDataAllowed";
        sub_100006354(buf, v47);
        v22 = xpc::dyn_cast_or_default(v47, 0, v21);
        xpc_release(v47[0]);
        v23 = 1;
      }

      else
      {
        v22 = 0;
        v23 = 0;
      }

      if (xpc_dictionary_get_value(*a2, "kCUPolicyKeyWiFiAllowed"))
      {
        *buf = a2;
        *&buf[8] = "kCUPolicyKeyWiFiAllowed";
        sub_100006354(buf, v47);
        v26 = xpc::dyn_cast_or_default(v47, 0, v25);
        xpc_release(v47[0]);
        v27 = 1;
        if (a3)
        {
LABEL_39:
          v28 = _Block_copy(a3);
          goto LABEL_42;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0;
        if (a3)
        {
          goto LABEL_39;
        }
      }

      v28 = 0;
LABEL_42:
      *buf = 0u;
      v43 = 0u;
      v29 = v22 | (v23 << 8);
      v30 = v26;
      v31 = v26 | (v27 << 8);
      sub_100D5E97C(buf, v49, v29, 0, v30 | (v27 << 8), 0);
      if ((v18 & 1) == 0)
      {
        atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v54[0])
      {
        xpc_retain(v54[0]);
      }

      else
      {
        xpc_null_create();
      }

      v33 = 0uLL;
      v34 = 0;
      sub_10004EFD0(&v33, *buf, *&buf[8], 0xAAAAAAAAAAAAAAABLL * ((*&buf[8] - *buf) >> 3));
      v35[0] = DWORD2(v43);
      *(v35 + 3) = *(&v43 + 11);
      if (SHIBYTE(v50) < 0)
      {
        sub_100005F2C(__p, v49[0], v49[1]);
      }

      else
      {
        *__p = *v49;
        v37 = v50;
      }

      v38 = v29;
      v39 = v31;
      v40 = 1;
      if (v28)
      {
        v32 = _Block_copy(v28);
      }

      else
      {
        v32 = 0;
      }

      aBlock = v32;
      v54[4] = 0;
      operator new();
    }
  }

  else
  {
    v17 = 0;
  }

  std::mutex::unlock(v10);
  v16 = 0;
  v18 = 1;
  if (v17)
  {
    goto LABEL_23;
  }

LABEL_15:
  sub_1015225E0();
  v19 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E Policy server is not valid", buf, 2u);
  }

  v52 = xpc_int64_create(19);
  if (!v52)
  {
    v52 = xpc_null_create();
  }

  *buf = v54;
  *&buf[8] = "kPosixError";
  sub_10000F688(buf, &v52, &v53);
  xpc_release(v53);
  v53 = 0;
  xpc_release(v52);
  v51 = v54[0];
  v52 = 0;
  if (v54[0])
  {
    xpc_retain(v54[0]);
  }

  else
  {
    v51 = xpc_null_create();
  }

  (a3)[2](a3, &v51);
  xpc_release(v51);
  v51 = 0;
  if ((v18 & 1) == 0)
  {
    goto LABEL_60;
  }

LABEL_61:
  xpc_release(v54[0]);
}

void sub_10152240C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, xpc_object_t a28, uint64_t a29, uint64_t a30, xpc_object_t a31, uint64_t a32, xpc_object_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1015225E0()
{
  if ((atomic_load_explicit(&qword_101FCACF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FCACF8))
  {
    ctu::OsLogLogger::OsLogLogger(&qword_101FCACF0, kCtLoggingSystemName, "cu.policy.xpc");

    __cxa_guard_release(&qword_101FCACF8);
  }
}

uint64_t sub_101522678(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  v5 = (a1 + 24);
  sub_1000087B4(&v5);
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_1015226F0(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_101522744(uint64_t a1)
{
  xpc_release(*(a1 + 8));
  *(a1 + 8) = 0;
  if (*a1)
  {
    _Block_release(*a1);
  }

  return a1;
}

uint64_t sub_1015227F8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F488C8;
  a2[1] = v2;
  return result;
}

void sub_101522824(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(v1 + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Handling NE configuration change", buf, 2u);
  }

  *buf = xpc_null_create();
  object = xpc_null_create();
  sub_10002A37C(138, buf, &object);
  xpc_release(object);
  xpc_release(*buf);
  CellularUsagePolicyController::updateClientsWithPolicyChange_sync(v1);
}

void sub_1015228C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11)
{
  xpc_release(object);
  xpc_release(a11);
  _Unwind_Resume(a1);
}

uint64_t sub_1015228F4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101522950(uint64_t result, uint64_t a2)
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

void sub_10152296C(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

uint64_t sub_10152297C(uint64_t a1)
{
  *a1 = off_101F48980;
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v5 = (a1 + 32);
  sub_1000087B4(&v5);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_101522A10(uint64_t a1)
{
  *a1 = off_101F48980;
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_1000087B4(&v4);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void sub_101522B5C(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_1000087B4(&v4);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }
}

void sub_101522BD0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v4 = (a1 + 32);
  sub_1000087B4(&v4);
  xpc_release(*(a1 + 24));
  *(a1 + 24) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

void sub_101522C4C(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  sub_100E32D9C(v9, a2);
  if (*a3)
  {
    if (*(a1 + 92) != 1)
    {
      goto LABEL_18;
    }

    v5 = *(a1 + 8);
    if (*(a1 + 87) < 0)
    {
      sub_100005F2C(__p, *(a1 + 64), *(a1 + 72));
    }

    else
    {
      *__p = *(a1 + 64);
      v11 = *(a1 + 80);
    }

    (*(*v5 + 104))(v5, __p, *(a1 + 88), *(a1 + 90));
    goto LABEL_16;
  }

  v12 = xpc_int64_create(35);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  __p[0] = (a1 + 24);
  __p[1] = "kPosixError";
  sub_10000F688(__p, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  sub_1015225E0();
  v6 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
  {
    asString(a1 + 32, __p);
    if (v11 >= 0)
    {
      v7 = __p;
    }

    else
    {
      v7 = __p[0];
    }

    v8 = a1 + 64;
    if (*(a1 + 87) < 0)
    {
      v8 = *(a1 + 64);
    }

    *buf = 136446466;
    v15 = v7;
    v16 = 2082;
    v17 = v8;
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to save policy: %{public}s for bundle id: %{public}s", buf, 0x16u);
LABEL_16:
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_18:
  sub_1000694E8(*(a1 + 96), *(a1 + 24));
  sub_100009970(v9, v9[1]);
}

void sub_101522E34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101522E88(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101522ED4(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 16);
  *(a1 + 16) = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *(a1 + 16) = xpc_null_create();
  }

  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  sub_10004EFD0(a1 + 24, *(a2 + 24), *(a2 + 32), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 32) - *(a2 + 24)) >> 3));
  v6 = *(a2 + 48);
  *(a1 + 51) = *(a2 + 51);
  *(a1 + 48) = v6;
  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v7 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v7;
  }

  v8 = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 80) = v8;
  v9 = *(a2 + 88);
  if (v9)
  {
    v9 = _Block_copy(v9);
  }

  *(a1 + 88) = v9;
  return a1;
}

void sub_101522FC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  sub_100DC3ED0(v3);
  v5 = *(v2 + 8);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101523004(uint64_t a1)
{
  *a1 = off_101F48A00;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_101523074(uint64_t a1)
{
  *a1 = off_101F48A00;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete();
}

void sub_101523130(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }
}

uint64_t sub_101523180(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1015231CC(uint64_t a1)
{
  *a1 = off_101F48A80;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

void sub_10152322C(uint64_t a1)
{
  *a1 = off_101F48A80;
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete();
}

xpc_object_t sub_101523344(uint64_t a1, void *a2)
{
  *a2 = off_101F48A80;
  v4 = *(a1 + 8);
  if (v4)
  {
    v5 = _Block_copy(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *(a1 + 16);
  a2[1] = v5;
  a2[2] = v6;
  if (v6)
  {
    return xpc_retain(v6);
  }

  result = xpc_null_create();
  a2[2] = result;
  return result;
}

void sub_1015233C0(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }
}

void sub_101523400(uint64_t a1)
{
  xpc_release(*(a1 + 16));
  *(a1 + 16) = 0;
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  operator delete(a1);
}

void sub_101523454(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  sub_100021420(&__p, a2);
  if (*a3 != 1)
  {
    v13 = xpc_int64_create(35);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    *buf = a1 + 16;
    v12 = "kPosixError";
    sub_10000F688(buf, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
    sub_1015225E0();
    v5 = qword_101FCACF0;
    if (!os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    *buf = 0;
    v6 = "Failed to get policy";
LABEL_19:
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, v6, buf, 2u);
    goto LABEL_13;
  }

  if (value[1] == 1)
  {
    v13 = xpc_int64_create(value[0]);
    if (!v13)
    {
      v13 = xpc_null_create();
    }

    *buf = a1 + 16;
    v12 = "kCUPolicyKeyDataAllowed";
    sub_10000F688(buf, &v13, &v14);
    xpc_release(v14);
    v14 = 0;
    xpc_release(v13);
    v13 = 0;
    goto LABEL_13;
  }

  v13 = xpc_int64_create(96);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  *buf = a1 + 16;
  v12 = "kPosixError";
  sub_10000F688(buf, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  sub_1015225E0();
  v5 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v6 = "No satellite policy found";
    goto LABEL_19;
  }

LABEL_13:
  sub_1000694E8(*(a1 + 8), *(a1 + 16));
  if (*&value[7])
  {
    v10 = *&value[7];
    operator delete(*&value[7]);
  }

  if (v8 < 0)
  {
    operator delete(__p);
  }
}

uint64_t sub_10152367C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015236C8(uint64_t a1)
{
  v1 = a1;
  v2 = 0;
  sub_100A5C398(&v2, &v1, "kCUPolicySet", sub_101523860, 12);
}

void sub_101523860(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101524D14;
  v6[3] = &unk_101F48B20;
  v5 = *(a5 + 8);
  v6[4] = *a5;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101521D4C(a1, a4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1015238F8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_101523910(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a5;
  if (*a5 && (v8 = *v7) != 0)
  {
    xpc_retain(*v7);
    v34 = v8;
  }

  else
  {
    v8 = xpc_null_create();
    v34 = v8;
    if (!v8)
    {
      v9 = xpc_null_create();
      v8 = 0;
      goto LABEL_9;
    }
  }

  if (xpc_get_type(v8) == &_xpc_type_dictionary)
  {
    xpc_retain(v8);
    goto LABEL_10;
  }

  v9 = xpc_null_create();
LABEL_9:
  v34 = v9;
LABEL_10:
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 3321888768;
  v30 = sub_101524DF8;
  v31 = &unk_101F48B20;
  v10 = *(a5 + 8);
  v32 = *a5;
  v33 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = xpc_dictionary_create(0, 0, 0);
  v12 = v11;
  if (v11)
  {
    v39 = v11;
  }

  else
  {
    v12 = xpc_null_create();
    v39 = v12;
    if (!v12)
    {
      v13 = xpc_null_create();
      v12 = 0;
      goto LABEL_19;
    }
  }

  if (xpc_get_type(v12) == &_xpc_type_dictionary)
  {
    xpc_retain(v12);
    goto LABEL_20;
  }

  v13 = xpc_null_create();
LABEL_19:
  v39 = v13;
LABEL_20:
  xpc_release(v12);
  ServiceMap = Registry::getServiceMap(*a1);
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
  if (v20)
  {
    v22 = v20[3];
    v21 = v20[4];
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v15);
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v21);
      v23 = 0;
      if (!v22)
      {
        goto LABEL_26;
      }

LABEL_34:
      v25 = _Block_copy(aBlock);
      v26 = v25;
      v38 = 18;
      strcpy(object, "com.apple.facetime");
      if (v25)
      {
        v27 = _Block_copy(v25);
      }

      else
      {
        v27 = 0;
      }

      v28 = v39;
      v35 = v27;
      v36 = v39;
      if (v39)
      {
        xpc_retain(v39);
      }

      else
      {
        v28 = xpc_null_create();
        v36 = v28;
      }

      v42 = v28;
      v43 = 0;
      *buf = off_101F48A80;
      v41 = v27;
      v35 = 0;
      v36 = xpc_null_create();
      v43 = buf;
      (*(*v22 + 16))(v22, object, &v34, buf);
      sub_10001CEB8(buf);
      xpc_release(v36);
      v36 = 0;
      if (v35)
      {
        _Block_release(v35);
      }

      if (v38 < 0)
      {
        operator delete(*object);
        if (!v26)
        {
          goto LABEL_47;
        }
      }

      else if (!v26)
      {
LABEL_47:
        if (v23)
        {
          goto LABEL_49;
        }

        goto LABEL_48;
      }

      _Block_release(v26);
      goto LABEL_47;
    }
  }

  else
  {
    v22 = 0;
  }

  std::mutex::unlock(v15);
  v21 = 0;
  v23 = 1;
  if (v22)
  {
    goto LABEL_34;
  }

LABEL_26:
  sub_1015225E0();
  v24 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#E Policy server is not valid", buf, 2u);
  }

  v35 = xpc_int64_create(19);
  if (!v35)
  {
    v35 = xpc_null_create();
  }

  *buf = &v39;
  v41 = "kPosixError";
  sub_10000F688(buf, &v35, object);
  xpc_release(*object);
  *object = 0;
  xpc_release(v35);
  v35 = 0;
  *buf = v34;
  if (v34)
  {
    xpc_retain(v34);
  }

  else
  {
    *buf = xpc_null_create();
  }

  v30(aBlock, buf);
  xpc_release(*buf);
  *buf = 0;
  if ((v23 & 1) == 0)
  {
LABEL_48:
    sub_100004A34(v21);
  }

LABEL_49:
  xpc_release(v39);
  xpc_release(v34);
  if (v33)
  {
    sub_100004A34(v33);
  }

  xpc_release(v8);
}

void sub_101523D64(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, char a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24, xpc_object_t a25, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_101523E70(Registry **a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
  v22 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v22);
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

      goto LABEL_11;
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
    sub_1015225E0();
    v15 = qword_101FCACF0;
    if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v22) = 0;
      _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Policy server is not valid", &v22, 2u);
    }

    goto LABEL_21;
  }

LABEL_11:
  v22 = a4;
  v23 = "kCUReliableNetworkFallbackUserSetting";
  sub_100006354(&v22, &object);
  v17 = xpc::dyn_cast_or_default(&object, 0, v16);
  xpc_release(object);
  subscriber::makeSimSlotRange();
  v18 = v22;
  v19 = v23;
  if (v22 != v23)
  {
    v20 = v24;
    do
    {
      if (v20(*v18))
      {
        break;
      }

      ++v18;
    }

    while (v18 != v19);
    v21 = v23;
    while (v18 != v21)
    {
      (*(*v13 + 128))(v13, *v18, v17);
      do
      {
        ++v18;
      }

      while (v18 != v19 && (v20(*v18) & 1) == 0);
    }
  }

LABEL_21:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }
}

void sub_101524064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015240AC(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
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
  v19[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, v19);
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

      goto LABEL_15;
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
    sub_1015225E0();
    v16 = qword_101FCACF0;
    if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v19[0]) = 0;
      _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Policy server is not valid", v19, 2u);
    }

    v20 = xpc_int64_create(19);
    if (!v20)
    {
      v20 = xpc_null_create();
    }

    v19[0] = *a5;
    v19[1] = "kPosixError";
    sub_10000F688(v19, &v20, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v20);
    v20 = 0;
    if (v15)
    {
      return;
    }

LABEL_18:
    sub_100004A34(v13);
    return;
  }

LABEL_15:
  v18 = *a5;
  v17 = a5[1];
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  v22[0] = off_101F48B60;
  v22[1] = v18;
  v22[2] = v17;
  v22[3] = v22;
  (*(*v14 + 112))(v14, v22);
  sub_100D5ED24(v22);
  if ((v15 & 1) == 0)
  {
    goto LABEL_18;
  }
}

void sub_1015242C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_101524314(Registry **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1015225E0();
  v6 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I cu policy set os version", &buf, 2u);
  }

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
  *&buf = v9;
  v13 = sub_100009510(&v8[1].__m_.__sig, &buf);
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
        goto LABEL_9;
      }

      goto LABEL_14;
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
LABEL_9:
    sub_1015225E0();
    v17 = qword_101FCACF0;
    if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Policy server is not valid", &buf, 2u);
      if (v16)
      {
        return;
      }

      goto LABEL_22;
    }

LABEL_21:
    if (v16)
    {
      return;
    }

    goto LABEL_22;
  }

LABEL_14:
  __p[0] = 0;
  __p[1] = 0;
  v23 = 0;
  v20[0] = a4;
  v20[1] = "kCUPolicyOsVersion";
  sub_100006354(v20, &object);
  buf = 0uLL;
  v25 = 0;
  xpc::dyn_cast_or_default();
  if (SHIBYTE(v25) < 0)
  {
    operator delete(buf);
  }

  xpc_release(object);
  sub_1015225E0();
  v18 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    v19 = __p;
    if (v23 < 0)
    {
      v19 = __p[0];
    }

    LODWORD(buf) = 136446210;
    *(&buf + 4) = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I cu policy set os version to %{public}s", &buf, 0xCu);
  }

  (*(*v15 + 136))(v15, __p);
  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  operator delete(__p[0]);
  if (v16)
  {
    return;
  }

LABEL_22:
  sub_100004A34(v14);
}

void sub_1015245AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_101524624(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, uint64_t a5)
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_1015251AC;
  v6[3] = &unk_101F48B20;
  v5 = *(a5 + 8);
  v6[4] = *a5;
  v7 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_101521D4C(a1, a4, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1015246BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015246D4(Registry **a1, uint64_t a2, uint64_t a3, xpc_object_t *a4, void **a5)
{
  memset(&v49, 0, sizeof(v49));
  *buf = a4;
  *&buf[8] = "kCUPolicyBundleName";
  sub_100006354(buf, &object);
  __p[0] = 0;
  __p[1] = 0;
  *&v45 = 0;
  xpc::dyn_cast_or_default();
  xpc_release(object);
  size = HIBYTE(v49.__r_.__value_.__r.__words[2]);
  if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v49.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    ServiceMap = Registry::getServiceMap(*a1);
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
    __p[0] = v11;
    v15 = sub_100009510(&v10[1].__m_.__sig, __p);
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
        if (!v17)
        {
LABEL_60:
          if ((v18 & 1) == 0)
          {
            sub_100004A34(v16);
          }

          goto LABEL_62;
        }

LABEL_18:
        object = 0;
        v20 = xpc_copy(*a4);
        v21 = v20;
        if (v20)
        {
          object = v20;
        }

        else
        {
          v21 = xpc_null_create();
          object = v21;
          if (!v21)
          {
            v22 = xpc_null_create();
            v21 = 0;
            goto LABEL_25;
          }
        }

        if (xpc_get_type(v21) == &_xpc_type_dictionary)
        {
          xpc_retain(v21);
          goto LABEL_26;
        }

        v22 = xpc_null_create();
LABEL_25:
        object = v22;
LABEL_26:
        xpc_release(v21);
        *__p = 0u;
        v45 = 0u;
        v23 = Registry::getServiceMap(*a1);
        v24 = v23;
        if (v25 < 0)
        {
          v26 = (v25 & 0x7FFFFFFFFFFFFFFFLL);
          v27 = 5381;
          do
          {
            v25 = v27;
            v28 = *v26++;
            v27 = (33 * v27) ^ v28;
          }

          while (v28);
        }

        std::mutex::lock(v23);
        *buf = v25;
        v29 = sub_100009510(&v24[1].__m_.__sig, buf);
        if (v29)
        {
          v31 = v29[3];
          v30 = v29[4];
          if (v30)
          {
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            std::mutex::unlock(v24);
            atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            sub_100004A34(v30);
            v32 = 0;
LABEL_34:
            (*(*v31 + 48))(__p, v31, &v49);
            if ((v32 & 1) == 0)
            {
              sub_100004A34(v30);
            }

            if ((BYTE8(v45) & 1) == 0)
            {
              sub_1001696A4(__p, &v49);
            }

            sub_1015225E0();
            v33 = qword_101FCACF0;
            if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
            {
              v34 = &v49;
              if ((v49.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
              {
                v34 = v49.__r_.__value_.__r.__words[0];
              }

              v35 = __p;
              if (SBYTE7(v45) < 0)
              {
                v35 = __p[0];
              }

              *buf = 136446466;
              *&buf[4] = v34;
              *&buf[12] = 2082;
              *&buf[14] = v35;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Phone bundleID: [%{public}s] translated into watch bundleID: [%{public}s]", buf, 0x16u);
            }

            if ((SBYTE7(v45) & 0x80u) == 0)
            {
              v36 = __p;
            }

            else
            {
              v36 = __p[0];
            }

            v42 = xpc_string_create(v36);
            if (!v42)
            {
              v42 = xpc_null_create();
            }

            *buf = &object;
            *&buf[8] = "kCUPolicyBundleName";
            sub_10000F688(buf, &v42, &v43);
            xpc_release(v43);
            v43 = 0;
            xpc_release(v42);
            v37 = *a4;
            v41 = v37;
            v42 = 0;
            if (v37)
            {
              xpc_retain(v37);
            }

            else
            {
              v41 = xpc_null_create();
            }

            v38 = a5[1];
            v39 = *a5;
            v40 = v38;
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            (*(*v17 + 56))(v17, "kCUPolicyGetEx", &v41, &v39);
            if (v40)
            {
              sub_100004A34(v40);
            }

            xpc_release(v41);
            v41 = 0;
            if (BYTE8(v45) == 1 && SBYTE7(v45) < 0)
            {
              operator delete(__p[0]);
            }

            xpc_release(object);
            goto LABEL_60;
          }
        }

        else
        {
          v31 = 0;
        }

        std::mutex::unlock(v24);
        v30 = 0;
        v32 = 1;
        goto LABEL_34;
      }
    }

    else
    {
      v17 = 0;
    }

    std::mutex::unlock(v10);
    v16 = 0;
    v18 = 1;
    if (!v17)
    {
      goto LABEL_60;
    }

    goto LABEL_18;
  }

  sub_1015225E0();
  v19 = qword_101FCACF0;
  if (os_log_type_enabled(qword_101FCACF0, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p[0]) = 0;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#E Bundle name is not valid", __p, 2u);
  }

  v46 = xpc_int64_create(22);
  if (!v46)
  {
    v46 = xpc_null_create();
  }

  __p[0] = *a5;
  __p[1] = "kPosixError";
  sub_10000F688(__p, &v46, &v47);
  xpc_release(v47);
  v47 = 0;
  xpc_release(v46);
  v46 = 0;
LABEL_62:
  if (SHIBYTE(v49.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v49.__r_.__value_.__l.__data_);
  }
}

void sub_101524BF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, xpc_object_t object, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101524D14(uint64_t a1, void **a2)
{
  v3 = *a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101524DC8;
  v6[3] = &unk_101F48AF0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xpc_dictionary_apply(v3, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101524DB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101524DC8(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  xpc_dictionary_set_value(v4, a2, a3);
  return 1;
}

void sub_101524DF8(uint64_t a1, void **a2)
{
  v3 = *a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101524EAC;
  v6[3] = &unk_101F48AF0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xpc_dictionary_apply(v3, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101524E94(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101524EAC(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  xpc_dictionary_set_value(v4, a2, a3);
  return 1;
}

void *sub_101524EDC(void *a1)
{
  *a1 = off_101F48B60;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_101524F28(void *a1)
{
  *a1 = off_101F48B60;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_101525000(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = off_101F48B60;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101525038(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_101525048(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  operator delete(__p);
}

void sub_101525088(uint64_t a1, _WORD *a2)
{
  if ((*a2 & 0x100) != 0)
  {
    sub_101521AF8(*a2, &v5);
    v3 = *(a1 + 8);
    v4 = "kCUReliableNetworkFallbackGet";
    sub_100DAE90C(&v3, &v5, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
  }

  else
  {
    v5 = xpc_int64_create(35);
    if (!v5)
    {
      v5 = xpc_null_create();
    }

    v3 = *(a1 + 8);
    v4 = "kPosixError";
    sub_10000F688(&v3, &v5, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v5);
  }
}

uint64_t sub_101525160(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1015251AC(uint64_t a1, void **a2)
{
  v3 = *a2;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3321888768;
  v6[2] = sub_101525260;
  v6[3] = &unk_101F48AF0;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[4] = v5;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  xpc_dictionary_apply(v3, v6);
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101525248(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101525260(uint64_t a1, const char *a2, void *a3)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  xpc_dictionary_set_value(v4, a2, a3);
  return 1;
}

void sub_1015252AC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_101525338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 8);
  v7[0] = off_101F48CA0;
  v7[1] = &v6;
  v7[2] = &v5;
  v7[3] = v7;
  sub_100125DF8(v3, v7);
  return sub_10002B210(v7);
}

void sub_1015253CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1015253E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = a2;
  v5[0] = off_101F48D20;
  v5[1] = &v4;
  v5[3] = v5;
  sub_100125DF8(v2, v5);
  return sub_10002B210(v5);
}

void sub_101525470(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10002B210(va);
  _Unwind_Resume(a1);
}

void sub_101525484(CTXPCCapabilitiesNotificationInterface *this)
{
  *this = off_101F48BE0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCCapabilitiesNotificationInterface::~CTXPCCapabilitiesNotificationInterface(this);
}

void sub_1015254E0(CTXPCCapabilitiesNotificationInterface *this)
{
  *this = off_101F48BE0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  CTXPCCapabilitiesNotificationInterface::~CTXPCCapabilitiesNotificationInterface(this);

  operator delete();
}

void sub_1015255B8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1015255F4(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10152562C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10152565C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101525710(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F48CA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_101525740(uint64_t a1, id *a2)
{
  v4 = *a2;
  v3 = [CTXPCPlaceholder cfUuid:**(a1 + 8)];
  [v4 context:v3 capabilitiesChanged:**(a1 + 16)];
}

uint64_t sub_1015257DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101525898(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F48D20;
  a2[1] = v2;
  return result;
}

uint64_t sub_1015258D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t OOSGeofenceManager::OOSGeofenceManager(uint64_t a1, void *a2, NSObject **a3)
{
  ctu::OsLogContext::OsLogContext(&v16, kCtLoggingSystemName, "oos.geo.mgr");
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v6 = *a3;
  *(a1 + 24) = *a3;
  if (v6)
  {
    dispatch_retain(v6);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v17, &v16);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v17);
  ctu::OsLogLogger::~OsLogLogger(v17);
  ctu::OsLogContext::~OsLogContext(&v16);
  *a1 = off_101F48DB0;
  *(a1 + 48) = off_101F48E48;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 96) = *a2;
  v7 = a2[1];
  *(a1 + 104) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "OOSGeofenceManager");
  v8 = *(a1 + 24);
  v13 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  v9 = *(a1 + 32);
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
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

  v10 = *a3;
  *(a1 + 128) = *a3;
  if (v10)
  {
    dispatch_retain(v10);
  }

  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  return a1;
}

void sub_101525ABC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, dispatch_object_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
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

  v22 = v19[13];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v19[11];
  if (v23)
  {
    sub_100004A34(v23);
  }

  sub_1000212F4(&a17);
  OOSGeofenceManagerInterface::~OOSGeofenceManagerInterface(v19);
  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  _Unwind_Resume(a1);
}

uint64_t sub_101525B5C(uint64_t a1)
{
  *a1 = off_101F48DB0;
  *(a1 + 48) = off_101F48E48;
  sub_101525C84(a1);
  v2 = *(a1 + 144);
  *(a1 + 144) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 136);
  *(a1 + 136) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 128);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 120);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 104);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 88);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v9 = (a1 + 56);
  sub_1000212F4(&v9);
  OOSGeofenceManagerInterface::~OOSGeofenceManagerInterface(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_101525C84(void *a1)
{
  v2 = a1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Beginning to shut down and unload all OOS geofences", buf, 2u);
  }

  sub_101273B70(a1[10]);
  sub_100021348(a1 + 7);
  v3 = a1[5];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shut down and unloaded all OOS geofences.", v4, 2u);
  }

  sub_10152667C(a1);
}

void sub_101525D48(uint64_t a1)
{
  sub_101525B5C(a1);

  operator delete();
}

void sub_101525D80(uint64_t a1)
{
  sub_101525B5C(a1 - 48);

  operator delete();
}

void sub_101525DBC(void *a1, void *a2, char *a3)
{
  v6 = a2[7];
  v7 = a2[8];
  if (v6 == v7)
  {
LABEL_20:
    v18 = a2[5];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      if (a3[23] >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      LODWORD(__p) = 136642819;
      *(&__p + 4) = v22;
      _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Could not match regionId for %{sensitive}s", &__p, 0xCu);
    }

    *a1 = 0;
    a1[1] = 0;
    return;
  }

  while (1)
  {
    v8 = *(*v6 + 8);
    v9 = [v8 identifier];
    v10 = v9;
    sub_10000501C(&__p, [v9 UTF8String]);
    v11 = v24;
    if ((v24 & 0x80u) == 0)
    {
      v12 = v24;
    }

    else
    {
      v12 = *(&__p + 1);
    }

    v13 = a3[23];
    v14 = v13;
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a3 + 1);
    }

    if (v12 != v13)
    {
      v17 = 0;
      if ((v24 & 0x80000000) == 0)
      {
        goto LABEL_18;
      }

LABEL_17:
      operator delete(__p);
      goto LABEL_18;
    }

    if ((v24 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v14 >= 0)
    {
      v16 = a3;
    }

    else
    {
      v16 = *a3;
    }

    v17 = memcmp(p_p, v16, v12) == 0;
    if (v11 < 0)
    {
      goto LABEL_17;
    }

LABEL_18:

    if (v17)
    {
      break;
    }

    v6 += 2;
    if (v6 == v7)
    {
      goto LABEL_20;
    }
  }

  v19 = a2[5];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    if (a3[23] >= 0)
    {
      v20 = a3;
    }

    else
    {
      v20 = *a3;
    }

    LODWORD(__p) = 136642819;
    *(&__p + 4) = v20;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Matched regionId for OOS region %{sensitive}s", &__p, 0xCu);
  }

  v21 = v6[1];
  *a1 = *v6;
  a1[1] = v21;
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }
}

void sub_101525FF8(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 152);
    *buf = 67109120;
    *&buf[4] = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I OOS Geofence Manager is loaded: %d", buf, 8u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 153);
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I OOS Geofence Manager perceives service as: %d", buf, 8u);
  }

  v5 = *(a1 + 56);
  for (i = *(a1 + 64); v5 != i; v5 += 2)
  {
    v7 = *(a1 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(*v5 + 1);
      v9 = [v8 identifier];
      v10 = v9;
      v11 = [v9 UTF8String];
      sub_101526210(buf, **v5);
      v12 = buf;
      if (v14 < 0)
      {
        v12 = *buf;
      }

      *v15 = 136315394;
      v16 = v11;
      v17 = 2080;
      v18 = v12;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I OOS Region %s has status %s", v15, 0x16u);
      if (v14 < 0)
      {
        operator delete(*buf);
      }
    }
  }
}

_BYTE *sub_101526210(_BYTE *a1, unsigned int a2)
{
  if (a2 > 3)
  {
    v2 = "Invalid value";
  }

  else
  {
    v2 = off_101F49050[a2];
  }

  return sub_10000501C(a1, v2);
}

void sub_10152630C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_101526340(uint64_t result)
{
  if ((*(result + 152) & 1) == 0)
  {
    v1 = *(result + 16);
    if (v1)
    {
      if (std::__shared_weak_count::lock(v1))
      {
        dispatch_queue_create("OOS Geofence Queue", 0);
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

void sub_101526510(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, dispatch_object_t object)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v18);
  if (object)
  {
    dispatch_release(object);
  }

  std::__shared_weak_count::~__shared_weak_count(v17);
  operator delete(v20);
  _Unwind_Resume(a1);
}

void sub_10152656C(void *a1, char *a2)
{
  v6 = 0;
  v7 = 0;
  sub_101525DBC(&v6, a1, a2);
  if (v6)
  {
    *v6 = 2;
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Entered OOS Region %s", buf, 0xCu);
    }

    sub_10152667C(a1);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10152665C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10152667C(uint64_t a1)
{
  v3 = *(a1 + 56);
  v2 = *(a1 + 64);
  if (v2 != v3)
  {
    do
    {
      if (**v3 == 2)
      {
        v7 = *(a1 + 40);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Device is in at least one OOS region...", buf, 2u);
        }

        v6 = 1;
        goto LABEL_13;
      }

      v3 += 2;
    }

    while (v3 != v2);
    v4 = *(a1 + 40);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v5 = "#I Device is not in any OOS regions...";
    goto LABEL_8;
  }

  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v5 = "#I No OOS geofence regions are loaded.";
LABEL_8:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, buf, 2u);
  }

LABEL_9:
  v6 = 0;
LABEL_13:
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = CSIBOOLAsString(*(a1 + 153));
    v10 = CSIBOOLAsString(v6);
    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I OOS Status: Device has service [%s] and device is in an OOS Area [%s]", buf, 0x16u);
  }

  if (v6 && (*(a1 + 153) & 1) == 0)
  {
    v11 = *(a1 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Device is now in an OOS Zone with no Service...", buf, 2u);
    }

    v12 = *(a1 + 136);
    if (v12)
    {
      v13 = (*(*v12 + 24))(v12);
      v14 = *(a1 + 40);
      if (!v13)
      {
        if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v15 = "#I OOS countdown timer is active...";
LABEL_31:
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
          return;
        }

        return;
      }
    }

    else
    {
      v14 = *(a1 + 40);
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Beginning countdown to dispatch any queued WEA due to being OOS.", buf, 2u);
    }

    v44 = 0;
    v45 = 0;
    Registry::getTimerService(&v44, *(a1 + 96));
    v18 = v44;
    v19 = *(a1 + 40);
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        *buf = 134217984;
        *&buf[4] = 60;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Setting OOS timer to %llds seconds...", buf, 0xCu);
      }

      v21 = *(a1 + 16);
      if (!v21 || (v22 = *(a1 + 8), (v23 = std::__shared_weak_count::lock(v21)) == 0))
      {
        sub_100013CC4();
      }

      v24 = v23;
      p_shared_weak_owners = &v23->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v23->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v23);
      sub_10000501C(v41, "OOS Countdown to WEA Delivery");
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3321888768;
      *&buf[16] = sub_101527BC4;
      v49 = &unk_101F48E98;
      v50 = a1;
      v51 = v22;
      v52 = v24;
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      v26 = objc_retainBlock(buf);
      *__p = *v41;
      v47 = v42;
      v41[0] = 0;
      v41[1] = 0;
      v42 = 0;
      ctu::TimerService::createOneShotTimerImpl();
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      v27 = v43;
      v43 = 0;
      v28 = *(a1 + 136);
      *(a1 + 136) = v27;
      if (v28)
      {
        (*(*v28 + 8))(v28);
        v29 = v43;
        v43 = 0;
        if (v29)
        {
          (*(*v29 + 8))(v29);
        }
      }

      if (SHIBYTE(v42) < 0)
      {
        operator delete(v41[0]);
      }

      v30 = *(a1 + 40);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(__p[0]) = 0;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I OOS countdown has begun...", __p, 2u);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_weak(v52);
      }

      std::__shared_weak_count::__release_weak(v24);
LABEL_66:
      if (v45)
      {
        sub_100004A34(v45);
      }

      return;
    }

    if (v20)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Could not create OOS countdown timer.", buf, 2u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 96));
    v32 = ServiceMap;
    if (v33 < 0)
    {
      v34 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
      v35 = 5381;
      do
      {
        v33 = v35;
        v36 = *v34++;
        v35 = (33 * v35) ^ v36;
      }

      while (v36);
    }

    std::mutex::lock(ServiceMap);
    *buf = v33;
    v37 = sub_100009510(&v32[1].__m_.__sig, buf);
    if (v37)
    {
      v39 = v37[3];
      v38 = v37[4];
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        std::mutex::unlock(v32);
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v38);
        v40 = 0;
        if (!v39)
        {
LABEL_64:
          if ((v40 & 1) == 0)
          {
            sub_100004A34(v38);
          }

          goto LABEL_66;
        }

LABEL_63:
        (*(*v39 + 112))(v39);
        sub_101525C84(a1);
        goto LABEL_64;
      }
    }

    else
    {
      v39 = 0;
    }

    std::mutex::unlock(v32);
    v38 = 0;
    v40 = 1;
    if (!v39)
    {
      goto LABEL_64;
    }

    goto LABEL_63;
  }

  v16 = *(a1 + 136);
  if (v16)
  {
    v17 = (*(*v16 + 24))(v16);
    v14 = *(a1 + 40);
    if ((v17 & 1) == 0)
    {
      if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Device is not OOS; aborting active OOS countdown...", buf, 2u);
      }

      (*(**(a1 + 136) + 16))(*(a1 + 136));
      return;
    }
  }

  else
  {
    v14 = *(a1 + 40);
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v15 = "#I Device is not OOS, and no OOS countdown is active...";
    goto LABEL_31;
  }
}

void sub_101526D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::__shared_weak_count *a31)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101526DA8(void *a1, char *a2)
{
  v6 = 0;
  v7 = 0;
  sub_101525DBC(&v6, a1, a2);
  if (v6)
  {
    *v6 = 3;
    v4 = a1[5];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      if (a2[23] >= 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = *a2;
      }

      *buf = 136315138;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Exited OOS Region %s", buf, 0xCu);
    }

    sub_10152667C(a1);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_101526E98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_101526EC0(void *a1, char *a2, unsigned int *a3)
{
  v14 = 0;
  v15 = 0;
  sub_101525DBC(&v14, a1, a2);
  if (v14)
  {
    v6 = *a3;
    *v14 = *a3;
    v7 = a1[5];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a2[23];
      v9 = *a2;
      sub_101526210(__p, v6);
      v10 = v8 >= 0 ? a2 : v9;
      v11 = v13 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v17 = v10;
      v18 = 2080;
      v19 = v11;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Determined state for OOS Region %s as %s", buf, 0x16u);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    sub_10152667C(a1);
  }

  if (v15)
  {
    sub_100004A34(v15);
  }
}

void sub_101527000(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_10152702C(uint64_t a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v11 = a2 * 0.0174532925;
  v12 = a5 * 0.0174532925;
  v13 = a3 * 0.0174532925 - a6 * 0.0174532925;
  v14 = sin((a2 * 0.0174532925 - a5 * 0.0174532925) * 0.5);
  v15 = v14 * v14;
  v16 = cos(v11);
  v17 = v16 * cos(v12);
  v18 = sin(v13 * 0.5);
  v19 = asin(sqrt(v15 + v17 * (v18 * v18)));
  v20 = (v19 + v19) * 6371.0 * 1000.0;
  v21 = v20 > 50.0 && v20 > a4 + a7;
  return !v21 && ((*(*a1 + 40))(a1, a5, a6, a7) & 1) != 0;
}

BOOL sub_101527160(uint64_t a1, double a2, double a3, double a4)
{
  v8 = *(a1 + 144);
  if (v8)
  {
    (*(*v8 + 16))(v8);
    v9 = *(a1 + 144);
    *(a1 + 144) = 0;
    if (v9)
    {
      (*(*v9 + 8))(v9);
    }
  }

  v10 = *(a1 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = 24;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Setting Clear Regions Timer to %lld hours...", &buf, 0xCu);
  }

  *&v62.__r_.__value_.__l.__data_ = 0uLL;
  Registry::getTimerService(&v62, *(a1 + 96));
  v11 = *(a1 + 16);
  if (!v11 || (v12 = *(a1 + 8), (v13 = std::__shared_weak_count::lock(v11)) == 0))
  {
    sub_100013CC4();
  }

  v14 = v13;
  p_shared_weak_owners = &v13->__shared_weak_owners_;
  atomic_fetch_add_explicit(&v13->__shared_weak_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  sub_10000501C(&v71, "Clear OOS Regions Timer");
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3321888768;
  v66 = COERCE_DOUBLE(sub_101527E30);
  v67 = &unk_101F48E98;
  v68 = a1;
  v69 = v12;
  v70 = v14;
  atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
  v16 = objc_retainBlock(&buf);
  *&v63.__r_.__value_.__l.__data_ = xmmword_101986240;
  ctu::TimerService::throwIfPeriodIsZero();
  __p = v71;
  memset(&v71, 0, sizeof(v71));
  ctu::TimerService::createPeriodicTimerImpl();
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v17 = v61.__r_.__value_.__r.__words[0];
  v61.__r_.__value_.__r.__words[0] = 0;
  v18 = *(a1 + 144);
  *(a1 + 144) = v17;
  if (v18)
  {
    (*(*v18 + 8))(v18);
    v19 = v61.__r_.__value_.__r.__words[0];
    v61.__r_.__value_.__r.__words[0] = 0;
    if (v19)
    {
      (*(*v19 + 8))(v19);
    }
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  v20 = *(a1 + 40);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p.__r_.__value_.__l.__data_) = 0;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Finished setting up Clear OOS Regions Timer...", &__p, 2u);
  }

  if (v70)
  {
    std::__shared_weak_count::__release_weak(v70);
  }

  std::__shared_weak_count::__release_weak(v14);
  if (v62.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v62.__r_.__value_.__l.__size_);
  }

  *&buf = a2;
  *(&buf + 1) = a3;
  v66 = a4;
  memset(&__p, 0, sizeof(__p));
  std::to_string(&v61, a2);
  v21 = std::string::append(&v61, "|", 1uLL);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v62.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v62.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v60, a3);
  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v23 = &v60;
  }

  else
  {
    v23 = v60.__r_.__value_.__r.__words[0];
  }

  if ((v60.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v60.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v60.__r_.__value_.__l.__size_;
  }

  v25 = std::string::append(&v62, v23, size);
  v26 = *&v25->__r_.__value_.__l.__data_;
  v63.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
  *&v63.__r_.__value_.__l.__data_ = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  v27 = std::string::append(&v63, "|", 1uLL);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v71.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
  *&v71.__r_.__value_.__l.__data_ = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v59, a4);
  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v29 = &v59;
  }

  else
  {
    v29 = v59.__r_.__value_.__r.__words[0];
  }

  if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = HIBYTE(v59.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v30 = v59.__r_.__value_.__l.__size_;
  }

  v31 = std::string::append(&v71, v29, v30);
  v32 = *&v31->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v31->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v59.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v71.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v63.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v62.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v61.__r_.__value_.__l.__data_);
  }

  v33 = *(a1 + 40);
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    p_p = &__p;
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    LODWORD(v71.__r_.__value_.__l.__data_) = 136642819;
    *(v71.__r_.__value_.__r.__words + 4) = p_p;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "#I Attempting to add geofence for OOS region %{sensitive}s...", &v71, 0xCu);
  }

  sub_101525DBC(&v71, a1, &__p);
  v35 = v71.__r_.__value_.__r.__words[0];
  if (v71.__r_.__value_.__l.__size_)
  {
    sub_100004A34(v71.__r_.__value_.__l.__size_);
  }

  if (v35)
  {
    v36 = *(a1 + 40);
    v37 = 0;
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = &__p;
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v38 = __p.__r_.__value_.__r.__words[0];
      }

      LODWORD(v71.__r_.__value_.__l.__data_) = 136642819;
      *(v71.__r_.__value_.__r.__words + 4) = v38;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "#I OOS Geofence %{sensitive}s is already loaded...", &v71, 0xCu);
      v37 = 0;
    }
  }

  else
  {
    *&v63.__r_.__value_.__l.__data_ = 0uLL;
    sub_1012737DC(*(a1 + 80), &buf, &__p, &v63);
    v37 = v63.__r_.__value_.__r.__words[0] != 0;
    if (v63.__r_.__value_.__r.__words[0])
    {
      v39 = *(a1 + 64);
      v40 = *(a1 + 72);
      if (v39 >= v40)
      {
        v45 = *(a1 + 56);
        v46 = (v39 - v45) >> 4;
        v47 = v46 + 1;
        if ((v46 + 1) >> 60)
        {
          sub_1000CE3D4();
        }

        v48 = v40 - v45;
        if (v48 >> 3 > v47)
        {
          v47 = v48 >> 3;
        }

        if (v48 >= 0x7FFFFFFFFFFFFFF0)
        {
          v49 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v49 = v47;
        }

        if (v49)
        {
          if (!(v49 >> 60))
          {
            operator new();
          }

          sub_100013D10();
        }

        v50 = v63.__r_.__value_.__l.__size_;
        v51 = (16 * v46);
        *v51 = v63.__r_.__value_.__r.__words[0];
        v51[1] = v50;
        if (v50)
        {
          atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = v51 + 2;
        v52 = *(a1 + 56);
        v53 = *(a1 + 64) - v52;
        v54 = v51 - v53;
        memcpy(v51 - v53, v52, v53);
        *(a1 + 56) = v54;
        *(a1 + 64) = v42;
        *(a1 + 72) = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        *v39 = v63.__r_.__value_.__r.__words[0];
        v41 = v63.__r_.__value_.__l.__size_;
        v39[1] = v63.__r_.__value_.__l.__size_;
        if (v41)
        {
          atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
        }

        v42 = v39 + 2;
      }

      *(a1 + 64) = v42;
      v55 = *(a1 + 40);
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v56 = __p.__r_.__value_.__r.__words[0];
        }

        v57 = (v42 - *(a1 + 56)) >> 4;
        LODWORD(v71.__r_.__value_.__l.__data_) = 136643075;
        *(v71.__r_.__value_.__r.__words + 4) = v56;
        WORD2(v71.__r_.__value_.__r.__words[1]) = 2048;
        *(&v71.__r_.__value_.__r.__words[1] + 6) = v57;
        _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_DEFAULT, "#I Loaded new OOS Geofence %{sensitive}s, now monitoring %lu...", &v71, 0x16u);
      }

      sub_10152667C(a1);
    }

    else
    {
      v43 = *(a1 + 40);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = &__p;
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v44 = __p.__r_.__value_.__r.__words[0];
        }

        LODWORD(v71.__r_.__value_.__l.__data_) = 136642819;
        *(v71.__r_.__value_.__r.__words + 4) = v44;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "#I Failed to add OOS Geofence %{sensitive}s...", &v71, 0xCu);
      }
    }

    if (v63.__r_.__value_.__l.__size_)
    {
      sub_100004A34(v63.__r_.__value_.__l.__size_);
    }
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v37;
}

void sub_1015278E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *__p, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, std::__shared_weak_count *a55)
{
  if (a47 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101527A10(uint64_t a1, int a2, int a3)
{
  v6 = *(a1 + 40);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315394;
    v16 = asString();
    v17 = 2080;
    v18 = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I OOS Module showing rats as %s and %s...", &v15, 0x16u);
    v6 = *(a1 + 40);
  }

  v8 = a3 != -1 && a3 != 11;
  v9 = *(a1 + 153);
  v10 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  v11 = a2 == 11 || a2 == -1;
  if (!v11 || v8)
  {
    if (v9)
    {
      if (v10)
      {
        LOWORD(v15) = 0;
        v13 = "#I Device still has service";
LABEL_27:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v13, &v15, 2u);
      }
    }

    else if (v10)
    {
      LOWORD(v15) = 0;
      v13 = "#I Device has gained service";
      goto LABEL_27;
    }

    v14 = 1;
    goto LABEL_29;
  }

  if (v9)
  {
    if (v10)
    {
      LOWORD(v15) = 0;
      v12 = "#I Device has lost service";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v12, &v15, 2u);
    }
  }

  else if (v10)
  {
    LOWORD(v15) = 0;
    v12 = "#I Device still has no service";
    goto LABEL_23;
  }

  v14 = 0;
LABEL_29:
  *(a1 + 153) = v14;
  sub_10152667C(a1);
}

void sub_101527BC4(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    v3 = a1[4];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (!a1[5])
      {
LABEL_25:
        sub_100004A34(v5);
        return;
      }

      v6 = *(v3 + 153);
      v7 = *(v3 + 40);
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Device has regained service; cancelling delivery of any queued alerts...", v21, 2u);
        }

        goto LABEL_25;
      }

      if (v8)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I OOS countdown has hit zero; dispatching any queued alerts...", buf, 2u);
      }

      ServiceMap = Registry::getServiceMap(*(v3 + 96));
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
      v23 = v11;
      v15 = sub_100009510(&v10[1].__m_.__sig, &v23);
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
          if (!v17)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        v17 = 0;
      }

      std::mutex::unlock(v10);
      v16 = 0;
      v18 = 1;
      if (!v17)
      {
LABEL_19:
        v19 = *(v3 + 136);
        *(v3 + 136) = 0;
        if (v19)
        {
          (*(*v19 + 8))(v19);
        }

        sub_101525C84(v3);
        v20 = *(v3 + 144);
        if (v20)
        {
          (*(*v20 + 16))(v20);
        }

        if ((v18 & 1) == 0)
        {
          sub_100004A34(v16);
        }

        goto LABEL_25;
      }

LABEL_18:
      (*(*v17 + 112))(v17);
      goto LABEL_19;
    }
  }
}

uint64_t sub_101527E04(uint64_t result, uint64_t a2)
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

void sub_101527E20(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101527E30(void *a1)
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
        v6 = v3[5];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Clear OOS regions timer has hit zero; clearing all OOS geofences...", v7, 2u);
        }

        sub_101525C84(v3);
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_101527EE0(void *a1, double a2, double a3, double a4, double a5, double a6, double a7)
{
  v8 = a4 * 0.0174532925;
  v9 = a3 * 0.0174532925;
  v10 = a2 * 0.0174532925;
  v33 = a3 * 0.0174532925;
  v11 = sin((a4 * 0.0174532925 - a2 * 0.0174532925) * 0.5);
  v12 = v11 * v11;
  v13 = cos(v8);
  v32 = cos(v10);
  v14 = sin((v9 - v9) * 0.5);
  v35 = v14 * v14;
  v15 = asin(sqrt(v12 + v32 * v13 * (v14 * v14)));
  v36 = (v15 + v15) * 6371.0 * 1000.0;
  v16 = a6 * 0.0174532925 - v9;
  v17 = sin((v10 - v10) * 0.5);
  v18 = v17 * v17;
  v19 = sin(v16 * 0.5);
  v20 = asin(sqrt(v18 + v32 * v32 * (v19 * v19)));
  v21 = (v20 + v20) * 6371.0 * 1000.0;
  v22 = sin((a5 * 0.0174532925 - v10) * 0.5);
  v23 = v22 * v22 + v32 * cos(a5 * 0.0174532925) * v35;
  v24 = asin(sqrt(v23));
  v25 = (v24 + v24) * 6371.0 * 1000.0;
  v26 = sin((a7 * 0.0174532925 - v33) * 0.5);
  v27 = asin(sqrt(v18 + v32 * v32 * (v26 * v26)));
  v28 = (v27 + v27) * 6371.0 * 1000.0;
  v29 = (v28 + v25 + v36 + v21) * 0.25;
  v30 = a1[5];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v42 = v36 - v29;
    v43 = 2048;
    v44 = v21 - v29;
    v45 = 2048;
    v46 = v25 - v29;
    v47 = 2048;
    v48 = v28 - v29;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "#I OOS Module approximated WEA geofence polygon radius with accuracy: N(%f), E(%f), S(%f), W(%f)", buf, 0x2Au);
  }

  return (*(*a1 + 24))(a1, a2, a3, v29);
}

void sub_1015281A8(uint64_t a1, double a2, double a3, double a4)
{
  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218496;
    *v226 = a2;
    *&v226[8] = 2048;
    *&v226[10] = a3;
    *&v226[18] = 2048;
    *&v226[20] = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Attempting to load all OOS Geofences in proximity to WEA geofence point %f, %f, %f...", buf, 0x20u);
  }

  v207 = sub_10152702C(a1, a2, a3, a4, 37.103384, -119.63562, 3890.55709);
  v206 = sub_10152702C(a1, a2, a3, a4, 38.2079717, -118.657837, 2875.21697);
  v205 = sub_10152702C(a1, a2, a3, a4, 34.4748635, -118.712769, 2848.5006);
  v204 = sub_10152702C(a1, a2, a3, a4, 34.048108, -119.558716, 1838.35782);
  v203 = sub_10152702C(a1, a2, a3, a4, 41.9799108, -115.427856, 2828.41633);
  v202 = sub_10152702C(a1, a2, a3, a4, 32.8195947, -118.405151, 1479.5603);
  v201 = sub_10152702C(a1, a2, a3, a4, 36.3991782, -121.876831, 2781.82243);
  v200 = sub_10152702C(a1, a2, a3, a4, 40.3339831, -123.678589, 5012.10879);
  v199 = sub_10152702C(a1, a2, a3, a4, 41.2901898, -116.251831, 2296.24251);
  v198 = sub_10152702C(a1, a2, a3, a4, 41.8327349, -119.558716, 5475.6327);
  v197 = sub_10152702C(a1, a2, a3, a4, 32.6347489, -118.064575, 6270.3423);
  v196 = sub_10152702C(a1, a2, a3, a4, 36.6551994, -121.118774, 6209.28435);
  v195 = sub_10152702C(a1, a2, a3, a4, 40.9342651, -121.723022, 5532.31555);
  v194 = sub_10152702C(a1, a2, a3, a4, 41.5866882, -115.20813, 6402.18978);
  v193 = sub_10152702C(a1, a2, a3, a4, 37.6533831, -119.899292, 2736.66073);
  v192 = sub_10152702C(a1, a2, a3, a4, 40.2920966, -122.601929, 3850.49979);
  v191 = sub_10152702C(a1, a2, a3, a4, 41.2075889, -121.272583, 2764.29171);
  v190 = sub_10152702C(a1, a2, a3, a4, 41.86547, -116.010132, 5830.58718);
  v189 = sub_10152702C(a1, a2, a3, a4, 33.9752534, -119.624634, 3818.89925);
  v188 = sub_10152702C(a1, a2, a3, a4, 39.499802, -114.691772, 2667.77789);
  v187 = sub_10152702C(a1, a2, a3, a4, 35.2680468, -122.371216, 1000.0);
  v186 = sub_10152702C(a1, a2, a3, a4, 41.8736511, -115.427856, 3439.32709);
  v185 = sub_10152702C(a1, a2, a3, a4, 34.3298282, -118.119507, 6392.08253);
  v184 = sub_10152702C(a1, a2, a3, a4, 41.7344293, -123.986206, 3656.00197);
  v183 = sub_10152702C(a1, a2, a3, a4, 39.9981638, -123.931274, 4192.92669);
  v182 = sub_10152702C(a1, a2, a3, a4, 41.7917926, -123.755493, 10368.5502);
  v181 = sub_10152702C(a1, a2, a3, a4, 41.9962427, -120.723267, 2000.0);
  v180 = sub_10152702C(a1, a2, a3, a4, 36.0180036, -117.789917, 7130.23409);
  v179 = sub_10152702C(a1, a2, a3, a4, 40.7680616, -121.503296, 2771.47775);
  v178 = sub_10152702C(a1, a2, a3, a4, 38.6039931, -120.140991, 3440.07338);
  v177 = sub_10152702C(a1, a2, a3, a4, 40.8761413, -122.305298, 3330.72813);
  v176 = sub_10152702C(a1, a2, a3, a4, 38.6469081, -114.6698, 2699.94747);
  v175 = sub_10152702C(a1, a2, a3, a4, 33.1421507, -116.790161, 1000.0);
  v174 = sub_10152702C(a1, a2, a3, a4, 41.7754083, -123.041382, 11131.0791);
  v173 = sub_10152702C(a1, a2, a3, a4, 40.0822744, -119.745483, 5125.71665);
  v172 = sub_10152702C(a1, a2, a3, a4, 35.8222672, -114.702759, 1152.53366);
  v171 = sub_10152702C(a1, a2, a3, a4, 39.1598817, -123.64563, 2680.67089);
  v170 = sub_10152702C(a1, a2, a3, a4, 35.1693179, -120.426636, 2824.18759);
  v169 = sub_10152702C(a1, a2, a3, a4, 41.1745192, -120.151978, 5887.47949);
  v168 = sub_10152702C(a1, a2, a3, a4, 41.86547, -119.020386, 6558.09369);
  v167 = sub_10152702C(a1, a2, a3, a4, 35.5992522, -120.910034, 2973.90783);
  v166 = sub_10152702C(a1, a2, a3, a4, 40.1914629, -121.525269, 4750.91361);
  v165 = sub_10152702C(a1, a2, a3, a4, 33.224903, -117.581177, 1174.33696);
  v164 = sub_10152702C(a1, a2, a3, a4, 35.920196, -114.505005, 1409.27083);
  v163 = sub_10152702C(a1, a2, a3, a4, 36.1245646, -113.977661, 1928.06813);
  v162 = sub_10152702C(a1, a2, a3, a4, 41.257162, -123.612671, 2910.69928);
  v161 = sub_10152702C(a1, a2, a3, a4, 40.3423573, -117.614136, 1983.39301);
  v160 = sub_10152702C(a1, a2, a3, a4, 39.0063789, -120.525513, 3008.25182);
  v159 = sub_10152702C(a1, a2, a3, a4, 41.2323801, -122.65686, 5507.57456);
  v158 = sub_10152702C(a1, a2, a3, a4, 35.2590764, -120.50354, 3214.56888);
  v157 = sub_10152702C(a1, a2, a3, a4, 36.3637984, -116.724243, 9089.62536);
  v156 = sub_10152702C(a1, a2, a3, a4, 33.3534732, -118.427124, 3674.50302);
  v155 = sub_10152702C(a1, a2, a3, a4, 38.8268704, -123.217163, 2730.17151);
  v154 = sub_10152702C(a1, a2, a3, a4, 37.5489325, -122.426147, 2038.86896);
  v153 = sub_10152702C(a1, a2, a3, a4, 41.3149498, -120.042114, 2759.76835);
  v152 = sub_10152702C(a1, a2, a3, a4, 35.6439051, -120.206909, 7242.11046);
  v151 = sub_10152702C(a1, a2, a3, a4, 35.7866268, -115.933228, 2207.91229);
  v150 = sub_10152702C(a1, a2, a3, a4, 37.4007099, -115.53772, 2648.1002);
  v149 = sub_10152702C(a1, a2, a3, a4, 35.7152979, -118.064575, 5349.62303);
  v148 = sub_10152702C(a1, a2, a3, a4, 37.0770931, -121.470337, 3907.69299);
  v147 = sub_10152702C(a1, a2, a3, a4, 40.3004759, -124.30481, 3358.01115);
  v146 = sub_10152702C(a1, a2, a3, a4, 39.0234513, -122.338257, 3007.52925);
  v145 = sub_10152702C(a1, a2, a3, a4, 33.7745812, -118.55896, 1931.9518);
  v144 = sub_10152702C(a1, a2, a3, a4, 37.4792173, -121.536255, 3061.75551);
  v143 = sub_10152702C(a1, a2, a3, a4, 36.8224775, -118.910522, 6267.12604);
  v142 = sub_10152702C(a1, a2, a3, a4, 35.3039184, -118.427124, 5376.95079);
  v141 = sub_10152702C(a1, a2, a3, a4, 33.5459729, -117.394409, 1050.4742);
  v140 = sub_10152702C(a1, a2, a3, a4, 41.4962352, -116.098022, 3203.22894);
  v139 = sub_10152702C(a1, a2, a3, a4, 32.9487585, -117.328491, 1249.09616);
  v138 = sub_10152702C(a1, a2, a3, a4, 38.0264586, -114.197388, 4083.26082);
  v137 = sub_10152702C(a1, a2, a3, a4, 38.655488, -114.801636, 6023.7809);
  v136 = sub_10152702C(a1, a2, a3, a4, 37.4356123, -115.449829, 5045.81452);
  v135 = sub_10152702C(a1, a2, a3, a4, 41.7344293, -116.207886, 8163.15452);
  v134 = sub_10152702C(a1, a2, a3, a4, 38.8782049, -120.228882, 2691.28269);
  v133 = sub_10152702C(a1, a2, a3, a4, 38.7583668, -114.043579, 1089.77915);
  v132 = sub_10152702C(a1, a2, a3, a4, 38.2770008, -121.744995, 1000.0);
  v131 = sub_10152702C(a1, a2, a3, a4, 37.9571921, -114.230347, 2496.49588);
  v130 = sub_10152702C(a1, a2, a3, a4, 38.2511226, -115.724487, 4001.76095);
  v129 = sub_10152702C(a1, a2, a3, a4, 41.2323801, -120.393677, 3899.67676);
  v128 = sub_10152702C(a1, a2, a3, a4, 35.4472459, -120.811157, 2814.58556);
  v127 = sub_10152702C(a1, a2, a3, a4, 33.2432817, -119.470825, 5490.04615);
  v126 = sub_10152702C(a1, a2, a3, a4, 40.8927533, -121.085815, 6532.04983);
  v125 = sub_10152702C(a1, a2, a3, a4, 36.6287537, -120.514526, 2773.65546);
  v124 = sub_10152702C(a1, a2, a3, a4, 38.2597497, -120.415649, 3462.89199);
  v123 = sub_10152702C(a1, a2, a3, a4, 34.7280696, -119.207153, 7114.85239);
  v122 = sub_10152702C(a1, a2, a3, a4, 41.7426272, -122.140503, 5841.7059);
  v121 = sub_10152702C(a1, a2, a3, a4, 36.9279389, -116.636353, 1000.0);
  v120 = sub_10152702C(a1, a2, a3, a4, 41.4138954, -114.713745, 2755.59091);
  v119 = sub_10152702C(a1, a2, a3, a4, 40.5597212, -122.052612, 3939.23586);
  v118 = sub_10152702C(a1, a2, a3, a4, 36.3106987, -115.680542, 2784.95803);
  v117 = sub_10152702C(a1, a2, a3, a4, 40.7347709, -123.19519, 5404.78826);
  v116 = sub_10152702C(a1, a2, a3, a4, 38.3804215, -114.746704, 3310.43295);
  v115 = sub_10152702C(a1, a2, a3, a4, 37.3483259, -115.658569, 2893.60385);
  v114 = sub_10152702C(a1, a2, a3, a4, 38.9038582, -114.515991, 3939.13183);
  v113 = sub_10152702C(a1, a2, a3, a4, 39.3640322, -113.988647, 1124.41275);
  v112 = sub_10152702C(a1, a2, a3, a4, 33.6466354, -118.141479, 1945.12875);
  v111 = sub_10152702C(a1, a2, a3, a4, 33.9752534, -120.075073, 1766.18765);
  v110 = sub_10152702C(a1, a2, a3, a4, 36.3284026, -117.713013, 3117.87973);
  v109 = sub_10152702C(a1, a2, a3, a4, 37.514083, -114.252319, 1652.54055);
  v108 = sub_10152702C(a1, a2, a3, a4, 38.8696517, -117.493286, 2390.32147);
  v107 = sub_10152702C(a1, a2, a3, a4, 36.1334382, -120.602417, 3555.31653);
  v106 = sub_10152702C(a1, a2, a3, a4, 33.6923522, -118.591919, 2061.29748);
  v105 = sub_10152702C(a1, a2, a3, a4, 32.5977338, -117.350464, 1235.8409);
  v104 = sub_10152702C(a1, a2, a3, a4, 33.6466354, -118.086548, 1893.71217);
  v103 = sub_10152702C(a1, a2, a3, a4, 40.1998548, -119.185181, 1301.07311);
  v102 = sub_10152702C(a1, a2, a3, a4, 39.0405195, -114.647827, 3006.44523);
  v101 = sub_10152702C(a1, a2, a3, a4, 41.8163611, -115.010376, 4051.28587);
  v100 = sub_10152702C(a1, a2, a3, a4, 37.7490006, -122.843628, 3737.18804);
  v99 = sub_10152702C(a1, a2, a3, a4, 37.7490006, -123.019409, 2995.75174);
  v98 = sub_10152702C(a1, a2, a3, a4, 40.7181192, -115.08728, 2934.11401);
  v97 = sub_10152702C(a1, a2, a3, a4, 41.0254992, -120.042114, 4973.7915);
  v96 = sub_10152702C(a1, a2, a3, a4, 39.0831721, -119.415894, 1128.3857);
  v95 = sub_10152702C(a1, a2, a3, a4, 37.4617784, -118.712769, 5805.13049);
  v94 = sub_10152702C(a1, a2, a3, a4, 36.05354, -114.01062, 4065.51403);
  v213 = sub_10152702C(a1, a2, a3, a4, 38.2338653, -114.702759, 4801.81957);
  v93 = sub_10152702C(a1, a2, a3, a4, 41.7016272, -115.08728, 5195.4763);
  v92 = sub_10152702C(a1, a2, a3, a4, 38.96368, -117.57019, 3429.30875);
  v91 = sub_10152702C(a1, a2, a3, a4, 33.8384826, -120.009155, 1810.7869);
  v90 = sub_10152702C(a1, a2, a3, a4, 39.9813293, -122.799683, 6540.26303);
  v89 = sub_10152702C(a1, a2, a3, a4, 39.8970942, -114.87854, 6643.65794);
  v88 = sub_10152702C(a1, a2, a3, a4, 40.5012693, -120.756226, 4150.80966);
  v209 = sub_10152702C(a1, a2, a3, a4, 41.2323801, -116.032104, 6157.7353);
  v87 = sub_10152702C(a1, a2, a3, a4, 35.3128839, -115.109253, 2040.30802);
  v86 = sub_10152702C(a1, a2, a3, a4, 36.8664374, -115.9552, 1000.0);
  v211 = sub_10152702C(a1, a2, a3, a4, 37.5489325, -113.933716, 3426.72679);
  v85 = sub_10152702C(a1, a2, a3, a4, 40.6431355, -121.239624, 2937.40144);
  v84 = sub_10152702C(a1, a2, a3, a4, 40.834593, -114.867554, 2779.93099);
  v83 = sub_10152702C(a1, a2, a3, a4, 37.3483259, -113.988647, 1449.33625);
  v210 = sub_10152702C(a1, a2, a3, a4, 38.655488, -120.404663, 4855.5858);
  v82 = sub_10152702C(a1, a2, a3, a4, 34.5110831, -120.481567, 5122.99133);
  v81 = sub_10152702C(a1, a2, a3, a4, 38.2252351, -115.010376, 2874.5436);
  v80 = sub_10152702C(a1, a2, a3, a4, 38.7926268, -114.559937, 3007.78547);
  v79 = sub_10152702C(a1, a2, a3, a4, 41.9799108, -114.021606, 12860.8947);
  v78 = sub_10152702C(a1, a2, a3, a4, 38.4750942, -116.054077, 6061.56642);
  v77 = sub_10152702C(a1, a2, a3, a4, 34.9354819, -120.2948, 2998.03497);
  v76 = sub_10152702C(a1, a2, a3, a4, 37.2521936, -118.174438, 5821.16617);
  v75 = sub_10152702C(a1, a2, a3, a4, 39.219487, -113.999634, 1124.41275);
  v74 = sub_10152702C(a1, a2, a3, a4, 32.7364616, -117.537231, 1628.61336);
  v73 = sub_10152702C(a1, a2, a3, a4, 40.3256079, -116.724243, 1047.50463);
  v72 = sub_10152702C(a1, a2, a3, a4, 41.9717432, -122.195435, 5538.93425);
  v71 = sub_10152702C(a1, a2, a3, a4, 41.0172104, -120.844116, 7829.17805);
  v70 = sub_10152702C(a1, a2, a3, a4, 40.0906797, -120.020142, 2997.09914);
  v69 = sub_10152702C(a1, a2, a3, a4, 35.9468828, -115.669556, 4020.44214);
  v68 = sub_10152702C(a1, a2, a3, a4, 35.8935001, -117.383423, 4922.96735);
  v67 = sub_10152702C(a1, a2, a3, a4, 38.7754989, -114.823608, 7083.3572);
  v66 = sub_10152702C(a1, a2, a3, a4, 38.1647952, -114.724731, 4094.68056);
  v65 = sub_10152702C(a1, a2, a3, a4, 40.2250241, -118.306274, 2010.05963);
  v64 = sub_10152702C(a1, a2, a3, a4, 37.2521936, -122.217407, 3881.22242);
  v63 = sub_10152702C(a1, a2, a3, a4, 39.4064887, -122.997437, 5735.36059);
  v62 = sub_10152702C(a1, a2, a3, a4, 39.6183835, -120.591431, 5947.146);
  v61 = sub_10152702C(a1, a2, a3, a4, 41.6934241, -115.856323, 3658.6703);
  v219 = sub_10152702C(a1, a2, a3, a4, 39.2620313, -114.691772, 7643.58434);
  v60 = sub_10152702C(a1, a2, a3, a4, 33.6191936, -115.999146, 3255.85208);
  v59 = sub_10152702C(a1, a2, a3, a4, 37.5315098, -115.603638, 6436.01791);
  v58 = sub_10152702C(a1, a2, a3, a4, 35.3487356, -116.845093, 1000.0);
  v57 = sub_10152702C(a1, a2, a3, a4, 34.6015631, -119.767456, 4697.25793);
  v56 = sub_10152702C(a1, a2, a3, a4, 37.78374, -122.887573, 3690.46764);
  v55 = sub_10152702C(a1, a2, a3, a4, 42.0370542, -114.933472, 2568.57945);
  v54 = sub_10152702C(a1, a2, a3, a4, 35.0974397, -114.450073, 1000.0);
  v53 = sub_10152702C(a1, a2, a3, a4, 37.7142448, -123.052368, 2492.38831);
  v52 = sub_10152702C(a1, a2, a3, a4, 40.1494881, -114.34021, 1000.0);
  v51 = sub_10152702C(a1, a2, a3, a4, 36.1600529, -118.624878, 4074.67122);
  v50 = sub_10152702C(a1, a2, a3, a4, 36.1866585, -116.339722, 3123.51304);
  v49 = sub_10152702C(a1, a2, a3, a4, 32.7457024, -118.042603, 2969.91351);
  v48 = sub_10152702C(a1, a2, a3, a4, 38.0351123, -116.07605, 15179.5766);
  v47 = sub_10152702C(a1, a2, a3, a4, 33.2065203, -117.877808, 1072.12796);
  v214 = sub_10152702C(a1, a2, a3, a4, 35.8133586, -121.085815, 3138.2572);
  v220 = sub_10152702C(a1, a2, a3, a4, 38.6039931, -115.691528, 3677.16264);
  v46 = sub_10152702C(a1, a2, a3, a4, 41.5373659, -121.591187, 2587.87098);
  v45 = sub_10152702C(a1, a2, a3, a4, 33.9205714, -115.900269, 3198.74008);
  v44 = sub_10152702C(a1, a2, a3, a4, 40.6848035, -121.810913, 4150.70334);
  v43 = sub_10152702C(a1, a2, a3, a4, 38.1561568, -122.788696, 3851.62585);
  v42 = sub_10152702C(a1, a2, a3, a4, 37.7576869, -122.77771, 3505.04919);
  v41 = sub_10152702C(a1, a2, a3, a4, 38.5180862, -116.350708, 12420.8634);
  v40 = sub_10152702C(a1, a2, a3, a4, 33.9934729, -116.658325, 3045.14158);
  v221 = sub_10152702C(a1, a2, a3, a4, 40.3339831, -118.800659, 1147.07684);
  v39 = sub_10152702C(a1, a2, a3, a4, 38.5782318, -115.735474, 2850.07857);
  v38 = sub_10152702C(a1, a2, a3, a4, 40.8096515, -122.162476, 5235.07936);
  v37 = sub_10152702C(a1, a2, a3, a4, 35.9913408, -114.373169, 1546.27578);
  v222 = sub_10152702C(a1, a2, a3, a4, 35.8489871, -116.251831, 3125.44252);
  v36 = sub_10152702C(a1, a2, a3, a4, 38.2856248, -119.701538, 4798.01371);
  v212 = sub_10152702C(a1, a2, a3, a4, 33.6923522, -118.504028, 2529.10398);
  v216 = sub_10152702C(a1, a2, a3, a4, 39.8970942, -123.491821, 6285.21792);
  v35 = sub_10152702C(a1, a2, a3, a4, 32.7549423, -117.460327, 1446.35701);
  v34 = sub_10152702C(a1, a2, a3, a4, 37.7229353, -122.920532, 3096.08505);
  v33 = sub_10152702C(a1, a2, a3, a4, 41.3974149, -115.043335, 6496.5515);
  v32 = sub_10152702C(a1, a2, a3, a4, 36.3903347, -117.284546, 13031.8173);
  v31 = sub_10152702C(a1, a2, a3, a4, 38.0783655, -118.284302, 1511.26049);
  v30 = sub_10152702C(a1, a2, a3, a4, 40.9923378, -122.294312, 2773.33134);
  v29 = sub_10152702C(a1, a2, a3, a4, 40.1746761, -120.569458, 3857.62841);
  v28 = sub_10152702C(a1, a2, a3, a4, 40.4511271, -118.02063, 4659.8097);
  v27 = sub_10152702C(a1, a2, a3, a4, 40.5930994, -115.383911, 5859.16441);
  v224 = sub_10152702C(a1, a2, a3, a4, 35.3487356, -120.042114, 4226.76241);
  v218 = sub_10152702C(a1, a2, a3, a4, 34.211802, -113.999634, 10883.0231);
  v26 = sub_10152702C(a1, a2, a3, a4, 37.7924223, -123.118286, 4161.18314);
  v217 = sub_10152702C(a1, a2, a3, a4, 37.9051994, -114.043579, 2886.98391);
  v215 = sub_10152702C(a1, a2, a3, a4, 38.4578902, -114.724731, 4023.36168);
  v208 = sub_10152702C(a1, a2, a3, a4, 40.9176635, -118.394165, 1000.0);
  v24 = sub_10152702C(a1, a2, a3, a4, 38.7240903, -117.702026, 1704.35686);
  v25 = sub_10152702C(a1, a2, a3, a4, 41.6523928, -114.977417, 6025.96476);
  v23 = sub_10152702C(a1, a2, a3, a4, 40.9674557, -119.701538, 2918.4141);
  v22 = sub_10152702C(a1, a2, a3, a4, 37.5663511, -114.373169, 1747.19047);
  v21 = sub_10152702C(a1, a2, a3, a4, 36.0890603, -116.295776, 4061.89008);
  v20 = sub_10152702C(a1, a2, a3, a4, 37.9398653, -114.977417, 5198.30921);
  v223 = sub_10152702C(a1, a2, a3, a4, 40.9840448, -121.876831, 3914.34481);
  v9 = sub_10152702C(a1, a2, a3, a4, 41.3149498, -114.75769, 2597.33793);
  v10 = sub_10152702C(a1, a2, a3, a4, 39.9055224, -115.471802, 1445.43892);
  v11 = sub_10152702C(a1, a2, a3, a4, 40.0822744, -115.691528, 3708.78011);
  v12 = sub_10152702C(a1, a2, a3, a4, 33.9479168, -119.734497, 5079.6738);
  v13 = sub_10152702C(a1, a2, a3, a4, 35.0524836, -120.305786, 2993.81144);
  v14 = sub_10152702C(a1, a2, a3, a4, 36.3461025, -117.4823, 5997.90737);
  v15 = sub_10152702C(a1, a2, a3, a4, 40.5430259, -117.130737, 1347.45793);
  v16 = sub_10152702C(a1, a2, a3, a4, 35.7420537, -115.263062, 1086.61871);
  v17 = sub_10152702C(a1, a2, a3, a4, 37.7403132, -122.689819, 3069.43685);
  v18 = *(a1 + 40);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v206 + v207 + v205 + v204 + v203 + v202 + v201 + v200 + v199 + v198 + v197 + v196 + v195 + v194 + v193 + v192 + v191 + v190 + v189 + v188 + v187 + v186 + v185 + v184 + v183 + v182 + v181 + v180 + v179 + v178 + v177 + v176 + v175 + v174 + v173 + v172 + v171 + v170 + v169 + v168 + v167 + v166 + v165 + v164 + v163 + v162 + v161 + v160 + v159 + v158 + v157 + v156 + v155 + v154 + v153 + v152 + v151 + v150 + v149 + v148 + v147 + v146 + v145 + v144 + v143 + v142 + v141 + v140 + v139 + v138 + v137 + v136 + v135 + v134 + v133 + v132 + v131 + v130 + v129 + v128 + v127 + v126 + v125 + v124 + v123 + v122 + v121 + v120 + v119 + v118 + v117 + v116 + v115 + v114 + v113 + v112 + v111 + v110 + v109 + v108 + v107 + v106 + v105 + v104 + v103 + v102 + v101 + v100 + v99 + v98 + v97 + v96 + v95 + v94 + v213 + v93 + v92 + v91 + v90 + v89 + v88;
    *buf = 67109888;
    *v226 = v19 + v209 + v87 + v86 + v211 + v85 + v84 + v83 + v210 + v82 + v81 + v80 + v79 + v78 + v77 + v76 + v75 + v74 + v73 + v72 + v71 + v70 + v69 + v68 + v67 + v66 + v65 + v64 + v63 + v62 + v61 + v219 + v60 + v59 + v58 + v57 + v56 + v55 + v54 + v53 + v52 + v51 + v50 + v49 + v48 + v47 + v214 + v220 + v46 + v45 + v44 + v43 + v42 + v41 + v40 + v221 + v39 + v38 + v37 + v222 + v36 + v212 + v216 + v35 + v34 + v33 + v32 + v31 + v30 + v29 + v28 + v27 + v224 + v218 + v26 + v217 + v215 + v208 + v24 + v25 + v23 + v22 + v21 + v20 + v223 + v9 + v10 + v11 + v12 + v13 + v14 + v15 + v16 + v17;
    *&v226[4] = 2048;
    *&v226[6] = a2;
    *&v226[14] = 2048;
    *&v226[16] = a3;
    *&v226[24] = 2048;
    *&v226[26] = a4;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Loaded %d new OOS Geofences in proximity to WEA geofence point %f, %f, %f.", buf, 0x26u);
  }
}

__n128 sub_10152B1A0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F48F90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10152B1D8(void *a1)
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

uint64_t sub_10152B220(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152B28C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49010;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

id sub_10152B308(uint64_t a1)
{
  v2 = objc_opt_new();
  if (*(a1 + 16) == 1)
  {
    v3 = objc_opt_new();
    [v2 setModelVector:v3];

    v4 = objc_opt_new();
    v5 = [v2 modelVector];
    [v5 setDefaultVector:v4];

    if (*(a1 + 4) >= 1)
    {
      v6 = objc_opt_new();
      v7 = [v2 modelVector];
      v8 = [v7 defaultVector];
      [v8 setX:v6];

      v9 = [NSNumber numberWithDouble:*a1];
      v10 = [v2 modelVector];
      v11 = [v10 defaultVector];
      v12 = [v11 x];
      [v12 setOffset:v9];

      v13 = [NSNumber numberWithDouble:*(a1 + 4)];
      v14 = [v2 modelVector];
      v15 = [v14 defaultVector];
      v16 = [v15 x];
      [v16 setRange:v13];
    }

    if (*(a1 + 12) >= 1)
    {
      v17 = objc_opt_new();
      v18 = [v2 modelVector];
      v19 = [v18 defaultVector];
      [v19 setY:v17];

      v20 = [NSNumber numberWithDouble:*(a1 + 8)];
      v21 = [v2 modelVector];
      v22 = [v21 defaultVector];
      v23 = [v22 y];
      [v23 setOffset:v20];

      v24 = [NSNumber numberWithDouble:*(a1 + 12)];
      v25 = [v2 modelVector];
      v26 = [v25 defaultVector];
      v27 = [v26 y];
      [v27 setRange:v24];
    }
  }

  return v2;
}

id sub_10152B64C(uint64_t a1)
{
  v2 = objc_alloc_init(CTConnectionAssistantState);
  [v2 setVersion:*a1];
  v3 = [[CTStewieState alloc] initWithStewieState:a1 + 8];
  [v2 setStewieState:v3];

  v4 = (*(a1 + 380) - 1);
  if (v4 < 3)
  {
    v5 = v4 + 1;
  }

  else
  {
    v5 = 0;
  }

  [v2 setInternetInterface:v5];
  if (*(a1 + 56) == 1)
  {
    v6 = objc_alloc_init(CTCATarget);
    [v2 setCurrentTarget:v6];

    v7 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
    v8 = [v2 currentTarget];
    [v8 setTargetId:v7];

    v9 = [NSNumber numberWithDouble:*(a1 + 40)];
    v10 = [v2 currentTarget];
    [v10 setX:v9];

    v11 = [NSNumber numberWithDouble:*(a1 + 48)];
    v12 = [v2 currentTarget];
    [v12 setY:v11];
  }

  if (*(a1 + 128) == 1)
  {
    v13 = objc_alloc_init(CTCAServiceIntervals);
    [v2 setServiceIntervals:v13];

    if ((*(a1 + 128) & 1) == 0)
    {
      sub_1000D1644();
    }

    v14 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 80) / 1000000)];
    v15 = [v2 serviceIntervals];
    [v15 setStartsAt:v14];

    v16 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 88) / 1000000)];
    v17 = [v2 serviceIntervals];
    [v17 setEndsAt:v16];

    v18 = *(a1 + 96);
    v19 = [v2 serviceIntervals];
    [v19 setAtStart:v18];

    if (*(a1 + 104) != *(a1 + 112))
    {
      v20 = objc_opt_new();
      v21 = *(a1 + 104);
      v22 = *(a1 + 112);
      while (v21 != v22)
      {
        v23 = [NSDate dateWithTimeIntervalSince1970:(*v21 / 1000000)];
        [v20 addObject:v23];

        ++v21;
      }

      v24 = [NSArray arrayWithArray:v20];
      v25 = [v2 serviceIntervals];
      [v25 setChangesAt:v24];
    }
  }

  if (*(a1 + 152) == 1)
  {
    v26 = objc_opt_new();
    [v2 setSilenceInterval:v26];

    if ((*(a1 + 152) & 1) == 0)
    {
      sub_1000D1644();
    }

    v27 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 136) / 1000000)];
    v28 = [v2 silenceInterval];
    [v28 setStartsAt:v27];

    v29 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 144) / 1000000)];
    v30 = [v2 silenceInterval];
    [v30 setEndsAt:v29];
  }

  if (*(a1 + 68) == 1)
  {
    v31 = objc_alloc_init(CTCATargetVisibility);
    [v2 setTargetVisibility:v31];

    v32 = *(a1 + 64);
    v33 = [v2 targetVisibility];
    v34 = v33;
    v35 = (v32 - 1);
    if (v35 < 3)
    {
      v36 = v35 + 1;
    }

    else
    {
      v36 = 0;
    }

    [v33 setAggregateVisibility:v36];
  }

  if (*(a1 + 72) == 1)
  {
    v37 = objc_opt_new();
    [v2 setLocationState:v37];

    v38 = [v2 locationState];
    [v38 setLocationAcquisitionStatus:1];
  }

  if (*(a1 + 240) == 1)
  {
    v39 = objc_alloc_init(CTCAConnectionState);
    [v2 setConnectionState:v39];

    v40 = *(a1 + 160);
    v41 = [v2 connectionState];
    v42 = v41;
    v43 = (v40 - 1);
    if (v43 < 3)
    {
      v44 = v43 + 1;
    }

    else
    {
      v44 = 0;
    }

    [v41 setConnectionStatus:v44];

    v45 = *(a1 + 164);
    v46 = [v2 connectionState];
    v47 = v46;
    if (v45 == 2)
    {
      v48 = 2;
    }

    else
    {
      v48 = v45 == 1;
    }

    [v46 setSyncStatus:v48];

    v49 = *(a1 + 168);
    v50 = [v2 connectionState];
    v51 = v50;
    if (v49 == 2)
    {
      v52 = 2;
    }

    else
    {
      v52 = v49 == 1;
    }

    [v50 setRegistrationStatus:v52];

    if (*(a1 + 176) == 1)
    {
      v53 = *(a1 + 172);
      v54 = [v2 connectionState];
      v55 = v54;
      v56 = (v53 - 1);
      if (v56 < 4)
      {
        v57 = v56 + 1;
      }

      else
      {
        v57 = 0;
      }

      [v54 setCongestionStatus:v57];
    }

    else
    {
      v55 = [v2 connectionState];
      [v55 setCongestionStatus:0];
    }

    if (*(a1 + 184) == 1)
    {
      v58 = [NSNumber numberWithInteger:*(a1 + 180)];
      v59 = [v2 connectionState];
      [v59 setRssi:v58];
    }

    if (*(a1 + 232) == 1)
    {
      v60 = objc_alloc_init(CTCATransmissionProgress);
      v61 = [v2 connectionState];
      [v61 setCurrentTransmissionProgress:v60];

      v62 = *(a1 + 192);
      if (v62)
      {
        v63 = CFUUIDCreateString(kCFAllocatorDefault, v62);
        v64 = [v2 connectionState];
        v65 = [v64 currentTransmissionProgress];
        [v65 setMessageId:v63];
      }

      if (*(a1 + 208) == 1)
      {
        v66 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 200) / 1000000)];
        v67 = [v2 connectionState];
        v68 = [v67 currentTransmissionProgress];
        [v68 setStartedAt:v66];
      }

      if (*(a1 + 220) == 1)
      {
        v69 = [NSNumber numberWithUnsignedInteger:*(a1 + 216)];
        v70 = [v2 connectionState];
        v71 = [v70 currentTransmissionProgress];
        [v71 setEstimatedDurationSeconds:v69];
      }

      if (*(a1 + 225) == 1)
      {
        v72 = [NSNumber numberWithUnsignedInteger:*(a1 + 224)];
        v73 = [v2 connectionState];
        v74 = [v73 currentTransmissionProgress];
        [v74 setProgressPercents:v72];
      }

      v75 = (*(a1 + 228) - 1);
      if (v75 < 0xC)
      {
        v76 = v75 + 1;
      }

      else
      {
        v76 = 0;
      }

      v77 = [v2 connectionState];
      v78 = [v77 currentTransmissionProgress];
      [v78 setPayloadType:v76];
    }
  }

  if (*(a1 + 260) == 1)
  {
    v79 = objc_alloc_init(CTCAConversationState);
    [v2 setConversationState:v79];

    v80 = *(a1 + 248);
    v81 = [v2 conversationState];
    v82 = v81;
    v83 = (v80 - 1);
    if (v83 < 4)
    {
      v84 = v83 + 1;
    }

    else
    {
      v84 = 0;
    }

    [v81 setRequestReason:v84];

    v85 = [NSNumber numberWithInt:*(a1 + 252)];
    v86 = [v2 conversationState];
    [v86 setConversationId:v85];

    v87 = *(a1 + 253);
    v88 = [v2 conversationState];
    [v88 setCommitted:v87];

    v89 = *(a1 + 256);
    v90 = *(a1 + 254);
    v91 = [v2 conversationState];
    v92 = v91;
    if (v89)
    {
      v93 = v90;
    }

    else
    {
      v93 = 0;
    }

    [v91 setFromService:v93];
  }

  if (*(a1 + 296) == 1)
  {
    v94 = objc_opt_new();
    [v2 setRoadsideConversationState:v94];

    v95 = [NSNumber numberWithInt:*(a1 + 264)];
    v96 = [v2 roadsideConversationState];
    [v96 setConversationId:v95];

    v97 = *(a1 + 265);
    v98 = [v2 roadsideConversationState];
    [v98 setCommitted:v97];

    if (*(a1 + 280) == 1)
    {
      v99 = [NSNumber numberWithUnsignedLongLong:*(a1 + 272)];
      v100 = [v2 roadsideConversationState];
      [v100 setProviderId:v99];
    }

    v101 = *(a1 + 290);
    v102 = *(a1 + 288);
    v103 = [v2 roadsideConversationState];
    v104 = v103;
    if (v101)
    {
      v105 = v102;
    }

    else
    {
      v105 = 0;
    }

    [v103 setFromService:v105];
  }

  v106 = (a1 + 304);
  if (*(a1 + 327) < 0)
  {
    if (!*(a1 + 312))
    {
      goto LABEL_75;
    }

    v106 = *v106;
    goto LABEL_74;
  }

  if (*(a1 + 327))
  {
LABEL_74:
    v107 = [NSString stringWithUTF8String:v106];
    [v2 setIso3166Alpha3CountryCode:v107];
  }

LABEL_75:
  if (*(a1 + 328))
  {
    v108 = objc_opt_new();
    [v2 setServicePartners:v108];

    v109 = *(a1 + 328);
    if (*(v109 + 24) == 1)
    {
      v110 = objc_opt_new();
      v142 = a1;
      v144 = v2;
      v111 = *(a1 + 328);
      if ((*(v111 + 24) & 1) == 0)
      {
        sub_1000D1644();
      }

      v114 = *v111;
      v112 = (v111 + 8);
      v113 = v114;
      if (v114 != v112)
      {
        do
        {
          v115 = objc_opt_new();
          v116 = v113[5];
          v117 = v113[6];
          while (v116 != v117)
          {
            v118 = v116;
            if (*(v116 + 23) < 0)
            {
              v118 = *v116;
            }

            v119 = [NSString stringWithUTF8String:v118, v142];
            [v115 addObject:v119];

            v116 += 3;
          }

          v120 = [NSNumber numberWithUnsignedShort:*(v113 + 16)];
          [v110 setObject:v115 forKeyedSubscript:v120];

          v121 = v113[1];
          if (v121)
          {
            do
            {
              v122 = v121;
              v121 = *v121;
            }

            while (v121);
          }

          else
          {
            do
            {
              v122 = v113[2];
              v123 = *v122 == v113;
              v113 = v122;
            }

            while (!v123);
          }

          v113 = v122;
        }

        while (v122 != v112);
      }

      v2 = v144;
      v124 = [v144 servicePartners];
      [v124 setPartners:v110];
      a1 = v143;

      v109 = *(v143 + 328);
    }

    v125 = *(v109 + 32);
    if (v125)
    {
      v126 = [v2 servicePartners];
      [v126 setFootnotesToShowMask:v125 & 7];
    }
  }

  if (*(a1 + 368) == 1)
  {
    v127 = objc_opt_new();
    [v2 setConnectionClosedState:v127];

    v128 = *(a1 + 344) - 1;
    if (v128 > 0x10)
    {
      v129 = 0;
    }

    else
    {
      v129 = qword_101986530[v128];
    }

    v130 = [v2 connectionClosedState];
    [v130 setReason:v129];

    v131 = [NSDate dateWithTimeIntervalSince1970:(*(a1 + 352) / 1000000)];
    v132 = [v2 connectionClosedState];
    [v132 setClosedAt:v131];

    v133 = *(a1 + 360);
    v134 = [v2 connectionClosedState];
    [v134 setWasActiveServices:v133];
  }

  if (*(a1 + 377) == 1)
  {
    v135 = objc_opt_new();
    [v2 setTryOutState:v135];

    v136 = *(a1 + 376);
    v137 = [v2 tryOutState];
    [v137 setTryOutOfferPending:v136];
  }

  [v2 setIsEmergencyVoiceCallCapable:*(a1 + 378)];
  v138 = (a1 + 384);
  if ((*(a1 + 407) & 0x80000000) == 0)
  {
    if (!*(a1 + 407))
    {
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  if (*(a1 + 392))
  {
    v138 = *v138;
LABEL_105:
    v139 = [NSString stringWithUTF8String:v138];
    [v2 setEmergencyOrRoadsideSessionInitiatedBy:v139];
  }

LABEL_106:
  v140 = v2;

  return v2;
}

id sub_10152C4C8(void *a1)
{
  v22 = objc_opt_new();
  v2 = objc_opt_new();
  v4 = a1[3];
  v3 = a1[4];
  if (v4 == v3)
  {
    goto LABEL_10;
  }

  v5 = 0;
  do
  {
    if (v5)
    {
      v6 = [NSDate dateWithTimeIntervalSince1970:(*v4 / 1000000)];
      v7 = [v5 at];

      if (v6 == v7)
      {
        goto LABEL_7;
      }

      v8 = [NSArray arrayWithArray:v2];
      [v5 setTargets:v8];

      [v22 addObject:v5];
    }

    v9 = objc_opt_new();
    v10 = [NSDate dateWithTimeIntervalSince1970:(*v4 / 1000000)];
    [v9 setAt:v10];

    v11 = objc_opt_new();
    v2 = v11;
    v5 = v9;
LABEL_7:
    v12 = objc_opt_new();
    v13 = [NSNumber numberWithUnsignedInteger:*(v4 + 8)];
    [v12 setTargetId:v13];

    v14 = [NSNumber numberWithDouble:*(v4 + 16)];
    [v12 setX:v14];

    v15 = [NSNumber numberWithDouble:*(v4 + 24)];
    [v12 setY:v15];

    [v2 addObject:v12];
    v4 += 32;
  }

  while (v4 != v3);
  if (v5)
  {
    v16 = [NSArray arrayWithArray:v2];
    [v5 setTargets:v16];

    [v22 addObject:v5];
  }

LABEL_10:
  v17 = objc_opt_new();
  v18 = [NSDate dateWithTimeIntervalSince1970:(a1[1] / 1000000)];
  [v17 setStartsAt:v18];

  v19 = [NSDate dateWithTimeIntervalSince1970:(a1[2] / 1000000)];
  [v17 setEndsAt:v19];

  v20 = [NSArray arrayWithArray:v22];
  [v17 setReadings:v20];

  return v17;
}

void sub_10152C878(capabilities::ct *a1@<X0>, void *a2@<X8>)
{
  v4 = capabilities::ct::supportsSubwayDetection(a1);
  if (v4 && (capabilities::ct::supportsP2PAsPhone(v4) & 1) != 0)
  {
    goto LABEL_13;
  }

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
  v16 = v7;
  v11 = sub_100009510(&v6[1].__m_.__sig, &v16);
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
      goto LABEL_11;
    }
  }

  else
  {
    v13 = 0;
  }

  std::mutex::unlock(v6);
  v12 = 0;
LABEL_11:
  isWatch = GestaltUtilityInterface::isWatch(v13);
  v15 = isWatch;
  if (!v12)
  {
    if (!isWatch)
    {
      goto LABEL_15;
    }

LABEL_13:
    operator new();
  }

  sub_100004A34(v12);
  if (v15)
  {
    goto LABEL_13;
  }

LABEL_15:
  *a2 = 0;
  a2[1] = 0;
}

void sub_10152C9F8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10152CA38(uint64_t a1, void *a2, NSObject **a3)
{
  v6 = (a1 + 8);
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "set.sync");
  *v6 = 0;
  v6[1] = 0;
  v7 = *a3;
  *(a1 + 24) = *a3;
  if (v7)
  {
    dispatch_retain(v7);
  }

  *(a1 + 32) = 0;
  ctu::OsLogLogger::OsLogLogger(v18, &v17);
  ctu::OsLogLogger::OsLogLogger((a1 + 40), v18);
  ctu::OsLogLogger::~OsLogLogger(v18);
  ctu::OsLogContext::~OsLogContext(&v17);
  *a1 = off_101F49080;
  v8 = a2[1];
  *(a1 + 48) = *a2;
  *(a1 + 56) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "CompanionInMetroStatusSyncHandler");
  v9 = *a3;
  v14 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  v13[1] = 0;
  ctu::RestModule::RestModule();
  if (v14)
  {
    dispatch_release(v14);
  }

  if (v16 < 0)
  {
    operator delete(__p);
  }

  *(a1 + 80) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  v10 = *(a1 + 24);
  v13[0] = v10;
  if (v10)
  {
    dispatch_retain(v10);
  }

  v11.fObj.fObj = v13;
  NotifySubscription::NotifySubscription((a1 + 120), "com.apple.commcenter.CompanionInMetroStatusChangedNotification", v11);
  if (v13[0])
  {
    dispatch_release(v13[0]);
  }

  return a1;
}

void sub_10152CBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, dispatch_object_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  if (object)
  {
    dispatch_release(object);
  }

  v22 = v19[14];
  if (v22)
  {
    sub_100004A34(v22);
  }

  v23 = v19[12];
  if (v23)
  {
    sub_100004A34(v23);
  }

  v24 = v19[9];
  if (v24)
  {
    sub_100004A34(v24);
  }

  v25 = v19[7];
  if (v25)
  {
    sub_100004A34(v25);
  }

  ctu::OsLogLogger::~OsLogLogger((v19 + 5));
  sub_1000C0544(v20);
  CompanionInMetroStatusSyncInterface::~CompanionInMetroStatusSyncInterface(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_10152CC8C(uint64_t a1)
{
  Registry::getMobileHelper(&handler, *(a1 + 48));
  v2 = handler;
  handler = 0uLL;
  v3 = *(a1 + 96);
  *(a1 + 88) = v2;
  if (v3)
  {
    sub_100004A34(v3);
    if (*(&handler + 1))
    {
      sub_100004A34(*(&handler + 1));
    }
  }

  Registry::createRestModuleOneTimeUseConnection(&v20, *(a1 + 48));
  ctu::RestModule::connect();
  if (v21)
  {
    sub_100004A34(v21);
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
  *&handler = v6;
  v10 = sub_100009510(&v5[1].__m_.__sig, &handler);
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
      goto LABEL_14;
    }
  }

  else
  {
    v12 = 0;
  }

  std::mutex::unlock(v5);
  v11 = 0;
  v13 = 1;
LABEL_14:
  isWatch = GestaltUtilityInterface::isWatch(v12);
  v15 = isWatch;
  if ((v13 & 1) == 0)
  {
    sub_100004A34(v11);
  }

  if (v15)
  {
    sub_10000501C(&__p, "/cc/props/in_metro_status");
    operator new();
  }

  result = capabilities::ct::supportsP2PAsPhone(isWatch);
  if (result)
  {
    v17 = *(a1 + 16);
    if (v17)
    {
      v18 = std::__shared_weak_count::lock(v17);
      if (v18)
      {
        atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
        p_shared_weak_owners = &v18->__shared_weak_owners_;
        atomic_fetch_add_explicit(&v18->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        sub_100004A34(v18);
        atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
        NotifySubscription::cancel((a1 + 120));
        operator new();
      }
    }

    sub_100013CC4();
  }

  return result;
}

void sub_10152CFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::__shared_weak_count *a23)
{
  if (a23)
  {
    sub_100004A34(a23);
  }

  sub_100004A34(v24);
  std::__shared_weak_count::__release_weak(v23);
  sub_100004A34(v23);
  _Unwind_Resume(a1);
}

unsigned __int8 *sub_10152D054(unsigned __int8 *result, int a2)
{
  if (result[80] != a2)
  {
    return (*(*result + 40))();
  }

  return result;
}

void sub_10152D08C(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Companion InMetroStatus changed", buf, 2u);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    cf = 0;
    (*(*v3 + 16))(&cf);
    v4 = cf;
    if (cf)
    {
      v22 = 0;
      v5 = CFGetTypeID(cf);
      if (v5 == CFBooleanGetTypeID() && (ctu::cf::assign(&v22, v4, v6) & 1) != 0)
      {
        v7 = v22;
        sub_10000A1EC(&cf);
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
LABEL_27:
        (*(*v16 + 72))(v16, v7);
        if ((v17 & 1) == 0)
        {
          sub_100004A34(v15);
        }

        return;
      }

      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        v27 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v24 = v27;
        v19 = __p;
        if (v27 < 0)
        {
          v19 = *buf;
        }

        *v28 = 136315138;
        v29 = v19;
        v20 = "#N Could not assign key '%s' value to a CFType for copying";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v20, v28, 0xCu);
        if (SHIBYTE(v24) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    else
    {
      v18 = *(a1 + 40);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        memset(buf, 0, sizeof(buf));
        v27 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v24 = v27;
        v21 = __p;
        if (v27 < 0)
        {
          v21 = *buf;
        }

        *v28 = 136315138;
        v29 = v21;
        v20 = "#N Could not convert key '%s' value to a CFType for copying";
        goto LABEL_21;
      }
    }

    sub_10000A1EC(&cf);
  }
}

void sub_10152D398(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if ((v20 & 1) == 0)
  {
    sub_100004A34(v21);
  }

  _Unwind_Resume(exception_object);
}

void sub_10152D3F4(uint64_t a1)
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
  *&v14 = v4;
  v8 = sub_100009510(&v3[1].__m_.__sig, &v14);
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
        goto LABEL_13;
      }

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
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_10:
  (*(*v10 + 16))(&v14, v10);
  v12 = v14;
  v14 = 0uLL;
  v13 = *(a1 + 112);
  *(a1 + 104) = v12;
  if (v13)
  {
    sub_100004A34(v13);
    if (*(&v14 + 1))
    {
      sub_100004A34(*(&v14 + 1));
    }
  }

LABEL_13:
  if ((v11 & 1) == 0)
  {
    sub_100004A34(v9);
  }
}

void sub_10152D528(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_10152D54C(uint64_t a1, int a2)
{
  v3 = &kCFBooleanTrue;
  if (!a2)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  *&v14 = 0;
  sub_100045C8C(&v14);
  v13 = v4;
  *&v14 = 0;
  sub_100045C8C(&v14);
  if (v4)
  {
    v5 = kCommCenterSharedSettingsBundleId;
    if ((*(**(a1 + 88) + 24))(*(a1 + 88), kCommCenterSharedSettingsBundleId, @"CompanionInMetroStatus", v4))
    {
      v6 = *(a1 + 104);
      if (v6)
      {
        v15 = 0;
        __p[0] = @"CompanionInMetroStatus";
        v14 = 0uLL;
        sub_10005B328(&v14, __p, &__p[1], 1uLL);
        (*(*v6 + 16))(v6, v5, &v14);
        v7 = v14;
        if (v14)
        {
          *(&v14 + 1) = v14;
LABEL_18:
          operator delete(v7);
          return sub_100045C8C(&v13);
        }
      }

      return sub_100045C8C(&v13);
    }

    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v13);
    }

    v14 = 0uLL;
    v15 = 0;
    ctu::cf::assign();
    *__p = v14;
    v17 = v15;
    v11 = __p;
    if (v15 < 0)
    {
      v11 = v14;
    }

    *buf = 136315138;
    v19 = v11;
    v10 = "#N Could not save key '%s' value to shared settings";
  }

  else
  {
    v8 = *(a1 + 40);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return sub_100045C8C(&v13);
    }

    v14 = 0uLL;
    v15 = 0;
    ctu::cf::assign();
    *__p = v14;
    v17 = v15;
    v9 = __p;
    if (v15 < 0)
    {
      v9 = v14;
    }

    *buf = 136315138;
    v19 = v9;
    v10 = "#N Could not convert key '%s' value to a CFType for saving";
  }

  _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0xCu);
  if (SHIBYTE(v17) < 0)
  {
    v7 = __p[0];
    goto LABEL_18;
  }

  return sub_100045C8C(&v13);
}

void sub_10152D79C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100045C8C(&a9);
  _Unwind_Resume(a1);
}

void sub_10152D7E4(void *a1)
{
  *a1 = off_101F49080;
  NotifySubscription::~NotifySubscription((a1 + 15));
  v2 = a1[14];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[12];
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

  CompanionInMetroStatusSyncInterface::~CompanionInMetroStatusSyncInterface(a1);
}

void sub_10152D878(void *a1)
{
  *a1 = off_101F49080;
  NotifySubscription::~NotifySubscription((a1 + 15));
  v2 = a1[14];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[12];
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
  CompanionInMetroStatusSyncInterface::~CompanionInMetroStatusSyncInterface(a1);

  operator delete();
}

void sub_10152D9EC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10152DAC0);
  __cxa_rethrow();
}

void sub_10152DA2C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10152DA80(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10152DAC0(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

__n128 sub_10152DB68(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F491C8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_10152DBA0(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_10152DC38(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152DC84(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[1];
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = v3;
      if (*v1)
      {
        v5 = v1[2];
        v6 = v1[3];
        v7 = (*v1 + (v6 >> 1));
        if (v6)
        {
          v5 = *(*v7 + v5);
        }

        v5(v7);
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10152DD38(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(result + 32) = *(a2 + 32);
  *(result + 40) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_10152DD54(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_10152DD84(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F49278;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10152DDD8(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

uint64_t sub_10152DDEC(uint64_t result, int a2)
{
  if (*(result + 953) != 1 || *(result + 952) != a2)
  {
    *(result + 952) = a2 | 0x100;
  }

  return result;
}

uint64_t sub_10152DE10(uint64_t result, int a2)
{
  if (*(result + 905) != 1 || *(result + 904) != a2)
  {
    *(result + 904) = a2 | 0x100;
  }

  return result;
}

void sub_10152DE34()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

void sub_10152DFEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_100EE25BC(va);
  if (a7)
  {
    sub_100004A34(a7);
  }

  _Unwind_Resume(a1);
}

void sub_10152E04C(void *a1, void *a2, Registry **a3)
{
  ServiceMap = Registry::getServiceMap(*a3);
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
  v27 = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, &v27);
  if (!v12)
  {
    v14 = 0;
LABEL_9:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v14 = v12[3];
  v13 = v12[4];
  if (!v13)
  {
    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v7);
  atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v13);
  v15 = 0;
  if (!v14)
  {
LABEL_7:
    v16 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:1 userInfo:0];
LABEL_19:
    *a2 = v16;
    *a1 = 0;
    a1[1] = 0;
    goto LABEL_20;
  }

LABEL_10:
  if (((*(*v14 + 32))(v14) & 1) == 0)
  {
    v16 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:13 userInfo:0];
    goto LABEL_19;
  }

  v17 = Registry::getServiceMap(*a3);
  v18 = v17;
  if ((v19 & 0x8000000000000000) != 0)
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
  v27 = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, &v27);
  if (!v23)
  {
    std::mutex::unlock(v18);
LABEL_24:
    v24 = 0;
    v26 = 1;
    goto LABEL_28;
  }

  v25 = v23[3];
  v24 = v23[4];
  if (!v24)
  {
    std::mutex::unlock(v18);
    if (v25)
    {
      *a1 = v25;
      a1[1] = 0;
      goto LABEL_20;
    }

    goto LABEL_24;
  }

  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v18);
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v24);
  if (!v25)
  {
    v26 = 0;
LABEL_28:
    *a2 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    *a1 = 0;
    a1[1] = 0;
    if (v26)
    {
      goto LABEL_20;
    }

    goto LABEL_29;
  }

  *a1 = v25;
  a1[1] = v24;
  atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_29:
  sub_100004A34(v24);
LABEL_20:
  if ((v15 & 1) == 0)
  {
    sub_100004A34(v13);
  }
}

void sub_10152E2C8(_Unwind_Exception *exception_object)
{
  if ((v3 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  if ((v4 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10152E514(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, std::__shared_weak_count *a26)
{
  sub_100E6421C(v30 - 88);
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a26)
  {
    sub_100004A34(a26);
  }

  _Unwind_Resume(a1);
}

void sub_10152E840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  if ((v26 & 1) == 0)
  {
    sub_100004A34(v24);
  }

  if (a22)
  {
    sub_100004A34(a22);
  }

  _Unwind_Resume(a1);
}

void sub_10152E8D8(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  if (v3 != 1)
  {
    if (v3 != 2)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    if (a2[8] == 19)
    {
      v4 = *(a1 + 32);
      if (v4)
      {
        [v4 getLogContext];
        v5 = v25;
      }

      else
      {
        v5 = 0;
        *buf = 0;
        v25 = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "EOS Driver not ready", buf, 2u);
      }

      v18 = *(a1 + 40);
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:35 userInfo:0];
      (*(v18 + 16))(v18, 0, v19);
    }

    else
    {
      v14 = *(a1 + 32);
      if (v14)
      {
        [v14 getLogContext];
        v15 = v25;
      }

      else
      {
        v15 = 0;
        *buf = 0;
        v25 = 0;
      }

      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Get Vinyl EOS FW Update Info error", buf, 2u);
      }

      v20 = *(a1 + 40);
      v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:22 userInfo:0];
      (*(v20 + 16))(v20, 0, v19);
    }

LABEL_26:

    return;
  }

  v6 = *(a2 + 1);
  if (!v6)
  {
    v16 = *(a1 + 32);
    if (v16)
    {
      [v16 getLogContext];
      v17 = v25;
    }

    else
    {
      v17 = 0;
      *buf = 0;
      v25 = 0;
    }

    ctu::OsLogContext::~OsLogContext(buf);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "No result", buf, 2u);
    }

    v21 = *(a1 + 40);
    v19 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:45 userInfo:0];
    (*(v21 + 16))(v21, 0, v19);
    goto LABEL_26;
  }

  v23 = v6;
  v7 = [CTEOSFirmwareInfo alloc];
  v8 = [NSString stringWithUTF8String:kVinylFwUpdateCurrentVersion];
  v9 = [v23 objectForKey:v8];
  [v7 setCurrentVersion:v9];

  v10 = [NSString stringWithUTF8String:kVinylFwUpdateUserProfiles];
  v11 = [v23 objectForKey:v10];
  [v7 setUserProfiles:v11];

  v12 = [NSString stringWithUTF8String:kVinylFwUpdateCsn];
  v13 = [v23 objectForKey:v12];
  [v7 setUpdateCsn:v13];

  (*(*(a1 + 40) + 16))();
}

void sub_10152ED34(uint64_t a1)
{

  operator delete();
}

id sub_10152EDE8(uint64_t a1, void *a2)
{
  *a2 = off_101F492C8;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10152EE38(id *a1)
{

  operator delete(a1);
}

void sub_10152EE74(uint64_t a1, const void **a2)
{
  v10 = 0;
  cf = 0;
  v3 = *a2;
  if (v3 == 2)
  {
    LOBYTE(v10) = 2;
    LOBYTE(cf) = *(a2 + 8);
  }

  else if (v3 == 1)
  {
    sub_1001140B4(&v10, a2 + 1);
    if (v10 == 1)
    {
      v12 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      (*(*(a1 + 8) + 16))();
      sub_10001021C(&v12);
      goto LABEL_10;
    }
  }

  v4 = *(a1 + 8);
  v5 = [NSError alloc];
  if (v10 != 2)
  {
    if (v10 == 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v8 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
    }

    else
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v8 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    }

    __cxa_throw(exception, v9, v8);
  }

  v6 = [v5 initWithDomain:NSPOSIXErrorDomain code:cf userInfo:0];
  (*(v4 + 16))(v4, 0, v6);

LABEL_10:
  if (v10 == 1)
  {
    sub_10001021C(&cf);
  }
}

void sub_10152EFE8(_Unwind_Exception *a1, uint64_t a2, char a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, const void *);
  sub_10001021C(va1);
  if (a3 == 1)
  {
    sub_10001021C(va);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10152F044(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F49338))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152F0BC(uint64_t a1)
{

  operator delete();
}

id sub_10152F170(uint64_t a1, void *a2)
{
  *a2 = off_101F49358;
  result = objc_retainBlock(*(a1 + 8));
  a2[1] = result;
  return result;
}

void sub_10152F1C0(id *a1)
{

  operator delete(a1);
}

void sub_10152F1FC(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  if (v2 == 7)
  {
    v4 = *(v3 + 16);
    v5 = *(a1 + 8);

    v4(v5, 1, 0);
  }

  else
  {
    v6 = [[NSError alloc] initWithDomain:NSPOSIXErrorDomain code:v2 userInfo:0];
    (*(v3 + 16))(v3, 0);
  }
}

uint64_t sub_10152F2D0(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F493B8))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10152F31C()
{
  v0 = objc_autoreleasePoolPush();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_10152F354(uint64_t a1, uint64_t a2, os_log_t *a3)
{
  v4 = *a3;
  if (os_log_type_enabled(*a3, OS_LOG_TYPE_ERROR))
  {
    v6 = sub_1011E88BC(*(a1 + 12));
    v7 = 136315138;
    v8 = v6;
    _os_log_error_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "[%s] Do not invoke this function. Decompression is NOT required for this message. message.", &v7, 0xCu);
  }

  return __TUAssertTrigger();
}

BOOL sub_10152F418(uint64_t a1, os_log_t *a2, uint64_t a3)
{
  v6 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = sub_1011E88BC(*(a1 + 12));
    *buf = 136315138;
    v33 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I [%s] Decoding", buf, 0xCu);
  }

  *(a1 + 32) = 0;
  *buf = 0;
  if (sub_100E69330(a3, buf, 0x10uLL) & 1) != 0 && (v31 = 0, (sub_100E69330(a3, &v31, 0x10uLL)) && (v8 = *buf, v9 = v31, *buf = 0, (sub_100E69330(a3, buf, 0x10uLL)) && (v31 = 0, (sub_100E69330(a3, &v31, 0x10uLL)))
  {
    v10 = 0;
    *(a1 + 32) |= (v8 << 48) | (v9 << 32) | v31 | (*buf << 16);
    v11 = *a3;
    v12 = *(a3 + 8) - *a3;
    v13 = *(a3 + 32);
    v14 = *(a3 + 40);
    v15 = 8;
    while (1)
    {
      if (!v14)
      {
        *(a3 + 32) = ++v13;
        *(a3 + 40) = 8;
        v14 = 8;
      }

      if (v13 >= v12)
      {
        break;
      }

      v16 = v15 - v14;
      if (v15 <= v14)
      {
        *(a3 + 40) = v14 - v15;
        v18 = *(v11 + v13) >> (v14 - v15);
        if (v15 < 8)
        {
          v19 = ~(-1 << v15);
        }

        else
        {
          v19 = -1;
        }

        v20 = v10 | v18 & v19;
        v21 = v20;
        if (v20 >= 2u)
        {
          v21 = 2;
        }

        *(a1 + 40) = v21;
        if (v20 < 2u)
        {
          return 1;
        }

        v22 = *a2;
        result = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
        if (result)
        {
          v23 = sub_1011E88BC(*(a1 + 12));
          *buf = 136315394;
          v33 = v23;
          v34 = 1024;
          v35 = v20;
          v24 = "[%s] Invalid errorCode: %hhu";
          v25 = v22;
          v26 = 18;
          goto LABEL_23;
        }

        return result;
      }

      v17 = *(v11 + v13) & ~(-1 << v14);
      *(a3 + 40) = 0;
      v10 |= v17 << v16;
      v15 = v16;
      v14 = 0;
      if (v16 - 9 < 0xFFFFFFFFFFFFFFF8)
      {
        __assert_rtn("read", "CTBitwise.h", 193, "N > 0 && N <= 8");
      }
    }

    *(a3 + 24) = 1;
    v28 = *a2;
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v29 = sub_1011E88BC(*(a1 + 12));
    *buf = 136315138;
    v33 = v29;
    v24 = "[%s] Failed to read errorCode";
  }

  else
  {
    v28 = *a2;
    result = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    v30 = sub_1011E88BC(*(a1 + 12));
    *buf = 136315138;
    v33 = v30;
    v24 = "[%s] Failed to read timestamp";
  }

  v25 = v28;
  v26 = 12;
LABEL_23:
  _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, v24, buf, v26);
  return 0;
}

void sub_10152F790(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_10152FDE4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, dispatch_object_t object, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (*(v26 - 145) < 0)
  {
    operator delete(*(v26 - 168));
  }

  ctu::OsLogLogger::~OsLogLogger((v24 + 40));
  sub_1000C0544(v25);
  IsoMccCacheInterface::~IsoMccCacheInterface(v24);
  operator delete();
}

void sub_10152FF88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  sub_1000087B4(&a16);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10152FF48);
}

void sub_10152FFB8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42)
{
  sub_1000087B4(&a32);
  if (a42 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10152FF58);
}

void sub_10152FFF0()
{
  ctu::OsLogLogger::~OsLogLogger((v1 - 208));
  sub_1000C0544(v0);
  ctu::OsLogContext::~OsLogContext((v1 - 144));
  JUMPOUT(0x10152FF70);
}

void sub_101530020(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_101531CDC(&v23, v5);
  v6 = HIBYTE(v25);
  if (v25 >= 0)
  {
    v7 = HIBYTE(v25);
  }

  else
  {
    v7 = v24;
  }

  if (!v7)
  {
    *a3 = 0;
    *(a3 + 24) = 0;
    if ((v6 & 0x80) == 0)
    {
      return;
    }

    goto LABEL_42;
  }

  v21[0] = 0;
  v21[1] = 0;
  v22 = 0;
  v8 = v21;
  sub_1000677C4(v21, v7 + 14);
  if (v22 < 0)
  {
    v8 = v21[0];
  }

  if (v25 >= 0)
  {
    v9 = &v23;
  }

  else
  {
    v9 = v23;
  }

  memmove(v8, v9, v7);
  strcpy(v8 + v7, "/MCC2ISO.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v21, &theDict);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  if (theDict)
  {
    if (*(a2 + 23) < 0)
    {
      sub_100005F2C(v17, *a2, *(a2 + 8));
    }

    else
    {
      *v17 = *a2;
      v18 = *(a2 + 16);
    }

    if (SHIBYTE(v18) < 0)
    {
      sub_100005F2C(__p, v17[0], v17[1]);
    }

    else
    {
      *__p = *v17;
      v28 = v18;
    }

    v26 = 0;
    if (SHIBYTE(v28) < 0)
    {
      sub_100005F2C(buf, __p[0], __p[1]);
    }

    else
    {
      *buf = *__p;
      v32 = v28;
    }

    v29 = 0;
    if (ctu::cf::convert_copy())
    {
      v12 = v26;
      v26 = v29;
      v30 = v12;
      sub_100005978(&v30);
    }

    if (SHIBYTE(v32) < 0)
    {
      operator delete(*buf);
    }

    v13 = v26;
    v19 = v26;
    v26 = 0;
    sub_100005978(&v26);
    if (SHIBYTE(v28) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(v17[0]);
    }

    __p[0] = 0;
    *buf = CFDictionaryGetValue(theDict, v13);
    sub_100060DE8(__p, buf);
    if (__p[0])
    {
      memset(buf, 0, sizeof(buf));
      v32 = 0;
      ctu::cf::assign();
      v15 = *buf;
      v14 = *&buf[8];
      LODWORD(v30) = v32;
      *(&v30 + 3) = *(&v32 + 3);
      v16 = HIBYTE(v32);
      if (SHIBYTE(v32) < 0)
      {
        sub_100005F2C(a3, *buf, *&buf[8]);
        *(a3 + 24) = 1;
        operator delete(v15);
      }

      else
      {
        *a3 = *buf;
        *(a3 + 8) = v14;
        *(a3 + 16) = v30;
        *(a3 + 19) = *(&v30 + 3);
        *(a3 + 23) = v16;
        *(a3 + 24) = 1;
      }
    }

    sub_100005978(__p);
    sub_100005978(&v19);
  }

  else
  {
    v10 = *(v5 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v21;
      if (v22 < 0)
      {
        v11 = v21[0];
      }

      *buf = 136315138;
      *&buf[4] = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", buf, 0xCu);
    }
  }

  sub_10001021C(&theDict);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v21[0]);
  }

  if (v25 < 0)
  {
LABEL_42:
    operator delete(v23);
  }
}

void sub_10153038C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, const void *a15, const void *a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  operator delete(v36);
  sub_100005978(&a30);
  sub_100005978(&a15);
  if ((*(v35 + 24) & 1) != 0 && *(v35 + 23) < 0)
  {
    operator delete(*v35);
  }

  sub_10001021C(&a16);
  if (a22 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

const void **sub_101530478@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  sub_101531DE8(&theArray, v5, a2);
  *a3 = 0u;
  a3[1] = 0u;
  v6 = theArray;
  if (theArray)
  {
    v7 = 0;
    memset(v13, 0, sizeof(v13));
    while (CFArrayGetCount(v6) > v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      if (ValueAtIndex)
      {
        v9 = CFGetTypeID(ValueAtIndex);
        if (v9 == CFStringGetTypeID())
        {
          __p[0] = 0;
          __p[1] = 0;
          v12 = 0;
          v15 = 0uLL;
          v16 = 0;
          ctu::cf::assign();
          *__p = v15;
          v12 = v16;
          sub_100005308(v13, __p);
          if (SHIBYTE(v12) < 0)
          {
            operator delete(__p[0]);
          }
        }
      }

      ++v7;
      v6 = theArray;
    }

    sub_10153218C(a3, v13);
    *&v15 = v13;
    sub_1000087B4(&v15);
  }

  return sub_100010250(&theArray);
}

void sub_101530588(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void ***a9, uint64_t a10, uint64_t a11, void **a12, uint64_t a13, uint64_t a14, const void *a15)
{
  a9 = &a12;
  sub_1000087B4(&a9);
  if (*(v15 + 24) == 1)
  {
    a12 = v15;
    sub_1000087B4(&a12);
  }

  sub_100010250(&a15);
  _Unwind_Resume(a1);
}

const void **sub_1015305FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  sub_101531DE8(&theArray, v5, a2);
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v6 = theArray;
  if (theArray)
  {
    v7 = 0;
    __src = 0;
    v22 = 0;
    v23 = 0;
    while (CFArrayGetCount(v6) > v7)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v7);
      v9 = ValueAtIndex;
      if (ValueAtIndex)
      {
        v10 = CFGetTypeID(ValueAtIndex);
        if (v10 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v9);
          v12 = v22;
          if (v22 >= v23)
          {
            v14 = __src;
            v15 = v22 - __src;
            v16 = (v22 - __src) >> 1;
            if (v16 <= -2)
            {
              sub_1000CE3D4();
            }

            if (v23 - __src <= v16 + 1)
            {
              v17 = v16 + 1;
            }

            else
            {
              v17 = v23 - __src;
            }

            if (v23 - __src >= 0x7FFFFFFFFFFFFFFELL)
            {
              v18 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v18 = v17;
            }

            if (v18)
            {
              sub_1001B9700(&__src, v18);
            }

            *(2 * v16) = IntValue;
            v13 = (2 * v16 + 2);
            memcpy(0, v14, v15);
            v19 = __src;
            __src = 0;
            v22 = v13;
            v23 = 0;
            if (v19)
            {
              operator delete(v19);
            }
          }

          else
          {
            *v22 = IntValue;
            v13 = v12 + 1;
          }

          v22 = v13;
        }
      }

      ++v7;
      v6 = theArray;
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    sub_1001B964C(a3, __src, v22, (v22 - __src) >> 1);
    *(a3 + 24) = 1;
    if (__src)
    {
      v22 = __src;
      operator delete(__src);
    }
  }

  return sub_100010250(&theArray);
}

void sub_1015307A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, const void *a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v12 + 24) == 1)
  {
    v14 = *v12;
    if (*v12)
    {
      *(v12 + 8) = v14;
      operator delete(v14);
    }
  }

  sub_100010250(&a12);
  _Unwind_Resume(a1);
}

const void **sub_1015307F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = *(a1 + 32);
  theArray = 0;
  v34[0] = 0;
  v34[1] = 0;
  v35 = 0;
  sub_101531CDC(v34, v5);
  if (v35 >= 0)
  {
    v6 = HIBYTE(v35);
  }

  else
  {
    v6 = v34[1];
  }

  if (!v6)
  {
    v9 = 0;
    theArray = 0;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v32[0] = 0;
  v32[1] = 0;
  v33 = 0;
  v7 = v32;
  sub_1000677C4(v32, v6 + 14);
  if (v33 < 0)
  {
    v7 = v32[0];
  }

  if (v35 >= 0)
  {
    v8 = v34;
  }

  else
  {
    v8 = v34[0];
  }

  memmove(v7, v8, v6);
  strcpy(v7 + v6, "/MNC2ISO.plist");
  theDict = 0;
  sub_1009F7DEC((v5 + 40), (v5 + 464), v32, &theDict);
  v30 = 0;
  if (!theDict)
  {
    v10 = *(v5 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v32;
      if (v33 < 0)
      {
        v11 = v32[0];
      }

      LODWORD(buf) = 136315138;
      *(&buf + 4) = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#N Could not load %s as dictionary", &buf, 0xCu);
    }

    goto LABEL_55;
  }

  key = 0;
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__p, *a2, *(a2 + 8));
  }

  else
  {
    *__p = *a2;
    v28 = *(a2 + 16);
  }

  if (SHIBYTE(v28) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v38 = v28;
  }

  v39 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v42 = v38;
  }

  v40 = 0;
  if (ctu::cf::convert_copy())
  {
    v12 = v39;
    v39 = v40;
    v24[0] = v12;
    sub_100005978(v24);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(buf);
  }

  key = v39;
  v39 = 0;
  sub_100005978(&v39);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v28) < 0)
  {
    operator delete(__p[0]);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C(v24, *(a2 + 24), *(a2 + 32));
  }

  else
  {
    *v24 = *(a2 + 24);
    v25 = *(a2 + 40);
  }

  if (SHIBYTE(v25) < 0)
  {
    sub_100005F2C(&__dst, v24[0], v24[1]);
  }

  else
  {
    __dst = *v24;
    v38 = v25;
  }

  v36 = 0;
  if (SHIBYTE(v38) < 0)
  {
    sub_100005F2C(&buf, __dst, *(&__dst + 1));
  }

  else
  {
    buf = __dst;
    v42 = v38;
  }

  v39 = 0;
  if (ctu::cf::convert_copy())
  {
    v13 = v36;
    v36 = v39;
    v40 = v13;
    sub_100005978(&v40);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(buf);
  }

  v26 = v36;
  v36 = 0;
  sub_100005978(&v36);
  if (SHIBYTE(v38) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24[0]);
  }

  *&__dst = 0;
  Value = CFDictionaryGetValue(theDict, key);
  v15 = Value;
  if (Value && (v16 = CFGetTypeID(Value), v16 == CFDictionaryGetTypeID()))
  {
    *&__dst = v15;
    CFRetain(v15);
    if (__dst)
    {
      v40 = CFDictionaryGetValue(__dst, v26);
      *&buf = 0;
      v17 = sub_1001FA5E0(&buf, &v40);
      v18 = v30;
      v30 = buf;
      *&buf = v18;
      sub_100010250(v17);
      sub_10001021C(&__dst);
      sub_100005978(&v26);
      sub_100005978(&key);
LABEL_55:
      v9 = v30;
      theArray = v30;
      v30 = 0;
      goto LABEL_58;
    }
  }

  else
  {
    *&__dst = 0;
  }

  theArray = 0;
  sub_10001021C(&__dst);
  sub_100005978(&v26);
  sub_100005978(&key);
  v9 = 0;
LABEL_58:
  sub_100010250(&v30);
  sub_10001021C(&theDict);
  if (SHIBYTE(v33) < 0)
  {
    operator delete(v32[0]);
  }

  if (v35 < 0)
  {
LABEL_61:
    operator delete(v34[0]);
  }

LABEL_62:
  *a3 = 0u;
  a3[1] = 0u;
  if (v9)
  {
    v19 = 0;
    __dst = 0uLL;
    v38 = 0;
    while (CFArrayGetCount(v9) > v19)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
      if (ValueAtIndex)
      {
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == CFStringGetTypeID())
        {
          v34[0] = 0;
          v34[1] = 0;
          v35 = 0;
          buf = 0uLL;
          v42 = 0;
          ctu::cf::assign();
          *v34 = buf;
          v35 = v42;
          sub_100005308(&__dst, v34);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[0]);
          }
        }
      }

      ++v19;
      v9 = theArray;
    }

    sub_10153218C(a3, &__dst);
    *&buf = &__dst;
    sub_1000087B4(&buf);
  }

  return sub_100010250(&theArray);
}