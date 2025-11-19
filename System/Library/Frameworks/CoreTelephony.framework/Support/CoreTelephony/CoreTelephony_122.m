void **sub_100804394(void ***a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 == *a1)
  {
    v5 = a1[1];
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (v4 - *a1);
    do
    {
      v7 = &v5[3 * (v6 >> 1)];
      v8 = sub_1000068BC(v7, a2);
      if (v8 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v8 < 0)
      {
        v5 = v7 + 3;
      }
    }

    while (v6);
    v4 = a1[1];
  }

  if (v4 == v5)
  {
    goto LABEL_25;
  }

  v9 = *(v5 + 23);
  if (v9 >= 0)
  {
    v10 = *(v5 + 23);
  }

  else
  {
    v10 = v5[1];
  }

  v11 = *(a2 + 23);
  v12 = v11;
  if ((v11 & 0x80u) != 0)
  {
    v11 = *(a2 + 8);
  }

  if (v10 != v11 || (v9 >= 0 ? (v13 = v5) : (v13 = *v5), v12 >= 0 ? (v14 = a2) : (v14 = *a2), result = memcmp(v13, v14, v10), result))
  {
LABEL_25:

    return sub_100804EB0(a1, v5, a2);
  }

  return result;
}

char *sub_1008044C0(char *result, int *a2)
{
  v3 = *result;
  v4 = *(result + 1);
  if (v4 == *result)
  {
    v3 = *(result + 1);
  }

  else
  {
    v5 = &v4[-*result] >> 2;
    do
    {
      v6 = v5 >> 1;
      v7 = &v3[4 * (v5 >> 1)];
      v9 = *v7;
      v8 = v7 + 4;
      v5 += ~(v5 >> 1);
      if (v9 < *a2)
      {
        v3 = v8;
      }

      else
      {
        v5 = v6;
      }
    }

    while (v5);
  }

  if (v4 == v3 || *v3 != *a2)
  {
    return sub_1008055D0(result, v3, a2);
  }

  return result;
}

