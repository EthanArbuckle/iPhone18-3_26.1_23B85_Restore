uint64_t sub_100826218(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100826264(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "/cc/assertions/prevent_baseband_reset");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1008262D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

__n128 sub_10082636C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E87440;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10082639C(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);

  sub_1008244C4(v2);
}

uint64_t sub_1008263D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100826424(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "/cc/exclusive_assertions/baseband_operation");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_100826494(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

__n128 sub_10082652C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E874C0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10082655C(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);
  if (*(v2 + 108) == 1)
  {
    v3 = *(v2 + 40);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Granting exclusive baseband operation assertion", v4, 2u);
    }

    sub_100826630((v2 + 104));
  }
}

uint64_t sub_1008265E4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100826630(unsigned int *a1)
{
  if (a1[1] == 1)
  {
    sub_10000501C(v3, "/cc/exclusive_assertions/baseband_operation");
    *__p = *v3;
    v6 = v4;
    v3[1] = 0;
    v4 = 0;
    v3[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_1008266FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void sub_100826744(uint64_t a1@<X8>)
{
  sub_10000501C(__p, "/cc/assertions/prevent_nvm_sync");
  *a1 = *__p;
  *(a1 + 16) = v3;
  __p[1] = 0;
  v3 = 0;
  __p[0] = 0;
  ctu::path_join_impl();
  if (SHIBYTE(v3) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1008267B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  sub_101760E98(va);
  _Unwind_Resume(a1);
}

__n128 sub_10082684C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E87540;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void sub_10082687C(uint64_t a1)
{
  ctu::rest::read_rest_value();
  v2 = *(a1 + 16);

  sub_100825408(v2);
}

uint64_t sub_1008268B8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100826974(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E875C0;
  a2[1] = v2;
  return result;
}

uint64_t sub_1008269A8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1008269F4(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  operator delete();
}

uint64_t *sub_100826A80(uint64_t *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  ctu::RestModule::disconnect((v2 + 72));
  sub_1000FF844(&v6);
  return sub_1000049E0(&v5);
}

void sub_100826B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100826B20(uint64_t a1, uint64_t a2)
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

uint64_t *sub_100826BA0(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = v1 + 40;
  v3 = *v1;
  v4 = *(*v1 + 144);
  if (v4 >= *(*v1 + 152))
  {
    v5 = sub_100826CB8((v3 + 136), (v1 + 8), (v1 + 32), v2);
  }

  else
  {
    sub_100826DE0(*(*v1 + 144), (v1 + 8), (v1 + 32), v2);
    v5 = v4 + 64;
    *(v3 + 144) = v4 + 64;
  }

  *(v3 + 144) = v5;
  sub_100824AFC(v3);
  sub_100826C58(&v8);
  return sub_1000049E0(&v7);
}

void sub_100826C30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 144) = v11;
  sub_100826C58(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100826C58(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100049CCC(v1 + 40);
    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t sub_100826CB8(uint64_t *a1, __int128 *a2, char *a3, uint64_t a4)
{
  v4 = (a1[1] - *a1) >> 6;
  v5 = v4 + 1;
  if ((v4 + 1) >> 58)
  {
    sub_1000CE3D4();
  }

  v8 = a1[2] - *a1;
  if (v8 >> 5 > v5)
  {
    v5 = v8 >> 5;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFC0)
  {
    v9 = 0x3FFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v5;
  }

  v19 = a1;
  if (v9)
  {
    sub_100826E8C(a1, v9);
  }

  v16 = 0;
  v17 = v4 << 6;
  sub_100826DE0((v4 << 6), a2, a3, a4);
  v18 = ((v4 << 6) + 64);
  v10 = a1[1];
  v11 = (v4 << 6) + *a1 - v10;
  sub_100826ED4(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = a1[2];
  v15 = v18;
  *(a1 + 1) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_100826FD0(&v16);
  return v15;
}

void sub_100826DCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100826FD0(va);
  _Unwind_Resume(a1);
}

void *sub_100826DE0(void *a1, __int128 *a2, char *a3, uint64_t a4)
{
  v6 = *a3;
  sub_100049BB8(v8, a4);
  sub_1008257E0(a1, a2, v6 & 1, v8);
  sub_100049CCC(v8);
  return a1;
}

void sub_100826E70(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100049CCC(va);
  _Unwind_Resume(a1);
}

void sub_100826E8C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  sub_100013D10();
}

void sub_100826ED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = (v6 + v7);
      v9 = a4 + v7;
      if (*(v6 + v7 + 23) < 0)
      {
        sub_100005F2C(v9, *v8, *(v8 + 1));
      }

      else
      {
        v10 = *v8;
        *(v9 + 16) = *(v8 + 2);
        *v9 = v10;
      }

      *(a4 + v7 + 24) = *(v6 + v7 + 24);
      sub_100049BB8(a4 + v7 + 32, v6 + v7 + 32);
      v7 += 64;
    }

    while (v6 + v7 != a3);
    while (v6 != a3)
    {
      sub_1008258F0(v6);
      v6 += 64;
    }
  }
}

void sub_100826F88(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 64;
    v5 = -v2;
    do
    {
      sub_1008258F0(v4);
      v4 -= 64;
      v5 += 64;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100826FD0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
    sub_1008258F0(i - 64);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100827090(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E87640;
  a2[1] = v2;
  return result;
}

void sub_1008270BC(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  *v10 = *(a2 + 24);
  *&v10[3] = *(a2 + 27);
  v7 = *(a2 + 31);
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v8 = *a3;
  *a3 = xpc_null_create();
  v12 = v4;
  if (v7 < 0)
  {
    sub_100005F2C(__p, v5, v6);
  }

  else
  {
    __p[0] = v5;
    __p[1] = v6;
    *v14 = *v10;
    *&v14[3] = *&v10[3];
    v15 = v7;
  }

  v11 = v8;
  if (v8)
  {
    xpc_retain(v8);
    v9 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v11 = v9;
  }

  sub_1008250B8((a1 + 8), &v12, &v11);
  xpc_release(v9);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v8);
  if (v7 < 0)
  {
    operator delete(v5);
  }
}

void sub_1008271C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  xpc_release(v18);
  if (v19 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100827220(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10082726C(void *a1)
{
  *a1 = off_101E876C0;
  sub_10002B644((a1 + 1));
  return a1;
}

void sub_1008272B0(void *a1)
{
  *a1 = off_101E876C0;
  sub_10002B644((a1 + 1));

  operator delete();
}

void sub_1008273C0(void *a1)
{
  sub_10002B644(a1 + 8);

  operator delete(a1);
}

void sub_1008273FC(uint64_t a1, uint64_t a2, void **a3)
{
  v4 = *(a2 + 8);
  v5 = *(a2 + 31);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  v6 = *a3;
  *a3 = xpc_null_create();
  v7 = *(a1 + 32);
  if (v7)
  {
    (*(*v7 + 48))(v7);
  }

  xpc_release(v6);
  if (v5 < 0)
  {

    operator delete(v4);
  }
}

void sub_1008274AC(_Unwind_Exception *a1)
{
  xpc_release(v2);
  if (v3 < 0)
  {
    operator delete(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1008274D8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100827524(void *a1)
{
  *a1 = off_101E87740;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100827570(void *a1)
{
  *a1 = off_101E87740;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100827650(uint64_t result, uint64_t a2)
{
  *a2 = off_101E87740;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100827690(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1008276A0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1008276E0(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (a1[2] && *(v3 + 124))
      {
        v6 = *(v3 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *v7 = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Granting assertion to prevent nvm sync", v7, 2u);
        }

        sub_1008277E8((v3 + 120));
      }

      sub_100004A34(v5);
    }
  }
}

uint64_t sub_10082779C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1008277E8(unsigned int *a1)
{
  if (a1[1] == 1)
  {
    sub_10000501C(v3, "/cc/assertions/prevent_nvm_sync");
    *__p = *v3;
    v6 = v4;
    v3[1] = 0;
    v4 = 0;
    v3[0] = 0;
    ctu::path_join_impl();
    object = xpc_int64_create(*a1);
    if (!object)
    {
      object = xpc_null_create();
    }

    ctu::RestModule::setProperty();
    xpc_release(object);
    if (SHIBYTE(v6) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v4) < 0)
    {
      operator delete(v3[0]);
    }
  }
}

void sub_1008278B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(a1);
}

void read_rest_value(int *a1, void **a2)
{
  LODWORD(p_object) = 0;
  BYTE4(p_object) = 1;
  __p.n128_u8[0] = 0;
  v14 = 0;
  *a1 = 0;
  *(a1 + 4) = 1;
  sub_10016A270((a1 + 2), &__p);
  if (v14 == 1 && v13 < 0)
  {
    operator delete(__p.n128_u64[0]);
  }

  v4 = *a2;
  object = v4;
  if (v4 && xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    v5 = object;
  }

  else
  {
    v5 = xpc_null_create();
    object = v5;
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    p_object = &object;
    __p.n128_u64[0] = "config";
    sub_100006354(&p_object, &v9);
    type = xpc_get_type(v9);
    if (type == &_xpc_type_string)
    {
      v15 = *a1;
      ctu::rest::detail::read_enum_string_value(&v15, &v9, v7);
      *a1 = v15;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v9, 0, v7);
    }

    xpc_release(v9);
    p_object = &object;
    __p.n128_u64[0] = "preferInRoaming";
    sub_100006354(&p_object, &v9);
    *(a1 + 4) = xpc::dyn_cast_or_default(&v9, 0, v8);
    xpc_release(v9);
    p_object = &object;
    __p.n128_u64[0] = "thumperId";
    if (xpc_dictionary_get_value(object, "thumperId"))
    {
      sub_100006354(&p_object, &v9);
      sub_1001E6158((a1 + 2), &v9);
      xpc_release(v9);
    }
  }

  xpc_release(object);
}

{
  *a1 = 0;
  a1[2] = 0;
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
    v12 = "VoWiFiConfigSrc";
    sub_100006354(&p_object, &v13);
    type = xpc_get_type(v13);
    if (type == &_xpc_type_string)
    {
      v15 = a1[2];
      ctu::rest::detail::read_enum_string_value(&v15, &v13, v6);
      a1[2] = v15;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      a1[2] = xpc::dyn_cast_or_default(&v13, 0, v6);
    }

    xpc_release(v13);
    p_object = &object;
    v12 = "VolteFeatureSupport";
    sub_100006354(&p_object, &v13);
    v7 = xpc_get_type(v13);
    if (v7 == &_xpc_type_string)
    {
      v15 = *a1;
      ctu::rest::detail::read_enum_string_value(&v15, &v13, v8);
      *a1 = v15;
    }

    else if (v7 == &_xpc_type_BOOL || v7 == &_xpc_type_int64 || v7 == &_xpc_type_uint64)
    {
      *a1 = xpc::dyn_cast_or_default(&v13, 0, v8);
    }

    xpc_release(v13);
    p_object = &object;
    v12 = "VoNRFeatureSupport";
    sub_100006354(&p_object, &v13);
    v9 = xpc_get_type(v13);
    if (v9 == &_xpc_type_string)
    {
      v15 = a1[1];
      ctu::rest::detail::read_enum_string_value(&v15, &v13, v10);
      a1[1] = v15;
    }

    else if (v9 == &_xpc_type_BOOL || v9 == &_xpc_type_int64 || v9 == &_xpc_type_uint64)
    {
      a1[1] = xpc::dyn_cast_or_default(&v13, 0, v10);
    }

    xpc_release(v13);
  }

  xpc_release(object);
}

void sub_100827AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

void write_rest_value(int *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v23 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v23 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v23 = v5;
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
  v23 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = *a1;
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&object, v7, v8, v9);
  v19 = &v23;
  v20 = "config";
  sub_10000F688(&v19, &object, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(object);
  object = 0;
  v17 = xpc_BOOL_create(*(a1 + 4));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "preferInRoaming";
  sub_10000F688(&v19, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  if (*(a1 + 32) == 1)
  {
    v12 = *(a1 + 1);
    v11 = a1 + 2;
    v10 = v12;
    if (*(v11 + 23) >= 0)
    {
      v13 = v11;
    }

    else
    {
      v13 = v10;
    }

    v15 = xpc_string_create(v13);
    if (!v15)
    {
      v15 = xpc_null_create();
    }

    v19 = &v23;
    v20 = "thumperId";
    sub_10000F688(&v19, &v15, &v16);
    xpc_release(v16);
    v16 = 0;
    xpc_release(v15);
    v15 = 0;
  }

  v14 = v23;
  *a2 = v23;
  if (v14)
  {
    xpc_retain(v14);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v25 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v25 = v5;
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
  v25 = v6;
LABEL_9:
  xpc_release(v5);
  v7 = a1[2];
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&object, v7, v8, v9);
  v21 = &v25;
  v22 = "VoWiFiConfigSrc";
  sub_10000F688(&v21, &object, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(object);
  object = 0;
  v10 = *a1;
  v11 = asString();
  ctu::rest::detail::write_enum_string_value(&v19, v10, v11, v12);
  v21 = &v25;
  v22 = "VolteFeatureSupport";
  sub_10000F688(&v21, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v13 = a1[1];
  v14 = asString();
  ctu::rest::detail::write_enum_string_value(&v17, v13, v14, v15);
  v21 = &v25;
  v22 = "VoNRFeatureSupport";
  sub_10000F688(&v21, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v25;
  *a2 = v25;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v25);
}

void read_rest_value(ThumperCapability *a1, xpc_object_t *a2)
{
  *a1 = 0;
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
    v7 = "fThumperCapable";
    sub_100006354(&v6, &object);
    *a1 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
    v6 = &v9;
    v7 = "fThumperEnabled";
    sub_100006354(&v6, &object);
    *(a1 + 1) = xpc::dyn_cast_or_default(&object, 0, v5);
    xpc_release(object);
    v3 = v9;
  }

  xpc_release(v3);
}

void sub_10082838C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, xpc_object_t a12)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void write_rest_value(const ThumperCapability *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
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
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_BOOL_create(*a1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "fThumperCapable";
  sub_10000F688(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  v8 = xpc_BOOL_create(*(a1 + 1));
  if (!v8)
  {
    v8 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "fThumperEnabled";
  sub_10000F688(&v10, &v8, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(v8);
  v8 = 0;
  v7 = v14;
  *a2 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v14);
}

void read_rest_value(uint64_t a1, xpc_object_t *a2)
{
  sub_100828594(a1, a2, "PersonalityID", "IMSProvisioningState");
}

{
  sub_100828B94(a1, a2, "PersonalityID", "State");
}

{
  sub_1008291CC(a1, a2, "PersonalityID", "State");
}

{
  *a1 = 0;
  *(a1 + 4) = 0;
  v3 = *a2;
  v10 = v3;
  if (v3 && xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    xpc_retain(v3);
  }

  else
  {
    v3 = xpc_null_create();
    v10 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    v7 = &v10;
    v8 = "state";
    sub_100006354(&v7, &object);
    *a1 = xpc::dyn_cast_or_default(&object, 0, v4);
    xpc_release(object);
    v7 = &v10;
    v8 = "rawState";
    sub_100006354(&v7, &object);
    type = xpc_get_type(object);
    if (type == &_xpc_type_string)
    {
      v11 = *(a1 + 4);
      ctu::rest::detail::read_enum_string_value(&v11, &object, v6);
      *(a1 + 4) = v11;
    }

    else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
    {
      *(a1 + 4) = xpc::dyn_cast_or_default(&object, 0, v6);
    }

    xpc_release(object);
    v3 = v10;
  }

  xpc_release(v3);
}

{
  sub_10082A5C4(a1, a2, "PersonalityID", "State");
}

{
  sub_10082B050(a1, a2, "PersonalityID", "State");
}

void sub_100828594(uint64_t a1, xpc_object_t *a2, void *a3, void *a4)
{
  v8 = (a1 + 8);
  sub_100009970(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object[0] = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object[0] = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object[0] = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v25, object, 0);
  xpc_release(object[0]);
  object[0] = v9;
  if (v10)
  {
    object[0] = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v24, object, count);
  xpc_release(object[0]);
  for (i = v26; i != v24[1] || v25 != v24[0]; i = ++v26)
  {
    v23[0] = &v25;
    v23[1] = i;
    v22 = 0;
    sub_10003EAD4(v23, &v22);
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      __p[0] = 0;
      __p[1] = 0;
      v21 = 0;
      v19 = 0;
      v18 = 0;
      object[0] = &v22;
      object[1] = a3;
      sub_100006354(object, &v17);
      read_rest_value();
      xpc_release(v17);
      object[0] = &v22;
      object[1] = a4;
      sub_100006354(object, &v17);
      read_rest_value(&v18, &v17);
      xpc_release(v17);
      if (SHIBYTE(v21) < 0)
      {
        sub_100005F2C(object, __p[0], __p[1]);
      }

      else
      {
        *object = *__p;
        v14 = v21;
      }

      v15 = v18;
      v16 = v19;
      sub_10024DECC(a1, object);
      if (SHIBYTE(v14) < 0)
      {
        operator delete(object[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p[0]);
      }
    }

    xpc_release(v22);
  }

  xpc_release(v24[0]);
  xpc_release(v25);
  xpc_release(v9);
}

void sub_100828820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26)
{
  xpc_release(object);
  xpc_release(*(v27 - 80));
  xpc_release(v26);
  _Unwind_Resume(a1);
}

void write_rest_value(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  sub_100828900(a1, "PersonalityID", "IMSProvisioningState", a2);
}

{
  sub_100828F38(a1, "PersonalityID", "State", a2);
}

{
  sub_100829524(a1, "PersonalityID", "State", a2);
}

{
  sub_10082A950(a1, "PersonalityID", "State", a2);
}

{
  sub_10082B3F0(a1, "PersonalityID", "State", a2);
}

void sub_100828900(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = (a1 + 1);
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value(v11 + 14, &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = *(v11 + 1);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *(v11 + 2);
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_100828B5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_100828B94(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  sub_1001A904C(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v28, &object, 0);
  xpc_release(object);
  object = v9;
  if (v10)
  {
    object = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v27, &object, count);
  xpc_release(object);
  for (i = v29; i != v27[1] || v28 != v27[0]; i = ++v29)
  {
    v26[0] = &v28;
    v26[1] = i;
    v25 = 0;
    sub_10003EAD4(v26, &v25);
    if (xpc_get_type(v25) == &_xpc_type_dictionary)
    {
      v23 = 0uLL;
      v24 = 0;
      *v20 = 0u;
      v21 = 0u;
      BYTE4(v20[0]) = 1;
      v22 = 0;
      object = &v25;
      v14 = a3;
      sub_100006354(&object, &v19);
      read_rest_value();
      xpc_release(v19);
      object = &v25;
      v14 = a4;
      sub_100006354(&object, &v19);
      read_rest_value(v20, &v19);
      xpc_release(v19);
      sub_10082B738(&object, &v23, v20);
      sub_10024DA74(a1, &object);
      if (v18 == 1 && v17 < 0)
      {
        operator delete(__p);
      }

      if (v15 < 0)
      {
        operator delete(object);
      }

      if (v22 == 1 && SHIBYTE(v21) < 0)
      {
        operator delete(v20[1]);
      }

      if (SHIBYTE(v24) < 0)
      {
        operator delete(v23);
      }
    }

    xpc_release(v25);
  }

  xpc_release(v27[0]);
  xpc_release(v28);
  xpc_release(v9);
}

void sub_100828E44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  xpc_release(object);
  xpc_release(*(v34 - 96));
  xpc_release(v33);
  _Unwind_Resume(a1);
}

void sub_100828F38(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = (a1 + 1);
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value(v11 + 14, &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = *(v11 + 1);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *(v11 + 2);
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_100829194(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_1008291CC(uint64_t a1, xpc_object_t *a2, void *a3, void *a4)
{
  v8 = (a1 + 8);
  sub_100009970(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object[0] = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object[0] = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object[0] = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v24, object, 0);
  xpc_release(object[0]);
  object[0] = v9;
  if (v10)
  {
    object[0] = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v23, object, count);
  xpc_release(object[0]);
  for (i = v25; i != v23[1] || v24 != v23[0]; i = ++v25)
  {
    v22[0] = &v24;
    v22[1] = i;
    v21 = 0;
    sub_10003EAD4(v22, &v21);
    if (xpc_get_type(v21) == &_xpc_type_dictionary)
    {
      __p[0] = 0;
      __p[1] = 0;
      v20 = 0;
      object[0] = &v21;
      object[1] = a3;
      sub_100006354(object, &v18);
      read_rest_value();
      xpc_release(v18);
      object[0] = &v21;
      object[1] = a4;
      sub_100006354(object, &v18);
      v14 = xpc::dyn_cast_or_default(&v18, 0, v13);
      xpc_release(v18);
      if (SHIBYTE(v20) < 0)
      {
        sub_100005F2C(object, __p[0], __p[1]);
      }

      else
      {
        *object = *__p;
        v16 = v20;
      }

      v17 = v14;
      sub_10024DD88(a1, object);
      if (SHIBYTE(v16) < 0)
      {
        operator delete(object[0]);
      }

      if (SHIBYTE(v20) < 0)
      {
        operator delete(__p[0]);
      }
    }

    xpc_release(v21);
  }

  xpc_release(v23[0]);
  xpc_release(v24);
  xpc_release(v9);
}

void sub_100829444(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, xpc_object_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, xpc_object_t a24, uint64_t a25, uint64_t a26, xpc_object_t a27)
{
  xpc_release(object);
  xpc_release(*(v28 - 80));
  xpc_release(v27);
  _Unwind_Resume(a1);
}

void sub_100829524(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = a1 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      v19 = xpc_BOOL_create(*(v11 + 56));
      if (!v19)
      {
        v19 = xpc_null_create();
      }

      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = v11[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_100829794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

uint64_t asString@<X0>(_BYTE *a1@<X8>)
{
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  *__p = 0u;
  v12 = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  sub_10000C320(&v8);
  v2 = sub_10000C030(&v9);
  v3 = sub_10000C030(v2);
  v4 = asString();
  strlen(v4);
  v5 = sub_10000C030(v3);
  sub_10000C030(v5);
  sub_100061574(&v8, a1);
  *&v9 = v6;
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v10);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void write_rest_value(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v17 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v17 = v5;
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
  v17 = v6;
LABEL_9:
  xpc_release(v5);
  v15 = xpc_BOOL_create(*a1);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v13 = &v17;
  v14 = "state";
  sub_10000F688(&v13, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  v7 = *(a1 + 4);
  v8 = asString();
  ctu::rest::detail::write_enum_string_value(&v11, v7, v8, v9);
  v13 = &v17;
  v14 = "rawState";
  sub_10000F688(&v13, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v17;
  *a2 = v17;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v17);
}

uint64_t asString@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  *v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  v17 = 0u;
  sub_10000C320(&v17);
  sub_10000C030(&v18);
  v6 = *a1;
  v4 = a1 + 1;
  v5 = v6;
  if (v6 != v4)
  {
    do
    {
      sub_10000C030(&v18);
      v7 = std::ostream::operator<<();
      v8 = sub_10000C030(v7);
      asString(&__p);
      v9 = sub_10000C030(v8);
      sub_10000C030(v9);
      if (v16 < 0)
      {
        operator delete(__p);
      }

      v10 = v5[1];
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
          v11 = v5[2];
          v12 = *v11 == v5;
          v5 = v11;
        }

        while (!v12);
      }

      v5 = v11;
    }

    while (v11 != v4);
  }

  sub_10000C030(&v18);
  sub_100061574(&v17, a2);
  *&v18 = v13;
  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  std::locale::~locale(v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10082A04C(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  sub_10006DCAC(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object[0] = v9;
  }

  else
  {
    v9 = xpc_null_create();
    object[0] = v9;
    if (!v9)
    {
      v9 = 0;
      object[0] = xpc_null_create();
      v10 = 1;
      goto LABEL_7;
    }
  }

  xpc_retain(v9);
  v10 = 0;
LABEL_7:
  sub_100008EA4(&v22, object, 0);
  xpc_release(object[0]);
  v20[0] = v9;
  if (v10)
  {
    v20[0] = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(object, v20, count);
  xpc_release(v20[0]);
  for (i = v23; i != object[1] || v22 != object[0]; i = ++v23)
  {
    v20[0] = &v22;
    v20[1] = i;
    v19 = 0;
    sub_10003EAD4(v20, &v19);
    if (xpc_get_type(v19) == &_xpc_type_dictionary)
    {
      v18 = 0;
      v15 = &v19;
      v16 = a3;
      sub_100006354(&v15, &v17);
      v14 = xpc::dyn_cast_or_default(&v17, 0, v13);
      xpc_release(v17);
      v15 = &v19;
      v16 = a4;
      sub_100006354(&v15, &v17);
      read_rest_value(&v18, &v17);
      xpc_release(v17);
      v15 = v14;
      v16 = v18;
      sub_10024E018(a1, &v15);
    }

    xpc_release(v19);
  }

  xpc_release(object[0]);
  xpc_release(v22);
  xpc_release(v9);
}

void sub_10082A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, xpc_object_t object, uint64_t a16, xpc_object_t a17, uint64_t a18, xpc_object_t a19)
{
  xpc_release(object);
  xpc_release(a19);
  xpc_release(v19);
  _Unwind_Resume(a1);
}

void sub_10082A31C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = a1 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      v23 = xpc_uint64_create(v11[4]);
      if (!v23)
      {
        v23 = xpc_null_create();
      }

      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value((v11 + 5), &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = v11[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_10082A58C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void sub_10082A5C4(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  sub_100246FAC(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (*a2 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v25, &object, 0);
  xpc_release(object);
  object = v9;
  if (v10)
  {
    object = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v24, &object, count);
  xpc_release(object);
  for (i = v26; i != v24[1] || v25 != v24[0]; i = ++v26)
  {
    v23[0] = &v25;
    v23[1] = i;
    v22 = 0;
    sub_10003EAD4(v23, &v22);
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      __p = 0uLL;
      v21 = 0;
      v19[0] = 0;
      v19[1] = 0;
      v18 = v19;
      object = &v22;
      v14 = a3;
      sub_100006354(&object, &v17);
      read_rest_value();
      xpc_release(v17);
      object = &v22;
      v14 = a4;
      sub_100006354(&object, &v17);
      sub_10082A04C(&v18, &v17, "AppCategoryID", "State");
      xpc_release(v17);
      sub_10082B7C4(&object, &__p, &v18);
      sub_10024E0E4(a1, &object);
      sub_10006DCAC(v16, v16[1]);
      if (v15 < 0)
      {
        operator delete(object);
      }

      sub_10006DCAC(&v18, v19[0]);
      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }
    }

    xpc_release(v22);
  }

  xpc_release(v24[0]);
  xpc_release(v25);
  xpc_release(v9);
}

void sub_10082A86C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, xpc_object_t object, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t a16, char a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, xpc_object_t a26)
{
  xpc_release(object);
  xpc_release(*(v26 - 104));
  xpc_release(a9);
  _Unwind_Resume(a1);
}

void sub_10082A950(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = a1 + 1;
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      sub_10082A31C(v11 + 7, "AppCategoryID", "State", &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = v11[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v11[2];
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_10082ABCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

void read_rest_value(_BYTE *a1, xpc_object_t *a2)
{
  LOBYTE(v9) = 0;
  LOBYTE(v10) = 0;
  v13 = 0;
  *a1 = 0;
  v4 = (a1 + 8);
  sub_10082B670((a1 + 8), &v10);
  if (v13 == 1)
  {
    v14 = v11;
    sub_1000087B4(&v14);
  }

  v5 = *a2;
  v8 = v5;
  if (v5 && xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    xpc_retain(v5);
  }

  else
  {
    v5 = xpc_null_create();
    v8 = v5;
  }

  if (xpc_get_type(v5) == &_xpc_type_dictionary)
  {
    v9 = &v8;
    v10 = "allowed";
    sub_100006354(&v9, &v14);
    *a1 = xpc::dyn_cast_or_default(&v14, 0, v6);
    xpc_release(v14);
    object = 0;
    v9 = &v8;
    v10 = "properties";
    sub_100006354(&v9, &object);
    if (xpc_get_type(object) != &_xpc_type_null)
    {
      LODWORD(v9) = 1;
      v11[0] = 0;
      v11[1] = 0;
      v10 = 0;
      v12 = 0;
      sub_10082ADEC(v4, &v9);
      v14 = &v10;
      sub_1000087B4(&v14);
      sub_1001E6408(v4, &object);
    }

    xpc_release(object);
    v5 = v8;
  }

  xpc_release(v5);
}

void sub_10082AD7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10)
{
  *(v11 - 40) = v10;
  sub_1000087B4((v11 - 40));
  xpc_release(object);
  xpc_release(a10);
  _Unwind_Resume(a1);
}

uint64_t sub_10082ADEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  v5 = (a2 + 8);
  *a1 = *a2;
  if (v4 == 1)
  {
    sub_100071A6C(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *v5 = 0;
    v5[1] = 0;
    v5[2] = 0;
    v6 = *(a2 + 32);
  }

  else
  {
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *v5 = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  *(a1 + 32) = v6;
  return a1;
}

void write_rest_value(BOOL *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v14 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v14 = v5;
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
  v14 = v6;
LABEL_9:
  xpc_release(v5);
  v12 = xpc_BOOL_create(*a1);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v10 = &v14;
  v11 = "allowed";
  sub_10000F688(&v10, &v12, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v12);
  v12 = 0;
  if (a1[48])
  {
    sub_1001E6628((a1 + 8), &v8);
    v10 = &v14;
    v11 = "properties";
    sub_10000F688(&v10, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
    v8 = 0;
  }

  v7 = v14;
  *a2 = v14;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v14);
}

void sub_10082B050(uint64_t a1, xpc_object_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = (a1 + 8);
  sub_100246E7C(a1, *(a1 + 8));
  *a1 = v8;
  *(a1 + 16) = 0;
  *v8 = 0;
  v9 = *a2;
  if (v9 && xpc_get_type(v9) == &_xpc_type_array)
  {
    xpc_retain(v9);
    object = v9;
    goto LABEL_6;
  }

  v9 = xpc_null_create();
  object = v9;
  if (v9)
  {
LABEL_6:
    xpc_retain(v9);
    v10 = 0;
    goto LABEL_7;
  }

  v9 = 0;
  object = xpc_null_create();
  v10 = 1;
LABEL_7:
  sub_100008EA4(&v25, &object, 0);
  xpc_release(object);
  object = v9;
  if (v10)
  {
    object = xpc_null_create();
  }

  else
  {
    xpc_retain(v9);
  }

  if (xpc_get_type(v9) == &_xpc_type_array)
  {
    count = xpc_array_get_count(v9);
  }

  else
  {
    count = 0;
  }

  sub_100008EA4(v24, &object, count);
  xpc_release(object);
  for (i = v26; i != v24[1] || v25 != v24[0]; i = ++v26)
  {
    v23[0] = &v25;
    v23[1] = i;
    v22 = 0;
    sub_10003EAD4(v23, &v22);
    if (xpc_get_type(v22) == &_xpc_type_dictionary)
    {
      __p = 0uLL;
      v21 = 0;
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      v17 = 0u;
      object = &v22;
      v14 = a3;
      sub_100006354(&object, &v27);
      read_rest_value();
      xpc_release(v27);
      object = &v22;
      v14 = a4;
      sub_100006354(&object, &v27);
      read_rest_value(&v17, &v27);
      xpc_release(v27);
      sub_10082B840(&object, &__p, &v17);
      sub_10024E504(a1, &object);
      if (v16[32] == 1)
      {
        v27 = v16;
        sub_1000087B4(&v27);
      }

      if (v15 < 0)
      {
        operator delete(object);
      }

      if (v19 == 1)
      {
        object = v18;
        sub_1000087B4(&object);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(__p);
      }
    }

    xpc_release(v22);
  }

  xpc_release(v24[0]);
  xpc_release(v25);
  xpc_release(v9);
}

void sub_10082B300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  xpc_release(object);
  xpc_release(*(v32 - 104));
  xpc_release(v31);
  _Unwind_Resume(a1);
}

void sub_10082B3F0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, xpc_object_t *a4@<X8>)
{
  v8 = xpc_array_create(0, 0);
  if (v8 || (v8 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v8) == &_xpc_type_array)
    {
      xpc_retain(v8);
      v9 = v8;
    }

    else
    {
      v9 = xpc_null_create();
    }
  }

  else
  {
    v9 = xpc_null_create();
    v8 = 0;
  }

  xpc_release(v8);
  v12 = *a1;
  v10 = (a1 + 1);
  v11 = v12;
  if (v12 != v10)
  {
    do
    {
      value = 0;
      v13 = xpc_dictionary_create(0, 0, 0);
      v14 = v13;
      if (v13)
      {
        value = v13;
      }

      else
      {
        v14 = xpc_null_create();
        value = v14;
        if (!v14)
        {
          v15 = xpc_null_create();
          v14 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v14) != &_xpc_type_dictionary)
      {
        v15 = xpc_null_create();
LABEL_15:
        value = v15;
        goto LABEL_16;
      }

      xpc_retain(v14);
LABEL_16:
      xpc_release(v14);
      write_rest_value();
      p_value = &value;
      v22 = a2;
      sub_10000F688(&p_value, &v23, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v23);
      v23 = 0;
      write_rest_value(v11 + 56, &v19);
      p_value = &value;
      v22 = a3;
      sub_10000F688(&p_value, &v19, &v20);
      xpc_release(v20);
      v20 = 0;
      xpc_release(v19);
      v19 = 0;
      xpc_array_append_value(v9, value);
      xpc_release(value);
      v16 = *(v11 + 1);
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = *(v11 + 2);
          v18 = *v17 == v11;
          v11 = v17;
        }

        while (!v18);
      }

      v11 = v17;
    }

    while (v17 != v10);
  }

  *a4 = v9;
  if (v9)
  {
    xpc_retain(v9);
  }

  else
  {
    *a4 = xpc_null_create();
  }

  xpc_release(v9);
}

void sub_10082B64C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v16);
  _Unwind_Resume(a1);
}

__n128 sub_10082B670(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 40) == *(a2 + 40))
  {
    if (*(a1 + 40))
    {
      *a1 = *a2;
      sub_100071A6C(a1 + 8);
      result = *(a2 + 8);
      *(a1 + 8) = result;
      *(a1 + 24) = *(a2 + 24);
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a1 + 32) = *(a2 + 32);
    }
  }

  else if (*(a1 + 40))
  {
    v5 = (a1 + 8);
    sub_1000087B4(&v5);
    *(a1 + 40) = 0;
  }

  else
  {
    *a1 = *a2;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    *(a1 + 8) = 0;
    result = *(a2 + 8);
    *(a1 + 8) = result;
    *(a1 + 24) = *(a2 + 24);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = 1;
  }

  return result;
}

void *sub_10082B738(void *__dst, __int128 *a2, int *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  v6 = *a3;
  *(__dst + 28) = *(a3 + 4);
  *(__dst + 6) = v6;
  sub_10006F264((__dst + 4), (a3 + 2));
  return __dst;
}

void sub_10082B7A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082B7C4(void *__dst, __int128 *a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  sub_10024E348(__dst + 3, a3);
  return __dst;
}

void sub_10082B824(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082B840(void *__dst, __int128 *a2, _BYTE *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 24) = *a3;
  sub_10024E78C((__dst + 4), (a3 + 8));
  return __dst;
}

void sub_10082B8A8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10082B8C4(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, NSObject **a5, int a6)
{
  v10 = a2[1];
  v19 = *a2;
  v20 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *a5;
  object = v11;
  if (v11)
  {
    dispatch_retain(v11);
  }

  v12 = "DATA.Connection.UT.X";
  v13 = *(*a3 + 52);
  if (v13 == 2)
  {
    v12 = "DATA.Connection.UT.2";
  }

  v14 = "UT.X";
  if (v13 == 2)
  {
    v14 = "UT.2";
  }

  if (v13 == 1)
  {
    v15 = "DATA.Connection.UT.1";
  }

  else
  {
    v15 = v12;
  }

  if (v13 == 1)
  {
    v16 = "UT.1";
  }

  else
  {
    v16 = v14;
  }

  sub_1009679C4(a1, &off_101E88248, &v19, a3, a4, &object, v15, v16, a6);
  if (object)
  {
    dispatch_release(object);
  }

  if (v20)
  {
    sub_100004A34(v20);
  }

  *a1 = off_101E877E8;
  a1[8] = off_101E87D48;
  a1[9] = off_101E87FE8;
  a1[10] = off_101E881D0;
  return a1;
}

void sub_10082BA50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, uint64_t a11, std::__shared_weak_count *a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  if (a12)
  {
    sub_100004A34(a12);
  }

  PersonalitySpecific::~PersonalitySpecific(v12);
  _Unwind_Resume(a1);
}

void sub_10082BA7C(uint64_t a1)
{
  sub_10096807C(a1, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BAAC(uint64_t a1)
{
  sub_10096807C(a1 - 64, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BAE0(uint64_t a1)
{
  sub_10096807C(a1 - 72, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BB14(uint64_t a1)
{
  sub_10096807C(a1 - 80, &off_101E88248);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_10082BB48(uint64_t a1)
{
  sub_10096807C(a1, &off_101E88248);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

uint64_t sub_10082BBD4(uint64_t a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "lazuli.text/plain");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(a1, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  sub_100C180E4(a1 + 8);
  *(a1 + 48) = 0;
  sub_100917CB8((a1 + 56));
  return a1;
}

void sub_10082BC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, char a12)
{
  if (*(v12 + 31) < 0)
  {
    operator delete(*(v12 + 8));
  }

  ctu::OsLogLogger::~OsLogLogger(v12);
  _Unwind_Resume(a1);
}

uint64_t sub_10082BCA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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
  *v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  *__src = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  sub_10000C320(&v17);
  sub_1000D0C38(&v17, "Content-Type", off_101E97778);
  sub_1000D0C38(&v17, "Content-Disposition", &off_101E89018);
  v4 = (a1 + 8);
  memset(&__p, 0, sizeof(__p));
  if (*(a1 + 48) == 1)
  {
    v5 = *(a1 + 31);
    if (v5 < 0)
    {
      v4 = *(a1 + 8);
      v5 = *(a1 + 16);
    }

    __dst = 0;
    v14 = 0;
    v15 = 0;
    sub_1001E0D88(&__dst, v4, v4 + v5, v5);
    ctu::base64::encode();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v12;
    sub_1000D0C38(&v17, "Content-Transfer-Encoding", off_101E97770);
    if (__dst)
    {
      v14 = __dst;
      operator delete(__dst);
    }
  }

  else
  {
    std::string::operator=(&__p, v4);
  }

  size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  __dst = size;
  sub_1000D0D2C(&v17, "Content-Length", &__dst);
  sub_100917E0C(&v17);
  sub_10000C030(&v18);
  if ((BYTE8(v24) & 0x10) != 0)
  {
    v8 = v24;
    if (v24 < __src[1])
    {
      *&v24 = __src[1];
      v8 = __src[1];
    }

    v9 = __src[0];
  }

  else
  {
    if ((BYTE8(v24) & 8) == 0)
    {
      v7 = 0;
      HIBYTE(v15) = 0;
      goto LABEL_24;
    }

    v9 = *(&v19 + 1);
    v8 = *(&v20 + 1);
  }

  v7 = v8 - v9;
  if ((v8 - v9) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v7 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v8 - v9;
  if (v7)
  {
    memmove(&__dst, v9, v7);
  }

LABEL_24:
  *(&__dst + v7) = 0;
  sub_100C180E0(a2);
  if (SHIBYTE(v15) < 0)
  {
    operator delete(__dst);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  *&v18 = v10;
  if (SHIBYTE(v23) < 0)
  {
    operator delete(v22[1]);
  }

  std::locale::~locale(&v19);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_10082C070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t **sub_10082C0EC(uint64_t **result, void *a2, void *a3)
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

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          std::string::operator=((v8 + 4), (v9 + 4));
          std::string::operator=((v8 + 7), (v9 + 7));
          sub_10082C260(v5, v14);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = sub_1000685CC(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = sub_100173490(&v12);
  }

  if (a2 != a3)
  {
    sub_10082C2E4();
  }

  return result;
}

void sub_10082C24C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100173490(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_10082C260(uint64_t **a1, uint64_t *a2)
{
  v5 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v5 = v4;
        if (!sub_1009172C4(a2 + 4, v4 + 4))
        {
          break;
        }

        v4 = *v5;
        v6 = v5;
        if (!*v5)
        {
          goto LABEL_8;
        }
      }

      v4 = v5[1];
    }

    while (v4);
    v6 = v5 + 1;
  }

  else
  {
    v6 = a1 + 1;
  }

LABEL_8:
  sub_1000070DC(a1, v5, v6, a2);
  return a2;
}

void sub_10082C2E4()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_1006A3690();
}

void sub_10082C390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000DFA0C(va);
  _Unwind_Resume(a1);
}

void *sub_10082C3A4(void *a1, void *a2)
{
  sub_10000501C(__p, "commCenterSwitchState");
  AnalyticsEvent::AnalyticsEvent(a1, __p, a2);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  *a1 = &off_101E89030;
  return a1;
}

void sub_10082C420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082C448(void **a1)
{
  AnalyticsEvent::~AnalyticsEvent(a1);

  operator delete();
}

void sub_10082C480(uint64_t a1, uint64_t a2)
{
  if (!a2 || a2 == 3)
  {
    return;
  }

  v4 = analytics::simSlotAsSubsId();
  v22 = xpc_int64_create(v4);
  if (!v22)
  {
    v22 = xpc_null_create();
  }

  v5 = a1 + 32;
  __p[0] = (a1 + 32);
  __p[1] = "subs_id";
  sub_10000F688(__p, &v22, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v22);
  v22 = 0;
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
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
  __p[0] = v8;
  v12 = sub_100009510(&v7[1].__m_.__sig, __p);
  if (!v12)
  {
    v14 = 0;
LABEL_13:
    std::mutex::unlock(v7);
    v13 = 0;
    v15 = 1;
    if (!v14)
    {
      goto LABEL_11;
    }

LABEL_14:
    (*(*v14 + 16))(__p, v14, a2);
    goto LABEL_15;
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
    goto LABEL_14;
  }

LABEL_11:
  sub_10000501C(__p, "");
LABEL_15:
  if (v19 >= 0)
  {
    v16 = __p;
  }

  else
  {
    v16 = __p[0];
  }

  v20 = xpc_string_create(v16);
  if (!v20)
  {
    v20 = xpc_null_create();
  }

  v17[0] = v5;
  v17[1] = "carrierName";
  sub_10000F688(v17, &v20, &v21);
  xpc_release(v21);
  v21 = 0;
  xpc_release(v20);
  v20 = 0;
  if (v19 < 0)
  {
    operator delete(__p[0]);
    if (v15)
    {
      return;
    }
  }

  else if (v15)
  {
    return;
  }

  sub_100004A34(v13);
}

void sub_10082C69C(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082C6C4(uint64_t a1, char *string)
{
  if (string[23] < 0)
  {
    string = *string;
  }

  v4 = xpc_string_create(string);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "status";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void sub_10082C754(uint64_t a1, char *string)
{
  if (string[23] < 0)
  {
    string = *string;
  }

  v4 = xpc_string_create(string);
  if (!v4)
  {
    v4 = xpc_null_create();
  }

  v3[0] = a1 + 32;
  v3[1] = "switchName";
  sub_10000F688(v3, &v4, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v4);
}

void entitlements::WebServiceDelegate::~WebServiceDelegate(entitlements::WebServiceDelegate *this)
{
  *this = off_101E89068;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

{
  *this = off_101E89068;
  v1 = *(this + 2);
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t entitlements::WebServiceDelegate::forwardTransferAuthorizationPostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    codec::encode<entitlements::WebServiceRequest>(__p, a3);
    sub_10082DD7C(v16, a5);
    v9 = entitlements::WebServiceDelegate::impl::forwardTransferAuthorizationPostRequest(v6, a2, __p, a4, v16);
    sub_10029C318(v16);
    if (v12 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v14[0] = 0;
    v15 = 0;
    v13 = 0;
    sub_10082CA68(a5, v14, 0);
    if (v15 == 1)
    {
      sub_100284EB4(v14);
    }

    return 1;
  }

  return v9;
}

void sub_10082CA0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, char a52)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  if (a52 == 1)
  {
    sub_100284EB4(&a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10082CA68(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t entitlements::WebServiceDelegate::impl::forwardTransferAuthorizationPostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24))
  {
    if ((atomic_load_explicit(&qword_101FBACB8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_101FBACB8))
      {
        sub_1000DCEE0(v9, "Content-Type", "application/json");
        sub_1000DF684(&unk_101FBACA0, v9, 1);
        sub_1000D6F38(v9);
        __cxa_atexit(sub_10082D150, &unk_101FBACA0, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBACB8);
      }
    }

    sub_10082DEAC(v7, a5);
    v8 = 0;
    operator new();
  }

  return 0;
}

void sub_10082CC50(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000D6F38(va);
  __cxa_guard_abort(&qword_101FBACB8);
  _Unwind_Resume(a1);
}

uint64_t entitlements::WebServiceDelegate::forwardTransferSIMServicePostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 24))
  {
    return 0;
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    codec::encode<entitlements::WebServiceRequest>(v12, a3);
    sub_10082DE14(v31, a5);
    v9 = entitlements::WebServiceDelegate::impl::forwardTransferSIMServicePostRequest(v6, a2, v12, a4, v31);
    sub_10029CBE0(v31);
    if (v13 < 0)
    {
      v10 = v12[0];
LABEL_20:
      operator delete(v10);
    }
  }

  else
  {
    v16[0] = 0;
    v30 = 0;
    v14 = 0;
    v15 = 0;
    sub_10082CE74(a5, v16, 0);
    if (v30 != 1)
    {
      return 1;
    }

    if (v29 < 0)
    {
      operator delete(__p);
    }

    if (v27 < 0)
    {
      operator delete(v26);
    }

    if (v25 == 1 && v24 < 0)
    {
      operator delete(v23);
    }

    if (v22 == 1 && v21 < 0)
    {
      operator delete(v20);
    }

    v9 = 1;
    if (v19 == 1 && v18 < 0)
    {
      v10 = v17;
      goto LABEL_20;
    }
  }

  return v9;
}

void sub_10082CE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, char a18)
{
  if (a17)
  {
    sub_100004A34(a17);
  }

  sub_100276FF0(&a18);
  _Unwind_Resume(a1);
}

uint64_t sub_10082CE74(uint64_t a1, uint64_t a2, int a3)
{
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, a2, &v5);
}

uint64_t entitlements::WebServiceDelegate::impl::forwardTransferSIMServicePostRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a5 + 24))
  {
    if ((atomic_load_explicit(&qword_101FBACD8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_101FBACD8))
      {
        sub_1000DCEE0(v9, "Content-Type", "application/json");
        sub_1000DF684(&dword_101FBACC0, v9, 1);
        sub_1000D6F38(v9);
        __cxa_atexit(sub_10082D150, &dword_101FBACC0, &_mh_execute_header);
        __cxa_guard_release(&qword_101FBACD8);
      }
    }

    sub_10082ED34(v7, a5);
    v8 = 0;
    operator new();
  }

  return 0;
}

void sub_10082D064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000D6F38(va);
  __cxa_guard_abort(&qword_101FBACD8);
  _Unwind_Resume(a1);
}

uint64_t entitlements::WebServiceDelegate::impl::impl(uint64_t a1, NSObject **a2, void *a3)
{
  ctu::OsLogContext::OsLogContext(&v8, kCtLoggingSystemName, "cp.tr.http");
  sub_1001303E4(a1, a2, &v8);
  ctu::OsLogContext::~OsLogContext(&v8);
  v6 = a3[1];
  *(a1 + 40) = *a3;
  *(a1 + 48) = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  return a1;
}

BOOL entitlements::WebServiceDelegate::impl::processPostRequest(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6)
{
  v6 = *(a6 + 24);
  if (!v6)
  {
    return v6 != 0;
  }

  v13 = *(a1 + 56) + 1;
  *(a1 + 56) = v13;
  v14 = *(a1 + 32);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v15 = a2;
    }

    else
    {
      v15 = *a2;
    }

    if (*(a4 + 23) >= 0)
    {
      v16 = a4;
    }

    else
    {
      v16 = *a4;
    }

    *buf = 67109634;
    *&buf[4] = v13;
    *&buf[8] = 2082;
    *&buf[10] = v15;
    *&buf[18] = 2080;
    *&buf[20] = v16;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I -----> web service request [%d]. url:%{public}s data:%s", buf, 0x1Cu);
  }

  v38 = v13;
  ServiceMap = Registry::getServiceMap(*(a1 + 40));
  v18 = ServiceMap;
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

  std::mutex::lock(ServiceMap);
  v45 = v19;
  v23 = sub_100009510(&v18[1].__m_.__sig, &v45);
  v39 = a5;
  v40 = a3;
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
      goto LABEL_18;
    }
  }

  else
  {
    v25 = 0;
  }

  std::mutex::unlock(v18);
  v24 = 0;
  v26 = 1;
