unsigned __int8 *sub_1000D56A4(unsigned __int8 *result, unsigned int *a2)
{
  v2 = result;
  v3 = *result;
  if (v3 > 5)
  {
    if (v3 == 7)
    {
      v4 = *(result + 1);
      goto LABEL_10;
    }

    if (v3 == 6)
    {
      goto LABEL_4;
    }

LABEL_7:
    exception = __cxa_allocate_exception(0x20uLL);
    v6 = sub_1000C3984(v2);
    sub_100007ECC(&v9, v6);
    v7 = std::string::insert(&v9, 0, "type must be number, but is ");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    v10 = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(302, &v10, exception);
  }

  if (v3 == 4)
  {
    v4 = result[8];
    goto LABEL_10;
  }

  if (v3 != 5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = *(result + 2);
LABEL_10:
  *a2 = v4;
  return result;
}

void sub_1000D57A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1000D5804(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  if (v3 != v4)
  {
    v7 = v3 == 5 && v4 == 7;
    if (v7)
    {
      v12 = *(a1 + 1);
    }

    else
    {
      if (v3 == 7 && v4 == 5)
      {
        v10 = *(a1 + 1);
        v11 = a2[1];
        return v10 == v11;
      }

      if (v3 != 6 || v4 != 7)
      {
        if (v3 != 7 || v4 != 6)
        {
          if (v3 == 6 && v4 == 5)
          {
            return *(a1 + 1) == a2[1];
          }

          result = 0;
          if (v3 == 5 && v4 == 6)
          {
            return *(a1 + 1) == a2[1];
          }

          return result;
        }

        v10 = *(a1 + 1);
        v11 = a2[1];
        return v10 == v11;
      }

      v12 = *(a1 + 1);
    }

    return *(a2 + 1) == v12;
  }

  if (*a1 > 3u)
  {
    if (*a1 <= 5u)
    {
      if (v3 == 4)
      {
        return a1[8] == *(a2 + 8);
      }
    }

    else if (v3 != 6)
    {
      if (v3 != 7)
      {
        if (v3 == 8)
        {
          v5 = a2[1];
          v44[0] = *(a1 + 1);
          v44[1] = v44[0] + 24;
          v44[2] = v44[0] + 25;
          v43[0] = v5;
          v43[1] = v5 + 24;
          v43[2] = v5 + 25;
          return sub_1000D5B64(&v45, v44, v43);
        }

        return 0;
      }

      v10 = *(a1 + 1);
      v11 = *(a2 + 1);
      return v10 == v11;
    }

    return *(a1 + 1) == a2[1];
  }

  if (*a1 <= 1u)
  {
    if (!*a1)
    {
      return 1;
    }

    v14 = *(a1 + 1);
    v15 = a2[1];
    if (v14[2] == v15[2])
    {
      v18 = *v14;
      v16 = v14 + 1;
      v17 = v18;
      if (v18 != v16)
      {
        v19 = *v15;
        while (1)
        {
          v20 = *(v17 + 55);
          if (v20 >= 0)
          {
            v21 = *(v17 + 55);
          }

          else
          {
            v21 = v17[5];
          }

          v22 = *(v19 + 55);
          v23 = v22;
          if ((v22 & 0x80u) != 0)
          {
            v22 = v19[5];
          }

          if (v21 != v22)
          {
            break;
          }

          v24 = v20 >= 0 ? v17 + 4 : v17[4];
          v25 = v23 >= 0 ? v19 + 4 : v19[4];
          if (memcmp(v24, v25, v21))
          {
            break;
          }

          result = sub_1000D5804(v17 + 7, v19 + 7);
          if (result)
          {
            v26 = v17[1];
            v27 = v17;
            if (v26)
            {
              do
              {
                v17 = v26;
                v26 = *v26;
              }

              while (v26);
            }

            else
            {
              do
              {
                v17 = v27[2];
                v7 = *v17 == v27;
                v27 = v17;
              }

              while (!v7);
            }

            v28 = v19[1];
            if (v28)
            {
              do
              {
                v29 = v28;
                v28 = *v28;
              }

              while (v28);
            }

            else
            {
              do
              {
                v29 = v19[2];
                v7 = *v29 == v19;
                v19 = v29;
              }

              while (!v7);
            }

            result = 1;
            v19 = v29;
            if (v17 != v16)
            {
              continue;
            }
          }

          return result;
        }

        return 0;
      }

      return 1;
    }

    return 0;
  }

  if (v3 != 2)
  {
    v30 = *(a1 + 1);
    v31 = a2[1];
    v32 = *(v30 + 23);
    if (v32 >= 0)
    {
      v33 = *(v30 + 23);
    }

    else
    {
      v33 = *(v30 + 8);
    }

    v34 = *(v31 + 23);
    v35 = v34;
    if ((v34 & 0x80u) != 0)
    {
      v34 = *(v31 + 8);
    }

    if (v33 == v34)
    {
      if (v32 >= 0)
      {
        v36 = *(a1 + 1);
      }

      else
      {
        v36 = *v30;
      }

      if (v35 >= 0)
      {
        v37 = a2[1];
      }

      else
      {
        v37 = *v31;
      }

      return memcmp(v36, v37, v33) == 0;
    }

    return 0;
  }

  v38 = *(a1 + 1);
  v39 = a2[1];
  v40 = *v38;
  v41 = v38[1];
  v42 = *v39;
  if (v41 - *v38 != v39[1] - *v39)
  {
    return 0;
  }

  if (v40 == v41)
  {
    return 1;
  }

  do
  {
    result = sub_1000D5804(v40, v42);
    if (!result)
    {
      break;
    }

    v40 += 16;
    v42 += 16;
  }

  while (v40 != v41);
  return result;
}

BOOL sub_1000D5B64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = **a2;
  v7 = *(*a2 + 8) - v6;
  return v7 == *(v5 + 8) - *v5 && !memcmp(v6, *v5, v7) && **(a2 + 8) == *a3[1] && **(a2 + 16) == *a3[2];
}

uint64_t sub_1000D5C44(uint64_t a1, std::string::value_type *__s)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    v6 = std::string::compare((v3 + 32), __s);
    if (v6 >= 0)
    {
      v5 = v3;
    }

    v3 = *(v3 + ((v6 >> 28) & 8));
  }

  while (v3);
  if (v5 == v2 || std::string::compare((v5 + 32), __s) >= 1)
  {
    return v2;
  }

  return v5;
}

void sub_1000D5CC4(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  sub_1000D5D14(a1, a2);
}

void sub_1000D5CFC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D551C(va);
  _Unwind_Resume(a1);
}

void sub_1000D5D14(uint64_t a1, uint64_t a2)
{
  if (*a1 != 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    v9 = sub_1000C3984(a1);
    sub_100007ECC(&v12, v9);
    v10 = std::string::insert(&v12, 0, "type must be array, but is ");
    v11 = *&v10->__r_.__value_.__l.__data_;
    v14 = v10->__r_.__value_.__r.__words[2];
    v13 = v11;
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    sub_1000C3840(302, &v13, exception);
  }

  v3 = *(a1 + 8);
  if (v3 != a2)
  {
    v4 = v3[1];
    v5 = &v4[-*v3] >> 4;
    v7 = *v3;

    sub_1000D5E7C(a2, v7, v4, v5);
  }
}

void sub_1000D5E1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