uint64_t sub_100804528(uint64_t a1, _DWORD *a2, char **a3)
{
  v3 = (*(a1 + 8) - *a1) >> 5;
  v4 = v3 + 1;
  if ((v3 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v7 = *(a1 + 16) - *a1;
  if (v7 >> 4 > v4)
  {
    v4 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v4;
  }

  v19 = a1;
  if (v8)
  {
    sub_1004BE98C(a1, v8);
  }

  v15 = 0;
  v16 = (32 * v3);
  v17 = 32 * v3;
  v18 = 0;
  *v16 = *a2;
  sub_10000501C((32 * v3 + 8), *a3);
  v9 = v17 + 32;
  v10 = *(a1 + 8) - *a1;
  v11 = v16 - v10;
  memcpy(v16 - v10, *a1, v10);
  v12 = *a1;
  *a1 = v11;
  *(a1 + 8) = v9;
  v13 = *(a1 + 16);
  *(a1 + 16) = v18;
  v17 = v12;
  v18 = v13;
  v15 = v12;
  v16 = v12;
  sub_1004BE9D4(&v15);
  return v9;
}

void sub_100804620(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1004BE9D4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100804634(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      *a4 = *v5;
      if (*(a4 + 31) < 0)
      {
        operator delete(*(a4 + 8));
      }

      v7 = *(v5 + 8);
      *(a4 + 24) = *(v5 + 24);
      *(a4 + 8) = v7;
      *(v5 + 31) = 0;
      *(v5 + 8) = 0;
      v5 += 32;
      a4 += 32;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_100804738(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_10080480C);
  __cxa_rethrow();
}

void sub_100804778(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1008047CC(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080480C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_100804838(uint64_t a1)
{
  sub_100804874(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_100804874(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = *(v2 + 8);
      if (v4)
      {
        *(v2 + 9) = v4;
        operator delete(v4);
      }

      v5 = (v2 + 40);
      sub_1000087B4(&v5);
      if (v2[39] < 0)
      {
        operator delete(*(v2 + 2));
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t sub_1008048F8(uint64_t result, uint64_t a2)
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

void sub_100804914(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_100804924(uint64_t a1)
{
  if (*(a1 + 24))
  {
    sub_100804874(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void sub_100804980(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&__p, *a1);
  sub_100804A5C(":", &__p, &v12);
  v6 = *(a1 + 8);
  v5 = a1 + 8;
  v4 = v6;
  v7 = *(v5 + 23);
  if (v7 >= 0)
  {
    v8 = v5;
  }

  else
  {
    v8 = v4;
  }

  if (v7 >= 0)
  {
    v9 = *(v5 + 23);
  }

  else
  {
    v9 = *(v5 + 8);
  }

  v10 = std::string::append(&v12, v8, v9);
  *a2 = *v10;
  v10->__r_.__value_.__l.__size_ = 0;
  v10->__r_.__value_.__r.__words[2] = 0;
  v10->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_100804A28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

__n128 sub_100804A5C@<Q0>(char *__s@<X1>, std::string *a2@<X0>, std::string *a3@<X8>)
{
  v6 = strlen(__s);
  v7 = std::string::append(a2, __s, v6);
  result = *v7;
  *a3 = *v7->n128_u8;
  v7->n128_u64[0] = 0;
  v7->n128_u64[1] = 0;
  v7[1].n128_u64[0] = 0;
  return result;
}

void sub_100804ABC(int *a1@<X0>, std::string *a2@<X8>)
{
  std::to_string(&v9, *a1);
  v4 = std::string::append(&v9, ":", 1uLL);
  v5 = *&v4->__r_.__value_.__l.__data_;
  v10.__r_.__value_.__r.__words[2] = v4->__r_.__value_.__r.__words[2];
  *&v10.__r_.__value_.__l.__data_ = v5;
  v4->__r_.__value_.__l.__size_ = 0;
  v4->__r_.__value_.__r.__words[2] = 0;
  v4->__r_.__value_.__r.__words[0] = 0;
  v6 = sub_10000FD6C(a1[1]);
  v7 = strlen(v6);
  v8 = std::string::append(&v10, v6, v7);
  *a2 = *v8;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v10.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v10.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }
}

void sub_100804B78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const void **sub_100804BAC(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100022D3C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100804E3C(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == 1)
  {
    v3 = *(a2 + 64);
    if (v3)
    {
      *(a2 + 72) = v3;
      operator delete(v3);
    }

    v4 = (a2 + 40);
    sub_1000087B4(&v4);
    if (*(a2 + 39) < 0)
    {
      operator delete(*(a2 + 16));
    }
  }

  else if (!a2)
  {
    return;
  }

  operator delete(a2);
}

void **sub_100804EB0(void *a1, void **a2, uint64_t a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    if (v9 > 0xAAAAAAAAAAAAAAALL)
    {
      sub_1000CE3D4();
    }

    v10 = a2 - v8;
    v11 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3);
    v12 = 2 * v11;
    if (2 * v11 <= v9)
    {
      v12 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *a1) >> 3) + 1;
    }

    if (v11 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v12;
    }

    v25 = a1;
    if (v13)
    {
      sub_100005348(a1, v13);
    }

    *&v23 = 0;
    *(&v23 + 1) = 8 * (v10 >> 3);
    v24 = *(&v23 + 1);
    sub_1008050A4(&v23, a3);
    v14 = *(&v23 + 1);
    memcpy(v24, v4, a1[1] - v4);
    v15 = *a1;
    v16 = *(&v23 + 1);
    *&v24 = v24 + a1[1] - v4;
    a1[1] = v4;
    v17 = v4 - v15;
    v18 = (v16 - (v4 - v15));
    memcpy(v18, v15, v17);
    v19 = *a1;
    *a1 = v18;
    v20 = a1[2];
    *(a1 + 1) = v24;
    *&v24 = v19;
    *(&v24 + 1) = v20;
    *&v23 = v19;
    *(&v23 + 1) = v19;
    sub_1000054E0(&v23);
    return v14;
  }

  else if (a2 == v6)
  {
    sub_10016B2AC(a1, a3);
  }

  else
  {
    v23 = 0uLL;
    *&v24 = 0;
    *(&v24 + 1) = a1;
    if (*(a3 + 23) < 0)
    {
      sub_100005F2C(&v23, *a3, *(a3 + 8));
      v6 = a1[1];
    }

    else
    {
      v23 = *a3;
      *&v24 = *(a3 + 16);
    }

    sub_1001E2D70(a1, v4, v6, (v4 + 3));
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    v21 = v23;
    v4[2] = v24;
    *v4 = v21;
  }

  return v4;
}

void sub_100805078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1008050A4(void *result, __int128 *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    if (v5 <= *result)
    {
      v10 = v4 - *result;
      v9 = v10 == 0;
      v11 = 0x5555555555555556 * (v10 >> 3);
      if (v9)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      v13 = result[4];
      v15[4] = v3[4];
      sub_100005348(v13, v12);
    }

    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1 + ((0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3) + 1) >> 63);
    v7 = -3 * (v6 >> 1);
    result = sub_10080520C(v15, v5, v4, v5 - 24 * (v6 >> 1));
    v4 = v8;
    v3[1] += 8 * v7;
    v3[2] = v8;
  }

  if (*(a2 + 23) < 0)
  {
    result = sub_100005F2C(v4, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v14;
  }

  v3[2] += 24;
  return result;
}

__int128 *sub_10080520C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
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
      a4 += 24;
      *(v5 + 23) = 0;
      *v5 = 0;
      v5 = (v5 + 24);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

const void **sub_100805280(void *a1, const void **a2)
{
  v4 = sub_1000D3314(a1, a2);
  v5 = v4;
  v6 = a1[1];
  if (!*&v6)
  {
    goto LABEL_18;
  }

  v7 = vcnt_s8(v6);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v6)
    {
      v9 = v4 % *&v6;
    }
  }

  else
  {
    v9 = (*&v6 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_18:
    sub_100805504();
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v5)
    {
      break;
    }

    if (v8 > 1)
    {
      if (v12 >= *&v6)
      {
        v12 %= *&v6;
      }
    }

    else
    {
      v12 &= *&v6 - 1;
    }

    if (v12 != v9)
    {
      goto LABEL_18;
    }

LABEL_17:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_18;
    }
  }

  if (!sub_100022D3C(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_1008054E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a10)
  {
    sub_100804E3C(&a11, a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1008055B4(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100804E3C(v3, v2);
  _Unwind_Resume(a1);
}

char *sub_1008055D0(void *a1, char *__src, int *a3)
{
  v3 = __src;
  v5 = a1[1];
  v6 = a1[2];
  if (v5 >= v6)
  {
    v10 = *a1;
    v11 = (&v5[-*a1] >> 2) + 1;
    if (v11 >> 62)
    {
      sub_1000CE3D4();
    }

    v12 = __src - v10;
    v13 = v6 - v10;
    if (v13 >> 1 > v11)
    {
      v11 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 2;
    v27 = a1;
    if (v14)
    {
      sub_100016740(a1, v14);
    }

    v24 = 0;
    v25 = 4 * v15;
    v26 = (4 * v15);
    sub_10080578C(&v24, a3);
    v16 = v25;
    memcpy(v26, v3, a1[1] - v3);
    v17 = *a1;
    v18 = v25;
    *&v26 = v26 + a1[1] - v3;
    a1[1] = v3;
    v19 = v3 - v17;
    v20 = (v18 - (v3 - v17));
    memcpy(v20, v17, v19);
    v21 = *a1;
    *a1 = v20;
    v22 = a1[2];
    *(a1 + 1) = v26;
    *&v26 = v21;
    *(&v26 + 1) = v22;
    v24 = v21;
    v25 = v21;
    if (v21)
    {
      operator delete(v21);
    }

    return v16;
  }

  else
  {
    v7 = *a3;
    if (__src == v5)
    {
      *v5 = v7;
      a1[1] = v5 + 4;
    }

    else
    {
      v8 = __src + 4;
      if (v5 < 4)
      {
        v9 = a1[1];
      }

      else
      {
        *v5 = *(v5 - 1);
        v9 = v5 + 4;
      }

      a1[1] = v9;
      if (v5 != v8)
      {
        memmove(__src + 4, __src, v5 - v8);
      }

      *v3 = v7;
    }
  }

  return v3;
}

void sub_100805754(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_10080578C(void *result, _DWORD *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 1;
      }

      sub_100016740(result[4], v11);
    }

    v7 = ((v6 >> 2) + 1) / -2;
    v8 = ((v6 >> 2) + 1) / 2;
    v9 = &v5[-4 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-4 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[4 * v7];
  }

  *v4 = *a2;
  v3[2] = v4 + 4;
  return result;
}

void *sub_10080588C(void *a1, void *a2, int a3, uint64_t a4, uint64_t a5, NSObject **a6, char *a7)
{
  v13 = *a6;
  object = v13;
  if (v13)
  {
    dispatch_retain(v13);
  }

  sub_10073BF14(a1, &off_101E83220, a2, a3, a4, a5, &object, a7, 2000);
  if (object)
  {
    dispatch_release(object);
  }

  *a1 = off_101E82848;
  a1[3] = off_101E82D68;
  return a1;
}

void sub_100805980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, dispatch_object_t object)
{
  if (object)
  {
    dispatch_release(object);
  }

  PersonalitySpecific::~PersonalitySpecific(v10);
  _Unwind_Resume(a1);
}

void sub_1008059A0(uint64_t a1)
{
  sub_10073EB3C(a1, &off_101E83220);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_1008059D0(uint64_t a1)
{
  sub_10073EB3C(a1 - 24, &off_101E83220);

  PersonalitySpecific::~PersonalitySpecific(v1);
}

void sub_100805A04(uint64_t a1)
{
  sub_10073EB3C(a1, &off_101E83220);
  PersonalitySpecific::~PersonalitySpecific(v1);

  operator delete();
}

void sub_100805A5C(Registry **a1, int a2)
{
  if (!a2)
  {
    ServiceMap = Registry::getServiceMap(a1[9]);
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
    v14 = v5;
    v9 = sub_100009510(&v4[1].__m_.__sig, &v14);
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
        if (!v11)
        {
LABEL_12:
          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          return;
        }

LABEL_11:
        v13 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 1024))(v11, v13, 1);
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
    }

    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_100805B88(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100805BA0(Registry **a1, int a2)
{
  if (!a2)
  {
    ServiceMap = Registry::getServiceMap(a1[9]);
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
        if (!v11)
        {
LABEL_12:
          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          return;
        }

LABEL_11:
        v13 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 1024))(v11, v13, 0);
        v14 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 192))(v11, v14, 27, 0);
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
    }

    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_100805D08(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100805D20(Registry **a1, int a2)
{
  if (!a2)
  {
    ServiceMap = Registry::getServiceMap(a1[9]);
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
        if (!v11)
        {
LABEL_12:
          if ((v12 & 1) == 0)
          {
            sub_100004A34(v10);
          }

          return;
        }

LABEL_11:
        v13 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 1024))(v11, v13, 0);
        v14 = PersonalitySpecificImpl::simSlot(a1);
        (*(*v11 + 192))(v11, v14, 28, 0);
        goto LABEL_12;
      }
    }

    else
    {
      v11 = 0;
    }

    std::mutex::unlock(v4);
    v10 = 0;
    v12 = 1;
    if (!v11)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }
}

void sub_100805E88(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100805EB8(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if (*(result + 24))
    {

      return sub_100805F94(result, a2);
    }

    else
    {
      (*(*a2 + 24))(a2);
      (*(*a2 + 40))(a2);
      v3 = *(*a2 + 8);

      return v3(a2);
    }
  }

  return result;
}

uint64_t sub_100805F94(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1008060C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1007F3D5C(va);
  if (a2)
  {
    (*(*a2 + 8))(a2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10080611C(uint64_t a1, uint64_t a2)
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

uint64_t sub_1008061B4(uint64_t a1, uint64_t a2)
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

const char *sub_100806234(char *a1)
{
  v16 = a1;
  if (!a1)
  {
    return "";
  }

  v2 = sub_10080636C(a1);
  v3 = sub_100806458(v2, &v16);
  if (sub_10080636C(v3) + 1 != v3)
  {
    return v3[5];
  }

  v5 = strncmp("com.apple.", a1, 0xAuLL);
  if (!v5)
  {
    v15 = a1 + 10;
    v14 = sub_10080636C(v5);
    v3 = sub_100806458(v14, &v15);
    v5 = sub_10080636C(v3);
    if ((v5 + 8) != v3)
    {
      return v3[5];
    }
  }

  v6 = sub_10080636C(v5);
  v7 = v6 + 1;
  v8 = *v6;
  if (*v6 == v6 + 1)
  {
    return "";
  }

  v9 = strlen(a1);
  v4 = "";
  while (strncmp(v8[4], a1, v9))
  {
    v10 = v8[1];
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
        v11 = v8[2];
        v12 = *v11 == v8;
        v8 = v11;
      }

      while (!v12);
    }

    v8 = v11;
    if (v11 == v7)
    {
      return v4;
    }
  }

  return v8[5];
}

void *sub_10080636C(uint64_t a1)
{
  __chkstk_darwin(a1);
  if ((atomic_load_explicit(&qword_101FBAC20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAC20))
  {
    memcpy(__dst, off_101E847F8, sizeof(__dst));
    v2[0] = __dst;
    v2[1] = 396;
    sub_1008066B8(qword_101FBAC08, v2);
    __cxa_guard_release(&qword_101FBAC20);
  }

  return qword_101FBAC08;
}

uint64_t sub_100806458(uint64_t a1, char **a2)
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
    v6 = sub_1008068E4((v3 + 32), a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || sub_100806850(a2, (v5 + 32)))
  {
    return v2;
  }

  return v5;
}

void sub_1008064DC(void **a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 23);
  if (v3 < 0)
  {
    v3 = a1[1];
  }

  if (!v3 || ((v5 = sub_1008065C4(), *(a1 + 23) >= 0) ? (v6 = a1) : (v6 = *a1), __p[0] = v6, v7 = sub_100806458(v5, __p), sub_1008065C4() + 1 == v7))
  {
    *a2 = 0;
    *(a2 + 24) = 0;
  }

  else
  {
    __p[0] = 0;
    __p[1] = 0;
    v12 = 0;
    v8 = sub_100806234(*(v7 + 40));
    sub_10000501C(__p, v8);
    v9 = HIBYTE(v12);
    v10 = SHIBYTE(v12);
    if (v12 < 0)
    {
      v9 = __p[1];
    }

    if (v9)
    {
      *a2 = *__p;
      *(a2 + 16) = v12;
      *(a2 + 24) = 1;
    }

    else
    {
      *a2 = 0;
      *(a2 + 24) = 0;
      if (v10 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }
}

void *sub_1008065C4()
{
  if ((atomic_load_explicit(&qword_101FBAC40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_101FBAC40))
  {
    v2[0] = "com.apple.iCloudDriveApp";
    v2[1] = "bird";
    v2[2] = "com.apple.CTCarrierSpaceAuth";
    v2[3] = "CommCenter";
    v2[4] = "com.apple.datausage.telephony.ims";
    v2[5] = "CommCenter";
    v1[0] = v2;
    v1[1] = 3;
    sub_1008066B8(qword_101FBAC28, v1);
    __cxa_guard_release(&qword_101FBAC40);
  }

  return qword_101FBAC28;
}

void *sub_1008066B8(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  a1[1] = 0;
  v5 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (v3)
  {
    v6 = &v4[2 * v3];
    do
    {
      v7 = a1[1];
      if (*a1 == v5)
      {
        v9 = v5;
      }

      else
      {
        v8 = v5;
        if (v7)
        {
          do
          {
            v9 = v7;
            v7 = v7[1];
          }

          while (v7);
        }

        else
        {
          do
          {
            v9 = v8[2];
            v10 = *v9 == v8;
            v8 = v9;
          }

          while (v10);
        }

        v11 = sub_1008068E4(v9 + 4, v4);
        v7 = *v5;
        if (!v11)
        {
          if (!v7)
          {
            goto LABEL_21;
          }

          v12 = v5;
          while (1)
          {
            while (1)
            {
              v13 = v7;
              if (!sub_100806850(v4, v7 + 4))
              {
                break;
              }

              v7 = *v13;
              v12 = v13;
              if (!*v13)
              {
                goto LABEL_21;
              }
            }

            if (!sub_1008068E4(v13 + 4, v4))
            {
              goto LABEL_20;
            }

            v12 = v13 + 1;
            v7 = v13[1];
            if (!v7)
            {
              goto LABEL_21;
            }
          }
        }
      }

      if (!v7)
      {
        goto LABEL_21;
      }

      v12 = v9 + 1;
LABEL_20:
      if (!*v12)
      {
LABEL_21:
        operator new();
      }

      v4 += 2;
    }

    while (v4 != v6);
  }

  return a1;
}

uint64_t sub_100806850(char **a1, char **a2)
{
  sub_10000501C(v7, *a1);
  sub_10000501C(__p, *a2);
  v3 = sub_1000068BC(v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return (v3 >> 7) & 1;
}

void sub_1008068C8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1008068E4(char **a1, char **a2)
{
  sub_10000501C(v7, *a1);
  sub_10000501C(__p, *a2);
  v3 = sub_1000068BC(v7, __p);
  if (v6 < 0)
  {
    operator delete(__p[0]);
  }

  if (v8 < 0)
  {
    operator delete(v7[0]);
  }

  return (v3 >> 7) & 1;
}

void sub_10080695C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

double sub_100806978(uint64_t a1)
{
  *a1 = &off_101E860C8;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  return result;
}

void sub_1008069AC(PB::Base *this)
{
  *this = &off_101E860C8;
  v2 = *(this + 7);
  *(this + 7) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(this + 6);
  *(this + 6) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 5);
  *(this + 5) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    (*(*v8 + 8))(v8);
  }

  PB::Base::~Base(this);
}

void sub_100806B50(PB::Base *a1)
{
  sub_1008069AC(a1);

  operator delete();
}

uint64_t sub_100806B88(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  v5 = a1[1];
  if (v5)
  {
    (*(*v5 + 32))(v5, this, "genericTransferPayload");
  }

  v6 = a1[2];
  if (v6)
  {
    (*(*v6 + 32))(v6, this, "profileStatusInfo");
  }

  v7 = a1[3];
  if (v7)
  {
    (*(*v7 + 32))(v7, this, "purchasePlanInfo");
  }

  v8 = a1[4];
  if (v8)
  {
    (*(*v8 + 32))(v8, this, "transferConsent");
  }

  v9 = a1[5];
  if (v9)
  {
    (*(*v9 + 32))(v9, this, "transferProfile");
  }

  v10 = a1[6];
  if (v10)
  {
    (*(*v10 + 32))(v10, this, "updateSubscriptionInfo");
  }

  v11 = a1[7];
  if (v11)
  {
    (*(*v11 + 32))(v11, this, "vinylInfo");
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_100806D54(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v6 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_45;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v16 |= (v21 & 0x7F) << v14;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v18;
          ++v19;
          ++v20;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_22;
          }
        }

        v9 = (v4 & 1) != 0 ? 0 : v16;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v22 = v9 >> 3;
      if ((v9 >> 3) <= 3)
      {
        switch(v22)
        {
          case 1:
            operator new();
          case 2:
            operator new();
          case 3:
            operator new();
        }
      }

      else if (v22 > 5)
      {
        if (v22 == 6)
        {
          operator new();
        }

        if (v22 == 7)
        {
          operator new();
        }
      }

      else
      {
        if (v22 == 4)
        {
          operator new();
        }

        if (v22 == 5)
        {
          operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v9 & 7, 0) & 1) == 0)
      {
        v24 = 0;
        return v24 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_45:
  v24 = v4 ^ 1;
  return v24 & 1;
}

uint64_t sub_1008071E4(uint64_t result, PB::Writer *this)
{
  v3 = result;
  v4 = *(result + 56);
  if (v4)
  {
    result = PB::Writer::writeSubmessage(this, v4, 1u);
  }

  v5 = v3[5];
  if (v5)
  {
    result = PB::Writer::writeSubmessage(this, v5, 2u);
  }

  v6 = v3[6];
  if (v6)
  {
    result = PB::Writer::writeSubmessage(this, v6, 3u);
  }

  v7 = v3[2];
  if (v7)
  {
    result = PB::Writer::writeSubmessage(this, v7, 4u);
  }

  v8 = v3[3];
  if (v8)
  {
    result = PB::Writer::writeSubmessage(this, v8, 5u);
  }

  v9 = v3[4];
  if (v9)
  {
    result = PB::Writer::writeSubmessage(this, v9, 6u);
  }

  v10 = v3[1];
  if (v10)
  {

    return PB::Writer::writeSubmessage(this, v10, 7u);
  }

  return result;
}

uint64_t sub_1008072AC(uint64_t result)
{
  if (!*(result + 56))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10080733C(uint64_t result)
{
  if (!*(result + 40))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1008073CC(uint64_t result)
{
  if (!*(result + 48))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10080745C(uint64_t result)
{
  if (!*(result + 16))
  {
    operator new();
  }

  return result;
}

uint64_t sub_1008074EC(uint64_t result)
{
  if (!*(result + 24))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10080757C(uint64_t result)
{
  if (!*(result + 32))
  {
    operator new();
  }

  return result;
}

uint64_t sub_10080760C(uint64_t result)
{
  if (!*(result + 8))
  {
    operator new();
  }

  return result;
}

void sub_10080769C(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
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
  v21 = xpc_BOOL_create(*a1);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "trusted";
  sub_10000F688(&v19, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  if (*(a1 + 31) >= 0)
  {
    v7 = (a1 + 8);
  }

  else
  {
    v7 = *(a1 + 8);
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "name";
  sub_10000F688(&v19, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  if (*(a1 + 55) >= 0)
  {
    v8 = (a1 + 32);
  }

  else
  {
    v8 = *(a1 + 32);
  }

  v15 = xpc_string_create(v8);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "model";
  sub_10000F688(&v19, &v15, &v16);
  xpc_release(v16);
  v16 = 0;
  xpc_release(v15);
  v15 = 0;
  if (*(a1 + 79) >= 0)
  {
    v9 = (a1 + 56);
  }

  else
  {
    v9 = *(a1 + 56);
  }

  v13 = xpc_string_create(v9);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "serial_number";
  sub_10000F688(&v19, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v11 = xpc_double_create(*(a1 + 80));
  if (!v11)
  {
    v11 = xpc_null_create();
  }

  v19 = &v23;
  v20 = "last_updated_date";
  sub_10000F688(&v19, &v11, &v12);
  xpc_release(v12);
  v12 = 0;
  xpc_release(v11);
  v11 = 0;
  v10 = v23;
  *a2 = v23;
  if (v10)
  {
    xpc_retain(v10);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v23);
}

void sub_100807990(uint64_t a1, void **a2)
{
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
    __p = &object;
    v15 = "trusted";
    sub_100006354(&__p, v12);
    *a1 = xpc::dyn_cast_or_default(v12, 0, v5);
    xpc_release(v12[0]);
    p_object = &object;
    v9 = "name";
    sub_100006354(&p_object, &v10);
    __p = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = *v12;
    *(a1 + 24) = v13;
    xpc_release(v10);
    p_object = &object;
    v9 = "model";
    sub_100006354(&p_object, &v10);
    __p = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = *v12;
    *(a1 + 48) = v13;
    xpc_release(v10);
    p_object = &object;
    v9 = "serial_number";
    sub_100006354(&p_object, &v10);
    __p = 0;
    v15 = 0;
    v16 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v16) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *v12;
    *(a1 + 72) = v13;
    xpc_release(v10);
    __p = &object;
    v15 = "last_updated_date";
    sub_100006354(&__p, v12);
    xpc::dyn_cast_or_default(v12, v6, 0.0);
    *(a1 + 80) = v7;
    xpc_release(v12[0]);
  }

  else
  {
    *a1 = 0;
    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }

    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
  }

  xpc_release(object);
}

void sub_100807C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, xpc_object_t a12, xpc_object_t object, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  xpc_release(object);
  xpc_release(a12);
  _Unwind_Resume(a1);
}

void sub_100807CF4(uint64_t *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v31 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v31 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v31 = v5;
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
  v31 = v6;
LABEL_9:
  xpc_release(v5);
  if (a1[1] != *a1)
  {
    v7 = xpc_array_create(0, 0);
    if (v7 || (v7 = xpc_null_create()) != 0)
    {
      if (xpc_get_type(v7) == &_xpc_type_array)
      {
        xpc_retain(v7);
        v8 = v7;
      }

      else
      {
        v8 = xpc_null_create();
      }
    }

    else
    {
      v8 = xpc_null_create();
      v7 = 0;
    }

    xpc_release(v7);
    v9 = *a1;
    v10 = a1[1];
    while (v9 != v10)
    {
      if (*(v9 + 23) >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      v12 = xpc_string_create(v11);
      if (!v12)
      {
        v12 = xpc_null_create();
      }

      xpc_array_append_value(v8, v12);
      xpc_release(v12);
      v9 += 24;
    }

    v29 = v8;
    if (v8)
    {
      xpc_retain(v8);
    }

    else
    {
      v29 = xpc_null_create();
    }

    v27 = &v31;
    v28 = "imeis";
    sub_1000609CC(&v27, &v29, &v30);
    xpc_release(v30);
    v30 = 0;
    xpc_release(v29);
    v29 = 0;
    xpc_release(v8);
  }

  v25 = xpc_BOOL_create(*(a1 + 24));
  if (!v25)
  {
    v25 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "trusted";
  sub_10000F688(&v27, &v25, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v25);
  v25 = 0;
  if (*(a1 + 55) >= 0)
  {
    v13 = (a1 + 4);
  }

  else
  {
    v13 = a1[4];
  }

  v23 = xpc_string_create(v13);
  if (!v23)
  {
    v23 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "name";
  sub_10000F688(&v27, &v23, &v24);
  xpc_release(v24);
  v24 = 0;
  xpc_release(v23);
  v23 = 0;
  if (*(a1 + 79) >= 0)
  {
    v14 = (a1 + 7);
  }

  else
  {
    v14 = a1[7];
  }

  v21 = xpc_string_create(v14);
  if (!v21)
  {
    v21 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "model";
  sub_10000F688(&v27, &v21, &v22);
  xpc_release(v22);
  v22 = 0;
  xpc_release(v21);
  v21 = 0;
  if (*(a1 + 103) >= 0)
  {
    v15 = (a1 + 10);
  }

  else
  {
    v15 = a1[10];
  }

  v19 = xpc_string_create(v15);
  if (!v19)
  {
    v19 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "serial_number";
  sub_10000F688(&v27, &v19, &v20);
  xpc_release(v20);
  v20 = 0;
  xpc_release(v19);
  v19 = 0;
  v17 = xpc_double_create(*(a1 + 13));
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v27 = &v31;
  v28 = "last_updated_date";
  sub_10000F688(&v27, &v17, &v18);
  xpc_release(v18);
  v18 = 0;
  xpc_release(v17);
  v17 = 0;
  v16 = v31;
  *a2 = v31;
  if (v16)
  {
    xpc_retain(v16);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v31);
}

void sub_100808138(_Unwind_Exception *a1)
{
  xpc_release(v2);
  xpc_release(v1);
  xpc_release(*(v3 - 56));
  _Unwind_Resume(a1);
}

void sub_100808168(uint64_t a1, xpc_object_t *a2)
{
  v40 = *a2;
  if (v40 && xpc_get_type(v40) == &_xpc_type_dictionary)
  {
    xpc_retain(v40);
    v3 = v40;
  }

  else
  {
    v3 = xpc_null_create();
    v40 = v3;
  }

  if (xpc_get_type(v3) == &_xpc_type_dictionary)
  {
    sub_100008764(a1);
    object = 0;
    __p = &v40;
    v33 = "imeis";
    sub_100015504(&__p, &object);
    __p = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      __p = xpc_null_create();
    }

    sub_100008EA4(&v29, &__p, 0);
    xpc_release(__p);
    __p = object;
    if (object)
    {
      xpc_retain(object);
    }

    else
    {
      __p = xpc_null_create();
    }

    if (xpc_get_type(object) == &_xpc_type_array)
    {
      count = xpc_array_get_count(object);
    }

    else
    {
      count = 0;
    }

    sub_100008EA4(v28, &__p, count);
    xpc_release(__p);
    for (i = v30; i != v28[1] || v29 != v28[0]; i = ++v30)
    {
      v27[0] = &v29;
      v27[1] = i;
      *(v42 + 7) = 0;
      v42[0] = 0;
      sub_100008EF0(v27, &v26);
      __p = 0;
      v33 = 0;
      v34 = 0;
      xpc::dyn_cast_or_default();
      if (SHIBYTE(v34) < 0)
      {
        operator delete(__p);
      }

      v7 = *v41;
      v42[0] = *&v41[8];
      *(v42 + 7) = *&v41[15];
      v8 = v41[23];
      xpc_release(v26);
      v9 = *(a1 + 8);
      v10 = *(a1 + 16);
      if (v9 >= v10)
      {
        v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - *a1) >> 3);
        v14 = v13 + 1;
        if (v13 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          sub_1000CE3D4();
        }

        v15 = 0xAAAAAAAAAAAAAAABLL * ((v10 - *a1) >> 3);
        if (2 * v15 > v14)
        {
          v14 = 2 * v15;
        }

        if (v15 >= 0x555555555555555)
        {
          v16 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v16 = v14;
        }

        *&v36 = a1;
        if (v16)
        {
          sub_100005348(a1, v16);
        }

        v17 = 24 * v13;
        v18 = v42[0];
        *v17 = v7;
        *(v17 + 8) = v18;
        *(v17 + 15) = *(v42 + 7);
        *(v17 + 23) = v8;
        v12 = 24 * v13 + 24;
        v19 = *(a1 + 8) - *a1;
        v20 = v17 - v19;
        memcpy((v17 - v19), *a1, v19);
        v21 = *a1;
        *a1 = v20;
        *(a1 + 8) = v12;
        v22 = *(a1 + 16);
        *(a1 + 16) = 0;
        v34 = v21;
        v35 = v22;
        __p = v21;
        v33 = v21;
        sub_1000054E0(&__p);
      }

      else
      {
        v11 = v42[0];
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 15) = *(v42 + 7);
        *(v9 + 23) = v8;
        v12 = v9 + 24;
      }

      *(a1 + 8) = v12;
    }

    xpc_release(v28[0]);
    xpc_release(v29);
    __p = &v40;
    v33 = "trusted";
    sub_100006354(&__p, v41);
    *(a1 + 24) = xpc::dyn_cast_or_default(v41, 0, v23);
    xpc_release(*v41);
    v29 = &v40;
    v30 = "name";
    sub_100006354(&v29, v28);
    __p = 0;
    v33 = 0;
    v34 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = *v41;
    *(a1 + 48) = *&v41[16];
    xpc_release(v28[0]);
    v29 = &v40;
    v30 = "model";
    sub_100006354(&v29, v28);
    __p = 0;
    v33 = 0;
    v34 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *v41;
    *(a1 + 72) = *&v41[16];
    xpc_release(v28[0]);
    v29 = &v40;
    v30 = "serial_number";
    sub_100006354(&v29, v28);
    __p = 0;
    v33 = 0;
    v34 = 0;
    xpc::dyn_cast_or_default();
    if (SHIBYTE(v34) < 0)
    {
      operator delete(__p);
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = *v41;
    *(a1 + 96) = *&v41[16];
    xpc_release(v28[0]);
    __p = &v40;
    v33 = "last_updated_date";
    sub_100006354(&__p, v41);
    xpc::dyn_cast_or_default(v41, v24, 0.0);
    *(a1 + 104) = v25;
    xpc_release(*v41);
    xpc_release(object);
  }

  else
  {
    LOBYTE(v35) = 0;
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    v38 = 0u;
    v39 = 0u;
    sub_100071A6C(a1);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v33 = 0;
    v34 = 0;
    __p = 0;
    *(a1 + 24) = 0;
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = 0;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    BYTE7(v37[0]) = 0;
    LOBYTE(v36) = 0;
    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    *(a1 + 56) = *(v37 + 8);
    *(a1 + 72) = *(&v37[1] + 1);
    HIBYTE(v37[1]) = 0;
    BYTE8(v37[0]) = 0;
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    *(a1 + 80) = v38;
    v4 = v39;
    BYTE7(v39) = 0;
    LOBYTE(v38) = 0;
    *(a1 + 96) = v4;
    *(a1 + 104) = 0;
    *v41 = &__p;
    sub_1000087B4(v41);
  }

  xpc_release(v40);
}

void sub_100808700(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t a9, uint64_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, xpc_object_t a14, uint64_t a15, xpc_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

BOOL sub_100808894(uint64_t a1)
{
  if (*(a1 + 8) == *a1)
  {
    return 0;
  }

  v1 = *(a1 + 79);
  if (v1 < 0)
  {
    v2 = *(a1 + 56);
    v1 = *(a1 + 64);
  }

  else
  {
    v2 = (a1 + 56);
  }

  v4 = &v2[v1];
  if (v1 >= 4)
  {
    v5 = v2;
    do
    {
      v6 = memchr(v5, 105, v1 - 3);
      if (!v6)
      {
        break;
      }

      if (*v6 == 1684099177)
      {
        return v6 != v4 && v6 - v2 != -1;
      }

      v5 = v6 + 1;
      v1 = v4 - v5;
    }

    while (v4 - v5 > 3);
  }

  v6 = v4;
  return v6 != v4 && v6 - v2 != -1;
}

BOOL sub_10080893C(uint64_t a1)
{
  v1 = *(a1 + 79);
  if (v1 < 0)
  {
    v2 = *(a1 + 56);
    v1 = *(a1 + 64);
  }

  else
  {
    v2 = (a1 + 56);
  }

  v3 = &v2[v1];
  if (v1 >= 13)
  {
    v4 = v2;
    do
    {
      v5 = memchr(v4, 82, v1 - 12);
      if (!v5)
      {
        break;
      }

      if (*v5 == 0x447974696C616552 && *(v5 + 5) == 0x6563697665447974)
      {
        return v5 != v3 && v5 - v2 != -1;
      }

      v4 = v5 + 1;
      v1 = v3 - v4;
    }

    while (v3 - v4 > 12);
  }

  v5 = v3;
  return v5 != v3 && v5 - v2 != -1;
}

void sub_1008089EC()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_100808AAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, const void *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  sub_10001021C(&a10);
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100808AE0(uint64_t a1, const void **a2)
{
  if (*a2)
  {
    theDict = 0;
    v19 = 0;
    sub_100010024(&theDict, a2);
    v19 = a1;
    Value = CFDictionaryGetValue(theDict, @"PRIVersion_Major");
    v4 = Value;
    if (Value && (v5 = CFGetTypeID(Value), v5 == CFNumberGetTypeID()) && (v20 = 0, ctu::cf::assign(&v20, v4, v6), *(a1 + 24) = v20, v7 = CFDictionaryGetValue(theDict, @"PRIVersion_Minor"), (v8 = v7) != 0) && (v9 = CFGetTypeID(v7), v9 == CFNumberGetTypeID()) && (v20 = 0, ctu::cf::assign(&v20, v8, v10), *(a1 + 28) = v20, v11 = CFDictionaryGetValue(theDict, @"PRIVersion_ReleaseNo"), (v12 = v11) != 0) && (v13 = CFGetTypeID(v11), v13 == CFNumberGetTypeID()))
    {
      v20 = 0;
      ctu::cf::assign(&v20, v12, v14);
      *(a1 + 32) = v20;
      v15 = 1;
    }

    else
    {
      v15 = 0;
    }

    sub_10001021C(&theDict);
  }

  else
  {
    v16 = *a1;
    v15 = 0;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(theDict) = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#N Invalid activation info dictionary", &theDict, 2u);
      return 0;
    }
  }

  return v15;
}

void sub_100808C80()
{
  v0 = 0;
  v1 = 0;
  operator new();
}

void sub_100808D24(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100808D50(NSObject **a1, std::string::size_type a2)
{
  ctu::split_any();
  v4 = *a1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a2 + 23) >= 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = *a2;
    }

    LODWORD(__str.__r_.__value_.__l.__data_) = 134218242;
    *(__str.__r_.__value_.__r.__words + 4) = 0;
    WORD2(__str.__r_.__value_.__r.__words[1]) = 2080;
    *(&__str.__r_.__value_.__r.__words[1] + 6) = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#N Expected to find 3 tokens in cached PRI version string. Found %ld instead: %s", &__str, 0x16u);
  }

  return 0;
}

void sub_100808F10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, __int128 __p, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  if (a2 == 1)
  {
    v21 = __cxa_begin_catch(exception_object);
    v22 = *v18;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v17 + 23) < 0)
      {
        v17 = *v17;
      }

      v23 = (*(*v21 + 16))(v21);
      LODWORD(__p) = 136315394;
      *(&__p + 4) = v17;
      WORD6(__p) = 2080;
      *(&__p + 14) = v23;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#N Could not convert PRI version string (%s) into integers: %s", &__p, 0x16u);
    }

    __cxa_end_catch();
    JUMPOUT(0x100808EC8);
  }

  if (a10)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100809010(uint64_t a1)
{
  ctu::OsLogContext::OsLogContext(&v3, kCtLoggingSystemName, "set.bb.pri");
  ctu::OsLogLogger::OsLogLogger(v4, &v3);
  ctu::OsLogLogger::OsLogLogger(a1, v4);
  ctu::OsLogLogger::~OsLogLogger(v4);
  ctu::OsLogContext::~OsLogContext(&v3);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 32) = 0;
  *(a1 + 24) = 0;
  return a1;
}

void sub_10080908C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  _Unwind_Resume(a1);
}

void sub_1008090B0(ctu::OsLogLogger *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger(this);
}

void sub_10080913C(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1008091D4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1008091E8(va);
  _Unwind_Resume(a1);
}

ctu::OsLogLogger **sub_1008091E8(ctu::OsLogLogger **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1008090B0(v2);
    operator delete();
  }

  return a1;
}

void sub_100809234(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

ctu::OsLogLogger *sub_10080926C(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1008090B0(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1008092B0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1008093D4(_Unwind_Exception *a1)
{
  std::__shared_weak_count::~__shared_weak_count(v1);
  operator delete(v3);
  _Unwind_Resume(a1);
}

void *sub_1008093EC(void *a1)
{
  *a1 = off_101E45F68;
  v2 = (a1 + 1);
  ctu::OsLogContext::OsLogContext(&v4, kCtLoggingSystemName, "call");
  ctu::OsLogLogger::OsLogLogger(v5, &v4);
  ctu::OsLogLogger::OsLogLogger(v2, v5);
  ctu::OsLogLogger::~OsLogLogger(v5);
  ctu::OsLogContext::~OsLogContext(&v4);
  a1[2] = 0;
  a1[3] = 0;
  *a1 = off_101E86190;
  return a1;
}

void sub_10080949C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void sub_1008094D0(uint64_t a1, int a2, uint64_t a3)
{
  v6 = xpc_dictionary_create(0, 0, 0);
  if (v6 || (v6 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v6) == &_xpc_type_dictionary)
    {
      xpc_retain(v6);
      v7 = v6;
    }

    else
    {
      v7 = xpc_null_create();
    }
  }

  else
  {
    v7 = xpc_null_create();
    v6 = 0;
  }

  xpc_release(v6);
  v24 = 0;
  v8 = xpc_dictionary_create(0, 0, 0);
  v9 = v8;
  if (v8)
  {
    v24 = v8;
  }

  else
  {
    v9 = xpc_null_create();
    v24 = v9;
    if (!v9)
    {
      v10 = xpc_null_create();
      v9 = 0;
      goto LABEL_14;
    }
  }

  if (xpc_get_type(v9) == &_xpc_type_dictionary)
  {
    xpc_retain(v9);
    goto LABEL_15;
  }

  v10 = xpc_null_create();
LABEL_14:
  v24 = v10;
LABEL_15:
  xpc_release(v9);
  switch(a2)
  {
    case 1:
      if (CallInfo::operator BOOL())
      {
        sub_100373498(a3, &v20);
        *&buf = &v24;
        *(&buf + 1) = "kCTCallProcessing";
        sub_100DAE90C(&buf, &v20, &v21);
        xpc_release(v21);
        v21 = 0;
        xpc_release(v20);
        v20 = 0;
      }

      else
      {
        v12 = *(a1 + 8);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = sub_10000FD6C(1);
          sub_101780718(v13, &buf, v12);
        }
      }

      break;
    case 3:
      if (CallInfo::operator BOOL())
      {
        sub_100373498(a3, &v18);
        *&buf = &v24;
        *(&buf + 1) = "kCTCallProcessing";
        sub_100DAE90C(&buf, &v18, &v19);
        xpc_release(v19);
        v19 = 0;
        xpc_release(v18);
        v18 = 0;
      }

      break;
    case 2:
      if (CallInfo::operator BOOL())
      {
        sub_100373498(a3, &v22);
        *&buf = &v24;
        *(&buf + 1) = "kCTCallProcessing";
        sub_100DAE90C(&buf, &v22, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v22);
        v22 = 0;
      }

      else
      {
        v14 = *(a1 + 8);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v15 = sub_10000FD6C(2);
          sub_101780718(v15, &buf, v14);
        }
      }

      break;
    default:
      v11 = *(a1 + 8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = sub_10000FD6C(a2);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I %s does not need any extra info. Sending.", &buf, 0xCu);
      }

      break;
  }

  v17 = v7;
  if (v7)
  {
    xpc_retain(v7);
  }

  else
  {
    v17 = xpc_null_create();
  }

  v16 = v24;
  if (v24)
  {
    xpc_retain(v24);
  }

  else
  {
    v16 = xpc_null_create();
  }

  sub_10002A37C(a2, &v17, &v16);
  xpc_release(v16);
  xpc_release(v17);
  xpc_release(v24);
  xpc_release(v7);
}

void sub_100809838(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, xpc_object_t object)
{
  xpc_release(object);
  xpc_release(v18);
  _Unwind_Resume(a1);
}

const void **sub_1008098F0(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = CallInfo::kDefaultCallId;
  v7 = 0x100000001;
  v8 = 9;
  sub_10000501C(v9, kCallerIdDefaultValue);
  v10 = 1;
  v11 = 1;
  v12 = 0x200000004;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  sub_10000501C(v16, "");
  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  sub_10000501C(v20, "");
  v20[24] = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0u;
  memset(v26, 0, 25);
  memset(&v26[28], 0, 64);
  v26[92] = 1;
  v26[96] = 0;
  v26[100] = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  *(v27 + 3) = 0;
  v27[0] = 0;
  *(v28 + 3) = 0;
  v28[0] = 0;
  (*(*a1 + 16))(a1, a2, &v5);
  return sub_1000BFE80(&v5);
}

void sub_100809ACC(uint64_t a1, uint64_t a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_dictionary)
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
  v12 = 0;
  v5 = xpc_dictionary_create(0, 0, 0);
  v6 = v5;
  if (v5)
  {
    v12 = v5;
  }

  else
  {
    v6 = xpc_null_create();
    v12 = v6;
    if (!v6)
    {
      v7 = xpc_null_create();
      v6 = 0;
      goto LABEL_14;
    }
  }

  if (xpc_get_type(v6) == &_xpc_type_dictionary)
  {
    xpc_retain(v6);
    goto LABEL_15;
  }

  v7 = xpc_null_create();
LABEL_14:
  v12 = v7;
LABEL_15:
  xpc_release(v6);
  if (CallInfo::operator BOOL())
  {
    sub_100373498(a2, &v10);
    v9[0] = &v12;
    v9[1] = "kCTCallProcessing";
    sub_100DAE90C(v9, &v10, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v10);
    v10 = 0;
  }

  v9[0] = v4;
  if (v4)
  {
    xpc_retain(v4);
  }

  else
  {
    v9[0] = xpc_null_create();
  }

  v8 = v12;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    v8 = xpc_null_create();
  }

  sub_10002A37C(3, v9, &v8);
  xpc_release(v8);
  xpc_release(v9[0]);
  xpc_release(v12);
  xpc_release(v4);
}