LABEL_18:
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, a2[1]);
  }

  else
  {
    *__dst = *a2;
    v44 = a2[2];
  }

  (*(*v25 + 16))(buf, v25, 3, __dst, v40);
  v27 = *buf;
  *buf = 0;
  *&buf[8] = 0;
  v28 = *(a1 + 72);
  *(a1 + 64) = v27;
  if (v28)
  {
    sub_100004A34(v28);
    if (*&buf[8])
    {
      sub_100004A34(*&buf[8]);
    }
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(__dst[0]);
    if (v26)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if ((v26 & 1) == 0)
  {
LABEL_26:
    sub_100004A34(v24);
  }

LABEL_27:
  (*(**(a1 + 64) + 8))(*(a1 + 64), *(a1 + 16));
  v29 = *(a1 + 64);
  v30 = *(a4 + 23);
  if (v30 >= 0)
  {
    v31 = a4;
  }

  else
  {
    v31 = *a4;
  }

  if (v30 >= 0)
  {
    v32 = *(a4 + 23);
  }

  else
  {
    v32 = *(a4 + 8);
  }

  memset(buf, 0, 24);
  sub_1001E0D88(buf, v31, v31 + v32, v32);
  (*(*v29 + 56))(v29, buf);
  if (*buf)
  {
    *&buf[8] = *buf;
    operator delete(*buf);
  }

  LODWORD(v33) = *v39;
  (*(**(a1 + 64) + 96))(*(a1 + 64), v33);
  (*(**(a1 + 64) + 224))(*(a1 + 64), *v39);
  v34 = *(a1 + 64);
  sub_10000501C(buf, "com.apple.CommCenter.CellularPlanProvisioning");
  (*(*v34 + 160))(v34, buf);
  if (buf[23] < 0)
  {
    operator delete(*buf);
  }

  v35 = *(a1 + 64);
  v46[0] = _NSConcreteStackBlock;
  v46[1] = 3321888768;
  v46[2] = sub_10082D6BC;
  v46[3] = &unk_101E89088;
  v46[4] = a1;
  sub_10082F6D4(v47, a6);
  v47[8] = v38;
  (*(*v35 + 16))(v35, v46);
  v36 = *(a1 + 64);
  __p[1] = 0;
  v42 = 0;
  __p[0] = 0;
  (*(*v36 + 40))(v36, __p);
  if (SHIBYTE(v42) < 0)
  {
    operator delete(__p[0]);
  }

  sub_10082ECB4(v47);
  return v6 != 0;
}

