void sub_1014036A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v6 = v3 >> 1;
  v7 = (a1 + 16 * (v3 >> 1));
  v8 = *v7;
  v9 = v7[1];
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a2 - 16);
  v10 = *(a2 - 8);
  v12 = (a2 - 16);
  if (!v10)
  {
    v13 = *(v8 + 80) > *(v11 + 80);
    if (!v9)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  v13 = *(v8 + 80) > *(v11 + 80);
  sub_100004A34(v10);
  if (v9)
  {
LABEL_6:
    sub_100004A34(v9);
  }

LABEL_7:
  if (!v13)
  {
    return;
  }

  v15 = *(a2 - 16);
  v14 = *(a2 - 8);
  *v12 = 0;
  v12[1] = 0;
  do
  {
    v16 = v7;
    v17 = *v7;
    *v7 = 0;
    v7[1] = 0;
    v18 = v12[1];
    *v12 = v17;
    if (v18)
    {
      sub_100004A34(v18);
    }

    if (!v6)
    {
      break;
    }

    v6 = (v6 - 1) >> 1;
    v7 = (a1 + 16 * v6);
    v19 = *v7;
    v20 = v7[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v14)
    {
      v21 = *(v19 + 80) > *(v15 + 80);
      if (!v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_100004A34(v20);
      goto LABEL_17;
    }

    atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    v21 = *(v19 + 80) > *(v15 + 80);
    sub_100004A34(v14);
    if (v20)
    {
      goto LABEL_16;
    }

LABEL_17:
    v12 = v16;
  }

  while (v21);
  v22 = v16[1];
  *v16 = v15;
  v16[1] = v14;
  if (v22)
  {

    sub_100004A34(v22);
  }
}

uint64_t sub_1014038A4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F37A58;
  a2[1] = v2;
  return result;
}