void sub_100809CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object, xpc_object_t a10, uint64_t a11, uint64_t a12, uint64_t a13, xpc_object_t a14)
{
  xpc_release(object);
  xpc_release(a10);
  xpc_release(a14);
  xpc_release(v14);
  _Unwind_Resume(a1);
}

void sub_100809D10(uint64_t a1, void *a2)
{
  v28 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v28 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v28 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v28 = v5;
LABEL_9:
  xpc_release(v4);
  v8 = *a2;
  v6 = a2 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      v32 = 0;
      memset(v31, 0, sizeof(v31));
      *&v31[0] = v7[4];
      sub_10080A550(v31 + 8, (v7 + 5));
      __p[0] = 0;
      __p[1] = 0;
      v27 = 0;
      ctu::cf::assign();
      *v29 = 0u;
      v30 = 0u;
      sub_10080A550(v29, v31 + 8);
      LOBYTE(v22) = 0;
      v9 = sub_10080A654(v29);
      if (v9)
      {
        v24 = xpc_BOOL_create(*v9);
        if (!v24)
        {
          v24 = xpc_null_create();
        }

        if (v27 >= 0)
        {
          v10 = __p;
        }

        else
        {
          v10 = __p[0];
        }

        v22 = &v28;
        v23 = v10;
        sub_10000F688(&v22, &v24, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v24);
        v24 = 0;
      }

      else
      {
        LOBYTE(v22) = 0;
        v11 = sub_10080A6A0(v29);
        if (v11)
        {
          v20 = xpc_int64_create(*v11);
          if (!v20)
          {
            v20 = xpc_null_create();
          }

          if (v27 >= 0)
          {
            v12 = __p;
          }

          else
          {
            v12 = __p[0];
          }

          v22 = &v28;
          v23 = v12;
          sub_10000F688(&v22, &v20, &v21);
          xpc_release(v21);
          v21 = 0;
          xpc_release(v20);
          v20 = 0;
        }

        else
        {
          LOBYTE(v22) = 0;
          v13 = sub_10080A6F4(v29);
          if (v13)
          {
            if (*(v13 + 23) < 0)
            {
              v13 = *v13;
            }

            v18 = xpc_string_create(v13);
            if (!v18)
            {
              v18 = xpc_null_create();
            }

            if (v27 >= 0)
            {
              v14 = __p;
            }

            else
            {
              v14 = __p[0];
            }

            v22 = &v28;
            v23 = v14;
            sub_10000F688(&v22, &v18, &v19);
            xpc_release(v19);
            v19 = 0;
            xpc_release(v18);
            v18 = 0;
          }
        }
      }

      sub_10080A5FC(v29);
      if (SHIBYTE(v27) < 0)
      {
        operator delete(__p[0]);
      }

      sub_10080A5FC(v31 + 8);
      v15 = v7[1];
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
          v16 = v7[2];
          v17 = *v16 == v7;
          v7 = v16;
        }

        while (!v17);
      }

      v7 = v16;
    }

    while (v16 != v6);
  }

  *&v31[0] = v28;
  if (v28)
  {
    xpc_retain(v28);
  }

  else
  {
    *&v31[0] = xpc_null_create();
  }

  v29[0] = xpc_null_create();
  sub_10002A37C(94, v31, v29);
  xpc_release(v29[0]);
  xpc_release(*&v31[0]);
  xpc_release(v28);
}

void sub_10080A034(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, xpc_object_t a23, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10080A100(uint64_t a1)
{
  v2 = sub_100B051A4();
  if (v2)
  {
    sub_100B051E4(v2);
    (*(*a1 + 48))(a1);
  }

  sub_10097D724();
}

void sub_10080A170(uint64_t a1, BOOL a2)
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v13 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v13 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v13 = v5;
LABEL_9:
  xpc_release(v4);
  __p[0] = 0;
  __p[1] = 0;
  v12 = 0;
  ctu::cf::assign();
  v9 = xpc_BOOL_create(a2);
  if (!v9)
  {
    v9 = xpc_null_create();
  }

  v6 = __p;
  if (v12 < 0)
  {
    v6 = __p[0];
  }

  v8[0] = &v13;
  v8[1] = v6;
  sub_10000F688(v8, &v9, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v9);
  v9 = 0;
  v8[0] = v13;
  if (v13)
  {
    xpc_retain(v13);
  }

  else
  {
    v8[0] = xpc_null_create();
  }

  v7 = xpc_null_create();
  sub_10002A37C(126, v8, &v7);
  xpc_release(v7);
  xpc_release(v8[0]);
  if (SHIBYTE(v12) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v13);
}

void sub_10080A2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, xpc_object_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  xpc_release(object);
  xpc_release(a11);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v20 - 24));
  _Unwind_Resume(a1);
}

void sub_10080A36C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_10080A3B4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  TMKXPCServer.shutdown()();

  operator delete();
}

void sub_10080A430(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E86260;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10080A4AC(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));

  TMKXPCServer.shutdown()();
}

void sub_10080A4F4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 8));
  TMKXPCServer.shutdown()();

  operator delete();
}

uint64_t sub_10080A550(uint64_t a1, uint64_t a2)
{
  v2 = (a2 + 8);
  switch(*a2 ^ (*a2 >> 31))
  {
    case 0:
      *(a1 + 8) = *v2;
      break;
    case 1:
      *(a1 + 8) = *v2;
      break;
    case 2:
      if (*(a2 + 31) < 0)
      {
        sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v5 = *v2;
        *(a1 + 24) = *(a2 + 24);
        *(a1 + 8) = v5;
      }

      break;
    default:
      sub_100100ED4();
  }

  *a1 = *a2 ^ (*a2 >> 31);
  return a1;
}

void sub_10080A5FC(uint64_t a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 >= 2)
  {
    if (v1 != 2)
    {
      sub_100100ED4();
    }

    if (*(a1 + 31) < 0)
    {
      v2 = *(a1 + 8);

      operator delete(v2);
    }
  }
}

_DWORD *sub_10080A654(int *a1)
{
  v2 = *a1;
  result = a1 + 2;
  switch(v2 ^ (v2 >> 31))
  {
    case 0:
      return result;
    case 1:
    case 2:
      result = 0;
      break;
    default:
      sub_100100ED4();
  }

  return result;
}

_DWORD *sub_10080A6A0(int *a1)
{
  v1 = 0;
  switch(*a1 ^ (*a1 >> 31))
  {
    case 0:
    case 2:
      return v1;
    case 1:
      v1 = a1 + 2;
      break;
    default:
      sub_100100ED4();
  }

  return v1;
}