void sub_10082D620(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v23);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082D6BC(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  if (!*a2)
  {
    sub_10000501C(v27, "");
    v10 = a2[1];
    v24 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10082DB58(a1 + 40, 0, v27, 1);
    v11 = v24;
    if (!v24)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((*(**a2 + 16))(*a2) != 1)
  {
    v13 = ctu::OsLogContext::OsLogContext(v27, kCtLoggingSystemName, "cp.tr.http");
    v14 = v28;
    ctu::OsLogContext::~OsLogContext(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      (*(**a2 + 16))();
      ctu::Http::asString();
      v15 = v29 >= 0 ? v27 : *v27;
      *buf = 136446210;
      v26[0] = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "HTTP Error: %{public}s", buf, 0xCu);
      if (SHIBYTE(v29) < 0)
      {
        operator delete(*v27);
      }
    }

    sub_10000501C(v27, "");
    v16 = a2[1];
    v23 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10082DB58(a1 + 40, 0, v27, 1);
    v11 = v23;
    if (!v23)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((*(**a2 + 24))() == 200)
  {
    *v27 = 0;
    v28 = 0;
    v29 = 0;
    (*(**a2 + 48))(v27);
    v5 = v4[4];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 72);
      v7 = v27;
      if (v29 < 0)
      {
        v7 = *v27;
      }

      *buf = 67109378;
      LODWORD(v26[0]) = v6;
      WORD2(v26[0]) = 2080;
      *(v26 + 6) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I <----- web service response [%d]. %s", buf, 0x12u);
    }

    v8 = a2[1];
    v21 = v8;
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_10082DB58(a1 + 40, 1, v27, 3);
    if (v21)
    {
      sub_100004A34(v21);
    }

    v9 = v4[9];
    v4[8] = 0;
    v4[9] = 0;
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(*v27);
    }

    return;
  }

  v17 = ctu::OsLogContext::OsLogContext(v27, kCtLoggingSystemName, "cp.tr.http");
  v18 = v28;
  ctu::OsLogContext::~OsLogContext(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = (*(**a2 + 24))();
    *v27 = 67240192;
    *&v27[4] = v19;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "HTTP Response Code: %{public}d", v27, 8u);
  }

  sub_10000501C(v27, "");
  v20 = a2[1];
  v22 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082DB58(a1 + 40, 0, v27, 3);
  v11 = v22;
  if (v22)
  {
LABEL_19:
    sub_100004A34(v11);
  }