void sub_1000D5E7C(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (*(a1 + 16) - *a1) >> 4)
  {
    sub_1000D5FC4(a1);
    if (!(a4 >> 60))
    {
      v9 = *(a1 + 16) - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      sub_1000D5454(a1, v11);
    }

    sub_100033FD0();
  }

  v12 = *(a1 + 8) - v8;
  if (a4 <= v12 >> 4)
  {
    sub_1000D6038(&v19, a2, a3, v8);
    v14 = v13;
    v15 = *(a1 + 8);
    if (v15 != v13)
    {
      v16 = v15 - 1;
      do
      {
        v17 = v16 - 1;
        sub_1000D3F90(v16, *(v16 - 8));
        v16 -= 2;
      }

      while (v17 != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_1000D6038(&v18, a2, &a2[v12], v8);
    *(a1 + 8) = sub_1000D5490(a1, &a2[v12], a3, *(a1 + 8));
  }
}

void sub_1000D5FC4(uint64_t **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      v5 = v3 - 1;
      do
      {
        v6 = v5 - 1;
        sub_1000D3F90(v5, *(v5 - 8));
        v5 -= 2;
      }

      while (v6 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

unsigned __int8 *sub_1000D6038(uint64_t a1, unsigned __int8 *a2, unsigned __int8 *a3, unsigned __int8 *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      sub_1000D4E30(v10, v5);
      v7 = *a4;
      *a4 = v10[0];
      v10[0] = v7;
      v8 = *(a4 + 1);
      *(a4 + 1) = v11;
      v11 = v8;
      sub_1000D3F90(&v11, v7);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_1000D6144(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000D6218);
  __cxa_rethrow();
}

void sub_1000D6184(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000D61D8(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000D6218(uint64_t result)
{
  if (result)
  {
    sub_1000D07BC(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1000D6268(uint64_t result, uint64_t a2)
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

void sub_1000D6284(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000D6294(void *a1)
{
  *a1 = off_1002AFD80;
  v2 = a1[2];
  if (v2)
  {
    sub_100008350(v2);
  }

  return a1;
}

void sub_1000D62E0(void *a1)
{
  *a1 = off_1002AFD80;
  v1 = a1[2];
  if (v1)
  {
    sub_100008350(v1);
  }

  operator delete();
}

uint64_t sub_1000D635C@<X0>(void *a1@<X8>)
{
  v2 = 0;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_100033F5C(a1, &v2, &vars0, 1);
}

uint64_t **sub_1000D63D0(uint64_t **result, unsigned __int8 *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    sub_1000D3F90(v2 + 1, *v2);

    operator delete();
  }

  return result;
}

void sub_1000D6434(uint64_t a1, NSObject **a2)
{
  v2 = *(a1 + 32);
  group = *a2;
  *a2 = 0;
  (*(v2 + 16))();
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }
}

void sub_1000D6490(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_group_t group)
{
  if (group)
  {
    dispatch_group_leave(group);
    dispatch_release(group);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000D64B4(uint64_t result, uint64_t a2)
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

void sub_1000D64D0(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000D64E0(uint64_t *a1)
{
  v5 = a1;
  v1 = *a1;
  v2 = *(**a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#I Shutting down WISSatelliteCellClassifierController", buf, 2u);
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

uint64_t sub_1000D65F4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_1002AFE10;
  a2[1] = v2;
  return result;
}

void sub_1000D6620(uint64_t a1, void **a2)
{
  v3 = *a2;
  *a2 = xpc_null_create();
  v4 = *(a1 + 8);
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    xpc_null_create();
  }

  sub_1000081C8(&v5, v4);
  operator new();
}

uint64_t sub_1000D675C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1000D67A8(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v3 = *v1;
  v2 = v1[1];
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  sub_1000D1814(v3, &object);
  xpc_release(object);
  sub_1000D6844(&v6);
  return sub_1000082FC(&v5);
}

void sub_1000D6818(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, xpc_object_t object)
{
  xpc_release(object);
  sub_1000D6844(&a11);
  sub_1000082FC(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000D6844(uint64_t *result)
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

uint64_t sub_1000D689C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  sub_1000D6D8C(v9, a3);
  sub_1000D6E0C(a5, &v8, v9, a4);
  return sub_1000D3F10(v9);
}

void sub_1000D6920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D3F10(va);
  _Unwind_Resume(a1);
}

void sub_1000D6934(uint64_t a1, int a2, unsigned __int8 *a3)
{
  if (*(a1 + 24))
  {
    sub_1000D76AC(v30, a1);
    sub_1000D94B0(&v31, a3, v30, *(a1 + 176));
    sub_1000D3F10(v30);
    sub_1000D7744(a1, &v31);
    if (a2)
    {
      v6 = sub_1000D6EE8(a1 + 40);
      *(a1 + 32) = v6;
      if (v6 != 15)
      {
        v7 = *(a1 + 64);
        sub_1000D81F0(a1 + 40, &v29);
        v25 = *(a1 + 64);
        v26 = *(a1 + 80);
        sub_100007ECC(v22, "value");
        sub_1000D8568(a1, 0xFu, v22, &__p);
        sub_1000D82D4(101, &v25, &__p, &v27);
        sub_1000D8078(&v31, v7, &v29, &v27);
        v27.__vftable = off_1002AF4E0;
        std::runtime_error::~runtime_error(&v28);
        std::exception::~exception(&v27);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v23 < 0)
        {
          operator delete(v22[0]);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }
      }
    }

    if (v36 == 1)
    {
      v8 = *a3;
      *a3 = 9;
      v20 = v8;
      v9 = *(a3 + 1);
      *(a3 + 1) = 0;
      v21 = v9;
      v10 = &v21;
    }

    else
    {
      if (*a3 != 9)
      {
LABEL_27:
        sub_1000DB610(&v31);
        return;
      }

      *a3 = 0;
      v18 = 9;
      v16 = *(a3 + 1);
      *(a3 + 1) = 0;
      v19 = v16;
      v10 = &v19;
      v8 = 9;
    }

    sub_1000D3F90(v10, v8);
    goto LABEL_27;
  }

  v11 = *(a1 + 176);
  v31 = a3;
  v32 = 0u;
  v33 = 0u;
  v34 = 0;
  v35 = v11;
  sub_1000D89C4(a1, &v31);
  if (a2)
  {
    v12 = sub_1000D6EE8(a1 + 40);
    *(a1 + 32) = v12;
    if (v12 != 15)
    {
      v13 = *(a1 + 64);
      sub_1000D81F0(a1 + 40, &v29);
      v25 = *(a1 + 64);
      v26 = *(a1 + 80);
      sub_100007ECC(v22, "value");
      sub_1000D8568(a1, 0xFu, v22, &__p);
      sub_1000D82D4(101, &v25, &__p, &v27);
      sub_1000D9338(&v31, v13, &v29, &v27);
      v27.__vftable = off_1002AF4E0;
      std::runtime_error::~runtime_error(&v28);
      std::exception::~exception(&v27);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v23 < 0)
      {
        operator delete(v22[0]);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }
    }
  }

  if (v34 == 1)
  {
    v14 = *a3;
    *a3 = 9;
    v15 = *(a3 + 1);
    *(a3 + 1) = 0;
    v17 = v15;
    sub_1000D3F90(&v17, v14);
  }

  if (v32)
  {
    *(&v32 + 1) = v32;
    operator delete(v32);
  }
}

void sub_1000D6C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::runtime_error a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  sub_1000D8970(&a31);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  v43 = *(v41 - 200);
  if (v43)
  {
    *(v41 - 192) = v43;
    operator delete(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D6D8C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000D6E0C(uint64_t a1, _OWORD *a2, uint64_t a3, char a4)
{
  v7 = sub_1000D76AC(a1, a3);
  *(v7 + 32) = 0;
  *(v7 + 40) = *a2;
  *(v7 + 56) = -1;
  *(v7 + 60) = 0;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  *(v7 + 96) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 128) = 0;
  *(v7 + 136) = "";
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 144) = 0;
  *(a1 + 168) = sub_1000D6EB4();
  *(a1 + 176) = a4;
  *(a1 + 32) = sub_1000D6EE8(a1 + 40);
  return a1;
}

void sub_1000D6E98(_Unwind_Exception *a1)
{
  sub_1000D7668(v1 + 40);
  sub_1000D3F10(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D6EB4()
{
  v0 = localeconv();
  if (v0->decimal_point)
  {
    return *v0->decimal_point;
  }

  else
  {
    return 46;
  }
}

uint64_t sub_1000D6EE8(uint64_t a1)
{
  if (!*(a1 + 24) && !sub_1000D7148(a1))
  {
    v4 = "invalid BOM; must be 0xEF 0xBB 0xBF if given";
LABEL_22:
    *(a1 + 96) = v4;
    return 14;
  }

  while (1)
  {
    while (1)
    {
      sub_100207924(a1);
      v2 = *(a1 + 16);
      if (v2 > 47)
      {
        if (v2 >= 58)
        {
          if (v2 > 109)
          {
            if (v2 > 122)
            {
              if (v2 == 123)
              {
                return 9;
              }

              if (v2 == 125)
              {
                return 11;
              }
            }

            else if (v2 == 110)
            {
              v8 = 1819047278;
              v7 = 1;
              while (*(&v8 + v7) == sub_100207924(a1))
              {
                if (++v7 == 4)
                {
                  return 3;
                }
              }
            }

            else if (v2 == 116)
            {
              v9 = 1702195828;
              v5 = 1;
              while (*(&v9 + v5) == sub_100207924(a1))
              {
                if (++v5 == 4)
                {
                  return 1;
                }
              }
            }
          }

          else if (v2 > 92)
          {
            if (v2 == 93)
            {
              return 10;
            }

            if (v2 == 102)
            {
              v6 = 0;
              while (aFalse_0[v6 + 1] == sub_100207924(a1))
              {
                ++v6;
                result = 2;
                if (v6 == 4)
                {
                  return result;
                }
              }
            }
          }

          else
          {
            if (v2 == 58)
            {
              return 12;
            }

            if (v2 == 91)
            {
              return 8;
            }
          }

          goto LABEL_53;
        }

        goto LABEL_13;
      }

      if (v2 > 12)
      {
        break;
      }

      if ((v2 - 9) >= 2)
      {
        if ((v2 + 1) < 2)
        {
          return 15;
        }

        goto LABEL_53;
      }
    }

    if (v2 > 33)
    {
      break;
    }

    if (v2 != 13 && v2 != 32)
    {
      goto LABEL_53;
    }
  }

  if (v2 == 44)
  {
    return 13;
  }

  if (v2 == 45)
  {
LABEL_13:

    return sub_1000D71AC(a1);
  }

  if (v2 != 34)
  {
LABEL_53:
    v4 = "invalid literal";
    goto LABEL_22;
  }

  return sub_1002079D0(a1);
}

BOOL sub_1000D7148(unsigned __int8 **a1)
{
  if (sub_100207924(a1) == 239)
  {
    return sub_100207924(a1) == 187 && sub_100207924(a1) == 191;
  }

  else
  {
    sub_100207E9C(a1);
    return 1;
  }
}

uint64_t sub_1000D71AC(uint64_t a1)
{
  sub_1000D7578(a1);
  v3 = (a1 + 16);
  v2 = *(a1 + 16);
  if ((v2 - 49) >= 9)
  {
    if (v2 == 48)
    {
      std::string::push_back((a1 + 72), 48);
      v4 = 5;
    }

    else
    {
      if (v2 == 45)
      {
        std::string::push_back((a1 + 72), 45);
      }

      v9 = sub_100207924(a1);
      if ((v9 - 49) < 9)
      {
        v2 = *v3;
        v4 = 6;
        goto LABEL_3;
      }

      if (v9 != 48)
      {
        v8 = "invalid number; expected digit after '-'";
        goto LABEL_29;
      }

      std::string::push_back((a1 + 72), *(a1 + 16));
      v4 = 6;
    }

    v11 = sub_100207924(a1);
    if (v11 == 101 || v11 == 69)
    {
      v5 = (a1 + 72);
      goto LABEL_9;
    }

    if (v11 != 46)
    {
      goto LABEL_30;
    }

    v5 = (a1 + 72);
LABEL_27:
    std::string::push_back(v5, *(a1 + 128));
    if (sub_100207924(a1) - 48 > 9)
    {
      v8 = "invalid number; expected digit after '.'";
      goto LABEL_29;
    }

    v5 = (a1 + 72);
    do
    {
      std::string::push_back((a1 + 72), *(a1 + 16));
      v18 = sub_100207924(a1);
    }

    while ((v18 - 48) < 0xA);
    if (v18 != 101 && v18 != 69)
    {
LABEL_21:
      sub_100207E9C(a1);
      __endptr = 0;
      *__error() = 0;
      goto LABEL_38;
    }

LABEL_9:
    std::string::push_back(v5, *(a1 + 16));
    v7 = sub_100207924(a1);
    if ((v7 - 48) < 0xA)
    {
      v10 = (a1 + 72);
    }

    else
    {
      if (v7 != 45 && v7 != 43)
      {
        v8 = "invalid number; expected '+', '-', or digit after exponent";
LABEL_29:
        *(a1 + 96) = v8;
        return 14;
      }

      v10 = (a1 + 72);
      std::string::push_back((a1 + 72), *(a1 + 16));
      if (sub_100207924(a1) - 48 >= 0xA)
      {
        v8 = "invalid number; expected digit after exponent sign";
        goto LABEL_29;
      }
    }

    sub_1002082B0(a1, (a1 + 16), v10);
    goto LABEL_21;
  }

  v4 = 5;
LABEL_3:
  v5 = (a1 + 72);
  while (1)
  {
    std::string::push_back((a1 + 72), v2);
    v6 = sub_100207924(a1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v2 = *v3;
  }

  if (v6 == 46)
  {
    goto LABEL_27;
  }

  if (v6 == 69 || v6 == 101)
  {
    goto LABEL_9;
  }

LABEL_30:
  sub_100207E9C(a1);
  __endptr = 0;
  *__error() = 0;
  v13 = (a1 + 72);
  v14 = *(a1 + 95);
  if (v4 == 5)
  {
    if (v14 < 0)
    {
      v13 = *v13;
    }

    v15 = strtoull(v13, &__endptr, 10);
    if (!*__error())
    {
      *(a1 + 112) = v15;
      return 5;
    }
  }

  else
  {
    if (v14 < 0)
    {
      v13 = *v13;
    }

    v16 = strtoll(v13, &__endptr, 10);
    if (!*__error())
    {
      *(a1 + 104) = v16;
      return 6;
    }
  }

LABEL_38:
  v17 = (a1 + 72);
  if (*(a1 + 95) < 0)
  {
    v17 = *v17;
  }

  *(a1 + 120) = strtod(v17, &__endptr);
  return 7;
}

void sub_1000D7488(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      sub_100033FD0();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void sub_1000D7578(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    **(a1 + 72) = 0;
    *(a1 + 80) = 0;
  }

  else
  {
    *(a1 + 72) = 0;
    *(a1 + 95) = 0;
  }

  v2 = *(a1 + 48);
  v1 = a1 + 48;
  *(v1 + 8) = v2;
  v3 = *(v1 - 32);
  sub_1000D7488(v1, &v3);
}

uint64_t sub_1000D75D0(std::string *a1, _DWORD *a2, uint64_t a3)
{
  std::string::push_back(a1 + 3, a1->__r_.__value_.__s.__data_[16]);
  if (!a3)
  {
    return 1;
  }

  v6 = &a2[a3];
  while (1)
  {
    sub_100207924(a1);
    v7 = a1->__r_.__value_.__r.__words[2];
    if (*a2 > v7 || v7 > a2[1])
    {
      break;
    }

    std::string::push_back(a1 + 3, v7);
    a2 += 2;
    if (a2 == v6)
    {
      return 1;
    }
  }

  result = 0;
  a1[4].__r_.__value_.__r.__words[0] = "invalid string: ill-formed UTF-8 byte";
  return result;
}

uint64_t sub_1000D7668(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  return a1;
}

uint64_t sub_1000D76AC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000D7744(uint64_t a1, unsigned __int8 **a2)
{
  v34 = 0;
  v35 = 0;
  v36 = 0;
  while (1)
  {
LABEL_2:
    v4 = *(a1 + 32);
    if (v4 <= 5)
    {
      if (v4 > 2)
      {
        if (v4 == 3)
        {
          v31.__vftable = 0;
          sub_1000DAB1C(a2, &v31, 0);
        }

        else if (v4 == 4)
        {
          sub_1000DAE6C(a2);
        }

        else
        {
          v31.__vftable = *(a1 + 152);
          sub_1000DB020(a2, &v31, 0);
        }

        goto LABEL_28;
      }

      if (v4 == 1)
      {
        LOBYTE(v31.__vftable) = 1;
        sub_1000DA970(a2, &v31, 0);
        goto LABEL_28;
      }

      if (v4 == 2)
      {
        LOBYTE(v31.__vftable) = 0;
        sub_1000DA970(a2, &v31, 0);
        goto LABEL_28;
      }

      goto LABEL_51;
    }

    if (v4 <= 7)
    {
      if (v4 == 6)
      {
        v31.__vftable = *(a1 + 144);
        sub_1000DACC0(a2, &v31, 0);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v22 = *(a1 + 64);
          sub_1000D81F0(a1 + 40, &v33);
          sub_1000D81F0(a1 + 40, &v27);
          v23 = std::string::insert(&v27, 0, "number overflow parsing '");
          v24 = *&v23->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v24;
          v23->__r_.__value_.__l.__size_ = 0;
          v23->__r_.__value_.__r.__words[2] = 0;
          v23->__r_.__value_.__r.__words[0] = 0;
          v25 = std::string::append(&__p, "'");
          v26 = *&v25->__r_.__value_.__l.__data_;
          v30 = v25->__r_.__value_.__r.__words[2];
          *v29 = v26;
          v25->__r_.__value_.__l.__size_ = 0;
          v25->__r_.__value_.__r.__words[2] = 0;
          v25->__r_.__value_.__r.__words[0] = 0;
          sub_1000D9CF8(406, v29, &v31);
          v13 = sub_1000D8078(a2, v22, &v33, &v31);
          sub_1000D9E3C(&v31);
          if (SHIBYTE(v30) < 0)
          {
            operator delete(v29[0]);
          }

          goto LABEL_53;
        }

        v31.__vftable = *(a1 + 160);
        sub_1000DA7C4(a2, &v31, 0);
      }

      goto LABEL_28;
    }

    if (v4 != 8)
    {
      break;
    }

    if (!sub_1000D9A3C(a2, 0xFFFFFFFFFFFFFFFFLL))
    {
      goto LABEL_59;
    }

    v7 = sub_1000D6EE8(a1 + 40);
    *(a1 + 32) = v7;
    if (v7 == 10)
    {
      v6 = sub_1000D9BF0(a2);
      goto LABEL_24;
    }

    LOBYTE(v31.__vftable) = 1;
    sub_1000453B4(&v34, &v31);
  }

  if (v4 != 9)
  {
    if (v4 == 14)
    {
      v15 = *(a1 + 64);
      sub_1000D81F0(a1 + 40, &v33);
      *v29 = *(a1 + 64);
      v30 = *(a1 + 80);
      sub_100007ECC(&v27, "value");
      sub_1000D8568(a1, 0, &v27, &__p);
      sub_1000D82D4(101, v29, &__p, &v31);
      v16 = sub_1000D8078(a2, v15, &v33, &v31);
LABEL_52:
      v13 = v16;
      v31.__vftable = off_1002AF4E0;
      std::runtime_error::~runtime_error(&v32);
      std::exception::~exception(&v31);
      goto LABEL_53;
    }

LABEL_51:
    v17 = *(a1 + 64);
    sub_1000D81F0(a1 + 40, &v33);
    *v29 = *(a1 + 64);
    v30 = *(a1 + 80);
    sub_100007ECC(&v27, "value");
    sub_1000D8568(a1, 0x10u, &v27, &__p);
    sub_1000D82D4(101, v29, &__p, &v31);
    v16 = sub_1000D8078(a2, v17, &v33, &v31);
    goto LABEL_52;
  }

  if ((sub_1000D9590(a2, 0xFFFFFFFFFFFFFFFFLL) & 1) == 0)
  {
    goto LABEL_59;
  }

  v5 = sub_1000D6EE8(a1 + 40);
  *(a1 + 32) = v5;
  if (v5 != 11)
  {
    if (v5 == 4)
    {
      sub_1000D9908();
    }

    goto LABEL_62;
  }

  v6 = sub_1000D9744(a2);
LABEL_24:
  if ((v6 & 1) == 0)
  {
LABEL_59:
    v13 = 0;
    goto LABEL_46;
  }

LABEL_28:
  v8 = v35;
  if (!v35)
  {
LABEL_45:
    v13 = 1;
    goto LABEL_46;
  }

  while (2)
  {
    if ((*&v34[((v8 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v8 - 1)))
    {
      v9 = sub_1000D6EE8(a1 + 40);
      *(a1 + 32) = v9;
      if (v9 == 13)
      {
        *(a1 + 32) = sub_1000D6EE8(a1 + 40);
        goto LABEL_2;
      }

      if (v9 != 10)
      {
        v18 = *(a1 + 64);
        sub_1000D81F0(a1 + 40, &v33);
        *v29 = *(a1 + 64);
        v30 = *(a1 + 80);
        sub_100007ECC(&v27, "array");
        sub_1000D8568(a1, 0xAu, &v27, &__p);
        sub_1000D82D4(101, v29, &__p, &v31);
        v19 = sub_1000D8078(a2, v18, &v33, &v31);
        goto LABEL_63;
      }

      v10 = sub_1000D9BF0(a2);
LABEL_36:
      if ((v10 & 1) == 0)
      {
        goto LABEL_59;
      }

      v8 = v35 - 1;
      v35 = v8;
      if (!v8)
      {
        goto LABEL_45;
      }

      continue;
    }

    break;
  }

  v11 = sub_1000D6EE8(a1 + 40);
  *(a1 + 32) = v11;
  if (v11 != 13)
  {
    if (v11 != 11)
    {
      v20 = *(a1 + 64);
      sub_1000D81F0(a1 + 40, &v33);
      *v29 = *(a1 + 64);
      v30 = *(a1 + 80);
      sub_100007ECC(&v27, "object");
      sub_1000D8568(a1, 0xBu, &v27, &__p);
      sub_1000D82D4(101, v29, &__p, &v31);
      v19 = sub_1000D8078(a2, v20, &v33, &v31);
      goto LABEL_63;
    }

    v10 = sub_1000D9744(a2);
    goto LABEL_36;
  }

  v12 = sub_1000D6EE8(a1 + 40);
  *(a1 + 32) = v12;
  if (v12 == 4)
  {
    sub_1000D9908();
  }

LABEL_62:
  v21 = *(a1 + 64);
  sub_1000D81F0(a1 + 40, &v33);
  *v29 = *(a1 + 64);
  v30 = *(a1 + 80);
  sub_100007ECC(&v27, "object key");
  sub_1000D8568(a1, 4u, &v27, &__p);
  sub_1000D82D4(101, v29, &__p, &v31);
  v19 = sub_1000D8078(a2, v21, &v33, &v31);
LABEL_63:
  v13 = v19;
  sub_1000D8970(&v31);
LABEL_53:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

LABEL_46:
  if (v34)
  {
    operator delete(v34);
  }

  return v13;
}

void sub_1000D7F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  sub_1000D8970(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 57) < 0)
  {
    operator delete(*(v29 - 80));
  }

  v31 = *(v29 - 56);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D8078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 88) = 1;
  if (*(a1 + 128) != 1)
  {
    return 0;
  }

  v4 = *(a4 + 8) / 100 % 100;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      v7 = sub_1000DB1CC(exception, a4);
      v9 = sub_1000D8970;
    }

    else
    {
      if (v4 != 2)
      {
        return 0;
      }

      v18 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB2B8(v18, a4);
      v9 = sub_1000D4CA8;
    }

LABEL_14:
    __cxa_throw(v7, v8, v9);
  }

  switch(v4)
  {
    case 3:
      v12 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB328(v12, a4);
      v9 = sub_1000C39AC;
      goto LABEL_14;
    case 4:
      v16 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB248(v16, a4);
      v9 = sub_1000D9E3C;
      goto LABEL_14;
    case 5:
      v6 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB398(v6, a4);
      v9 = sub_1000D49A0;
      goto LABEL_14;
  }

  return 0;
}

void sub_1000D81F0(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  a2->__r_.__value_.__r.__words[0] = 0;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  v3 = *(a1 + 48);
  for (i = *(a1 + 56); v3 != i; ++v3)
  {
    v5 = *v3;
    if (v5 > 0x1F)
    {
      std::string::push_back(a2, v5);
    }

    else
    {
      v7 = 0;
      *__str = 0;
      snprintf(__str, 9uLL, "<U+%.4X>", v5);
      std::string::append(a2, __str);
    }
  }
}

void sub_1000D82B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D82D4(int a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_100007ECC(&v24, "parse_error");
  sub_1000C3A00(a1, &v26);
  v8 = std::string::append(&v26, "parse error");
  v9 = *&v8->__r_.__value_.__l.__data_;
  v27.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v27.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  sub_1000DB470(a2, &__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v12 = std::string::append(&v27, p_p, size);
  v13 = *&v12->__r_.__value_.__l.__data_;
  v28.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&v28.__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  v14 = std::string::append(&v28, ": ");
  v15 = *&v14->__r_.__value_.__l.__data_;
  v29.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v29.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = *(a3 + 23);
  if (v16 >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  if (v16 >= 0)
  {
    v18 = *(a3 + 23);
  }

  else
  {
    v18 = *(a3 + 8);
  }

  v19 = std::string::append(&v29, v17, v18);
  v20 = *&v19->__r_.__value_.__l.__data_;
  v31 = v19->__r_.__value_.__r.__words[2];
  v30 = v20;
  v19->__r_.__value_.__l.__size_ = 0;
  v19->__r_.__value_.__r.__words[2] = 0;
  v19->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  v21 = *a2;
  if (v31 >= 0)
  {
    v22 = &v30;
  }

  else
  {
    v22 = v30;
  }

  sub_1000C3B84(a4, a1, v22);
  *a4 = off_1002AFEE8;
  a4[4] = v21;
  if (SHIBYTE(v31) < 0)
  {
    operator delete(v30);
  }
}

void sub_1000D84C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (*(v40 - 57) < 0)
  {
    operator delete(*(v40 - 80));
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D8568(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X2>, std::string *a4@<X8>)
{
  sub_100007ECC(a4, "syntax error ");
  v8 = *(a3 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a3 + 8);
  }

  if (v8)
  {
    std::operator+<char>();
    v9 = std::string::append(&v38, " ");
    v10 = *&v9->__r_.__value_.__l.__data_;
    v40 = v9->__r_.__value_.__r.__words[2];
    v39 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v11 = &v39;
    }

    else
    {
      v11 = v39;
    }

    if (v40 >= 0)
    {
      v12 = HIBYTE(v40);
    }

    else
    {
      v12 = *(&v39 + 1);
    }

    std::string::append(a4, v11, v12);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }
  }

  std::string::append(a4, "- ");
  v13 = *(a1 + 32);
  if (v13 == 14)
  {
    sub_100007ECC(&v36, *(a1 + 136));
    v14 = std::string::append(&v36, "; last read: '");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v37.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v37.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    sub_1000D81F0(a1 + 40, &__p);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v37, p_p, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v38.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v38.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v38, "'");
    v21 = *&v20->__r_.__value_.__l.__data_;
    v40 = v20->__r_.__value_.__r.__words[2];
    v39 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (v40 >= 0)
    {
      v22 = &v39;
    }

    else
    {
      v22 = v39;
    }

    if (v40 >= 0)
    {
      v23 = HIBYTE(v40);
    }

    else
    {
      v23 = *(&v39 + 1);
    }

    std::string::append(a4, v22, v23);
    if (SHIBYTE(v40) < 0)
    {
      operator delete(v39);
    }

    if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v38.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v37.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v36.__r_.__value_.__r.__words[2]) < 0)
    {
      v24 = v36.__r_.__value_.__r.__words[0];
      goto LABEL_49;
    }

LABEL_46:
    if (!a2)
    {
      return;
    }

    goto LABEL_50;
  }

  v25 = sub_1000DB5EC(v13);
  sub_100007ECC(&v38, v25);
  v26 = std::string::insert(&v38, 0, "unexpected ");
  v27 = *&v26->__r_.__value_.__l.__data_;
  v40 = v26->__r_.__value_.__r.__words[2];
  v39 = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v28 = &v39;
  }

  else
  {
    v28 = v39;
  }

  if (v40 >= 0)
  {
    v29 = HIBYTE(v40);
  }

  else
  {
    v29 = *(&v39 + 1);
  }

  std::string::append(a4, v28, v29);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if ((SHIBYTE(v38.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    goto LABEL_46;
  }

  v24 = v38.__r_.__value_.__r.__words[0];
LABEL_49:
  operator delete(v24);
  if (!a2)
  {
    return;
  }

LABEL_50:
  v30 = sub_1000DB5EC(a2);
  sub_100007ECC(&v38, v30);
  v31 = std::string::insert(&v38, 0, "; expected ");
  v32 = *&v31->__r_.__value_.__l.__data_;
  v40 = v31->__r_.__value_.__r.__words[2];
  v39 = v32;
  v31->__r_.__value_.__l.__size_ = 0;
  v31->__r_.__value_.__r.__words[2] = 0;
  v31->__r_.__value_.__r.__words[0] = 0;
  if (v40 >= 0)
  {
    v33 = &v39;
  }

  else
  {
    v33 = v39;
  }

  if (v40 >= 0)
  {
    v34 = HIBYTE(v40);
  }

  else
  {
    v34 = *(&v39 + 1);
  }

  std::string::append(a4, v33, v34);
  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }
}

void sub_1000D8890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (*(v33 + 23) < 0)
  {
    operator delete(*v33);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D8970(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_1000D89C4(uint64_t a1, uint64_t a2)
{
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v4 = (a1 + 112);
  while (1)
  {
    v5 = *(a1 + 32);
    if (v5 <= 5)
    {
      break;
    }

    if (v5 <= 7)
    {
      if (v5 == 6)
      {
        v36.__vftable = *(a1 + 144);
        sub_1000DBEBC(a2, &v36);
      }

      else
      {
        if ((*(a1 + 160) & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
        {
          v27 = *(a1 + 64);
          sub_1000D81F0(a1 + 40, &v38);
          sub_1000D81F0(a1 + 40, &v32);
          v28 = std::string::insert(&v32, 0, "number overflow parsing '");
          v29 = *&v28->__r_.__value_.__l.__data_;
          __p.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
          *&__p.__r_.__value_.__l.__data_ = v29;
          v28->__r_.__value_.__l.__size_ = 0;
          v28->__r_.__value_.__r.__words[2] = 0;
          v28->__r_.__value_.__r.__words[0] = 0;
          v30 = std::string::append(&__p, "'");
          v31 = *&v30->__r_.__value_.__l.__data_;
          v35 = v30->__r_.__value_.__r.__words[2];
          *v34 = v31;
          v30->__r_.__value_.__l.__size_ = 0;
          v30->__r_.__value_.__r.__words[2] = 0;
          v30->__r_.__value_.__r.__words[0] = 0;
          sub_1000D9CF8(406, v34, &v36);
          v17 = sub_1000D9338(a2, v27, &v38, &v36);
          sub_1000D9E3C(&v36);
          if (SHIBYTE(v35) < 0)
          {
            operator delete(v34[0]);
          }

          goto LABEL_49;
        }

        v36.__vftable = *(a1 + 160);
        sub_1000DB8B4(a2, &v36);
      }

      goto LABEL_26;
    }

    switch(v5)
    {
      case 8:
        v38.__r_.__value_.__s.__data_[0] = 2;
        v36.__vftable = sub_1000DB670(a2, &v38);
        sub_1000DA09C(a2 + 8, &v36);
        v10 = sub_1000D6EE8(a1 + 40);
        *(a1 + 32) = v10;
        if (v10 == 10)
        {
LABEL_23:
          *(a2 + 16) -= 8;
          goto LABEL_26;
        }

        LOBYTE(v36.__vftable) = 1;
        sub_1000453B4(&v39, &v36);
        break;
      case 9:
        v38.__r_.__value_.__s.__data_[0] = 1;
        v36.__vftable = sub_1000DB670(a2, &v38);
        sub_1000DA09C(a2 + 8, &v36);
        v6 = sub_1000D6EE8(a1 + 40);
        *(a1 + 32) = v6;
        if (v6 == 11)
        {
          goto LABEL_23;
        }

        if (v6 != 4)
        {
LABEL_56:
          v25 = *(a1 + 64);
          sub_1000D81F0(a1 + 40, &v38);
          *v34 = *(a1 + 64);
          v35 = *(a1 + 80);
          sub_100007ECC(&v32, "object key");
          sub_1000D8568(a1, 4u, &v32, &__p);
          sub_1000D82D4(101, v34, &__p, &v36);
          v23 = sub_1000D9338(a2, v25, &v38, &v36);
          goto LABEL_58;
        }

        v7 = *(*(*(a2 + 16) - 8) + 8);
        v36.__vftable = v4;
        *(a2 + 32) = sub_1000DA610(v7, &v4->~runtime_error) + 56;
        v8 = sub_1000D6EE8(a1 + 40);
        *(a1 + 32) = v8;
        if (v8 != 12)
        {
          goto LABEL_57;
        }

        LOBYTE(v36.__vftable) = 0;
        sub_1000453B4(&v39, &v36);
        v9 = sub_1000D6EE8(a1 + 40);
LABEL_39:
        *(a1 + 32) = v9;
        break;
      case 14:
        v19 = *(a1 + 64);
        sub_1000D81F0(a1 + 40, &v38);
        *v34 = *(a1 + 64);
        v35 = *(a1 + 80);
        sub_100007ECC(&v32, "value");
        sub_1000D8568(a1, 0, &v32, &__p);
        sub_1000D82D4(101, v34, &__p, &v36);
        v20 = sub_1000D9338(a2, v19, &v38, &v36);
LABEL_48:
        v17 = v20;
        v36.__vftable = off_1002AF4E0;
        std::runtime_error::~runtime_error(&v37);
        std::exception::~exception(&v36);
        goto LABEL_49;
      default:
LABEL_47:
        v21 = *(a1 + 64);
        sub_1000D81F0(a1 + 40, &v38);
        *v34 = *(a1 + 64);
        v35 = *(a1 + 80);
        sub_100007ECC(&v32, "value");
        sub_1000D8568(a1, 0x10u, &v32, &__p);
        sub_1000D82D4(101, v34, &__p, &v36);
        v20 = sub_1000D9338(a2, v21, &v38, &v36);
        goto LABEL_48;
    }
  }

  if (v5 > 2)
  {
    if (v5 == 3)
    {
      v36.__vftable = 0;
      sub_1000DBCDC(a2);
    }

    else
    {
      if (v5 == 4)
      {
        sub_1000DC0D0(a2);
      }

      v36.__vftable = *(a1 + 152);
      sub_1000DC308(a2, &v36);
    }

    goto LABEL_26;
  }

  if (v5 == 1)
  {
    LOBYTE(v36.__vftable) = 1;
    sub_1000DBAC8(a2, &v36);
    goto LABEL_26;
  }

  if (v5 != 2)
  {
    goto LABEL_47;
  }

  LOBYTE(v36.__vftable) = 0;
  sub_1000DBAC8(a2, &v36);
LABEL_26:
  v11 = v40;
  if (!v40)
  {
LABEL_41:
    v17 = 1;
    goto LABEL_42;
  }

  while (1)
  {
    if ((*&v39[((v11 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (v11 - 1)))
    {
      v12 = sub_1000D6EE8(a1 + 40);
      *(a1 + 32) = v12;
      if (v12 == 13)
      {
        goto LABEL_38;
      }

      if (v12 != 10)
      {
        v22 = *(a1 + 64);
        sub_1000D81F0(a1 + 40, &v38);
        *v34 = *(a1 + 64);
        v35 = *(a1 + 80);
        sub_100007ECC(&v32, "array");
        sub_1000D8568(a1, 0xAu, &v32, &__p);
        sub_1000D82D4(101, v34, &__p, &v36);
        v23 = sub_1000D9338(a2, v22, &v38, &v36);
        goto LABEL_58;
      }

      goto LABEL_33;
    }

    v13 = sub_1000D6EE8(a1 + 40);
    *(a1 + 32) = v13;
    if (v13 == 13)
    {
      break;
    }

    if (v13 != 11)
    {
      v24 = *(a1 + 64);
      sub_1000D81F0(a1 + 40, &v38);
      *v34 = *(a1 + 64);
      v35 = *(a1 + 80);
      sub_100007ECC(&v32, "object");
      sub_1000D8568(a1, 0xBu, &v32, &__p);
      sub_1000D82D4(101, v34, &__p, &v36);
      v23 = sub_1000D9338(a2, v24, &v38, &v36);
      goto LABEL_58;
    }

LABEL_33:
    *(a2 + 16) -= 8;
    v11 = v40 - 1;
    v40 = v11;
    if (!v11)
    {
      goto LABEL_41;
    }
  }

  v14 = sub_1000D6EE8(a1 + 40);
  *(a1 + 32) = v14;
  if (v14 != 4)
  {
    goto LABEL_56;
  }

  v15 = *(*(*(a2 + 16) - 8) + 8);
  v36.__vftable = v4;
  *(a2 + 32) = sub_1000DA610(v15, &v4->~runtime_error) + 56;
  v16 = sub_1000D6EE8(a1 + 40);
  *(a1 + 32) = v16;
  if (v16 == 12)
  {
LABEL_38:
    v9 = sub_1000D6EE8(a1 + 40);
    goto LABEL_39;
  }

LABEL_57:
  v26 = *(a1 + 64);
  sub_1000D81F0(a1 + 40, &v38);
  *v34 = *(a1 + 64);
  v35 = *(a1 + 80);
  sub_100007ECC(&v32, "object separator");
  sub_1000D8568(a1, 0xCu, &v32, &__p);
  sub_1000D82D4(101, v34, &__p, &v36);
  v23 = sub_1000D9338(a2, v26, &v38, &v36);
LABEL_58:
  v17 = v23;
  sub_1000D8970(&v36);
LABEL_49:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v38.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v38.__r_.__value_.__l.__data_);
  }

LABEL_42:
  if (v39)
  {
    operator delete(v39);
  }

  return v17;
}

void sub_1000D91F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, std::runtime_error a29)
{
  sub_1000D8970(&a29);
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (*(v29 - 89) < 0)
  {
    operator delete(*(v29 - 112));
  }

  v31 = *(v29 - 88);
  if (v31)
  {
    operator delete(v31);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D9338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 40) = 1;
  if (*(a1 + 41) != 1)
  {
    return 0;
  }

  v4 = *(a4 + 8) / 100 % 100;
  if (v4 <= 2)
  {
    if (v4 == 1)
    {
      exception = __cxa_allocate_exception(0x28uLL);
      v7 = sub_1000DB1CC(exception, a4);
      v9 = sub_1000D8970;
    }

    else
    {
      if (v4 != 2)
      {
        return 0;
      }

      v18 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB2B8(v18, a4);
      v9 = sub_1000D4CA8;
    }

LABEL_14:
    __cxa_throw(v7, v8, v9);
  }

  switch(v4)
  {
    case 3:
      v12 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB328(v12, a4);
      v9 = sub_1000C39AC;
      goto LABEL_14;
    case 4:
      v16 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB248(v16, a4);
      v9 = sub_1000D9E3C;
      goto LABEL_14;
    case 5:
      v6 = __cxa_allocate_exception(0x20uLL);
      v7 = sub_1000DB398(v6, a4);
      v9 = sub_1000D49A0;
      goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1000D94B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(a1 + 8) = 0u;
  *a1 = a2;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  sub_1000D76AC(a1 + 96, a3);
  *(a1 + 144) = 0;
  *(a1 + 128) = a4;
  *(a1 + 136) = 9;
  v7 = 1;
  sub_1000453B4(a1 + 32, &v7);
  return a1;
}

void sub_1000D9540(_Unwind_Exception *a1)
{
  sub_1000D3F90(v2, *(v1 + 136));
  sub_1000D3F10(v1 + 96);
  v5 = *(v1 + 56);
  if (v5)
  {
    operator delete(v5);
  }

  v6 = *(v1 + 32);
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000D9590(uint64_t a1, unint64_t a2)
{
  v4 = a1 + 8;
  v18 = sub_1000D9E90(a1 + 96, (*(a1 + 16) - *(a1 + 8)) >> 3, 0);
  sub_1000453B4(a1 + 32, &v18);
  LOBYTE(v14) = 1;
  v16 = sub_1000D9EEC(a1, &v14, 1);
  v17 = v5;
  sub_1000DA09C(v4, &v17);
  if (a2 != -1)
  {
    v6 = *(*(a1 + 16) - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_100244888[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v13, a2);
        v11 = std::string::insert(&v13, 0, "excessive object size: ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15 = v11->__r_.__value_.__r.__words[2];
        v14 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        sub_1000D9CF8(408, &v14, exception);
      }
    }
  }

  return 1;
}

void sub_1000D96E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1000D9744(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (*(v2 - 8) && (sub_1000D9E90(a1 + 96, ((v2 - *(a1 + 8)) >> 3) - 1, 1) & 1) == 0)
  {
    sub_1000D4E30(v25, (a1 + 136));
    v3 = *(*(a1 + 16) - 8);
    v4 = *v3;
    *v3 = v25[0];
    v25[0] = v4;
    v5 = *(v3 + 1);
    *(v3 + 1) = v26;
    v26 = v5;
    sub_1000D3F90(&v26, v4);
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  v8 = v6 - 8;
  *(a1 + 16) = v6 - 8;
  --*(a1 + 40);
  if (v7 != v6 - 8)
  {
    v9 = *(v6 - 16);
    if (v9)
    {
      v10 = *v9;
      if ((v10 - 1) <= 1)
      {
        v22 = v9;
        v23 = 0uLL;
        *&v24 = 0;
        *(&v24 + 1) = 0x8000000000000000;
        v11 = **(v9 + 1);
        v12 = v10 == 1;
        v13 = 2;
        if (v12)
        {
          v13 = 1;
        }

        (&v22)[v13] = v11;
        while (1)
        {
          v14 = *(v8 - 8);
          *&v21 = 0;
          v20 = 0uLL;
          v19 = v14;
          *(&v21 + 1) = 0x8000000000000000;
          v15 = *v14;
          if (v15 == 2)
          {
            *(&v20 + 1) = *(*(v14 + 1) + 8);
          }

          else if (v15 == 1)
          {
            *&v20 = *(v14 + 1) + 8;
          }

          else
          {
            *(&v21 + 1) = 1;
          }

          if (sub_1000D4A5C(&v22, &v19))
          {
            break;
          }

          if (*sub_1000DA170(&v22) == 9)
          {
            v16 = *(*(a1 + 16) - 8);
            v19 = v22;
            v20 = v23;
            v21 = v24;
            sub_1000DA264(v16, &v19, &v18);
            return 1;
          }

          sub_1000CFBAC(&v22);
          v8 = *(a1 + 16);
        }
      }
    }
  }

  return 1;
}

void sub_1000D9A0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unsigned __int8 a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  sub_1000D3F90(&a11, a10);
  sub_1000D3F90((v13 + 8), a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1000D9A3C(uint64_t a1, unint64_t a2)
{
  v4 = a1 + 8;
  v18 = sub_1000D9E90(a1 + 96, (*(a1 + 16) - *(a1 + 8)) >> 3, 2);
  sub_1000453B4(a1 + 32, &v18);
  LOBYTE(v14) = 2;
  v16 = sub_1000D9EEC(a1, &v14, 1);
  v17 = v5;
  sub_1000DA09C(v4, &v17);
  if (a2 != -1)
  {
    v6 = *(*(a1 + 16) - 8);
    if (v6)
    {
      v7 = *v6;
      if (v7 > 2)
      {
        v8 = 1;
      }

      else
      {
        v8 = qword_100244888[v7];
      }

      if (v8 < a2)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        std::to_string(&v13, a2);
        v11 = std::string::insert(&v13, 0, "excessive array size: ");
        v12 = *&v11->__r_.__value_.__l.__data_;
        v15 = v11->__r_.__value_.__r.__words[2];
        v14 = v12;
        v11->__r_.__value_.__l.__size_ = 0;
        v11->__r_.__value_.__r.__words[2] = 0;
        v11->__r_.__value_.__r.__words[0] = 0;
        sub_1000D9CF8(408, &v14, exception);
      }
    }
  }

  return 1;
}

void sub_1000D9B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v22 & 1) == 0)
    {
LABEL_8:
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v21);
  goto LABEL_8;
}

uint64_t sub_1000D9BF0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v4 = *(v2 - 8);
  v3 = v2 - 8;
  if (!v4)
  {
    *(a1 + 16) = v3;
    goto LABEL_5;
  }

  if (sub_1000D9E90(a1 + 96, ((*(a1 + 16) - *(a1 + 8)) >> 3) - 1, 3))
  {
    *(a1 + 16) -= 8;
LABEL_5:
    --*(a1 + 40);
    return 1;
  }

  sub_1000D4E30(v15, (a1 + 136));
  v6 = *(*(a1 + 16) - 8);
  v7 = *v6;
  *v6 = v15[0];
  v15[0] = v7;
  v8 = *(v6 + 1);
  *(v6 + 1) = v16;
  v16 = v8;
  sub_1000D3F90(&v16, v7);
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  *(a1 + 16) = v9 - 8;
  --*(a1 + 40);
  if (v10 != v9 - 8)
  {
    v11 = *(v9 - 16);
    if (*v11 == 2)
    {
      v12 = *(v11 + 8);
      v13 = *(v12 + 8);
      v14 = *(v13 - 16);
      v13 -= 16;
      sub_1000D3F90((v13 + 8), v14);
      *(v12 + 8) = v13;
    }
  }

  return 1;
}

void sub_1000D9CF8(int a1@<W0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_100007ECC(&__p, "out_of_range");
  sub_1000C3A00(a1, &v14);
  v6 = *(a2 + 23);
  if (v6 >= 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = *a2;
  }

  if (v6 >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    v8 = *(a2 + 8);
  }

  v9 = std::string::append(&v14, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v16 = v9->__r_.__value_.__r.__words[2];
  *v15 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (v13 < 0)
  {
    operator delete(__p);
  }

  if (v16 >= 0)
  {
    v11 = v15;
  }

  else
  {
    v11 = v15[0];
  }

  sub_1000C3B84(a3, a1, v11);
  *a3 = off_1002AFEA8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[0]);
  }
}

void sub_1000D9DF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000D9E3C(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);

  std::exception::~exception(a1);
}

uint64_t sub_1000D9E90(uint64_t a1, int a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000334A4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1000D9EEC(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v5 = *a2;
    v28[0] = v5;
    sub_1000D4830(&v29, v5);
    if (a3 & 1) != 0 || (sub_1000D9E90((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v6 = a1[2];
      if (a1[1] == v6)
      {
        v10 = v28[0];
        v11 = v29;
        v28[0] = 0;
        v29 = 0;
        v12 = *a1;
        v13 = **a1;
        *v12 = v10;
        v26 = v13;
        v14 = *(v12 + 8);
        *(v12 + 8) = v11;
        v27 = v14;
        sub_1000D3F90(&v27, v13);
        v15 = *a1;
        goto LABEL_12;
      }

      v7 = *(v6 - 1);
      if (v7)
      {
        if (*v7 == 2)
        {
          sub_1000D4394(*(v7 + 8), v28);
          v8 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v9 = 1;
LABEL_14:
          sub_1000D3F90(&v29, v28[0]);
          return v9;
        }

        v16 = (a1[8] - 1);
        v17 = *&a1[7][(v16 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v16;
        if ((v17 >> v16))
        {
          v18 = v28[0];
          v19 = v29;
          v28[0] = 0;
          v29 = 0;
          v20 = a1[10];
          v21 = *v20;
          *v20 = v18;
          v22 = *(v20 + 1);
          *(v20 + 1) = v19;
          v25 = v22;
          sub_1000D3F90(&v25, v21);
          v23 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v9 = 0;
    goto LABEL_14;
  }

  return 0;
}

void sub_1000DA09C(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100033FD0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000C63BC(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

unsigned __int8 *sub_1000DA170(unsigned __int8 **a1)
{
  result = *a1;
  v3 = *result;
  if (v3 == 2)
  {
    return a1[2];
  }

  if (v3 == 1)
  {
    return a1[1] + 56;
  }

  if (a1[4])
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(v5, "cannot get value");
    sub_1000D4B64(214, v5, exception);
  }

  return result;
}

void sub_1000DA22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v16 & 1) == 0)
    {
LABEL_6:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v15);
  goto LABEL_6;
}

void sub_1000DA264(uint64_t ***a1@<X0>, unsigned __int8 **a2@<X1>, uint64_t ****a3@<X8>)
{
  if (*a2 != a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    sub_100007ECC(&v28, "iterator does not fit current value");
    sub_1000D4B64(202, &v28, exception);
  }

  *a3 = a1;
  a3[1] = 0;
  v5 = (a3 + 1);
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = 0x8000000000000000;
  v6 = *a1;
  if (v6 != 2)
  {
    if (v6 == 1)
    {
      v7 = a2[1];
      v8 = sub_10001756C(a1[1], v7);
      sub_1000D47DC((v7 + 4));
      operator delete(v7);
      *v5 = v8;
      return;
    }

    a3[4] = 1;
    if ((v6 - 3) > 5)
    {
      v23 = __cxa_allocate_exception(0x20uLL);
      v24 = sub_1000C3984(a1);
      sub_100007ECC(&v27, v24);
      v25 = std::string::insert(&v27, 0, "cannot use erase() with ");
      v26 = *&v25->__r_.__value_.__l.__data_;
      v29 = v25->__r_.__value_.__r.__words[2];
      v28 = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      sub_1000C3840(307, &v28, v23);
    }

    if (a2[4])
    {
      v22 = __cxa_allocate_exception(0x20uLL);
      sub_100007ECC(&v28, "iterator out of range");
      sub_1000D4B64(205, &v28, v22);
    }

    if (v6 == 8)
    {
      v18 = (a1 + 1);
      v17 = a1[1];
      v20 = *v17;
      if (*v17)
      {
        v17[1] = v20;
        v19 = v20;
        goto LABEL_17;
      }
    }

    else
    {
      if (v6 != 3)
      {
LABEL_19:
        *a1 = 0;
        return;
      }

      v18 = (a1 + 1);
      v17 = a1[1];
      if (*(v17 + 23) < 0)
      {
        v19 = *v17;
LABEL_17:
        operator delete(v19);
        v17 = *v18;
      }
    }

    operator delete(v17);
    *v18 = 0;
    goto LABEL_19;
  }

  v9 = a1[1];
  v10 = v9[1];
  a3[2] = v10;
  v11 = a2[2];
  sub_1000DA580(&v28, v11 + 16, v10, v11);
  v13 = v12;
  v14 = v9[1];
  if (v14 != v12)
  {
    v15 = v14 - 1;
    do
    {
      v16 = v15 - 1;
      sub_1000D3F90(v15, *(v15 - 8));
      v15 -= 2;
    }

    while (v16 != v13);
  }

  v9[1] = v13;
  a3[2] = v11;
}

void sub_1000DA508(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (v22)
  {
    __cxa_free_exception(v21);
  }

  _Unwind_Resume(exception_object);
}

char *sub_1000DA580(uint64_t a1, char *a2, char *a3, unsigned __int8 *a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v7 = *v5;
      v8 = *(v5 + 1);
      *v5 = 0;
      *(v5 + 1) = 0;
      v9 = *a4;
      *a4 = v7;
      v10 = *(a4 + 1);
      *(a4 + 1) = v8;
      v12 = v10;
      sub_1000D3F90(&v12, v9);
      v5 += 16;
      a4 += 16;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

uint64_t sub_1000DA610(uint64_t a1, const void **a2)
{
  v2 = *sub_100068404(a1, &v4, a2);
  if (!v2)
  {
    sub_1000DA6B8();
  }

  return v2;
}

void sub_1000DA75C(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

uint64_t sub_1000DA7C4(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 7;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_1000D9E90((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_1000D3F90(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_1000D4394(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_1000D3F90(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_1000D3F90(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1000DA970(unsigned __int8 **a1, unsigned __int8 *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 4;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_1000D9E90((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_1000D3F90(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_1000D4394(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_1000D3F90(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_1000D3F90(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1000DAB1C(unsigned __int8 **a1, uint64_t a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v26[0] = 0;
    v27 = 0;
    if (a3 & 1) != 0 || (sub_1000D9E90((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v4 = a1[2];
      if (a1[1] == v4)
      {
        v8 = v26[0];
        v9 = v27;
        v26[0] = 0;
        v27 = 0;
        v10 = *a1;
        v11 = **a1;
        *v10 = v8;
        v24 = v11;
        v12 = *(v10 + 8);
        *(v10 + 8) = v9;
        v25 = v12;
        sub_1000D3F90(&v25, v11);
        v13 = *a1;
        goto LABEL_12;
      }

      v5 = *(v4 - 1);
      if (v5)
      {
        if (*v5 == 2)
        {
          sub_1000D4394(*(v5 + 8), v26);
          v6 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v7 = 1;
LABEL_14:
          sub_1000D3F90(&v27, v26[0]);
          return v7;
        }

        v14 = (a1[8] - 1);
        v15 = *&a1[7][(v14 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v14;
        if ((v15 >> v14))
        {
          v16 = v26[0];
          v17 = v27;
          v26[0] = 0;
          v27 = 0;
          v18 = a1[10];
          v19 = *v18;
          *v18 = v16;
          v20 = *(v18 + 1);
          *(v18 + 1) = v17;
          v23 = v20;
          sub_1000D3F90(&v23, v19);
          v21 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v7 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1000DACC0(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 5;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_1000D9E90((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_1000D3F90(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_1000D4394(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_1000D3F90(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_1000D3F90(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1000DAE6C(uint64_t a1)
{
  if ((*(*(a1 + 32) + (((*(a1 + 40) - 1) >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*(a1 + 40) - 1)))
  {
    sub_1000D55B8();
  }

  return 0;
}

uint64_t sub_1000DB020(unsigned __int8 **a1, uint64_t *a2, char a3)
{
  if ((*&a1[4][((a1[5] - 1) >> 3) & 0x1FFFFFFFFFFFFFF8] >> (*(a1 + 40) - 1)))
  {
    v4 = *a2;
    v27[0] = 6;
    v28 = v4;
    if (a3 & 1) != 0 || (sub_1000D9E90((a1 + 12), (a1[2] - a1[1]) >> 3, 5))
    {
      v5 = a1[2];
      if (a1[1] == v5)
      {
        v9 = v27[0];
        v10 = v28;
        v27[0] = 0;
        v28 = 0;
        v11 = *a1;
        v12 = **a1;
        *v11 = v9;
        v25 = v12;
        v13 = *(v11 + 8);
        *(v11 + 8) = v10;
        v26 = v13;
        sub_1000D3F90(&v26, v12);
        v14 = *a1;
        goto LABEL_12;
      }

      v6 = *(v5 - 1);
      if (v6)
      {
        if (*v6 == 2)
        {
          sub_1000D4394(*(v6 + 8), v27);
          v7 = *(*(*(a1[2] - 1) + 8) + 8) - 16;
LABEL_12:
          v8 = 1;
LABEL_14:
          sub_1000D3F90(&v28, v27[0]);
          return v8;
        }

        v15 = (a1[8] - 1);
        v16 = *&a1[7][(v15 >> 3) & 0x1FFFFFFFFFFFFFF8];
        a1[8] = v15;
        if ((v16 >> v15))
        {
          v17 = v27[0];
          v18 = v28;
          v27[0] = 0;
          v28 = 0;
          v19 = a1[10];
          v20 = *v19;
          *v19 = v17;
          v21 = *(v19 + 1);
          *(v19 + 1) = v18;
          v24 = v21;
          sub_1000D3F90(&v24, v20);
          v22 = a1[10];
          goto LABEL_12;
        }
      }
    }

    v8 = 0;
    goto LABEL_14;
  }

  return 0;
}

uint64_t sub_1000DB1CC(uint64_t a1, uint64_t a2)
{
  *a1 = off_1002AF4E0;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_1002AFEE8;
  *(a1 + 32) = *(a2 + 32);
  return a1;
}

uint64_t sub_1000DB248(uint64_t a1, uint64_t a2)
{
  *a1 = off_1002AF4E0;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_1002AFEA8;
  return a1;
}

uint64_t sub_1000DB2B8(uint64_t a1, uint64_t a2)
{
  *a1 = off_1002AF4E0;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_1002AFCC0;
  return a1;
}

uint64_t sub_1000DB328(uint64_t a1, uint64_t a2)
{
  *a1 = off_1002AF4E0;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_1002AF508;
  return a1;
}

uint64_t sub_1000DB398(uint64_t a1, uint64_t a2)
{
  *a1 = off_1002AF4E0;
  *(a1 + 8) = *(a2 + 8);
  std::runtime_error::runtime_error((a1 + 16), (a2 + 16));
  *a1 = off_1002AFC80;
  return a1;
}

void sub_1000DB408(std::runtime_error *a1)
{
  a1->__vftable = off_1002AF4E0;
  std::runtime_error::~runtime_error(a1 + 1);
  std::exception::~exception(a1);

  operator delete();
}

void sub_1000DB470(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v12, *(a1 + 16) + 1);
  v4 = std::string::insert(&v12, 0, " at line ");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = std::string::append(&v13, ", column ");
  v7 = *&v6->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v7;
  v6->__r_.__value_.__l.__size_ = 0;
  v6->__r_.__value_.__r.__words[2] = 0;
  v6->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&__p, *(a1 + 8));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __p.__r_.__value_.__l.__size_;
  }

  v10 = std::string::append(&v14, p_p, size);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1000DB588(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v26 - 25) < 0)
  {
    operator delete(*(v26 - 48));
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  _Unwind_Resume(exception_object);
}

const char *sub_1000DB5EC(unsigned int a1)
{
  if (a1 > 0x10)
  {
    return "unknown token";
  }

  else
  {
    return off_1002AFF00[a1];
  }
}

uint64_t sub_1000DB610(uint64_t a1)
{
  sub_1000D3F90((a1 + 144), *(a1 + 136));
  sub_1000D3F10(a1 + 96);
  v2 = *(a1 + 56);
  if (v2)
  {
    operator delete(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_1000DB670(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v20 = v9;
    sub_1000D4830(&v21, v9);
    v10 = *a1;
    v11 = **a1;
    *v10 = v20;
    v20 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v21;
    v21 = v12;
    sub_1000D3F90(&v21, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1000DB7A0(v5, a2);
      }

      else
      {
        v7 = *a2;
        *v6 = v7;
        sub_1000D4830((v6 + 8), v7);
        v8 = v6 + 16;
        *(v5 + 8) = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v18 = v14;
      sub_1000D4830(&v19, v14);
      v15 = a1[4];
      v16 = *v15;
      *v15 = v18;
      v17 = *(v15 + 1);
      *(v15 + 1) = v19;
      v19 = v17;
      sub_1000D3F90(&v19, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1000DB7A0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v18 = a1;
  if (v7)
  {
    sub_1000D44D8(a1, v7);
  }

  v15 = 0;
  v16 = (16 * v2);
  v17 = (16 * v2);
  v8 = *a2;
  *v16 = v8;
  sub_1000D4830((16 * v2 + 8), v8);
  *&v17 = v17 + 16;
  v9 = *(a1 + 8);
  v10 = &v16[*a1 - v9];
  sub_1000D4520(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_1000D4600(&v15);
  return v14;
}

void sub_1000DB8A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DB8B4(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 7;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1000D3F90(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1000DB9B4(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 7;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 7;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1000D3F90(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1000DB9B4(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1000D44D8(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 7;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_1000D4520(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000D4600(&v16);
  return v15;
}

void sub_1000DBAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBAC8(unsigned __int8 **a1, unsigned __int8 *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 4;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1000D3F90(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1000DBBC8(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 4;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 4;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1000D3F90(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1000DBBC8(uint64_t a1, unsigned __int8 *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1000D44D8(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 4;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_1000D4520(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000D4600(&v16);
  return v15;
}

void sub_1000DBCC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBCDC(unsigned __int8 **a1)
{
  v2 = a1[2];
  if (a1[1] == v2)
  {
    v7 = *a1;
    v8 = **a1;
    *v7 = 0;
    v15 = v8;
    v9 = *(v7 + 8);
    *(v7 + 8) = 0;
    v16 = v9;
    sub_1000D3F90(&v16, v8);
    return *a1;
  }

  else
  {
    v3 = *(v2 - 1);
    if (*v3 == 2)
    {
      v4 = *(v3 + 8);
      v5 = *(v4 + 8);
      if (v5 >= *(v4 + 16))
      {
        v6 = sub_1000DBDC0(v4);
      }

      else
      {
        *v5 = 0;
        *(v5 + 8) = 0;
        v6 = v5 + 16;
      }

      *(v4 + 8) = v6;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v11 = a1[4];
      v12 = *v11;
      *v11 = 0;
      v13 = *(v11 + 1);
      *(v11 + 1) = 0;
      v14 = v13;
      sub_1000D3F90(&v14, v12);
      return a1[4];
    }
  }
}

uint64_t sub_1000DBDC0(uint64_t a1)
{
  v1 = (*(a1 + 8) - *a1) >> 4;
  v2 = v1 + 1;
  if ((v1 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v4 = *(a1 + 16) - *a1;
  if (v4 >> 3 > v2)
  {
    v2 = v4 >> 3;
  }

  if (v4 >= 0x7FFFFFFFFFFFFFF0)
  {
    v5 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = v2;
  }

  v16 = a1;
  if (v5)
  {
    sub_1000D44D8(a1, v5);
  }

  v6 = 16 * v1;
  v13 = 0;
  v14 = v6;
  *(&v15 + 1) = 0;
  *v6 = 0;
  *(v6 + 8) = 0;
  *&v15 = 16 * v1 + 16;
  v7 = *(a1 + 8);
  v8 = 16 * v1 + *a1 - v7;
  sub_1000D4520(a1, *a1, v7, v6 + *a1 - v7);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_1000D4600(&v13);
  return v12;
}

void sub_1000DBEA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DBEBC(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 5;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1000D3F90(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1000DBFBC(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 5;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 5;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1000D3F90(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1000DBFBC(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1000D44D8(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 5;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_1000D4520(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000D4600(&v16);
  return v15;
}

void sub_1000DC0BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

void sub_1000DC0D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (*(a1 + 8) != v1)
  {
    v2 = *(v1 - 8);
    if (*v2 == 2)
    {
      v3 = *(v2 + 8);
      v4 = v3[1];
      if (v4 < v3[2])
      {
        *(v4 + 8) = 0;
        *v4 = 3;
        sub_1000D55B8();
      }

      sub_1000DC1F0(v3);
    }

    sub_1000D55B8();
  }

  sub_1000D55B8();
}

void sub_1000DC1F0(void *a1)
{
  v1 = (a1[1] - *a1) >> 4;
  v2 = v1 + 1;
  if (!((v1 + 1) >> 60))
  {
    v3 = a1[2] - *a1;
    if (v3 >> 3 > v2)
    {
      v2 = v3 >> 3;
    }

    if (v3 >= 0x7FFFFFFFFFFFFFF0)
    {
      v4 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v4 = v2;
    }

    v8 = a1;
    if (v4)
    {
      sub_1000D44D8(a1, v4);
    }

    v5 = 16 * v1;
    v6 = v5;
    v7 = v5;
    *(v5 + 8) = 0;
    *v5 = 3;
    sub_1000D55B8();
  }

  sub_100033FD0();
}

void sub_1000DC2F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DC308(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = a1[2];
  if (a1[1] == v3)
  {
    v9 = *a2;
    v10 = *a1;
    v11 = **a1;
    *v10 = 6;
    v19 = v11;
    v12 = *(v10 + 8);
    *(v10 + 8) = v9;
    v20 = v12;
    sub_1000D3F90(&v20, v11);
    return *a1;
  }

  else
  {
    v4 = *(v3 - 1);
    if (*v4 == 2)
    {
      v5 = *(v4 + 8);
      v6 = *(v5 + 8);
      if (v6 >= *(v5 + 16))
      {
        v8 = sub_1000DC408(v5, a2);
      }

      else
      {
        *(v6 + 8) = 0;
        v7 = *a2;
        *v6 = 6;
        *(v6 + 8) = v7;
        v8 = v6 + 16;
      }

      *(v5 + 8) = v8;
      return *(*(*(a1[2] - 1) + 8) + 8) - 16;
    }

    else
    {
      v14 = *a2;
      v15 = a1[4];
      v16 = *v15;
      *v15 = 6;
      v17 = *(v15 + 1);
      *(v15 + 1) = v14;
      v18 = v17;
      sub_1000D3F90(&v18, v16);
      return a1[4];
    }
  }
}

uint64_t sub_1000DC408(uint64_t a1, uint64_t *a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_100033FD0();
  }

  v6 = *(a1 + 16) - *a1;
  if (v6 >> 3 > v3)
  {
    v3 = v6 >> 3;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFF0)
  {
    v7 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v19 = a1;
  if (v7)
  {
    sub_1000D44D8(a1, v7);
  }

  v8 = 16 * v2;
  v16 = 0;
  v17 = v8;
  *(&v18 + 1) = 0;
  *(v8 + 8) = 0;
  v9 = *a2;
  *v8 = 6;
  *(v8 + 8) = v9;
  *&v18 = 16 * v2 + 16;
  v10 = *(a1 + 8);
  v11 = 16 * v2 + *a1 - v10;
  sub_1000D4520(a1, *a1, v10, v11);
  v12 = *a1;
  *a1 = v11;
  v13 = *(a1 + 16);
  v15 = v18;
  *(a1 + 8) = v18;
  *&v18 = v12;
  *(&v18 + 1) = v13;
  v16 = v12;
  v17 = v12;
  sub_1000D4600(&v16);
  return v15;
}

void sub_1000DC508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000D4600(va);
  _Unwind_Resume(a1);
}

void sub_1000DC51C(unsigned __int8 **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  v2 = *(*v1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "#I Received a new Satellite Cell Classification model", buf, 2u);
  }

  sub_1000D4E30(buf, v1 + 8);
  sub_1000D14A0();
}

void sub_1000DC5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  sub_1000D3F90((v11 + 8), a11);
  sub_1000DC62C(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000DC62C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_1000D3F90((v1 + 16), *(v1 + 8));
    operator delete();
  }

  return result;
}

uint64_t sub_1000DC680()
{
  if ((byte_1002D4A50 & 1) == 0)
  {
    byte_1002D4A50 = 1;
    return __cxa_atexit(sub_100032AD4, &stru_1002D4A00, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000DC6BC()
{
  if ((byte_1002D4C60 & 1) == 0)
  {
    byte_1002D4C60 = 1;
    return __cxa_atexit(sub_10004F8F4, &stru_1002D4C10, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000DC6F8()
{
  if ((byte_1002D4AA8 & 1) == 0)
  {
    byte_1002D4AA8 = 1;
    return __cxa_atexit(sub_10004F8E0, &stru_1002D4A58, &_mh_execute_header);
  }

  return result;
}

uint64_t sub_1000DC734()
{
  if ((byte_1002D4880 & 1) == 0)
  {
    byte_1002D4880 = 1;
    return __cxa_atexit(sub_10002973C, &stru_1002D4830, &_mh_execute_header);
  }

  return result;
}

ctu::OsLogLogger *sub_1000DC7EC(ctu::OsLogLogger *a1)
{
  v2 = ctu::OsLogLogger::OsLogLogger(a1, (qword_1002DBE98 + 120));
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
  *(a1 + 3) = dispatch_queue_create("WISAbmClient", v3);
  sub_100007ECC(&__p, "wirelessinsightsd");
  v4 = *(a1 + 3);
  abm::client::CreateManager();
  if (v7 < 0)
  {
    operator delete(__p);
  }

  return a1;
}

void sub_1000DC884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  v17 = *(v15 + 3);
  if (v17)
  {
    dispatch_release(v17);
  }

  v18 = *(v15 + 2);
  if (v18)
  {
    std::__shared_weak_count::__release_weak(v18);
  }

  ctu::OsLogLogger::~OsLogLogger(v15);
  _Unwind_Resume(a1);
}

void sub_1000DC8C8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOn();
  if (v3)
  {
    sub_100008350(v3);
  }
}

void sub_1000DC918(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DC930(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::EventsOff();
  if (v3)
  {
    sub_100008350(v3);
  }
}

void sub_1000DC980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DC998(uint64_t a1@<X0>, char *a2@<X1>, NSObject **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *a3;
  v10 = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_1000DD4D0(v11, a4);
  sub_1000DCA80(a1, a2, &v10, v11, a5);
  sub_1000DD568(v11);
  if (v9)
  {
    dispatch_release(v9);
  }
}

void sub_1000DCA58(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000DD568(va);
  if (v2)
  {
    dispatch_release(v2);
  }

  _Unwind_Resume(a1);
}

void sub_1000DCA80(uint64_t a1@<X0>, char *a2@<X1>, NSObject **a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  *a5 = 0;
  v7 = *(a1 + 40);
  v11 = *(a1 + 32);
  v12 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100007ECC(&__p, a2);
  v13 = _NSConcreteStackBlock;
  v14 = 1174405120;
  v15 = sub_1000DCC14;
  v16 = &unk_1002AFF88;
  v8 = *a3;
  v17 = v8;
  if (v8)
  {
    dispatch_retain(v8);
  }

  object = 0;
  sub_1000DD4D0(v19, a4);
  abm::client::RegisterEventHandler();
  if (v10 < 0)
  {
    operator delete(__p);
  }

  if (v12)
  {
    sub_100008350(v12);
  }

  sub_1000DD568(v19);
  if (object)
  {
    dispatch_release(object);
  }

  if (v17)
  {
    dispatch_release(v17);
  }
}

void sub_1000DCBBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, dispatch_object_t a21, dispatch_object_t object)
{
  sub_1000DD568(v22 + 48);
  if (object)
  {
    dispatch_release(object);
  }

  if (a21)
  {
    dispatch_release(a21);
  }

  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a16)
  {
    sub_100008350(a16);
  }

  _Unwind_Resume(a1);
}

void sub_1000DCC14(uint64_t a1, xpc_object_t object)
{
  if (object)
  {
    v3 = object;
    xpc_retain(object);
  }

  else
  {
    v3 = xpc_null_create();
  }

  sub_1000DD4D0(v7, a1 + 48);
  v8 = v3;
  if (v3)
  {
    xpc_retain(v3);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v4 = *(a1 + 40);
  objecta = v4;
  if (v4)
  {
    dispatch_retain(v4);
    v5 = *(a1 + 40);
    group = v5;
    if (v5)
    {
      dispatch_retain(v5);
      if (group)
      {
        dispatch_group_enter(group);
      }
    }
  }

  else
  {
    group = 0;
  }

  v6 = *(a1 + 32);
  operator new();
}

void sub_1000DCDAC(_Unwind_Exception *exception_object, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10002205C(exception_object);
}

uint64_t sub_1000DCDEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 40) = v5;
  if (v5)
  {
    dispatch_retain(v5);
  }

  return sub_1000DD4D0(a1 + 48, a2 + 48);
}

void sub_1000DCE3C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 40);
  if (v3)
  {
    dispatch_release(v3);
  }

  v4 = *(v1 + 32);
  if (v4)
  {
    dispatch_release(v4);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DCE60(uint64_t a1)
{
  sub_1000DD568(a1 + 48);
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    dispatch_release(v3);
  }
}

void sub_1000DCEB8(uint64_t a1, char *a2, uint64_t *a3, NSObject **a4, uint64_t a5)
{
  v8 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  sub_100007ECC(&__p, a2);
  v15 = _NSConcreteStackBlock;
  v16 = 1174405120;
  v17 = sub_1000DD02C;
  v18 = &unk_1002AFFB8;
  v9 = *a4;
  object = v9;
  if (v9)
  {
    dispatch_retain(v9);
  }

  sub_1000DD74C(v20, a5);
  v10 = *a3;
  abm::client::PerformCommand();
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v14)
  {
    sub_100008350(v14);
  }

  sub_1000DD7E4(v20);
  if (object)
  {
    dispatch_release(object);
  }
}

void sub_1000DCFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, dispatch_object_t object)
{
  sub_1000DD7E4(v22 + 40);
  if (object)
  {
    dispatch_release(object);
  }

  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a17)
  {
    sub_100008350(a17);
  }

  _Unwind_Resume(a1);
}

void sub_1000DD02C(uint64_t a1, int *a2, xpc_object_t object)
{
  if (object)
  {
    v5 = object;
    xpc_retain(object);
  }

  else
  {
    v5 = xpc_null_create();
  }

  sub_1000DD74C(v7, a1 + 40);
  v8 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_10000FFF8(__p, *(a2 + 1), *(a2 + 2));
  }

  else
  {
    *__p = *(a2 + 2);
    __p[2] = *(a2 + 3);
  }

  objecta = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    objecta = xpc_null_create();
  }

  v6 = *(a1 + 32);
  operator new();
}

void sub_1000DD1B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_1000DD7E4(va);
  xpc_release(v3);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DD204(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  *(a1 + 32) = v4;
  if (v4)
  {
    dispatch_retain(v4);
  }

  return sub_1000DD74C(a1 + 40, a2 + 40);
}

void sub_1000DD244(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    dispatch_release(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DD25C(uint64_t a1)
{
  sub_1000DD7E4(a1 + 40);
  v2 = *(a1 + 32);
  if (v2)
  {

    dispatch_release(v2);
  }
}

BOOL sub_1000DD2A8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = *(a1 + 32);
  v4 = v1;
  if (v1)
  {
    atomic_fetch_add_explicit(&v1->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  abm::client::GetBasebandBootState();
  if (v4)
  {
    sub_100008350(v4);
  }

  if (v7 < 0)
  {
    operator delete(__p);
  }

  return v5 == 0;
}

void sub_1000DD318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100008350(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DD3B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1000DD45C(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DD3DC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000DD41C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000DD45C(int a1, ctu::OsLogLogger *this)
{
  if (this)
  {
    v3 = *(this + 5);
    if (v3)
    {
      sub_100008350(v3);
    }

    v4 = *(this + 3);
    if (v4)
    {
      dispatch_release(v4);
    }

    v5 = *(this + 2);
    if (v5)
    {
      std::__shared_weak_count::__release_weak(v5);
    }

    ctu::OsLogLogger::~OsLogLogger(this);

    operator delete();
  }
}

uint64_t sub_1000DD4D0(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000DD568(uint64_t a1)
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

uint64_t *sub_1000DD5E8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 48);
    if (v2)
    {
      dispatch_group_leave(v2);
      v3 = *(v1 + 48);
      if (v3)
      {
        dispatch_release(v3);
      }
    }

    v4 = *(v1 + 40);
    if (v4)
    {
      dispatch_release(v4);
    }

    xpc_release(*(v1 + 32));
    *(v1 + 32) = 0;
    sub_1000DD568(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_1000DD668(void *a1)
{
  v6 = a1;
  v2 = a1[4];
  v8 = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    v8 = xpc_null_create();
  }

  v3 = a1[5];
  object = v3;
  if (v3)
  {
    dispatch_retain(v3);
  }

  v4 = a1[3];
  if (!v4)
  {
    sub_1000334A4();
  }

  (*(*v4 + 48))(v4, &v8, &object);
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(v8);
  return sub_1000DD5E8(&v6);
}

void sub_1000DD720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_object_t object, xpc_object_t a12)
{
  if (object)
  {
    dispatch_release(object);
  }

  xpc_release(a12);
  sub_1000DD5E8(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1000DD74C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000DD7E4(uint64_t a1)
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

uint64_t *sub_1000DD864(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    xpc_release(*(v1 + 64));
    *(v1 + 64) = 0;
    if (*(v1 + 63) < 0)
    {
      operator delete(*(v1 + 40));
    }

    sub_1000DD7E4(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_1000DD8D0(uint64_t a1)
{
  v5 = a1;
  v7 = *(a1 + 32);
  if (*(a1 + 63) < 0)
  {
    sub_10000FFF8(&__p, *(a1 + 40), *(a1 + 48));
  }

  else
  {
    __p = *(a1 + 40);
    v9 = *(a1 + 56);
  }

  v2 = *(a1 + 64);
  object = v2;
  if (v2)
  {
    xpc_retain(v2);
  }

  else
  {
    object = xpc_null_create();
  }

  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000334A4();
  }

  (*(*v3 + 48))(v3, &v7, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p);
  }

  return sub_1000DD864(&v5);
}

void sub_1000DD9F0(void *a1@<X8>)
{
  sub_100007ECC(v5, "/var/wireless/wirelessinsightsd");
  ctu::path_join_impl();
  v7 = 1;
  v8 = *v5;
  v9 = v6;
  v5[0] = 0;
  v5[1] = 0;
  v6 = 0;
  sub_100007ECC(__p, "/AppleInternal/Library/wirelessinsightsd");
  ctu::path_join_impl();
  v10 = 0;
  v11 = *__p;
  v12 = v4;
  __p[0] = 0;
  __p[1] = 0;
  v4 = 0;
  sub_1000DDE74(a1, &v7, 2);
  for (i = 0; i != -64; i -= 32)
  {
    if (*(&v12 + i + 7) < 0)
    {
      operator delete(*(&v11 + i));
    }
  }

  if (SHIBYTE(v4) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v6) < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_1000DDB24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  v30 = v28 + 40;
  v31 = -64;
  while (1)
  {
    if (*(v30 + 23) < 0)
    {
      operator delete(*v30);
    }

    v30 -= 32;
    v31 += 32;
    if (!v31)
    {
      if (a15 < 0)
      {
        operator delete(__p);
      }

      if (a21 < 0)
      {
        operator delete(a16);
      }

      _Unwind_Resume(exception_object);
    }
  }
}

uint64_t sub_1000DDC00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 23) < 0)
  {
    sub_10000FFF8(a2, *a1, *(a1 + 8));
  }

  else
  {
    *a2 = *a1;
    *(a2 + 16) = *(a1 + 16);
  }

  return ctu::path_join_impl();
}

void sub_1000DDC58(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DDC74(uint64_t a1@<X8>)
{
  v2 = 0;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  do
  {
    sub_100007ECC(v21, "/var");
    v3 = off_1002B0060[v2];
    ctu::path_join_impl();
    sub_1000DDC00(v21, __p);
    v5 = *(a1 + 8);
    v4 = *(a1 + 16);
    if (v5 >= v4)
    {
      v7 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 3);
      v8 = v7 + 1;
      if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        sub_100033FD0();
      }

      v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
      if (2 * v9 > v8)
      {
        v8 = 2 * v9;
      }

      if (v9 >= 0x555555555555555)
      {
        v10 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v8;
      }

      v23[4] = a1;
      if (v10)
      {
        sub_100038714(a1, v10);
      }

      v11 = 24 * v7;
      v12 = *__p;
      *(v11 + 16) = v20;
      *v11 = v12;
      __p[1] = 0;
      v20 = 0;
      __p[0] = 0;
      v13 = 24 * v7 + 24;
      v14 = *(a1 + 8) - *a1;
      v15 = 24 * v7 - v14;
      memcpy((v11 - v14), *a1, v14);
      v16 = *a1;
      *a1 = v15;
      *(a1 + 8) = v13;
      v17 = *(a1 + 16);
      *(a1 + 16) = 0;
      v23[2] = v16;
      v23[3] = v17;
      v23[0] = v16;
      v23[1] = v16;
      sub_10003876C(v23);
      v18 = SHIBYTE(v20);
      *(a1 + 8) = v13;
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    else
    {
      v6 = *__p;
      *(v5 + 16) = v20;
      *v5 = v6;
      *(a1 + 8) = v5 + 24;
    }

    if (v22 < 0)
    {
      operator delete(v21[0]);
    }

    ++v2;
  }

  while (v2 != 3);
}

void sub_1000DDE24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  sub_1000388A4(&a16);
  _Unwind_Resume(a1);
}

void *sub_1000DDE74(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 32 * a3;
    do
    {
      sub_1000DDEF4(a1, v4, a2);
      a2 += 8;
      v6 -= 32;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_1000DDEF4(void *a1, uint64_t *a2, int *a3)
{
  result = *sub_1000DDF78(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_1000DE120();
  }

  return result;
}

uint64_t *sub_1000DDF78(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, int *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = v9[1];
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = a1 + 1;
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = a1 + 1;
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void sub_1000DE1BC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1000DE1D8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1000DE1D8(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void *sub_1000DE23C(void *a1, void *a2)
{
  result = sub_1000DE290(a1, "Persistence", QOS_CLASS_DEFAULT, "persist");
  v4 = a2[1];
  result[6] = *a2;
  result[7] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  result[8] = 0;
  result[9] = 0;
  return result;
}

void *sub_1000DE290(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
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

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void *sub_1000DE338(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    sqlite3_close_v2(v2);
    a1[5] = 0;
  }

  v3 = a1[9];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    sub_100008350(v5);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 4));

  return sub_100032AD8(a1);
}

void sub_1000DE3B8(uint64_t a1)
{
  (*(**(a1 + 48) + 16))(*(a1 + 48));
  v2 = sub_1000DE528(a1);
  if ((*(**(a1 + 48) + 24))(*(a1 + 48), @"filename"))
  {
    v3 = *(a1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(__p) = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "persist:#N Found old 'filename' key, forcing a reload of the config.", &__p, 2u);
    }
  }

  else if (!v2)
  {
    return;
  }

  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(__p) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "persist:#N Forcing a load of configuration", &__p, 2u);
  }

  __p = 0;
  v6 = 0;
  v7 = 0;
  sub_1000DE7A8(&__p, &off_1002B0098);
  sub_1000DE7A8(&__p, off_1002B0090);
  sub_1000DE87C(a1, &__p);
  if (__p)
  {
    v6 = __p;
    operator delete(__p);
  }
}

void sub_1000DE50C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_1000DE528(uint64_t a1)
{
  sub_10009296C(__p);
  if (v15 >= 0)
  {
    v2 = __p;
  }

  else
  {
    v2 = __p[0];
  }

  if (sqlite3_open_v2(v2, (a1 + 40), 2, 0))
  {
    v3 = *(a1 + 32);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "persist:#N DB does not exist.", buf, 2u);
    }

    sub_1000DE918();
  }

  *buf = 0;
  v11 = buf;
  v12 = 0x2000000000;
  v13 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1000DEAD0;
  v9[3] = &unk_1002B00A8;
  v9[4] = buf;
  sub_10000927C(a1, "PRAGMA user_version;", v9, 0, 0, 0);
  v4 = *(v11 + 6);
  v5 = *(a1 + 32);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4 != 1)
  {
    if (v6)
    {
      *v16 = 67109376;
      v17 = v4;
      v18 = 1024;
      v19 = 1;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "persist:#N DB exists but version %d does not match expected version %d.", v16, 0xEu);
    }

    v7 = *(a1 + 40);
    if (v7)
    {
      sqlite3_close_v2(v7);
      *(a1 + 40) = 0;
    }

    sub_1000929F8();
    sub_1000DE918();
  }

  if (v6)
  {
    *v16 = 67109120;
    v17 = 1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "persist:#N DB opened successfully as version %d.", v16, 8u);
  }

  _Block_object_dispose(buf, 8);
  if (v15 < 0)
  {
    operator delete(__p[0]);
  }

  return v4 != 1;
}

void sub_1000DE770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  _Block_object_dispose(&a15, 8);
  if (a25 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1000DE7A8(uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      sub_100033FD0();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      sub_1000962C4(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t sub_1000DE87C(uint64_t a1, uint64_t **a2)
{
  v3 = *a2;
  v4 = a2[1];
  while (v3 != v4)
  {
    v5 = *v3++;
    (*(**(a1 + 48) + 40))(*(a1 + 48), v5, 0);
  }

  v6 = *(**(a1 + 48) + 16);

  return v6();
}

void sub_1000DEA84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  v22 = *(v20 - 24);
  if (v22)
  {
    sub_100008350(v22);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000DEAD0(uint64_t a1, sqlite3_stmt *a2)
{
  result = sqlite3_column_int(a2, 0);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t sub_1000DEB08(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = a2;
    v21 = 1024;
    v22 = a3;
    v23 = 2048;
    v24 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "persist:#I Inserting into triggers table (trid=0x%x, cid=0x%x, %lld sec)", buf, 0x18u);
  }

  sub_1000DEE74(buf);
  v9 = sub_100008EEC(&v24, "INSERT INTO triggers (trigger, component, longesttime) VALUES (", 63);
  *(v9 + *(*v9 - 24) + 8) = *(v9 + *(*v9 - 24) + 8) & 0xFFFFFFB5 | 2;
  v10 = std::ostream::operator<<();
  v11 = sub_100008EEC(v10, ",", 1);
  *(v11 + *(*v11 - 24) + 8) = *(v11 + *(*v11 - 24) + 8) & 0xFFFFFFB5 | 2;
  v12 = std::ostream::operator<<();
  v13 = sub_100008EEC(v12, ",", 1);
  *(v13 + *(*v13 - 24) + 8) = *(v13 + *(*v13 - 24) + 8) & 0xFFFFFFB5 | 2;
  v14 = std::ostream::operator<<();
  sub_100008EEC(v14, ");", 2);
  std::stringbuf::str();
  if (v19 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  sub_10000927C(a1, p_p, 0, 0, 0, 0);
  if (v19 < 0)
  {
    operator delete(__p);
  }

  v24 = v16;
  if (v27 < 0)
  {
    operator delete(v26[7].__locale_);
  }

  std::locale::~locale(v26);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1000DEE3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000DF118(&a16);
  _Unwind_Resume(a1);
}

void (__cdecl ***sub_1000DEE74(void (__cdecl ***a1)(std::basic_stringstream<char> *__hidden this)))(std::basic_stringstream<char> *__hidden this)
{
  a1[22] = 0;
  v2 = a1 + 2;
  *a1 = v4;
  *(*(v4 - 3) + a1) = v3;
  a1[1] = 0;
  v5 = (*(*a1 - 3) + a1);
  std::ios_base::init(v5, a1 + 3);
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  a1[2] = v7;
  *(*(v7 - 3) + v2) = v6;
  *a1 = v8;
  sub_10000A5B4((a1 + 3), 24);
  return a1;
}

void sub_1000DF0F0(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000DF118(uint64_t a1)
{
  *(a1 + 16) = v3;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  std::locale::~locale((a1 + 32));
  std::iostream::~basic_iostream();
  std::ios::~ios();
  return a1;
}

void sub_1000DF3F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, int a21, __int16 a22, char a23, char a24)
{
  if (a24 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DF424(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "persist:#N Truncating triggers table", v3, 2u);
  }

  sub_10000927C(a1, "DELETE FROM triggers;", 0, 0, 0, 0);
}

void sub_1000DF4A8(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "persist:#N Truncating component configurations table.", v3, 2u);
  }

  sub_10000927C(a1, "DELETE FROM ccs;", 0, 0, 0, 0);
}

void sub_1000DF52C(uint64_t a1, int a2)
{
  v3 = a2;
  sub_100007ECC(__p, "Persist-createCC");
  sub_100008BF8(__p);
}

void sub_1000DF698(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000DF6B4(uint64_t a1, char a2)
{
  v3 = a2;
  sub_100007ECC(__p, "Persist-setPII");
  sub_100008BF8(__p);
}

void sub_1000DF784(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000DF7A0(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E29AC;
  v5[3] = &unk_1002B02B8;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2AAC;
    v10 = &unk_1002B02F8;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2A70;
    v10 = &unk_1002B02D8;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 & 1;
}

void sub_1000DF8C8(uint64_t a1, char a2)
{
  v3 = a2;
  sub_100007ECC(__p, "Persist-setShim");
  sub_100008BF8(__p);
}

void sub_1000DF998(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000DF9B4(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E2B40;
  v5[3] = &unk_1002B0338;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2C50;
    v10 = &unk_1002B0378;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2C14;
    v10 = &unk_1002B0358;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t sub_1000DFAD8(uint64_t a1)
{
  if (static xpc_event_publisher_action_t.remove.getter())
  {
    v5 = a1;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 0x40000000;
    v6[2] = sub_1000E2C8C;
    v6[3] = &unk_1002B0398;
    v6[4] = a1;
    v6[5] = &v5;
    v7 = v6;
    v2 = *(a1 + 16);
    if (*(a1 + 24))
    {
      v14 = 0;
      block = _NSConcreteStackBlock;
      v9 = 0x40000000;
      v10 = sub_1000E2D8C;
      v11 = &unk_1002B03D8;
      v12 = &v14;
      v13 = &v7;
      dispatch_async_and_wait(v2, &block);
    }

    else
    {
      v14 = 0;
      block = _NSConcreteStackBlock;
      v9 = 0x40000000;
      v10 = sub_1000E2D50;
      v11 = &unk_1002B03B8;
      v12 = &v14;
      v13 = &v7;
      dispatch_sync(v2, &block);
    }

    v3 = v14;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1000DFC1C(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E2DC8;
  v5[3] = &unk_1002B03F8;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2E1C;
    v10 = &unk_1002B0438;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2DE0;
    v10 = &unk_1002B0418;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t sub_1000DFD40(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E2E58;
  v5[3] = &unk_1002B0458;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2E1C;
    v10 = &unk_1002B0438;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2DE0;
    v10 = &unk_1002B0418;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t sub_1000DFE64(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E2E70;
  v5[3] = &unk_1002B0478;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2E1C;
    v10 = &unk_1002B0438;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2DE0;
    v10 = &unk_1002B0418;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_1000DFF88(uint64_t a1)
{
  v3 = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000E2ECC;
  block[3] = &unk_1002B0498;
  block[4] = a1;
  block[5] = &v3;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    dispatch_async_and_wait(v1, block);
  }

  else
  {
    dispatch_sync(v1, block);
  }
}

uint64_t sub_1000E0008(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E2F24;
  v5[3] = &unk_1002B04B8;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2F78;
    v10 = &unk_1002B04F8;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2F3C;
    v10 = &unk_1002B04D8;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t sub_1000E012C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(**(a1 + 48) + 48))(&cf);
  sub_10006394C(&v7, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  LODWORD(cf) = a3;
  if (v7)
  {
    ctu::cf::assign(&cf, v7, v4);
    a3 = cf;
    if (v7)
    {
      CFRelease(v7);
    }
  }

  return a3;
}

void sub_1000E01C4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000E11A0(va);
  _Unwind_Resume(a1);
}

void sub_1000E01EC(uint64_t a1, uint64_t a2, int a3)
{
  valuePtr = a3;
  v5 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  memset(buf, 0, sizeof(buf));
  ctu::cf::assign();
  *__p = *buf;
  v9 = *&buf[16];
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = __p;
    if (v9 < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315394;
    *&buf[4] = v7;
    *&buf[12] = 1024;
    *&buf[14] = valuePtr;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "persist:#I Setting %s to %d", buf, 0x12u);
  }

  if (v5)
  {
    (*(**(a1 + 48) + 32))(*(a1 + 48), a2, v5);
    CFRelease(v5);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1000E0340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E03C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E054C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, std::__shared_weak_count *a21)
{
  if (a21)
  {
    sub_100008350(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E0584(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E31EC;
  v5[3] = &unk_1002B0518;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E33B0;
    v10 = &unk_1002B0558;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E334C;
    v10 = &unk_1002B0538;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_1000E06A4(uint64_t a1, int a2)
{
  v5 = a2;
  v4[0] = a1;
  v4[1] = &v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000E3414;
  block[3] = &unk_1002B0578;
  block[4] = a1;
  block[5] = v4;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

BOOL sub_1000E0730(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E342C;
  v5[3] = &unk_1002B0598;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2F78;
    v10 = &unk_1002B04F8;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2F3C;
    v10 = &unk_1002B04D8;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13 != 0;
}

void sub_1000E085C(uint64_t a1, int a2)
{
  v5 = a2;
  v4[0] = a1;
  v4[1] = &v5;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000E3444;
  block[3] = &unk_1002B05B8;
  block[4] = a1;
  block[5] = v4;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

uint64_t sub_1000E08E8(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E345C;
  v5[3] = &unk_1002B05D8;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2E1C;
    v10 = &unk_1002B0438;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2DE0;
    v10 = &unk_1002B0418;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_1000E0A0C(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v7 = a2;
  v6 = a3;
  v5 = a4;
  sub_100007ECC(__p, "Persist-addTimer");
  sub_100008BF8(__p);
}

void sub_1000E0AF0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E0BD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E0BF0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E38AC;
  v5[3] = &unk_1002B0638;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    *a2 = 0;
    a2[1] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E3E9C;
    v10 = &unk_1002B06F0;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E3E34;
    v10 = &unk_1002B06D0;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_1000E0D08(uint64_t a1, void *a2)
{
  __p[5] = a2;
  sub_100007ECC(__p, "Persist-setBT");
  sub_100008BF8(__p);
}

void sub_1000E0DD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E0DF4(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E3F9C;
  v5[3] = &unk_1002B0730;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E40AC;
    v10 = &unk_1002B0770;
    v11 = &v13;
    v12 = &v6;
    v13 = 0;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E4070;
    v10 = &unk_1002B0750;
    v11 = &v13;
    v12 = &v6;
    v13 = 0;
    dispatch_sync(v1, &block);
  }

  return v13;
}

uint64_t sub_1000E0F18(uint64_t a1)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E40E8;
  v5[3] = &unk_1002B0790;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v2 = a1 + 16;
  v1 = *(a1 + 16);
  if (*(v2 + 8))
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2E1C;
    v10 = &unk_1002B0438;
    v11 = &v13;
    v12 = &v6;
    dispatch_async_and_wait(v1, &block);
  }

  else
  {
    v13 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E2DE0;
    v10 = &unk_1002B0418;
    v11 = &v13;
    v12 = &v6;
    dispatch_sync(v1, &block);
  }

  return v13;
}

void sub_1000E1108(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1000E1124(uint64_t a1, unsigned int a2)
{
  v4 = sub_1000E012C(a1, @"uniquefilenumber", 1);
  sub_1000E01EC(a1, @"uniquefilenumber", v4 + 1);
  v5 = static xpc_event_publisher_action_t.add.getter();

  return sub_1000E1310(a1, a2, v4, v5);
}

const void **sub_1000E11A0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

uint64_t sub_1000E11D4(uint64_t a1, unsigned int a2)
{
  v6 = a2;
  if (a2 > 3)
  {
    return 0;
  }

  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1000E4374;
  v7[3] = &unk_1002B0890;
  v7[4] = a1;
  v7[5] = v5;
  v8 = v7;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000E4338;
    v12 = &unk_1002B0870;
    v13 = &v15;
    v14 = &v8;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_10001C504;
    v12 = &unk_1002B0850;
    v13 = &v15;
    v14 = &v8;
    dispatch_sync(v2, &block);
  }

  return v15;
}

uint64_t sub_1000E1310(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  valuePtr = a3;
  v17 = a4;
  if (a2 > 3)
  {
    return 0;
  }

  v4 = a4;
  v5 = a3;
  v7 = off_1002B0AA8[a2];
  sub_10001D7BC(a1);
  Value = CFDictionaryGetValue(*(a1 + 72), v7);
  sub_10001D8C4(&cf, &Value);
  if (!cf)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v9 = cf;
    cf = Mutable;
    if (v9)
    {
      CFRelease(v9);
      Mutable = cf;
    }

    CFDictionarySetValue(*(a1 + 72), v7, Mutable);
  }

  if (v5)
  {
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    Value = v10;
    CFDictionarySetValue(cf, @"id", v10);
    if (v10)
    {
      CFRelease(v10);
    }

    v4 = v17;
  }

  if (v4 != 0xFFFFFFFFLL)
  {
    v11 = CFNumberCreate(0, kCFNumberSInt64Type, &v17);
    Value = v11;
    CFDictionarySetValue(cf, @"mask", v11);
    if (v11)
    {
      CFRelease(v11);
    }
  }

  (*(**(a1 + 48) + 32))(*(a1 + 48), @"filestate", *(a1 + 72));
  v12 = valuePtr;
  if (cf)
  {
    CFRelease(cf);
  }

  return v12;
}

void sub_1000E14B0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100057174(va);
  _Unwind_Resume(a1);
}

const void **sub_1000E14EC(const void **a1, const void **a2)
{
  v3 = *a1;
  *a1 = *a2;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

const void **sub_1000E1528(const void **a1, CFTypeRef *a2)
{
  sub_1000E4384(&v5, a2);
  v3 = *a1;
  *a1 = v5;
  v5 = v3;
  if (v3)
  {
    CFRelease(v3);
  }

  return a1;
}

void sub_1000E1578(uint64_t a1, char a2, void *a3)
{
  v7 = a2;
  v6 = *a3;
  v5[0] = a1;
  v5[1] = &v7;
  v5[2] = &v6;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000E43F0;
  block[3] = &unk_1002B08B0;
  block[4] = a1;
  block[5] = v5;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    dispatch_async_and_wait(v3, block);
  }

  else
  {
    dispatch_sync(v3, block);
  }
}

void sub_1000E1614(uint64_t a1, uint64_t a2)
{
  v4[0] = a1;
  v4[1] = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000E440C;
  block[3] = &unk_1002B08D0;
  block[4] = a1;
  block[5] = v4;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

void sub_1000E1698(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E45C0;
  v5[3] = &unk_1002B08F0;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E47A4;
    v10 = &unk_1002B0930;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E46F8;
    v10 = &unk_1002B0910;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_1000E17E4(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(**(a1 + 48) + 48))(&cf);
  sub_100067EE0(a2, &cf);
  if (cf)
  {
    CFRelease(cf);
  }
}

void sub_1000E185C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006703C(va);
  _Unwind_Resume(a1);
}

void sub_1000E1870(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = a1;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 0x40000000;
  v5[2] = sub_1000E4884;
  v5[3] = &unk_1002B0950;
  v5[4] = a1;
  v5[5] = &v4;
  v6 = v5;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E47A4;
    v10 = &unk_1002B0930;
    v11 = a2;
    v12 = &v6;
    dispatch_async_and_wait(v2, &block);
  }

  else
  {
    *a2 = 0;
    block = _NSConcreteStackBlock;
    v8 = 0x40000000;
    v9 = sub_1000E46F8;
    v10 = &unk_1002B0910;
    v11 = a2;
    v12 = &v6;
    dispatch_sync(v2, &block);
  }
}

void sub_1000E1988(uint64_t a1, uint64_t a2)
{
  v4[0] = a2;
  v4[1] = a1;
  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_1000E4A58;
  block[3] = &unk_1002B0970;
  block[4] = a1;
  block[5] = v4;
  v3 = a1 + 16;
  v2 = *(a1 + 16);
  if (*(v3 + 8))
  {
    dispatch_async_and_wait(v2, block);
  }

  else
  {
    dispatch_sync(v2, block);
  }
}

uint64_t sub_1000E1A0C(uint64_t a1, int a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = *(a3 + 23);
    if ((v7 & 0x80u) != 0)
    {
      v7 = *(a3 + 8);
    }

    *buf = 67109376;
    *&buf[4] = a2;
    LOWORD(v16[0]) = 2048;
    *(v16 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "persist:#I Inserting into component configuration table for cid 0x%x; config has size %zd", buf, 0x12u);
  }

  sub_10000A448(buf);
  v8 = sub_100008EEC(buf, "INSERT INTO ccs (component, configuration) VALUES (", 51);
  *(v8 + *(*v8 - 24) + 8) = *(v8 + *(*v8 - 24) + 8) & 0xFFFFFFB5 | 2;
  v9 = std::ostream::operator<<();
  sub_100008EEC(v9, ", ?1);", 6);
  std::stringbuf::str();
  if (v14 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_1000E1D04;
  v12[3] = &unk_1002B00F8;
  v12[4] = a3;
  sub_10000927C(a1, p_p, 0, v12, 0, 0);
  if (v14 < 0)
  {
    operator delete(__p);
  }

  if (v17 < 0)
  {
    operator delete(v16[8]);
  }

  std::locale::~locale(&v16[1]);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_1000E1CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  sub_100039C48(&a20);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E1D04(uint64_t a1, sqlite3_stmt *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 23);
  if (v3 < 0)
  {
    v2 = *v2;
    v3 = *(*(a1 + 32) + 8);
  }

  return sqlite3_bind_blob(a2, 1, v2, v3, 0xFFFFFFFFFFFFFFFFLL);
}

void sub_1000E1D24(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = *(a1 + 32);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 67109120;
    *&buf[4] = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "persist:#I Reading from component configuration table for cid 0x%x", buf, 8u);
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x3802000000;
  v19 = sub_1000E2138;
  v21 = 0;
  v22 = 0;
  v20 = sub_1000E2148;
  sub_1000DEE74(buf);
  v7 = sub_100008EEC(&v28, "SELECT * FROM ccs WHERE component = ", 36);
  *(v7 + *(*v7 - 24) + 8) = *(v7 + *(*v7 - 24) + 8) & 0xFFFFFFB5 | 2;
  v8 = std::ostream::operator<<();
  sub_100008EEC(v8, ";", 1);
  std::stringbuf::str();
  if (v26 >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 0x40000000;
  v14[2] = sub_1000E2158;
  v14[3] = &unk_1002B0120;
  v15 = a2;
  v14[4] = &v16;
  v14[5] = a1;
  sub_10000927C(a1, p_p, v14, 0, 0, 0);
  if (v26 < 0)
  {
    operator delete(__p);
  }

  v10 = *(a1 + 32);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = v17[5];
    if (v11)
    {
      v11 = (v11[1] - *v11);
    }

    LODWORD(__p) = 67109376;
    HIDWORD(__p) = a2;
    v24 = 2048;
    v25 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "persist:#I Read from component configuration table for cid 0x%x; config vector has size %zd", &__p, 0x12u);
  }

  v12 = v17[6];
  *a3 = v17[5];
  a3[1] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 8), 1uLL, memory_order_relaxed);
  }

  v28 = v13;
  if (v31 < 0)
  {
    operator delete(v30[7].__locale_);
  }

  std::locale::~locale(v30);
  std::iostream::~basic_iostream();
  std::ios::~ios();
  _Block_object_dispose(&v16, 8);
  if (v22)
  {
    sub_100008350(v22);
  }
}

void sub_1000E20E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, char a30)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  sub_1000DF118(&a30);
  _Block_object_dispose(&a16, 8);
  if (a22)
  {
    sub_100008350(a22);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1000E2138(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  return result;
}

void sub_1000E2148(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000E2158(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = *(a1 + 40);
  v5 = sqlite3_column_blob(a2, 1);
  v6 = sqlite3_column_bytes(a2, 1);
  v7 = *(v4 + 32);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a1 + 48);
    v10[0] = 67109376;
    v10[1] = v8;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "persist:#I Read from component configuration table for cid 0x%x; config data has size %d", v10, 0xEu);
  }

  v9 = *(*(a1 + 32) + 8);
  if (v5)
  {
    operator new();
  }

  operator new();
}

uint64_t sub_1000E2318(uint64_t result, uint64_t a2)
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

void sub_1000E2334(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000E2344(uint64_t a1, uint64_t a2)
{
  sub_10000927C(a1, "DELETE FROM aggregations;", 0, 0, 0, 0);
  if (*(sub_10012A4C4(a2) + 160))
  {
    v4 = sub_10012A4C4(a2);
    v5 = *(v4 + 160);
    if (v5)
    {
      v6 = *(v4 + 152);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        v9[0] = _NSConcreteStackBlock;
        v9[1] = 0x40000000;
        v9[2] = sub_1000E2454;
        v9[3] = &unk_1002B0170;
        v9[4] = v8;
        sub_10000927C(a1, "INSERT INTO aggregations (metric, name, resetTime) VALUES (?1, ?2, ?3)", 0, v9, 0, 0);
        v7 -= 8;
      }

      while (v7);
    }
  }
}

uint64_t sub_1000E2454(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(*(a1 + 32) + 16));
  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  v6 = v5[23];
  if (v6 < 0)
  {
    v5 = *v5;
    v6 = *(*(v4 + 8) + 8);
  }

  v7 = sqlite3_bind_text(a2, 2, v5, v6, 0xFFFFFFFFFFFFFFFFLL);
  WISTimestamp = wis::getWISTimestamp(v7);

  return sqlite3_bind_int64(a2, 3, WISTimestamp);
}

void sub_1000E24D0(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v6 = a2;
  v5[0] = &v6;
  v5[1] = a1;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1000E4DF0;
  v7[3] = &unk_1002B09E0;
  v7[4] = a1;
  v7[5] = v5;
  v8 = v7;
  v4 = a1 + 16;
  v3 = *(a1 + 16);
  if (*(v4 + 8))
  {
    *(a3 + 58) = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    *a3 = 0uLL;
    a3[1] = 0uLL;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000E5200;
    v12 = &unk_1002B0A48;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *(a3 + 58) = 0uLL;
    a3[2] = 0uLL;
    a3[3] = 0uLL;
    *a3 = 0uLL;
    a3[1] = 0uLL;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1000E517C;
    v12 = &unk_1002B0A28;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

uint64_t sub_1000E27E0(uint64_t result, uint64_t a2)
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

void sub_1000E27FC(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void sub_1000E280C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100008350(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100008350(*(&v5 + 1));
  }
}

void sub_1000E2884(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100008350(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100008350(*(&v5 + 1));
  }
}

void sub_1000E28EC(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100008350(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100008350(*(&v5 + 1));
  }
}

uint64_t sub_1000E2954(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*v1 + 6);
  if (*v1[1])
  {
    v3 = &kCFBooleanTrue;
  }

  else
  {
    v3 = &kCFBooleanFalse;
  }

  return (*(*v2 + 32))(v2, @"collectPII", *v3);
}

uint64_t sub_1000E29AC(uint64_t a1)
{
  v1 = **(a1 + 40);
  v7 = 0;
  (*(**(v1 + 48) + 48))(&cf);
  v2 = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v7, v2, v4);
      LOBYTE(v2) = v7;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2 & 1;
}

uint64_t sub_1000E2A70(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2AAC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2AE8(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(*v1 + 6);
  if (*v1[1] == 1)
  {
    v3 = &kCFBooleanTrue;
  }

  else
  {
    v3 = &kCFBooleanFalse;
  }

  return (*(*v2 + 32))(v2, @"shimAllowed", *v3);
}

uint64_t sub_1000E2B40(uint64_t a1)
{
  (*(**(**(a1 + 40) + 48) + 48))(&cf);
  v1 = cf;
  if (cf)
  {
    v6 = 0;
    v2 = CFGetTypeID(cf);
    if (v2 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v6, v1, v3);
      v4 = v6;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = static xpc_event_publisher_action_t.remove.getter();
  }

  if (cf)
  {
    CFRelease(cf);
  }

  return v4;
}

void sub_1000E2BF8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10006703C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E2C14(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2C50(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2C8C(uint64_t a1)
{
  v1 = **(a1 + 40);
  v7 = 0;
  (*(**(v1 + 48) + 48))(&cf);
  v2 = cf;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(&v7, v2, v4);
      LOBYTE(v2) = v7;
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    if (cf)
    {
      CFRelease(cf);
    }
  }

  return v2 & 1;
}

uint64_t sub_1000E2D50(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2D8C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2DE0(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2E1C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2E70(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = sub_1000E012C(v1, @"submissionid", 1);
  sub_1000E01EC(v1, @"submissionid", v2 + 1);
  return v2;
}

void sub_1000E2ECC(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = sub_1000E012C(v1, @"deviceconfigurationserialnumber", 1) + 1;

  sub_1000E01EC(v1, @"deviceconfigurationserialnumber", v2);
}

uint64_t sub_1000E2F3C(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E2F78(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t *sub_1000E2FB4(uint64_t *a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  if (*(v1 + 31) < 0)
  {
    sub_10000FFF8(__dst, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v3 = *(v1 + 8);
    v9 = *(v1 + 24);
    *__dst = v3;
  }

  if (SHIBYTE(v9) < 0)
  {
    sub_10000FFF8(__p, __dst[0], __dst[1]);
  }

  else
  {
    *__p = *__dst;
    v13 = v9;
  }

  v11 = 0;
  if (SHIBYTE(v13) < 0)
  {
    sub_10000FFF8(&v14, __p[0], __p[1]);
  }

  else
  {
    v14 = *__p;
    v15 = v13;
  }

  v16 = 0;
  if (ctu::cf::convert_copy())
  {
    v4 = v16;
  }

  else
  {
    v4 = 0;
  }

  if (SHIBYTE(v15) < 0)
  {
    operator delete(v14);
  }

  v10 = v4;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__dst[0]);
  }

  (*(**(v2 + 48) + 32))(*(v2 + 48), @"build", v4);
  if (v4)
  {
    CFRelease(v4);
  }

  sub_1000E3194(&v7);
  return sub_1000082FC(&v6);
}

void sub_1000E3114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18, int a19, const void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  sub_10007DE84(&a20);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  sub_1000E3194(&a10);
  sub_1000082FC(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1000E3194(uint64_t *result)
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

void sub_1000E31EC(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**(**(a1 + 40) + 48) + 48))(&cf);
  sub_1000E32E8(&v6, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  if (v6)
  {
    cf = 0;
    v8 = 0uLL;
    ctu::cf::assign();
    v3 = v8;
    v4 = *(&v8 + 7);
    *a2 = cf;
    *(a2 + 8) = v3;
    *(a2 + 15) = v4;
    v5 = v6;
    *(a2 + 23) = HIBYTE(v8);
    if (v5)
    {
      CFRelease(v5);
    }
  }
}

void sub_1000E32B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10007DE84(&a9);
  _Unwind_Resume(a1);
}

void *sub_1000E32E8(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2 && (v4 = CFGetTypeID(*a2), v4 == CFStringGetTypeID()))
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

__n128 sub_1000E334C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

__n128 sub_1000E33B0(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v4);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  result = v4;
  *(v2 + 16) = v5;
  *v2 = result;
  return result;
}

void sub_1000E3474(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  (*(**(*v1 + 48) + 48))(cf);
  sub_1000E3754(&numValues, cf);
  if (cf[0])
  {
    CFRelease(cf[0]);
  }

  v3 = numValues;
  if (!numValues)
  {
    v3 = CFArrayCreate(0, 0, 0, &kCFTypeArrayCallBacks);
    v4 = numValues;
    numValues = v3;
    if (v4)
    {
      CFRelease(v4);
      v3 = numValues;
    }
  }

  MutableCopy = CFArrayCreateMutableCopy(0, 0, v3);
  valuePtr[1] = MutableCopy;
  valuePtr[0] = *v1[1];
  v6 = CFNumberCreate(0, kCFNumberLongLongType, valuePtr);
  v7 = CFNumberCreate(0, kCFNumberIntType, v1[2]);
  v8 = CFNumberCreate(0, kCFNumberIntType, v1[3]);
  cf[0] = v6;
  cf[1] = v7;
  cf[2] = v8;
  v9 = CFArrayCreate(0, cf, 3, &kCFTypeArrayCallBacks);
  CFArrayAppendValue(MutableCopy, v9);
  (*(**(v2 + 48) + 32))(*(v2 + 48), @"timers", MutableCopy);
  if (v9)
  {
    CFRelease(v9);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (numValues)
  {
    CFRelease(numValues);
  }
}

void sub_1000E3674(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, char a24, int a25, __int16 a26, char a27, char a28, int a29, __int16 a30, char a31, char a32)
{
  if (a2)
  {
    sub_10002205C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_1000E3720(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void *sub_1000E3754(void *a1, CFTypeRef *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v4 = CFGetTypeID(*a2);
    if (v4 == CFArrayGetTypeID())
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return sub_1000E37B8(a1, v5);
}

void *sub_1000E37B8(void *a1, CFTypeRef cf)
{
  *a1 = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

const void **sub_1000E37F0(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1000E3824(uint64_t a1)
{
  v1 = **(a1 + 40);
  v2 = CFArrayCreate(0, 0, 0, &kCFTypeArrayCallBacks);
  (*(**(v1 + 48) + 32))(*(v1 + 48), @"timers", v2);

  CFRelease(v2);
}

void sub_1000E3BD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  sub_1000E3720(va);
  v12 = *(v10 + 8);
  if (v12)
  {
    sub_100008350(v12);
  }

  _Unwind_Resume(a1);
}

void sub_1000E3CEC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    sub_1000E3D90(&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E3D10(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000E3D50(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1000E3D90(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      *(a2 + 8) = v2;
      operator delete(v2);
    }

    operator delete();
  }
}

void sub_1000E3DEC(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100033BCC();
}

void sub_1000E3E34(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100008350(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100008350(*(&v5 + 1));
  }
}

void sub_1000E3E9C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v5);
  v2 = *(a1 + 32);
  v3 = v5;
  v5 = 0uLL;
  v4 = *(v2 + 8);
  *v2 = v3;
  if (v4)
  {
    sub_100008350(v4);
  }

  if (*(&v5 + 1))
  {
    sub_100008350(*(&v5 + 1));
  }
}

void sub_1000E3F04(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(v1 + 8);
  v3 = CFNumberCreate(0, kCFNumberLongLongType, *v1);
  (*(**(v2 + 48) + 32))(*(v2 + 48), @"lastboottime", v3);
  if (v3)
  {
    CFRelease(v3);
  }
}

void sub_1000E3F88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000E11A0(va);
  _Unwind_Resume(a1);
}

CFTypeRef sub_1000E3F9C(uint64_t a1)
{
  (*(**(**(a1 + 40) + 48) + 48))(&cf);
  sub_10006394C(&number, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (!number)
  {
    return 0;
  }

  cf = 0;
  CFNumberGetValue(number, kCFNumberLongLongType, &cf);
  v1 = cf;
  if (number)
  {
    CFRelease(number);
  }

  return v1;
}

void sub_1000E4048(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000E11A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E4070(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

uint64_t sub_1000E40AC(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  **(a1 + 32) = result;
  return result;
}

void sub_1000E4100(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&object);
  v2 = *(a1 + 32);
  v3 = object;
  object = xpc_null_create();
  v4 = *v2;
  *v2 = v3;
  xpc_release(v4);
  xpc_release(object);
}

void sub_1000E4170(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  value = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  sub_1000E14EC((v2 + 64), &value);
  v3 = *(v1[1] + 16);
  if (v3)
  {
    while (1)
    {
      v4 = *(v3 + 16);
      v5 = v3[3];
      if (v5)
      {
        xpc_retain(v3[3]);
      }

      else
      {
        v5 = xpc_null_create();
      }

      if (v4 > 3)
      {
        v8 = 1;
      }

      else
      {
        v6 = off_1002B0AA8[v4];
        object = v5;
        if (v5)
        {
          xpc_retain(v5);
        }

        else
        {
          object = xpc_null_create();
        }

        xpc::bridge(&cf, &object, v7);
        sub_10001DEC8(&value, &cf);
        if (cf)
        {
          CFRelease(cf);
        }

        xpc_release(object);
        if (value)
        {
          CFDictionarySetValue(*(v2 + 64), v6, value);
          v8 = 0;
        }

        else
        {
          v8 = 3;
        }

        sub_10001DF64(&value);
      }

      xpc_release(v5);
      if (v8 != 3)
      {
        if (v8)
        {
          break;
        }
      }

      v3 = *v3;
      if (!v3)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
LABEL_19:
    (*(**(v2 + 48) + 32))(*(v2 + 48), @"fileconfig", *(v2 + 64));
  }
}

void sub_1000E42E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, char a11, int a12, const void *a13)
{
  sub_10001DF64(&a13);
  xpc_release(v13);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E4338(uint64_t a1)
{
  result = (*(**(a1 + 40) + 16))();
  v3 = *(a1 + 32);
  *v3 = result;
  v3[1] = v4;
  return result;
}

void *sub_1000E4384(void *a1, CFTypeRef *a2)
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

void sub_1000E4424(uint64_t a1, unsigned int (***a2)(void), uint64_t a3)
{
  if ((**a2)(a2))
  {
    v6 = *(*a1 + 32);

    v6(a1, a3, 0);
  }

  else
  {
    sub_10012A5D4(a2, &object);
    v8 = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      v8 = xpc_null_create();
    }

    xpc::bridge(&cf, &v8, v7);
    sub_10001DEC8(&v10, &cf);
    if (cf)
    {
      CFRelease(cf);
    }

    xpc_release(v8);
    (*(*a1 + 32))(a1, a3, v10);
    sub_10001DF64(&v10);
    xpc_release(object);
  }
}

void sub_1000E4574(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, char a10, int a11, const void *a12, xpc_object_t object)
{
  sub_10001DF64(&a12);
  xpc_release(object);
  _Unwind_Resume(a1);
}

const void **sub_1000E45D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  (*(*a1 + 48))(&cf);
  sub_10001DEC8(&v8, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  ctu::cf_to_xpc(&object, v8, v3);
  v4 = object;
  cf = object;
  if (object && xpc_get_type(object) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
  }

  else
  {
    cf = xpc_null_create();
  }

  xpc_release(object);
  sub_10012A800(&cf, a2);
  xpc_release(cf);
  return sub_10001DF64(&v8);
}

void sub_1000E46B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t object, const void *a12)
{
  xpc_release(object);
  sub_10001DF64(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_1000E46F8(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0;
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

uint64_t sub_1000E47A4(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v6);
  v2 = *(a1 + 32);
  v3 = v6;
  v6 = 0;
  v4 = *v2;
  *v2 = v3;
  if (v4)
  {
    (*(*v4 + 16))(v4);
  }

  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

const void **sub_1000E4850(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
  }

  return a1;
}

void sub_1000E4884(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = **(a1 + 40);
  sub_1000E4988(*(v3 + 48), __p);
  if (__p[0] == __p[1])
  {
    sub_1000E4988(*(v3 + 48), &v4);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    *__p = v4;
    v7 = v5;
  }

  sub_1000E012C(v3, @"investigationid", 0);
  sub_1000E012C(v3, @"tasked_time", 0);
  sub_100129EF8(__p[0], a2);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }
}

void sub_1000E4964(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E4988(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  (*(*a1 + 48))(&cf);
  sub_100067EE0(&v3, &cf);
  if (cf)
  {
    CFRelease(cf);
  }

  if (v3)
  {
    ctu::cf::assign();
    if (v3)
    {
      CFRelease(v3);
    }
  }
}

void sub_1000E4A18(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000D0FDC(va);
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void sub_1000E4A58(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = v1[1];
  v3 = sub_100082628(*v1);
  v4 = sub_100008780(*v1);
  sub_10012A4CC(*v1, &bytes);
  v5 = *(v2 + 32);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 67109632;
    *&buf[4] = v3;
    v17 = 1024;
    v18 = v4;
    v19 = 2048;
    v20 = v15 - bytes;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "persist:#I Saving device config DCID=%d, IID=%d, with %zd bytes", buf, 0x18u);
  }

  sub_1000E01EC(v2, @"deviceconfigurationid", v3);
  sub_1000E01EC(v2, @"investigationid", v4);
  v6 = sub_1000083BC(*v1);
  sub_1000E01EC(v2, @"tasked_time", v6);
  v7 = CFDataCreate(kCFAllocatorDefault, bytes, (v15 - bytes));
  v8 = v7;
  if (v7)
  {
    (*(**(v2 + 48) + 32))(*(v2 + 48), @"deviceConfig", v7);
  }

  sub_1000DF424(v2);
  sub_1000E2344(v2, *v1);
  sub_1000DF4A8(v2);
  if (((***v1)() & 1) == 0)
  {
    v9 = sub_10012A4C4(*v1);
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = *(v9 + 8);
      v12 = 8 * v10;
      do
      {
        v13 = *(*v11 + 14);
        wireless_diagnostics::google::protobuf::MessageLite::SerializeAsString(buf, *v11);
        sub_1000E1A0C(v2, v13, buf);
        if (SHIBYTE(v20) < 0)
        {
          operator delete(*buf);
        }

        ++v11;
        v12 -= 8;
      }

      while (v12);
    }
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (bytes)
  {
    v15 = bytes;
    operator delete(bytes);
  }
}

void sub_1000E4CA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  sub_1000D0FDC(&a9);
  if (__p)
  {
    a11 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E4D08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_10000BDA8(result, a4);
  }

  return result;
}

void sub_1000E4D60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E4D9C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_1002B09A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1000E4DF0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 + 40) + 8);
  std::to_string(&v13, ***(a1 + 40));
  v4 = std::string::insert(&v13, 0, "SELECT name, count, sum, sum2, min, max, resetTime, (sumMax>9223372036854775807), (sum2>9223372036854775807) FROM aggregations WHERE metric=");
  v5 = *&v4->__r_.__value_.__l.__data_;
  v21 = v4->__r_.__value_.__r.__words[2];
  v20 = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }

  v13.__r_.__value_.__r.__words[0] = 0;
  v13.__r_.__value_.__l.__size_ = &v13;
  v13.__r_.__value_.__r.__words[2] = 0x7802000000;
  v14 = sub_1000E4FF8;
  v15 = sub_1000E502C;
  *__p = 0u;
  v17 = 0u;
  v18 = 0u;
  memset(v19, 0, sizeof(v19));
  if (v21 >= 0)
  {
    v6 = &v20;
  }

  else
  {
    v6 = v20;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 0x40000000;
  v12[2] = sub_1000E5040;
  v12[3] = &unk_1002B0A08;
  v12[4] = &v13;
  sub_10000927C(v3, v6, v12, 0, 0, 0);
  size = v13.__r_.__value_.__l.__size_;
  if (*(v13.__r_.__value_.__l.__size_ + 63) < 0)
  {
    sub_10000FFF8(a2, *(v13.__r_.__value_.__l.__size_ + 40), *(v13.__r_.__value_.__l.__size_ + 48));
  }

  else
  {
    v8 = *(v13.__r_.__value_.__l.__size_ + 40);
    *(a2 + 16) = *(v13.__r_.__value_.__l.__size_ + 56);
    *a2 = v8;
  }

  v9 = *(size + 64);
  v10 = *(size + 80);
  v11 = *(size + 96);
  *(a2 + 72) = *(size + 112);
  *(a2 + 56) = v11;
  *(a2 + 40) = v10;
  *(a2 + 24) = v9;
  _Block_object_dispose(&v13, 8);
  if (SBYTE7(v17) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20);
  }
}

void sub_1000E4FAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_1000E4FF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v2;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  result = *(a2 + 64);
  v4 = *(a2 + 80);
  v5 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v4;
  *(a1 + 96) = v5;
  *(a1 + 64) = result;
  return result;
}

void sub_1000E502C(uint64_t a1)
{
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }
}

uint64_t sub_1000E5040(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_column_text(a2, 0);
  if (v4)
  {
    std::string::assign((*(*(a1 + 32) + 8) + 40), v4);
  }

  v5 = sqlite3_column_int64(a2, 1);
  *(*(*(a1 + 32) + 8) + 64) = v5;
  WISTimestamp = wis::getWISTimestamp(v5);
  result = sqlite3_column_int64(a2, 6);
  *(*(*(a1 + 32) + 8) + 104) = WISTimestamp - result;
  if (*(*(*(a1 + 32) + 8) + 64))
  {
    *(*(*(a1 + 32) + 8) + 72) = sqlite3_column_int64(a2, 2);
    *(*(*(a1 + 32) + 8) + 80) = sqlite3_column_int64(a2, 3);
    *(*(*(a1 + 32) + 8) + 88) = sqlite3_column_int64(a2, 4);
    *(*(*(a1 + 32) + 8) + 96) = sqlite3_column_int64(a2, 5);
    *(*(*(a1 + 32) + 8) + 112) = sqlite3_column_int(a2, 7) != 0;
    result = sqlite3_column_int(a2, 8);
    *(*(*(a1 + 32) + 8) + 113) = result != 0;
  }

  return result;
}

__n128 sub_1000E517C(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v7);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  v3 = v7;
  *(v2 + 16) = v8;
  *v2 = v3;
  result = v9;
  v5 = v10;
  v6 = v11;
  *(v2 + 72) = v12;
  *(v2 + 56) = v6;
  *(v2 + 40) = v5;
  *(v2 + 24) = result;
  return result;
}

__n128 sub_1000E5200(uint64_t a1)
{
  (*(**(a1 + 40) + 16))(&v7);
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  v3 = v7;
  *(v2 + 16) = v8;
  *v2 = v3;
  result = v9;
  v5 = v10;
  v6 = v11;
  *(v2 + 72) = v12;
  *(v2 + 56) = v6;
  *(v2 + 40) = v5;
  *(v2 + 24) = result;
  return result;
}

void sub_1000E5284(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000E5370;
  v4[3] = &unk_1002B0A68;
  v4[4] = v1[2];
  v5 = *(v1 + 2);
  sub_10000927C(v2, "UPDATE aggregations SET count=count+1, sum=sum+?1, sum2=sum2+(?1*?1), min=MIN(COALESCE(min,?1),?1), max=MAX(COALESCE(max,?1),?1), sumMax=MAX(sumMax,sum+?1) WHERE metric=?2", 0, v4, 0, 0);
  operator delete();
}

uint64_t sub_1000E5370(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, *(a1 + 32));
  v4 = *(a1 + 40);

  return sqlite3_bind_int64(a2, 2, v4);
}

void sub_1000E53C0(uint64_t **a1)
{
  v3 = a1;
  v1 = *a1;
  v2 = **a1;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 0x40000000;
  v4[2] = sub_1000E54A4;
  v4[3] = &unk_1002B0A88;
  v5 = *(v1 + 2);
  sub_10000927C(v2, "UPDATE aggregations SET count=0, sum=0, sum2=0, min=NULL, max=NULL, sumMax=NULL, resetTime=?1 WHERE metric=?2", 0, v4, 0, 0);
  operator delete();
}

uint64_t sub_1000E54A4(unsigned int *a1, sqlite3_stmt *a2)
{
  WISTimestamp = wis::getWISTimestamp(a1);
  sqlite3_bind_int64(a2, 1, WISTimestamp);
  v5 = a1[8];

  return sqlite3_bind_int64(a2, 2, v5);
}

void sub_1000E577C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  pthread_mutex_unlock(&stru_1002D4A00);
  if (a14)
  {
    sub_100008350(a14);
  }

  v16 = *(v14 + 8);
  if (v16)
  {
    sub_100008350(v16);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000E5810(uint64_t result, uint64_t a2)
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

void sub_1000E582C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    sub_100008350(v1);
  }
}

void *sub_1000E583C(void *a1, const char *a2, dispatch_qos_class_t qos_class, const char *a4)
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

  ctu::OsLogLogger::OsLogLogger((a1 + 4), "com.apple.wis.wirelessinsightsd", a4);
  return a1;
}

void sub_1000E58E0(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1000081C8(&v5, a1);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 1174405120;
  v7[2] = sub_1000E5EC4;
  v7[3] = &unk_1002B0C30;
  v4 = v5;
  v7[5] = v5;
  v8 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7[4] = &stru_1002B0B18;
  sub_100160D80(a3, (v4 + 16), v7);
  if (v8)
  {
    sub_100008350(v8);
  }

  if (v6)
  {
    sub_100008350(v6);
  }
}

void sub_1000E59A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18)
{
  if (a18)
  {
    sub_100008350(a18);
  }

  if (a11)
  {
    sub_100008350(a11);
  }

  _Unwind_Resume(exception_object);
}

void sub_1000E59CC(capabilities::abs *a1, uint64_t *a2)
{
  if (*a2)
  {
    if (capabilities::abs::supportsBasebandInsights(a1))
    {
      pthread_mutex_lock(&stru_1002D4C10);
      v4 = xmmword_1002D4C50;
      if (!xmmword_1002D4C50)
      {
        sub_10012BF18();
      }

      if (*(&xmmword_1002D4C50 + 1))
      {
        atomic_fetch_add_explicit((*(&xmmword_1002D4C50 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_1002D4C10);
      if (!v4)
      {
        v5 = *(a1 + 4);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          sub_1002083CC(v5);
        }
      }

      v6 = *(a1 + 4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "#I Sending Insights to Baseband...", buf, 2u);
      }

      v7 = *a2;
      *a2 = 0;
      v10 = v7;
      sub_10012CB34(v4, &v10);
    }

    v9 = *(a1 + 4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "#I Baseband Insights are not enabled", buf, 2u);
    }
  }

  else
  {
    v8 = *(a1 + 4);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100208410(v8);
    }
  }
}

void sub_1000E5C30(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[2], v1, sub_1000E5D04);
  __cxa_rethrow();
}

void sub_1000E5C70(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1000E5CC4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void *sub_1000E5D04(void *result)
{
  if (result)
  {
    v1 = result;
    ctu::OsLogLogger::~OsLogLogger((result + 4));
    sub_100032AD8(v1);

    operator delete();
  }

  return result;
}