int *sub_10080A6F4(int *a1)
{
  v1 = *a1 ^ (*a1 >> 31);
  if (v1 < 2)
  {
    return 0;
  }

  if (v1 != 2)
  {
    sub_100100ED4();
  }

  return a1 + 2;
}

void *sub_10080A808(void *a1, void *a2)
{
  v3 = a2;
  ctu::OsLogContext::OsLogContext(&v5, kCtLoggingSystemName, "cp.ids.sub");
  ctu::OsLogLogger::OsLogLogger(v6, &v5);
  ctu::OsLogLogger::OsLogLogger((a1 + 1), v6);
  ctu::OsLogLogger::~OsLogLogger(v6);
  ctu::OsLogContext::~OsLogContext(&v5);
  *a1 = off_101E86330;
  a1[2] = v3;
  return a1;
}

void sub_10080A8C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va1);
  ctu::OsLogContext::~OsLogContext(va);
  CellularPlanIDSSubscriptionSelectorInterface::~CellularPlanIDSSubscriptionSelectorInterface(v2);

  _Unwind_Resume(a1);
}

uint64_t sub_10080A900(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3321888768;
  v4[2] = sub_10080A9D4;
  v4[3] = &unk_101E86350;
  v4[4] = a1;
  sub_1002F67CC(v5, a2);
  [v2 requestSelectedSubscriptionsWithCompletion:v4];
  return sub_1002F31C8(v5);
}

void sub_10080A9D4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v31[0] = 0;
  v31[1] = 0;
  v30 = v31;
  v20 = v6;
  v21 = v5;
  if (!v5 || v6)
  {
    v18 = *(v7 + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_101780760(v20, v18);
    }

    v17 = *(a1 + 64);
    if (!v17)
    {
LABEL_18:
      sub_100022DB4();
    }
  }

  else
  {
    v19 = a1;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v9)
    {
      v10 = *v27;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v27 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v26 + 1) + 8 * i);
          if (v12)
          {
            v13 = [*(*(&v26 + 1) + 8 * i) labelID];
            v14 = [v13 length] == 0;

            if (!v14)
            {
              v15 = [v12 labelID];
              v16 = v15;
              [v15 UTF8String];
              sub_100072D94();
            }

            if (os_log_type_enabled(*(v7 + 8), OS_LOG_TYPE_ERROR))
            {
              sub_1017807D8(&v22, v23);
            }
          }

          else if (os_log_type_enabled(*(v7 + 8), OS_LOG_TYPE_ERROR))
          {
            sub_101780814(&v24, v25);
          }
        }

        v9 = [v8 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v9);
    }

    v17 = *(v19 + 64);
    if (!v17)
    {
      goto LABEL_18;
    }
  }

  (*(*v17 + 48))(v17, &v30);
  sub_100009970(&v30, v31[0]);
}

void sub_10080AC34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, char *a27)
{
  sub_100009970(&a26, a27);

  _Unwind_Resume(a1);
}

void sub_10080ACA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2 + 1;
  v6 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v7 = v6 + 4;
      if (*(v6 + 55) < 0)
      {
        v7 = *v7;
      }

      v8 = [NSString stringWithUTF8String:v7];
      v9 = [IDSPhoneSubscription phoneSubscriptionWithLabelID:v8];

      v10 = *(a1 + 16);
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10080AF20;
      v28[3] = &unk_101E86388;
      v30 = a1;
      v11 = v9;
      v29 = v11;
      [v10 selectSubscription:v11 withCompletion:v28];

      v12 = v6[1];
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
          v13 = v6[2];
          v14 = *v13 == v6;
          v6 = v13;
        }

        while (!v14);
      }

      v6 = v13;
    }

    while (v13 != v5);
  }

  v17 = *a3;
  v15 = a3 + 1;
  v16 = v17;
  if (v17 != v15)
  {
    do
    {
      v18 = v16 + 4;
      if (*(v16 + 55) < 0)
      {
        v18 = *v18;
      }

      v19 = [NSString stringWithUTF8String:v18];
      v20 = [IDSPhoneSubscription phoneSubscriptionWithLabelID:v19];

      v21 = *(a1 + 16);
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_10080AF94;
      v25[3] = &unk_101E86388;
      v27 = a1;
      v22 = v20;
      v26 = v22;
      [v21 unselectSubscription:v22 withCompletion:v25];

      v23 = v16[1];
      if (v23)
      {
        do
        {
          v24 = v23;
          v23 = *v23;
        }

        while (v23);
      }

      else
      {
        do
        {
          v24 = v16[2];
          v14 = *v24 == v16;
          v16 = v24;
        }

        while (!v14);
      }

      v16 = v24;
    }

    while (v24 != v15);
  }
}

void sub_10080AF20(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(*(*(a1 + 40) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_101780850();
  }
}

void sub_10080AF94(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(*(*(a1 + 40) + 8), OS_LOG_TYPE_ERROR))
  {
    sub_1017808C8();
  }
}

void sub_10080B008(id *a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));

  CellularPlanIDSSubscriptionSelectorInterface::~CellularPlanIDSSubscriptionSelectorInterface(a1);
}

void sub_10080B04C(id *a1)
{
  ctu::OsLogLogger::~OsLogLogger((a1 + 1));
  CellularPlanIDSSubscriptionSelectorInterface::~CellularPlanIDSSubscriptionSelectorInterface(a1);

  operator delete();
}

void sub_10080B10C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_101780940(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080B128(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10080B160(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t sub_10080B190(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_10080B1D0(_BOOL8 result)
{
  if (*(result + 32) == 1)
  {
    if (*(result + 136))
    {
      return sub_10080B260(0x800F7);
    }
  }

  return result;
}

BOOL sub_10080B260(wis::MetricFactory *a1)
{
  v1 = a1;
  SharedMetricFactory = wis::MetricFactory::getSharedMetricFactory(a1);
  v7 = wis::MetricFactory::newMetricContainerWithIdentifier(SharedMetricFactory, v1);
  if (v7)
  {
    v5 = 0;
    v6 = 0;
    sub_10001C610(&v5);
    v3 = v5 != 0;
    if (v5)
    {
      operator new();
    }

    if (v6)
    {
      sub_100004A34(v6);
    }
  }

  else
  {
    v3 = 0;
  }

  sub_10001C0A0(&v7);
  return v3;
}

void sub_10080B38C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, ...)
{
  va_start(va, a4);
  if (a4)
  {
    sub_100004A34(a4);
  }

  sub_10001C0A0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080B40C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 32);
  v5 = *(v4 + 120);
  v6 = (v4 + 128);
  if (v5 != (v4 + 128))
  {
    do
    {
      v7 = *(v5 + 32);
      if (v7 <= 0xA)
      {
        v8 = dword_10183FF6C[v7];
        result = awd::metrics::CommCenterFileType_IsValid(v8, a2);
        if ((result & 1) == 0)
        {
          sub_101780964();
        }

        v9 = *(a2 + 72);
        if (v9 == *(a2 + 76))
        {
          result = sub_10080B50C(a2 + 64, v9 + 1);
          v9 = *(a2 + 72);
        }

        v10 = *(a2 + 64);
        *(a2 + 72) = v9 + 1;
        *(v10 + 4 * v9) = v8;
      }

      v11 = v5[1];
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
          v12 = v5[2];
          v13 = *v12 == v5;
          v5 = v12;
        }

        while (!v13);
      }

      v5 = v12;
    }

    while (v12 != v6);
  }

  v14 = *(v3 + 40);
  if (v14 < 3)
  {
    result = awd::metrics::CommCenterFilePushReason_IsValid(v14, a2);
    if ((result & 1) == 0)
    {
      sub_101780990();
    }

    *(a2 + 88) |= 0x10u;
    *(a2 + 80) = v14;
  }

  return result;
}

uint64_t sub_10080B50C(uint64_t result, int a2)
{
  v2 = *(result + 12);
  if (v2 < a2)
  {
    v3 = 2 * v2;
    if (v3 <= a2)
    {
      v3 = a2;
    }

    if (v3 <= 4)
    {
      v3 = 4;
    }

    *(result + 12) = v3;
    operator new[]();
  }

  return result;
}

void sub_10080B5BC(const char *a1@<X0>, void *a2@<X8>)
{
  v18 = 0;
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v18 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v18 = v5;
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
  v18 = v6;
LABEL_9:
  xpc_release(v5);
  if (xpc_get_type(v18) == &_xpc_type_dictionary)
  {
    v16 = xpc_string_create("com.apple.commcenter.root-helper-xpc");
    if (!v16)
    {
      v16 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServiceXPCName;
    sub_10000F688(&v14, &v16, &v17);
    xpc_release(v17);
    v17 = 0;
    xpc_release(v16);
    v16 = 0;
    v12 = xpc_string_create("CommCenterRootHelperNotification");
    if (!v12)
    {
      v12 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServiceNotificationName;
    sub_10000F688(&v14, &v12, &object);
    xpc_release(object);
    object = 0;
    xpc_release(v12);
    v12 = 0;
    v10 = xpc_string_create("CommCenterRootHelperServer");
    if (!v10)
    {
      v10 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kServerHostName;
    sub_10000F688(&v14, &v10, &v11);
    xpc_release(v11);
    v11 = 0;
    xpc_release(v10);
    v10 = 0;
    v8 = xpc_string_create(a1);
    if (!v8)
    {
      v8 = xpc_null_create();
    }

    v14 = &v18;
    v15 = TelephonyXPC::kClientHostName;
    sub_10000F688(&v14, &v8, &v9);
    xpc_release(v9);
    v9 = 0;
    xpc_release(v8);
    v8 = 0;
  }

  *a2 = 0;
  a2[1] = 0;
  v7 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v7 = xpc_null_create();
  }

  TelephonyXPC::Client::create();
  xpc_release(v7);
  xpc_release(v18);
}

void sub_10080B870(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, xpc_object_t object)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  xpc_release(object);
  xpc_release(*(v11 - 40));
  _Unwind_Resume(a1);
}

uint64_t sub_10080B8BC(uint64_t a1, BOOL a2)
{
  v22 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v22 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v22 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v22 = v5;
LABEL_9:
  xpc_release(v4);
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v21 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_17;
  }

  v8 = xpc_null_create();
LABEL_16:
  v21 = v8;
LABEL_17:
  xpc_release(v7);
  v18 = 0;
  v17 = 3760250881;
  v19 = 0;
  v20 = 0;
  v15 = xpc_BOOL_create(a2);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  __p[0] = &v22;
  __p[1] = "Allowed";
  sub_10000F688(__p, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  sub_10000501C(__p, "SetUltraConstrainedDefaultAllowed");
  v12 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v12 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v17, __p);
      sub_1017809BC();
    }

    v9 = 0x500000000;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  xpc_release(v21);
  xpc_release(v22);
  return v9 | v10;
}

uint64_t sub_10080BBE4(uint64_t a1, int a2)
{
  v22 = 0;
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = v3;
  if (v3)
  {
    v22 = v3;
  }

  else
  {
    v4 = xpc_null_create();
    v22 = v4;
    if (!v4)
    {
      v5 = xpc_null_create();
      v4 = 0;
      goto LABEL_8;
    }
  }

  if (xpc_get_type(v4) == &_xpc_type_dictionary)
  {
    xpc_retain(v4);
    goto LABEL_9;
  }

  v5 = xpc_null_create();
LABEL_8:
  v22 = v5;
LABEL_9:
  xpc_release(v4);
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v21 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v21 = v7;
    if (!v7)
    {
      v8 = xpc_null_create();
      v7 = 0;
      goto LABEL_16;
    }
  }

  if (xpc_get_type(v7) == &_xpc_type_dictionary)
  {
    xpc_retain(v7);
    goto LABEL_17;
  }

  v8 = xpc_null_create();
LABEL_16:
  v21 = v8;
LABEL_17:
  xpc_release(v7);
  v18 = 0;
  v17 = 3760250881;
  v19 = 0;
  v20 = 0;
  v15 = xpc_int64_create(a2);
  if (!v15)
  {
    v15 = xpc_null_create();
  }

  __p[0] = &v22;
  __p[1] = "TcpHeuristicsFlags";
  sub_10000F688(__p, &v15, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v15);
  v15 = 0;
  sub_10000501C(__p, "SetTcpLinkHeuristicsFlags");
  v12 = v22;
  if (v22)
  {
    xpc_retain(v22);
  }

  else
  {
    v12 = xpc_null_create();
  }

  TelephonyXPC::Client::performWithBlockingSyncReply();
  xpc_release(v12);
  if (v14 < 0)
  {
    operator delete(__p[0]);
  }

  if (v17)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10064CB44(&v17, __p);
      sub_101780A28();
    }

    v9 = 0x500000000;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  if (SHIBYTE(v20) < 0)
  {
    operator delete(v18);
  }

  xpc_release(v21);
  xpc_release(v22);
  return v9 | v10;
}

uint64_t sub_10080BF0C(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_10080C0CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, std::__shared_weak_count *a6, ...)
{
  va_start(va, a6);
  sub_10000FF50(va);
  if (v6)
  {
    dispatch_release(v6);
  }

  if (a6)
  {
    sub_100004A34(a6);
  }

  _Unwind_Resume(a1);
}

void sub_10080C108()
{
  v0 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(buf, v0, LogGroupName);
  v2 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Device supports SIM OTA provisioning over BIP", buf, 2u);
  }

  v8 = 0;
  v9 = 0;
  sGetSubscriberSimInterface();
  if (v8)
  {
    v6 = 0;
    v7 = 0;
    sub_10080CCF4();
  }

  v3 = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(buf, v0, v3);
  v4 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "No subscriber interface to send SIM reprovision", buf, 2u);
  }

  if (v9)
  {
    sub_100004A34(v9);
  }
}

void sub_10080C620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, const void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, uint64_t a20, std::__shared_weak_count *a21, char a22)
{
  sub_100005978(&a9);
  sub_100005978(&a10);
  sub_100004A34(v22);
  if (a19)
  {
    sub_100004A34(a19);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(a1);
}

void sub_10080C70C(id a1, BOOL a2)
{
  v2 = a2;
  v3 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(v6, v3, LogGroupName);
  v5 = v7;
  ctu::OsLogContext::~OsLogContext(v6);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v2;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Sent SIM reprovision: %d", v6, 8u);
  }
}

uint64_t sub_10080C7D8(Registry **a1)
{
  ServiceMap = Registry::getServiceMap(*a1);
  v2 = ServiceMap;
  if (v3 < 0)
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
  *&v15 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v15);
  if (!v7)
  {
    std::mutex::unlock(v2);
    goto LABEL_9;
  }

  v9 = v7[3];
  v8 = v7[4];
  if (!v8)
  {
    std::mutex::unlock(v2);
    if (v9)
    {
      goto LABEL_11;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_18;
  }

  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  std::mutex::unlock(v2);
  atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  sub_100004A34(v8);
  if (!v9)
  {
    v10 = 0;
LABEL_17:
    sub_100004A34(v8);
    goto LABEL_18;
  }

LABEL_11:
  v15 = 0uLL;
  sub_100419790(v9, &v15);
  if (v15)
  {
    v10 = (*(*v15 + 96))(v15);
  }

  else
  {
    v10 = 0;
  }

  if (*(&v15 + 1))
  {
    sub_100004A34(*(&v15 + 1));
  }

  if (v8)
  {
    goto LABEL_17;
  }

LABEL_18:
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v15, kCtLoggingSystemName, LogGroupName);
  v12 = *(&v15 + 1);
  ctu::OsLogContext::~OsLogContext(&v15);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = "false";
    if (v10)
    {
      v13 = "true";
    }

    LODWORD(v15) = 136315138;
    *(&v15 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "Supports OTA %s", &v15, 0xCu);
  }

  return v10;
}

void sub_10080C9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
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

void *sub_10080CA14(void *a1)
{
  *a1 = off_101E864D8;
  v2 = a1[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  return a1;
}

void sub_10080CA60(void *a1)
{
  *a1 = off_101E864D8;
  v1 = a1[1];
  if (v1)
  {
    dispatch_release(v1);
  }

  operator delete();
}

void sub_10080CB34(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E864D8;
  a2[1] = v2;
  if (v2)
  {
    dispatch_retain(v2);
  }
}

void sub_10080CB60(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1)
  {
    dispatch_release(v1);
  }
}

void sub_10080CB70(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    dispatch_release(v2);
  }

  operator delete(__p);
}

intptr_t sub_10080CBB0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = kCtLoggingSystemName;
  LogGroupName = sGetLogGroupName();
  ctu::OsLogContext::OsLogContext(&v9, v4, LogGroupName);
  v6 = *&v10[4];
  ctu::OsLogContext::~OsLogContext(&v9);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = "failed";
    if (v3)
    {
      v7 = "complete";
    }

    v9 = 136315138;
    *v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "CSIM reset %s", &v9, 0xCu);
  }

  return dispatch_semaphore_signal(*(a1 + 8));
}

uint64_t sub_10080CCA8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10080CD60(uint64_t a1, uint64_t *a2)
{
  *(a1 + 8) = 0u;
  *a1 = off_101E3EEC0;
  *(a1 + 32) = 0u;
  *(a1 + 24) = 0;
  sub_100034C50(a1 + 24, *a2, a2[1], a2[1] - *a2);
  return a1;
}

uint64_t sub_10080CDD4()
{
  v1 = 0x15F14430000000A0;
  v2 = 16868198;
  qmemcpy(v3, "CI1", sizeof(v3));
  qword_101FBAC50 = 0;
  unk_101FBAC58 = 0;
  qword_101FBAC48 = 0;
  sub_1000DCF88(&qword_101FBAC48, &v1, &v4, 15);
  return __cxa_atexit(sub_10080BF0C, &qword_101FBAC48, &_mh_execute_header);
}

uint64_t sub_10080CE94(uint64_t a1, os_log_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 24);
  if (v4)
  {
    *v11 = 0u;
    v12 = 0u;
    *buf = 0u;
    (*(*v4 + 48))(buf);
    __dst[0] = 0;
    __dst[1] = 0;
    v9 = 0;
    if (SHIBYTE(v11[0]) < 0)
    {
      sub_100005F2C(__dst, *buf, *&buf[8]);
    }

    else
    {
      *__dst = *buf;
      v9 = v11[0];
    }

    v6 = HIBYTE(v9);
    if (SHIBYTE(v9) < 0)
    {
      v6 = __dst[1];
    }

    if (v6)
    {
      sub_100808C80();
    }

    if ((HIBYTE(v9) & 0x80) != 0)
    {
      operator delete(__dst[0]);
    }

    if (SHIBYTE(v12) < 0)
    {
      operator delete(v11[1]);
    }

    if (SHIBYTE(v11[0]) < 0)
    {
      operator delete(*buf);
    }
  }

  else
  {
    v5 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#N Invalid PRI versions functor", buf, 2u);
    }
  }

  return 0;
}