LABEL_20:
  if (SHIBYTE(v29) < 0)
  {
    operator delete(*v27);
  }

  v12 = v4[9];
  v4[8] = 0;
  v4[9] = 0;
  if (v12)
  {
    sub_100004A34(v12);
  }
}

void sub_10082DADC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_101760E98(v12 - 80);
  _Unwind_Resume(a1);
}

uint64_t sub_10082DB58(uint64_t a1, char a2, uint64_t a3, int a4)
{
  v7 = a2;
  v6 = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, &v7, a3, &v6);
}

void *sub_10082DC54(void *a1, NSObject **a2, void *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E890D8;
  entitlements::WebServiceDelegate::impl::impl((a1 + 3), a2, a3);
  return a1;
}

void sub_10082DCD0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E890D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10082DD24(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[9];
  if (v3)
  {
    sub_100004A34(v3);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 7));

  return sub_1000C0544(a1 + 3);
}

uint64_t sub_10082DD7C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10082DE14(uint64_t a1, uint64_t a2)
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

uint64_t sub_10082DEAC(uint64_t a1, uint64_t a2)
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

void *sub_10082DF2C(void *a1)
{
  *a1 = off_101E89128;
  sub_10029C318((a1 + 1));
  return a1;
}

void sub_10082DF70(void *a1)
{
  *a1 = off_101E89128;
  sub_10029C318((a1 + 1));

  operator delete();
}

void sub_10082E080(void *a1)
{
  sub_10029C318(a1 + 8);

  operator delete(a1);
}

void sub_10082E0BC(uint64_t a1, char *a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a4;
  v8 = *a5;
  v7 = a5[1];
  *a5 = 0;
  a5[1] = 0;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v59 = 0;
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
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v42 = 0u;
      codec::decode<entitlements::TransferAuthorizationViaWebServiceResponse>(&v42, a3);
      v10 = kCtLoggingSystemName;
      ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.http");
      v11 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *&buf[0] = 0x104020200;
        WORD4(buf[0]) = 1026;
        *(buf + 10) = v6;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "success: %{public}d, EventCause: %{public}d", buf, 0xEu);
      }

      ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
      v12 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "<----- web service response: {", buf, 2u);
      }

      ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
      v13 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        if (BYTE1(v42) == 1)
        {
          v14 = entitlements::asString();
        }

        else
        {
          v14 = "None";
        }

        LODWORD(buf[0]) = 136446210;
        *(buf + 4) = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "\tPreflightState: %{public}s", buf, 0xCu);
      }

      if (v44 == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v15 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          if ((v44 & 1) == 0)
          {
            sub_1000D1644();
          }

          v16 = &v42 + 8;
          if (v43 < 0)
          {
            v16 = *(&v42 + 1);
          }

          LODWORD(buf[0]) = 136315138;
          *(buf + 4) = v16;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "\tIccid: %s", buf, 0xCu);
        }
      }

      if (BYTE12(v44) == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v17 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE12(v44) & 1) == 0)
          {
            sub_1000D1644();
          }

          LODWORD(buf[0]) = 67240192;
          DWORD1(buf[0]) = DWORD2(v44);
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "\tReasonCode: %{public}d", buf, 8u);
        }
      }

      if (BYTE8(v46) == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v18 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v46) & 1) == 0)
          {
            sub_1000D1644();
          }

          v19 = &v45;
          if (SBYTE7(v46) < 0)
          {
            v19 = v45;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "\tReasonCodeUrl: %{public}s", buf, 0xCu);
        }
      }

      if (v53 == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v20 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "\tTermsAndConditions: {", buf, 2u);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v21 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v22 = BYTE7(v48);
          if (SBYTE7(v48) < 0)
          {
            v22 = *(&v47 + 1);
          }

          if (v22)
          {
            v23 = "Present";
          }

          else
          {
            v23 = "Empty";
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "\t\tMainText: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v24 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v25 = &v48 + 8;
          if (v49 < 0)
          {
            v25 = *(&v48 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "\t\tUserChoiceUrl: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v26 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v27 = &v50;
          if (SBYTE7(v51) < 0)
          {
            v27 = v50;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v27;
          _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "\t\tAccpetPostData: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v28 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          if ((v53 & 1) == 0)
          {
            sub_1000D1644();
          }

          v29 = &v51 + 8;
          if (v52 < 0)
          {
            v29 = *(&v51 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v29;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "\t\tRejectPostData: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v30 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "\t}", buf, 2u);
        }
      }

      if (BYTE8(v58) == 1)
      {
        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v31 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "\tOtpContent: {", buf, 2u);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v32 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v33 = &v53 + 8;
          if (v54 < 0)
          {
            v33 = *(&v53 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "\t\tLastFourNumbers: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v34 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v35 = &v55;
          if (SBYTE7(v56) < 0)
          {
            v35 = v55;
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v35;
          _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "\t\tOtpUrl: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v36 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v37 = &v56 + 8;
          if (v57 < 0)
          {
            v37 = *(&v56 + 1);
          }

          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v37;
          _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "\t\tOtpPostData: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v38 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE8(v58) & 1) == 0)
          {
            sub_1000D1644();
          }

          v39 = entitlements::asString();
          LODWORD(buf[0]) = 136446210;
          *(buf + 4) = v39;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_DEFAULT, "\t\tOtpState: %{public}s", buf, 0xCu);
        }

        ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
        v40 = *(&buf[0] + 1);
        ctu::OsLogContext::~OsLogContext(buf);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "\t}", buf, 2u);
        }
      }

      ctu::OsLogContext::OsLogContext(buf, v10, "cp.tr.http");
      v41 = *(&buf[0] + 1);
      ctu::OsLogContext::~OsLogContext(buf);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "}", buf, 2u);
      }

      sub_100299E08(buf, &v42);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CA68(a1 + 8, buf, v6);
      if (v7)
      {
        sub_100004A34(v7);
      }

      if (v61 == 1)
      {
        sub_100284EB4(buf);
      }
    }

    else
    {
      LOBYTE(v42) = 0;
      LOBYTE(v59) = 0;
      *&buf[0] = v8;
      *(&buf[0] + 1) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CA68(a1 + 8, &v42, v6);
      if (*(&buf[0] + 1))
      {
        sub_100004A34(*(&buf[0] + 1));
      }
    }

    if (v59 == 1)
    {
      sub_100284EB4(&v42);
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10082EB78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  if (a45 == 1)
  {
    sub_100284EB4(&a11);
  }

  if (v45)
  {
    sub_100004A34(v45);
  }

  _Unwind_Resume(a1);
}

void sub_10082EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, std::__shared_weak_count *a48)
{
  if (a48)
  {
    sub_100004A34(a48);
  }

  JUMPOUT(0x10082EC20);
}

void sub_10082EC5C()
{
  if (!v0)
  {
    JUMPOUT(0x10082EC40);
  }

  JUMPOUT(0x10082EC38);
}

uint64_t sub_10082EC68(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10082ECB4(uint64_t a1)
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

uint64_t sub_10082ED34(uint64_t a1, uint64_t a2)
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

void *sub_10082EDB4(void *a1)
{
  *a1 = off_101E891B8;
  sub_10029CBE0((a1 + 1));
  return a1;
}

void sub_10082EDF8(void *a1)
{
  *a1 = off_101E891B8;
  sub_10029CBE0((a1 + 1));

  operator delete();
}

void sub_10082EF08(void *a1)
{
  sub_10029CBE0(a1 + 8);

  operator delete(a1);
}

void sub_10082EF44(uint64_t a1, char *a2, uint64_t a3, int *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *a4;
  v8 = *a5;
  v7 = a5[1];
  *a5 = 0;
  a5[1] = 0;
  if (*(a1 + 32))
  {
    if (v5)
    {
      v36 = 0;
      *v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      *v33 = 0u;
      *v30 = 0u;
      v31 = 0u;
      *v28 = 0u;
      v29 = 0u;
      *v26 = 0u;
      v27 = 0u;
      codec::decode<entitlements::TransferSIMViaWebServiceResponse>(v26, a3);
      v10 = kCtLoggingSystemName;
      ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "cp.tr.http");
      v11 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<----- web service response: {", &buf, 2u);
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v12 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = entitlements::asString();
        LODWORD(buf) = 136446210;
        *(&buf + 4) = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "TransferState: %{public}s", &buf, 0xCu);
      }

      if (LOBYTE(v28[0]) == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v14 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          if ((v28[0] & 1) == 0)
          {
            sub_1000D1644();
          }

          v15 = &v26[1];
          if (v27 < 0)
          {
            v15 = v26[1];
          }

          LODWORD(buf) = 136315138;
          *(&buf + 4) = v15;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Iccid: %s", &buf, 0xCu);
        }
      }

      if (LOBYTE(v30[0]) == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v16 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          if ((v30[0] & 1) == 0)
          {
            sub_1000D1644();
          }

          v17 = &v28[1];
          if (v29 < 0)
          {
            v17 = v28[1];
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "IccidState: %{public}s", &buf, 0xCu);
        }
      }

      if (v32 == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v18 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          if ((v32 & 1) == 0)
          {
            sub_1000D1644();
          }

          v19 = &v30[1];
          if (v31 < 0)
          {
            v19 = v30[1];
          }

          LODWORD(buf) = 136446210;
          *(&buf + 4) = v19;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "AltSmdpFqdn: %{public}s", &buf, 0xCu);
        }
      }

      if (BYTE9(v32) == 1)
      {
        ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
        v20 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          if ((BYTE9(v32) & 1) == 0)
          {
            sub_1000D1644();
          }

          LODWORD(buf) = 67240192;
          DWORD1(buf) = BYTE8(v32);
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "UseDS: %{public}d", &buf, 8u);
        }
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v21 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v33;
        if (SHIBYTE(v34[0]) < 0)
        {
          v22 = v33[0];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "ReasonCode: %{public}s", &buf, 0xCu);
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v23 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = &v34[1];
        if (v35 < 0)
        {
          v24 = v34[1];
        }

        LODWORD(buf) = 136446210;
        *(&buf + 4) = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "ReasonCodeUrl: %{public}s", &buf, 0xCu);
      }

      ctu::OsLogContext::OsLogContext(&buf, v10, "cp.tr.http");
      v25 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "}", &buf, 2u);
      }

      sub_100285238(&buf, v26);
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CE74(a1 + 8, &buf, v6);
      if (v7)
      {
        sub_100004A34(v7);
      }

      if (v50 == 1)
      {
        if (v49 < 0)
        {
          operator delete(__p);
        }

        if (v47 < 0)
        {
          operator delete(v46);
        }

        if (v45 == 1 && v44 < 0)
        {
          operator delete(v43);
        }

        if (v42 == 1 && v41 < 0)
        {
          operator delete(v40);
        }

        if (v39 == 1 && v38 < 0)
        {
          operator delete(*(&buf + 1));
        }
      }
    }

    else
    {
      LOBYTE(v26[0]) = 0;
      LOBYTE(v36) = 0;
      *&buf = v8;
      *(&buf + 1) = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10082CE74(a1 + 8, v26, v6);
      if (*(&buf + 1))
      {
        sub_100004A34(*(&buf + 1));
      }
    }

    if (v36 == 1)
    {
      if (SHIBYTE(v35) < 0)
      {
        operator delete(v34[1]);
      }

      if (SHIBYTE(v34[0]) < 0)
      {
        operator delete(v33[0]);
      }

      if (v32 == 1 && SHIBYTE(v31) < 0)
      {
        operator delete(v30[1]);
      }

      if (LOBYTE(v30[0]) == 1 && SHIBYTE(v29) < 0)
      {
        operator delete(v28[1]);
      }

      if (LOBYTE(v28[0]) == 1 && SHIBYTE(v27) < 0)
      {
        operator delete(v26[1]);
      }
    }
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_10082F5F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100276FF0(va);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

void sub_10082F668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, std::__shared_weak_count *a34)
{
  if (a34)
  {
    sub_100004A34(a34);
  }

  JUMPOUT(0x10082F64CLL);
}

void sub_10082F67C()
{
  if (!v0)
  {
    JUMPOUT(0x10082F660);
  }

  JUMPOUT(0x10082F658);
}

uint64_t sub_10082F688(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10082F6D4(uint64_t a1, uint64_t a2)
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

uint64_t sub_10082F76C@<X0>(std::string **a1@<X0>, _BYTE *a2@<X8>)
{
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  *__p = 0u;
  v8 = 0u;
  v5 = 0u;
  memset(v6, 0, sizeof(v6));
  sub_10000D518(&v5);
  sub_10082F8F8(&v5, a1);
  sub_10000D684(&v5, a2);
  if (SHIBYTE(v8) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v6);
  std::ostream::~ostream();
  return std::ios::~ios();
}

uint64_t sub_10082F8F8(uint64_t a1, std::string **a2)
{
  v3 = sub_10000C030(a1);
  sub_1000D1184(*a2, a2[1], ", ", 2uLL, &__p);
  v4 = sub_10000C030(v3);
  v5 = sub_10000C030(v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_10082F998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10082F9FC(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        operator new();
      }

      operator new();
    }

    operator new();
  }

  if (a3 == 1)
  {
    operator new();
  }

  operator new();
}

void *sub_10082FBD8(void *a1)
{
  *a1 = off_101E89238;
  v2 = a1[4];
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

const void **sub_10082FC38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_100005F2C(v7, *a1, *(a1 + 8));
  }

  else
  {
    *v7 = *a1;
    v8 = *(a1 + 16);
  }

  if (SHIBYTE(v8) < 0)
  {
    sub_100005F2C(__p, v7[0], v7[1]);
  }

  else
  {
    *__p = *v7;
    v12 = v8;
  }

  v10 = 0;
  if (SHIBYTE(v12) < 0)
  {
    sub_100005F2C(&__dst, __p[0], __p[1]);
  }

  else
  {
    __dst = *__p;
    v14 = v12;
  }

  v15 = 0;
  if (ctu::cf::convert_copy())
  {
    v3 = v10;
    v10 = v15;
    v16 = v3;
    sub_100005978(&v16);
  }

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__dst);
  }

  v4 = v10;
  v9 = v10;
  v10 = 0;
  sub_100005978(&v10);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v8) < 0)
  {
    operator delete(v7[0]);
  }

  v5 = CFURLCreateWithString(0, v4, 0);
  __p[0] = v5;
  if (v5)
  {
    v16 = CFURLCopyHostName(v5);
    __dst = 0uLL;
    v14 = 0;
    ctu::cf::assign();
    *a2 = __dst;
    *(a2 + 16) = v14;
    sub_100005978(&v16);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  sub_1002030AC(__p);
  return sub_100005978(&v9);
}

void sub_10082FDC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, char a16, int a17, const void *a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
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

  _Unwind_Resume(a1);
}

void *sub_10082FE5C(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082FED8(a1, a2, &v6, 1);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = off_101E89260;
  return a1;
}

uint64_t sub_10082FED8(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  v7 = a2[1];
  *a1 = off_101E89238;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = a4;
    sub_100004A34(v5);
  }

  else
  {
    *(a1 + 40) = a4;
  }

  *a1 = off_101E89440;
  return a1;
}