void sub_1014038D0(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1[5];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "Requesting assertions timed out!", buf, 2u);
  }

  while (v1[27])
  {
    sub_1013F5BF0(*(*(*(v1[23] + ((v1[26] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v1[26]) + 56), 3);
    sub_101403438((v1 + 22));
  }

  while (v1[33])
  {
    v3 = *(*(v1[29] + ((v1[32] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v1[32]);
    buf[0] = 0;
    v17 = 0;
    v13 = 0;
    v14 = 0;
    __p = 0;
    sub_100F068C4(v3 + 48, buf, &__p, 259);
    if (__p)
    {
      v13 = __p;
      operator delete(__p);
    }

    if (v17 == 1)
    {
      sub_10004EC58(buf, v16);
    }

    sub_101403438((v1 + 28));
  }

  while (v1[39])
  {
    v4 = *(*(*(v1[35] + ((v1[38] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v1[38]) + 48);
    v18 = 770;
    (*(v4 + 16))();
    sub_101403438((v1 + 34));
  }

  while (v1[47])
  {
    v5 = *(*(v1[43] + ((v1[46] >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v1[46] & 0x1FFLL));
    LOBYTE(v18) = 2;
    LOBYTE(v19) = 3;
    (*(v5 + 16))();
    if (v18 == 1)
    {
      sub_10001021C(&v19);
    }

    sub_1014033B4((v1 + 42));
  }

  while (1)
  {
    v9 = v1[18];
    v10 = *(v9 + 296);
    if (v10 == *(v9 + 304))
    {
      break;
    }

    (*(**v10 + 24))();
    v6 = v1[18];
    sub_1014034BC(*(v6 + 296), *(v6 + 304), (*(v6 + 304) - *(v6 + 296)) >> 4);
    v7 = *(v6 + 304);
    v8 = *(v7 - 8);
    if (v8)
    {
      sub_100004A34(v8);
    }

    *(v6 + 304) = v7 - 16;
  }

  v11 = v1[16];
  v1[15] = 0;
  v1[16] = 0;
  if (v11)
  {
    sub_100004A34(v11);
  }
}

void sub_101403B34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16)
{
  if (*(v17 - 48) == 1)
  {
    sub_10001021C((v16 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101403B84(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101403BD0(void *a1)
{
  *a1 = off_101F37AD8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101403C1C(void *a1)
{
  *a1 = off_101F37AD8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101403CFC(uint64_t result, uint64_t a2)
{
  *a2 = off_101F37AD8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101403D3C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101403D4C(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101403D8C(void *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[2];
      if (v5)
      {
        v6 = v2[18];
        if (v5 == v6)
        {
          *(v6 + 192) = 0;
          sub_1013ECFD0(v2);
LABEL_10:
          sub_100004A34(v4);
          return;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = v2[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Vinyl model expired; ignoring deactivate profile result.", v8, 2u);
  }

  if (v4)
  {
    goto LABEL_10;
  }
}

uint64_t sub_101403E58(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_101403EA4(void *a1)
{
  *a1 = off_101F37B58;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101403EF0(void *a1)
{
  *a1 = off_101F37B58;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_101403FD0(uint64_t result, uint64_t a2)
{
  *a2 = off_101F37B58;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_101404010(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_101404020(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_101404060(void *a1)
{
  v2 = a1[1];
  v3 = a1[3];
  if (v3)
  {
    v4 = std::__shared_weak_count::lock(v3);
    if (v4)
    {
      v5 = a1[2];
      if (v5)
      {
        v6 = v2[18];
        if (v5 == v6)
        {
          *(v6 + 192) = 0;
          sub_1013ECFD0(v2);
LABEL_10:
          sub_100004A34(v4);
          return;
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  v7 = v2[5];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Vinyl model expired; ignoring deactivate profile result.", v8, 2u);
  }

  if (v4)
  {
    goto LABEL_10;
  }
}

uint64_t sub_10140412C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101404198(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F37BD8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_101404214(uint64_t a1)
{
  *a1 = off_101F37C28;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_101404264(uint64_t a1)
{
  *a1 = off_101F37C28;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_101404370(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101F37C28;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_1014043BC(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_1014043D0(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_101404414(uint64_t a1, std::string *a2, uint64_t a3)
{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v4 = *(a1 + 8);
  if (*(a3 + 1))
  {
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = subscriber::asString();
      v11 = *(a1 + 16);
      v10 = a1 + 16;
      v9 = v11;
      if (*(v10 + 23) >= 0)
      {
        v9 = v10;
      }

      *buf = 136315394;
      *&buf[4] = v8;
      v15 = 2080;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Caching %s for (%s) failed", buf, 0x16u);
    }
  }

  else
  {
    v5 = sub_1011CE454(*(v4 + 144) + 168, (a1 + 16));
    v13 = 3;
    *buf = &v13;
    v6 = sub_1011CE5F8(v5 + 56, 3);
    std::string::operator=((v6 + 5), &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_101404560(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10140457C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1014045C8(uint64_t a1)
{
  *a1 = off_101F37CA8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_101404618(uint64_t a1)
{
  *a1 = off_101F37CA8;
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

char *sub_101404724(char *result, uint64_t a2)
{
  v2 = *(result + 1);
  *a2 = off_101F37CA8;
  *(a2 + 8) = v2;
  if (result[39] < 0)
  {
    return sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  v3 = *(result + 1);
  *(a2 + 32) = *(result + 4);
  *(a2 + 16) = v3;
  return result;
}

void sub_101404770(uint64_t a1)
{
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_101404784(void **__p)
{
  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

void sub_1014047C8(uint64_t a1, std::string *a2, uint64_t a3)
{
  __p = *a2;
  a2->__r_.__value_.__l.__size_ = 0;
  a2->__r_.__value_.__r.__words[2] = 0;
  a2->__r_.__value_.__r.__words[0] = 0;
  v4 = *(a1 + 8);
  if (*(a3 + 1))
  {
    v7 = *(v4 + 40);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = subscriber::asString();
      v11 = *(a1 + 16);
      v10 = a1 + 16;
      v9 = v11;
      if (*(v10 + 23) >= 0)
      {
        v9 = v10;
      }

      *buf = 136315394;
      *&buf[4] = v8;
      v15 = 2080;
      v16 = v9;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Caching %s for (%s) failed", buf, 0x16u);
    }
  }

  else
  {
    v5 = sub_1011CE454(*(v4 + 144) + 168, (a1 + 16));
    v13 = 4;
    *buf = &v13;
    v6 = sub_1011CE5F8(v5 + 56, 4);
    std::string::operator=((v6 + 5), &__p);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

void sub_101404914(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101404930(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10140497C(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 != a1[3])
  {
    if (v1 == a1[1])
    {
      goto LABEL_23;
    }

    while (1)
    {
      sub_10004AB6C((a1[2] + 8), *(a1[2] + 264));
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v3 = *(*a1 + 16);
      sub_101404CAC(v3);
      sub_10004ABC4(&v18, v3);
      v4 = sub_10107A1CC((*a1 + 16));
      v5 = (v4 + 32);
      if (*(v4 + 32))
      {
        v6 = v4;
        v7 = a1[2];
        for (i = *sub_10107ACFC((v4 + 32)); i != *(sub_10107ACFC(v5) + 8); i += 6)
        {
          memset(v30, 0, sizeof(v30));
          sub_10004ACE8(i, v30);
          if (sub_100048EA8(i))
          {
            if (*(v6 + 24) == 1)
            {
              *(v6 + 24) = 0;
              sub_10004B3DC(v6, &v18);
            }

            sub_10004B040(v30);
            break;
          }

          sub_10004AFC8((v7 + 8), v30);
          sub_10004B040(v30);
        }
      }

      v9 = sub_10107A1CC((*a1 + 16));
      v10 = a1[2];
      if (*(v9 + 24) == 1)
      {
        ++*(v10 + 288);
      }

      else
      {
        ++*(v10 + 292);
      }

      v11 = sub_10107A1CC((*a1 + 16));
      if (*(v11 + 24) != 1 || (v12 = *(v11 + 16)) != 0 && atomic_load_explicit((v12 + 8), memory_order_acquire))
      {
        v13 = 1;
      }

      else
      {
        sub_101080694(a1, &v18, *a1);
        v13 = 0;
      }

      (*(**(&v29 + 1) + 32))(*(&v29 + 1));
      sub_10004A6B0(&v18);
      v1 = *a1;
      v14 = a1[1];
      if (!v13)
      {
        break;
      }

      v15 = *(v1 + 8);
      *a1 = v15;
      if (v15 == v14)
      {
        v1 = v14;
        goto LABEL_23;
      }
    }

    if (v1 == v14)
    {
LABEL_23:
      v16 = a1[3];
      if (v16 != v1)
      {
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v17 = *(v16 + 16);
        sub_101404CAC(v17);
        sub_10004ABC4(&v18, v17);
        sub_101080694(a1, &v18, a1[1]);
        (*(**(&v29 + 1) + 32))(*(&v29 + 1));
        sub_10004A6B0(&v18);
      }
    }
  }
}

void sub_101404C54(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101404CAC(uint64_t result)
{
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void *sub_101404CEC(void *a1)
{
  if (*(*a1 + 292) > *(*a1 + 288))
  {
    v2 = a1[1];
    v3 = a1[2];
    v11 = 0u;
    memset(v10, 0, sizeof(v10));
    v4 = sub_10004A4A8(v2 + 3);
    sub_100048D3C(v10, v4);
    v5 = sub_10107A188(v2);
    if (sub_10107B164(v5) == v3)
    {
      v6 = v2[1];
      if (!v6 || atomic_load_explicit((v6 + 8), memory_order_acquire) != 1)
      {
        operator new();
      }

      v7 = sub_10107A188(v2);
      v9 = *(sub_10107B164(v7) + 8);
      sub_10107A2D0(v2, v10, 0, &v9, 0);
    }

    sub_10004A704(*(&v11 + 1));
    sub_10004A6B0(v10);
  }

  return a1;
}

void sub_101404E58(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (a2)
  {
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101404EB4(uint64_t a1)
{
  v2 = *(a1 + 296);
  if (v2)
  {
    v5 = 0u;
    memset(v4, 0, sizeof(v4));
    sub_10004ABC4(v4, v2);
    sub_10004B3DC(*(a1 + 296), v4);
    (*(**(&v5 + 1) + 32))(*(&v5 + 1));
    sub_10004A6B0(v4);
  }

  sub_10004B4D0((a1 + 8));
  if (*a1 == 1)
  {
    *a1 = 0;
  }

  return a1;
}

void sub_101404F8C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

_BYTE *sub_101404FAC(_BYTE *result, unsigned __int8 *a2)
{
  v2 = *a2;
  if (v2 == 2)
  {
    if (*result == 2)
    {
      result[1] = a2[1];
      result[2] = a2[2];
      result[3] = a2[3];
    }

    else
    {
      *result = 2;
      v3 = *(a2 + 1);
      result[3] = a2[3];
      *(result + 1) = v3;
    }
  }

  else if (v2 == 1)
  {
    if (*result != 1)
    {
      *result = 1;
    }

    result[1] = a2[1];
  }

  return result;
}

uint64_t *sub_101405024(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *(v1 + 40);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      sub_10010EE84(v1 + 8, 0);
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v3 = *v1;
  if (*(v1 + 41) - 1 > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = byte_1019665EE[(*(v1 + 41) - 1)];
  }

  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = asString();
    v12 = *(v1 + 40);
    if (v12 != 2)
    {
      if (v12 != 1)
      {
LABEL_21:
        exception = __cxa_allocate_exception(0x10uLL);
        v14 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        goto LABEL_22;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v14 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_18:
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Activate profile failed error %s (driver error %s)", buf, 0x16u);
  }

  sub_10010EE84(v1 + 8, v4 | 0x100);
  v6 = *(v1 + 40);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v14 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_22:
LABEL_23:
      __cxa_throw(exception, v15, v14);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v14 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_18;
  }

  if (*(v1 + 41) == 2)
  {
    v7 = *(v3 + 80);
    v8 = *(v1 + 42);
    v9 = *(v1 + 43);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v19 = &unk_101EF6088;
    v20 = v7;
    v21 = 20;
    v22 = v8;
    v23 = v9;
    sub_100F6E294(0x800F1);
  }

LABEL_11:
  sub_10140530C(&v17);
  return sub_1000049E0(&v16);
}

void sub_1014052D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_10140530C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10140530C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    *(v1 + 40) = 0;
    sub_100112FB8(v1 + 8);
    operator delete();
  }

  return result;
}

unsigned __int8 *sub_101405360(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a2;
  if (v4 == 2)
  {
    v5 = *a1;
    if (v5 == 1)
    {
      v6 = *(a1 + 1);
      if (v6)
      {
        *(a1 + 2) = v6;
        operator delete(v6);
      }
    }

    else if (v5 == 2)
    {
      a1[8] = a2[8];
      a1[9] = a2[9];
      a1[10] = a2[10];
      return a1;
    }

    *a1 = 2;
    v7 = *(a2 + 4);
    a1[10] = a2[10];
    *(a1 + 4) = v7;
    return a1;
  }

  if (v4 == 1)
  {
    if (*a1 == 1)
    {
      sub_100015184((a1 + 8), (a2 + 8));
    }

    else
    {
      *a1 = 1;
      *(a1 + 2) = 0;
      *(a1 + 3) = 0;
      *(a1 + 1) = 0;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 3) = *(a2 + 3);
      *(a2 + 1) = 0;
      *(a2 + 2) = 0;
      *(a2 + 3) = 0;
    }
  }

  return a1;
}

uint64_t *sub_10140543C(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(v1 + 40);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = sub_101100E8C(v1 + 48, 0);
      v5 = v4;
      if (v4)
      {
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = sub_1010F59E4(v5);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Activate profile failed: %s", buf, 0xCu);
        }

        v7 = 259;
      }

      else
      {
        v7 = 0;
      }

      sub_10010EE84(v1 + 8, v7);
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (*(v1 + 48) - 1 > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = byte_1019665EE[(*(v1 + 48) - 1)];
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = asString();
    v16 = *(v1 + 40);
    if (v16 != 2)
    {
      if (v16 != 1)
      {
LABEL_26:
        exception = __cxa_allocate_exception(0x10uLL);
        v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        goto LABEL_27;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v18 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_23:
      goto LABEL_28;
    }

    *buf = 136315394;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Activate profile failed error %s (driver error %s)", buf, 0x16u);
  }

  sub_10010EE84(v1 + 8, v8 | 0x100);
  v10 = *(v1 + 40);
  if (v10 != 2)
  {
    if (v10 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_27:
LABEL_28:
      __cxa_throw(exception, v19, v18);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v18 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_23;
  }

  if (*(v1 + 48) == 2)
  {
    v11 = *(v2 + 80);
    v12 = *(v1 + 49);
    v13 = *(v1 + 50);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v23 = &unk_101EF6088;
    v24 = v11;
    v25 = 14;
    v26 = v12;
    v27 = v13;
    sub_100F6E294(0x800F1);
  }

LABEL_16:
  sub_101405790(&v21);
  return sub_1000049E0(&v20);
}

void sub_101405754(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101405790(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101405790(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 40) == 1)
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        *(v1 + 56) = v2;
        operator delete(v2);
      }
    }

    *(v1 + 40) = 0;
    sub_100112FB8(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_101405800(uint64_t *a1)
{
  v1 = *a1;
  v16 = a1;
  v17 = v1;
  v2 = *(v1 + 8);
  if (v2 != 2)
  {
    if (v2 == 1)
    {
      sub_10010EE84(v1 + 16, 0);
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v3 = *v1;
  if (*(v1 + 9) - 1 > 0xA)
  {
    v4 = 0;
  }

  else
  {
    v4 = byte_1019665EE[(*(v1 + 9) - 1)];
  }

  v5 = *(v3 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v11 = asString();
    v12 = *(v1 + 8);
    if (v12 != 2)
    {
      if (v12 != 1)
      {
LABEL_21:
        exception = __cxa_allocate_exception(0x10uLL);
        v14 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        goto LABEL_22;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v14 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_18:
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Deactivate profile failed error %s (driver error %s)", buf, 0x16u);
  }

  sub_10010EE84(v1 + 16, v4 | 0x100);
  v6 = *(v1 + 8);
  if (v6 != 2)
  {
    if (v6 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v14 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_22:
LABEL_23:
      __cxa_throw(exception, v15, v14);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v14 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_18;
  }

  if (*(v1 + 9) == 2)
  {
    v7 = *(v3 + 80);
    v8 = *(v1 + 10);
    v9 = *(v1 + 11);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v19 = &unk_101EF6088;
    v20 = v7;
    v21 = 21;
    v22 = v8;
    v23 = v9;
    sub_100F6E294(0x800F1);
  }

LABEL_11:
  sub_101405AE8(&v17);
  return sub_1000049E0(&v16);
}

void sub_101405AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101405AE8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101405AE8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100112FB8(v1 + 16);
    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_101405B3C(uint64_t *a1)
{
  v1 = *a1;
  v20 = a1;
  v21 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = sub_101100E8C(v1 + 16, 1);
      v5 = v4;
      if (v4)
      {
        v6 = *(v2 + 40);
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          *&buf[4] = sub_1010F59E4(v5);
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Deactivate profile failed: %s", buf, 0xCu);
        }

        v7 = 259;
      }

      else
      {
        v7 = 0;
      }

      sub_10010EE84(v1 + 40, v7);
      goto LABEL_16;
    }

    goto LABEL_26;
  }

  if (*(v1 + 16) - 1 > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = byte_1019665EE[(*(v1 + 16) - 1)];
  }

  v9 = *(v2 + 40);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v15 = asString();
    v16 = *(v1 + 8);
    if (v16 != 2)
    {
      if (v16 != 1)
      {
LABEL_26:
        exception = __cxa_allocate_exception(0x10uLL);
        v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        goto LABEL_27;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v18 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_23:
      goto LABEL_28;
    }

    *buf = 136315394;
    *&buf[4] = v15;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Deactivate profile failed error %s (driver error %s)", buf, 0x16u);
  }

  sub_10010EE84(v1 + 40, v8 | 0x100);
  v10 = *(v1 + 8);
  if (v10 != 2)
  {
    if (v10 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v18 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_27:
LABEL_28:
      __cxa_throw(exception, v19, v18);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v18 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_23;
  }

  if (*(v1 + 16) == 2)
  {
    v11 = *(v2 + 80);
    v12 = *(v1 + 17);
    v13 = *(v1 + 18);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v23 = &unk_101EF6088;
    v24 = v11;
    v25 = 15;
    v26 = v12;
    v27 = v13;
    sub_100F6E294(0x800F1);
  }

LABEL_16:
  sub_101405E90(&v21);
  return sub_1000049E0(&v20);
}

void sub_101405E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101405E90(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101405E90(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100112FB8(v1 + 40);
    if (*(v1 + 8) == 1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        *(v1 + 24) = v2;
        operator delete(v2);
      }
    }

    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

uint64_t *sub_101405F00(uint64_t *a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 == 2)
  {
    if (*(v1 + 16) - 1 > 0xA)
    {
      v7 = 0;
    }

    else
    {
      v7 = byte_1019665EE[(*(v1 + 16) - 1)];
    }

    v8 = v2[5];
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_11;
    }

    v12 = asString();
    v13 = *(v1 + 8);
    if (v13 == 2)
    {
      v14 = v12;
      v15 = asString();
      v16 = *(v1 + 8);
      if (v16 == 2)
      {
        v17 = *(v1 + 17);
        v18 = *(v1 + 18);
        *buf = 136315906;
        v25 = v14;
        v26 = 2080;
        v27 = v15;
        v28 = 1024;
        v29 = v17;
        v30 = 1024;
        v31 = v18;
        _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "tapeSetProprietaryData error %s (driver error %s), SW1:%x, SW2:%x", buf, 0x22u);
LABEL_11:
        buf[0] = 2;
        buf[1] = v7;
        goto LABEL_12;
      }

      if (v16 != 1)
      {
        goto LABEL_25;
      }
    }

    else if (v13 != 1)
    {
      goto LABEL_25;
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_26;
  }

  if (v3 != 1)
  {
LABEL_25:
    exception = __cxa_allocate_exception(0x10uLL);
    v20 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_26:
    __cxa_throw(exception, v21, v20);
  }

  v4 = sub_101104188(v1 + 16);
  v5 = v4;
  if (!v4)
  {
    *buf = 257;
    v11 = *(v1 + 64);
    if (v11)
    {
      (*(*v11 + 48))(v11, buf);
      buf[0] = 0;
      sub_1013ECFD0(v2);
      goto LABEL_14;
    }

LABEL_20:
    sub_100022DB4();
  }

  v6 = v2[5];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v25 = sub_1010F59E4(v5);
    _os_log_error_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Set proprietary data failed: %s", buf, 0xCu);
  }

  *buf = 770;
LABEL_12:
  v9 = *(v1 + 64);
  if (!v9)
  {
    goto LABEL_20;
  }

  (*(*v9 + 48))(v9, buf);
LABEL_14:
  sub_101406260(&v23);
  return sub_1000049E0(&v22);
}

void sub_101406224(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101406260(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101406260(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100113648(v1 + 40);
    if (*(v1 + 8) == 1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        *(v1 + 24) = v2;
        operator delete(v2);
      }
    }

    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

void sub_1014062F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F37D28;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101406344(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    _Block_release(v1);
  }
}

void sub_10140638C(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F37D78;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1014063E0(void *a1)
{
  v2 = a1[10];
  if (v2)
  {
    _Block_release(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    a1[8] = v3;
    operator delete(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[4] = v4;

    operator delete(v4);
  }
}

uint64_t *sub_10140644C(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(v1 + 24);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = *(v2 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT) && (*buf = 0, _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sign Id map generated", buf, 2u), v5 = *(v1 + 24), v5 != 1))
      {
        if (v5 == 2)
        {
LABEL_23:
          exception = __cxa_allocate_exception(0x10uLL);
          v17 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
          goto LABEL_30;
        }
      }

      else
      {
        sub_1013EC13C(v2, "SignIdResult");
        v6 = *(v1 + 24);
        if (v6 == 1)
        {
          sub_1014068CC(*(*(v1 + 8) + 56), (v1 + 32));
          goto LABEL_16;
        }

        if (v6 == 2)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_27;
    }

LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    goto LABEL_29;
  }

  if (*(v1 + 32) - 1 > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = byte_1019665EE[(*(v1 + 32) - 1)];
  }

  v8 = *(v2 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString();
    v10 = *(v1 + 24);
    if (v10 != 2)
    {
      if (v10 != 1)
      {
        goto LABEL_28;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v17 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_26:
      goto LABEL_30;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Sign Id map failed with error %s  (driver error %s)", buf, 0x16u);
  }

  sub_1013F5BF0(*(*(v1 + 8) + 56), v7);
  v11 = *(v1 + 24);
  if (v11 != 2)
  {
    if (v11 != 1)
    {
LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_29:
LABEL_30:
      __cxa_throw(exception, v18, v17);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v17 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_26;
  }

  if (*(v1 + 32) == 2)
  {
    v12 = *(v2 + 80);
    v13 = *(v1 + 33);
    v14 = *(v1 + 34);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v22 = &unk_101EF6088;
    v23 = v12;
    v24 = 16;
    v25 = v13;
    v26 = v14;
    sub_100F6E294(0x800F1);
  }

LABEL_16:
  sub_1013ED75C(v2, 0);
  sub_101406858(&v20);
  return sub_1000049E0(&v19);
}

void sub_10140680C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101406858(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101406858(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 24) == 1)
    {
      v2 = *(v1 + 32);
      if (v2)
      {
        *(v1 + 40) = v2;
        operator delete(v2);
      }
    }

    *(v1 + 24) = 0;
    v3 = *(v1 + 16);
    if (v3)
    {
      sub_100004A34(v3);
    }

    operator delete();
  }

  return result;
}

void sub_1014068CC(uint64_t a1, char **a2)
{
  v3[0] = 0;
  sub_100112278(v3, a2);
  (*(a1 + 16))(a1, v3);
  if (v3[0] == 1)
  {
    if (__p)
    {
      v5 = __p;
      operator delete(__p);
    }
  }
}

void sub_101406930(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, char a9, void *__p, uint64_t a11)
{
  if (a9 == 1 && __p != 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *sub_10140695C(uint64_t *a1)
{
  v1 = *a1;
  v19 = a1;
  v20 = v1;
  v2 = *v1;
  v3 = *(v1 + 24);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = *(v2 + 40);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT) && (*buf = 0, _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Signed payload generated", buf, 2u), v5 = *(v1 + 24), v5 != 1))
      {
        if (v5 == 2)
        {
LABEL_23:
          exception = __cxa_allocate_exception(0x10uLL);
          v17 = &ctu::ResultIsError::~ResultIsError;
          ctu::ResultIsError::ResultIsError(exception);
          goto LABEL_30;
        }
      }

      else
      {
        sub_1013EC13C(v2, "SignIdResult");
        v6 = *(v1 + 24);
        if (v6 == 1)
        {
          sub_1014068CC(*(*(v1 + 8) + 56), (v1 + 32));
          goto LABEL_16;
        }

        if (v6 == 2)
        {
          goto LABEL_23;
        }
      }

      goto LABEL_27;
    }

LABEL_28:
    exception = __cxa_allocate_exception(0x10uLL);
    v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
    ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
    goto LABEL_29;
  }

  if (*(v1 + 32) - 1 > 0xA)
  {
    v7 = 0;
  }

  else
  {
    v7 = byte_1019665EE[(*(v1 + 32) - 1)];
  }

  v8 = *(v2 + 40);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = asString();
    v10 = *(v1 + 24);
    if (v10 != 2)
    {
      if (v10 != 1)
      {
        goto LABEL_28;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v17 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_26:
      goto LABEL_30;
    }

    *buf = 136315394;
    *&buf[4] = v9;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I SignPayload failed with error %s  (driver error %s)", buf, 0x16u);
  }

  sub_1013F5BF0(*(*(v1 + 8) + 56), v7);
  v11 = *(v1 + 24);
  if (v11 != 2)
  {
    if (v11 != 1)
    {
LABEL_27:
      exception = __cxa_allocate_exception(0x10uLL);
      v17 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_29:
LABEL_30:
      __cxa_throw(exception, v18, v17);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v17 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_26;
  }

  if (*(v1 + 32) == 2)
  {
    v12 = *(v2 + 80);
    v13 = *(v1 + 33);
    v14 = *(v1 + 34);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v22 = &unk_101EF6088;
    v23 = v12;
    v24 = 129;
    v25 = v13;
    v26 = v14;
    sub_100F6E294(0x800F1);
  }

LABEL_16:
  sub_1013ED75C(v2, 0);
  sub_101406858(&v20);
  return sub_1000049E0(&v19);
}

void sub_101406D1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101406858(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_101406D88(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F37DC8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101406DDC(void *a1)
{
  sub_1009A69F0((a1 + 9));
  v2 = a1[6];
  if (v2)
  {
    a1[7] = v2;
    operator delete(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    a1[4] = v3;

    operator delete(v3);
  }
}

uint64_t *sub_101406E40(uint64_t *a1)
{
  v1 = *a1;
  v24 = a1;
  v25 = v1;
  v2 = *v1;
  v3 = *(v1 + 40);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = *(v2 + 40);
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT) || (*buf = 0, _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I SecureAuth generated", buf, 2u), v5 = *(v1 + 40), v5 == 1))
      {
        sub_1013EC13C(v2, "SecureAuthRsp");
        v26 = 0;
        v27 = 0;
        v28 = 0;
        __p = 0;
        v35 = 0;
        v36 = 0;
        v33 = 0;
        v6 = *(v1 + 40);
        if (v6 != 1)
        {
          if (v6 == 2)
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v19 = &ctu::ResultIsError::~ResultIsError;
            ctu::ResultIsError::ResultIsError(exception);
          }

          else
          {
            exception = __cxa_allocate_exception(0x10uLL);
            v19 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
            ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
          }

          __cxa_throw(exception, v20, v19);
        }

        v7 = sub_1004690E0((v1 + 48), &v26, &__p, &v33);
        if (v7)
        {
          v8 = *(v2 + 40);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = v7;
            _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Decode secure auth failed: %d", buf, 8u);
          }

          buf[0] = 0;
          LOBYTE(v38) = 0;
          v31 = 0;
          v32 = 0;
          v30 = 0;
          sub_100F068C4(v1 + 8, buf, &v30, 259);
        }

        else
        {
          subscriber::sDecodeEapAka();
          v30 = 0;
          v31 = 0;
          v32 = 0;
          sub_100034C50(&v30, __p, v35, v35 - __p);
          sub_100F068C4(v1 + 8, buf, &v30, 0);
        }

        if (v30)
        {
          v31 = v30;
          operator delete(v30);
        }

        if (v38)
        {
          sub_10004EC58(buf, *&buf[8]);
        }

        if (__p)
        {
          v35 = __p;
          operator delete(__p);
        }

        if (v26)
        {
          v27 = v26;
          operator delete(v26);
        }

        goto LABEL_32;
      }

      if (v5 == 2)
      {
        v21 = __cxa_allocate_exception(0x10uLL);
        v22 = &ctu::ResultIsError::~ResultIsError;
        ctu::ResultIsError::ResultIsError(v21);
        goto LABEL_49;
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      v22 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v21);
      goto LABEL_48;
    }

    goto LABEL_47;
  }

  if (*(v1 + 48) - 1 > 0xA)
  {
    v9 = 0;
  }

  else
  {
    v9 = byte_1019665EE[(*(v1 + 48) - 1)];
  }

  v10 = *(v2 + 40);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = asString();
    v12 = *(v1 + 40);
    if (v12 != 2)
    {
      if (v12 != 1)
      {
LABEL_47:
        v21 = __cxa_allocate_exception(0x10uLL);
        v22 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(v21);
        goto LABEL_48;
      }

      v21 = __cxa_allocate_exception(0x10uLL);
      v22 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(v21);
LABEL_42:
      goto LABEL_49;
    }

    *buf = 136315394;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I SecureAuth failed with error %s  (driver error %s)", buf, 0x16u);
  }

  LOBYTE(v26) = 0;
  v29 = 0;
  v35 = 0;
  v36 = 0;
  __p = 0;
  sub_100F068C4(v1 + 8, &v26, &__p, v9 | 0x100);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }

  if (v29 == 1)
  {
    sub_10004EC58(&v26, v27);
  }

  v13 = *(v1 + 40);
  if (v13 != 2)
  {
    if (v13 != 1)
    {
      v21 = __cxa_allocate_exception(0x10uLL);
      v22 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(v21);
LABEL_48:
LABEL_49:
      __cxa_throw(v21, v23, v22);
    }

    v21 = __cxa_allocate_exception(0x10uLL);
    v22 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(v21);
    goto LABEL_42;
  }

  if (*(v1 + 48) == 2)
  {
    v14 = *(v2 + 80);
    v15 = *(v1 + 49);
    v16 = *(v1 + 50);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v38 = &unk_101EF6088;
    v39 = v14;
    v40 = 65;
    v41 = v15;
    v42 = v16;
    sub_100F6E294(0x800F1);
  }

LABEL_32:
  sub_1013ED75C(v2, 0);
  sub_101407460(&v25);
  return sub_1000049E0(&v24);
}

void sub_101407374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, char a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, char a26)
{
  __cxa_free_exception(v26);
  sub_101407460(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_101407460(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 40) == 1)
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        *(v1 + 56) = v2;
        operator delete(v2);
      }
    }

    *(v1 + 40) = 0;
    sub_1009A69F0(v1 + 8);
    operator delete();
  }

  return result;
}

void sub_1014074F0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F37E18;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_101407544(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    _Block_release(v2);
  }

  if (*(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 47) < 0)
  {
    v3 = *(a1 + 24);

    operator delete(v3);
  }
}

void sub_1014075D0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F37E68;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

const void **sub_10140764C(uint64_t a1, const void **a2)
{
  if (*a1 == 1)
  {
    return sub_1005C11CC((a1 + 8), a2);
  }

  *a1 = 1;
  return sub_10002D728((a1 + 8), a2);
}

uint64_t sub_10140766C(uint64_t a1, uint64_t a2)
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

uint64_t *sub_101407704(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(v1 + 40);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = sub_101100E8C(v1 + 48, 0);
      if (v4)
      {
        v5 = *(v2 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = sub_1010F59E4(v4);
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Enabling profile failed: %s", buf, 0xCu);
        }
      }

      v6 = sub_101401BF4(v4);
      sub_101400C8C(*(v1 + 32), v6);
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v7 = *(v2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = asString();
    v14 = *(v1 + 40);
    if (v14 != 2)
    {
      if (v14 != 1)
      {
LABEL_21:
        exception = __cxa_allocate_exception(0x10uLL);
        v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        goto LABEL_22;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_18:
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Enabling profile failed error %s (driver error %s)", buf, 0x16u);
  }

  sub_101400C8C(*(v1 + 32), 8);
  v8 = *(v1 + 40);
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_22:
LABEL_23:
      __cxa_throw(exception, v17, v16);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v16 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_18;
  }

  if (*(v1 + 48) == 2)
  {
    v9 = *(v2 + 80);
    v10 = *(v1 + 49);
    v11 = *(v1 + 50);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v21 = &unk_101EF6088;
    v22 = v9;
    v23 = 14;
    v24 = v10;
    v25 = v11;
    sub_100F6E294(0x800F1);
  }

LABEL_11:
  sub_101407A50(&v19);
  return sub_1000049E0(&v18);
}

void sub_101407A14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101407A50(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101407A50(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 40) == 1)
    {
      v2 = *(v1 + 48);
      if (v2)
      {
        *(v1 + 56) = v2;
        operator delete(v2);
      }
    }

    *(v1 + 40) = 0;
    sub_100F18F08(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t *sub_101407AC0(uint64_t *a1)
{
  v1 = *a1;
  v18 = a1;
  v19 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  if (v3 != 2)
  {
    if (v3 == 1)
    {
      v4 = sub_101100E8C(v1 + 16, 1);
      if (v4)
      {
        v5 = *(v2 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315138;
          *&buf[4] = sub_1010F59E4(v4);
          _os_log_error_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Disabling profile failed: %s", buf, 0xCu);
        }
      }

      v6 = sub_101401BF4(v4);
      sub_101400C8C(*(v1 + 64), v6);
      goto LABEL_11;
    }

    goto LABEL_21;
  }

  v7 = *(v2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v13 = asString();
    v14 = *(v1 + 8);
    if (v14 != 2)
    {
      if (v14 != 1)
      {
LABEL_21:
        exception = __cxa_allocate_exception(0x10uLL);
        v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
        ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
        goto LABEL_22;
      }

      exception = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsNotError::~ResultIsNotError;
      ctu::ResultIsNotError::ResultIsNotError(exception);
LABEL_18:
      goto LABEL_23;
    }

    *buf = 136315394;
    *&buf[4] = v13;
    *&buf[12] = 2080;
    *&buf[14] = asString();
    _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Disabling profile failed error %s (driver error %s)", buf, 0x16u);
  }

  sub_101400C8C(*(v1 + 64), 8);
  v8 = *(v1 + 8);
  if (v8 != 2)
  {
    if (v8 != 1)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v16 = &ctu::ResultIsEmptyError::~ResultIsEmptyError;
      ctu::ResultIsEmptyError::ResultIsEmptyError(exception);
LABEL_22:
LABEL_23:
      __cxa_throw(exception, v17, v16);
    }

    exception = __cxa_allocate_exception(0x10uLL);
    v16 = &ctu::ResultIsNotError::~ResultIsNotError;
    ctu::ResultIsNotError::ResultIsNotError(exception);
    goto LABEL_18;
  }

  if (*(v1 + 16) == 2)
  {
    v9 = *(v2 + 80);
    v10 = *(v1 + 17);
    v11 = *(v1 + 18);
    *buf = _NSConcreteStackBlock;
    *&buf[8] = 0x40000000;
    *&buf[16] = sub_100F6E440;
    v21 = &unk_101EF6088;
    v22 = v9;
    v23 = 15;
    v24 = v10;
    v25 = v11;
    sub_100F6E294(0x800F1);
  }

LABEL_11:
  sub_101407E0C(&v19);
  return sub_1000049E0(&v18);
}

void sub_101407DD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  __cxa_free_exception(v10);
  sub_101407E0C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_101407E0C(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100F18F08(v1 + 40);
    if (*(v1 + 8) == 1)
    {
      v2 = *(v1 + 16);
      if (v2)
      {
        *(v1 + 24) = v2;
        operator delete(v2);
      }
    }

    *(v1 + 8) = 0;
    operator delete();
  }

  return result;
}

const __CFString *sub_101407F0C(int a1, int a2)
{
  switch(a2)
  {
    case 0:
      return @"None";
    case 2:
      if (a1 == 1)
      {
        return @"NITZ-1";
      }

      if (a1 == 2)
      {
        return @"NITZ-2";
      }

      v3 = &type metadata for ;
      break;
    case 1:
      if (a1 == 1)
      {
        return @"CDMA-1";
      }

      if (a1 == 2)
      {
        return @"CDMA-2";
      }

      v3 = &type metadata for ;
      break;
    default:
      return @"Invalid";
  }

  return *v3;
}

const __CFString *sub_101407FA4(int a1)
{
  switch(a1)
  {
    case 0:
      return @"None";
    case 2:
      v1 = &type metadata for ;
      return *v1;
    case 1:
      v1 = &type metadata for ;
      return *v1;
  }

  return @"Invalid";
}

uint64_t sub_101407FEC(uint64_t a1, uint64_t *a2)
{
  ctu::OsLogContext::OsLogContext(&v27, kCtLoggingSystemName, "wea");
  ctu::OsLogLogger::OsLogLogger(v31, &v27);
  ctu::OsLogLogger::OsLogLogger((a1 + 56), v31);
  ctu::OsLogLogger::~OsLogLogger(v31);
  ctu::OsLogContext::~OsLogContext(&v27);
  v29 = 0;
  v30 = 0;
  __p = 0;
  sub_1001B9EC4(&__p, *a2, a2[1], (a2[1] - *a2) >> 3);
  sub_100D86208(a1, &__p);
  if (__p)
  {
    v29 = __p;
    operator delete(__p);
  }

  *(a1 + 64) = 0;
  v4 = (a1 + 64);
  *a1 = off_101F37FD8;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v5 = *a2;
  v6 = a2[1];
  v7 = &v6[-*a2];
  if ((v7 & 8) != 0)
  {
    v8 = *(a1 + 56);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Invalid length of lat/long. last coordinate ignored...", &v27, 2u);
      v5 = *a2;
      v6 = a2[1];
    }

    v6 -= 8;
    a2[1] = v6;
    v7 = v6 - v5;
  }

  if (v7 > 0x10)
  {
    v10 = &v5[v7];
    if (*v5 != *(v10 - 2) || *(v5 + 1) != *(v10 - 1))
    {
      v11 = *(a1 + 56);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27.__r_.__value_.__l.__data_) = 0;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "Polygon not closed. Force closing the polygon by repeating the first coordinates", &v27, 2u);
        v5 = *a2;
      }

      sub_1004BC3F0(a2, v5);
      sub_1004BC3F0(a2, (*a2 + 8));
      v5 = *a2;
      v6 = a2[1];
    }

    if (v6 != v5)
    {
      v12 = 0;
      v13 = 0;
      v14 = *(a1 + 72);
      do
      {
        v15 = vcvtd_n_f64_u64(180 * *&v5[8 * v12], 0x16uLL) + -90.0;
        v16 = vcvtd_n_f64_u64(360 * *&v5[8 * (v13 | 1)], 0x16uLL) + -180.0;
        v17 = *(a1 + 80);
        if (v14 >= v17)
        {
          v18 = *v4;
          v19 = v14 - *v4;
          v20 = v19 >> 4;
          v21 = (v19 >> 4) + 1;
          if (v21 >> 60)
          {
            sub_100ECB8BC();
          }

          v22 = v17 - v18;
          if (v22 >> 3 > v21)
          {
            v21 = v22 >> 3;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF0)
          {
            v23 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            sub_1003BCAB4(a1 + 64, v23);
          }

          v24 = (16 * v20);
          *v24 = v15;
          v24[1] = v16;
          v14 = (16 * v20 + 16);
          memcpy(0, v18, v19);
          v25 = *(a1 + 64);
          *(a1 + 64) = 0;
          *(a1 + 72) = v14;
          *(a1 + 80) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v14 = v15;
          v14[1] = v16;
          v14 += 2;
        }

        *(a1 + 72) = v14;
        v13 += 2;
        v12 = v13;
        v5 = *a2;
      }

      while (v13 < ((a2[1] - *a2) >> 3));
    }

    sub_101684468((a1 + 64), &v27);
    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    *(a1 + 32) = v27;
  }

  else
  {
    v9 = *(a1 + 56);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v27.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Invalid Polygon missing minimum vertices.", &v27, 2u);
    }
  }

  return a1;
}

void sub_101408368(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 72) = v4;
    operator delete(v4);
  }

  sub_100D86270(v1);
  ctu::OsLogLogger::~OsLogLogger((v1 + 56));
  _Unwind_Resume(a1);
}

void *sub_1014083C8(void *a1)
{
  *a1 = off_101F37FD8;
  v2 = a1[8];
  if (v2)
  {
    a1[9] = v2;
    operator delete(v2);
  }

  sub_100D86270(a1);
  ctu::OsLogLogger::~OsLogLogger((a1 + 7));
  return a1;
}

void sub_10140842C(void *a1)
{
  sub_1014083C8(a1);

  operator delete();
}

uint64_t sub_101408464@<X0>(void *a1@<X0>, void *a2@<X8>)
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
  v17 = 0u;
  v18 = 0u;
  *v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  memset(v14, 0, sizeof(v14));
  v12 = 0u;
  sub_10000C320(&v12);
  (*(*a1 + 16))(&__p, a1);
  sub_10000C030(&v13);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  if (a1[9] != a1[8])
  {
    v4 = 0;
    v5 = 0;
    do
    {
      if (v5 && 50 * (v5 / 0x32) == v5)
      {
        sub_100061574(&v12, &__p);
        sub_1000D1054(a2, &__p);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p);
        }

        __p = 0uLL;
        v11 = 0;
        sub_1002BFD48(&v13 + 8, &__p);
        if (SHIBYTE(v11) < 0)
        {
          operator delete(__p);
        }

        std::ios_base::clear((&v12 + *(v12 - 24)), 0);
        sub_10000C030(&v13);
      }

      sub_10000C030(&v13);
      v6 = std::ostream::operator<<();
      sub_10000C030(v6);
      v7 = std::ostream::operator<<();
      sub_10000C030(v7);
      ++v5;
      v4 += 16;
    }

    while (v5 < (a1[9] - a1[8]) >> 4);
  }

  sub_100061574(&v12, &__p);
  sub_1000D1054(a2, &__p);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(__p);
  }

  *&v13 = v8;
  if (SHIBYTE(v16) < 0)
  {
    operator delete(v15[1]);
  }

  std::locale::~locale(v14);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1014087E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_1000087B4(&__p);
  std::ios::~ios();
  _Unwind_Resume(a1);
}

char *sub_10140885C@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  if (result[55] < 0)
  {
    return sub_100005F2C(a2, *(result + 4), *(result + 5));
  }

  *a2 = *(result + 2);
  *(a2 + 16) = *(result + 6);
  return result;
}

void AudioController::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_101409060(uint64_t a1)
{
  *a1 = off_101F38050;
  *(a1 + 56) = off_101F38178;
  sub_100034450(*(a1 + 368));
  v2 = *(a1 + 336);
  if (v2)
  {
    *(a1 + 344) = v2;
    operator delete(v2);
  }

  sub_1001A8E08(a1 + 312, *(a1 + 320));
  sub_10004C4EC(a1 + 288, *(a1 + 296));
  sub_10006DCAC(a1 + 256, *(a1 + 264));
  v3 = *(a1 + 240);
  if (v3)
  {
    sub_100004A34(v3);
  }

  sub_100009970(a1 + 208, *(a1 + 216));
  v4 = *(a1 + 200);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 160);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 144);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *(a1 + 128);
  if (v7)
  {
    sub_100004A34(v7);
  }

  v8 = *(a1 + 112);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 96);
  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_1000FEFCC((a1 + 64));
  TMKXPCServer.shutdown()();
  v10 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 40));
  sub_1000C0544((a1 + 8));
  return a1;
}

void sub_1014091B8(uint64_t a1)
{
  sub_101409060(a1);

  operator delete();
}

void sub_1014091F0(uint64_t a1)
{
  sub_101409060(a1 - 56);

  operator delete();
}

void sub_10140922C(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
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

void sub_10140932C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v6[0] = a1;
  v6[1] = v3;
  v7 = v2;
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 0x40000000;
  block[2] = sub_10140F5F0;
  block[3] = &unk_101F384E8;
  block[4] = a1 + 8;
  block[5] = v6;
  v5 = a1 + 24;
  v4 = *(a1 + 24);
  if (*(v5 + 8))
  {
    dispatch_async_and_wait(v4, block);
  }

  else
  {
    dispatch_sync(v4, block);
  }

  if (v7)
  {
    sub_100004A34(v7);
  }
}

void sub_1014093E0(uint64_t a1)
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

void sub_1014094EC(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 168);
    v3 = *(a1 + 172);
    v6 = *(a1 + 176);
    v5 = *(a1 + 180);
    v8 = *(a1 + 184);
    v7 = *(a1 + 188);
    if (v7 > 2)
    {
      v9 = "AudioStackType Undefined";
    }

    else
    {
      v9 = off_101F38AB0[v7];
    }

    v10 = sub_10140BEB4(a1);
    v12 = 67110658;
    *v13 = v4;
    *&v13[4] = 1024;
    *&v13[6] = v3;
    v14 = 1024;
    v15 = v6;
    v16 = 1024;
    v17 = v8;
    v18 = 1024;
    v19 = v5;
    v20 = 2080;
    v21 = v9;
    v22 = 2080;
    v23 = CSIBOOLAsString(v10);
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Vocoder info: type: %d, sample rate: %d I2S Clock Rate: %d, EVS UL Bandwidth: %d, EVS DL Bandwidth: %d, stack: %s, audio logging enabled: %s", &v12, 0x34u);
    v2 = *(a1 + 40);
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v11 = CSIBOOLAsString(*(a1 + 280));
    v12 = 136315138;
    *v13 = v11;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Driver ready: %s", &v12, 0xCu);
  }
}

void sub_101409660(uint64_t a1)
{
  if (!*(a1 + 192))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
        if (!v10)
        {
          goto LABEL_8;
        }

LABEL_12:
        v13 = *(a1 + 208);
        if (v13 == (a1 + 216))
        {
LABEL_66:
          if ((v11 & 1) == 0)
          {
            sub_100004A34(v9);
          }

          return;
        }

        while (*(v13 + 56) != 1)
        {
LABEL_60:
          v38 = v13[1];
          if (v38)
          {
            do
            {
              v39 = v38;
              v38 = *v38;
            }

            while (v38);
          }

          else
          {
            do
            {
              v39 = v13[2];
              v21 = *v39 == v13;
              v13 = v39;
            }

            while (!v21);
          }

          v13 = v39;
          if (v39 == (a1 + 216))
          {
            goto LABEL_66;
          }
        }

        v42 = 0;
        v43 = 0;
        (**v10)(&v42, v10, (v13 + 4));
        if (v42)
        {
          if (*(v42 + 52) != 1)
          {
            goto LABEL_58;
          }

          (*(**(a1 + 104) + 32))(buf);
          v14 = *buf;
          *buf = 0;
          *&buf[8] = 0;
          v15 = *(a1 + 200);
          *(a1 + 192) = v14;
          if (v15)
          {
            sub_100004A34(v15);
            if (*&buf[8])
            {
              sub_100004A34(*&buf[8]);
            }

            v16 = *(a1 + 192);
          }

          else
          {
            v16 = v14;
          }

          v25 = *(a1 + 40);
          if (v16)
          {
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              v26 = *(v13 + 55);
              v27 = (v26 & 0x80u) != 0;
              if ((v26 & 0x80u) != 0)
              {
                v26 = v13[5];
              }

              if (v27)
              {
                v28 = v13[4];
              }

              else
              {
                v28 = (v13 + 4);
              }

              v21 = v26 == 0;
              v29 = "<invalid>";
              if (!v21)
              {
                v29 = v28;
              }

              v30 = "not ready";
              if (*(v13 + 56))
              {
                v30 = "now ready";
              }

              *buf = 136315394;
              *&buf[4] = v29;
              *&buf[12] = 2080;
              *&buf[14] = v30;
              _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I IMS client for PersonalityID: %s is %s", buf, 0x16u);
              v16 = *(a1 + 192);
            }

            sub_10000501C(buf, "AudioController");
            v31 = *(a1 + 16);
            if (!v31 || (v32 = *(a1 + 8), (v33 = std::__shared_weak_count::lock(v31)) == 0))
            {
              sub_100013CC4();
            }

            v40 = v32;
            v41 = v33;
            (*(*v16 + 168))(v16, buf, &v40, *(a1 + 24));
            if (v41)
            {
              sub_100004A34(v41);
            }

            if (v45 < 0)
            {
              operator delete(*buf);
            }

            goto LABEL_58;
          }

          if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
LABEL_58:
            if (v43)
            {
              sub_100004A34(v43);
            }

            goto LABEL_60;
          }

          v34 = *(v13 + 55);
          v35 = (v34 & 0x80u) != 0;
          if ((v34 & 0x80u) != 0)
          {
            v34 = v13[5];
          }

          if (v35)
          {
            v36 = v13[4];
          }

          else
          {
            v36 = (v13 + 4);
          }

          v21 = v34 == 0;
          v37 = "<invalid>";
          if (!v21)
          {
            v37 = v36;
          }

          *buf = 136315138;
          *&buf[4] = v37;
          v23 = v25;
          v24 = "PersonalityID: %s no longer exists";
        }

        else
        {
          v17 = *(a1 + 40);
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_58;
          }

          v18 = *(v13 + 55);
          v19 = (v18 & 0x80u) != 0;
          if ((v18 & 0x80u) != 0)
          {
            v18 = v13[5];
          }

          if (v19)
          {
            v20 = v13[4];
          }

          else
          {
            v20 = (v13 + 4);
          }

          v21 = v18 == 0;
          v22 = "<invalid>";
          if (!v21)
          {
            v22 = v20;
          }

          *buf = 136315138;
          *&buf[4] = v22;
          v23 = v17;
          v24 = "PersonalityID: %s is not found";
        }

        _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, v24, buf, 0xCu);
        goto LABEL_58;
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
LABEL_8:
      v12 = *(a1 + 40);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#N PersonalityShop is not ready", buf, 2u);
      }

      goto LABEL_66;
    }

    goto LABEL_12;
  }
}

void sub_101409AD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_101409B44(uint64_t a1)
{
  sub_10000501C(&__p, "/cc/props/last_visible_plmns");
  v4[0] = off_101F38618;
  v4[1] = a1;
  v4[3] = v4;
  ctu::RestModule::observeProperty();
  sub_1000062D4(v4);
  if (v3 < 0)
  {
    operator delete(__p);
  }
}

void sub_101409BF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  sub_1000062D4(&a15);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_101409C24(uint64_t a1, void *a2)
{
  if (a2[2] == *(a1 + 272))
  {
    v5 = *a2;
    v3 = a2 + 1;
    v4 = v5;
    if (v5 == v3)
    {
      return;
    }

    v6 = *(a1 + 256);
    while (1)
    {
      v7 = *(v4 + 7) == *(v6 + 7) && *(v4 + 8) == *(v6 + 8);
      if (!v7)
      {
        break;
      }

      v8 = v4[1];
      v9 = v4;
      if (v8)
      {
        do
        {
          v4 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v4 = v9[2];
          v7 = *v4 == v9;
          v9 = v4;
        }

        while (!v7);
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
          v7 = *v11 == v6;
          v6 = v11;
        }

        while (!v7);
      }

      v6 = v11;
      if (v4 == v3)
      {
        return;
      }
    }
  }

  v12 = *(a1 + 264);
  if (!v12)
  {
    goto LABEL_29;
  }

  v13 = a1 + 264;
  do
  {
    if (*(v12 + 28) >= 1)
    {
      v13 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 28) < 1));
  }

  while (v12);
  if (v13 == a1 + 264 || *(v13 + 28) > 1)
  {
LABEL_29:
    v14 = 11;
  }

  else
  {
    v14 = *(v13 + 32);
  }

  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
  *v27 = v17;
  v21 = sub_100009510(&v16[1].__m_.__sig, v27);
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
        goto LABEL_36;
      }

      goto LABEL_40;
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
LABEL_36:
    v25 = *(a1 + 40);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = asString();
      *v27 = 136315138;
      *&v27[4] = v26;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not get SystemObserver to handle %s RAT change", v27, 0xCu);
    }

    goto LABEL_41;
  }

LABEL_40:
  (*(*v23 + 48))(v27, v23);
  sub_10004B8C8(a1, v27, v14);
LABEL_41:
  if ((v24 & 1) == 0)
  {
    sub_100004A34(v22);
  }
}

void sub_101409EB0(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_101409EE4(uint64_t a1, const void **a2, int a3)
{
  memset(v27, 0, sizeof(v27));
  ctu::cf::assign();
  v26 = 0;
  *__p = 0uLL;
  v6 = a2[1];
  v7 = *(a2 + 23);
  if (v7 >= 0)
  {
    v6 = *(a2 + 23);
  }

  if (v6)
  {
    v9 = 0;
  }

  else
  {
    if (v7 >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    v9 = memcmp(__p, v8, 0) == 0;
  }

  if (v9)
  {
    v10 = 9;
    goto LABEL_47;
  }

  memset(v27, 0, sizeof(v27));
  ctu::cf::assign();
  v26 = *&v27[16];
  *__p = *v27;
  v11 = a2[1];
  v12 = *(a2 + 23);
  v13 = v27[23];
  if (v27[23] >= 0)
  {
    v14 = v27[23];
  }

  else
  {
    v14 = *&v27[8];
  }

  if (v12 >= 0)
  {
    v11 = *(a2 + 23);
  }

  if (v14 != v11)
  {
    v17 = 0;
    if ((v27[23] & 0x80000000) != 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    if (!v17)
    {
      goto LABEL_29;
    }

LABEL_27:
    v10 = 10;
    goto LABEL_47;
  }

  if (v27[23] >= 0)
  {
    v15 = __p;
  }

  else
  {
    v15 = __p[0];
  }

  if (v12 >= 0)
  {
    v16 = a2;
  }

  else
  {
    v16 = *a2;
  }

  v17 = memcmp(v15, v16, v14) == 0;
  if ((v13 & 0x80000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_28:
  operator delete(__p[0]);
  if (v17)
  {
    goto LABEL_27;
  }

LABEL_29:
  memset(v27, 0, sizeof(v27));
  ctu::cf::assign();
  v26 = *&v27[16];
  *__p = *v27;
  v18 = a2[1];
  v19 = *(a2 + 23);
  v20 = v27[23];
  if (v27[23] >= 0)
  {
    v21 = v27[23];
  }

  else
  {
    v21 = *&v27[8];
  }

  if (v19 >= 0)
  {
    v18 = *(a2 + 23);
  }

  if (v21 == v18)
  {
    if (v27[23] >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = __p[0];
    }

    if (v19 >= 0)
    {
      v23 = a2;
    }

    else
    {
      v23 = *a2;
    }

    v24 = memcmp(v22, v23, v21) != 0;
    if ((v20 & 0x80000000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_44;
  }

  v24 = 1;
  if ((v27[23] & 0x80000000) != 0)
  {
LABEL_44:
    operator delete(__p[0]);
  }

LABEL_45:
  if (v24)
  {
    return;
  }

  v10 = 17;
LABEL_47:
  *v27 = v10;
  *&v27[4] = a3;
  *&v27[8] = a3;
  *&v27[12] = vdup_n_s32(0x1F40u);
  sub_10140A16C(a1, v27, 1);
}

void sub_10140A144(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10140A16C(uint64_t a1, int *a2, int a3)
{
  v6 = *a2;
  v5 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = *(a1 + 188);
  v44 = 1;
  v43 = 0;
  v11 = sub_10140C0EC(a1, &v43, &v44);
  if (v43)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (!v11)
  {
    v12 = v10;
  }

  if (*(a1 + 168) == v6 && *(a1 + 172) == v5 && *(a1 + 176) == v7 && *(a1 + 180) == v8 && *(a1 + 184) == v9)
  {
    v13 = *(a1 + 188);
    *(a1 + 188) = v12;
    *(a1 + 168) = v6;
    *(a1 + 172) = v5;
    *(a1 + 176) = v7;
    *(a1 + 180) = v8;
    if (v13 == v12 && (a3 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *(a1 + 168) = v6;
    *(a1 + 172) = v5;
    *(a1 + 176) = v7;
    *(a1 + 180) = v8;
    *(a1 + 184) = v9;
    *(a1 + 188) = v12;
  }

  v14 = *(a1 + 40);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = CSIBOOLAsString(a3);
    LODWORD(buf) = 67109890;
    DWORD1(buf) = v6;
    WORD4(buf) = 1024;
    *(&buf + 10) = v5;
    HIWORD(buf) = 1024;
    LODWORD(v46[0]) = v7;
    WORD2(v46[0]) = 2080;
    *(v46 + 6) = v15;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Notifying audio rate available with vocoderType = %d, rate = %d, I2S Clock Rate = %d, indication = %s; Dropping EVS bandwidth uplink and downlink values", &buf, 0x1Eu);
  }

  v42 = 0;
  v16 = xpc_dictionary_create(0, 0, 0);
  v17 = v16;
  if (v16)
  {
    v42 = v16;
  }

  else
  {
    v17 = xpc_null_create();
    v42 = v17;
    if (!v17)
    {
      v18 = xpc_null_create();
      v17 = 0;
      goto LABEL_24;
    }
  }

  if (xpc_get_type(v17) != &_xpc_type_dictionary)
  {
    v18 = xpc_null_create();
LABEL_24:
    v42 = v18;
    goto LABEL_25;
  }

  xpc_retain(v17);
LABEL_25:
  xpc_release(v17);
  sub_10095B708(v6);
  buf = 0uLL;
  v46[0] = 0;
  ctu::cf::assign();
  *v38 = buf;
  v39 = v46[0];
  if (v46[0] >= 0)
  {
    v19 = v38;
  }

  else
  {
    v19 = v38[0];
  }

  v40 = xpc_string_create(v19);
  if (!v40)
  {
    v40 = xpc_null_create();
  }

  buf = 0uLL;
  v46[0] = 0;
  ctu::cf::assign();
  *__p = buf;
  v36 = v46[0];
  v20 = buf;
  if (v46[0] >= 0)
  {
    v20 = __p;
  }

  v37[0] = &v42;
  v37[1] = v20;
  sub_10000F688(v37, &v40, &object);
  xpc_release(object);
  object = 0;
  if (SHIBYTE(v36) < 0)
  {
    operator delete(__p[0]);
  }

  xpc_release(v40);
  v40 = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  v37[0] = 0;
  sub_10095B874(v5, v37);
  LODWORD(buf) = 0;
  ctu::cf::assign(&buf, v37[0], v21);
  v33 = xpc_int64_create(buf);
  if (!v33)
  {
    v33 = xpc_null_create();
  }

  buf = 0uLL;
  v46[0] = 0;
  ctu::cf::assign();
  *v38 = buf;
  v39 = v46[0];
  v22 = buf;
  if (v46[0] >= 0)
  {
    v22 = v38;
  }

  __p[0] = &v42;
  __p[1] = v22;
  sub_10000F688(__p, &v33, &v34);
  xpc_release(v34);
  v34 = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  xpc_release(v33);
  v32 = 0;
  v33 = 0;
  sub_10095B874(v7, &v32);
  LODWORD(buf) = 0;
  ctu::cf::assign(&buf, v32, v23);
  v30 = xpc_int64_create(buf);
  if (!v30)
  {
    v30 = xpc_null_create();
  }

  buf = 0uLL;
  v46[0] = 0;
  ctu::cf::assign();
  *v38 = buf;
  v39 = v46[0];
  v24 = buf;
  if (v46[0] >= 0)
  {
    v24 = v38;
  }

  __p[0] = &v42;
  __p[1] = v24;
  sub_10000F688(__p, &v30, &v31);
  xpc_release(v31);
  v31 = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  xpc_release(v30);
  v30 = 0;
  v25 = *(a1 + 188);
  if (v25 > 2)
  {
    v26 = "AudioStackType Undefined";
  }

  else
  {
    v26 = off_101F38AB0[v25];
  }

  v28 = xpc_string_create(v26);
  if (!v28)
  {
    v28 = xpc_null_create();
  }

  buf = 0uLL;
  v46[0] = 0;
  ctu::cf::assign();
  *v38 = buf;
  v39 = v46[0];
  v27 = buf;
  if (v46[0] >= 0)
  {
    v27 = v38;
  }

  __p[0] = &v42;
  __p[1] = v27;
  sub_10000F688(__p, &v28, &v29);
  xpc_release(v29);
  v29 = 0;
  if (SHIBYTE(v39) < 0)
  {
    operator delete(v38[0]);
  }

  xpc_release(v28);
  v28 = 0;
  *&buf = v42;
  if (v42)
  {
    xpc_retain(v42);
  }

  else
  {
    *&buf = xpc_null_create();
  }

  v38[0] = xpc_null_create();
  sub_10002A37C(111, &buf, v38);
  xpc_release(v38[0]);
  xpc_release(buf);
  sub_100029A48(&v32);
  sub_100029A48(v37);
  xpc_release(v42);
}

void sub_10140A6D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t a10, uint64_t a11, xpc_object_t a12, uint64_t a13, char a14, xpc_object_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, xpc_object_t object, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, xpc_object_t a30)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_10140A874(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 40);
  v4 = *(a1 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Submitting Audio metrics", buf, 2u);
  }

  sub_100E80804(a2, v5);
  ServiceMap = Registry::getServiceMap(*(a1 + 88));
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
        goto LABEL_9;
      }

LABEL_14:
      v17 = *a2;
      v18 = "CALL_TYPE_CS_Voice";
      if (*a2 == 5)
      {
        v18 = "CALL_TYPE_NR_Voice";
      }

      if (v17 == 4)
      {
        v19 = "CALL_TYPE_VoLTE_Voice";
      }

      else
      {
        v19 = v18;
      }

      v20 = sub_100E807BC(v17);
      if (*(a2 + 4))
      {
        v21 = "DL";
      }

      else
      {
        v21 = "UL";
      }

      v137[0] = 0;
      v22 = xpc_dictionary_create(0, 0, 0);
      v23 = v22;
      if (v22)
      {
        v137[0] = v22;
      }

      else
      {
        v23 = xpc_null_create();
        v137[0] = v23;
        if (!v23)
        {
          v24 = xpc_null_create();
          v23 = 0;
          goto LABEL_29;
        }
      }

      if (xpc_get_type(v23) == &_xpc_type_dictionary)
      {
        xpc_retain(v23);
        goto LABEL_30;
      }

      v24 = xpc_null_create();
LABEL_29:
      v137[0] = v24;
LABEL_30:
      xpc_release(v23);
      v135 = xpc_string_create(v19);
      if (!v135)
      {
        v135 = xpc_null_create();
      }

      *buf = v137;
      v134 = "call_type";
      sub_10000F688(buf, &v135, &v136);
      xpc_release(v136);
      v136 = 0;
      xpc_release(v135);
      v135 = 0;
      v131 = xpc_string_create(v20);
      if (!v131)
      {
        v131 = xpc_null_create();
      }

      *buf = v137;
      v134 = "rat_type";
      sub_10000F688(buf, &v131, &v132);
      xpc_release(v132);
      v132 = 0;
      xpc_release(v131);
      v131 = 0;
      v129 = xpc_string_create(v21);
      if (!v129)
      {
        v129 = xpc_null_create();
      }

      *buf = v137;
      v134 = "direction";
      sub_10000F688(buf, &v129, &v130);
      xpc_release(v130);
      v130 = 0;
      xpc_release(v129);
      v129 = 0;
      v25 = (a2 + 8);
      v26 = (a2 + 8);
      if (*(a2 + 31) < 0)
      {
        v26 = *v25;
      }

      v127 = xpc_string_create(v26);
      if (!v127)
      {
        v127 = xpc_null_create();
      }

      *buf = v137;
      v134 = "vocoder_type";
      sub_10000F688(buf, &v127, &v128);
      xpc_release(v128);
      v128 = 0;
      xpc_release(v127);
      v127 = 0;
      v125 = xpc_int64_create(*(a2 + 36));
      if (!v125)
      {
        v125 = xpc_null_create();
      }

      *buf = v137;
      v134 = "vocoder_bit_rate";
      sub_10000F688(buf, &v125, &v126);
      xpc_release(v126);
      v126 = 0;
      xpc_release(v125);
      v125 = 0;
      v123 = xpc_int64_create(*(a2 + 32));
      if (!v123)
      {
        v123 = xpc_null_create();
      }

      v43 = v15;
      *buf = v137;
      v134 = "vocoder_sample_rate";
      sub_10000F688(buf, &v123, &v124);
      xpc_release(v124);
      v124 = 0;
      xpc_release(v123);
      v123 = 0;
      v121 = xpc_int64_create(*(a2 + 44));
      if (!v121)
      {
        v121 = xpc_null_create();
      }

      *buf = v137;
      v134 = "active_num_frames";
      sub_10000F688(buf, &v121, &v122);
      xpc_release(v122);
      v122 = 0;
      xpc_release(v121);
      v121 = 0;
      v119 = xpc_int64_create(*(a2 + 52));
      if (!v119)
      {
        v119 = xpc_null_create();
      }

      *buf = v137;
      v134 = "bad_num_frames";
      sub_10000F688(buf, &v119, &v120);
      xpc_release(v120);
      v120 = 0;
      xpc_release(v119);
      v119 = 0;
      v117 = xpc_int64_create(*(a2 + 56));
      if (!v117)
      {
        v117 = xpc_null_create();
      }

      *buf = v137;
      v134 = "lost_num_frames";
      sub_10000F688(buf, &v117, &v118);
      xpc_release(v118);
      v118 = 0;
      xpc_release(v117);
      v117 = 0;
      v115 = xpc_int64_create(*(a2 + 48));
      if (!v115)
      {
        v115 = xpc_null_create();
      }

      *buf = v137;
      v134 = "silence_num_frames";
      sub_10000F688(buf, &v115, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v115);
      v115 = 0;
      v113 = xpc_int64_create(*(a2 + 40));
      if (!v113)
      {
        v113 = xpc_null_create();
      }

      *buf = v137;
      v134 = "total_num_frames";
      sub_10000F688(buf, &v113, &v114);
      xpc_release(v114);
      v114 = 0;
      xpc_release(v113);
      v113 = 0;
      v112 = v137[0];
      if (v137[0])
      {
        xpc_retain(v137[0]);
      }

      else
      {
        v112 = xpc_null_create();
      }

      (*(*v14 + 16))(v14, "commCenterAudioStatsInd", &v112);
      xpc_release(v112);
      v112 = 0;
      v111 = 0;
      v27 = xpc_dictionary_create(0, 0, 0);
      v28 = v27;
      if (v27)
      {
        v111 = v27;
      }

      else
      {
        v28 = xpc_null_create();
        v111 = v28;
        if (!v28)
        {
          v29 = xpc_null_create();
          v28 = 0;
          goto LABEL_64;
        }
      }

      if (xpc_get_type(v28) == &_xpc_type_dictionary)
      {
        xpc_retain(v28);
        goto LABEL_65;
      }

      v29 = xpc_null_create();
LABEL_64:
      v111 = v29;
LABEL_65:
      xpc_release(v28);
      v109 = xpc_string_create(v19);
      if (!v109)
      {
        v109 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "call_type";
      sub_10000F688(buf, &v109, &v110);
      xpc_release(v110);
      v110 = 0;
      xpc_release(v109);
      v109 = 0;
      v107 = xpc_string_create(v20);
      if (!v107)
      {
        v107 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "rat_type";
      sub_10000F688(buf, &v107, &v108);
      xpc_release(v108);
      v108 = 0;
      xpc_release(v107);
      v107 = 0;
      v105 = xpc_string_create(v21);
      if (!v105)
      {
        v105 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "direction";
      sub_10000F688(buf, &v105, &v106);
      xpc_release(v106);
      v106 = 0;
      xpc_release(v105);
      v105 = 0;
      v30 = (a2 + 8);
      if (*(a2 + 31) < 0)
      {
        v30 = *v25;
      }

      v103 = xpc_string_create(v30);
      if (!v103)
      {
        v103 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "vocoder_type";
      sub_10000F688(buf, &v103, &v104);
      xpc_release(v104);
      v104 = 0;
      xpc_release(v103);
      v103 = 0;
      v101 = xpc_int64_create(*(a2 + 36));
      if (!v101)
      {
        v101 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "vocoder_bit_rate";
      sub_10000F688(buf, &v101, &v102);
      xpc_release(v102);
      v102 = 0;
      xpc_release(v101);
      v101 = 0;
      v99 = xpc_int64_create(*(a2 + 32));
      if (!v99)
      {
        v99 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "vocoder_sample_rate";
      sub_10000F688(buf, &v99, &v100);
      xpc_release(v100);
      v100 = 0;
      xpc_release(v99);
      v99 = 0;
      v31 = (a2 + 64);
      if (*(a2 + 87) < 0)
      {
        if (!*(a2 + 72))
        {
          goto LABEL_87;
        }

        v31 = *v31;
      }

      else if (!*(a2 + 87))
      {
        goto LABEL_87;
      }

      v97 = xpc_string_create(v31);
      if (!v97)
      {
        v97 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "top1UsedBitRate";
      sub_10000F688(buf, &v97, &v98);
      xpc_release(v98);
      v98 = 0;
      xpc_release(v97);
      v97 = 0;
LABEL_87:
      v32 = (a2 + 88);
      if (*(a2 + 111) < 0)
      {
        if (!*(a2 + 96))
        {
          goto LABEL_95;
        }

        v32 = *v32;
      }

      else if (!*(a2 + 111))
      {
        goto LABEL_95;
      }

      v95 = xpc_string_create(v32);
      if (!v95)
      {
        v95 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "top2UsedBitRate";
      sub_10000F688(buf, &v95, &v96);
      xpc_release(v96);
      v96 = 0;
      xpc_release(v95);
      v95 = 0;
LABEL_95:
      v33 = (a2 + 112);
      if (*(a2 + 135) < 0)
      {
        if (!*(a2 + 120))
        {
          goto LABEL_103;
        }

        v33 = *v33;
      }

      else if (!*(a2 + 135))
      {
        goto LABEL_103;
      }

      v93 = xpc_string_create(v33);
      if (!v93)
      {
        v93 = xpc_null_create();
      }

      *buf = &v111;
      v134 = "top3UsedBitRate";
      sub_10000F688(buf, &v93, &v94);
      xpc_release(v94);
      v94 = 0;
      xpc_release(v93);
      v93 = 0;
LABEL_103:
      v92 = v111;
      if (v111)
      {
        xpc_retain(v111);
      }

      else
      {
        v92 = xpc_null_create();
      }

      (*(*v14 + 16))(v14, "commCenterVocoderBitRateDistribution", &v92);
      xpc_release(v92);
      v92 = 0;
      if ((*(a2 + 136) & 1) == 0 && *(a2 + 156) != 1)
      {
        goto LABEL_171;
      }

      v91 = 0;
      v34 = xpc_dictionary_create(0, 0, 0);
      v35 = v34;
      if (v34)
      {
        v91 = v34;
      }

      else
      {
        v35 = xpc_null_create();
        v91 = v35;
        if (!v35)
        {
          v36 = xpc_null_create();
          v35 = 0;
          goto LABEL_115;
        }
      }

      if (xpc_get_type(v35) == &_xpc_type_dictionary)
      {
        xpc_retain(v35);
LABEL_116:
        xpc_release(v35);
        v89 = xpc_string_create(v19);
        if (!v89)
        {
          v89 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "call_type";
        sub_10000F688(buf, &v89, &v90);
        xpc_release(v90);
        v90 = 0;
        xpc_release(v89);
        v89 = 0;
        v87 = xpc_string_create(v21);
        if (!v87)
        {
          v87 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "direction";
        sub_10000F688(buf, &v87, &v88);
        xpc_release(v88);
        v88 = 0;
        xpc_release(v87);
        v87 = 0;
        if (*(a2 + 31) < 0)
        {
          v25 = *v25;
        }

        v85 = xpc_string_create(v25);
        if (!v85)
        {
          v85 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "vocoder_type";
        sub_10000F688(buf, &v85, &v86);
        xpc_release(v86);
        v86 = 0;
        xpc_release(v85);
        v85 = 0;
        v83 = xpc_int64_create(*(a2 + 36));
        if (!v83)
        {
          v83 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "vocoder_bit_rate";
        sub_10000F688(buf, &v83, &v84);
        xpc_release(v84);
        v84 = 0;
        xpc_release(v83);
        v83 = 0;
        v81 = xpc_int64_create(*(a2 + 32));
        if (!v81)
        {
          v81 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "vocoder_sample_rate";
        sub_10000F688(buf, &v81, &v82);
        xpc_release(v82);
        v82 = 0;
        xpc_release(v81);
        v81 = 0;
        v79 = xpc_int64_create(*(a2 + 200));
        if (!v79)
        {
          v79 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "totalCallDuration";
        sub_10000F688(buf, &v79, &v80);
        xpc_release(v80);
        v80 = 0;
        xpc_release(v79);
        v79 = 0;
        v77 = xpc_int64_create(*(a2 + 204));
        if (!v77)
        {
          v77 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "distortion_types_count";
        sub_10000F688(buf, &v77, &v78);
        xpc_release(v78);
        v78 = 0;
        xpc_release(v77);
        v77 = 0;
        v75 = xpc_string_create(*(a2 + 208));
        if (!v75)
        {
          v75 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "largest_distortion_type";
        sub_10000F688(buf, &v75, &v76);
        xpc_release(v76);
        v76 = 0;
        xpc_release(v75);
        v75 = 0;
        v73 = xpc_int64_create(*(a2 + 216));
        if (!v73)
        {
          v73 = xpc_null_create();
        }

        *buf = &v91;
        v134 = "largest_distortion_duration";
        sub_10000F688(buf, &v73, &v74);
        xpc_release(v74);
        v74 = 0;
        xpc_release(v73);
        v73 = 0;
        if (*(a2 + 136) == 1)
        {
          v71 = xpc_int64_create(*(a2 + 140));
          if (!v71)
          {
            v71 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "highNoiseTxCount";
          sub_10000F688(buf, &v71, &v72);
          xpc_release(v72);
          v72 = 0;
          xpc_release(v71);
          v71 = 0;
          v69 = xpc_int64_create(*(a2 + 144));
          if (!v69)
          {
            v69 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "lowEnergyTxCount";
          sub_10000F688(buf, &v69, &v70);
          xpc_release(v70);
          v70 = 0;
          xpc_release(v69);
          v69 = 0;
          v67 = xpc_int64_create(*(a2 + 148));
          if (!v67)
          {
            v67 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "txSilenceCount";
          sub_10000F688(buf, &v67, &v68);
          xpc_release(v68);
          v68 = 0;
          xpc_release(v67);
          v67 = 0;
          v65 = xpc_int64_create(*(a2 + 152));
          if (!v65)
          {
            v65 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "zerosTxCount";
          sub_10000F688(buf, &v65, &v66);
          xpc_release(v66);
          v66 = 0;
          xpc_release(v65);
          v65 = 0;
        }

        else
        {
          v63 = xpc_int64_create(*(a2 + 160));
          if (!v63)
          {
            v63 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "highNoiseRxCount";
          sub_10000F688(buf, &v63, &v64);
          xpc_release(v64);
          v64 = 0;
          xpc_release(v63);
          v63 = 0;
          v61 = xpc_int64_create(*(a2 + 164));
          if (!v61)
          {
            v61 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "lowEnergyRxCount";
          sub_10000F688(buf, &v61, &v62);
          xpc_release(v62);
          v62 = 0;
          xpc_release(v61);
          v61 = 0;
          v59 = xpc_int64_create(*(a2 + 168));
          if (!v59)
          {
            v59 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "rxSilenceCount";
          sub_10000F688(buf, &v59, &v60);
          xpc_release(v60);
          v60 = 0;
          xpc_release(v59);
          v59 = 0;
          v57 = xpc_int64_create(*(a2 + 172));
          if (!v57)
          {
            v57 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "zerosRxCount";
          sub_10000F688(buf, &v57, &v58);
          xpc_release(v58);
          v58 = 0;
          xpc_release(v57);
          v57 = 0;
          v55 = xpc_int64_create(*(a2 + 192));
          if (!v55)
          {
            v55 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "audioDistortionRxLinkBrokenCount";
          sub_10000F688(buf, &v55, &v56);
          xpc_release(v56);
          v56 = 0;
          xpc_release(v55);
          v55 = 0;
          LODWORD(v37) = *(a2 + 196);
          LODWORD(v38) = *(a2 + 200);
          v53 = xpc_double_create(v37 / v38 * 100.0);
          if (!v53)
          {
            v53 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "rxLinkBrokenDurationPercentage";
          sub_10000F688(buf, &v53, &v54);
          xpc_release(v54);
          v54 = 0;
          xpc_release(v53);
          v53 = 0;
          v51 = xpc_int64_create(*(a2 + 176));
          if (!v51)
          {
            v51 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "averageSpeechLossCount";
          sub_10000F688(buf, &v51, &v52);
          xpc_release(v52);
          v52 = 0;
          xpc_release(v51);
          v51 = 0;
          LODWORD(v39) = *(a2 + 180);
          LODWORD(v40) = *(a2 + 200);
          v49 = xpc_double_create(v39 / v40 * 100.0);
          if (!v49)
          {
            v49 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "averageSpeechLossDurationPercentage";
          sub_10000F688(buf, &v49, &v50);
          xpc_release(v50);
          v50 = 0;
          xpc_release(v49);
          v49 = 0;
          v47 = xpc_int64_create(*(a2 + 184));
          if (!v47)
          {
            v47 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "continuousSpeechLossCount";
          sub_10000F688(buf, &v47, &v48);
          xpc_release(v48);
          v48 = 0;
          xpc_release(v47);
          v47 = 0;
          LODWORD(v41) = *(a2 + 188);
          LODWORD(v42) = *(a2 + 200);
          v45 = xpc_double_create(v41 / v42 * 100.0);
          if (!v45)
          {
            v45 = xpc_null_create();
          }

          *buf = &v91;
          v134 = "continuousSpeechLossDurationPercentage";
          sub_10000F688(buf, &v45, &v46);
          xpc_release(v46);
          v46 = 0;
          xpc_release(v45);
          v45 = 0;
        }

        v44 = v91;
        if (v91)
        {
          xpc_retain(v91);
        }

        else
        {
          v44 = xpc_null_create();
        }

        (*(*v14 + 16))(v14, "commCenterAudioDistortionSummary", &v44);
        xpc_release(v44);
        v44 = 0;
        xpc_release(v91);
LABEL_171:
        xpc_release(v111);
        xpc_release(v137[0]);
        if (v43)
        {
          return;
        }

        goto LABEL_172;
      }

      v36 = xpc_null_create();
LABEL_115:
      v91 = v36;
      goto LABEL_116;
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
    goto LABEL_14;
  }

LABEL_9:
  v16 = *v5;
  if (os_log_type_enabled(*v5, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "Could not find TelephonyAnalytics service", buf, 2u);
    if (v15)
    {
      return;
    }
  }

  else if (v15)
  {
    return;
  }

LABEL_172:
  sub_100004A34(v13);
}

void sub_10140BCB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, char a10, xpc_object_t object, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, xpc_object_t a58)
{
  xpc_release(object);
  xpc_release(a58);
  xpc_release(STACK[0x220]);
  xpc_release(*(v59 - 96));
  if ((a10 & 1) == 0)
  {
    sub_100004A34(v58);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10140BEB4(uint64_t a1)
{
  cf = 0;
  (*(**(a1 + 120) + 40))(&cf);
  v2 = cf;
  buf[0] = 0;
  if (cf)
  {
    v3 = CFGetTypeID(cf);
    if (v3 == CFBooleanGetTypeID())
    {
      ctu::cf::assign(buf, v2, v4);
      LOBYTE(v2) = buf[0];
    }

    else
    {
      LOBYTE(v2) = 0;
    }
  }

  v5 = *(a1 + 40);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CSIBOOLAsString(v2 & 1);
    *buf = 136315138;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I AudioLoggingEnabled is set to: %s", buf, 0xCu);
  }

  sub_10000A1EC(&cf);
  return v2 & 1;
}

void sub_10140C000(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000A1EC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10140C020(uint64_t a1, uint64_t a2)
{
  v4 = (*(**(a1 + 152) + 24))(*(a1 + 152));
  result = (*(**(a1 + 152) + 16))(*(a1 + 152));
  if ((v4 & 1) != 0 || result)
  {
    result = capabilities::ct::supportsAudioLoggingUserConsent(result);
    if (result)
    {
      if (*(a1 + 280) == 1)
      {
        (*(**(a1 + 136) + 64))(*(a1 + 136), a2);
      }

      return 1;
    }
  }

  return result;
}

BOOL sub_10140C0EC(void *a1, _BYTE *a2, _DWORD *a3)
{
  *a2 = 0;
  v3 = a1[42];
  v4 = a1[43];
  if (v3 != v4)
  {
    for (i = a1[42]; i != v4; i += 12)
    {
      v9 = *i;
      if (v9 != 1)
      {
        v10 = *(i + 1);
        if (v9 == 2)
        {
          goto LABEL_13;
        }

        v11 = a1[12];
        v15[0] = a1[11];
        v15[1] = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v12 = sub_10140C530(v15, v10);
        v13 = v12;
        if (v11)
        {
          sub_100004A34(v11);
          if (v13)
          {
            goto LABEL_13;
          }
        }

        else if (v12)
        {
LABEL_13:
          *a2 = 1;
          *a3 = v10;
          return v3 != v4;
        }
      }
    }
  }

  return v3 != v4;
}

void sub_10140C1CC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_10140C1E4(uint64_t a1)
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

void sub_10140C2DC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_10140C3E4(uint64_t a1, int a2, __int128 *a3)
{
  v6 = a1;
  v7 = a2;
  v8 = *a3;
  v9 = *(a3 + 2);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 0x40000000;
  v10[2] = sub_1014123A4;
  v10[3] = &unk_101F38A50;
  v10[4] = a1 + 8;
  v10[5] = &v6;
  v11 = v10;
  v4 = a1 + 24;
  v3 = *(a1 + 24);
  if (*(v4 + 8))
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10006A4B8;
    v15 = &unk_101F38A90;
    v16 = &v18;
    v17 = &v11;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    v18 = 0;
    block = _NSConcreteStackBlock;
    v13 = 0x40000000;
    v14 = sub_10005955C;
    v15 = &unk_101F38A70;
    v16 = &v18;
    v17 = &v11;
    dispatch_sync(v3, &block);
  }

  return v18 & 1;
}

uint64_t sub_10140C530(sd::IMSSubscriberConfigInterface *a1, uint64_t a2)
{
  v4 = sd::IMSSubscriberConfigInterface::APOnlyModeDefaultVal(a1);
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
    v4 = (*(*v13 + 288))(v13, a2);
  }

LABEL_11:
  if ((v14 & 1) == 0)
  {
    sub_100004A34(v12);
  }

  return v4;
}

void sub_10140C664(_Unwind_Exception *exception_object)
{
  if ((v1 & 1) == 0)
  {
    sub_100004A34(v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10140C6E8(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_10140C73C(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10140C77C(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_10140C7A8(ServiceManager::Service *this)
{
  *this = off_101F38308;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_10140C804(ServiceManager::Service *this)
{
  *this = off_101F38308;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_10140C884@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_10140C8C8(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_10140922C(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_10140922C(v4, 0);
}

void sub_10140C968(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10140CA48(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 16);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_10140CB80(void **a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v3 = *v1;
  v2 = v1[1];
  v4 = *(*v1 + 136);
  group = v2;
  if (v2)
  {
    dispatch_retain(v2);
    dispatch_group_enter(v2);
  }

  (*(*v4 + 32))(v4, &group);
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  ctu::RestModule::disconnect((v3 + 232));
  for (i = *(v3 + 72); i != v3 + 64; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v3 + 64));
  sub_1000FF844(&v8);
  return sub_1000049E0(&v7);
}

void sub_10140CC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, dispatch_group_t group)
{
  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10140CC98(uint64_t a1)
{
  v1 = *(**a1 + 16);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_10140D8D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_1001018AC(&a26);
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_10140D8F0(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  if (a2)
  {
    sub_100101814(&a35);
    if (a26)
    {
      (*(*a26 + 8))(a26);
    }

    std::__shared_weak_count::__release_weak(v35);
    JUMPOUT(0x10140DBF8);
  }

  _Unwind_Resume(a1);
}

void sub_10140D914(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10140DA40);
}

void sub_10140D950(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_10140D990(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, atomic_uint *a33)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724(&a33);
    JUMPOUT(0x10140DBF0);
  }

  _Unwind_Resume(a1);
}

void sub_10140D9A4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_10141190C(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_10140D9C4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724(v3);
    *v2 = off_101E263F8;
    sub_100083940((v2 + 16));
    operator delete();
  }

  _Unwind_Resume(a1);
}

void sub_10140D9E0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x10140D9E8);
  }

  _Unwind_Resume(a1);
}

void sub_10140DA04(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x10140DA0CLL);
  }

  _Unwind_Resume(a1);
}

void sub_10140DA4C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x10140DBF8);
}

void sub_10140DA58(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x10140DA60);
  }

  _Unwind_Resume(a1);
}

void sub_10140DA90(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x10140DA98);
  }

  _Unwind_Resume(a1);
}

void sub_10140DAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, std::__shared_weak_count *a36)
{
  if (a36)
  {
    sub_100004A34(a36);
  }

  JUMPOUT(0x10140DBB8);
}

void sub_10140DAC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, dispatch_group_t group, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40)
{
  sub_1000062D4(&a40);
  if (a26 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(v40);
  sub_1000FF844(&a11);
  sub_1000049E0(&a10);
  _Unwind_Resume(a1);
}

void sub_10140DC30(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F383C8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10140DCAC(AudioCommandDriverDelegateInterface *this)
{
  *this = off_101F384A0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioCommandDriverDelegateInterface::~AudioCommandDriverDelegateInterface(this);
}

void sub_10140DD08(AudioCommandDriverDelegateInterface *this)
{
  *this = off_101F384A0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioCommandDriverDelegateInterface::~AudioCommandDriverDelegateInterface(this);

  operator delete();
}

void sub_10140DD78(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *(v7 + 280);
        if (v8 != a2)
        {
          v9 = *(v7 + 40);
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            v13 = 136315394;
            v14 = CSIBOOLAsString(v8);
            v15 = 2080;
            v16 = CSIBOOLAsString(a2);
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Driver ready state is changing from %s to %s", &v13, 0x16u);
          }

          *(v7 + 280) = a2;
        }

        if (a2)
        {
          v10 = *(v7 + 40);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Re-sending audio logging setting to baseband", &v13, 2u);
          }

          v11 = sub_10140BEB4(v7);
          sub_10140C020(v7, v11);
          v12 = *(v7 + 40);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v13) = 0;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Driver is ready, querying vocoder info", &v13, 2u);
          }

          (*(**(v7 + 136) + 40))(*(v7 + 136));
        }

        else
        {
          *(v7 + 168) = xmmword_101966650;
          *(v7 + 184) = 8000;
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10140DF9C(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v5 = std::__shared_weak_count::lock(v3);
  if (!v5)
  {
    return;
  }

  v6 = v5;
  v7 = *(a1 + 8);
  if (v7)
  {
    if (a2 == 1)
    {
      v8 = *(v7 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 0;
        v9 = "#I Failed to ack vocoder switch complete";
        v10 = &v11;
        goto LABEL_11;
      }
    }

    else if (!a2)
    {
      v8 = *(v7 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 0;
        v9 = "#I Failed to query vocoder info";
        v10 = &v12;
LABEL_11:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
      }
    }
  }

  sub_100004A34(v6);
}

void sub_10140E08C(uint64_t a1, __int128 *a2, int a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v7 = std::__shared_weak_count::lock(v4);
    if (v7)
    {
      v8 = v7;
      v9 = *(a1 + 8);
      if (v9)
      {
        v10 = *a2;
        v11 = *(a2 + 4);
        sub_10140A16C(v9, &v10, a3);
      }

      sub_100004A34(v8);
    }
  }
}

void sub_10140E138(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (!v7)
      {
LABEL_77:
        sub_100004A34(v6);
        return;
      }

      value = *a2;
      v31 = *(a2 + 8);
      if (*(a2 + 39) < 0)
      {
        sub_100005F2C(&__p, *(a2 + 16), *(a2 + 24));
      }

      else
      {
        __p = *(a2 + 16);
        v33 = *(a2 + 32);
      }

      v8 = *(a2 + 56);
      *v34 = *(a2 + 40);
      *v35 = v8;
      *&v35[13] = *(a2 + 69);
      v10 = (v7 + 40);
      v9 = *(v7 + 40);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Submitting Audio distortion metrics.", buf, 2u);
      }

      sub_100E816D0(&value, (v7 + 40));
      ServiceMap = Registry::getServiceMap(*(v7 + 88));
      v12 = ServiceMap;
      if (v13 < 0)
      {
        v14 = (v13 & 0x7FFFFFFFFFFFFFFFLL);
        v15 = 5381;
        do
        {
          v13 = v15;
          v16 = *v14++;
          v15 = (33 * v15) ^ v16;
        }

        while (v16);
      }

      std::mutex::lock(ServiceMap);
      *buf = v13;
      v17 = sub_100009510(&v12[1].__m_.__sig, buf);
      if (v17)
      {
        v19 = v17[3];
        v18 = v17[4];
        if (v18)
        {
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          std::mutex::unlock(v12);
          atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v18);
          v20 = 0;
          if (!v19)
          {
            goto LABEL_15;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v19 = 0;
      }

      std::mutex::unlock(v12);
      v18 = 0;
      v20 = 1;
      if (!v19)
      {
LABEL_15:
        v21 = *v10;
        if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Could not find TelephonyAnalytics service", buf, 2u);
        }

LABEL_73:
        if ((v20 & 1) == 0)
        {
          sub_100004A34(v18);
        }

        if (SHIBYTE(v33) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_77;
      }

LABEL_19:
      v70 = 0;
      v22 = xpc_dictionary_create(0, 0, 0);
      v23 = v22;
      if (v22)
      {
        v70 = v22;
      }

      else
      {
        v23 = xpc_null_create();
        v70 = v23;
        if (!v23)
        {
          v24 = xpc_null_create();
          v23 = 0;
          goto LABEL_26;
        }
      }

      if (xpc_get_type(v23) == &_xpc_type_dictionary)
      {
        xpc_retain(v23);
LABEL_27:
        xpc_release(v23);
        v25 = sub_100E807BC(v31);
        v68 = xpc_string_create(v25);
        if (!v68)
        {
          v68 = xpc_null_create();
        }

        *buf = &v70;
        v67 = "rat_type";
        sub_10000F688(buf, &v68, &v69);
        xpc_release(v69);
        v69 = 0;
        xpc_release(v68);
        v68 = 0;
        v64 = xpc_int64_create(HIDWORD(value));
        if (!v64)
        {
          v64 = xpc_null_create();
        }

        *buf = &v70;
        v67 = "distortion_duration";
        sub_10000F688(buf, &v64, &v65);
        xpc_release(v65);
        v65 = 0;
        xpc_release(v64);
        v64 = 0;
        v26 = sub_100E807E0(value);
        v62 = xpc_string_create(v26);
        if (!v62)
        {
          v62 = xpc_null_create();
        }

        *buf = &v70;
        v67 = "DistortionType";
        sub_10000F688(buf, &v62, &v63);
        xpc_release(v63);
        v63 = 0;
        xpc_release(v62);
        v62 = 0;
        if (v33 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v60 = xpc_string_create(p_p);
        if (!v60)
        {
          v60 = xpc_null_create();
        }

        *buf = &v70;
        v67 = "vocoder_type";
        sub_10000F688(buf, &v60, &v61);
        xpc_release(v61);
        v61 = 0;
        xpc_release(v60);
        v60 = 0;
        v58 = xpc_int64_create(LODWORD(v34[0]));
        if (!v58)
        {
          v58 = xpc_null_create();
        }

        *buf = &v70;
        v67 = "vocoder_bit_rate";
        sub_10000F688(buf, &v58, &v59);
        xpc_release(v59);
        v59 = 0;
        xpc_release(v58);
        v58 = 0;
        v56 = xpc_int64_create(HIDWORD(v34[0]));
        if (!v56)
        {
          v56 = xpc_null_create();
        }

        *buf = &v70;
        v67 = "vocoder_bandwidth";
        sub_10000F688(buf, &v56, &v57);
        xpc_release(v57);
        v57 = 0;
        xpc_release(v56);
        v56 = 0;
        v28 = "CALL_TYPE_CS_Voice";
        if (v31 == 5)
        {
          v28 = "CALL_TYPE_NR_Voice";
        }

        if (v31 == 4)
        {
          v29 = "CALL_TYPE_VoLTE_Voice";
        }

        else
        {
          v29 = v28;
        }

        v54 = xpc_string_create(v29);
        if (!v54)
        {
          v54 = xpc_null_create();
        }

        *buf = &v70;
        v67 = "call_type";
        sub_10000F688(buf, &v54, &v55);
        xpc_release(v55);
        v55 = 0;
        xpc_release(v54);
        v54 = 0;
        if (v35[28] == 1)
        {
          v52 = xpc_int64_create(SLODWORD(v34[1]));
          if (!v52)
          {
            v52 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "rsrp_dl";
          sub_10000F688(buf, &v52, &object);
          xpc_release(object);
          object = 0;
          xpc_release(v52);
          v52 = 0;
          v50 = xpc_int64_create(SHIDWORD(v34[1]));
          if (!v50)
          {
            v50 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "rssi_dl";
          sub_10000F688(buf, &v50, &v51);
          xpc_release(v51);
          v51 = 0;
          xpc_release(v50);
          v50 = 0;
          v48 = xpc_int64_create(*v35);
          if (!v48)
          {
            v48 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "snr_dl";
          sub_10000F688(buf, &v48, &v49);
          xpc_release(v49);
          v49 = 0;
          xpc_release(v48);
          v48 = 0;
          v46 = xpc_int64_create(*&v35[4]);
          if (!v46)
          {
            v46 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "bler_ul";
          sub_10000F688(buf, &v46, &v47);
          xpc_release(v47);
          v47 = 0;
          xpc_release(v46);
          v46 = 0;
          v44 = xpc_int64_create(*&v35[8]);
          if (!v44)
          {
            v44 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "bler_dl";
          sub_10000F688(buf, &v44, &v45);
          xpc_release(v45);
          v45 = 0;
          xpc_release(v44);
          v44 = 0;
          v42 = xpc_int64_create(*&v35[12]);
          if (!v42)
          {
            v42 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "tti_bundling_state";
          sub_10000F688(buf, &v42, &v43);
          xpc_release(v43);
          v43 = 0;
          xpc_release(v42);
          v42 = 0;
          v40 = xpc_int64_create(*&v35[16]);
          if (!v40)
          {
            v40 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "cdrx_state";
          sub_10000F688(buf, &v40, &v41);
          xpc_release(v41);
          v41 = 0;
          xpc_release(v40);
          v40 = 0;
          v38 = xpc_int64_create(*&v35[20]);
          if (!v38)
          {
            v38 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "cdrx_cycle_ms";
          sub_10000F688(buf, &v38, &v39);
          xpc_release(v39);
          v39 = 0;
          xpc_release(v38);
          v38 = 0;
          v36 = xpc_int64_create(*&v35[24]);
          if (!v36)
          {
            v36 = xpc_null_create();
          }

          *buf = &v70;
          v67 = "last_ho_end_elapse_time";
          sub_10000F688(buf, &v36, &v37);
          xpc_release(v37);
          v37 = 0;
          xpc_release(v36);
          v36 = 0;
        }

        *buf = v70;
        if (v70)
        {
          xpc_retain(v70);
        }

        else
        {
          *buf = xpc_null_create();
        }

        (*(*v19 + 16))(v19, "commCenterAudioDistortionInfo", buf);
        xpc_release(*buf);
        *buf = 0;
        xpc_release(v70);
        goto LABEL_73;
      }

      v24 = xpc_null_create();
LABEL_26:
      v70 = v24;
      goto LABEL_27;
    }
  }
}

void sub_10140EADC(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (v7)
      {
        v8 = *a2;
        if (*(a2 + 31) < 0)
        {
          sub_100005F2C(v9, a2[1], a2[2]);
        }

        else
        {
          *v9 = *(a2 + 1);
          v10 = a2[3];
        }

        v11[0] = *(a2 + 2);
        *(v11 + 12) = *(a2 + 44);
        if (*(a2 + 87) < 0)
        {
          sub_100005F2C(v12, a2[8], a2[9]);
        }

        else
        {
          *v12 = *(a2 + 4);
          v13 = a2[10];
        }

        if (*(a2 + 111) < 0)
        {
          sub_100005F2C(v14, a2[11], a2[12]);
        }

        else
        {
          *v14 = *(a2 + 11);
          v15 = a2[13];
        }

        if (*(a2 + 135) < 0)
        {
          sub_100005F2C(__p, a2[14], a2[15]);
        }

        else
        {
          *__p = *(a2 + 7);
          v17 = a2[16];
        }

        v20 = *(a2 + 21);
        v21 = *(a2 + 23);
        v22 = *(a2 + 25);
        v23 = *(a2 + 54);
        v18 = *(a2 + 17);
        v19 = *(a2 + 19);
        sub_10140A874(v7, &v8);
        if (SHIBYTE(v17) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v15) < 0)
        {
          operator delete(v14[0]);
        }

        if (SHIBYTE(v13) < 0)
        {
          operator delete(v12[0]);
        }

        if (SHIBYTE(v10) < 0)
        {
          operator delete(v9[0]);
        }
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10140EC7C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  sub_100004A34(v31);
  _Unwind_Resume(a1);
}

void sub_10140ECE8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      v7 = *(a1 + 8);
      if (!v7)
      {
LABEL_54:
        sub_100004A34(v6);
        return;
      }

      v26 = *a2;
      if (*(a2 + 31) < 0)
      {
        sub_100005F2C(&__p, *(a2 + 8), *(a2 + 16));
      }

      else
      {
        __p = *(a2 + 8);
        v28 = *(a2 + 24);
      }

      *v29 = *(a2 + 32);
      value = *(a2 + 48);
      v9 = (v7 + 40);
      v8 = *(v7 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Submitting Ps Audio metrics", buf, 2u);
      }

      sub_100E813FC(&v26, (v7 + 40));
      ServiceMap = Registry::getServiceMap(*(v7 + 88));
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
            goto LABEL_15;
          }

          goto LABEL_19;
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
LABEL_15:
        v20 = *v9;
        if (os_log_type_enabled(*v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "Could not find TelephonyAnalytics service", buf, 2u);
        }

LABEL_50:
        if ((v19 & 1) == 0)
        {
          sub_100004A34(v17);
        }

        if (SHIBYTE(v28) < 0)
        {
          operator delete(__p);
        }

        goto LABEL_54;
      }

LABEL_19:
      v21 = sub_100E807BC(v26);
      v49 = 0;
      v22 = xpc_dictionary_create(0, 0, 0);
      v23 = v22;
      if (v22)
      {
        v49 = v22;
      }

      else
      {
        v23 = xpc_null_create();
        v49 = v23;
        if (!v23)
        {
          v24 = xpc_null_create();
          v23 = 0;
          goto LABEL_26;
        }
      }

      if (xpc_get_type(v23) == &_xpc_type_dictionary)
      {
        xpc_retain(v23);
LABEL_27:
        xpc_release(v23);
        v47 = xpc_string_create(v21);
        if (!v47)
        {
          v47 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "rat_type";
        sub_10000F688(buf, &v47, &v48);
        xpc_release(v48);
        v48 = 0;
        xpc_release(v47);
        v47 = 0;
        if (v28 >= 0)
        {
          p_p = &__p;
        }

        else
        {
          p_p = __p;
        }

        v43 = xpc_string_create(p_p);
        if (!v43)
        {
          v43 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "vocoder_type";
        sub_10000F688(buf, &v43, &v44);
        xpc_release(v44);
        v44 = 0;
        xpc_release(v43);
        v43 = 0;
        v41 = xpc_int64_create(value);
        if (!v41)
        {
          v41 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "frame_delay_avg";
        sub_10000F688(buf, &v41, &object);
        xpc_release(object);
        object = 0;
        xpc_release(v41);
        v41 = 0;
        v39 = xpc_int64_create(HIDWORD(value));
        if (!v39)
        {
          v39 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "frame_delay_max";
        sub_10000F688(buf, &v39, &v40);
        xpc_release(v40);
        v40 = 0;
        xpc_release(v39);
        v39 = 0;
        v37 = xpc_int64_create(LODWORD(v29[1]));
        if (!v37)
        {
          v37 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "inter_arrival_jitter_avg";
        sub_10000F688(buf, &v37, &v38);
        xpc_release(v38);
        v38 = 0;
        xpc_release(v37);
        v37 = 0;
        v35 = xpc_int64_create(HIDWORD(v29[1]));
        if (!v35)
        {
          v35 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "inter_arrival_jitter_max";
        sub_10000F688(buf, &v35, &v36);
        xpc_release(v36);
        v36 = 0;
        xpc_release(v35);
        v35 = 0;
        v33 = xpc_int64_create(LODWORD(v29[0]));
        if (!v33)
        {
          v33 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "rtp_pkt_loss_rate_jb";
        sub_10000F688(buf, &v33, &v34);
        xpc_release(v34);
        v34 = 0;
        xpc_release(v33);
        v33 = 0;
        v31 = xpc_int64_create(HIDWORD(v29[0]));
        if (!v31)
        {
          v31 = xpc_null_create();
        }

        *buf = &v49;
        v46 = "rtp_pkt_loss_rate_nw";
        sub_10000F688(buf, &v31, &v32);
        xpc_release(v32);
        v32 = 0;
        xpc_release(v31);
        v31 = 0;
        *buf = v49;
        if (v49)
        {
          xpc_retain(v49);
        }

        else
        {
          *buf = xpc_null_create();
        }

        (*(*v18 + 16))(v18, "commCenterPSAudioJBStatistics", buf);
        xpc_release(*buf);
        *buf = 0;
        xpc_release(v49);
        goto LABEL_50;
      }

      v24 = xpc_null_create();
LABEL_26:
      v49 = v24;
      goto LABEL_27;
    }
  }
}

void sub_10140F350(uint64_t a1, BOOL a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = std::__shared_weak_count::lock(v3);
    if (v5)
    {
      v6 = v5;
      if (*(a1 + 8))
      {
        sub_10095B580(a2);
      }

      sub_100004A34(v6);
    }
  }
}

void sub_10140F3D8(AudioCommandDriverDelegateInterface *this)
{
  *this = off_101F384A0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioCommandDriverDelegateInterface::~AudioCommandDriverDelegateInterface(this);
}

void sub_10140F434(AudioCommandDriverDelegateInterface *this)
{
  *this = off_101F384A0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  AudioCommandDriverDelegateInterface::~AudioCommandDriverDelegateInterface(this);

  operator delete();
}

uint64_t sub_10140F4A4(uint64_t a1)
{
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

  if (*(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

xpc_object_t *sub_10140F508(xpc_object_t *a1)
{
  xpc_release(a1[1]);
  a1[1] = 0;
  xpc_release(*a1);
  *a1 = 0;
  return a1;
}

void sub_10140F54C(uint64_t a1)
{
  v1 = a1;
  (*(**(**a1 + 136) + 24))(*(**a1 + 136));
  operator delete();
}

void sub_10140F5F0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v56 = 1;
  v55 = 0;
  v3 = sub_10140C0EC(v2, &v55, &v56);
  v4 = v56;
  v5 = (*(**(v2 + 48) + 16))(*(v2 + 48), v56);
  v54 = 0;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = v6;
  if (v6)
  {
    v54 = v6;
  }

  else
  {
    v7 = xpc_null_create();
    v54 = v7;
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
  v54 = v8;
LABEL_9:
  xpc_release(v7);
  if (v55 == 1)
  {
    v9 = *v5;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Getting vocoderInfo for an active call on AP media stack", buf, 2u);
    }

    v10 = *(v2 + 368);
    if (v10)
    {
      v11 = v2 + 368;
      do
      {
        if (*(v10 + 28) >= v4)
        {
          v11 = v10;
        }

        v10 = *(v10 + 8 * (*(v10 + 28) < v4));
      }

      while (v10);
      if (v11 != v2 + 368 && v4 >= *(v11 + 28))
      {
        sub_10095B818(*(v11 + 36));
        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *v50 = *buf;
        v51 = v58;
        if (v58 >= 0)
        {
          v12 = v50;
        }

        else
        {
          v12 = v50[0];
        }

        v52 = xpc_string_create(v12);
        if (!v52)
        {
          v52 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *__p = *buf;
        v47 = v58;
        v13 = *buf;
        if (v58 >= 0)
        {
          v13 = __p;
        }

        v48 = &v54;
        v49 = v13;
        sub_10000F688(&v48, &v52, &v53);
        xpc_release(v53);
        v53 = 0;
        if (SHIBYTE(v47) < 0)
        {
          operator delete(__p[0]);
        }

        xpc_release(v52);
        v52 = 0;
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        v44 = xpc_int64_create(*(v11 + 48));
        if (!v44)
        {
          v44 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *v50 = *buf;
        v51 = v58;
        v14 = *buf;
        if (v58 >= 0)
        {
          v14 = v50;
        }

        __p[0] = &v54;
        __p[1] = v14;
        sub_10000F688(__p, &v44, &object);
        xpc_release(object);
        object = 0;
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        xpc_release(v44);
        v44 = 0;
        v42 = xpc_int64_create(*(v2 + 176));
        if (!v42)
        {
          v42 = xpc_null_create();
        }

        memset(buf, 0, sizeof(buf));
        v58 = 0;
        ctu::cf::assign();
        *v50 = *buf;
        v51 = v58;
        v15 = *buf;
        if (v58 >= 0)
        {
          v15 = v50;
        }

        __p[0] = &v54;
        __p[1] = v15;
        sub_10000F688(__p, &v42, &v43);
        xpc_release(v43);
        v43 = 0;
        if (SHIBYTE(v51) < 0)
        {
          operator delete(v50[0]);
        }

        xpc_release(v42);
        v42 = 0;
        if (*(v11 + 36) > 1u)
        {
          AudioCodecInfo::getEvsBitrate(v50, (v11 + 32));
          if (v51 >= 0)
          {
            v22 = v50;
          }

          else
          {
            v22 = v50[0];
          }

          v40 = xpc_string_create(v22);
          if (!v40)
          {
            v40 = xpc_null_create();
          }

          memset(buf, 0, sizeof(buf));
          v58 = 0;
          ctu::cf::assign();
          *__p = *buf;
          v47 = v58;
          v23 = *buf;
          if (v58 >= 0)
          {
            v23 = __p;
          }

          v48 = &v54;
          v49 = v23;
          sub_10000F688(&v48, &v40, &v41);
          xpc_release(v41);
          v41 = 0;
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          xpc_release(v40);
          v40 = 0;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v50[0]);
          }

          AudioCodecInfo::getEvsBandwidth(v50, (v11 + 32));
          if (v51 >= 0)
          {
            v24 = v50;
          }

          else
          {
            v24 = v50[0];
          }

          v38 = xpc_string_create(v24);
          if (!v38)
          {
            v38 = xpc_null_create();
          }

          memset(buf, 0, sizeof(buf));
          v58 = 0;
          ctu::cf::assign();
          *__p = *buf;
          v47 = v58;
          v25 = *buf;
          if (v58 >= 0)
          {
            v25 = __p;
          }

          v48 = &v54;
          v49 = v25;
          sub_10000F688(&v48, &v38, &v39);
          xpc_release(v39);
          v39 = 0;
          if (SHIBYTE(v47) < 0)
          {
            operator delete(__p[0]);
          }

          xpc_release(v38);
          v38 = 0;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v50[0]);
          }
        }

        else
        {
          v41 = xpc_int64_create(*(v11 + 40));
          if (!v41)
          {
            v41 = xpc_null_create();
          }

          memset(buf, 0, sizeof(buf));
          v58 = 0;
          ctu::cf::assign();
          *v50 = *buf;
          v51 = v58;
          v16 = *buf;
          if (v58 >= 0)
          {
            v16 = v50;
          }

          __p[0] = &v54;
          __p[1] = v16;
          sub_10000F688(__p, &v41, &v48);
          xpc_release(v48);
          v48 = 0;
          if (SHIBYTE(v51) < 0)
          {
            operator delete(v50[0]);
          }

          xpc_release(v41);
          v41 = 0;
        }
      }
    }

    v36 = xpc_BOOL_create(1);
    if (!v36)
    {
      v36 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v26 = *buf;
    if (v58 >= 0)
    {
      v26 = v50;
    }

    __p[0] = &v54;
    __p[1] = v26;
    sub_10000F688(__p, &v36, &v37);
    xpc_release(v37);
    v37 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    xpc_release(v36);
    v36 = 0;
  }

  else
  {
    if (sub_10095B708(*(v2 + 168)))
    {
      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *v50 = *buf;
      v51 = v58;
      if (v58 >= 0)
      {
        v17 = v50;
      }

      else
      {
        v17 = v50[0];
      }

      v52 = xpc_string_create(v17);
      if (!v52)
      {
        v52 = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *__p = *buf;
      v47 = v58;
      v18 = *buf;
      if (v58 >= 0)
      {
        v18 = __p;
      }

      v48 = &v54;
      v49 = v18;
      sub_10000F688(&v48, &v52, &v53);
      xpc_release(v53);
      v53 = 0;
      if (SHIBYTE(v47) < 0)
      {
        operator delete(__p[0]);
      }

      xpc_release(v52);
      v52 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      object = xpc_int64_create(*(v2 + 172));
      if (!object)
      {
        object = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *v50 = *buf;
      v51 = v58;
      v19 = *buf;
      if (v58 >= 0)
      {
        v19 = v50;
      }

      __p[0] = &v54;
      __p[1] = v19;
      sub_10000F688(__p, &object, &v48);
      xpc_release(v48);
      v48 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      xpc_release(object);
      object = 0;
      v43 = xpc_int64_create(*(v2 + 176));
      if (!v43)
      {
        v43 = xpc_null_create();
      }

      memset(buf, 0, sizeof(buf));
      v58 = 0;
      ctu::cf::assign();
      *v50 = *buf;
      v51 = v58;
      v20 = *buf;
      if (v58 >= 0)
      {
        v20 = v50;
      }

      __p[0] = &v54;
      __p[1] = v20;
      sub_10000F688(__p, &v43, &v44);
      xpc_release(v44);
      v44 = 0;
      if (SHIBYTE(v51) < 0)
      {
        operator delete(v50[0]);
      }

      xpc_release(v43);
      v43 = 0;
    }

    v41 = xpc_BOOL_create(1);
    if (!v41)
    {
      v41 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v21 = *buf;
    if (v58 >= 0)
    {
      v21 = v50;
    }

    __p[0] = &v54;
    __p[1] = v21;
    sub_10000F688(__p, &v41, &v42);
    xpc_release(v42);
    v42 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }

    xpc_release(v41);
    v41 = 0;
  }

  if (*(v2 + 280) == 1)
  {
    (*(**(v2 + 136) + 40))(*(v2 + 136));
  }

  if (v3)
  {
    v27 = v55 == 0;
    if (v55)
    {
      v28 = 2;
    }

    else
    {
      v28 = 1;
    }

    *(v2 + 188) = v28;
    if (v27)
    {
      v29 = "BB vocoder";
    }

    else
    {
      v29 = "AP vocoder";
    }

    v34 = xpc_string_create(v29);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v30 = v50;
    if (v58 < 0)
    {
      v30 = v50[0];
    }

    __p[0] = &v54;
    __p[1] = v30;
    sub_10000F688(__p, &v34, &v35);
    xpc_release(v35);
    v35 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }
  }

  else
  {
    v31 = *(v2 + 188);
    switch(v31)
    {
      case 0:
        goto LABEL_140;
      case 2:
        v32 = "AP vocoder";
        break;
      case 1:
        v32 = "BB vocoder";
        break;
      default:
        v32 = "AudioStackType Undefined";
        break;
    }

    v34 = xpc_string_create(v32);
    if (!v34)
    {
      v34 = xpc_null_create();
    }

    memset(buf, 0, sizeof(buf));
    v58 = 0;
    ctu::cf::assign();
    *v50 = *buf;
    v51 = v58;
    v33 = v50;
    if (v58 < 0)
    {
      v33 = v50[0];
    }

    __p[0] = &v54;
    __p[1] = v33;
    sub_10000F688(__p, &v34, &v35);
    xpc_release(v35);
    v35 = 0;
    if (SHIBYTE(v51) < 0)
    {
      operator delete(v50[0]);
    }
  }

  xpc_release(v34);
  v34 = 0;
LABEL_140:
  __p[0] = v54;
  if (v54)
  {
    xpc_retain(v54);
  }

  else
  {
    __p[0] = xpc_null_create();
  }

  *buf = v1[1];
  *&buf[8] = "kAudioVocoderInfo";
  sub_100DAE90C(buf, __p, v50);
  xpc_release(v50[0]);
  v50[0] = 0;
  xpc_release(__p[0]);
  __p[0] = 0;
  xpc_release(v54);
}

void sub_10141015C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, xpc_object_t a11, uint64_t a12, xpc_object_t object, uint64_t a14, xpc_object_t a15, xpc_object_t a16, xpc_object_t a17, xpc_object_t a18, xpc_object_t a19, xpc_object_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (*(v32 - 73) < 0)
  {
    operator delete(*(v32 - 96));
  }

  xpc_release(object);
  if (a32 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v32 - 112));
  _Unwind_Resume(a1);
}

void sub_10141049C(uint64_t a1)
{
  v10 = a1;
  v1 = *a1;
  v2 = *(*a1 + 16);
  if (**a1 == 18)
  {
    *v1 = *(v2 + 168);
  }

  if (!v1[1])
  {
    v3 = *(v2 + 172);
    v1[1] = v3;
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I audioRateSwitchComplete: But user did not give SampleRate, using cache value of %d", buf, 8u);
    }
  }

  if (!v1[2])
  {
    v5 = *(v2 + 176);
    v1[2] = v5;
    v6 = *(v2 + 40);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I audioRateSwitchComplete: But user did not give I2SClockRate, using cache value of %d", buf, 8u);
    }
  }

  v7 = *(v2 + 40);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Acking audio rate switch complete", buf, 2u);
  }

  v8 = v1[2];
  v9 = *(v2 + 136);
  *buf = *v1;
  v12 = v8;
  v13 = vdup_n_s32(0x1F40u);
  (*(*v9 + 48))(v9, buf);
  operator delete();
}

__n128 sub_101410708(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F38518;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_101410740(void *a1)
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

uint64_t sub_101410788(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_101410850(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F38598;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101410888(void *a1, xpc_object_t *a2)
{
  v3 = a1[1];
  v4 = v3 + 1;
  v5 = v3[1];
  v11 = *v3;
  v12 = v5;
  v13 = v3[2];
  if (v13)
  {
    *(v5 + 16) = &v12;
    *v3 = v4;
    *v4 = 0;
    v3[2] = 0;
  }

  else
  {
    v11 = &v12;
  }

  sub_100901888(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v9 = v11;
  v10[0] = v12;
  v10[1] = v13;
  if (v13)
  {
    *(v12 + 2) = v10;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
  }

  else
  {
    v9 = v10;
  }

  v6(v8, &v9);
  sub_100009970(&v9, v10[0]);
  sub_100009970(&v11, v12);
}

void sub_101410984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, uint64_t a11, char a12, char *a13)
{
  sub_100009970(&a9, a10);
  sub_100009970(&a12, a13);
  _Unwind_Resume(a1);
}

uint64_t sub_1014109B0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101410A6C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F38618;
  a2[1] = v2;
  return result;
}

uint64_t sub_101410A98(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101410B54(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F38698;
  a2[1] = v2;
  return result;
}

void sub_101410B80(uint64_t a1, xpc_object_t *a2)
{
  v2 = *(a1 + 8);
  v26 = 0;
  v27 = 0;
  v28 = 0;
  sub_1001A9998(&v26, a2);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_1000B2D2C(&v23, v26, v27, (v27 - v26) >> 3);
  v3 = v23;
  for (i = v24; v3 != i; ++v3)
  {
    v5 = *v3;
    if (*v3)
    {
      xpc_retain(*v3);
      v2[1] = *v2;
      v33 = v5;
    }

    else
    {
      v5 = xpc_null_create();
      v2[1] = *v2;
      v33 = v5;
      if (!v5)
      {
        v5 = 0;
        v33 = xpc_null_create();
        goto LABEL_6;
      }
    }

    xpc_retain(v5);
LABEL_6:
    v29 = &v33;
    v30 = "kCallStatus";
    sub_100006354(&v29, &object);
    v7 = xpc::dyn_cast_or_default(&object, 0, v6);
    xpc_release(object);
    v32 = v7;
    if (isCallStateActive())
    {
      v29 = &v33;
      v30 = "kCallSubType";
      sub_100006354(&v29, &object);
      v9 = xpc::dyn_cast_or_default(&object, 1, v8);
      xpc_release(object);
      v29 = &v33;
      v30 = "kCallSimSlot";
      sub_100006354(&v29, &object);
      v11 = xpc::dyn_cast_or_default(&object, 1, v10);
      xpc_release(object);
      v12 = v32;
      v13 = v2[1];
      v14 = v2[2];
      if (v13 >= v14)
      {
        v16 = *v2;
        v17 = v13 - *v2;
        v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 2) + 1;
        if (v18 > 0x1555555555555555)
        {
          sub_1000CE3D4();
        }

        v19 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v16) >> 2);
        if (2 * v19 > v18)
        {
          v18 = 2 * v19;
        }

        if (v19 >= 0xAAAAAAAAAAAAAAALL)
        {
          v20 = 0x1555555555555555;
        }

        else
        {
          v20 = v18;
        }

        if (v20)
        {
          if (v20 <= 0x1555555555555555)
          {
            operator new();
          }

          sub_100013D10();
        }

        v21 = 4 * (v17 >> 2);
        *v21 = v9;
        *(v21 + 1) = 0;
        *(v21 + 3) = 0;
        *(v21 + 4) = v11;
        *(v21 + 8) = v12;
        v15 = v21 + 12;
        v22 = v21 - v17;
        memcpy((v21 - v17), v16, v17);
        *v2 = v22;
        v2[1] = v15;
        v2[2] = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v13 = v9;
        *(v13 + 1) = 0;
        *(v13 + 3) = 0;
        v15 = v13 + 12;
        *(v13 + 4) = v11;
        *(v13 + 8) = v12;
      }

      v2[1] = v15;
    }

    xpc_release(v33);
    xpc_release(v5);
  }

  v29 = &v23;
  sub_1000B2DB4(&v29);
  v29 = &v26;
  sub_1000B2DB4(&v29);
}

void sub_101410E58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char *a16, uint64_t a17, xpc_object_t a18, uint64_t a19, xpc_object_t object)
{
  a16 = &a13;
  sub_1000B2DB4(&a16);
  _Unwind_Resume(a1);
}

uint64_t sub_101410F14(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_101410F60(uint64_t a1)
{
  sub_10004B38C((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_101410FA0(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (*a1 == a2)
    {
      __assert_rtn("reset", "shared_ptr.hpp", 734, "p == 0 || p != px");
    }
  }

  sub_101411060(&v2, a2);
}

uint64_t sub_10141101C(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __assert_rtn("operator*", "shared_ptr.hpp", 780, "px != 0");
  }

  return result;
}

void sub_101411060(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_1014110CC(&v2);
}

void sub_10141113C(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100638(v1);
  __cxa_rethrow();
}

uint64_t sub_10141117C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004A724((v1 + 24));
    sub_10004A724((v1 + 8));

    operator delete();
  }

  return result;
}

uint64_t sub_101411298(uint64_t a1, uint64_t a2)
{
  v4 = sub_101411420(a1, a2);
  sub_10141148C((v4 + 3), a2 + 24);
  *(a1 + 56) = *(a2 + 56);
  v5 = *(a2 + 24);
  v6 = (a2 + 32);
  if (v5 != (a2 + 32))
  {
    v7 = *(a1 + 24);
    v8 = *(a1 + 8);
    do
    {
      if (v7 == (a1 + 32))
      {
        __assert_rtn("grouped_list", "slot_groups.hpp", 80, "this_map_it != _group_map.end()");
      }

      v7[6] = v8;
      v9 = a2;
      if (v5 != v6)
      {
        v9 = v5[6];
      }

      v10 = v5[1];
      v11 = v10;
      v12 = v5;
      if (v10)
      {
        do
        {
          v13 = v11;
          v11 = *v11;
        }

        while (v11);
      }

      else
      {
        do
        {
          v13 = v12[2];
          v14 = *v13 == v12;
          v12 = v13;
        }

        while (!v14);
      }

      v15 = a2;
      if (v13 != v6)
      {
        v15 = v13[6];
      }

      while (v9 != v15)
      {
        v9 = *(v9 + 8);
        v8 = *(v8 + 8);
      }

      if (v10)
      {
        do
        {
          v16 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v16 = v5[2];
          v14 = *v16 == v5;
          v5 = v16;
        }

        while (!v14);
      }

      v17 = v7[1];
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
          v18 = v7[2];
          v14 = *v18 == v7;
          v7 = v18;
        }

        while (!v14);
      }

      v5 = v16;
      v7 = v18;
    }

    while (v16 != v6);
  }

  return a1;
}

void *sub_101411420(void *result, uint64_t a2)
{
  *result = result;
  result[1] = result;
  result[2] = 0;
  if (*(a2 + 8) != a2)
  {
    sub_1000FB140();
  }

  return result;
}

uint64_t sub_10141148C(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = *(a2 + 24);
  *a1 = a1 + 8;
  sub_1000FB28C(a1, *a2, (a2 + 8));
  return a1;
}

void sub_1014114F4(void *a1, uint64_t a2)
{
  *a1 = a2;
  a1[1] = 0;
  sub_101411560(&v2);
}

void sub_1014115D0(void *a1)
{
  __cxa_begin_catch(a1);
  sub_100100B84(v1);
  __cxa_rethrow();
}

uint64_t sub_101411610(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10006DCAC(v1 + 24, *(v1 + 32));
    sub_1000FB1B0(v1);

    operator delete();
  }

  return result;
}

uint64_t *sub_101411690(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  result = (a1 + 32);
  if (v4)
  {
    v6 = sub_10004AC60(result);
    result = sub_100100E34(v6);
    if (result)
    {
      if (*(a1 + 24) == 1)
      {
        *(a1 + 24) = 0;

        return sub_100100F00(a1, a2);
      }
    }
  }

  return result;
}

void sub_101411700(uint64_t a1)
{
  sub_1014119F0(a1);

  operator delete();
}

uint64_t sub_101411738(uint64_t a1)
{
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v6, v2);
  if (*(a1 + 32))
  {
    for (i = *sub_10004AC60((a1 + 32)); i != *(sub_10004AC60((a1 + 32)) + 8); i += 6)
    {
      memset(v8, 0, sizeof(v8));
      sub_10004ACE8(i, v8);
      if (sub_100048EA8(i))
      {
        if (*(a1 + 24) == 1)
        {
          *(a1 + 24) = 0;
          sub_100100F00(a1, v6);
        }

        sub_10004B040(v8);
        break;
      }

      sub_10004B040(v8);
    }
  }

  v4 = *(a1 + 24);
  sub_10004A704(*(&v7 + 1));
  sub_10004A6B0(v6);
  return v4;
}

void sub_101411870(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(v3 - 80);
  sub_1000FFEDC(va);
  _Unwind_Resume(a1);
}

atomic_uint **sub_1014118B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 40);
  *a2 = *(a1 + 32);
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1u, memory_order_relaxed);
    v5 = *(a1 + 40);
  }

  else
  {
    v5 = 0;
  }

  v7[1] = v2;
  v7[2] = v3;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v7[0] = v5;
  return sub_10004A724(v7);
}

uint64_t sub_10141190C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_10004B38C((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_101411980(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_10004B38C((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1014119F0(uint64_t a1)
{
  *a1 = off_101F387D8;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

uint64_t sub_101411A80(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_101411AC8(uint64_t a1, void *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 <= 1)
  {
    v6 = *a1;
    *a2 = *a1;
    a2[1] = *(a1 + 8);
    dispatch_retain(v6);
    if (a3 != 1)
    {
      return;
    }

    v7 = *a1;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 4) = 0;
      return;
    }

    v7 = *a2;
LABEL_10:

    dispatch_release(v7);
    return;
  }

  v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
  if (v8 == ("N3ctu12DispatchSlotIZN15AudioController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N3ctu12DispatchSlotIZN15AudioController16setupEvents_syncEvE3$_0EE" & 0x7FFFFFFFFFFFFFFFLL)))
  {
    *a2 = a1;
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t sub_101411BA8(uint64_t result, _WORD *a2, unsigned int a3)
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
        a2[4] = 0;
        return result;
      }

      result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
      if (result == ("ZN15AudioController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("ZN15AudioController16setupEvents_syncEvE3$_0" & 0x7FFFFFFFFFFFFFFFLL)), !result))
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
    *a2 = *result;
  }

  return result;
}

uint64_t sub_101411C40(uint64_t result, uint64_t a2)
{
  if (a2 != result)
  {
    v2 = a2;
    v3 = result;
    v4 = *a2;
    if (*a2)
    {
      *result = v4;
      if (v4)
      {
        v7 = *(a2 + 8);
        *(result + 24) = *(a2 + 24);
        *(result + 8) = v7;
      }

      else
      {
        result = (*v4)(a2 + 8, result + 8, 1);
      }
    }

    else
    {
      v5 = *result;
      if (!*result)
      {
        return result;
      }

      if ((v5 & 1) == 0)
      {
        v6 = *v5;
        if (v6)
        {
          result = v6(result + 8, result + 8, 2);
        }
      }

      v2 = v3;
    }

    *v2 = 0;
  }

  return result;
}

void sub_101411CD4(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void *sub_101411CF8(void *a1)
{
  *a1 = off_101F38950;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_101411D44(void *a1)
{
  *a1 = off_101F38950;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_101411E1C(void *a1)
{
  *a1 = off_101F389A0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

__n128 sub_101411EE4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F389E0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_101411F1C(void *a1, xpc_object_t *a2)
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

  sub_100109E38(v3, a2);
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

uint64_t sub_101411FF4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_101412040(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  if (sub_10140C020(v2, *(*a1 + 8)))
  {
    v3 = *(v1 + 8);
    v4 = *(v2 + 40);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v11 = CSIBOOLAsString(v3);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Persisting audio logging setting value: %s", buf, 0xCu);
    }

    v5 = &kCFBooleanTrue;
    if (!v3)
    {
      v5 = &kCFBooleanFalse;
    }

    (*(**(v2 + 120) + 16))(*(v2 + 120), @"AudioLoggingEnabled", *v5, @"com.apple.commcenter.audio", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v6 = (*(**(v2 + 120) + 48))(*(v2 + 120), @"com.apple.commcenter.audio", kCFPreferencesCurrentUser, kCFPreferencesAnyHost);
    v7 = *(v2 + 40);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v6)
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      *buf = 0;
      v9 = "#I Successfully persisted the AudioLoggingEnabled key";
    }

    else
    {
      if (!v8)
      {
        goto LABEL_12;
      }

      *buf = 0;
      v9 = "#N Failed to persist the AudioLoggingEnabled key";
    }

    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v9, buf, 2u);
  }

LABEL_12:
  operator delete();
}

uint64_t *sub_101412260(uint64_t **a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  if ((*(**(*v1 + 152) + 32))(*(*v1 + 152)))
  {
    v3 = sub_10140BEB4(v2);
    object = xpc_BOOL_create(v3);
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  else
  {
    object = xpc_BOOL_create(0);
    if (!object)
    {
      object = xpc_null_create();
    }
  }

  v7[0] = v1[1];
  v7[1] = "kAudioLoggingEnabled";
  sub_10000F688(v7, &object, &v9);
  xpc_release(v9);
  v9 = 0;
  xpc_release(object);
  sub_100E0B28C(&v6);
  return sub_1000049E0(&v5);
}

void sub_101412388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100E0B28C(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1014123A4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *v1;
  v3 = *(*v1 + 368);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *(v1 + 2);
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = *(v3 + 7);
      if (v6 <= v4)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      break;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v7 = *(v1 + 12);
  v5[6] = *(v1 + 28);
  *(v5 + 2) = v7;
  v8 = *(v2 + 96);
  v12[0] = *(v2 + 88);
  v12[1] = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = sub_10140C530(v12, *(v1 + 2));
  if (v9)
  {
    v10 = capabilities::ct::supportsSetVoLTEAudioCodec(v9);
    if (v8)
    {
      sub_100004A34(v8);
    }

    if ((v10 & 1) == 0)
    {
      return 1;
    }
  }

  else if (v8)
  {
    sub_100004A34(v8);
  }

  return 0;
}

void sub_101412560(SystemConfigurationFactoryInterface *a1)
{
  SystemConfigurationFactoryInterface::~SystemConfigurationFactoryInterface(a1);

  operator delete();
}

void sub_10141259C(RegistrationInterface *a1)
{
  RegistrationInterface::~RegistrationInterface(a1);

  operator delete();
}

uint64_t sub_1014125EC(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_101412678(uint64_t a1, char a2, char a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t sub_1014126F0(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_101412750(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
}

void sub_10141275C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_1014127D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1014127EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101412860(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101412888(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_1014128DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __p[0] = 0;
  __p[1] = 0;
  v5 = 0;
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, __p);
  if (SHIBYTE(v5) < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_101412950(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10141296C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MCC::MCC(&v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_1014129E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101412A08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MNC::MNC(&v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_101412A80(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101412AB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MCC::MCC(&v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, &v5);
  if (v7 < 0)
  {
    operator delete(__p);
  }
}

void sub_101412B28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101412B50(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_101412BB0(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

uint64_t sub_101412C10(uint64_t a1, int a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  return (*(*v2 + 48))(v2, &v4);
}

void sub_101412C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NetworkListOperator::NetworkListOperator(&v4);
  sub_101412CFC(a3, 0, 2);
  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9 < 0)
  {
    operator delete(v8);
  }

  if (v7 < 0)
  {
    operator delete(v6);
  }

  if (v5 < 0)
  {
    operator delete(v4);
  }
}

void sub_101412CE8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100F4B3AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_101412CFC(uint64_t a1, int a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

void sub_101412D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  NetworkListOperator::NetworkListOperator(v5);
  v4 = *(a3 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  (*(*v4 + 48))(v4, v5);
  if (v12 < 0)
  {
    operator delete(__p);
  }

  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v6 < 0)
  {
    operator delete(v5[0]);
  }
}

void sub_101412E44(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100F4B3AC(va);
  _Unwind_Resume(a1);
}

void sub_101412E58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memset(v4, 0, sizeof(v4));
  v3 = *(a3 + 24);
  if (!v3)
  {
    sub_100022DB4();
  }

  (*(*v3 + 48))(v3, v4);
  v5 = v4;
  sub_100F4B580(&v5);
}

void sub_101412ECC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_100F4B580(&a12);
  _Unwind_Resume(a1);
}

uint64_t sub_101412EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = std::generic_category();

  return sub_101412F38(a3, 0, 45, v4);
}

uint64_t sub_101412F38(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v6[0] = a3;
  v6[1] = a4;
  v4 = *(a1 + 24);
  if (!v4)
  {
    sub_100022DB4();
  }

  return (*(*v4 + 48))(v4, &v7, v6);
}

void sub_101413088(uint64_t a1, int a2)
{
  v5 = a2;
  v2 = *(a1 + 8);
  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = a1 + 8;
  do
  {
    if (*(v2 + 32) >= a2)
    {
      v3 = v2;
    }

    v2 = *(v2 + 8 * (*(v2 + 32) < a2));
  }

  while (v2);
  if (v3 != a1 + 8 && *(v3 + 32) <= a2)
  {
    v4 = *(v3 + 44);
    if (v4 <= 4)
    {
      *(v3 + 44) = dword_101967960[v4];
    }
  }

  else
  {
LABEL_8:
    sub_10141409C(a1, &v5);
  }
}

void sub_10141313C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_101413158(uint64_t a1, os_log_t *a2)
{
  *(a1 + 24) = 0;
  v4 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "kNone";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: new read stage = %s", &v5, 0xCu);
  }

  sub_101413218(a1, a2);
}

void sub_101413218(uint64_t a1, os_log_t *a2)
{
  v3 = *(a1 + 24);
  if (v3 == 1)
  {
    v12 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      v19[0] = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: reset files that can't be read in locked state", v19, 2u);
    }

    v15 = *a1;
    v13 = (a1 + 8);
    v14 = v15;
    if (v15 != v13)
    {
      do
      {
        if (*(v14 + 8))
        {
          v16 = v14[6];
          v14[5] = 0;
          if (v16)
          {
            v14[7] = v16;
            operator delete(v16);
          }

          v14[6] = 0;
          v14[7] = 0;
          *(v14 + 72) = 0;
          v14[8] = 0;
          *(v14 + 78) = 0;
        }

        v17 = v14[1];
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
            v18 = v14[2];
            v11 = *v18 == v14;
            v14 = v18;
          }

          while (!v11);
        }

        v14 = v18;
      }

      while (v18 != v13);
    }
  }

  else if (!v3)
  {
    v4 = *a2;
    if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: reset all files data", buf, 2u);
    }

    v7 = *a1;
    v5 = (a1 + 8);
    v6 = v7;
    if (v7 != v5)
    {
      do
      {
        v8 = v6[6];
        v6[5] = 0;
        if (v8)
        {
          v6[7] = v8;
          operator delete(v8);
        }

        v6[6] = 0;
        v6[7] = 0;
        *(v6 + 72) = 0;
        v6[8] = 0;
        *(v6 + 78) = 0;
        v9 = v6[1];
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
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }
}

void sub_1014133B4(void *a1@<X0>, uint64_t a2@<X1>, const void **a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 != a1 + 1)
  {
    do
    {
      v7 = *(a2 + 24);
      v25 = *(v4 + 8);
      if (!v7)
      {
        sub_100022DB4();
      }

      if ((*(*v7 + 48))(v7, &v25))
      {
        v8 = *(v4 + 11);
        v9 = v8 > 4;
        v10 = (1 << v8) & 0x13;
        v11 = v9 || v10 == 0;
        if (!v11)
        {
          v13 = a3[1];
          v12 = a3[2];
          if (v13 >= v12)
          {
            v15 = *a3;
            v16 = v13 - *a3;
            v17 = v16 >> 2;
            v18 = (v16 >> 2) + 1;
            if (v18 >> 62)
            {
              sub_1000CE3D4();
            }

            v19 = v12 - v15;
            if (v19 >> 1 > v18)
            {
              v18 = v19 >> 1;
            }

            v20 = v19 >= 0x7FFFFFFFFFFFFFFCLL;
            v21 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v20)
            {
              v21 = v18;
            }

            if (v21)
            {
              sub_100016740(a3, v21);
            }

            *(4 * v17) = *(v4 + 8);
            v14 = 4 * v17 + 4;
            memcpy(0, v15, v16);
            v22 = *a3;
            *a3 = 0;
            a3[1] = v14;
            a3[2] = 0;
            if (v22)
            {
              operator delete(v22);
            }
          }

          else
          {
            *v13 = *(v4 + 8);
            v14 = (v13 + 4);
          }

          a3[1] = v14;
          *(v4 + 11) = 2;
        }
      }

      v23 = v4[1];
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
          v24 = v4[2];
          v11 = *v24 == v4;
          v4 = v24;
        }

        while (!v11);
      }

      v4 = v24;
    }

    while (v24 != v3);
  }
}

void sub_101413574(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_101413598@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, void *a5@<X8>)
{
  v5 = result;
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *(result + 24);
  if (v7 == 2)
  {
    v13 = sub_100065150(result, a3);
    v14 = 256;
    if (!a3)
    {
      v14 = 0;
    }

    v15 = 0x10000;
    if (!a4)
    {
      v15 = 0;
    }

    v19[0] = off_101F38E08;
    v19[1] = a2;
    *v20 = v15 | v14 | v13;
    v22 = v19;
    *&v20[3] = 0;
    v21 = 0;
    sub_1014133B4(v5, v19, &v17);
    v16 = v18;
    *a5 = v17;
    a5[2] = v16;
    v18 = 0;
    v17 = 0uLL;
    v9 = v19;
  }

  else
  {
    if (v7 != 1)
    {
      return result;
    }

    v23[0] = off_101F38D78;
    v23[3] = v23;
    sub_1014133B4(result, v23, &v17);
    v8 = v18;
    *a5 = v17;
    a5[2] = v8;
    v18 = 0;
    v17 = 0uLL;
    v9 = v23;
  }

  return sub_101414270(v9);
}

void sub_101413708(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_101414270(va);
  _Unwind_Resume(a1);
}

void sub_101413728(uint64_t a1, os_log_t *a2)
{
  if (subscriber::isSimReady())
  {
    v4 = 2;
  }

  else if (subscriber::isSimLocked() & 1) != 0 || (subscriber::isSimPermanentlyBlocked())
  {
    v4 = 1;
  }

  else
  {
    if (!subscriber::isSimSettled())
    {
      return;
    }

    v4 = 0;
  }

  v5 = *a2;
  if (os_log_type_enabled(*a2, OS_LOG_TYPE_DEFAULT))
  {
    v6 = off_101F38E78[v4];
    v7 = *(a1 + 24);
    if (v7 > 2)
    {
      v8 = "?";
    }

    else
    {
      v8 = off_101F38E78[v7];
    }

    v9 = 136315394;
    v10 = v6;
    v11 = 2080;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Sim file manager: read stage = %s (was %s)", &v9, 0x16u);
  }

  if (v4 != *(a1 + 24))
  {
    *(a1 + 24) = v4;
    sub_101413218(a1, a2);
  }
}

uint64_t sub_101413868(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

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
    v8 = *(v5 + 44);
    if (v8 > 4)
    {
      LOBYTE(v6) = 1;
    }

    else
    {
      v6 = 4u >> v8;
    }
  }

  else
  {
LABEL_8:
    LOBYTE(v6) = 0;
  }

  return v6 & 1;
}

uint64_t sub_1014138CC(uint64_t a1, int a2)
{
  v7 = a2;
  if (sub_101413868(a1, a2))
  {
    v8 = &v7;
    v3 = sub_101414468(a1, &v7);
    v4 = *(v3 + 10) != 2;
    v3[7] = v3[6];
    v3[5] = 0x300000002;
    v5 = 1;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  return v5 | (v4 << 8);
}

uint64_t sub_101413958(uint64_t a1, int a2, uint64_t a3)
{
  v12 = a2;
  if (sub_101413868(a1, a2))
  {
    v13 = &v12;
    v5 = sub_101414468(a1, &v12);
    v6 = v5;
    v9 = *(v5 + 10) != 1 || (v7 = v5[6], v8 = v6[7] - v7, v8 != *(a3 + 8) - *a3) || memcmp(v7, *a3, v8) != 0;
    sub_100015184((v6 + 6), a3);
    v6[5] = 0x300000001;
    v10 = 1;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  return v10 | (v9 << 8);
}

uint64_t sub_101413A24(uint64_t a1, int a2, uint64_t a3)
{
  v5 = *(a1 + 8);
  result = a1 + 8;
  v4 = v5;
  if (v5)
  {
    v6 = result;
    do
    {
      if (*(v4 + 32) >= a2)
      {
        v6 = v4;
      }

      v4 = *(v4 + 8 * (*(v4 + 32) < a2));
    }

    while (v4);
    if (v6 != result && *(v6 + 32) <= a2)
    {
      v7 = *(v6 + 78);
      v8 = *(a3 + 4);
      *(v6 + 72) = *a3;
      *(v6 + 76) = v8;
      if ((v7 & 1) == 0)
      {
        *(v6 + 78) = 1;
      }
    }
  }

  return result;
}

unint64_t sub_101413A80(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
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
      v7 = *(v5 + 72);
      v3 = v7 & 0xFF00000000000000;
      v6 = v7 & 0xFF000000000000;
      v8 = v7 & 0xFFFFFFFFFF00;
      v7 = v7;
      return v7 | v6 | v3 | v8;
    }

    v6 = 0;
    v7 = 0;
    v3 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = 0;
  return v7 | v6 | v3 | v8;
}

uint64_t *sub_101413AFC@<X0>(uint64_t a1@<X0>, int a2@<W1>, unint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = *(a1 + 8);
  result = (a1 + 8);
  v5 = v6;
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v6)
  {
    v7 = result;
    do
    {
      if (*(v5 + 32) >= a2)
      {
        v7 = v5;
      }

      v5 = *(v5 + 8 * (*(v5 + 32) < a2));
    }

    while (v5);
    if (v7 != result && *(v7 + 8) <= a2)
    {
      if ((a2 - 1) < 2)
      {
        return ctu::hex(a4, v7[6], (v7[7] - v7[6]), a3);
      }

      else if (a2)
      {
        if (a2 == 3)
        {
          return subscriber::sDecodeImsi(a4, v7[6], (v7[7] - v7[6]), a3);
        }
      }

      else
      {
        return subscriber::sDecodeIccid(v7[6], (v7[7] - v7[6]), a3);
      }
    }
  }

  return result;
}

uint64_t sub_101413B7C(uint64_t a1, NSObject **a2)
{
  v37 = 0;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  *__p = 0u;
  v26 = 0u;
  v23 = 0u;
  *__src = 0u;
  v21 = 0u;
  v22 = 0u;
  sub_10000D518(&v21);
  v4 = (a1 + 8);
  v5 = *a1;
  memset(&v39, 0, sizeof(v39));
  if (v5 != (a1 + 8))
  {
    sub_101414548(&__s, (v5 + 4));
    if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v39.__r_.__value_.__l.__data_);
    }

    v39 = __s;
    v6 = v5[1];
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
        v7 = v5[2];
        v8 = *v7 == v5;
        v5 = v7;
      }

      while (!v8);
    }

    if (v7 != v4)
    {
      do
      {
        *(&__s.__r_.__value_.__s + 23) = 2;
        strcpy(&__s, ", ");
        std::string::append(&v39, &__s, 2uLL);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        sub_101414548(&__s, (v7 + 4));
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

        std::string::append(&v39, p_s, size);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        v11 = v7[1];
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
            v12 = v7[2];
            v8 = *v12 == v7;
            v7 = v12;
          }

          while (!v8);
        }

        v7 = v12;
      }

      while (v12 != v4);
    }
  }

  sub_10000C030(&v21);
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
  }

  v13 = *a2;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 24);
    if (v14 > 2)
    {
      v15 = "?";
    }

    else
    {
      v15 = off_101F38E78[v14];
    }

    if ((BYTE8(v27) & 0x10) != 0)
    {
      v17 = v27;
      if (v27 < __src[1])
      {
        *&v27 = __src[1];
        v17 = __src[1];
      }

      v18 = __src[0];
    }

    else
    {
      if ((BYTE8(v27) & 8) == 0)
      {
        v16 = 0;
        *(&__s.__r_.__value_.__s + 23) = 0;
LABEL_45:
        __s.__r_.__value_.__s.__data_[v16] = 0;
        v19 = &__s;
        if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v19 = __s.__r_.__value_.__r.__words[0];
        }

        LODWORD(v39.__r_.__value_.__l.__data_) = 136315394;
        *(v39.__r_.__value_.__r.__words + 4) = v15;
        WORD2(v39.__r_.__value_.__r.__words[1]) = 2082;
        *(&v39.__r_.__value_.__r.__words[1] + 6) = v19;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I fReadStage= %s ; files=[%{public}s]", &v39, 0x16u);
        if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__s.__r_.__value_.__l.__data_);
        }

        goto LABEL_49;
      }

      v18 = *(&v22 + 1);
      v17 = *(&v23 + 1);
    }

    v16 = v17 - v18;
    if ((v17 - v18) >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_1000A2378();
    }

    if (v16 >= 0x17)
    {
      operator new();
    }

    *(&__s.__r_.__value_.__s + 23) = v17 - v18;
    if (v16)
    {
      memmove(&__s, v18, v16);
    }

    goto LABEL_45;
  }

LABEL_49:
  if (SHIBYTE(v26) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v22);
  std::ostream::~ostream();
  return std::ios::~ios();
}