void sub_10080D3FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, char a27)
{
  if (a10)
  {
    sub_100004A34(a10);
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

  sub_1000D6F38(&a27);
  _Unwind_Resume(a1);
}

double sub_10080D480(uint64_t a1)
{
  *a1 = &off_101E86558;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

void sub_10080D4B0(PB::Base *this)
{
  *this = &off_101E86558;
  v4 = *(this + 5);
  v2 = (this + 40);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    sub_100140988(v2, v3);
  }

  v5 = *(this + 4);
  *(this + 4) = 0;
  if (v5)
  {
    sub_100140988(this + 32, v5);
  }

  v6 = *(this + 3);
  *(this + 3) = 0;
  if (v6)
  {
    sub_100140988(this + 24, v6);
  }

  v7 = *(this + 2);
  *(this + 2) = 0;
  if (v7)
  {
    sub_100140988(this + 16, v7);
  }

  v8 = *(this + 1);
  *(this + 1) = 0;
  if (v8)
  {
    sub_100140988(this + 8, v8);
  }

  PB::Base::~Base(this);
}

void sub_10080D564(PB::Base *a1)
{
  sub_10080D4B0(a1);

  operator delete();
}

uint64_t sub_10080D59C(uint64_t result, void *a2)
{
  *result = &off_101E86558;
  *(result + 8) = 0u;
  *(result + 24) = 0u;
  *(result + 40) = 0;
  if (a2[3])
  {
    operator new();
  }

  if (a2[4])
  {
    operator new();
  }

  if (a2[5])
  {
    operator new();
  }

  if (a2[1])
  {
    operator new();
  }

  if (a2[2])
  {
    operator new();
  }

  return result;
}

uint64_t sub_10080D828(void *a1, PB::TextFormatter *this, char *a3)
{
  PB::TextFormatter::beginObject(this, a3);
  if (a1[1])
  {
    PB::TextFormatter::format();
  }

  if (a1[2])
  {
    PB::TextFormatter::format();
  }

  if (a1[3])
  {
    PB::TextFormatter::format();
  }

  if (a1[4])
  {
    PB::TextFormatter::format();
  }

  if (a1[5])
  {
    PB::TextFormatter::format();
  }

  return PB::TextFormatter::endObject(this);
}

uint64_t sub_10080D8E4(int a1, PB::Reader *this)
{
  v2 = *(this + 1);
  v3 = *(this + 2);
  v4 = *(this + 24);
  if (v2 < v3 && (*(this + 24) & 1) == 0)
  {
    v4 = 0;
    do
    {
      v6 = *this;
      if (v2 > 0xFFFFFFFFFFFFFFF5 || v2 + 10 > v3)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        v17 = v3 >= v2;
        v18 = v3 - v2;
        if (!v17)
        {
          v18 = 0;
        }

        v19 = (v6 + v2);
        v20 = v2 + 1;
        while (1)
        {
          if (!v18)
          {
            v4 = 1;
            *(this + 24) = 1;
            goto LABEL_40;
          }

          v21 = *v19;
          *(this + 1) = v20;
          v16 |= (v21 & 0x7F) << v14;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          v14 += 7;
          --v18;
          ++v19;
          ++v20;
          v13 = v15++ > 8;
          if (v13)
          {
LABEL_18:
            v9 = 0;
            goto LABEL_22;
          }
        }

        v9 = (v4 & 1) != 0 ? 0 : v16;
      }

      else
      {
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = (v6 + v2);
        v11 = v2 + 1;
        while (1)
        {
          *(this + 1) = v11;
          v12 = *v10++;
          v9 |= (v12 & 0x7F) << v7;
          if ((v12 & 0x80) == 0)
          {
            break;
          }

          v7 += 7;
          ++v11;
          v13 = v8++ > 8;
          if (v13)
          {
            goto LABEL_18;
          }
        }
      }

LABEL_22:
      if (v4 & 1 | ((v9 & 7) == 4))
      {
        break;
      }

      v22 = v9 >> 3;
      if ((v9 >> 3) <= 2)
      {
        if (v22 == 1)
        {
          operator new();
        }

        if (v22 == 2)
        {
          operator new();
        }
      }

      else
      {
        switch(v22)
        {
          case 3:
            operator new();
          case 4:
            operator new();
          case 5:
            operator new();
        }
      }

      if ((PB::Reader::skip(this, v22, v9 & 7, 0) & 1) == 0)
      {
        v23 = 0;
        return v23 & 1;
      }

      v2 = *(this + 1);
      v3 = *(this + 2);
      v4 = *(this + 24);
    }

    while (v2 < v3 && (*(this + 24) & 1) == 0);
  }

LABEL_40:
  v23 = v4 ^ 1;
  return v23 & 1;
}

uint64_t sub_10080DC20(uint64_t result)
{
  v1 = result;
  if (*(result + 24))
  {
    result = PB::Writer::write();
  }

  if (v1[4])
  {
    result = PB::Writer::write();
  }

  if (v1[5])
  {
    result = PB::Writer::write();
  }

  if (v1[1])
  {
    result = PB::Writer::write();
  }

  if (v1[2])
  {

    return PB::Writer::write();
  }

  return result;
}

uint64_t sub_10080DCC8(uint64_t a1, os_log_t *a2)
{
  v3 = sub_10018A6D0(a1, a2);
  *v3 = &off_101E86610;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 328) = 2;
  sub_10018A964(v3);
  *(a1 + 254) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 280) = *(a1 + 272);
  *(a1 + 304) = *(a1 + 296);
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  if (os_log_type_enabled(**(a1 + 8), OS_LOG_TYPE_DEBUG))
  {
    v4 = (*(*a1 + 32))(a1);
    sub_101780A94(v4, &v6);
  }

  return a1;
}

uint64_t sub_10080DE10(uint64_t a1, uint64_t a2)
{
  v4 = sub_10018A758(a1, a2);
  *v4 = &off_101E86610;
  *(v4 + 288) = 0u;
  *(v4 + 304) = 0u;
  *(v4 + 272) = 0u;
  *(v4 + 192) = *(a2 + 192);
  *(v4 + 208) = *(a2 + 208);
  v5 = *(a2 + 230);
  *(v4 + 224) = *(a2 + 224);
  *(v4 + 230) = v5;
  *(v4 + 238) = *(a2 + 238);
  *(v4 + 254) = *(a2 + 254);
  if (v4 != a2)
  {
    sub_1001122C4((a1 + 272), *(a2 + 272), *(a2 + 280), *(a2 + 280) - *(a2 + 272));
    sub_1001122C4((a1 + 296), *(a2 + 296), *(a2 + 304), *(a2 + 304) - *(a2 + 296));
  }

  *(a1 + 324) = *(a2 + 324);
  *(a1 + 320) = *(a2 + 320);
  *(a1 + 328) = *(a2 + 328);
  if (os_log_type_enabled(**(a1 + 8), OS_LOG_TYPE_DEBUG))
  {
    v6 = (*(*a1 + 32))(a1);
    sub_101780AE4(v6, &v8);
  }

  return a1;
}

double sub_10080DF94(uint64_t a1)
{
  sub_10018A964(a1);
  result = 0.0;
  *(a1 + 254) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 280) = *(a1 + 272);
  *(a1 + 304) = *(a1 + 296);
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  return result;
}

uint64_t sub_10080DFE0(uint64_t a1, uint64_t *a2)
{
  *(a1 + 192) = 0u;
  *(a1 + 304) = *(a1 + 296);
  *(a1 + 320) = 0;
  *(a1 + 208) = 0u;
  ctu::base64::decode();
  v4 = **(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = (*(*a1 + 32))(a1);
    sub_101780B34(v5, a2, buf, v4);
  }

  return 0;
}

void sub_10080E1E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080E214(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 320);
  if (v3)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v5 = *(a1 + 304) - *(a1 + 296);
    if (v5 == -32)
    {
      v6 = 0;
    }

    else
    {
      sub_10018D3CC(&v13, v5 + 32);
      v6 = v13;
    }

    *v6 = *(a1 + 192);
    *(v13 + 1) = *(a1 + 208);
    v7 = *(a1 + 296);
    v8 = *(a1 + 304);
    if (v8 != v7)
    {
      memmove(v13 + 32, v7, v8 - v7);
    }

    ctu::base64::encode();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v11;
    v9 = v13;
    *(a2 + 16) = v12;
    if (v9)
    {
      v14 = v9;
      operator delete(v9);
    }
  }

  else if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  return v3;
}

void sub_10080E308(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080E328(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 8) - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    sub_10018D3CC(a1, v4);
  }

  else if (!v3)
  {
    *(a1 + 8) = *a1 + a2;
  }
}

uint64_t sub_10080E350(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 321);
  if (v2 == 1)
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
    sub_1000DCF88(&v8, a1 + 224, a1 + 238, 14);
    ctu::base64::encode();
    if (*(a2 + 23) < 0)
    {
      operator delete(*a2);
    }

    *a2 = v6;
    v4 = v8;
    *(a2 + 16) = v7;
    if (v4)
    {
      v9 = v4;
      operator delete(v4);
    }
  }

  return v2;
}

void sub_10080E3E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10080E3FC(uint64_t a1, void *a2, int a3)
{
  sub_10018AE94(a1, a2, a3);
  if (a3 && *(a1 + 321) == 1)
  {
    v28[0] = 0;
    v28[1] = 0;
    v29 = 0;
    if (sub_10080E350(a1, v28))
    {
      v27 = 0;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v18 = 0u;
      v16 = 0u;
      v17 = 0u;
      *__p = 0u;
      memset(v14, 0, sizeof(v14));
      v13 = 0u;
      sub_10000D518(&v13);
      v6 = sub_10000C030(&v13);
      v7 = sub_10000C030(v6);
      LOBYTE(v11) = 34;
      sub_10000C030(v7);
      sub_10000D684(&v13, &v11);
      v30 = "auts";
      v8 = sub_10018D844(a2, "auts");
      v9 = v8;
      if (*(v8 + 63) < 0)
      {
        operator delete(v8[5]);
      }

      *(v9 + 5) = v11;
      v9[7] = v12;
      if (SHIBYTE(v16) < 0)
      {
        operator delete(__p[1]);
      }

      std::locale::~locale(v14);
      std::ostream::~ostream();
      std::ios::~ios();
    }

    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28[0]);
    }
  }

  return 1;
}

void sub_10080E644(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_100D50834(&a16);
  if (*(v16 - 49) < 0)
  {
    operator delete(*(v16 - 72));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10080E698(uint64_t a1, std::string *this)
{
  size = HIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x80u) != 0)
  {
    size = this->__r_.__value_.__l.__size_;
  }

  if (size)
  {
    if (std::string::compare(this, 0, 3uLL, "AKA"))
    {
      return 0;
    }

    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      if (this->__r_.__value_.__l.__size_ < 7)
      {
        return 0;
      }

      v6 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v6 = this;
      if (HIBYTE(this->__r_.__value_.__r.__words[2]) < 7u)
      {
        return 0;
      }
    }

    *(a1 + 328) = v6->__r_.__value_.__s.__data_[4] - 48;
    std::string::basic_string(&v7, this, 6uLL, 0xFFFFFFFFFFFFFFFFLL, &v8);
    if (*(a1 + 159) < 0)
    {
      operator delete(*(a1 + 136));
    }

    *(a1 + 136) = v7;
  }

  else
  {
    *(a1 + 328) = 2;
    if (*(a1 + 159) < 0)
    {
      **(a1 + 136) = 0;
      *(a1 + 144) = 0;
    }

    else
    {
      *(a1 + 136) = 0;
      *(a1 + 159) = 0;
    }
  }

  return 1;
}

uint64_t sub_10080E7A0(uint64_t result, uint64_t a2)
{
  if ((*(result + 159) & 0x8000000000000000) != 0)
  {
    if (*(result + 144))
    {
      goto LABEL_3;
    }

LABEL_9:
    if (*(a2 + 23) < 0)
    {
      **a2 = 0;
      *(a2 + 8) = 0;
    }

    else
    {
      *a2 = 0;
      *(a2 + 23) = 0;
    }

    return result;
  }

  if (!*(result + 159))
  {
    goto LABEL_9;
  }

LABEL_3:
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v12 = 0u;
  v10 = 0u;
  v11 = 0u;
  *__p = 0u;
  memset(v8, 0, sizeof(v8));
  v7 = 0u;
  sub_10000D518(&v7);
  sub_10000C030(&v7);
  v3 = std::ostream::operator<<();
  LOBYTE(v5) = 45;
  v4 = sub_10000C030(v3);
  sub_10000C030(v4);
  sub_10000D684(&v7, &v5);
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(v8);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_10080E9B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  sub_100D50834(va);
  _Unwind_Resume(a1);
}

char **sub_10080EA00(char **result, char **a2)
{
  v3 = *a2;
  v4 = a2[1];
  if ((v4 - v3 - 17) >= 0xFFFFFFFFFFFFFFF3)
  {
    v6 = result;
    result += 34;
    if (result != a2)
    {
      result = sub_1001122C4(result, v3, v4, v4 - v3);
    }

    *(v6 + 321) = 256;
  }

  return result;
}

__n128 sub_10080EA58(uint64_t a1, __n128 **a2)
{
  v2 = *a2;
  if ((a2[1] - *a2) >= 0x10)
  {
    result = *v2;
    *(a1 + 238) = *v2;
    *(a1 + 323) = 1;
  }

  return result;
}

__n128 sub_10080EA7C(uint64_t a1, __n128 **a2)
{
  v2 = *a2;
  if ((a2[1] - *a2) >= 0x10)
  {
    result = *v2;
    *(a1 + 254) = *v2;
    *(a1 + 324) = 1;
  }

  return result;
}

uint64_t sub_10080EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = **(a1 + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = (*(*a1 + 32))(a1);
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    if (*(a3 + 23) >= 0)
    {
      v12 = a3;
    }

    else
    {
      v12 = *a3;
    }

    if (*(a4 + 23) >= 0)
    {
      v13 = a4;
    }

    else
    {
      v13 = *a4;
    }

    *buf = 136316162;
    *&buf[4] = v10;
    *&buf[12] = 2080;
    *&buf[14] = ", ";
    *&buf[22] = 2080;
    *&buf[24] = v11;
    *v17 = 2080;
    *&v17[2] = v12;
    *&v17[10] = 2080;
    *&v17[12] = v13;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "#D %s%scomputeResponse, '%s', '%s', '%s'", buf, 0x34u);
  }

  if (*(a1 + 321) == 1)
  {
    buf[0] = 0;
    sub_10018CA14(a1, a2, a3, a4, buf, 0);
  }

  if (*(a1 + 322) == 1)
  {
    if (*(a1 + 328) == 1)
    {
      sub_10018CA14(a1, a2, a3, a4, *(a1 + 272), (*(a1 + 280) - *(a1 + 272)));
    }

    if (*(a1 + 324) == 1 && *(a1 + 323) == 1)
    {
      memset(&v15, 0, sizeof(v15));
      if (*(a1 + 159) < 0)
      {
        sub_100005F2C(&v15, *(a1 + 136), *(a1 + 144));
      }

      else
      {
        v15 = *(a1 + 136);
      }

      size = HIBYTE(v15.__r_.__value_.__r.__words[2]);
      if ((v15.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v15.__r_.__value_.__l.__size_;
      }

      if (!size)
      {
        std::string::operator=(&v15, "MD5");
      }

      *v17 = 0u;
      memset(buf, 0, sizeof(buf));
      sub_1004C8AA0(buf, *(a1 + 8));
    }
  }

  return 0;
}

void sub_10080EF78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    operator delete(a27);
  }

  sub_1004C8B14(v28 - 112);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10080F004(_BYTE *a1, uint64_t a2)
{
  sub_100A36848(a1, a2);
  if (a1[322] == 1)
  {
    v4 = sub_10000C030(a2);
    ctu::hex();
    v5 = sub_10000C030(v4);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[323] == 1)
  {
    v7 = sub_10000C030(a2);
    ctu::hex(&__p, (a1 + 238), 0x10, v8);
    v9 = sub_10000C030(v7);
    std::ios_base::getloc((v9 + *(*v9 - 24)));
    v10 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v10->__vftable[2].~facet_0)(v10, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[324] == 1)
  {
    v11 = sub_10000C030(a2);
    ctu::hex(&__p, (a1 + 254), 0x10, v12);
    v13 = sub_10000C030(v11);
    std::ios_base::getloc((v13 + *(*v13 - 24)));
    v14 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v14->__vftable[2].~facet_0)(v14, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  if (a1[321] == 1)
  {
    v15 = sub_10000C030(a2);
    ctu::hex(&__p, (a1 + 224), 0xE, v16);
    v17 = sub_10000C030(v15);
    std::ios_base::getloc((v17 + *(*v17 - 24)));
    v18 = std::locale::use_facet(&v22, &std::ctype<char>::id);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v22);
    std::ostream::put();
    std::ostream::flush();
    if (v21 < 0)
    {
      operator delete(__p);
    }
  }

  return a2;
}