void sub_10082FF88(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_10082FFC0(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082FED8(a1, a2, &v6, 2);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = off_101E89288;
  return a1;
}

void sub_100830040(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_100830078(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_10082FED8(a1, a2, &v6, 3);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = off_101E892B0;
  return a1;
}

void sub_1008300F8(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_100830130(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1008301AC(a1, a2, &v6, 4);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = off_101E892D8;
  return a1;
}

uint64_t sub_1008301AC(uint64_t a1, uint64_t *a2, uint64_t *a3, char a4)
{
  v6 = *a3;
  v5 = a3[1];
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *a2;
  v7 = a2[1];
  *a1 = off_101E89238;
  *(a1 + 8) = v8;
  *(a1 + 16) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 24) = v6;
  *(a1 + 32) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a1 + 40) = a4;
    sub_100004A34(v5);
  }

  else
  {
    *(a1 + 40) = a4;
  }

  *a1 = off_101E89468;
  return a1;
}

void sub_10083025C(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void *sub_100830294(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a3[1];
  v6 = *a3;
  v7 = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_1008301AC(a1, a2, &v6, 16);
  if (v7)
  {
    sub_100004A34(v7);
  }

  *a1 = off_101E89300;
  return a1;
}

void sub_100830314(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void sub_10083034C(const void **a1@<X1>, uint64_t a2@<X2>, void **a3@<X8>)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10082FC38(a2, &v24);
  v5 = SHIBYTE(v26);
  if ((SHIBYTE(v26) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v26))
    {
      v6 = SHIBYTE(v26);
      goto LABEL_5;
    }

LABEL_19:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_20;
  }

  v6 = v25;
  if (!v25)
  {
    goto LABEL_19;
  }

LABEL_5:
  v7 = a1[1] + v6 - *a1;
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_1000CFAD0(&__p, v7 + 5);
  v8 = byte_order::big::operator()();
  if ((v5 & 0x80000000) == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v25;
  }

  v10 = byte_order::big::operator()();
  v11 = byte_order::big::operator()();
  v12 = __p;
  *__p = v8;
  *(v12 + 1) = v10;
  v13 = v12 + 3;
  if (v9)
  {
    if ((v5 & 0x80000000) == 0)
    {
      v14 = &v24;
    }

    else
    {
      v14 = v24;
    }

    memmove(v13, v14, v9);
  }

  v15 = &v13[v9];
  *v15 = v11;
  v16 = v15 + 2;
  v17 = *a1;
  v18 = a1[1] - *a1;
  if (v18)
  {
    memmove(v16, v17, v18);
  }

  v19 = v22;
  if (&v16[v18] != v22)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
      if ((v5 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v20 = v23;
  *a3 = __p;
  a3[1] = v19;
  a3[2] = v20;
  if ((v5 & 0x80000000) != 0)
  {
LABEL_21:
    operator delete(v24);
  }
}

void sub_1008304DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_100830514(const void **a1@<X1>, uint64_t a2@<X2>, void **a3@<X8>)
{
  v24 = 0;
  v25 = 0;
  v26 = 0;
  sub_10082FC38(a2, &v24);
  v5 = SHIBYTE(v26);
  if ((SHIBYTE(v26) & 0x8000000000000000) == 0)
  {
    if (HIBYTE(v26))
    {
      v6 = SHIBYTE(v26);
      goto LABEL_5;
    }

LABEL_19:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    goto LABEL_20;
  }

  v6 = v25;
  if (!v25)
  {
    goto LABEL_19;
  }

LABEL_5:
  v7 = a1[1] + v6 - *a1;
  __p = 0;
  v22 = 0;
  v23 = 0;
  sub_1000CFAD0(&__p, v7 + 7);
  v8 = byte_order::big::operator()();
  if ((v5 & 0x80000000) == 0)
  {
    v9 = v5;
  }

  else
  {
    v9 = v25;
  }

  v10 = byte_order::big::operator()();
  v11 = byte_order::big::operator()();
  v12 = __p;
  *__p = v8;
  *(v12 + 1) = v10;
  v13 = v12 + 3;
  if (v9)
  {
    if ((v5 & 0x80000000) == 0)
    {
      v14 = &v24;
    }

    else
    {
      v14 = v24;
    }

    memmove(v13, v14, v9);
  }

  v15 = &v13[v9];
  *v15 = v11;
  v16 = v15 + 4;
  v17 = *a1;
  v18 = a1[1] - *a1;
  if (v18)
  {
    memmove(v16, v17, v18);
  }

  v19 = v22;
  if (&v16[v18] != v22)
  {
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    if (__p)
    {
      v22 = __p;
      operator delete(__p);
      if ((v5 & 0x80000000) == 0)
      {
        return;
      }

      goto LABEL_21;
    }

LABEL_20:
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_21;
  }

  v20 = v23;
  *a3 = __p;
  a3[1] = v19;
  a3[2] = v20;
  if ((v5 & 0x80000000) != 0)
  {
LABEL_21:
    operator delete(v24);
  }
}

void sub_1008306A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (v14 < 0)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008306DC(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

void sub_100830718(void *a1)
{
  sub_10082FBD8(a1);

  operator delete();
}

uint64_t sub_100830758(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

std::__shared_weak_count *DNSResolverService::getResolverService@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  result = qword_101FCB988;
  if (qword_101FCB988)
  {
    result = std::__shared_weak_count::lock(qword_101FCB988);
    a1[1] = result;
    if (result)
    {
      *a1 = DNSResolverService::fDNSResolverServiceWeak;
    }
  }

  return result;
}

void DNSResolverService::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_100830948(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12)
{
  if (a12)
  {
    sub_101760EE4(a12);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void DNSResolverService::init(DNSResolverService *this)
{
  sub_100004AA0(&v4, this + 1);
  v2 = v4;
  v1 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v1);
  }

  v3 = qword_101FCB988;
  DNSResolverService::fDNSResolverServiceWeak = v2;
  qword_101FCB988 = v1;
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }
}

void *DNSResolverService::DNSResolverService(void *a1, void *a2, uint64_t *a3)
{
  ctu::OsLogContext::OsLogContext(&v13, kCtLoggingSystemName, "dns.srv");
  sub_100106AC0(a1 + 1, "DNSResolverService", QOS_CLASS_UTILITY, &v13);
  ctu::OsLogContext::~OsLogContext(&v13);
  *a1 = off_101E89530;
  v6 = a2[1];
  a1[6] = *a2;
  a1[7] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  sub_10000501C(&__p, "DNSResolverService");
  v7 = a1[3];
  v10 = v7;
  if (v7)
  {
    dispatch_retain(v7);
  }

  ctu::RestModule::RestModule();
  if (v10)
  {
    dispatch_release(v10);
  }

  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = *a3;
  *a3 = 0;
  a1[13] = 0;
  a1[12] = 0;
  a1[10] = v8;
  a1[11] = a1 + 12;
  return a1;
}

void sub_100830B4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object, dispatch_object_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
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

  v20 = v18[7];
  if (v20)
  {
    sub_100004A34(v20);
  }

  DNSResolverServiceInterface::~DNSResolverServiceInterface(v18);
  ctu::OsLogLogger::~OsLogLogger((v18 + 5));
  sub_1000C0544(v18 + 1);
  _Unwind_Resume(a1);
}

void DNSResolverService::~DNSResolverService(DNSResolverService *this)
{
  *this = off_101E89530;
  v2 = qword_101FCB988;
  DNSResolverService::fDNSResolverServiceWeak = 0;
  qword_101FCB988 = 0;
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  sub_1005DDB38(this + 88, *(this + 12));
  v3 = *(this + 10);
  *(this + 10) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 7);
  if (v5)
  {
    sub_100004A34(v5);
  }

  DNSResolverServiceInterface::~DNSResolverServiceInterface(this);
  ctu::OsLogLogger::~OsLogLogger((this + 40));
  sub_1000C0544(this + 1);
}

{
  DNSResolverService::~DNSResolverService(this);

  operator delete();
}

void DNSResolverService::notifyServiceShutdown(uint64_t a1, int a2, ServiceStage *this)
{
  ServiceStage::holdOffStage(&group[1], this);
  v5[0] = 0;
  v5[1] = 0;
  sub_100004AA0(v5, (a1 + 8));
  operator new();
}

void DNSResolverService::notifyServiceBootstrap(DNSResolverService *this, const group_session *a2)
{
  fObj = a2->var0.fObj;
  if (a2->var0.fObj)
  {
    dispatch_retain(a2->var0.fObj);
    dispatch_group_enter(fObj);
  }

  v4[0] = 0;
  v4[1] = 0;
  sub_100004AA0(v4, this + 1);
  operator new();
}

void DNSResolverService::notifyServiceStart(DNSResolverService *this)
{
  v1[0] = 0;
  v1[1] = 0;
  sub_100004AA0(v1, this + 1);
  operator new();
}

void DNSResolverService::createResolver(NSObject *this@<X0>, const queue *a2@<X1>, void *a3@<X8>)
{
  v5 = this + 1;
  fObj = a2->fObj.fObj;
  object[0] = fObj;
  if (fObj)
  {
    dispatch_retain(fObj);
  }

  object[1] = this;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_100831CB0;
  v9[3] = &unk_101E89760;
  v9[4] = v5;
  v9[5] = object;
  v10 = v9;
  isa = this[3].isa;
  if (this[4].isa)
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_100832000;
    v14 = &unk_101E897A0;
    v15 = a3;
    v16 = &v10;
    dispatch_async_and_wait(isa, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v12 = 0x40000000;
    v13 = sub_100831F98;
    v14 = &unk_101E89780;
    v15 = a3;
    v16 = &v10;
    dispatch_sync(isa, &block);
  }

  if (object[0])
  {
    dispatch_release(object[0]);
  }
}

void DNSResolverService::getResolver(DNSResolverService *this@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  v5[0] = a2;
  v5[1] = this;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 0x40000000;
  v6[2] = sub_100832068;
  v6[3] = &unk_101E897C0;
  v6[4] = this + 8;
  v6[5] = v5;
  v7 = v6;
  v4 = this + 24;
  v3 = *(this + 3);
  if (*(v4 + 1))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100832000;
    v11 = &unk_101E897A0;
    v12 = a3;
    v13 = &v7;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v9 = 0x40000000;
    v10 = sub_100831F98;
    v11 = &unk_101E89780;
    v12 = a3;
    v13 = &v7;
    dispatch_sync(v3, &block);
  }
}

void DNSResolverService::disposeResolver(DNSResolverService *this, const void *a2)
{
  v2[0] = 0;
  v2[1] = 0;
  sub_100004AA0(v2, this + 1);
  operator new();
}

void DNSResolverService::dumpState_sync(DNSResolverService *this)
{
  v2 = *(this + 5);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I <------------- DNSResolverService {", buf, 2u);
  }

  v3 = *(this + 11);
  if (v3 != (this + 96))
  {
    while (1)
    {
      v4 = *(v3 + 4);
      v5 = *(v3 + 6);
      if (!v5)
      {
        break;
      }

      v6 = *(v3 + 5);
      atomic_fetch_add_explicit(&v5->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v7 = std::__shared_weak_count::lock(v5);
      if (!v7 || !v6)
      {
        goto LABEL_9;
      }

      (*(*v6 + 72))(v6);
LABEL_12:
      sub_100004A34(v7);
LABEL_13:
      if (v5)
      {
        std::__shared_weak_count::__release_weak(v5);
      }

      v9 = *(v3 + 1);
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
          v10 = *(v3 + 2);
          v11 = *v10 == v3;
          v3 = v10;
        }

        while (!v11);
      }

      v3 = v10;
      if (v10 == (this + 96))
      {
        goto LABEL_21;
      }
    }

    v7 = 0;
LABEL_9:
    v8 = *(this + 5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v14 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I \tDNSResolver %p - not found", buf, 0xCu);
    }

    if (!v7)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_21:
  v12 = *(this + 5);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I } DNSResolverService ------------->", buf, 2u);
  }
}

void sub_100831520(_Unwind_Exception *a1)
{
  sub_100004A34(v2);
  std::__shared_weak_count::__release_weak(v1);
  _Unwind_Resume(a1);
}

void sub_1008315BC(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100831690);
  __cxa_rethrow();
}

void sub_1008315FC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100831650(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100831690(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1008316BC(ServiceManager::Service *this)
{
  *this = off_101E89670;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_100831718(ServiceManager::Service *this)
{
  *this = off_101E89670;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

void sub_100831798(uint64_t a1, dispatch_object_s **a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  v4.var0.fObj = v3;
  if (v3)
  {
    dispatch_retain(v3);
    dispatch_group_enter(v3);
    DNSResolverService::notifyServiceBootstrap(v2, &v4);
  }

  DNSResolverService::notifyServiceBootstrap(v2, &v4);
}

void sub_100831834(uint64_t *a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = *(**a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I shutting down", buf, 2u);
  }

  v3 = *(v1 + 8);
  if (v3)
  {
    dispatch_group_leave(v3);
    v4 = *(v1 + 8);
    if (v4)
    {
      dispatch_release(v4);
    }
  }

  operator delete();
}

void sub_1008318D8(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", &buf, 2u);
  }

  Registry::createRestModuleOneTimeUseConnection(&buf, *(v1 + 48));
  ctu::RestModule::connect();
  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1008319CC();
}

void sub_10083199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_100831AA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 sub_100831B58(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E896F0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_100831B90(void *a1)
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

uint64_t sub_100831BD8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100831C24(uint64_t a1)
{
  v2 = a1;
  v1 = *(**a1 + 40);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  operator delete();
}

void sub_100831CB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  *a2 = 0;
  a2[1] = 0;
  v5 = *(v4 + 80);
  v6 = *v3;
  object = v6;
  if (v6)
  {
    dispatch_retain(v6);
  }

  (*(*v5 + 16))(v5, &object);
  if (object)
  {
    dispatch_release(object);
  }

  if (*a2)
  {
    v7 = (*(**a2 + 16))(*a2);
    v8 = *(v4 + 40);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Adding resolver %p to map", buf, 0xCu);
    }

    sub_100831E34();
  }

  v9 = a2[1];
  if (v9)
  {
    sub_100004A34(v9);
  }

  *a2 = 0;
  a2[1] = 0;
}

void sub_100831E08(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  _Unwind_Resume(exception_object);
}

void sub_100831F38(uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[6];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void sub_100831F98(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100832000(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100004A34(*(&v5 + 1));
  }
}

void sub_100832068(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 40);
  v4 = v3[1];
  v5 = *(v4 + 96);
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = *v3;
  v7 = (v4 + 96);
  do
  {
    v8 = v5[4];
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v5;
    }

    v5 = v5[v10];
  }

  while (v5);
  if (v7 != (v4 + 96) && v6 >= v7[4])
  {
    *a2 = 0;
    a2[1] = 0;
    v13 = v7[6];
    if (v13)
    {
      v14 = std::__shared_weak_count::lock(v13);
      a2[1] = v14;
      if (v14)
      {
        *a2 = v7[5];
      }
    }
  }

  else
  {
LABEL_9:
    v11 = *(v4 + 40);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = *v3;
      v15 = 134217984;
      v16 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#N Not found resolver %p in map", &v15, 0xCu);
    }

    *a2 = 0;
    a2[1] = 0;
  }
}

void sub_100832180(unint64_t **a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = (*a1)[1];
  v3 = *(v2 + 40);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *v1;
    *buf = 134217984;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Removed resolver %p from map", buf, 0xCu);
  }

  sub_100832280((v2 + 88), v1);
  operator delete();
}

uint64_t sub_100832280(uint64_t **a1, unint64_t *a2)
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

  sub_1005DDCD4(a1, v4);
  return 1;
}