void sub_10080F3CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, std::locale a15)
{
  std::locale::~locale(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10080F410(void *a1)
{
  *a1 = &off_101E86610;
  v2 = a1[37];
  if (v2)
  {
    a1[38] = v2;
    operator delete(v2);
  }

  v3 = a1[34];
  if (v3)
  {
    a1[35] = v3;
    operator delete(v3);
  }

  return sub_1007F8954(a1);
}

void sub_10080F480(uint64_t a1)
{
  *a1 = &off_101E86610;
  v2 = *(a1 + 296);
  if (v2)
  {
    *(a1 + 304) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 272);
  if (v3)
  {
    *(a1 + 280) = v3;
    operator delete(v3);
  }

  *a1 = &off_101E2DE48;
  v4 = (a1 + 168);
  sub_1000087B4(&v4);
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  v4 = (a1 + 88);
  sub_1000087B4(&v4);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  *a1 = off_101EA6458;
  sub_10018D34C(a1 + 16);
  operator delete();
}

void *sub_10080F604(void *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      sub_100034CCC(v6, v10);
    }

    sub_1000CE3D4();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

const void **sub_10080F7B4@<X0>(unint64_t propertyList@<X1>, unint64_t cf@<X2>, const void **result@<X0>, void *a4@<X8>)
{
  if (!(propertyList | cf))
  {
    *a4 = 0;
    return result;
  }

  v6 = propertyList;
  if (cf)
  {
    if (propertyList)
    {
      v7 = result;
      v16 = 0;
      *buf = CFPropertyListCreateDeepCopy(0, propertyList, 1uLL);
      sub_10081057C(&v16, buf);
      if (v16)
      {
        if (DataUtils::deepMergeDictionary(v16, cf, v8))
        {
          sub_100010180(a4, &v16);
          return sub_1000296E0(&v16);
        }

        v10 = *(v7 + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v13 = PersonalityInfo::logPrefix(**(v7 + 80));
          *buf = 136315394;
          *&buf[4] = v13;
          v18 = 2080;
          v19 = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sdeepMergeDictionary failed to merge", buf, 0x16u);
          v10 = *(v7 + 48);
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v14 = PersonalityInfo::logPrefix(**(v7 + 80));
          *buf = 136315650;
          *&buf[4] = v14;
          v18 = 2080;
          v19 = " ";
          v20 = 2112;
          v21 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sorig: %@", buf, 0x20u);
          v10 = *(v7 + 48);
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
LABEL_25:
          sub_1000101E4(a4, v6);
          return sub_1000296E0(&v16);
        }
      }

      else
      {
        v10 = *(v7 + 48);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = PersonalityInfo::logPrefix(**(v7 + 80));
          *buf = 136315394;
          *&buf[4] = v11;
          v18 = 2080;
          v19 = " ";
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sCFPropertyListCreateDeepCopy failed to copy", buf, 0x16u);
          v10 = *(v7 + 48);
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v12 = PersonalityInfo::logPrefix(**(v7 + 80));
          *buf = 136315650;
          *&buf[4] = v12;
          v18 = 2080;
          v19 = " ";
          v20 = 2112;
          v21 = v6;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sorig: %@", buf, 0x20u);
          v10 = *(v7 + 48);
        }

        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }
      }

      v15 = PersonalityInfo::logPrefix(**(v7 + 80));
      *buf = 136315650;
      *&buf[4] = v15;
      v18 = 2080;
      v19 = " ";
      v20 = 2112;
      v21 = cf;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%soverlay: %@", buf, 0x20u);
      goto LABEL_25;
    }

    v9 = a4;
    propertyList = cf;
  }

  else
  {
    v9 = a4;
  }

  return sub_1000101E4(v9, propertyList);
}

void sub_10080FB94(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000296E0(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10080FBC8(uint64_t a1, void *a2, int a3, NSObject **a4, uint64_t *a5, void *a6, uint64_t a7, char *a8)
{
  *a1 = off_101EC7F48;
  *(a1 + 8) = off_101E43EF0;
  ctu::OsLogContext::OsLogContext(&v20, kCtLoggingSystemName, a8);
  sub_10080FD58((a1 + 16), a4, &v20);
  ctu::OsLogContext::~OsLogContext(&v20);
  *a1 = off_101E866C8;
  *(a1 + 8) = off_101E86798;
  v15 = a2[1];
  *(a1 + 56) = *a2;
  *(a1 + 64) = v15;
  if (v15)
  {
    atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 72) = a3;
  v16 = a6[1];
  *(a1 + 80) = *a6;
  *(a1 + 88) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  v18 = *a5;
  v17 = a5[1];
  *(a1 + 96) = a7;
  *(a1 + 104) = v18;
  *(a1 + 112) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 168) = 0;
  *(a1 + 152) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 120) = 0u;
  return a1;
}

void sub_10080FD2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  TMKXPCServer.shutdown()();
  TMKXPCServer.shutdown()();
  _Unwind_Resume(a1);
}

void *sub_10080FD58(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_10080FDC0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_10080FDE4(void *a1)
{
  v1 = a1[13];
  v2 = a1[10];
  v3 = *v2;
  v4 = *(*v2 + 56);
  sub_100004AA0(&v11, a1 + 2);
  v5 = v12;
  if (v12)
  {
    v6 = v11;
    atomic_fetch_add_explicit(&v12->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v5);
    v9 = 0;
    v10 = 0;
    v7 = std::__shared_weak_count::lock(v5);
    v8 = v7;
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      v9 = v6;
      v10 = v7;
      std::__shared_weak_count::__release_weak(v5);
      sub_100004A34(v8);
    }

    else
    {
      v9 = 0;
      v10 = 0;
      std::__shared_weak_count::__release_weak(v5);
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  sub_1005D1AAC(v1, v4, v3 + 24, &v9);
  if (v10)
  {
    std::__shared_weak_count::__release_weak(v10);
  }
}

void sub_10080FEC4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10080FEE4(uint64_t a1)
{
  *a1 = off_101E866C8;
  *(a1 + 8) = off_101E86798;
  if (*(a1 + 167) < 0)
  {
    operator delete(*(a1 + 144));
  }

  if (*(a1 + 143) < 0)
  {
    operator delete(*(a1 + 120));
  }

  v2 = *(a1 + 112);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 64);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 48));
  sub_1000C0544((a1 + 16));
  TMKXPCServer.shutdown()();

  TMKXPCServer.shutdown()();
}

uint64_t sub_10080FFF8(uint64_t a1)
{
  ServiceMap = Registry::getServiceMap(*(a1 + 56));
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
  v13 = v3;
  v7 = sub_100009510(&v2[1].__m_.__sig, &v13);
  if (v7)
  {
    v9 = v7[3];
    v8 = v7[4];
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v2);
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      v10 = 0;
      goto LABEL_9;
    }
  }

  else
  {
    v9 = 0;
  }

  std::mutex::unlock(v2);
  v8 = 0;
  v10 = 1;
LABEL_9:
  isWatch = GestaltUtilityInterface::isWatch(v9);
  if ((v10 & 1) == 0)
  {
    sub_100004A34(v8);
  }

  return isWatch;
}

void sub_1008100E0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_100810104(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = 136315394;
    v5 = v3;
    v6 = 2080;
    v7 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%sstart processing iCloud data", &v4, 0x16u);
  }

  *(a1 + 168) = 0;
}

uint64_t sub_1008101C4(uint64_t a1)
{
  v2 = *(a1 + 168);
  *(a1 + 168) = 0;
  v3 = *(a1 + 48);
  v4 = os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
  if (v2 == 1)
  {
    if (v4)
    {
      v5 = PersonalityInfo::logPrefix(**(a1 + 80));
      v9 = 136315394;
      v10 = v5;
      v11 = 2080;
      v12 = " ";
      v6 = "#I %s%sfinished processing iCloud data - service evaluation required";
LABEL_6:
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v6, &v9, 0x16u);
    }
  }

  else if (v4)
  {
    v7 = PersonalityInfo::logPrefix(**(a1 + 80));
    v9 = 136315394;
    v10 = v7;
    v11 = 2080;
    v12 = " ";
    v6 = "#I %s%sfinished processing iCloud data - no changes detected";
    goto LABEL_6;
  }

  return (*(*(a1 + 8) + 104))(a1 + 8, 0, v2);
}

const void **sub_100810310(uint64_t a1, unsigned int a2, const __CFDictionary *a3, int a4, int a5)
{
  if (a3)
  {
    v10 = (*(*a1 + 176))(a1);
    (*(*a1 + 184))(a1, (v10 + 1));
    (*(*a1 + 160))(a1);
  }

  v11 = *(a1 + 104);
  v12 = (*(*a1 + 176))(a1);

  return sub_1005D550C(v11, a2, a3, v12, (a1 + 120), a4, a5);
}

void sub_10081043C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(a1 + 80));
    v4 = sub_10034462C(*(a1 + 72));
    v5 = (a1 + 144);
    if (*(a1 + 167) < 0)
    {
      v5 = *v5;
    }

    v6 = (*(*a1 + 176))(a1);
    v7 = 136316162;
    v8 = v3;
    v9 = 2080;
    v10 = " ";
    v11 = 2080;
    v12 = v4;
    v13 = 2080;
    v14 = v5;
    v15 = 1024;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s| fDevType: %s, PhoneNumber: %s, fLastICloudVer: %u", &v7, 0x30u);
  }
}

void *sub_10081057C(void *a1, CFTypeRef *a2)
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

void sub_1008105E8(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1008106D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_object_t object)
{
  v14 = *(v12 + 8);
  if (v14)
  {
    sub_100004A34(v14);
  }

  _Unwind_Resume(exception_object);
}

void sub_10081071C(uint64_t a1)
{
  sub_100004AA0(v6, (a1 + 8));
  v2 = v6[0];
  if (*(&v6[0] + 1))
  {
    atomic_fetch_add_explicit((*(&v6[0] + 1) + 16), 1uLL, memory_order_relaxed);
    sub_100004A34(*(&v2 + 1));
  }

  sub_100004AA0(v4, (a1 + 8));
  v3 = *(a1 + 24);
  v4[2] = v3;
  v4[3] = a1;
  v5 = v2;
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  dispatch_retain(v3);
  memset(v6, 0, 32);
  v7 = v3;
  v8 = a1;
  v9 = v2;
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v10 = v3;
    v11 = a1;
    v12 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v14 = v3;
    v16 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v19 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v22 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v3);
    v10 = v3;
    v11 = a1;
    v12 = v2;
    dispatch_retain(v3);
    v14 = v3;
    v16 = v2;
    dispatch_retain(v3);
    v19 = v2;
    dispatch_retain(v3);
    v22 = v2;
  }

  v15 = a1;
  v13 = 0;
  v17 = v3;
  v18 = a1;
  v20 = v3;
  v21 = a1;
  dispatch_retain(v3);
  v23 = v3;
  v24 = a1;
  v25 = v2;
  if (*(&v2 + 1))
  {
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
    dispatch_retain(v3);
    v28 = v2;
    atomic_fetch_add_explicit((*(&v2 + 1) + 16), 1uLL, memory_order_relaxed);
  }

  else
  {
    dispatch_retain(v3);
    v28 = v2;
  }

  v26 = v3;
  v27 = a1;
  dispatch_retain(v3);
  operator new();
}

void sub_100810D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, void **a35)
{
  sub_100818048(&a35);
  sub_100222BDC(&a31);
  sub_100222BDC(&a27);
  sub_100818048((v35 + 24));
  a35 = &a19;
  sub_1001018AC(&a35);
  sub_100222BDC(&a15);
  sub_10004F058(a1);
}

void *sub_100810E4C(void *a1, void *a2, void *a3, NSObject **a4, void *a5)
{
  ctu::OsLogContext::OsLogContext(&v14, kCtLoggingSystemName, "ent.psh");
  sub_100810F84(a1 + 1, a4, &v14);
  ctu::OsLogContext::~OsLogContext(&v14);
  *a1 = off_101E86928;
  v10 = a2[1];
  a1[6] = *a2;
  a1[7] = v10;
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = a3[1];
  a1[8] = *a3;
  a1[9] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = a5[1];
  a1[10] = *a5;
  a1[11] = v12;
  if (v12)
  {
    atomic_fetch_add_explicit((v12 + 16), 1uLL, memory_order_relaxed);
  }

  a1[13] = 0;
  a1[12] = a1 + 13;
  a1[14] = 0;
  a1[15] = 0;
  a1[16] = 0;
  a1[17] = 0;
  return a1;
}

void sub_100810F60(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ctu::OsLogContext::~OsLogContext(&a9);
  push::PushMessageListenerInterface::~PushMessageListenerInterface(v9);
  _Unwind_Resume(a1);
}

void *sub_100810F84(void *a1, NSObject **a2, OsLogContext *a3)
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

void sub_100810FEC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v2);
  _Unwind_Resume(a1);
}

void sub_100811010(uint64_t a1)
{
  *a1 = off_101E86928;
  v5 = (a1 + 120);
  sub_1008141E0(&v5);
  sub_10081502C(a1 + 96, *(a1 + 104));
  v2 = *(a1 + 88);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 56);
  if (v4)
  {
    sub_100004A34(v4);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  push::PushMessageListenerInterface::~PushMessageListenerInterface(a1);
}

void sub_1008110B0(uint64_t a1)
{
  sub_100811010(a1);

  operator delete();
}

uint64_t sub_1008110E8(uint64_t a1, CFStringRef **a2)
{
  v111 = 0;
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v101 = 0u;
  v102 = 0u;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  memset(v98, 0, sizeof(v98));
  v96 = 0u;
  sub_10000C320(&v96);
  v4 = *a2;
  v5 = a2[1];
  if (*a2 != v5)
  {
    do
    {
      memset(buf, 0, sizeof(buf));
      ctu::cf::assign();
      v112 = *buf;
      v113 = *&buf[16];
      v6 = sub_10000C030(&v97);
      sub_10000C030(v6);
      if (SHIBYTE(v113) < 0)
      {
        operator delete(v112);
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v7 = *(a1 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = PersonalityInfo::logPrefix(**(a1 + 64));
    sub_10006EE70(&v97 + 8, &v112);
    v9 = v113 >= 0 ? &v112 : v112;
    *buf = 136315650;
    *&buf[4] = v8;
    *&buf[12] = 2080;
    *&buf[14] = " ";
    *&buf[22] = 2080;
    v115 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%sRestart Push Listener with: %s", buf, 0x20u);
    if (SHIBYTE(v113) < 0)
    {
      operator delete(v112);
    }
  }

  sub_100004AA0(buf, (a1 + 8));
  v10 = *&buf[8];
  v76 = *buf;
  v11 = *(a1 + 120);
  v12 = *(a1 + 128);
  v94 = 0uLL;
  for (i = 0; v11 != v12; v11 += 2)
  {
    v13 = *a2;
    v14 = a2[1];
    while (v13 != v14)
    {
      if (CFStringCompare(*v11, *v13, 0) == kCFCompareEqualTo)
      {
        v20 = *(&v94 + 1);
        if (*(&v94 + 1) >= i)
        {
          v21 = sub_100814290(&v94, v11);
        }

        else
        {
          sub_10005C7A4(*(&v94 + 1), v11);
          sub_10002D728((v20 + 8), v11 + 1);
          v21 = v20 + 16;
        }

        *(&v94 + 1) = v21;
        goto LABEL_32;
      }

      ++v13;
    }

    v15 = *(a1 + 40);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = PersonalityInfo::logPrefix(**(a1 + 64));
      v17 = *v11;
      *buf = 136315650;
      *&buf[4] = v16;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2114;
      v115 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "#I %s%sgeneral topic: unregistering (%{public}@)", buf, 0x20u);
    }

    pthread_mutex_lock(&stru_101FB18D0);
    v18 = off_101FB1910;
    if (!off_101FB1910)
    {
      sub_100BE5C08(buf);
    }

    v19 = *(&off_101FB1910 + 1);
    if (*(&off_101FB1910 + 1))
    {
      atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    pthread_mutex_unlock(&stru_101FB18D0);
    sub_10005C7A4(&v93, v11);
    v91 = v76;
    v92 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    sub_100BE6ED8(v18, &v93, &v91);
    if (v92)
    {
      sub_100004A34(v92);
    }

    sub_100005978(&v93);
    if (v19)
    {
      sub_100004A34(v19);
    }

LABEL_32:
    ;
  }

  v22 = *a2;
  v23 = a2[1];
  if (*a2 != v23)
  {
    do
    {
      v24 = *(a1 + 120);
      v25 = *(a1 + 128);
      while (v24 != v25)
      {
        if (CFStringCompare(*v24, *v22, 0) == kCFCompareEqualTo)
        {
          goto LABEL_50;
        }

        v24 += 2;
      }

      sub_10005C7A4(buf, v22);
      *&buf[8] = 0;
      sub_100812048(&v94, buf);
      sub_10002D760(&buf[8]);
      sub_100005978(buf);
      v26 = *(a1 + 40);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = PersonalityInfo::logPrefix(**(a1 + 64));
        v28 = *v22;
        *buf = 136315650;
        *&buf[4] = v27;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2114;
        v115 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "#I %s%sgeneral topic: register new (%{public}@)", buf, 0x20u);
      }

      pthread_mutex_lock(&stru_101FB18D0);
      v29 = off_101FB1910;
      if (!off_101FB1910)
      {
        sub_100BE5C08(buf);
      }

      v30 = *(&off_101FB1910 + 1);
      if (*(&off_101FB1910 + 1))
      {
        atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_101FB18D0);
      sub_10005C7A4(&v90, v22);
      v88 = v76;
      v89 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100BE67E0(v29, &v90, &v88);
      if (v89)
      {
        sub_100004A34(v89);
      }

      sub_100005978(&v90);
      if (v30)
      {
        sub_100004A34(v30);
      }

LABEL_50:
      ++v22;
    }

    while (v22 != v23);
  }

  v31 = v94;
  v94 = *(a1 + 120);
  *(a1 + 120) = v31;
  v32 = i;
  i = *(a1 + 136);
  v33 = *(a1 + 96);
  *(a1 + 136) = v32;
  __src = 0;
  v86 = 0;
  v87 = 0;
  v34 = (a1 + 104);
  if (v33 == (a1 + 104))
  {
    goto LABEL_124;
  }

  v75 = 0;
  do
  {
    theString1 = 0;
    sub_1008120A8(a1, *(v33 + 8), &theString1);
    v35 = v33[5];
    v36 = !v35 || !theString1 || CFStringCompare(theString1, v35, 0) != kCFCompareEqualTo;
    v37 = *(a1 + 40);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = PersonalityInfo::logPrefix(**(a1 + 64));
      v112 = 0uLL;
      v113 = 0;
      ctu::cf::assign();
      *v82 = v112;
      v83 = v113;
      if (v113 >= 0)
      {
        v39 = v82;
      }

      else
      {
        v39 = v82[0];
      }

      v112 = 0uLL;
      v113 = 0;
      ctu::cf::assign();
      v81 = v113;
      *__p = v112;
      v40 = SHIBYTE(v113);
      v41 = v112;
      v42 = asStringBool(v36);
      *buf = 136316162;
      v43 = __p;
      if (v40 < 0)
      {
        v43 = v41;
      }

      *&buf[4] = v38;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      *&buf[22] = 2080;
      v115 = v39;
      v116 = 2080;
      v117 = v43;
      v118 = 2080;
      v119 = v42;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#I %s%stopic: newTopic:'%s' vs old:'%s' -> isTopicDifferent= %s", buf, 0x34u);
      if (SHIBYTE(v81) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v83) < 0)
      {
        operator delete(v82[0]);
      }
    }

    v44 = v33[5];
    if (v36)
    {
      if (!v44)
      {
        goto LABEL_102;
      }

      v45 = *(a1 + 40);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = PersonalityInfo::logPrefix(**(a1 + 64));
        v47 = sub_1013E5CD0(*(v33 + 8));
        v112 = 0uLL;
        v113 = 0;
        ctu::cf::assign();
        *v82 = v112;
        v83 = v113;
        v48 = v112;
        if (v113 >= 0)
        {
          v48 = v82;
        }

        *buf = 136315906;
        *&buf[4] = v46;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v115 = v47;
        v116 = 2082;
        v117 = v48;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "#I %s%stopic: unsubscribing %s (%{public}s)", buf, 0x2Au);
        if (SHIBYTE(v83) < 0)
        {
          operator delete(v82[0]);
        }
      }

      pthread_mutex_lock(&stru_101FB18D0);
      v49 = off_101FB1910;
      if (!off_101FB1910)
      {
        sub_100BE5C08(buf);
      }

      v50 = *(&off_101FB1910 + 1);
      if (*(&off_101FB1910 + 1))
      {
        atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      pthread_mutex_unlock(&stru_101FB18D0);
      sub_10005C7A4(&v79, v33 + 5);
      v77 = v76;
      v78 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_100BE6ED8(v49, &v79, &v77);
      if (v78)
      {
        sub_100004A34(v78);
      }

      sub_100005978(&v79);
      if (v50)
      {
        sub_100004A34(v50);
      }

      v51 = v86;
      if (v86 >= v87)
      {
        v53 = __src;
        v54 = v86 - __src;
        v55 = (v86 - __src) >> 2;
        v56 = v55 + 1;
        if ((v55 + 1) >> 62)
        {
          sub_1000CE3D4();
        }

        v57 = v87 - __src;
        if ((v87 - __src) >> 1 > v56)
        {
          v56 = v57 >> 1;
        }

        v58 = v57 >= 0x7FFFFFFFFFFFFFFCLL;
        v59 = 0x3FFFFFFFFFFFFFFFLL;
        if (!v58)
        {
          v59 = v56;
        }

        if (v59)
        {
          sub_100016740(&__src, v59);
        }

        *(4 * v55) = *(v33 + 8);
        v52 = 4 * v55 + 4;
        memcpy(0, v53, v54);
        v60 = __src;
        __src = 0;
        v86 = v52;
        v87 = 0;
        if (v60)
        {
          operator delete(v60);
        }
      }

      else
      {
        *v86 = *(v33 + 8);
        v52 = (v51 + 4);
      }

      v86 = v52;
      v44 = v33[5];
    }

    if (v44 && theString1 && CFStringCompare(theString1, v44, 0) == kCFCompareEqualTo)
    {
      v61 = *(a1 + 40);
      if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        v62 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315394;
        *&buf[4] = v62;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "#I %s%stopic: same one - still need re-subscription", buf, 0x16u);
      }

      *(v33 + 32) = 0;
      v75 = 1;
    }

LABEL_102:
    sub_100005978(&theString1);
    v63 = v33[1];
    if (v63)
    {
      do
      {
        v64 = v63;
        v63 = *v63;
      }

      while (v63);
    }

    else
    {
      do
      {
        v64 = v33[2];
        v65 = *v64 == v33;
        v33 = v64;
      }

      while (!v65);
    }

    v33 = v64;
  }

  while (v64 != v34);
  v67 = __src;
  v66 = v86;
  while (v67 != v66)
  {
    v68 = *v34;
    if (*v34)
    {
      v69 = *v67;
      v70 = a1 + 104;
      do
      {
        if (*(v68 + 32) >= v69)
        {
          v70 = v68;
        }

        v68 = *(v68 + 8 * (*(v68 + 32) < v69));
      }

      while (v68);
      if (v70 != v34 && v69 >= *(v70 + 32))
      {
        v71 = *(v70 + 72);
        v72 = *(v70 + 80);
        while (v71 != v72)
        {
          sub_10000FFD0(v71, 0);
          v71 += 32;
        }

        sub_100818098(a1 + 96, v67);
      }
    }

    ++v67;
  }

  if (v75)
  {
    *buf = 0;
    *&buf[8] = 0;
    sub_100004AA0(buf, (a1 + 8));
    operator new();
  }

LABEL_124:
  if (__src)
  {
    v86 = __src;
    operator delete(__src);
  }

  *buf = &v94;
  sub_1008141E0(buf);
  if (v10)
  {
    sub_100004A34(v10);
  }

  *&v97 = v73;
  if (SHIBYTE(v100) < 0)
  {
    operator delete(*(&v99 + 1));
  }

  std::locale::~locale(v98);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_100811DFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, char a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, char a38, void *__p, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44, uint64_t a45, uint64_t a46, char a47, int a48, __int16 a49, char a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100812048(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = sub_1008145CC(a1, a2);
  }

  else
  {
    *v3 = 0;
    *v3 = *a2;
    *a2 = 0;
    v3[1] = 0;
    v3[1] = *(a2 + 8);
    *(a2 + 8) = 0;
    result = (v3 + 2);
  }

  *(a1 + 8) = result;
  return result;
}

void sub_1008120A8(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + 88);
  if (!v5)
  {
    goto LABEL_8;
  }

  v7 = std::__shared_weak_count::lock(v5);
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = v7;
  v9 = *(a1 + 80);
  if (!v9)
  {
    sub_100004A34(v8);
LABEL_8:
    *a3 = 0;
    return;
  }

  (*(*v9 + 328))(v9, a2);

  sub_100004A34(v8);
}

void sub_10081216C(uint64_t a1)
{
  v2 = 0;
  atomic_compare_exchange_strong(byte_101FBAC78, &v2, 1u);
  v3 = v2 == 0;
  v4 = *(a1 + 40);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v6 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315394;
      *&buf[4] = v6;
      v45 = 2080;
      v46 = " ";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sshowing reg-loc-update alert", buf, 0x16u);
    }

    ServiceMap = Registry::getServiceMap(*(a1 + 48));
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
LABEL_14:
    v43 = 0;
    v18 = kAlertDialogLocalizationTable;
    (*(*v15 + 40))(&v43, v15, kAlertDialogLocalizationTable, @"OK", @"OK");
    value = 0;
    v19 = Registry::getServiceMap(*(a1 + 48));
    v20 = v19;
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

    std::mutex::lock(v19);
    *buf = v21;
    v25 = sub_100009510(&v20[1].__m_.__sig, buf);
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
        goto LABEL_22;
      }
    }

    else
    {
      v27 = 0;
    }

    std::mutex::unlock(v20);
    v26 = 0;
    v28 = 1;
LABEL_22:
    v29 = (*(*v27 + 72))(v27);
    if ((v28 & 1) == 0)
    {
      sub_100004A34(v26);
    }

    if (v29)
    {
      (*(*v15 + 40))(&v41, v15, v18, @"WLAN_CALLING", @"WLAN Calling");
    }

    else
    {
      (*(*v15 + 40))(&v41, v15, v18, @"WIFI_CALLING", @"Wi-Fi Calling");
    }

    v30 = v41;
    *buf = value;
    v41 = 0;
    value = v30;
    sub_100005978(buf);
    sub_100005978(&v41);
    v41 = 0;
    (*(*v15 + 40))(&v41, v15, v18, @"EMERGENCY_ADDRESS_UPDATED", @"Emergency Address Updated");
    theDict = CFDictionaryCreateMutable(0, 5, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertHeaderKey, value);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertMessageKey, v41);
    CFDictionaryAddValue(theDict, kCFUserNotificationDefaultButtonTitleKey, v43);
    CFDictionaryAddValue(theDict, kCFUserNotificationAlertTopMostKey, kCFBooleanTrue);
    CFDictionaryAddValue(theDict, SBUserNotificationDismissOnLock, kCFBooleanTrue);
    error = 0;
    v31 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, theDict);
    v32 = v31;
    if (error || !v31)
    {
      v35 = *(a1 + 40);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315394;
        *&buf[4] = v36;
        v45 = 2080;
        v46 = " ";
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not create showRegLocUpdatePopup notification (1)", buf, 0x16u);
      }

      if (!v32)
      {
        goto LABEL_38;
      }
    }

    else
    {
      RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v31, sub_10081283C, 0);
      if (RunLoopSource)
      {
        Main = CFRunLoopGetMain();
        CFRunLoopAddSource(Main, RunLoopSource, kCFRunLoopCommonModes);
        CFRelease(RunLoopSource);
        goto LABEL_39;
      }

      v37 = *(a1 + 40);
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        v38 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315394;
        *&buf[4] = v38;
        v45 = 2080;
        v46 = " ";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "#W %s%sCould not create showRegLocUpdatePopup notification (2)", buf, 0x16u);
      }
    }

    CFRelease(v32);
LABEL_38:
    atomic_exchange(byte_101FBAC78, 0);
LABEL_39:
    sub_1000296E0(&theDict);
    sub_100005978(&v41);
    sub_100005978(&value);
    sub_100005978(&v43);
    if ((v16 & 1) == 0)
    {
      sub_100004A34(v14);
    }

    return;
  }

  if (v5)
  {
    v17 = PersonalityInfo::logPrefix(**(a1 + 64));
    *buf = 136315394;
    *&buf[4] = v17;
    v45 = 2080;
    v46 = " ";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I %s%sduplicated reg-loc-update alert suppressed", buf, 0x16u);
  }
}

void sub_10081279C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, const void *);
  va_copy(va2, va1);
  v8 = va_arg(va2, const void *);
  va_copy(va3, va2);
  v10 = va_arg(va3, const void *);
  sub_1000296E0(va);
  sub_100005978(va1);
  sub_100005978(va2);
  sub_100005978(va3);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10081283C(__CFUserNotification *a1)
{
  result = CFUserNotificationCancel(a1);
  atomic_exchange(byte_101FBAC78, 0);
  return result;
}

void sub_100812860(uint64_t a1, const void **a2, const void **a3)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_10005C7A4(&v7, a2);
  sub_100010024(&v7 + 1, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void sub_1008129D4(uint64_t a1, const void **a2, const void **a3)
{
  sub_100004AA0(&v8, (a1 + 8));
  v6 = v9;
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_weak_owners_, 1uLL, memory_order_relaxed);
    sub_100004A34(v6);
  }

  sub_10002D728(&v7, a2);
  sub_10005C7A4(&v7 + 1, a3);
  v8 = 0;
  v9 = 0;
  sub_100004AA0(&v8, (a1 + 8));
  operator new();
}

void sub_100812B48(uint64_t a1@<X0>, CFStringRef *a2@<X1>, void *a3@<X8>)
{
  v4 = *(a1 + 120);
  v5 = *(a1 + 128);
  if (v4 == v5)
  {
    goto LABEL_7;
  }

  while (CFStringCompare(*v4, *a2, 0))
  {
    v4 += 16;
    if (v4 == v5)
    {
      goto LABEL_7;
    }
  }

  if (!*(v4 + 8))
  {
LABEL_7:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
  }

  else
  {
    ctu::cf::assign();
    ctu::base64::encode();
  }
}

void sub_100812BFC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100812C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 88);
  if (v5)
  {
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && *(a1 + 80))
    {
      v8 = *(a1 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = PersonalityInfo::logPrefix(**(a1 + 64));
        *buf = 136315650;
        *&buf[4] = v9;
        *&buf[12] = 2080;
        *&buf[14] = " ";
        *&buf[22] = 2080;
        v32 = sub_1013E5CD0(a2);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I %s%ssubscribeForPushNotificationIfNeeded %s", buf, 0x20u);
      }

      v10 = *(a1 + 104);
      if (!v10)
      {
        goto LABEL_13;
      }

      v11 = a1 + 104;
      do
      {
        if (*(v10 + 32) >= a2)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 32) < a2));
      }

      while (v10);
      if (v11 != a1 + 104 && *(v11 + 32) <= a2)
      {
        if (*(v11 + 48))
        {
          if ((*(v11 + 64) & 1) == 0 && (*(v11 + 65) & 1) == 0)
          {
            sub_100813224(a1);
          }

          sub_10000FFD0(a3, 1);
        }

        else
        {
          sub_1008131D0((v11 + 72), a3);
        }
      }

      else
      {
LABEL_13:
        v29 = 0;
        sub_1008120A8(a1, a2, &v29);
        v12 = *(a1 + 40);
        if (v29)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = PersonalityInfo::logPrefix(**(a1 + 64));
            v14 = sub_1013E5CD0(a2);
            *buf = 136315906;
            *&buf[4] = v13;
            *&buf[12] = 2080;
            *&buf[14] = " ";
            *&buf[22] = 2080;
            v32 = v14;
            v33 = 2114;
            v34[0] = v29;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I %s%ssubscribing topic %s (%{public}@)", buf, 0x2Au);
          }

          v28 = 0;
          *v26 = 0u;
          v27 = 0u;
          *cf = 0u;
          sub_100222570(cf, &v29);
          sub_1008131D0(&v27, a3);
          *buf = a2;
          *&buf[8] = cf[0];
          if (cf[0])
          {
            CFRetain(cf[0]);
          }

          *&buf[16] = cf[1];
          if (cf[1])
          {
            CFRetain(cf[1]);
          }

          v32 = v26[0];
          if (v26[0])
          {
            CFRetain(v26[0]);
          }

          v33 = v26[1];
          *(&v34[1] + 6) = 0;
          *(&v34[2] + 6) = 0;
          *(v34 + 6) = 0;
          sub_1008148BC(v34 + 6, v27, *(&v27 + 1), (*(&v27 + 1) - v27) >> 5);
          sub_10081C3AC(a1 + 96, buf);
          v30 = (v34 + 6);
          sub_100814A04(&v30);
          sub_10002D760(&v32);
          sub_10002D760(&buf[16]);
          sub_100005978(&buf[8]);
          sub_100004AA0(buf, (a1 + 8));
          v16 = *buf;
          v15 = *&buf[8];
          pthread_mutex_lock(&stru_101FB18D0);
          v17 = off_101FB1910;
          if (!off_101FB1910)
          {
            sub_100BE5C08(buf);
          }

          v18 = *(&off_101FB1910 + 1);
          if (*(&off_101FB1910 + 1))
          {
            atomic_fetch_add_explicit((*(&off_101FB1910 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          pthread_mutex_unlock(&stru_101FB18D0);
          v24 = v29;
          if (v29)
          {
            CFRetain(v29);
          }

          v22 = v16;
          v23 = v15;
          if (v15)
          {
            atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          sub_100BE67E0(v17, &v24, &v22);
          if (v23)
          {
            sub_100004A34(v23);
          }

          sub_100005978(&v24);
          if (v18)
          {
            sub_100004A34(v18);
          }

          if (v15)
          {
            sub_100004A34(v15);
          }

          *buf = &v27;
          sub_100814A04(buf);
          sub_10002D760(v26);
          sub_10002D760(&cf[1]);
          sub_100005978(cf);
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            v20 = PersonalityInfo::logPrefix(**(a1 + 64));
            v21 = sub_1013E5CD0(a2);
            sub_101780BFC(v20, v21, buf, v12);
          }

          sub_10000FFD0(a3, 0);
        }

        sub_100005978(&v29);
      }

      goto LABEL_45;
    }
  }

  else
  {
    v7 = 0;
  }

  if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
  {
    v19 = PersonalityInfo::logPrefix(**(a1 + 64));
    sub_101780C64(v19, buf);
  }

  sub_10000FFD0(a3, 0);
LABEL_45:
  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1008130CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  pthread_mutex_unlock(&stru_101FB18D0);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_100814ADC(va);
  sub_100005978(va1);
  if (v5)
  {
    sub_100004A34(v5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1008131D0(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_1008146EC(a1, a2);
  }

  else
  {
    sub_1000224C8(a1[1], a2);
    result = v3 + 32;
    a1[1] = v3 + 32;
  }

  a1[1] = result;
  return result;
}

void sub_100813224(uint64_t a1)
{
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v2 = *(a1 + 96);
  v3 = (a1 + 104);
  if (v2 == (a1 + 104))
  {
    goto LABEL_42;
  }

  do
  {
    if (v2[6] && (*(v2 + 64) != 1 || v2[7]) && (*(v2 + 65) & 1) == 0)
    {
      v24 = 0;
      memset(buf, 0, sizeof(buf));
      *buf = *(v2 + 8);
      v21 = 0uLL;
      v22 = 0;
      ctu::cf::assign();
      *__p = v21;
      v15 = v22;
      ctu::base64::encode();
      if (v24 == 1)
      {
        if (buf[63] < 0)
        {
          operator delete(*&buf[40]);
        }

        *&buf[40] = v16;
        *&buf[56] = v17;
        HIBYTE(v17) = 0;
        LOBYTE(v16) = 0;
      }

      else
      {
        *&buf[40] = v16;
        *&buf[56] = v17;
        v17 = 0;
        v16 = 0uLL;
        LOBYTE(v24) = 1;
      }

      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      if (v2[7])
      {
        v21 = 0uLL;
        v22 = 0;
        ctu::cf::assign();
        *__p = v21;
        v15 = v22;
        ctu::base64::encode();
        if (buf[32] == 1)
        {
          if (buf[31] < 0)
          {
            operator delete(*&buf[8]);
          }

          *&buf[8] = v16;
          *&buf[24] = v17;
          HIBYTE(v17) = 0;
          LOBYTE(v16) = 0;
        }

        else
        {
          *&buf[8] = v16;
          *&buf[24] = v17;
          v17 = 0;
          v16 = 0uLL;
          buf[32] = 1;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }

      else if (buf[32] == 1)
      {
        if (buf[31] < 0)
        {
          operator delete(*&buf[8]);
        }

        buf[32] = 0;
      }

      sub_1003FAD5C(&v18, buf);
      *(v2 + 65) = 1;
      if (v24 == 1 && buf[63] < 0)
      {
        operator delete(*&buf[40]);
      }

      if (buf[32] == 1 && buf[31] < 0)
      {
        operator delete(*&buf[8]);
      }
    }

    v4 = v2[1];
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
        v5 = v2[2];
        v6 = *v5 == v2;
        v2 = v5;
      }

      while (!v6);
    }

    v2 = v5;
  }

  while (v5 != v3);
  if (v19 == v18)
  {
LABEL_42:
    v10 = *(a1 + 40);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = PersonalityInfo::logPrefix(**(a1 + 64));
      *buf = 136315394;
      *&buf[4] = v11;
      *&buf[12] = 2080;
      *&buf[14] = " ";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I %s%sNo push notifications to ask for", buf, 0x16u);
    }
  }

  else
  {
    v7 = *(a1 + 88);
    if (v7)
    {
      v8 = std::__shared_weak_count::lock(v7);
      if (v8)
      {
        v9 = *(a1 + 80);
        if (v9)
        {
          memset(v13, 0, sizeof(v13));
          sub_1003FB24C(v13, v18, v19, 0x8E38E38E38E38E39 * ((v19 - v18) >> 3));
          (*(*v9 + 368))(v9, v13);
          *buf = v13;
          sub_1003EAC3C(buf);
LABEL_48:
          sub_100004A34(v8);
          goto LABEL_49;
        }
      }
    }

    else
    {
      v8 = 0;
    }

    if (os_log_type_enabled(*(a1 + 40), OS_LOG_TYPE_ERROR))
    {
      v12 = PersonalityInfo::logPrefix(**(a1 + 64));
      sub_101780CB4(v12, buf);
    }

    if (v8)
    {
      goto LABEL_48;
    }
  }