uint64_t sub_100832314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1006E1B48(a3);
  sub_10039EFFC(*(a3 + 8));
  std::string::operator=(*(*(a3 + 8) + 8), (a1 + 168));
  if (*a1 == 1)
  {
    sub_10039FDC0(*(a3 + 8));
    if ((*a1 & 1) == 0)
    {
      sub_10176111C();
    }

    std::string::operator=(*(*(a3 + 8) + 72), (a1 + 8));
  }

  if (*(a1 + 56) == 1)
  {
    sub_10039FB7C(*(a3 + 8));
    if ((*(a1 + 56) & 1) == 0)
    {
      sub_10176111C();
    }

    std::string::operator=(*(*(a3 + 8) + 32), (a1 + 64));
  }

  if (*(a1 + 88) == 1)
  {
    sub_10039F9C0(*(a3 + 8));
    if ((*(a1 + 88) & 1) == 0)
    {
      sub_10176111C();
    }

    std::string::operator=(*(*(a3 + 8) + 40), (a1 + 96));
  }

  v6 = *(a1 + 120);
  if (*(a1 + 120))
  {
    v7 = *(a3 + 8);
    *(v7 + 132) |= 2u;
    *(v7 + 116) = v6;
  }

  v8 = *(a1 + 151);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a1 + 136);
  }

  if (v8)
  {
    sub_10039FE34(*(a3 + 8));
    std::string::operator=(*(*(a3 + 8) + 48), (a1 + 128));
  }

  if (*(a1 + 152) == 1)
  {
    v9 = *(a3 + 8);
    v10 = *(a1 + 156);
    *(v9 + 132) |= 4u;
    *(v9 + 120) = v10;
  }

  if (*(a1 + 160) == 1)
  {
    v11 = *(a3 + 8);
    v12 = *(a1 + 164);
    *(v11 + 132) |= 8u;
    *(v11 + 124) = v12;
  }

  if (*(a2 + 152) == 1)
  {
    v13 = *(a2 + 23);
    if ((v13 & 0x80u) != 0)
    {
      v13 = *(a2 + 8);
    }

    if (v13)
    {
      v14 = *(a3 + 8);
      sub_10039FB08(v14);
      std::string::operator=(*(v14 + 24), a2);
    }

    v15 = *(a2 + 47);
    if ((v15 & 0x80u) != 0)
    {
      v15 = *(a2 + 32);
    }

    if (v15)
    {
      v16 = *(a3 + 8);
      sub_10027F75C(v16);
      std::string::operator=(*(v16 + 16), (a2 + 24));
    }

    v17 = *(a2 + 71);
    if ((v17 & 0x80u) != 0)
    {
      v17 = *(a2 + 56);
    }

    if (v17)
    {
      v18 = *(a3 + 8);
      sub_1005C127C(v18);
      std::string::operator=(*(v18 + 80), (a2 + 48));
    }

    v19 = *(a2 + 95);
    if ((v19 & 0x80u) != 0)
    {
      v19 = *(a2 + 80);
    }

    if (v19)
    {
      v20 = *(a3 + 8);
      sub_10039FC64(v20);
      std::string::operator=(*(v20 + 64), (a2 + 72));
    }

    v21 = *(a2 + 119);
    if ((v21 & 0x80u) != 0)
    {
      v21 = *(a2 + 104);
    }

    if (v21)
    {
      sub_10039FBF0(*(a3 + 8));
      std::string::operator=(*(*(a3 + 8) + 56), (a2 + 96));
    }

    if (*(a2 + 121) == 1)
    {
      v22 = *(a2 + 120);
      if (v22 <= 3)
      {
        v23 = *(a3 + 8);
        *(v23 + 132) |= 0x10u;
        *(v23 + 128) = v22;
      }
    }
  }

  v24 = *(a1 + 200);
  if (*(a1 + 208) != v24)
  {
    memset(v31, 0, sizeof(v31));
    sub_10013F668(v31);
    memset(v30, 0, sizeof(v30));
    memset(v38, 0, sizeof(v38));
    if (*(a2 + 152) == 1)
    {
      v25 = *(a2 + 128);
      v26 = *(a2 + 136);
      sub_100F11B6C(v33, v24);
      if (v25 != v26)
      {
        do
        {
          if (v34 == *v25)
          {
            goto LABEL_50;
          }

          v25 += 20;
        }

        while (v25 != v26);
        v25 = v26;
      }

LABEL_50:
      if (v37[24] == 1)
      {
        v32 = v37;
        sub_100112120(&v32);
      }

      if (v36 < 0)
      {
        operator delete(__p);
      }

      if (v25 != *(a2 + 136))
      {
        sub_100834780(v38, v25);
      }
    }

    sub_10039EA60(v24, v30, v38, v31);
    sub_1005EE2D4();
  }

  v27 = *(a1 + 232);
  if (v27)
  {
    v28 = *(a3 + 8);
    *(v28 + 132) |= 1u;
    *(v28 + 112) = v27;
  }

  return 1;
}

void sub_10083277C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v4 = sub_1005EE274(v2 - 192);
  *(v2 - 192) = va;
  sub_1005F141C(v4);
  sub_10013F740(va1);
  _Unwind_Resume(a1);
}

BOOL sub_1008327B0(uint64_t a1, uint64_t a2, std::string *this)
{
  v3 = *(a1 + 8);
  if (v3)
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    *v50 = 0u;
    v47 = 0u;
    *v48 = 0u;
    v45 = 0u;
    *v46 = 0u;
    v43 = 0u;
    *v44 = 0u;
    v41 = 0u;
    *v42 = 0u;
    *v40 = 0u;
    v7 = v3;
    v8 = *(v3 + 8);
    if (v8)
    {
      std::string::operator=(&v50[1], v8);
      std::string::operator=(v42, *(*(a1 + 8) + 8));
      v7 = *(a1 + 8);
      if (*(v7 + 132))
      {
        DWORD2(v54) = *(v7 + 112);
      }
    }

    v9 = *(v7 + 88);
    v10 = *(v7 + 96);
    if (v9 != v10)
    {
      v29 = a2;
      do
      {
        v11 = *v9;
        v39 = 0;
        memset(v38, 0, sizeof(v38));
        *v37 = 0u;
        v35 = 0u;
        memset(v36, 0, sizeof(v36));
        *__p = 0u;
        v33 = 0;
        *v30 = 0u;
        v31 = 0u;
        v34 = &v35;
        sub_10039F070(v11, v36, v30);
        v12 = this[5].__r_.__value_.__r.__words[2];
        if (v12 >= this[6].__r_.__value_.__r.__words[0])
        {
          v13 = sub_100833C9C(&this[5].__r_.__value_.__l.__size_, v30);
        }

        else
        {
          sub_100833DD0(&this[5].__r_.__value_.__l.__size_, this[5].__r_.__value_.__r.__words[2], v30);
          v13 = v12 + 80;
          this[5].__r_.__value_.__r.__words[2] = v12 + 80;
        }

        this[5].__r_.__value_.__r.__words[2] = v13;
        v14 = v53;
        if (v53 >= *(&v53 + 1))
        {
          v15 = sub_10032B838(&v52 + 1, v36);
        }

        else
        {
          sub_100F11B6C(v53, v36);
          v15 = v14 + 88;
        }

        *&v53 = v15;
        sub_100111E24(&v34, v35);
        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v31) < 0)
        {
          operator delete(v30[1]);
        }

        if (v39 == 1)
        {
          v30[0] = v38 + 8;
          sub_100112120(v30);
        }

        if (SBYTE7(v38[0]) < 0)
        {
          operator delete(v37[0]);
        }

        ++v9;
      }

      while (v9 != v10);
      v7 = *(a1 + 8);
      a2 = v29;
    }

    v16 = *(v7 + 72);
    if (v16)
    {
      sub_10016C728(v40, v16);
      v7 = *(a1 + 8);
    }

    v17 = *(v7 + 32);
    if (v17)
    {
      sub_10016C728(&v43 + 8, v17);
      v7 = *(a1 + 8);
    }

    v18 = *(v7 + 40);
    if (v18)
    {
      sub_10016C728(&v45 + 8, v18);
      v7 = *(a1 + 8);
    }

    v19 = *(v7 + 132);
    if ((v19 & 2) != 0)
    {
      v20 = *(v7 + 116);
      if (v20 >= 0xA)
      {
        LOBYTE(v20) = 0;
      }

      BYTE8(v47) = v20;
    }

    v21 = *(v7 + 48);
    if (v21)
    {
      std::string::operator=(v48, v21);
      v7 = *(a1 + 8);
      v19 = *(v7 + 132);
    }

    if ((v19 & 4) != 0)
    {
      HIDWORD(v49) = *(v7 + 120);
      BYTE8(v49) = 1;
      v19 = *(v7 + 132);
    }

    if ((v19 & 8) != 0)
    {
      HIDWORD(v50[0]) = *(v7 + 124);
      LOBYTE(v50[0]) = 1;
    }

    v22 = *(v7 + 24);
    if (v22)
    {
      std::string::operator=(this, v22);
      v7 = *(a1 + 8);
    }

    v23 = *(v7 + 16);
    if (v23)
    {
      std::string::operator=(this + 1, v23);
      v7 = *(a1 + 8);
    }

    v24 = *(v7 + 80);
    if (v24)
    {
      std::string::operator=(this + 2, v24);
      v7 = *(a1 + 8);
    }

    v25 = *(v7 + 64);
    if (v25)
    {
      std::string::operator=(this + 3, v25);
      v7 = *(a1 + 8);
    }

    if ((*(v7 + 132) & 0x10) != 0)
    {
      v26 = *(v7 + 128);
      if (v26 <= 3)
      {
        LOWORD(this[5].__r_.__value_.__l.__data_) = v26 | 0x100;
      }
    }

    v27 = *(*(a1 + 8) + 56);
    if (v27)
    {
      std::string::operator=(this + 4, v27);
    }

    sub_100832BD0(a2, v40);
    *&v36[0] = &v52 + 8;
    sub_100112048(v36);
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[1]);
    }

    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }

    if (BYTE8(v45) == 1)
    {
      if (SBYTE7(v47) < 0)
      {
        operator delete(v46[0]);
      }

      BYTE8(v45) = 0;
    }

    if (BYTE8(v43) == 1)
    {
      if (SBYTE7(v45) < 0)
      {
        operator delete(v44[0]);
      }

      BYTE8(v43) = 0;
    }

    if (SBYTE7(v43) < 0)
    {
      operator delete(v42[0]);
    }

    if (LOBYTE(v40[0]) == 1 && SHIBYTE(v41) < 0)
    {
      operator delete(v40[1]);
    }
  }

  return v3 != 0;
}

uint64_t sub_100832BD0(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240) == 1)
  {
    sub_10016E3EC(a1, a2);
    cellplan::RemoteDeviceIdentifiers::operator=();
    if (*(a1 + 191) < 0)
    {
      operator delete(*(a1 + 168));
    }

    v4 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v4;
    *(a2 + 191) = 0;
    *(a2 + 168) = 0;
    *(a1 + 192) = *(a2 + 192);
    sub_100169EC0((a1 + 200));
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    v5 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v5;
  }

  else
  {
    *a1 = 0;
    if (*a2 == 1)
    {
      v6 = *(a2 + 8);
      *(a1 + 24) = *(a2 + 24);
      *(a1 + 8) = v6;
      *(a2 + 16) = 0;
      *(a2 + 24) = 0;
      *(a2 + 8) = 0;
      *a1 = 1;
    }

    sub_10027E51C((a1 + 32), (a2 + 32));
    v7 = *(a2 + 168);
    *(a1 + 184) = *(a2 + 184);
    *(a1 + 168) = v7;
    *(a2 + 176) = 0;
    *(a2 + 184) = 0;
    *(a2 + 168) = 0;
    v8 = *(a2 + 192);
    *(a1 + 208) = 0;
    *(a1 + 216) = 0;
    *(a1 + 192) = v8;
    *(a1 + 200) = 0;
    *(a1 + 200) = *(a2 + 200);
    *(a1 + 216) = *(a2 + 216);
    *(a2 + 200) = 0;
    *(a2 + 208) = 0;
    *(a2 + 216) = 0;
    v9 = *(a2 + 224);
    *(a1 + 232) = *(a2 + 232);
    *(a1 + 224) = v9;
    *(a1 + 240) = 1;
  }

  return a1;
}