LABEL_49:
  *&v21 = &v18;
  sub_1003EAC3C(&v21);
}

void sub_10081360C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  *(v26 - 128) = v25;
  sub_1003EAC3C((v26 - 128));
  sub_100004A34(v24);
  *(v26 - 128) = &a20;
  sub_1003EAC3C((v26 - 128));
  _Unwind_Resume(a1);
}

void sub_1008136A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 3)
  {
    v4 = *(*a4 + 24);
    if (v4)
    {
      v7 = *v4;
      v6 = v4 + 1;
      v5 = v7;
      if (v7 != v6)
      {
        v9 = (a1 + 104);
        do
        {
          v10 = *v9;
          if (!*v9)
          {
            goto LABEL_29;
          }

          v11 = *(v5 + 7);
          v12 = v9;
          do
          {
            if (*(v10 + 32) >= v11)
            {
              v12 = v10;
            }

            v10 = *(v10 + 8 * (*(v10 + 32) < v11));
          }

          while (v10);
          if (v12 == v9 || v11 < *(v12 + 8))
          {
            goto LABEL_29;
          }

          *(v12 + 65) = 0;
          v13 = *(v5 + 8);
          if (v13 == 1)
          {
            v19 = *(a1 + 40);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              v20 = PersonalityInfo::logPrefix(**(a1 + 64));
              v21 = sub_1013E5CD0(*(v12 + 8));
              *buf = 136315650;
              *&buf[4] = v20;
              v34 = 2080;
              v35 = " ";
              v36 = 2080;
              v37 = v21;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I %s%sPush notification '%s' not allowed", buf, 0x20u);
            }

            v22 = v12[9];
            v23 = v12[10];
            while (v22 != v23)
            {
              sub_10000FFD0(v22, 0);
              v22 += 32;
            }
          }

          else
          {
            if (v13 == 2)
            {
              *(v12 + 64) = 1;
              v32 = 0;
              v14 = v12 + 7;
              if (v12 + 7 != &v32)
              {
                v15 = *v14;
                v32 = 0;
                *buf = v15;
                *v14 = 0;
                sub_10002D760(buf);
              }

              sub_10002D760(&v32);
              v16 = *(a1 + 40);
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
              {
                v17 = PersonalityInfo::logPrefix(**(a1 + 64));
                v18 = sub_1013E5CD0(*(v12 + 8));
                *buf = 136315650;
                *&buf[4] = v17;
                v34 = 2080;
                v35 = " ";
                v36 = 2080;
                v37 = v18;
                _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "#I %s%sSubscribed on Push Notification '%s'", buf, 0x20u);
              }

              goto LABEL_29;
            }

            v24 = *(a1 + 40);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = PersonalityInfo::logPrefix(**(a1 + 64));
              v26 = sub_100A38E08(*(v5 + 8));
              *buf = 136315650;
              *&buf[4] = v25;
              v34 = 2080;
              v35 = " ";
              v36 = 2080;
              v37 = v26;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "#W %s%sInvalid EnablePushNotification result code: %s", buf, 0x20u);
            }

            v27 = v12[9];
            v28 = v12[10];
            while (v27 != v28)
            {
              sub_10000FFD0(v27, 0);
              v27 += 32;
            }
          }

          sub_100818108((a1 + 96), v12);
LABEL_29:
          v29 = v5[1];
          if (v29)
          {
            do
            {
              v30 = v29;
              v29 = *v29;
            }

            while (v29);
          }

          else
          {
            do
            {
              v30 = v5[2];
              v31 = *v30 == v5;
              v5 = v30;
            }

            while (!v31);
          }

          v5 = v30;
        }

        while (v30 != v6);
      }
    }
  }
}

void sub_1008139BC(uint64_t a1, void **a2, double a3)
{
  v4 = *(a1 + 88);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      if (*(a1 + 80))
      {
        v22 = *(a1 + 80);
        v24 = v7;
        v23 = *a2;
        v33[0] = 0;
        v33[1] = 0;
        v32 = v33;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = [objc_msgSend(v23 objectForKey:{@"entitlement-update", "objectForKey:", @"trigger-actions"}];
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
        if (v9)
        {
          v10 = *v29;
          do
          {
            for (i = 0; i != v9; i = i + 1)
            {
              if (*v29 != v10)
              {
                objc_enumerationMutation(v8);
              }

              v12 = *(*(&v28 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                __dst[0] = 0;
                __dst[1] = 0;
                v27 = 0;
                v13 = [v12 cStringUsingEncoding:4];
                v14 = strlen(v13);
                if (v14 >= 0x7FFFFFFFFFFFFFF8)
                {
                  sub_1000A2378();
                }

                v15 = v14;
                if (v14 >= 0x17)
                {
                  operator new();
                }

                HIBYTE(v27) = v14;
                if (v14)
                {
                  memmove(__dst, v13, v14);
                }

                *(__dst + v15) = 0;
                v16 = sub_100A3E2C0(__dst);
                if (v16 == 4)
                {
                  v17 = *(a1 + 40);
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    v18 = PersonalityInfo::logPrefix(**(a1 + 64));
                    v19 = __dst;
                    if (v27 < 0)
                    {
                      v19 = __dst[0];
                    }

                    *buf = 136315650;
                    v35 = v18;
                    v36 = 2080;
                    v37 = " ";
                    v38 = 2082;
                    v39 = v19;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#W %s%sUnrecognized VVM trigger: %{public}s", buf, 0x20u);
                  }
                }

                else
                {
                  sub_100A3E65C(&v32, v16);
                }

                if (SHIBYTE(v27) < 0)
                {
                  operator delete(__dst[0]);
                }
              }
            }

            v9 = [v8 countByEnumeratingWithState:&v28 objects:v40 count:16];
          }

          while (v9);
        }

        v20 = [v23 objectForKey:@"requires-entitlements"];
        if (v20)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v20 = [v20 BOOLValue];
          }

          else
          {
            v20 = 0;
          }
        }

        sub_100814B88(v25, &v32);
        [[NSDate dateWithTimeIntervalSinceReferenceDate:?]];
        (*(*v22 + 504))(v22, v25, v21, v20);
        sub_10006DCAC(v25, v25[1]);
        sub_10006DCAC(&v32, v33[0]);
        v7 = v24;
      }

      sub_100004A34(v7);
    }
  }
}

void sub_100813DB8(uint64_t a1, const void **a2)
{
  v3 = *(a1 + 88);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = *(a1 + 80);
      if (v6)
      {
        sub_10005C7A4(&v9, a2);
        v7 = PersonalityInfo::iccid(**(a1 + 64));
        (*(*v6 + 512))(v6, &v9, v7);
        sub_100005978(&v9);
LABEL_9:
        sub_100004A34(v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *(a1 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I invalid CarrierEntitlementsController to handle GeofenceDataUpdate push notification", buf, 2u);
  }

  if (v5)
  {
    goto LABEL_9;
  }
}

void sub_100813EB0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100005978(va);
  sub_100004A34(v2);
  _Unwind_Resume(a1);
}

void sub_100813ECC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = PersonalityInfo::logPrefix(**(v1 + 64));
    *buf = 136315394;
    v26 = v3;
    v27 = 2080;
    v28 = " ";
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I %s%s | == CarrierEntitlementsPushListener", buf, 0x16u);
  }

  v4 = *(v1 + 120);
  v5 = *(v1 + 128);
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      v7 = *(v1 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = PersonalityInfo::logPrefix(**(v1 + 64));
        v9 = *v4;
        v10 = "exist";
        if (!v4[1])
        {
          v10 = "none";
        }

        *buf = 136316162;
        v26 = v8;
        v27 = 2080;
        v28 = " ";
        v29 = 2048;
        v30 = v6;
        v31 = 2114;
        v32 = v9;
        v33 = 2080;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I %s%s | %zu. general topic: (%{public}@), token:%s", buf, 0x34u);
        ++v6;
      }

      v4 += 2;
    }

    while (v4 != v5);
  }

  v11 = *(v1 + 96);
  v12 = (v1 + 104);
  if (v11 != (v1 + 104))
  {
    do
    {
      v13 = *(v1 + 40);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v24 = PersonalityInfo::logPrefix(**(v1 + 64));
        v14 = sub_1013E5CD0(*(v11 + 8));
        v15 = v11[5];
        if (v11[6])
        {
          v16 = "exist";
        }

        else
        {
          v16 = "none";
        }

        v17 = v1;
        if (v11[7])
        {
          v18 = "exist";
        }

        else
        {
          v18 = "none";
        }

        v19 = asStringBool(*(v11 + 64));
        v20 = asStringBool(*(v11 + 65));
        *buf = 136317186;
        v26 = v24;
        v27 = 2080;
        v28 = " ";
        v29 = 2048;
        v30 = v6;
        v31 = 2080;
        v32 = v14;
        v33 = 2114;
        v34 = v15;
        v35 = 2080;
        v36 = v16;
        v37 = 2080;
        v38 = v18;
        v1 = v17;
        v39 = 2080;
        v40 = v19;
        v41 = 2080;
        v42 = v20;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I %s%s | %zu. type:%s topic:%{public}@, token:%s, oldToken:%s, subscribed:%s inEntitlementCall:%s", buf, 0x5Cu);
        ++v6;
      }

      v21 = v11[1];
      if (v21)
      {
        do
        {
          v22 = v21;
          v21 = *v21;
        }

        while (v21);
      }

      else
      {
        do
        {
          v22 = v11[2];
          v23 = *v22 == v11;
          v11 = v22;
        }

        while (!v23);
      }

      v11 = v22;
    }

    while (v22 != v12);
  }
}

void sub_1008141E0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100814234(v2, *v2);
    v3 = **a1;

    operator delete(v3);
  }
}

const void **sub_100814234(const void **result, const void **a2)
{
  v3 = result;
  v4 = result[1];
  if (v4 != a2)
  {
    do
    {
      v5 = v4 - 2;
      sub_10002D760(v4 - 1);
      result = sub_100005978(v5);
      v4 = v5;
    }

    while (v5 != a2);
  }

  v3[1] = a2;
  return result;
}

uint64_t sub_100814290(uint64_t a1, const void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000CE3D4();
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

  v17 = a1;
  if (v7)
  {
    sub_1008143A8(a1, v7);
  }

  v14 = 0;
  v15 = 16 * v2;
  sub_10005C7A4((16 * v2), a2);
  sub_10002D728((16 * v2 + 8), a2 + 1);
  v16 = (16 * v2 + 16);
  v8 = *(a1 + 8);
  v9 = (16 * v2 + *a1 - v8);
  sub_1008143F0(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = *(a1 + 16);
  v13 = v16;
  *(a1 + 8) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100814534(&v14);
  return v13;
}

void sub_100814394(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100814534(va);
  _Unwind_Resume(a1);
}

void sub_1008143A8(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_1008143F0(uint64_t a1, const void **a2, const void **a3, const void **a4)
{
  v11 = a4;
  v9 = 0;
  v10 = a4;
  v8[0] = a1;
  v8[1] = &v10;
  v8[2] = &v11;
  if (a2 == a3)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = 0;
      *a4 = *v6;
      *v6 = 0;
      a4[1] = 0;
      a4[1] = v6[1];
      v6[1] = 0;
      v6 += 2;
      a4 += 2;
    }

    while (v6 != a3);
    v11 = a4;
    LOBYTE(v9) = 1;
    while (v5 != a3)
    {
      sub_10002D760(v5 + 1);
      sub_100005978(v5);
      v5 += 2;
    }
  }

  return sub_1008144AC(v8);
}

uint64_t sub_1008144AC(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_1008144E4(a1);
  }

  return a1;
}

const void **sub_1008144E4(const void **result)
{
  v1 = *result[2];
  v2 = *result[1];
  if (v1 != v2)
  {
    do
    {
      v3 = v1 - 2;
      sub_10002D760(v1 - 1);
      result = sub_100005978(v3);
      v1 = v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t sub_100814534(uint64_t a1)
{
  sub_10081456C(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

const void **sub_10081456C(const void **result, const void **a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = v2 - 2;
      v4[2] = v2 - 2;
      sub_10002D760(v2 - 1);
      result = sub_100005978(v5);
      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

uint64_t sub_1008145CC(uint64_t a1, const void **a2)
{
  v2 = (*(a1 + 8) - *a1) >> 4;
  v3 = v2 + 1;
  if ((v2 + 1) >> 60)
  {
    sub_1000CE3D4();
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
    sub_1008143A8(a1, v7);
  }

  v8 = (16 * v2);
  v15 = 0;
  v16 = v8;
  *(&v17 + 1) = 0;
  *v8 = 0;
  *v8 = *a2;
  *a2 = 0;
  v8[1] = 0;
  v8[1] = a2[1];
  a2[1] = 0;
  *&v17 = 16 * v2 + 16;
  v9 = *(a1 + 8);
  v10 = (16 * v2 + *a1 - v9);
  sub_1008143F0(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = *(a1 + 16);
  v14 = v17;
  *(a1 + 8) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100814534(&v15);
  return v14;
}

void sub_1008146D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100814534(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1008146EC(uint64_t *a1, uint64_t a2)
{
  v2 = (a1[1] - *a1) >> 5;
  v3 = v2 + 1;
  if ((v2 + 1) >> 59)
  {
    sub_1000CE3D4();
  }

  v6 = a1[2] - *a1;
  if (v6 >> 4 > v3)
  {
    v3 = v6 >> 4;
  }

  if (v6 >= 0x7FFFFFFFFFFFFFE0)
  {
    v7 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = v3;
  }

  v17 = a1;
  if (v7)
  {
    sub_1000DEC00(a1, v7);
  }

  v14 = 0;
  v15 = 32 * v2;
  sub_1000224C8(32 * v2, a2);
  v16 = (32 * v2 + 32);
  v8 = a1[1];
  v9 = 32 * v2 + *a1 - v8;
  sub_1008147FC(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_10081486C(&v14);
  return v13;
}

void sub_1008147E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10081486C(va);
  _Unwind_Resume(a1);
}

void sub_1008147FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_10000FED0(a4, v7);
      v7 += 32;
      a4 = v8 + 32;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_10000FF50(v6);
      v6 += 32;
    }
  }
}

uint64_t sub_10081486C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    sub_10000FF50(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_1008148BC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100814944(result, a4);
  }

  return result;
}

void sub_100814924(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_100814A04(&a9);
  _Unwind_Resume(a1);
}

void sub_100814944(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    sub_1000DEC00(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_100814980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_1000224C8(a4, v6);
      v6 += 32;
      a4 += 32;
      v7 -= 32;
    }

    while (v6 != a3);
  }

  return a4;
}

void sub_1008149E0(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 32;
    do
    {
      v4 = sub_10000FF50(v4) - 32;
      v2 += 32;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_100814A04(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = sub_10000FF50(v4 - 32);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t sub_100814A88(uint64_t a1)
{
  v3 = (a1 + 40);
  sub_100814A04(&v3);
  sub_10002D760((a1 + 24));
  sub_10002D760((a1 + 16));
  sub_100005978((a1 + 8));
  return a1;
}

const void **sub_100814ADC(uint64_t a1)
{
  v3 = (a1 + 32);
  sub_100814A04(&v3);
  sub_10002D760((a1 + 16));
  sub_10002D760((a1 + 8));
  return sub_100005978(a1);
}

uint64_t sub_100814B2C(uint64_t a1)
{
  if (*(a1 + 64) == 1 && *(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

void *sub_100814B88(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100814BE0(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100814BE0(uint64_t result, unsigned __int8 *a2, unsigned __int8 *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100814C68(v5, v5 + 1, v4 + 25);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
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

uint64_t sub_100814C68(void *a1, uint64_t *a2, unsigned __int8 *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_100814D04(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_100814D04(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned __int8 *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 25), v6 < v7))
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
    if (*(v10 + 25) < v15)
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
          v18 = *(v16 + 25);
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

  if (a4 != v5 && v6 >= *(a4 + 25))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 25);
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

void sub_100814F2C(void *a1)
{
  __cxa_begin_catch(a1);
  dispatch_barrier_async_f(v1[3], v1, sub_100815000);
  __cxa_rethrow();
}

void sub_100814F6C(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_100814FC0(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100815000(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10081502C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10081502C(a1, *a2);
    sub_10081502C(a1, a2[1]);
    sub_100815098(a1, (a2 + 4));

    operator delete(a2);
  }
}

const void **sub_100815098(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 40);
  sub_100814A04(&v4);
  sub_10002D760((a2 + 24));
  sub_10002D760((a2 + 16));
  return sub_100005978((a2 + 8));
}

void sub_1008150E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  operator new();
}

void sub_10081522C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_100101814(va);
  if (a3)
  {
    (*(*a3 + 8))(a3);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(a1);
}