void sub_100832D10(_Unwind_Exception *exception_object)
{
  if (*v1 == 1)
  {
    sub_1017628BC(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_100832D34@<X0>(std::string *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  if (result[10].__r_.__value_.__s.__data_[0] == 1)
  {
    v3 = result;
    result = std::string::operator=(a2, result + 7);
    size = v3[8].__r_.__value_.__l.__size_;
    v5 = v3[8].__r_.__value_.__r.__words[2];
    if (size != v5)
    {
      while (1)
      {
        v6 = *(size + 4);
        v7 = (a2 + 24);
        if (v6 == 1)
        {
          goto LABEL_6;
        }

        if (v6 == 2)
        {
          break;
        }

LABEL_7:
        size += 88;
        if (size == v5)
        {
          return result;
        }
      }

      v7 = (a2 + 40);
LABEL_6:
      *v7 = *(size + 16);
      goto LABEL_7;
    }
  }

  return result;
}

void sub_100832DC4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100832DE0(uint64_t a1, uint64_t a2)
{
  sub_1006E1AB8(a2);
  sub_100912EDC(*(a2 + 16));
  sub_10039FB08(*(*(a2 + 16) + 8));
  std::string::operator=(*(*(*(a2 + 16) + 8) + 24), a1);
  sub_10039FB7C(*(*(a2 + 16) + 8));
  std::string::operator=(*(*(*(a2 + 16) + 8) + 32), (a1 + 24));
  sub_10039F9C0(*(*(a2 + 16) + 8));
  std::string::operator=(*(*(*(a2 + 16) + 8) + 40), (a1 + 48));
  sub_10039EFFC(*(*(a2 + 16) + 8));
  std::string::operator=(*(*(*(a2 + 16) + 8) + 8), (a1 + 72));
  sub_10027F75C(*(*(a2 + 16) + 8));
  std::string::operator=(*(*(*(a2 + 16) + 8) + 16), (a1 + 96));
  sub_100912F6C(*(a2 + 16));
  if (*(a1 + 120) == 1)
  {
    sub_10039F9C0(*(*(a2 + 16) + 16));
    if ((*(a1 + 120) & 1) == 0)
    {
      sub_10176111C();
    }

    std::string::operator=(*(*(*(a2 + 16) + 16) + 40), (a1 + 128));
  }

  if (*(a1 + 152) == 1)
  {
    sub_10039FB7C(*(*(a2 + 16) + 16));
    if ((*(a1 + 152) & 1) == 0)
    {
      sub_10176111C();
    }

    std::string::operator=(*(*(*(a2 + 16) + 16) + 32), (a1 + 160));
  }

  v4 = *(a1 + 184);
  if (*(a1 + 192) != v4)
  {
    v5 = v4 + 80;
    *&v12 = 0;
    *v10 = 0u;
    *v11 = 0u;
    *v9 = 0u;
    sub_100AB3038(v9);
    if (*(v5 - 80) != 0)
    {
      sub_1005B4084(v9);
      PB::Data::assign(v10[0], (v5 - 80), (v5 - 64));
    }

    if ((*(v5 + 23) & 0x8000000000000000) != 0)
    {
      if (!*(v5 + 8))
      {
        goto LABEL_15;
      }
    }

    else if (!*(v5 + 23))
    {
LABEL_15:
      v6 = *(v5 + 24);
      BYTE4(v12) |= 1u;
      LODWORD(v12) = v6;
      if (*(v5 - 64) == 1)
      {
        sub_10039FB7C(v9);
        if ((*(v5 - 64) & 1) == 0)
        {
          goto LABEL_28;
        }

        std::string::operator=(v11[0], (v5 - 56));
      }

      if (*(v5 - 32) == 1)
      {
        sub_10039F9C0(v9);
        if (*(v5 - 32) != 1)
        {
          goto LABEL_28;
        }

        std::string::operator=(v11[1], (v5 - 24));
      }

      if (*(v5 + 32) != 1)
      {
        goto LABEL_24;
      }

      sub_10039EFFC(v9);
      if (*(v5 + 32) == 1)
      {
        std::string::operator=(v9[1], (v5 + 40));
LABEL_24:
        sub_100833160();
      }

LABEL_28:
      __assert_rtn("get", "optional.hpp", 1211, "this->is_initialized()");
    }

    sub_10039FB08(v9);
    std::string::operator=(v10[1], v5);
    goto LABEL_15;
  }

  v7 = *(a1 + 208);
  if (v7 != *(a1 + 216))
  {
    v13 = 0;
    *v11 = 0u;
    v12 = 0u;
    *v9 = 0u;
    *v10 = 0u;
    sub_10039D7EC(v9);
    sub_1008332B4(v7, v9);
    sub_100833460();
  }

  return 1;
}

std::string *sub_1008332B4(std::string *result, uint64_t a2)
{
  v3 = result;
  if (*&result->__r_.__value_.__l.__data_ != 0)
  {
    sub_1005B4084(a2);
    result = PB::Data::assign(*(a2 + 16), v3, &v3->__r_.__value_.__s.__data_[16]);
  }

  data = v3[1].__r_.__value_.__s.__data_[15];
  if (data < 0)
  {
    data = v3[1].__r_.__value_.__l.__data_;
  }

  if (data)
  {
    sub_10039FB7C(a2);
    result = std::string::operator=(*(a2 + 32), &v3->__r_.__value_.__r.__words[2]);
  }

  v5 = v3[2].__r_.__value_.__s.__data_[15];
  if (v5 < 0)
  {
    v5 = v3[2].__r_.__value_.__l.__data_;
  }

  if (v5)
  {
    sub_10039FB08(a2);
    result = std::string::operator=(*(a2 + 24), (v3 + 40));
  }

  v6 = v3[2].__r_.__value_.__s.__data_[16];
  v7 = *(a2 + 64);
  *(a2 + 64) = v7 | 1;
  v8 = v3[2].__r_.__value_.__s.__data_[17];
  *(a2 + 64) = v7 | 3;
  *(a2 + 56) = v6;
  *(a2 + 60) = v8;
  size = HIBYTE(v3[4].__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = v3[4].__r_.__value_.__l.__size_;
  }

  if (size)
  {
    sub_10039EFFC(a2);
    result = std::string::operator=(*(a2 + 8), v3 + 4);
  }

  v10 = HIBYTE(v3[5].__r_.__value_.__r.__words[2]);
  if ((v10 & 0x80u) != 0)
  {
    v10 = v3[5].__r_.__value_.__l.__size_;
  }

  if (v10)
  {
    sub_10039FE34(a2);
    result = std::string::operator=(*(a2 + 48), v3 + 5);
  }

  v11 = HIBYTE(v3[6].__r_.__value_.__r.__words[2]);
  if ((v11 & 0x80u) != 0)
  {
    v11 = v3[6].__r_.__value_.__l.__size_;
  }

  if (v11)
  {
    sub_10039F9C0(a2);
    v12 = *(a2 + 40);

    return std::string::operator=(v12, v3 + 6);
  }

  return result;
}

uint64_t sub_1008335B4(uint64_t a1, std::string *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 8);
  if (!v3)
  {
    return 0;
  }

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  *v50 = 0u;
  v51 = 0u;
  *v48 = 0u;
  v49 = 0u;
  *v46 = 0u;
  v47 = 0u;
  *v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  *v43 = 0u;
  memset(v41, 0, sizeof(v41));
  v6 = v3[3];
  if (v6)
  {
    std::string::operator=(v41, v6);
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  v7 = v3[4];
  if (v7)
  {
    std::string::operator=(&v41[24], v7);
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  v8 = v3[5];
  if (v8)
  {
    std::string::operator=(v43, v8);
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  v9 = v3[1];
  if (v9)
  {
    std::string::operator=(&v44[1], v9);
    v2 = *(a1 + 16);
    v3 = *(v2 + 8);
  }

  v10 = v3[2];
  if (v10)
  {
    std::string::operator=(v46, v10);
    v2 = *(a1 + 16);
  }

  v11 = *(v2 + 16);
  if (v11)
  {
    v12 = v11[5];
    if (v12)
    {
      sub_10016C728(&v47 + 8, v12);
      v11 = *(*(a1 + 16) + 16);
    }

    v13 = v11[4];
    if (v13)
    {
      sub_10016C728(&v49 + 8, v13);
      v11 = *(*(a1 + 16) + 16);
    }

    v14 = v11[6];
    v15 = v11[7];
    if (v14 != v15)
    {
      do
      {
        v16 = *v14;
        *__p = 0u;
        v38 = 0u;
        *v35 = 0u;
        *v36 = 0u;
        *v33 = 0u;
        *v34 = 0u;
        *v31 = 0u;
        *v32 = 0u;
        v30 = 0u;
        if (*(v16 + 52))
        {
          LOBYTE(v36[1]) = *(v16 + 48);
        }

        v17 = *(v16 + 24);
        if (v17)
        {
          std::string::operator=(v35, v17);
        }

        v18 = *(v16 + 16);
        if (v18 && v18[1] == 16)
        {
          v30 = **v18;
        }

        v19 = *(v16 + 32);
        if (v19)
        {
          sub_10016C728(v31, v19);
        }

        v20 = *(v16 + 40);
        if (v20)
        {
          sub_10016C728(v33, v20);
        }

        v21 = *(v16 + 8);
        if (v21)
        {
          sub_10016C728(__p, v21);
        }

        v22 = v52;
        if (v52 >= *(&v52 + 1))
        {
          v23 = sub_100833E98(&v51 + 1, &v30);
        }

        else
        {
          sub_100521398(v52, &v30);
          v23 = v22 + 144;
        }

        *&v52 = v23;
        if (LOBYTE(__p[0]) == 1)
        {
          if (SHIBYTE(v38) < 0)
          {
            operator delete(__p[1]);
          }

          LOBYTE(__p[0]) = 0;
        }

        if (SHIBYTE(v36[0]) < 0)
        {
          operator delete(v35[0]);
        }

        if (LOBYTE(v33[0]) == 1)
        {
          if (SHIBYTE(v34[1]) < 0)
          {
            operator delete(v33[1]);
          }

          LOBYTE(v33[0]) = 0;
        }

        if (LOBYTE(v31[0]) == 1 && SHIBYTE(v32[1]) < 0)
        {
          operator delete(v31[1]);
        }

        ++v14;
      }

      while (v14 != v15);
      v11 = *(*(a1 + 16) + 16);
    }

    v24 = v11[1];
    for (i = v11[2]; v24 != i; ++v24)
    {
      v26 = *v24;
      v40 = 0;
      v38 = 0u;
      *v39 = 0u;
      *v36 = 0u;
      *__p = 0u;
      *v34 = 0u;
      *v35 = 0u;
      *v32 = 0u;
      *v33 = 0u;
      v30 = 0u;
      *v31 = 0u;
      sub_100833A54(v26, &v30);
      v27 = *(&v53 + 1);
      if (*(&v53 + 1) >= v54)
      {
        v28 = sub_100834270(&v53, &v30);
      }

      else
      {
        sub_1005211F4(*(&v53 + 1), &v30);
        v28 = v27 + 168;
      }

      *(&v53 + 1) = v28;
      if (SHIBYTE(v40) < 0)
      {
        operator delete(v39[0]);
      }

      if (SHIBYTE(v38) < 0)
      {
        operator delete(__p[1]);
      }

      if (SHIBYTE(__p[0]) < 0)
      {
        operator delete(v36[0]);
      }

      if (SHIBYTE(v35[1]) < 0)
      {
        operator delete(v34[1]);
      }

      if (SHIBYTE(v33[1]) < 0)
      {
        operator delete(v32[1]);
      }

      if (SHIBYTE(v32[0]) < 0)
      {
        operator delete(v31[0]);
      }
    }
  }

  sub_100833B20(a2, v41);
  *&v30 = &v53;
  sub_100522C04(&v30);
  *&v30 = &v51 + 8;
  sub_100522C58(&v30);
  if (BYTE8(v49) == 1)
  {
    if (SBYTE7(v51) < 0)
    {
      operator delete(v50[0]);
    }

    BYTE8(v49) = 0;
  }

  if (BYTE8(v47) == 1)
  {
    if (SBYTE7(v49) < 0)
    {
      operator delete(v48[0]);
    }

    BYTE8(v47) = 0;
  }

  if (SBYTE7(v47) < 0)
  {
    operator delete(v46[0]);
  }

  if (SHIBYTE(v45) < 0)
  {
    operator delete(v44[1]);
  }

  if (SHIBYTE(v44[0]) < 0)
  {
    operator delete(v43[0]);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(*&v41[24]);
  }

  if ((v41[23] & 0x80000000) != 0)
  {
    operator delete(*v41);
  }

  return 1;
}

std::string *sub_100833A54(std::string *result, uint64_t a2)
{
  v3 = result;
  v4 = result->__r_.__value_.__r.__words[2];
  if (v4 && *(v4 + 8) == 16)
  {
    *a2 = **v4;
  }

  size = result[1].__r_.__value_.__l.__size_;
  if (size)
  {
    result = std::string::operator=((a2 + 16), size);
  }

  data = v3[1].__r_.__value_.__l.__data_;
  if (data)
  {
    result = std::string::operator=((a2 + 40), data);
  }

  v7 = v3[2].__r_.__value_.__s.__data_[16];
  if (v7)
  {
    *(a2 + 64) = v3[2].__r_.__value_.__r.__words[1];
    v7 = v3[2].__r_.__value_.__s.__data_[16];
  }

  if ((v7 & 2) != 0)
  {
    *(a2 + 65) = HIDWORD(v3[2].__r_.__value_.__r.__words[1]);
  }

  v8 = v3->__r_.__value_.__l.__size_;
  if (v8)
  {
    result = std::string::operator=((a2 + 96), v8);
  }

  v9 = v3[2].__r_.__value_.__l.__data_;
  if (v9)
  {
    result = std::string::operator=((a2 + 120), v9);
  }

  v10 = v3[1].__r_.__value_.__r.__words[2];
  if (v10)
  {

    return std::string::operator=((a2 + 144), v10);
  }

  return result;
}

std::string *sub_100833B20(std::string *a1, std::string *a2)
{
  if (a1[9].__r_.__value_.__s.__data_[16] == 1)
  {
    sub_100834624(a1, a2);
  }

  else
  {
    sub_1002F3074(a1, a2);
    sub_10052C3E4(a1[5].__r_.__value_.__r.__words, &a2[5]);
    a1[9].__r_.__value_.__s.__data_[16] = 1;
  }

  return a1;
}

BOOL sub_100833B94(os_log_t *a1, uint64_t a2, uint64_t a3, std::string *a4)
{
  if (*a2 == *(a2 + 8))
  {
    return 0;
  }

  memset(v13, 0, sizeof(v13));
  sub_1006E0F18(v13);
  memset(v12, 0, sizeof(v12));
  PB::Reader::Reader(v12, *a2, *(a2 + 8) - *a2);
  if (sub_1006E1534(v13, v12))
  {
    v8 = sub_1008327B0(v13, a3, a4);
  }

  else
  {
    v9 = *a1;
    v8 = 0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#E Invalid Record content", v11, 2u);
      v8 = 0;
    }
  }

  sub_1006E1008(v13);
  return v8;
}

void sub_100833C88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_1006E1008(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100833C9C(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027FAA4(a1, v6);
  }

  v13 = 0;
  v14 = 80 * v2;
  sub_100833DD0(a1, 80 * v2, a2);
  v15 = 80 * v2 + 80;
  v7 = a1[1];
  v8 = 80 * v2 + *a1 - v7;
  sub_10031B1C8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10031B33C(&v13);
  return v12;
}

void sub_100833DBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10031B33C(va);
  _Unwind_Resume(a1);
}

void *sub_100833DD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a2 = *a3;
  v5 = (a2 + 8);
  if (*(a3 + 31) < 0)
  {
    sub_100005F2C(v5, *(a3 + 8), *(a3 + 16));
  }

  else
  {
    v6 = *(a3 + 8);
    *(a2 + 24) = *(a3 + 24);
    *v5 = v6;
  }

  if (*(a3 + 55) < 0)
  {
    sub_100005F2C((a2 + 32), *(a3 + 32), *(a3 + 40));
  }

  else
  {
    v7 = *(a3 + 32);
    *(a2 + 48) = *(a3 + 48);
    *(a2 + 32) = v7;
  }

  return sub_10027FC3C((a2 + 56), a3 + 56);
}

void sub_100833E64(_Unwind_Exception *exception_object)
{
  if (*(v2 + 31) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100833E98(uint64_t *a1, uint64_t a2)
{
  v2 = 0x8E38E38E38E38E39 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x1C71C71C71C71C7)
  {
    sub_1000CE3D4();
  }

  if (0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 4);
  }

  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 4) >= 0xE38E38E38E38E3)
  {
    v6 = 0x1C71C71C71C71C7;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100522680(a1, v6);
  }

  v13 = 0;
  v14 = 144 * v2;
  sub_100521398(144 * v2, a2);
  v15 = 144 * v2 + 144;
  v7 = a1[1];
  v8 = 144 * v2 + *a1 - v7;
  sub_100833FE0(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1008341F0(&v13);
  return v12;
}

void sub_100833FCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1008341F0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100833FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  v10 = 0;
  if (a2 == a3)
  {
    LOBYTE(v10) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      sub_1008340A4(a4, v7);
      v7 += 144;
      a4 = v12 + 144;
      v12 += 144;
    }

    while (v7 != a3);
    LOBYTE(v10) = 1;
    while (v5 != a3)
    {
      sub_100834160(a1, v5);
      v5 += 144;
    }
  }

  return sub_100522438(v9);
}

__n128 sub_1008340A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 16) = 0;
  if (*(a2 + 16) == 1)
  {
    v2 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v2;
    *(a2 + 32) = 0;
    *(a2 + 40) = 0;
    *(a2 + 24) = 0;
    *(a1 + 16) = 1;
  }

  *(a1 + 48) = 0;
  if (*(a2 + 48) == 1)
  {
    v3 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v3;
    *(a2 + 64) = 0;
    *(a2 + 72) = 0;
    *(a2 + 56) = 0;
    *(a1 + 48) = 1;
  }

  result = *(a2 + 80);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 80) = result;
  *(a2 + 88) = 0;
  *(a2 + 96) = 0;
  *(a2 + 80) = 0;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = 0;
  if (*(a2 + 112) == 1)
  {
    result = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 120) = result;
    *(a2 + 128) = 0;
    *(a2 + 136) = 0;
    *(a2 + 120) = 0;
    *(a1 + 112) = 1;
  }

  return result;
}

void sub_100834160(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 112) == 1)
  {
    if (*(a2 + 143) < 0)
    {
      operator delete(*(a2 + 120));
    }

    *(a2 + 112) = 0;
  }

  if (*(a2 + 103) < 0)
  {
    operator delete(*(a2 + 80));
  }

  if (*(a2 + 48) == 1)
  {
    if (*(a2 + 79) < 0)
    {
      operator delete(*(a2 + 56));
    }

    *(a2 + 48) = 0;
  }

  if (*(a2 + 16) == 1)
  {
    if (*(a2 + 47) < 0)
    {
      operator delete(*(a2 + 24));
    }

    *(a2 + 16) = 0;
  }
}

uint64_t sub_1008341F0(uint64_t a1)
{
  sub_100834228(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100834228(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 144;
    sub_100834160(v5, v4 - 144);
  }
}

uint64_t sub_100834270(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCF3CF3CF3CF3CF3DLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0x186186186186186)
  {
    sub_1000CE3D4();
  }

  if (0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x9E79E79E79E79E7ALL * ((a1[2] - *a1) >> 3);
  }

  if (0xCF3CF3CF3CF3CF3DLL * ((a1[2] - *a1) >> 3) >= 0xC30C30C30C30C3)
  {
    v6 = 0x186186186186186;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100522BA8(a1, v6);
  }

  v13 = 0;
  v14 = 168 * v2;
  sub_1005211F4(168 * v2, a2);
  v15 = 168 * v2 + 168;
  v7 = a1[1];
  v8 = 168 * v2 + *a1 - v7;
  sub_1008343B8(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1008345A4(&v13);
  return v12;
}

void sub_1008343A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1008345A4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1008343B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  v16 = 0;
  if (a2 == a3)
  {
    LOBYTE(v16) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 16) = v8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      *(a4 + 64) = *(v7 + 64);
      v10 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v10;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      *(v7 + 72) = 0;
      v11 = *(v7 + 96);
      *(a4 + 112) = *(v7 + 112);
      *(a4 + 96) = v11;
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v7 + 96) = 0;
      v12 = *(v7 + 120);
      *(a4 + 136) = *(v7 + 136);
      *(a4 + 120) = v12;
      *(v7 + 128) = 0;
      *(v7 + 136) = 0;
      *(v7 + 120) = 0;
      v13 = *(v7 + 144);
      *(a4 + 160) = *(v7 + 160);
      *(a4 + 144) = v13;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      *(v7 + 160) = 0;
      v7 += 168;
      a4 += 168;
    }

    while (v7 != a3);
    v18 = a4;
    LOBYTE(v16) = 1;
    while (v5 != a3)
    {
      sub_10083450C(a1, v5);
      v5 += 168;
    }
  }

  return sub_100522968(v15);
}

void sub_10083450C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 167) < 0)
  {
    operator delete(*(a2 + 144));
  }

  if (*(a2 + 143) < 0)
  {
    operator delete(*(a2 + 120));
  }

  if (*(a2 + 119) < 0)
  {
    operator delete(*(a2 + 96));
  }

  if (*(a2 + 95) < 0)
  {
    operator delete(*(a2 + 72));
  }

  if (*(a2 + 63) < 0)
  {
    operator delete(*(a2 + 40));
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 16);

    operator delete(v3);
  }
}

uint64_t sub_1008345A4(uint64_t a1)
{
  sub_1008345DC(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1008345DC(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 168;
    sub_10083450C(v5, v4 - 168);
  }
}

std::string *sub_100834624(std::string *a1, const std::string *a2)
{
  std::string::operator=(a1, a2);
  std::string::operator=(a1 + 1, a2 + 1);
  std::string::operator=(a1 + 2, a2 + 2);
  std::string::operator=(a1 + 3, a2 + 3);
  std::string::operator=(a1 + 4, a2 + 4);
  sub_10016E810(&a1[5], &a2[5]);
  sub_10016E810(&a1[6].__r_.__value_.__l.__size_, &a2[6].__r_.__value_.__l.__size_);
  if (a1 != a2)
  {
    sub_1005221AC(&a1[7].__r_.__value_.__r.__words[2], a2[7].__r_.__value_.__r.__words[2], a2[8].__r_.__value_.__l.__data_, 0x8E38E38E38E38E39 * ((a2[8].__r_.__value_.__r.__words[0] - a2[7].__r_.__value_.__r.__words[2]) >> 4));
    sub_1005226DC(&a1[8].__r_.__value_.__r.__words[2], a2[8].__r_.__value_.__r.__words[2], a2[9].__r_.__value_.__l.__data_, 0xCF3CF3CF3CF3CF3DLL * ((a2[9].__r_.__value_.__r.__words[0] - a2[8].__r_.__value_.__r.__words[2]) >> 3));
  }

  return a1;
}

uint64_t sub_1008346F0(uint64_t a1)
{
  v3 = (a1 + 208);
  sub_100522C04(&v3);
  v3 = (a1 + 184);
  sub_100522C58(&v3);
  if (*(a1 + 152) == 1)
  {
    if (*(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    *(a1 + 152) = 0;
  }

  if (*(a1 + 120) == 1)
  {
    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    *(a1 + 120) = 0;
  }

  return sub_10016C520(a1);
}

uint64_t **sub_100834780(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = (a1 + 8);
  if (v5 == 1)
  {

    return sub_100316210(v4, a2);
  }

  else
  {
    *(a1 + 2) = *a2;
    if (*(a2 + 31) < 0)
    {
      sub_100005F2C(a1 + 16, *(a2 + 8), *(a2 + 16));
    }

    else
    {
      v7 = *(a2 + 8);
      *(a1 + 4) = *(a2 + 24);
      *(a1 + 1) = v7;
    }

    if (*(a2 + 55) < 0)
    {
      sub_100005F2C(a1 + 40, *(a2 + 32), *(a2 + 40));
    }

    else
    {
      v8 = *(a2 + 32);
      *(a1 + 7) = *(a2 + 48);
      *(a1 + 40) = v8;
    }

    result = sub_10027FC3C(a1 + 8, a2 + 56);
    *a1 = 1;
  }

  return result;
}

void sub_10083483C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void MMSServerConnection::MMSServerConnection(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = off_101E897F8;
  a1[3] = *a5;
  v5 = a5[1];
  a1[4] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  a1[5] = *a3;
  v6 = a3[1];
  a1[6] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  a1[7] = 0;
  sub_100837A7C();
}

void MMSServerConnection::~MMSServerConnection(MMSServerConnection *this)
{
  *this = off_101E897F8;
  v2 = *(this + 32);
  if (v2)
  {
    dispatch_release(v2);
  }

  sub_1004D2BB8(this + 224);
  if (*(this + 223) < 0)
  {
    operator delete(*(this + 25));
  }

  if (*(this + 199) < 0)
  {
    operator delete(*(this + 22));
  }

  v8 = (this + 136);
  sub_1000087B4(&v8);
  v3 = *(this + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(this + 6);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(this + 4);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(this + 2);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  MMSServerConnectionInterface::~MMSServerConnectionInterface(this);
}

{
  MMSServerConnection::~MMSServerConnection(this);

  operator delete();
}

void MMSServerConnection::_createHeaders(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  a3[2] = 0;
  a3[1] = 0;
  *a3 = a3 + 1;
  if (a2 == 3)
  {
    sub_10000501C(&__p, "Content-Type");
    __str.__r_.__value_.__r.__words[0] = &__p;
    v5 = sub_100416DA4(a3, &__p);
    sub_1000167D4((v5 + 56), "application/vnd.wap.mms-message", 0x1FuLL);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  memset(&__str, 0, sizeof(__str));
  v6 = (*(**(a1 + 24) + 72))(*(a1 + 24));
  v7 = *(v6 + 23);
  if ((v7 & 0x80u) != 0)
  {
    v7 = *(v6 + 8);
  }

  if (v7)
  {
    v8 = (*(**(a1 + 24) + 72))(*(a1 + 24));
    std::string::operator=(&__str, v8);
  }

  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (!size)
  {
    if ((atomic_load_explicit(&qword_101FBACE8, memory_order_acquire) & 1) == 0)
    {
      sub_101780E58();
    }

    __p.__r_.__value_.__r.__words[0] = _NSConcreteStackBlock;
    __p.__r_.__value_.__l.__size_ = 0x40000000;
    __p.__r_.__value_.__r.__words[2] = sub_1008374EC;
    v50 = &unk_101E89950;
    v51 = &qword_101FBACF0;
    if (qword_101FBACE0 != -1)
    {
      dispatch_once(&qword_101FBACE0, &__p);
    }

    if (byte_101FBAD07 >= 0)
    {
      v10 = &qword_101FBACF0;
    }

    else
    {
      v10 = qword_101FBACF0;
    }

    sub_100016890(&__str, v10);
  }

  memset(&__p, 0, sizeof(__p));
  v11 = (*(**(a1 + 24) + 56))(*(a1 + 24));
  if (*(v11 + 23) < 0)
  {
    sub_100005F2C(&__p, *v11, *(v11 + 8));
  }

  else
  {
    v12 = *v11;
    __p.__r_.__value_.__r.__words[2] = *(v11 + 16);
    *&__p.__r_.__value_.__l.__data_ = v12;
  }

  v13 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v13 = __p.__r_.__value_.__l.__size_;
  }

  if (v13)
  {
    sub_10000501C(&buf, "X-Wap-Profile");
    *v53 = &buf;
    v14 = sub_100416DA4(a3, &buf);
    std::string::operator=((v14 + 56), &__p);
  }

  else
  {
    v15 = **(a1 + 112);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
      *(buf.__r_.__value_.__r.__words + 4) = "http://iphonemms.apple.com/iphone/uaprof-2MB.rdf";
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I MMS UAProf = %s", &buf, 0xCu);
    }

    sub_10000501C(&buf, "X-Wap-Profile");
    *v53 = &buf;
    v16 = sub_100416DA4(a3, &buf);
    sub_1000167D4((v16 + 56), "http://iphonemms.apple.com/iphone/uaprof-2MB.rdf", 0x30uLL);
  }

  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_10000501C(&buf, "*");
  sub_10000501C(v53, "Accept-Charset");
  v52 = v53;
  v17 = sub_100416DA4(a3, v53);
  v18 = v17;
  if (*(v17 + 79) < 0)
  {
    operator delete(*(v17 + 56));
  }

  *(v18 + 56) = buf;
  *(&buf.__r_.__value_.__s + 23) = 0;
  buf.__r_.__value_.__s.__data_[0] = 0;
  if (v56 < 0)
  {
    operator delete(*v53);
    if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(buf.__r_.__value_.__l.__data_);
    }
  }
    }

    return 1;
  }

  result = sub_1013D8420(a2, "Content-Type");
  if (result)
  {
    v5 = result;
    result = (*(*result + 32))(result, a1);
    if (result)
    {
      result = (*(*v5 + 40))(v5, a1);
      if (result)
      {
        if (sub_100E5F4D0(v5[3]))
        {
          v6 = sub_100121BC8(a2);
          std::string::push_back((a1 + 8), v6);
          if (v6)
          {
            v7 = 0;
            v8 = 0;
            do
            {
              v9 = sub_100121BD8(a2, v7);
              result = sub_1011365F4(a1, v9);
              if ((result & 1) == 0)
              {
                break;
              }

              v7 = ++v8;
            }

            while (v6 > v8);
            return result;
          }
        }

        else
        {
          v10 = sub_100121BD8(a2, 0);
          std::string::append((a1 + 8), *(v10 + 72), *(v10 + 96));
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_101136D4C(uint64_t a1, uint64_t a2)
{
  if (!sub_100121894(a2) || !sub_1011360D0(a1, a2))
  {
    return 0;
  }

  return sub_101136B80(a1, a2);
}

uint64_t sub_101136DB4(uint64_t a1, unsigned int a2, char *a3, char *a4, char *a5, char *a6)
{
  if (a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = "";
  }

  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = "";
  }

  if (a5)
  {
    v9 = a5;
  }

  else
  {
    v9 = "";
  }

  if (a6)
  {
    v10 = a6;
  }

  else
  {
    v10 = "";
  }

  sub_101135D4C(a1, a2);
  sub_101135C3C(a1, v8);
  sub_101135C3C(a1, v7);
  sub_101135C3C(a1, v9);
  sub_101135C3C(a1, v10);
  return 1;
}

void sub_101136E44(uint64_t a1, const char *a2)
{
  v3 = *(a1 + 31);
  if ((v3 & 0x8000000000000000) != 0)
  {
    v4 = *(a1 + 8);
    v3 = *(a1 + 16);
  }

  else
  {
    v4 = (a1 + 8);
  }

  v6 = 0;
  LOBYTE(__p) = 0;
  sub_101569C5C(a2, v4, v3, &__p);
  if (v6 < 0)
  {
    operator delete(__p);
  }
}

void sub_101136EA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101136F24(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_101136F40(BlastDoorClientFactoryInterface *a1)
{
  BlastDoorClientFactoryInterface::~BlastDoorClientFactoryInterface(a1);

  operator delete();
}

void sub_101136F98(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F10DF8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1011380EC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    sub_100004A34(v2);
    if (!v1)
    {
LABEL_3:
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_5;
    }
  }

  else if (!v1)
  {
    goto LABEL_3;
  }

  dispatch_release(v1);
  if (v3)
  {
LABEL_4:
    operator delete();
  }

LABEL_5:
  _Unwind_Resume(exception_object);
}

uint64_t sub_10113812C(uint64_t a1, void *a2, NSObject **a3, int a4, void *a5, const void *a6)
{
  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "vinyl.receipt");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  v12 = *a3;
  *(a1 + 56) = *a3;
  if (v12)
  {
    dispatch_retain(v12);
  }

  *(a1 + 64) = 0;
  ctu::OsLogLogger::OsLogLogger(v18, &v17);
  ctu::OsLogLogger::OsLogLogger((a1 + 72), v18);
  ctu::OsLogLogger::~OsLogLogger(v18);
  ctu::OsLogContext::~OsLogContext(&v17);
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  *a1 = off_101F10E48;
  v13 = a2[1];
  *(a1 + 80) = *a2;
  *(a1 + 88) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 96) = 0uLL;
  *(a1 + 112) = 0uLL;
  if (a6)
  {
    v14 = _Block_copy(a6);
  }

  else
  {
    v14 = 0;
  }

  *(a1 + 128) = v14;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0x10000;
  *(a1 + 180) = a4;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 184) = 0;
  v15 = a5[1];
  *(a1 + 208) = *a5;
  *(a1 + 216) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  return a1;
}

void sub_101138290(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  sub_1000C0544(v2);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1011382BC(uint64_t a1)
{
  *a1 = off_101F10E48;
  v2 = *(a1 + 360);
  if (v2)
  {
    sub_100004A34(v2);
  }

  if (*(a1 + 351) < 0)
  {
    operator delete(*(a1 + 328));
  }

  if (*(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 303) < 0)
  {
    operator delete(*(a1 + 280));
  }

  v3 = *(a1 + 256);
  if (v3)
  {
    *(a1 + 264) = v3;
    operator delete(v3);
  }

  v10 = (a1 + 224);
  sub_10113A858(&v10);
  v4 = *(a1 + 216);
  if (v4)
  {
    sub_100004A34(v4);
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  v5 = *(a1 + 128);
  if (v5)
  {
    _Block_release(v5);
  }

  v6 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v6)
  {
    sub_1000DF0B0(a1 + 120, v6);
  }

  sub_1011387BC((a1 + 112), 0);
  v7 = *(a1 + 104);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 88);
  if (v8)
  {
    sub_100004A34(v8);
  }

  sub_10172A46C(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 72));
  sub_1000C0544((a1 + 40));
  return a1;
}

void sub_1011383F0(uint64_t a1)
{
  sub_1011382BC(a1);

  operator delete();
}

uint64_t sub_101138428(uint64_t result, uint64_t *a2, uint64_t a3)
{
  if (!*(result + 96))
  {
    v3 = result;
    if ((*(result + 179) & 1) == 0)
    {
      v6 = *(result + 72);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        sCardSerialNumberAsString();
        v7 = v15 >= 0 ? __p : __p[0];
        *buf = 136315138;
        v17 = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#N Starting Vinyl receipts procedure for %s", buf, 0xCu);
        if (SHIBYTE(v15) < 0)
        {
          operator delete(__p[0]);
        }
      }

      v9 = *a2;
      v8 = a2[1];
      if (v8)
      {
        atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(v3 + 104);
      *(v3 + 96) = v9;
      *(v3 + 104) = v8;
      if (v10)
      {
        sub_100004A34(v10);
      }

      *(v3 + 160) = *(a3 + 16);
      if (*(a3 + 80) == 1)
      {
        v11 = *(a3 + 56);
        v12 = *(a3 + 64);
        if (v11 != v12)
        {
          while ((*(v11 + 89) & 1) == 0)
          {
            v11 += 216;
            if (v11 == v12)
            {
              goto LABEL_20;
            }
          }
        }

        if (v11 != v12)
        {
          std::string::operator=((v3 + 184), (v11 + 16));
        }
      }

LABEL_20:
      (*(**(v3 + 208) + 40))(&v13);
      sub_10172A61C(v3, &v13);
      sub_100010250(&v13);
      std::operator+<char>();
      if (*(v3 + 31) < 0)
      {
        operator delete(*(v3 + 8));
      }

      *(v3 + 8) = *__p;
      *(v3 + 24) = v15;
      operator new();
    }
  }

  return result;
}

void sub_101138740()
{
  (*(*v2 + 8))(v2);
  std::__shared_weak_count::__release_weak(v1);
  v3 = *(v0 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  std::__shared_weak_count::__release_weak(v1);
  operator delete();
}

uint64_t *sub_1011387BC(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000C030C((v2 + 32));
    v3 = *(v2 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

void sub_101138828()
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Pause isnt supported on receipts operations!");
}

void sub_101138894(uint64_t a1)
{
  if (*(a1 + 179))
  {
    v2 = "done";
  }

  else if (*(a1 + 178))
  {
    v2 = "paused";
  }

  else
  {
    v2 = "running";
  }

  v3 = *(a1 + 72);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 176);
    v5 = 0xCCCCCCCCCCCCCCCDLL * ((*(a1 + 232) - *(a1 + 224)) >> 4);
    v6 = *(a1 + 264) - *(a1 + 256);
    v7 = 136315906;
    v8 = v2;
    v9 = 1024;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2048;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I VinylReceiptsOperation: {\n  fRunning = %s (retries used=%d)\n  fReceiptsInfo = %lu receipts\n  fReceiptData = %lu bytes\n}", &v7, 0x26u);
  }
}

void sub_1011389AC(uint64_t a1, const char *a2)
{
  v5 = (a1 + 120);
  v4 = *(a1 + 120);
  if (v4)
  {
    goto LABEL_7;
  }

  sub_1000CE0A8(&v8);
  v4 = v8;
  v8 = 0;
  v6 = *(a1 + 120);
  *(a1 + 120) = v4;
  if (v6)
  {
    sub_1000DF0B0(v5, v6);
    v7 = v8;
    v8 = 0;
    if (v7)
    {
      sub_1000DF0B0(&v8, v7);
    }

    v4 = *v5;
  }

  if (v4)
  {
LABEL_7:
    sub_1009A2010(v4, a2);
  }
}

const void **sub_101138A48(uint64_t a1)
{
  if (*(a1 + 303) < 0)
  {
    **(a1 + 280) = 0;
    *(a1 + 288) = 0;
  }

  else
  {
    *(a1 + 280) = 0;
    *(a1 + 303) = 0;
  }

  *(a1 + 264) = *(a1 + 256);
  *(a1 + 248) = 0;
  if (*(a1 + 327) < 0)
  {
    **(a1 + 304) = 0;
    *(a1 + 312) = 0;
  }

  else
  {
    *(a1 + 304) = 0;
    *(a1 + 327) = 0;
  }

  if (*(a1 + 351) < 0)
  {
    **(a1 + 328) = 0;
    *(a1 + 336) = 0;
  }

  else
  {
    *(a1 + 328) = 0;
    *(a1 + 351) = 0;
  }

  sub_101138B08((a1 + 224));
  v2 = *(a1 + 360);
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 32);
  *(a1 + 32) = 0;
  v5 = v3;
  return sub_100010250(&v5);
}

void sub_101138B08(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    do
    {
      if (*(v3 - 9) < 0)
      {
        operator delete(*(v3 - 32));
      }

      if (*(v3 - 33) < 0)
      {
        operator delete(*(v3 - 56));
      }

      v4 = v3 - 80;
      v5 = *(v3 - 80);
      if (v5)
      {
        *(v3 - 72) = v5;
        operator delete(v5);
      }

      v3 -= 80;
    }

    while (v4 != v2);
  }

  a1[1] = v2;
}

uint64_t sub_101138B80(uint64_t result)
{
  if ((*(result + 179) & 1) == 0)
  {
    v1 = result;
    v2 = *(result + 72);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Cancelling receipts procedure", buf, 2u);
    }

    v3 = *(v1 + 112);
    if (v3)
    {
      v4[0] = 0;
      v5 = 0;
      return sub_101148324(v3, v4, 1);
    }

    else
    {
      result = sub_101138C24(v1, 1);
      *(v1 + 178) = 0;
    }
  }

  return result;
}

uint64_t sub_101138C24(uint64_t result, signed int a2)
{
  if (*(result + 179))
  {
    return result;
  }

  v3 = result;
  sub_100F6D9C4(*(result + 180), a2);
  *(v3 + 179) = 1;
  if (a2 > 2)
  {
    if ((a2 - 3) >= 7)
    {
      if (a2 == 10)
      {
        v4 = *(v3 + 72);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v11 = 0;
          v5 = "#I [X] Vinyl receipts operation complete: success!";
          v6 = &v11;
          goto LABEL_6;
        }
      }

      goto LABEL_7;
    }

    goto LABEL_4;
  }

  switch(a2)
  {
    case 0:
LABEL_4:
      v4 = *(v3 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 0;
        v5 = "#I [X] Vinyl receipts operation complete: error=failed";
        v6 = &v8;
LABEL_6:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
        break;
      }

      break;
    case 1:
      v4 = *(v3 + 72);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        break;
      }

      v9 = 0;
      v5 = "#I [X] Vinyl receipts operation complete: error=cancelled";
      v6 = &v9;
      goto LABEL_6;
    case 2:
      v4 = *(v3 + 72);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 0;
        v5 = "#I [X] Vinyl receipts operation complete: error=rejected";
        v6 = &v10;
        goto LABEL_6;
      }

      break;
  }

LABEL_7:
  (*(*(v3 + 128) + 16))(*(v3 + 128));
  v7 = *(v3 + 128);
  *(v3 + 128) = 0;
  if (v7)
  {
    _Block_release(v7);
  }

  return (*(*v3 + 88))(v3);
}