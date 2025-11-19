void sub_10028224C(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      sub_100281AB0(a4, v8);
      v8 += 42;
      a4 += 672;
      v7 -= 672;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      sub_10027DF50(v6);
      v6 += 672;
    }
  }
}

void sub_1002822CC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 672;
    do
    {
      v4 = sub_10027DF50(v4) - 672;
      v2 += 672;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002822F0(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 672;
    sub_10027DF50(i - 672);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100282340(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  sub_100282470(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 5));
  sub_10006F264(a1 + 24, (a2 + 24));
  sub_10006F264(a1 + 56, (a2 + 56));
  sub_10006F264(a1 + 88, (a2 + 88));
  *(a1 + 120) = *(a2 + 120);
  if (*(a2 + 151) < 0)
  {
    sub_100005F2C((a1 + 128), *(a2 + 128), *(a2 + 136));
  }

  else
  {
    v4 = *(a2 + 128);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 128) = v4;
  }

  return a1;
}

void sub_1002823EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  if (*(v10 + 112) == 1 && *(v10 + 111) < 0)
  {
    operator delete(*(v10 + 88));
  }

  if (*(v10 + 80) == 1 && *(v10 + 79) < 0)
  {
    operator delete(*(v10 + 56));
  }

  if (*(v10 + 48) == 1 && *(v10 + 47) < 0)
  {
    operator delete(*(v10 + 24));
  }

  a10 = v10;
  sub_10016C644(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_100282470(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100280AFC(result, a4);
  }

  return result;
}

void sub_1002824D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10016C644(&a9);
  _Unwind_Resume(a1);
}

void *sub_1002824F8(uint64_t a1, __int128 *a2, __int128 *a3, void *__dst)
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
      }

      else
      {
        v7 = *v6;
        v4[2] = *(v6 + 2);
        *v4 = v7;
      }

      sub_10006F264((v4 + 3), (v6 + 24));
      sub_10006F264((v4 + 7), (v6 + 56));
      *(v4 + 44) = *(v6 + 44);
      v6 += 6;
      v4 = v12 + 96;
      v12 += 96;
    }

    while (v6 != a3);
  }

  LOBYTE(v10) = 1;
  sub_100280C60(v9);
  return v4;
}

uint64_t sub_100282610(uint64_t *a1, __int128 *a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x199999999999999)
  {
    sub_1000CE3D4();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 5);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 5) >= 0xCCCCCCCCCCCCCCLL)
  {
    v6 = 0x199999999999999;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_10027EC2C(a1, v6);
  }

  v13 = 0;
  v14 = 160 * v2;
  sub_10027E9BC((160 * v2), a2);
  v15 = 160 * v2 + 160;
  v7 = a1[1];
  v8 = 160 * v2 + *a1 - v7;
  sub_100282740(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = a1[2];
  v12 = v15;
  *(a1 + 1) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_10028288C(&v13);
  return v12;
}

void sub_10028272C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10028288C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100282740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v8 = *v7;
      *(a4 + 16) = *(v7 + 16);
      *a4 = v8;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      *v7 = 0;
      *(a4 + 24) = *(v7 + 24);
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 40) = 0;
      v10 = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 64) = v10;
      *(v7 + 64) = 0;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      v11 = *(v7 + 88);
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 88) = v11;
      *(v7 + 88) = 0;
      *(v7 + 96) = 0;
      *(v7 + 104) = 0;
      v12 = *(v7 + 112);
      *(a4 + 128) = *(v7 + 128);
      *(a4 + 112) = v12;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      *(v7 + 128) = 0;
      v13 = *(v7 + 136);
      *(a4 + 152) = *(v7 + 152);
      *(a4 + 136) = v13;
      *(v7 + 136) = 0;
      *(v7 + 144) = 0;
      *(v7 + 152) = 0;
      v7 += 160;
      a4 += 160;
    }

    while (v7 != a3);
    v18 = a4;
    LOBYTE(v16) = 1;
    while (v5 != a3)
    {
      sub_10027EDB0(a1, v5);
      v5 += 160;
    }
  }

  return sub_10027ED24(v15);
}

uint64_t sub_10028288C(uint64_t a1)
{
  sub_1002828C4(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_1002828C4(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 160;
    sub_10027EDB0(v5, v4 - 160);
  }
}

uint64_t sub_10028290C(uint64_t a1)
{
  if (*(a1 + 392) == 1 && *(a1 + 391) < 0)
  {
    operator delete(*(a1 + 368));
  }

  if (*(a1 + 360) == 1 && *(a1 + 359) < 0)
  {
    operator delete(*(a1 + 336));
  }

  if (*(a1 + 328) == 1 && *(a1 + 327) < 0)
  {
    operator delete(*(a1 + 304));
  }

  if (*(a1 + 296) == 1 && *(a1 + 295) < 0)
  {
    operator delete(*(a1 + 272));
  }

  if (*(a1 + 264) == 1 && *(a1 + 263) < 0)
  {
    operator delete(*(a1 + 240));
  }

  if (*(a1 + 207) < 0)
  {
    operator delete(*(a1 + 184));
  }

  if (*(a1 + 160) == 1 && *(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 128) == 1 && *(a1 + 127) < 0)
  {
    operator delete(*(a1 + 104));
  }

  if (*(a1 + 80) == 1 && *(a1 + 79) < 0)
  {
    operator delete(*(a1 + 56));
  }

  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

char *sub_100282A30(char *__dst, __int128 *a2, void (**a3)(uint64_t, void, char *, void, void))
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v5;
  }

  *(__dst + 3) = 0;
  *(__dst + 4) = 0;
  if (*a3)
  {
    (*a3)(1, a3, __dst + 24, 0, 0);
  }

  return __dst;
}

void sub_100282AA8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100282AC4(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 48));
  sub_100005978((a1 + 40));
  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  v3 = *(a1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

uint64_t sub_100282B20(uint64_t a1)
{
  *a1 = off_101E36368;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 56));
  sub_100005978((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_100282B98(uint64_t a1)
{
  *a1 = off_101E36368;
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 56));
  sub_100005978((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete();
}

void sub_100282D04(_Unwind_Exception *a1)
{
  v3 = v1[2];
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

const void **sub_100282D24(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  *a2 = off_101E36368;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a1 + 47) < 0)
  {
    sub_100005F2C((a2 + 24), *(a1 + 24), *(a1 + 32));
  }

  else
  {
    v6 = *(a1 + 24);
    *(a2 + 40) = *(a1 + 40);
    *(a2 + 24) = v6;
  }

  sub_10005C7A4((a2 + 48), (a1 + 48));
  result = sub_100010024((a2 + 56), (a1 + 56));
  *(a2 + 64) = *(a1 + 64);
  v8 = *(a1 + 80);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 80) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100282DDC(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100282DF4(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 56));
  sub_100005978((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

void sub_100282E64(uint64_t a1)
{
  v2 = *(a1 + 80);
  if (v2)
  {
    sub_100004A34(v2);
  }

  sub_10001021C((a1 + 56));
  sub_100005978((a1 + 48));
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100004A34(v3);
  }

  operator delete(a1);
}

void sub_100282ED0(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = kCtLoggingSystemName;
  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "cp.tr.ctr");
  v5 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = "failed";
    if (v3)
    {
      v6 = "succeed";
    }

    LODWORD(buf) = 136315138;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "launch websheet %s", &buf, 0xCu);
  }

  if ((v3 & 1) == 0)
  {
    if (!*(a1 + 8) || *(a1 + 64))
    {
      if (*(a1 + 72))
      {
        ctu::OsLogContext::OsLogContext(&buf, v4, "cp.tr.ctr");
        v9 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Showing failed transfer popup.", &buf, 2u);
        }

        (*(**(a1 + 72) + 136))(*(a1 + 72), *(a1 + 64), a1 + 24);
      }

      else
      {
        ctu::OsLogContext::OsLogContext(&buf, v4, "cp.tr.ctr");
        v10 = *(&buf + 1);
        ctu::OsLogContext::~OsLogContext(&buf);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          sub_101768B64();
        }
      }
    }

    else
    {
      ctu::OsLogContext::OsLogContext(&buf, v4, "cp.tr.ctr");
      v7 = *(&buf + 1);
      ctu::OsLogContext::~OsLogContext(&buf);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "create followup in case inline launch websheet failure.", &buf, 2u);
      }

      v8 = *(a1 + 16);
      *&buf = *(a1 + 8);
      *(&buf + 1) = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      sub_10005C7A4(&v12, (a1 + 48));
      sub_100010024(&v11, (a1 + 56));
      sub_10026CD38(&buf, a1 + 24, &v12);
      sub_10001021C(&v11);
      sub_100005978(&v12);
      if (v8)
      {
        sub_100004A34(v8);
      }
    }
  }
}

void sub_100283154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_10001021C(&a9);
  sub_100005978(&a10);
  if (v10)
  {
    sub_100004A34(v10);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100283184(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002831D0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100283258(result, a4);
  }

  return result;
}

void sub_100283238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  sub_10027E114(&a9);
  _Unwind_Resume(a1);
}

void sub_100283258(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x38E38E38E38E38FLL)
  {
    sub_10027CA44(a1, a2);
  }

  sub_1000CE3D4();
}

void **sub_1002832A8(void **a1)
{
  v3 = a1 + 3;
  sub_10027E114(&v3);
  v3 = a1;
  sub_10027B2AC(&v3);
  return a1;
}

void *sub_1002832F0(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  __dst[3] = 0;
  __dst[4] = 0;
  __dst[5] = 0;
  sub_100282470((__dst + 3), *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 5));
  sub_10006F264((__dst + 6), a2 + 3);
  __dst[10] = *(a2 + 10);
  sub_10006F264((__dst + 11), (a2 + 88));
  sub_10006F264((__dst + 15), (a2 + 120));
  return __dst;
}

void sub_1002833A8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  if (*(v2 + 112) == 1 && *(v2 + 111) < 0)
  {
    operator delete(*(v2 + 88));
  }

  if (*(v2 + 72) == 1 && *(v2 + 71) < 0)
  {
    operator delete(*(v2 + 48));
  }

  sub_10016C644(va);
  if (*(v2 + 23) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_100283420(std::string *__dst, std::string *__str)
{
  if (__dst[6].__r_.__value_.__s.__data_[8] == __str[6].__r_.__value_.__s.__data_[8])
  {
    if (__dst[6].__r_.__value_.__s.__data_[8])
    {
      std::string::operator=(__dst, __str);
      if (__dst != __str)
      {
        sub_1002845C0(&__dst[1], __str[1].__r_.__value_.__l.__data_, __str[1].__r_.__value_.__l.__size_, 0xAAAAAAAAAAAAAAABLL * ((__str[1].__r_.__value_.__l.__size_ - __str[1].__r_.__value_.__r.__words[0]) >> 5));
      }

      sub_10012BF3C(__dst + 2, __str + 2);
      v4 = __str[3].__r_.__value_.__r.__words[1];
      __dst[3].__r_.__value_.__s.__data_[12] = __str[3].__r_.__value_.__s.__data_[12];
      LODWORD(__dst[3].__r_.__value_.__r.__words[1]) = v4;
      sub_10012BF3C((__dst + 88), (__str + 88));

      sub_10012BF3C(__dst + 5, __str + 5);
    }
  }

  else if (__dst[6].__r_.__value_.__s.__data_[8])
  {
    if (__dst[6].__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(__dst[5].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[5].__r_.__value_.__l.__data_);
    }

    if (__dst[4].__r_.__value_.__s.__data_[16] == 1 && __dst[4].__r_.__value_.__s.__data_[15] < 0)
    {
      operator delete(__dst[3].__r_.__value_.__r.__words[2]);
    }

    if (__dst[3].__r_.__value_.__s.__data_[0] == 1 && SHIBYTE(__dst[2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[2].__r_.__value_.__l.__data_);
    }

    v5 = __dst + 1;
    sub_10016C644(&v5);
    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[6].__r_.__value_.__s.__data_[8] = 0;
  }

  else
  {
    sub_1002832F0(__dst, __str);
    __dst[6].__r_.__value_.__s.__data_[8] = 1;
  }
}

void sub_100283578(std::string *__dst, std::string *__str)
{
  if (__dst[4].__r_.__value_.__s.__data_[0] == __str[4].__r_.__value_.__s.__data_[0])
  {
    if (__dst[4].__r_.__value_.__s.__data_[0])
    {
      std::string::operator=(__dst, __str);
      std::string::operator=(__dst + 1, __str + 1);
      std::string::operator=(__dst + 2, __str + 2);

      std::string::operator=(__dst + 3, __str + 3);
    }
  }

  else if (__dst[4].__r_.__value_.__s.__data_[0])
  {
    if (SHIBYTE(__dst[3].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[3].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst[2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[2].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[4].__r_.__value_.__s.__data_[0] = 0;
  }

  else
  {
    sub_1000DDB98(__dst, __str);
    __dst[4].__r_.__value_.__s.__data_[0] = 1;
  }
}

void sub_100283658(std::string *__dst, std::string *__str)
{
  if (__dst[3].__r_.__value_.__s.__data_[8] == __str[3].__r_.__value_.__s.__data_[8])
  {
    if (__dst[3].__r_.__value_.__s.__data_[8])
    {
      std::string::operator=(__dst, __str);
      std::string::operator=(__dst + 1, __str + 1);
      std::string::operator=(__dst + 2, __str + 2);
      __dst[3].__r_.__value_.__s.__data_[0] = __str[3].__r_.__value_.__s.__data_[0];
    }
  }

  else if (__dst[3].__r_.__value_.__s.__data_[8])
  {
    if (SHIBYTE(__dst[2].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[2].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst[1].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst[1].__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(__dst->__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst->__r_.__value_.__l.__data_);
    }

    __dst[3].__r_.__value_.__s.__data_[8] = 0;
  }

  else
  {

    sub_10028371C(__dst, __str);
  }
}

char *sub_10028371C(char *__dst, __int128 *a2)
{
  v3 = __dst;
  if (*(a2 + 23) < 0)
  {
    __dst = sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(__dst + 2) = *(a2 + 2);
    *__dst = v4;
  }

  if (*(a2 + 47) < 0)
  {
    __dst = sub_100005F2C(v3 + 24, *(a2 + 3), *(a2 + 4));
  }

  else
  {
    v5 = *(a2 + 24);
    *(v3 + 5) = *(a2 + 5);
    *(v3 + 24) = v5;
  }

  if (*(a2 + 71) < 0)
  {
    __dst = sub_100005F2C(v3 + 48, *(a2 + 6), *(a2 + 7));
  }

  else
  {
    v6 = a2[3];
    *(v3 + 8) = *(a2 + 8);
    *(v3 + 3) = v6;
  }

  v3[72] = *(a2 + 72);
  v3[80] = 1;
  return __dst;
}

void sub_1002837C8(_Unwind_Exception *exception_object)
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

_BYTE *sub_1002837FC(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[592] = 0;
  if (*(a2 + 592) == 1)
  {
    sub_100283910(a1, a2);
    a1[592] = 1;
  }

  return a1;
}

void sub_100283844(_Unwind_Exception *exception_object)
{
  if (*(v1 + 592) == 1)
  {
    sub_100283CE0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100283864(uint64_t a1)
{
  if (*(a1 + 152) == 1)
  {
    if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    if (*(a1 + 112) == 1 && *(a1 + 111) < 0)
    {
      operator delete(*(a1 + 88));
    }

    if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    v3 = (a1 + 24);
    sub_10016C644(&v3);
    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t sub_100283910(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 40);
  *a1 = *a2;
  v5 = a1 + 40;
  sub_10006F264(a1 + 8, (a2 + 8));
  sub_10006F264(v5, v4);
  sub_100283B50((a1 + 72), a2 + 72);
  sub_10006F264(a1 + 232, (a2 + 232));
  sub_100283BB8((a1 + 264), a2 + 264);
  sub_100283C20((a1 + 368), a2 + 368);
  sub_10006F264(a1 + 456, (a2 + 456));
  sub_10006F264(a1 + 488, (a2 + 488));
  sub_10006F264(a1 + 520, (a2 + 520));
  sub_10006F264(a1 + 552, (a2 + 552));
  *(a1 + 584) = *(a2 + 584);
  return a1;
}

void sub_1002839D4(_Unwind_Exception *a1)
{
  if (*(v1 + 544) == 1 && *(v1 + 543) < 0)
  {
    operator delete(*v3);
  }

  if (*(v1 + 512) == 1 && *(v1 + 511) < 0)
  {
    operator delete(*(v1 + 488));
  }

  if (*(v1 + 480) == 1 && *(v1 + 479) < 0)
  {
    operator delete(*(v1 + 456));
  }

  sub_100283C80(v1 + 368);
  sub_100283AE0(v1 + 264);
  if (*(v1 + 256) == 1 && *(v1 + 255) < 0)
  {
    operator delete(*(v1 + 232));
  }

  sub_100283864(v1 + 72);
  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100283AE0(uint64_t a1)
{
  if (*(a1 + 96) == 1)
  {
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
  }

  return a1;
}

_BYTE *sub_100283B50(_BYTE *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[152] = 0;
  if (*(a2 + 152) == 1)
  {
    sub_1002832F0(__dst, a2);
    __dst[152] = 1;
  }

  return __dst;
}

void sub_100283B98(_Unwind_Exception *exception_object)
{
  if (*(v1 + 152) == 1)
  {
    sub_100270D58(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100283BB8(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[96] = 0;
  if (*(a2 + 96) == 1)
  {
    sub_1000DDB98(__dst, a2);
    __dst[96] = 1;
  }

  return __dst;
}

void sub_100283C00(_Unwind_Exception *exception_object)
{
  if (*(v1 + 96) == 1)
  {
    sub_1000DA290(v1);
  }

  _Unwind_Resume(exception_object);
}

char *sub_100283C20(char *__dst, uint64_t a2)
{
  *__dst = 0;
  __dst[80] = 0;
  if (*(a2 + 80) == 1)
  {
    sub_10028371C(__dst, a2);
  }

  return __dst;
}

void sub_100283C60(_Unwind_Exception *exception_object)
{
  if (*(v1 + 80) == 1)
  {
    sub_1000CFBA0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100283C80(uint64_t a1)
{
  if (*(a1 + 80) == 1)
  {
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
  }

  return a1;
}

uint64_t sub_100283CE0(uint64_t a1)
{
  if (*(a1 + 576) == 1 && *(a1 + 575) < 0)
  {
    operator delete(*(a1 + 552));
  }

  if (*(a1 + 544) == 1 && *(a1 + 543) < 0)
  {
    operator delete(*(a1 + 520));
  }

  if (*(a1 + 512) == 1 && *(a1 + 511) < 0)
  {
    operator delete(*(a1 + 488));
  }

  if (*(a1 + 480) == 1 && *(a1 + 479) < 0)
  {
    operator delete(*(a1 + 456));
  }

  if (*(a1 + 448) == 1)
  {
    if (*(a1 + 439) < 0)
    {
      operator delete(*(a1 + 416));
    }

    if (*(a1 + 415) < 0)
    {
      operator delete(*(a1 + 392));
    }

    if (*(a1 + 391) < 0)
    {
      operator delete(*(a1 + 368));
    }
  }

  if (*(a1 + 360) == 1)
  {
    if (*(a1 + 359) < 0)
    {
      operator delete(*(a1 + 336));
    }

    if (*(a1 + 335) < 0)
    {
      operator delete(*(a1 + 312));
    }

    if (*(a1 + 311) < 0)
    {
      operator delete(*(a1 + 288));
    }

    if (*(a1 + 287) < 0)
    {
      operator delete(*(a1 + 264));
    }
  }

  if (*(a1 + 256) == 1 && *(a1 + 255) < 0)
  {
    operator delete(*(a1 + 232));
  }

  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 216) == 1 && *(a1 + 215) < 0)
    {
      operator delete(*(a1 + 192));
    }

    if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
    {
      operator delete(*(a1 + 160));
    }

    if (*(a1 + 144) == 1 && *(a1 + 143) < 0)
    {
      operator delete(*(a1 + 120));
    }

    v3 = (a1 + 96);
    sub_10016C644(&v3);
    if (*(a1 + 95) < 0)
    {
      operator delete(*(a1 + 72));
    }
  }

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

uint64_t sub_100283ED8(uint64_t a1)
{
  if (*(a1 + 248) == 1)
  {
    if (*(a1 + 240) == 1 && *(a1 + 239) < 0)
    {
      operator delete(*(a1 + 216));
    }

    v3 = (a1 + 192);
    sub_1000087B4(&v3);
  }

  if (*(a1 + 184) == 1 && *(a1 + 183) < 0)
  {
    operator delete(*(a1 + 160));
  }

  if (*(a1 + 152) == 1 && *(a1 + 151) < 0)
  {
    operator delete(*(a1 + 128));
  }

  if (*(a1 + 120) == 1 && *(a1 + 119) < 0)
  {
    operator delete(*(a1 + 96));
  }

  if (*(a1 + 88) == 1 && *(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 56) == 1 && *(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100283FE4(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  v3 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 3);
  v4 = v3 + 1;
  if ((v3 + 1) > 0x2E8BA2E8BA2E8BALL)
  {
    sub_1000CE3D4();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3) > v4)
  {
    v4 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 3);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 3)) >= 0x1745D1745D1745DLL)
  {
    v7 = 0x2E8BA2E8BA2E8BALL;
  }

  else
  {
    v7 = v4;
  }

  v17 = a1;
  if (v7)
  {
    sub_10016F23C(a1, v7);
  }

  v14 = 0;
  v15 = 88 * v3;
  sub_100284144((88 * v3), a2, a3);
  v16 = (88 * v3 + 88);
  v8 = a1[1];
  v9 = 88 * v3 + *a1 - v8;
  sub_100284388(a1, *a1, v8, v9);
  v10 = *a1;
  *a1 = v9;
  v11 = a1[2];
  v13 = v16;
  *(a1 + 1) = v16;
  *&v16 = v10;
  *(&v16 + 1) = v11;
  v14 = v10;
  v15 = v10;
  sub_100284540(&v14);
  return v13;
}

void sub_100284130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100284540(va);
  _Unwind_Resume(a1);
}

void *sub_100284144(void *__dst, uint64_t a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v6, *a2, *(a2 + 8));
  }

  else
  {
    *v6 = *a2;
    v7 = *(a2 + 16);
  }

  v11[0] = 0;
  if (*(a3 + 23) < 0)
  {
    sub_100005F2C(&v12, *a3, *(a3 + 1));
  }

  else
  {
    v12 = *a3;
    v13 = *(a3 + 2);
  }

  v11[0] = 1;
  v8[0] = 0;
  sub_1002842CC(__dst, v6, v11, v8);
  if (v8[0] == 1)
  {
    if (v10 < 0)
    {
      operator delete(__p);
    }

    v8[0] = 0;
  }

  if (v11[0] == 1)
  {
    if (SHIBYTE(v13) < 0)
    {
      operator delete(v12);
    }

    v11[0] = 0;
  }

  if (SHIBYTE(v7) < 0)
  {
    operator delete(v6[0]);
  }

  return __dst;
}

void sub_10028426C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1002842CC(void *__dst, __int128 *a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v7;
  }

  sub_10016E9C0((__dst + 3), a3);
  sub_10016E9C0((__dst + 7), a4);
  return __dst;
}

void sub_100284344(_Unwind_Exception *exception_object)
{
  if (*(v1 + 24) == 1)
  {
    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    *(v1 + 24) = 0;
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100284388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v16 = a4;
  v13[0] = a1;
  v13[1] = &v15;
  v13[2] = &v16;
  v14 = 0;
  if (a2 == a3)
  {
    LOBYTE(v14) = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2 + 64;
    do
    {
      v8 = *(v7 - 64);
      *(a4 + 16) = *(v7 - 48);
      *a4 = v8;
      *(v7 - 56) = 0;
      *(v7 - 48) = 0;
      *(v7 - 64) = 0;
      *(a4 + 24) = 0;
      if (*(v7 - 40) == 1)
      {
        v9 = *(v7 - 32);
        *(a4 + 48) = *(v7 - 16);
        *(a4 + 32) = v9;
        *(v7 - 24) = 0;
        *(v7 - 16) = 0;
        *(v7 - 32) = 0;
        *(a4 + 24) = 1;
      }

      v10 = v7 - 64;
      *(a4 + 56) = 0;
      if (*(v7 - 8) == 1)
      {
        v11 = *v7;
        *(a4 + 80) = *(v7 + 16);
        *(a4 + 64) = v11;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        *v7 = 0;
        *(a4 + 56) = 1;
      }

      a4 += 88;
      v7 += 88;
    }

    while (v10 + 88 != a3);
    v16 = a4;
    LOBYTE(v14) = 1;
    while (v5 != a3)
    {
      sub_1002844B8(a1, v5);
      v5 += 88;
    }
  }

  return sub_10016F040(v13);
}

void sub_1002844B8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 56) == 1)
  {
    if (*(a2 + 87) < 0)
    {
      operator delete(*(a2 + 64));
    }

    *(a2 + 56) = 0;
  }

  if (*(a2 + 24) == 1)
  {
    if (*(a2 + 55) < 0)
    {
      operator delete(*(a2 + 32));
    }

    *(a2 + 24) = 0;
  }

  if (*(a2 + 23) < 0)
  {
    v3 = *a2;

    operator delete(v3);
  }
}

uint64_t sub_100284540(uint64_t a1)
{
  sub_100284578(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100284578(uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 88;
    sub_1002844B8(v5, v4 - 88);
  }
}

void sub_1002845C0(std::string **a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) < a4)
  {
    sub_10016D77C(a1);
    if (a4 <= 0x2AAAAAAAAAAAAAALL)
    {
      v9 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
      {
        v10 = 0x2AAAAAAAAAAAAAALL;
      }

      else
      {
        v10 = v9;
      }

      sub_100280AFC(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = a1[1] - v8;
  if (0xAAAAAAAAAAAAAAABLL * (v11 >> 5) >= a4)
  {
    sub_100280D3C(&v14, __str, a3, v8);
    sub_100280DC0(a1, v12);
  }

  else
  {
    sub_100280D3C(&v13, __str, (__str + v11), v8);
    a1[1] = sub_1002824F8(a1, (__str + v11), a3, a1[1]);
  }
}

uint64_t sub_10028470C(uint64_t a1, __int128 *a2)
{
  v2 = 0xF0B7672A07A44C6BLL * ((*(a1 + 8) - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x3D226357E16ECELL)
  {
    sub_1000CE3D4();
  }

  if (0xE16ECE540F4898D6 * ((*(a1 + 16) - *a1) >> 4) > v3)
  {
    v3 = 0xE16ECE540F4898D6 * ((*(a1 + 16) - *a1) >> 4);
  }

  if (0xF0B7672A07A44C6BLL * ((*(a1 + 16) - *a1) >> 4) >= 0x1E9131ABF0B767)
  {
    v6 = 0x3D226357E16ECELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    sub_100284D98(a1, v6);
  }

  v13 = 0;
  v14 = 1072 * v2;
  sub_100284850(1072 * v2, a2);
  v15 = 1072 * v2 + 1072;
  v7 = *(a1 + 8);
  v8 = 1072 * v2 + *a1 - v7;
  sub_100284DF4(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  sub_100284E64(&v13);
  return v12;
}

void sub_10028483C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100284E64(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100284850(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  v3 = *(a2 + 24);
  *(result + 40) = *(a2 + 5);
  *(result + 24) = v3;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 3) = 0;
  v4 = a2[3];
  *(result + 64) = *(a2 + 8);
  *(result + 48) = v4;
  *(a2 + 7) = 0;
  *(a2 + 8) = 0;
  *(a2 + 6) = 0;
  v5 = *(a2 + 72);
  *(result + 88) = *(a2 + 11);
  *(result + 72) = v5;
  *(a2 + 9) = 0;
  *(a2 + 10) = 0;
  *(a2 + 11) = 0;
  v6 = a2[6];
  *(result + 112) = *(a2 + 14);
  *(result + 96) = v6;
  *(a2 + 12) = 0;
  *(a2 + 13) = 0;
  *(a2 + 14) = 0;
  v7 = *(a2 + 120);
  *(result + 136) = *(a2 + 17);
  *(result + 120) = v7;
  *(a2 + 15) = 0;
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  v8 = a2[9];
  *(result + 160) = *(a2 + 20);
  *(result + 144) = v8;
  *(a2 + 18) = 0;
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  v9 = *(a2 + 168);
  *(result + 184) = *(a2 + 23);
  *(result + 168) = v9;
  *(a2 + 21) = 0;
  *(a2 + 22) = 0;
  *(a2 + 23) = 0;
  v10 = a2[12];
  *(result + 208) = *(a2 + 26);
  *(result + 192) = v10;
  *(a2 + 24) = 0;
  *(a2 + 25) = 0;
  *(a2 + 26) = 0;
  v11 = *(a2 + 216);
  *(result + 232) = *(a2 + 29);
  *(result + 216) = v11;
  *(a2 + 27) = 0;
  *(a2 + 28) = 0;
  *(a2 + 29) = 0;
  *(result + 240) = *(a2 + 240);
  v12 = *(a2 + 248);
  *(result + 264) = *(a2 + 33);
  *(result + 248) = v12;
  *(a2 + 32) = 0;
  *(a2 + 33) = 0;
  *(a2 + 31) = 0;
  v13 = a2[17];
  *(result + 288) = *(a2 + 144);
  *(result + 272) = v13;
  v14 = *(a2 + 296);
  *(result + 312) = *(a2 + 39);
  *(result + 296) = v14;
  *(a2 + 38) = 0;
  *(a2 + 39) = 0;
  *(a2 + 37) = 0;
  v15 = a2[20];
  *(result + 336) = *(a2 + 42);
  *(result + 320) = v15;
  *(a2 + 40) = 0;
  *(a2 + 41) = 0;
  *(a2 + 42) = 0;
  v16 = *(a2 + 344);
  *(result + 360) = *(a2 + 45);
  *(result + 344) = v16;
  *(a2 + 43) = 0;
  *(a2 + 44) = 0;
  *(a2 + 45) = 0;
  v17 = a2[23];
  *(result + 384) = *(a2 + 48);
  *(result + 368) = v17;
  *(a2 + 46) = 0;
  *(a2 + 47) = 0;
  *(a2 + 48) = 0;
  v18 = *(a2 + 392);
  *(result + 408) = *(a2 + 51);
  *(result + 392) = v18;
  *(a2 + 49) = 0;
  *(a2 + 50) = 0;
  *(a2 + 51) = 0;
  v19 = a2[26];
  *(result + 432) = *(a2 + 54);
  *(result + 416) = v19;
  *(a2 + 52) = 0;
  *(a2 + 53) = 0;
  *(a2 + 54) = 0;
  *(result + 440) = *(a2 + 220);
  *(result + 448) = 0;
  *(result + 520) = 0;
  if (*(a2 + 520) == 1)
  {
    v20 = a2[28];
    *(result + 464) = *(a2 + 58);
    *(result + 448) = v20;
    *(a2 + 57) = 0;
    *(a2 + 58) = 0;
    *(a2 + 56) = 0;
    v21 = *(a2 + 472);
    *(result + 488) = *(a2 + 61);
    *(result + 472) = v21;
    *(a2 + 60) = 0;
    *(a2 + 61) = 0;
    *(a2 + 59) = 0;
    v22 = a2[31];
    *(result + 512) = *(a2 + 64);
    *(result + 496) = v22;
    *(a2 + 63) = 0;
    *(a2 + 64) = 0;
    *(a2 + 62) = 0;
    *(result + 520) = 1;
  }

  *(result + 528) = 0;
  *(result + 576) = 0;
  if (*(a2 + 576) == 1)
  {
    v23 = a2[33];
    *(result + 544) = *(a2 + 68);
    *(result + 528) = v23;
    *(a2 + 68) = 0;
    *(a2 + 67) = 0;
    *(a2 + 66) = 0;
    v24 = *(a2 + 552);
    *(result + 568) = *(a2 + 71);
    *(result + 552) = v24;
    *(a2 + 71) = 0;
    *(a2 + 70) = 0;
    *(a2 + 69) = 0;
    *(result + 576) = 1;
  }

  *(result + 584) = *(a2 + 584);
  v25 = *(a2 + 600);
  *(result + 616) = *(a2 + 77);
  *(result + 600) = v25;
  a2[38] = 0u;
  *(a2 + 75) = 0;
  v26 = a2[39];
  *(result + 640) = *(a2 + 80);
  *(result + 624) = v26;
  *(a2 + 632) = 0u;
  *(a2 + 78) = 0;
  v27 = *(a2 + 648);
  *(result + 664) = *(a2 + 83);
  *(result + 648) = v27;
  *(a2 + 83) = 0;
  *(a2 + 648) = 0u;
  v28 = a2[42];
  *(result + 688) = *(a2 + 86);
  *(result + 672) = v28;
  *(a2 + 86) = 0;
  a2[42] = 0u;
  v29 = *(a2 + 696);
  *(result + 712) = *(a2 + 178);
  *(result + 696) = v29;
  *(result + 720) = 0;
  *(result + 728) = 0u;
  *(result + 720) = a2[45];
  *(result + 736) = *(a2 + 92);
  *(a2 + 92) = 0;
  a2[45] = 0u;
  *(result + 760) = 0;
  *(result + 744) = 0u;
  *(result + 744) = *(a2 + 93);
  *(result + 752) = a2[47];
  *(a2 + 95) = 0;
  *(a2 + 744) = 0u;
  *(result + 768) = 0;
  *(result + 792) = 0;
  if (*(a2 + 792) == 1)
  {
    v30 = a2[48];
    *(result + 784) = *(a2 + 98);
    *(result + 768) = v30;
    *(a2 + 98) = 0;
    *(a2 + 97) = 0;
    *(a2 + 96) = 0;
    *(result + 792) = 1;
  }

  *(result + 800) = 0;
  *(result + 824) = 0;
  if (*(a2 + 824) == 1)
  {
    v31 = a2[50];
    *(result + 816) = *(a2 + 102);
    *(result + 800) = v31;
    *(a2 + 102) = 0;
    *(a2 + 101) = 0;
    *(a2 + 100) = 0;
    *(result + 824) = 1;
  }

  *(result + 832) = 0;
  *(result + 856) = 0;
  if (*(a2 + 856) == 1)
  {
    v32 = a2[52];
    *(result + 848) = *(a2 + 106);
    *(result + 832) = v32;
    *(a2 + 106) = 0;
    *(a2 + 105) = 0;
    *(a2 + 104) = 0;
    *(result + 856) = 1;
  }

  *(result + 864) = *(a2 + 216);
  v33 = *(a2 + 872);
  *(result + 888) = *(a2 + 111);
  *(result + 872) = v33;
  *(a2 + 111) = 0;
  *(a2 + 110) = 0;
  *(a2 + 109) = 0;
  v34 = a2[56];
  v35 = a2[57];
  *(result + 921) = *(a2 + 921);
  *(result + 896) = v34;
  *(result + 912) = v35;
  v36 = a2[59];
  *(result + 960) = *(a2 + 120);
  *(result + 944) = v36;
  *(a2 + 120) = 0;
  *(a2 + 119) = 0;
  *(a2 + 118) = 0;
  v37 = *(a2 + 968);
  *(result + 977) = *(a2 + 977);
  *(result + 968) = v37;
  *(result + 1000) = 0;
  *(result + 1024) = 0;
  if (*(a2 + 1024) == 1)
  {
    v38 = *(a2 + 1000);
    *(result + 1016) = *(a2 + 127);
    *(result + 1000) = v38;
    *(a2 + 127) = 0;
    *(a2 + 126) = 0;
    *(a2 + 125) = 0;
    *(result + 1024) = 1;
  }

  *(result + 1032) = 0;
  *(result + 1056) = 0;
  if (*(a2 + 1056) == 1)
  {
    v39 = *(a2 + 1032);
    *(result + 1048) = *(a2 + 131);
    *(result + 1032) = v39;
    *(a2 + 131) = 0;
    *(a2 + 130) = 0;
    *(a2 + 129) = 0;
    *(result + 1056) = 1;
  }

  v40 = *(a2 + 532);
  *(result + 1066) = *(a2 + 1066);
  *(result + 1064) = v40;
  return result;
}

void sub_100284D98(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x3D226357E16ECFLL)
  {
    operator new();
  }

  sub_100013D10();
}

void sub_100284DF4(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      v8 = sub_100284850(a4, v7);
      v7 += 67;
      a4 = v8 + 1072;
    }

    while (v7 != a3);
    while (v6 != a3)
    {
      sub_10027C3B4(v6);
      v6 += 1072;
    }
  }
}

uint64_t sub_100284E64(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 1072;
    sub_10027C3B4(i - 1072);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t sub_100284EB4(uint64_t a1)
{
  if (*(a1 + 264) == 1)
  {
    if (*(a1 + 255) < 0)
    {
      operator delete(*(a1 + 232));
    }

    if (*(a1 + 231) < 0)
    {
      operator delete(*(a1 + 208));
    }

    if (*(a1 + 207) < 0)
    {
      operator delete(*(a1 + 184));
    }
  }

  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 175) < 0)
    {
      operator delete(*(a1 + 152));
    }

    if (*(a1 + 151) < 0)
    {
      operator delete(*(a1 + 128));
    }

    if (*(a1 + 127) < 0)
    {
      operator delete(*(a1 + 104));
    }

    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }
  }

  if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
  {
    operator delete(*(a1 + 48));
  }

  if (*(a1 + 32) == 1 && *(a1 + 31) < 0)
  {
    operator delete(*(a1 + 8));
  }

  return a1;
}

uint64_t sub_100284F98(uint64_t a1, __int128 *a2)
{
  v4 = sub_10006F264(a1, a2);
  sub_10006F264(v4 + 32, a2 + 2);
  sub_10006F264(a1 + 64, a2 + 4);
  sub_10006F264(a1 + 96, a2 + 6);
  sub_10006F264(a1 + 128, a2 + 8);
  sub_10006F264(a1 + 160, a2 + 10);
  sub_1002850E8(a1 + 192, (a2 + 12));
  return a1;
}

void sub_10028500C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 184) == 1 && *(v1 + 183) < 0)
  {
    operator delete(*(v1 + 160));
  }

  if (*(v1 + 152) == 1 && *(v1 + 151) < 0)
  {
    operator delete(*(v1 + 128));
  }

  if (*(v1 + 120) == 1 && *(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

  if (*(v1 + 88) == 1 && *(v1 + 87) < 0)
  {
    operator delete(*(v1 + 64));
  }

  if (*(v1 + 56) == 1 && *(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 24) == 1 && *(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002850E8(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 56) = 0;
  if (*(a2 + 56) == 1)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    sub_10004EFD0(a1, *a2, *(a2 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 8) - *a2) >> 3));
    sub_10006F264(a1 + 24, (a2 + 24));
    *(a1 + 56) = 1;
  }

  return a1;
}

void sub_10028516C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000087B4(va);
  if (*(v2 + 56) == 1)
  {
    sub_10026A640(v2);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1002851A0(uint64_t a1)
{
  if (*(a1 + 159) < 0)
  {
    operator delete(*(a1 + 136));
  }

  if (*(a1 + 135) < 0)
  {
    operator delete(*(a1 + 112));
  }

  if (*(a1 + 96) == 1 && *(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

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

_BYTE *sub_100285238(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[160] = 0;
  if (*(a2 + 160) == 1)
  {
    sub_1002852A0(a1, a2);
    a1[160] = 1;
  }

  return a1;
}

void sub_100285280(_Unwind_Exception *exception_object)
{
  if (*(v1 + 160) == 1)
  {
    sub_1002851A0(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002852A0(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 40);
  *a1 = *a2;
  v5 = a1 + 40;
  sub_10006F264(a1 + 8, (a2 + 8));
  sub_10006F264(v5, v4);
  sub_10006F264(a1 + 72, (a2 + 72));
  *(a1 + 104) = *(a2 + 104);
  if (*(a2 + 135) < 0)
  {
    sub_100005F2C((a1 + 112), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v6 = *(a2 + 112);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 112) = v6;
  }

  if (*(a2 + 159) < 0)
  {
    sub_100005F2C((a1 + 136), *(a2 + 136), *(a2 + 144));
  }

  else
  {
    v7 = *(a2 + 136);
    *(a1 + 152) = *(a2 + 152);
    *(a1 + 136) = v7;
  }

  return a1;
}

void sub_10028535C(_Unwind_Exception *exception_object)
{
  if (*(v1 + 135) < 0)
  {
    operator delete(*(v1 + 112));
  }

  if (*(v1 + 96) == 1 && *(v1 + 95) < 0)
  {
    operator delete(*(v1 + 72));
  }

  if (*(v1 + 64) == 1 && *(v1 + 63) < 0)
  {
    operator delete(*v2);
  }

  if (*(v1 + 32) == 1 && *(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002853E4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_100034CCC(result, a4);
  }

  return result;
}

void sub_10028543C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void *sub_100285458(void *a1)
{
  *a1 = off_101EA3428;
  v2 = a1[7];
  if (v2)
  {
    a1[8] = v2;
    operator delete(v2);
  }

  *a1 = off_101EA33E8;
  v3 = a1[2];
  if (v3)
  {
    a1[3] = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_1002854D4(uint64_t a1)
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

uint64_t sub_100285554(uint64_t a1)
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

uint64_t *sub_1002855D4(uint64_t **a1, uint64_t *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    sub_10027B06C(result);

    operator delete();
  }

  return result;
}

void sub_100285640(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E363E8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t **sub_1002856BC(uint64_t **result, void *a2, void *a3)
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
          *(v8 + 8) = *(v9 + 8);
          std::string::operator=((v8 + 5), (v9 + 5));
          sub_1001723F0(v5, v14);
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

    result = sub_10028582C(&v12);
  }

  if (a2 != a3)
  {
    sub_100285884();
  }

  return result;
}

void sub_100285818(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10028582C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028582C(uint64_t a1)
{
  sub_100077CD4(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100077CD4(*a1, v2);
  }

  return a1;
}

void sub_1002859AC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1002859C8(v3, v2);
  _Unwind_Resume(a1);
}

void sub_1002859C8(uint64_t a1, void **__p)
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

void *sub_100285A2C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v5[0] = off_101E36438;
  v5[1] = v3;
  v5[3] = v5;
  sub_100285FB4(v5, a1);
  sub_10027B148(v5);
  return a1;
}

uint64_t sub_100285B30(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E36438;
  a2[1] = v2;
  return result;
}

uint64_t sub_100285B64(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100285BB0(uint64_t a1, const char **a2)
{
  v5 = 0;
  sub_100285C98(a2, &v5);
  sub_10000501C(&__p, "/cc/props/csn_to_ids_device_id_map");
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

void sub_100285C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, xpc_object_t object, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  xpc_release(object);
  if (a16 < 0)
  {
    operator delete(__p);
  }

  xpc_release(*(v16 - 24));
  _Unwind_Resume(a1);
}

void sub_100285C98(const char **a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      sub_100285E04(v7 + 32, &value);
      xpc_array_append_value(v5, value);
      xpc_release(value);
      v9 = *(v7 + 1);
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
          v10 = *(v7 + 2);
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v6);
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_100285E04(const char *a1@<X0>, xpc_object_t *a2@<X8>)
{
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
  v16 = xpc_data_create(a1, 0x10uLL);
  if (!v16)
  {
    v16 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "first";
  sub_10000F688(&v14, &v16, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v16);
  v16 = 0;
  v9 = *(a1 + 2);
  v8 = a1 + 16;
  v7 = v9;
  if (v8[23] >= 0)
  {
    v10 = v8;
  }

  else
  {
    v10 = v7;
  }

  v12 = xpc_string_create(v10);
  if (!v12)
  {
    v12 = xpc_null_create();
  }

  v14 = &v18;
  v15 = "second";
  sub_10000F688(&v14, &v12, &v13);
  xpc_release(v13);
  v13 = 0;
  xpc_release(v12);
  v12 = 0;
  v11 = v18;
  *a2 = v18;
  if (v11)
  {
    xpc_retain(v11);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v18);
}

void *sub_100285FB4(void *result, void *a2)
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

void sub_100286214(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void *sub_100286220(void *a1)
{
  *a1 = off_101E364C8;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10028626C(void *a1)
{
  *a1 = off_101E364C8;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void *sub_10028634C(void *result, void *a2)
{
  v3 = result[1];
  v2 = result[2];
  *a2 = off_101E364C8;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  a2[3] = result[3];
  return result;
}

void sub_10028638C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_10028639C(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_1002863DC(void *a1)
{
  v2 = a1[2];
  if (v2)
  {
    v3 = a1[3];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[1] && *(v3 + 156) == 5)
      {
        *(v3 + 157) = 1;
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_100286448(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100286504(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E36548;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_100286530(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_1002865CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100286688(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E365C8;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_1002866B4(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_100286750(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028680C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E36648;
  a2[1] = v2;
  return result;
}

xpc_type_t sub_100286838(uint64_t a1, xpc_object_t *a2)
{
  v3 = *(a1 + 8);
  result = xpc_get_type(*a2);
  if (result == &_xpc_type_string)
  {
    v8 = *v3;
    result = ctu::rest::detail::read_enum_string_value(&v8, a2, v5);
    *v3 = v8;
  }

  else if (result == &_xpc_type_BOOL || result == &_xpc_type_int64 || result == &_xpc_type_uint64)
  {
    result = xpc::dyn_cast_or_default(a2, 0, v5);
    *v3 = result;
  }

  return result;
}

uint64_t sub_1002868D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100286920(void *a1)
{
  *a1 = off_101E366C8;
  sub_10000FF50((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100286970(void *a1)
{
  *a1 = off_101E366C8;
  sub_10000FF50((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100286A68(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100286A88(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E366C8;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_1000224C8(a2 + 32, a1 + 32);
}

void sub_100286AF4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100286B14(void *a1)
{
  sub_100286FDC(a1 + 8);

  operator delete(a1);
}

void sub_100286B50(void *a1, unsigned __int8 *a2, const void **a3)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = *a2;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8 && a1[2])
    {
      v9 = *(v7 + 72);
      if (v9)
      {
        v10 = std::__shared_weak_count::lock(v9);
        if (v10)
        {
          v11 = *(v7 + 64);
          if (v11)
          {
            *(v7 + 151) = 0;
            v12 = *(v7 + 40);
            if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              *&buf[4] = sub_100649C38(1);
              _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Response for: [%s]", buf, 0xCu);
            }

            memset(v18, 0, sizeof(v18));
            sub_1002584E0(v7, v18);
            sub_100265720(v7, a3, v18);
            sub_100266930(v7, v18);
            if (v6)
            {
              if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_101768BCC();
              }

              v13 = 70004;
              v14 = 1;
            }

            else
            {
              if (*a3)
              {
LABEL_31:
                sub_10000FFD0((a1 + 4), 1);
                *buf = v18;
                sub_1000087B4(buf);
LABEL_32:
                sub_100004A34(v10);
LABEL_33:
                sub_100004A34(v8);
                return;
              }

              v13 = 70001;
              if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
              {
                sub_101768B98();
              }

              v14 = 5;
            }

            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
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
            v25 = 0u;
            v26 = 0u;
            v23 = 0u;
            v24 = 0u;
            v21 = 0u;
            v22 = 0u;
            memset(v20, 0, sizeof(v20));
            *buf = 0u;
            sub_10000501C(buf, "NoCarrierName");
            WORD4(v20[0]) = 257;
            *(v20 + 10) = 0;
            *(v20 + 13) = 0;
            DWORD1(v20[1]) = v14;
            BYTE8(v20[1]) = 1;
            HIDWORD(v20[1]) = v13;
            LOBYTE(v21) = 1;
            BYTE8(v21) = 0;
            LOBYTE(v23) = 0;
            WORD4(v23) = 0;
            if (*(v7 + 145))
            {
              v16 = 4;
            }

            else
            {
              v16 = sub_100931584(*(v7 + 144));
            }

            BYTE10(v23) = v16;
            v17 = (*(*v11 + 224))(v11);
            BYTE11(v23) = sub_100932A98(v17, *(v7 + 632));
            WORD6(v23) = 1;
            LODWORD(v24) = 0;
            BYTE8(v24) = 0;
            LOBYTE(v26) = 0;
            BYTE8(v26) = 0;
            LOBYTE(v28) = 0;
            BYTE8(v28) = 0;
            LOBYTE(v29) = 0;
            BYTE4(v31) = 0;
            BYTE8(v31) = 0;
            LOBYTE(v32) = 0;
            BYTE8(v32) = 0;
            LOBYTE(v33) = 0;
            BYTE8(v34) = 0;
            LOBYTE(v35) = 0;
            BYTE8(v36) = 0;
            LOBYTE(v37) = 0;
            BYTE8(v38) = 0;
            LOBYTE(v39) = 0;
            BYTE8(v40) = 0;
            LOBYTE(v41) = 0;
            BYTE8(v42) = 0;
            *(&v29 + 1) = 0;
            v30 = 0uLL;
            LOBYTE(v31) = 0;
            (*(*v11 + 104))(v11, buf);
            sub_10028290C(buf);
            goto LABEL_31;
          }
        }
      }

      else
      {
        v10 = 0;
      }

      if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101768C00();
      }

      if (!v10)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
  v15 = *&buf[8];
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  if (v8)
  {
    goto LABEL_33;
  }
}

void sub_100286EF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, char a29)
{
  sub_100004A34(v30);
  sub_100004A34(v29);
  _Unwind_Resume(a1);
}

uint64_t sub_100286F90(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100286FDC(uint64_t a1)
{
  sub_10000FF50(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_100287028(uint64_t a1)
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

void *sub_1002870A8(void *a1)
{
  *a1 = off_101E36758;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002870F8(void *a1)
{
  *a1 = off_101E36758;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_1002871F0(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100287210(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E36758;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a2 + 32, a1 + 32);
}

void sub_10028727C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028729C(void *a1)
{
  sub_100287520(a1 + 8);

  operator delete(a1);
}

void sub_1002872D8(void *a1, unsigned __int8 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6 && a1[2])
    {
      v7 = *(v5 + 40);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I Got response for kConnectToWifiReq. timeout: %d", buf, 8u);
      }

      sub_10025329C(v5, 1);
      *buf = 0;
      sub_100930308(0, buf);
      v10 = *buf;
      if (*buf)
      {
        CFRetain(*buf);
      }

      sub_100252C7C(v5, &v10);
      sub_10001021C(&v10);
      v8 = a1[7];
      if (!v8)
      {
        sub_100022DB4();
      }

      (*(*v8 + 48))(v8);
      sub_10001021C(buf);
LABEL_14:
      sub_100004A34(v6);
      return;
    }
  }

  else
  {
    v6 = 0;
  }

  ctu::OsLogContext::OsLogContext(buf, kCtLoggingSystemName, "cp.tr.ctr");
  v9 = v12;
  ctu::OsLogContext::~OsLogContext(buf);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  if (v6)
  {
    goto LABEL_14;
  }
}

void sub_100287478(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1002874D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100287520(uint64_t a1)
{
  sub_10002B644(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

void *sub_10028756C(void *a1)
{
  *a1 = off_101E367D8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002875B8(void *a1)
{
  *a1 = off_101E367D8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_100287698(uint64_t result, uint64_t a2)
{
  *a2 = off_101E367D8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002876D8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002876E8(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100287728(void *a1, unsigned __int8 *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6 && a1[2])
    {
      if (v4)
      {
        if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101768C34();
        }
      }

      goto LABEL_10;
    }
  }

  else
  {
    v6 = 0;
  }

  ctu::OsLogContext::OsLogContext(v8, kCtLoggingSystemName, "cp.tr.ctr");
  v7 = v8[1];
  ctu::OsLogContext::~OsLogContext(v8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

LABEL_10:
  sub_100004A34(v6);
}

void sub_1002877F8(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100287810(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028785C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    sub_100022DB4();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void *sub_1002878A4(void *a1)
{
  *a1 = off_101E36858;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002878F0(void *a1)
{
  *a1 = off_101E36858;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1002879D0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E36858;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_100287A10(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_100287A20(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100287A60(void *a1, uint64_t a2, const void **a3, uint64_t a4)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(v10, *a2, *(a2 + 8));
  }

  else
  {
    *v10 = *a2;
    v11 = *(a2 + 16);
  }

  sub_1000636AC(v17, a4);
  v7 = a1[1];
  v15 = 0;
  if (!v18)
  {
    sub_100022DB4();
  }

  (*(*v18 + 48))(v18, &v15);
  sub_10001021C(&v15);
  v8 = a1[3];
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9 && a1[2])
    {
      v12 = v7;
      sub_100010024(&v13, a3);
      if (SHIBYTE(v11) < 0)
      {
        sub_100005F2C(__p, v10[0], v10[1]);
      }

      else
      {
        *__p = *v10;
        __p[2] = v11;
      }

      v16[0] = 0;
      v16[1] = 0;
      sub_100004AA0(v16, (v7 + 8));
      operator new();
    }
  }

  else
  {
    v9 = 0;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    sub_101768C68();
  }

  if (v9)
  {
    sub_100004A34(v9);
  }

  sub_10006372C(v17);
  if (SHIBYTE(v11) < 0)
  {
    operator delete(v10[0]);
  }
}

void sub_100287CCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  sub_10001021C((v21 + 8));
  sub_100004A34(v20);
  sub_10006372C(v22 - 88);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100287D2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_100287D78(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = sub_10092E9A4((v1 + 8));
  v4 = v2[5];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = (v1 + 16);
    if (*(v1 + 39) < 0)
    {
      v5 = *v5;
    }

    LODWORD(buf.__r_.__value_.__l.__data_) = 136315394;
    *(buf.__r_.__value_.__r.__words + 4) = v5;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2080;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = sub_100649BB4(v3);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Received: [%s], consent state : %s", &buf, 0x16u);
  }

  memset(&buf, 0, sizeof(buf));
  v6 = v2[44];
  if (v6 != v2[42])
  {
    std::string::operator=(&buf, (v6 + 320));
  }

  v14 = 0;
  v15 = 0;
  sub_10000501C(v12, "");
  sub_10000501C(__p, "");
  sub_10026C910(v2, &buf, 3, 0, &v15, &v14, v12, __p);
  if (v11 < 0)
  {
    operator delete(__p[0]);
  }

  if (v13 < 0)
  {
    operator delete(v12[0]);
  }

  sub_10001021C(&v14);
  sub_100005978(&v15);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  sub_100287F94(&v9);
  return sub_1000049E0(&v8);
}

void sub_100287F18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (a33 < 0)
  {
    operator delete(__p);
  }

  sub_100287F94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100287F94(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    sub_10001021C((v1 + 8));
    operator delete();
  }

  return result;
}

uint64_t sub_100287FF4(uint64_t a1)
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

void *sub_100288074(void *a1)
{
  *a1 = off_101E368E8;
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1002880C0(void *a1)
{
  *a1 = off_101E368E8;
  v1 = a1[3];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

uint64_t sub_1002881A0(uint64_t result, uint64_t a2)
{
  *a2 = off_101E368E8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1002881E0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void sub_1002881F0(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void sub_100288230(void *a1, unsigned __int8 *a2, CFDictionaryRef *a3)
{
  v4 = a1[3];
  if (v4)
  {
    v6 = *a2;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v4);
    if (v8 && a1[2])
    {
      *(v7 + 151) = 0;
      if (*a3)
      {
        v9 = CFDictionaryGetCount(*a3) > 0;
      }

      else
      {
        v9 = 0;
      }

      v11 = *(v7 + 40);
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = sub_100649C38(0);
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Response for: [%s]", &buf, 0xCu);
      }

      if (((v6 | v9) & 1) != 0 || !capabilities::ct::supportsSequoia(v12))
      {
        v17 = 0;
        v18 = 0;
        v19 = 0;
        sub_1002584E0(v7, &v17);
        if (sub_100265720(v7, a3, &v17))
        {
          buf = v7;
          v22 = 0;
          v23 = 0;
          sub_10004EFD0(&buf + 8, v17, v18, 0xAAAAAAAAAAAAAAABLL * ((v18 - v17) >> 3));
          sub_10025A714(v7);
          v16[0] = buf;
          v16[1] = 0uLL;
          sub_10004EFD0(v16 + 8, *(&buf + 1), v22, 0xAAAAAAAAAAAAAAABLL * ((v22 - *(&buf + 1)) >> 3));
          v20 = 0;
          operator new();
        }

        *(v7 + 150) = 1;
        sub_10064BEE8(v7 + 1056, 3);
        v14 = os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR);
        v15 = 70002;
        if (v6)
        {
          if (v14)
          {
            sub_101768D14();
          }

          v15 = 70004;
        }

        else if (v14)
        {
          sub_101768CE0();
        }

        sub_10064BF04(v7 + 1056, v15);
        sub_10025B320(v7);
        *&buf = &v17;
        sub_1000087B4(&buf);
      }

      else
      {
        v13 = *(v7 + 40);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I response is empty. source is different class", &buf, 2u);
        }

        *(v7 + 150) = 1;
        *(v7 + 159) = 1;
        sub_10025B320(v7);
      }

LABEL_28:
      sub_100004A34(v8);
      return;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "cp.tr.ctr");
  v10 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  if (v8)
  {
    goto LABEL_28;
  }
}

void sub_10028856C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21)
{
  sub_10002B644(&a17);
  sub_1000087B4(&a16);
  sub_1000087B4(&a16);
  a21 = &a13;
  sub_1000087B4(&a21);
  sub_100004A34(v21);
  _Unwind_Resume(a1);
}

uint64_t sub_1002885F0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028863C(uint64_t a1)
{
  *a1 = off_101E36958;
  v3 = (a1 + 16);
  sub_1000087B4(&v3);
  return a1;
}

void sub_100288694(uint64_t a1)
{
  *a1 = off_101E36958;
  v1 = (a1 + 16);
  sub_1000087B4(&v1);
  operator delete();
}

uint64_t sub_100288798(void *a1, void *a2)
{
  v2 = a1[1];
  *a2 = off_101E36958;
  a2[1] = v2;
  a2[3] = 0;
  a2[4] = 0;
  a2[2] = 0;
  return sub_10004EFD0((a2 + 2), a1[2], a1[3], 0xAAAAAAAAAAAAAAABLL * ((a1[3] - a1[2]) >> 3));
}

void sub_100288810(void **a1)
{
  v2 = a1 + 2;
  sub_1000087B4(&v2);
  operator delete(a1);
}

void sub_100288850(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100266930(v1, (a1 + 16));
  if (sub_1002758B8(v1))
  {
    v2 = *(v1 + 40);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(v1 + 328);
      v3 = *(v1 + 336);
      v13[0] = ", ";
      v13[1] = 2;
      memset(&v12, 0, sizeof(v12));
      if (v4 != v3)
      {
        if (*(v4 + 343) < 0)
        {
          sub_100005F2C(&__p, *(v4 + 320), *(v4 + 328));
        }

        else
        {
          __p = *(v4 + 320);
        }

        v12 = __p;
        for (i = v4 + 1072; i != v3; i += 1072)
        {
          sub_100074CFC(v13, &__p);
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

          std::string::append(&v12, p_p, size);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          if (*(i + 343) < 0)
          {
            sub_100005F2C(&__p, *(i + 320), *(i + 328));
          }

          else
          {
            v8 = *(i + 320);
            __p.__r_.__value_.__r.__words[2] = *(i + 336);
            *&__p.__r_.__value_.__l.__data_ = v8;
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v9 = &__p;
          }

          else
          {
            v9 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v10 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v10 = __p.__r_.__value_.__l.__size_;
          }

          std::string::append(&v12, v9, v10);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }
      }

      v11 = &v12;
      if ((v12.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v11 = v12.__r_.__value_.__r.__words[0];
      }

      LODWORD(__p.__r_.__value_.__l.__data_) = 136315138;
      *(__p.__r_.__value_.__r.__words + 4) = v11;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I preflight iccids : [%s]", &__p, 0xCu);
      if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v12.__r_.__value_.__l.__data_);
      }
    }

    sub_10025DE4C(v1);
  }

  else
  {
    *(v1 + 150) = 1;

    sub_10025B320(v1);
  }
}

void sub_100288A98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100288AE0(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100288B2C(uint64_t a1)
{
  *a1 = off_101E369E8;
  sub_10000FF50(a1 + 128);
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v4 = (a1 + 88);
  sub_1000087B4(&v4);
  v4 = (a1 + 64);
  sub_1000087B4(&v4);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100288BC4(uint64_t a1)
{
  *a1 = off_101E369E8;
  sub_10000FF50(a1 + 128);
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = (a1 + 88);
  sub_1000087B4(&v3);
  v3 = (a1 + 64);
  sub_1000087B4(&v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_100288D14(uint64_t a1)
{
  sub_10000FF50(a1 + 128);
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = (a1 + 88);
  sub_1000087B4(&v3);
  v3 = (a1 + 64);
  sub_1000087B4(&v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }
}

void sub_100288D90(uint64_t a1)
{
  sub_10000FF50(a1 + 128);
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = (a1 + 88);
  sub_1000087B4(&v3);
  v3 = (a1 + 64);
  sub_1000087B4(&v3);
  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete(a1);
}

void sub_100288E14(void *a1)
{
  v2 = a1[1];
  sub_1000224C8(v3, (a1 + 16));
  sub_10025298C(v2, a1 + 2, a1 + 8, a1 + 11, a1 + 5, v3);
}

void sub_100288E9C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10000FF50(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100288EB8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100288F04(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_100288F5C(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_100288F5C(uint64_t result, int *a2, int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_100288FE4(v5, v5 + 1, v4 + 8);
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

uint64_t sub_100288FE4(void *a1, uint64_t *a2, int *a3)
{
  v4 = 0;
  v5 = 0;
  result = *sub_10002E2F4(a1, a2, &v5, &v4, a3);
  if (!result)
  {
    sub_100285910();
  }

  return result;
}

uint64_t sub_100289074(uint64_t a1, unsigned __int8 *a2)
{
  v4 = 0;
  v2 = *sub_100175454(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void sub_100289118(void *a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_array_create(0, 0);
  if (v4 || (v4 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v4) == &_xpc_type_array)
    {
      xpc_retain(v4);
      v5 = v4;
    }

    else
    {
      v5 = xpc_null_create();
    }
  }

  else
  {
    v5 = xpc_null_create();
    v4 = 0;
  }

  xpc_release(v4);
  v8 = *a1;
  v6 = a1 + 1;
  v7 = v8;
  if (v8 != v6)
  {
    do
    {
      sub_100289284((v7 + 4), &value);
      xpc_array_append_value(v5, value);
      xpc_release(value);
      v9 = v7[1];
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
          v10 = v7[2];
          v11 = *v10 == v7;
          v7 = v10;
        }

        while (!v11);
      }

      v7 = v10;
    }

    while (v10 != v6);
  }

  *a2 = v5;
  if (v5)
  {
    xpc_retain(v5);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v5);
}

void sub_100289284(uint64_t a1@<X0>, xpc_object_t *a2@<X8>)
{
  v4 = xpc_dictionary_create(0, 0, 0);
  v5 = v4;
  if (v4)
  {
    v19 = v4;
  }

  else
  {
    v5 = xpc_null_create();
    v19 = v5;
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
  v19 = v6;
LABEL_9:
  xpc_release(v5);
  if (*(a1 + 23) >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v17 = xpc_string_create(v7);
  if (!v17)
  {
    v17 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "first";
  sub_10000F688(&v15, &v17, &object);
  xpc_release(object);
  object = 0;
  xpc_release(v17);
  v17 = 0;
  v10 = *(a1 + 24);
  v9 = a1 + 24;
  v8 = v10;
  if (*(v9 + 23) >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v13 = xpc_string_create(v11);
  if (!v13)
  {
    v13 = xpc_null_create();
  }

  v15 = &v19;
  v16 = "second";
  sub_10000F688(&v15, &v13, &v14);
  xpc_release(v14);
  v14 = 0;
  xpc_release(v13);
  v13 = 0;
  v12 = v19;
  *a2 = v19;
  if (v12)
  {
    xpc_retain(v12);
  }

  else
  {
    *a2 = xpc_null_create();
  }

  xpc_release(v19);
}

uint64_t **sub_10028943C(uint64_t **result, void *a2, void *a3)
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
          *(v8 + 2) = *(v9 + 2);
          std::string::operator=(v8 + 2, v9 + 2);
          sub_1002895AC(v5, v14);
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

    result = sub_100289634(&v12);
  }

  if (a2 != a3)
  {
    sub_10028968C();
  }

  return result;
}

void sub_100289598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100289634(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1002895AC(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    while (2)
    {
      while (2)
      {
        v3 = v4;
        v5 = 32;
        while (1)
        {
          v6 = *(a2 + v5);
          v7 = *(v3 + v5);
          if (v6 != v7)
          {
            break;
          }

          if (++v5 == 48)
          {
            goto LABEL_9;
          }
        }

        if (v6 < v7)
        {
          v4 = *v3;
          v8 = v3;
          if (*v3)
          {
            continue;
          }

          goto LABEL_12;
        }

        break;
      }

LABEL_9:
      v4 = v3[1];
      if (v4)
      {
        continue;
      }

      break;
    }

    v8 = v3 + 1;
  }

  else
  {
    v8 = a1 + 1;
  }

LABEL_12:
  sub_1000070DC(a1, v3, v8, a2);
  return a2;
}

uint64_t sub_100289634(uint64_t a1)
{
  sub_100045B14(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_100045B14(*a1, v2);
  }

  return a1;
}

void sub_1002897CC(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_1001AE05C(v3, v2);
  _Unwind_Resume(a1);
}

uint64_t sub_1002897E8(uint64_t a1)
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

void *sub_10028986C(void *a1)
{
  *a1 = off_101E36A68;
  v2 = a1[8];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[8];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_1002898E8(void *a1)
{
  *a1 = off_101E36A68;
  v2 = a1[8];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[8];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[3];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete();
}

void sub_100289A4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E36A68;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 56);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 56) = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 64);
  *(a2 + 64) = v6;
  if (v6)
  {
    dispatch_retain(v6);
    v7 = *(a2 + 64);
    if (v7)
    {

      dispatch_group_enter(v7);
    }
  }
}

void sub_100289B0C(void *a1)
{
  v2 = a1[8];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[8];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[5];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = a1[3];
  if (v6)
  {

    std::__shared_weak_count::__release_weak(v6);
  }
}

void sub_100289B80(void *__p)
{
  v2 = __p[8];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[8];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[7];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = __p[5];
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = __p[3];
  if (v6)
  {
    std::__shared_weak_count::__release_weak(v6);
  }

  operator delete(__p);
}

void sub_100289BF0(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v3 = a2[1];
  v14 = *a2;
  v15 = v3;
  v5 = *(a2 + 1);
  v16 = v5;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  v6 = a1[3];
  if (v6)
  {
    v13 = v5;
    v7 = a1[1];
    v8 = std::__shared_weak_count::lock(v6);
    if (v8 && a1[2])
    {
      if (v4)
      {
        if ((v7 + 192) != &v15)
        {
          sub_100289FF0(v7 + 192, v3, v13, 0x6DB6DB6DB6DB6DB7 * ((v13 - v3) >> 3));
        }

        v17 = v7;
        sub_100004AA0(&v23, (v7 + 8));
        v9 = v24;
        v18 = v23;
        v19 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_weak_owners_, 1uLL, memory_order_relaxed);
          sub_100004A34(v9);
        }

        v10 = a1[7];
        v20 = a1[6];
        v21 = v10;
        if (v10)
        {
          atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
        }

        v11 = a1[8];
        v22 = v11;
        if (v11)
        {
          dispatch_retain(v11);
          dispatch_group_enter(v11);
        }

        v25 = 0;
        operator new();
      }

      if (os_log_type_enabled(*(v7 + 40), OS_LOG_TYPE_ERROR))
      {
        sub_101768D48();
      }

      sub_10064BEE8(v7 + 1056, 2);
      *(v7 + 1096) = HIDWORD(v14);
      *(v7 + 1100) = 1;
      *(v7 + 150) = 1;
      sub_10025B320(v7);
LABEL_22:
      sub_100004A34(v8);
      goto LABEL_23;
    }
  }

  else
  {
    v8 = 0;
  }

  ctu::OsLogContext::OsLogContext(&v17, kCtLoggingSystemName, "cp.tr.ctr");
  v12 = v18;
  ctu::OsLogContext::~OsLogContext(&v17);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  if (v8)
  {
    goto LABEL_22;
  }

LABEL_23:
  v17 = &v15;
  sub_10027B3D0(&v17);
}

void sub_100289EE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, dispatch_object_t);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  va_copy(va2, va1);
  v17 = va_arg(va2, void **);
  sub_10002B644(va2);
  sub_1002690E8(va);
  sub_100004A34(v7);
  sub_10027B3D0(va1);
  _Unwind_Resume(a1);
}

uint64_t sub_100289F50(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100289F9C(void *a1)
{
  v2 = a1[5];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[5];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[4];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[2];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_100289FF0(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_10028A16C(a1);
    if (a4 <= 0x492492492492492)
    {
      v9 = 0xDB6DB6DB6DB6DB6ELL * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((*(a1 + 16) - *a1) >> 3)) >= 0x249249249249249)
      {
        v10 = 0x492492492492492;
      }

      else
      {
        v10 = v9;
      }

      sub_10028A1D4(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x6DB6DB6DB6DB6DB7 * (v11 >> 3) >= a4)
  {
    sub_10028A31C(&v16, __str, a3, v8);
    v13 = v12;
    v14 = *(a1 + 8);
    if (v14 != v12)
    {
      do
      {
        v14 -= 56;
        sub_1001E0640(v14);
      }

      while (v14 != v13);
    }

    *(a1 + 8) = v13;
  }

  else
  {
    sub_10028A31C(&v15, __str, (__str + v11), v8);
    *(a1 + 8) = sub_10028A224(a1, __str + v11, a3, *(a1 + 8));
  }
}

void sub_10028A16C(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 56;
        sub_1001E0640(v3);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10028A1D4(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    sub_10028A39C(a1, a2);
  }

  sub_1000CE3D4();
}

uint64_t sub_10028A224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v7 = 0;
    do
    {
      v8 = a4 + v7;
      v9 = (a2 + v7);
      if (*(a2 + v7 + 23) < 0)
      {
        sub_100005F2C(v8, *v9, *(v9 + 1));
      }

      else
      {
        v10 = *v9;
        *(v8 + 16) = *(v9 + 2);
        *v8 = v10;
      }

      v11 = a4 + v7;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      v12 = a4 + v7 + 24;
      *(v12 + 16) = 0;
      sub_100034C50(v12, *(a2 + v7 + 24), *(a2 + v7 + 32), *(a2 + v7 + 32) - *(a2 + v7 + 24));
      *(a4 + v7 + 48) = *(a2 + v7 + 48);
      v7 += 56;
    }

    while (a2 + v7 != a3);
    a4 += v7;
  }

  return a4;
}

void sub_10028A2D4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 + v2 - 56;
    v5 = -v2;
    do
    {
      sub_1001E0640(v4);
      v4 -= 56;
      v5 += 56;
    }

    while (v5);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10028A31C(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str != a3)
  {
    do
    {
      std::string::operator=(this, v5);
      if (this != v5)
      {
        sub_1001122C4(this[1].__r_.__value_.__r.__words, v5[1].__r_.__value_.__l.__data_, v5[1].__r_.__value_.__l.__size_, v5[1].__r_.__value_.__l.__size_ - v5[1].__r_.__value_.__r.__words[0]);
      }

      this[2].__r_.__value_.__r.__words[0] = v5[2].__r_.__value_.__r.__words[0];
      v5 = (v5 + 56);
      this = (this + 56);
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void sub_10028A39C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_100013D10();
}

void *sub_10028A3F8(void *a1)
{
  *a1 = off_101E36AE8;
  v2 = a1[6];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[6];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

void sub_10028A468(void *a1)
{
  *a1 = off_101E36AE8;
  v2 = a1[6];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[6];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete();
}

void sub_10028A5A8(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E36AE8;
  *(a2 + 8) = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 16), 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 40);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 40) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a1 + 48);
  *(a2 + 48) = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = *(a2 + 48);
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void sub_10028A650(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[6];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = a1[3];
  if (v5)
  {

    std::__shared_weak_count::__release_weak(v5);
  }
}

void sub_10028A6B8(void *__p)
{
  v2 = __p[6];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[6];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[5];
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = __p[3];
  if (v5)
  {
    std::__shared_weak_count::__release_weak(v5);
  }

  operator delete(__p);
}

void sub_10028A71C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v11 = v3;
  v4 = *(a2 + 16);
  v12 = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v5 = *(a1 + 24);
  if (v5)
  {
    v10 = v4;
    v6 = *(a1 + 8);
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && *(a1 + 16))
    {
      v8 = *(v6 + 40);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 134217984;
        *(&buf + 4) = 0x8F5C28F5C28F5C29 * ((v10 - v3) >> 3);
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I Retrieved %ld blacklist plans", &buf, 0xCu);
      }

      if ((v6 + 216) != &v11)
      {
        sub_10028A944(v6 + 216, v11, v12, 0x8F5C28F5C28F5C29 * ((v12 - v11) >> 3));
      }

      **(a1 + 32) = 1;
LABEL_13:
      sub_100004A34(v7);
      goto LABEL_14;
    }
  }

  else
  {
    v7 = 0;
  }

  ctu::OsLogContext::OsLogContext(&buf, kCtLoggingSystemName, "cp.tr.ctr");
  v9 = *(&buf + 1);
  ctu::OsLogContext::~OsLogContext(&buf);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  if (v7)
  {
    goto LABEL_13;
  }

LABEL_14:
  *&buf = &v11;
  sub_10027B2AC(&buf);
}

void sub_10028A8C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  sub_100004A34(v7);
  sub_10027B2AC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028A8F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028A944(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) < a4)
  {
    sub_10028AABC(a1);
    if (a4 <= 0x147AE147AE147AELL)
    {
      v9 = 0x1EB851EB851EB852 * ((*(a1 + 16) - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8F5C28F5C28F5C29 * ((*(a1 + 16) - *a1) >> 3) >= 0xA3D70A3D70A3D7)
      {
        v10 = 0x147AE147AE147AELL;
      }

      else
      {
        v10 = v9;
      }

      sub_10028AB1C(a1, v10);
    }

    sub_1000CE3D4();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8F5C28F5C28F5C29 * (v11 >> 3) >= a4)
  {
    sub_10028AE10(&v16, __str, a3, v8);
    v14 = v13;
    result = *(a1 + 8);
    if (result != v13)
    {
      do
      {
        result = sub_10027B330(result - 200);
      }

      while (result != v14);
    }

    *(a1 + 8) = v14;
  }

  else
  {
    sub_10028AE10(&v15, __str, (__str + v11), v8);
    result = sub_10028AB6C(a1, (__str + v11), a3, *(a1 + 8));
    *(a1 + 8) = result;
  }

  return result;
}

void sub_10028AABC(void **a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = v1;
    if (v3 != v1)
    {
      do
      {
        v3 = sub_10027B330(v3 - 200);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void sub_10028AB1C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    sub_10028AEBC(a1, a2);
  }

  sub_1000CE3D4();
}

char *sub_10028AB6C(int a1, __int128 *a2, __int128 *a3, char *__dst)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      sub_10028ABF0(__dst, v6);
      v6 = (v6 + 200);
      __dst += 200;
      v7 -= 200;
    }

    while (v6 != a3);
  }

  return __dst;
}

void sub_10028ABCC(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 200;
    do
    {
      v4 = sub_10027B330(v4) - 200;
      v2 += 200;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

char *sub_10028ABF0(char *__dst, __int128 *a2)
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

  if (*(a2 + 143) < 0)
  {
    sub_100005F2C(__dst + 120, *(a2 + 15), *(a2 + 16));
  }

  else
  {
    v9 = *(a2 + 120);
    *(__dst + 17) = *(a2 + 17);
    *(__dst + 120) = v9;
  }

  sub_10028ADA8(__dst + 144, (a2 + 9));
  return __dst;
}

void sub_10028AD14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 119) < 0)
  {
    operator delete(*(v1 + 96));
  }

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

_BYTE *sub_10028ADA8(_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[48] = 0;
  if (*(a2 + 48) == 1)
  {
    sub_10016DCE0(a1, a2);
    a1[48] = 1;
  }

  return a1;
}

void sub_10028ADF0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 48) == 1)
  {
    sub_101768D7C(v1);
  }

  _Unwind_Resume(exception_object);
}

std::string *sub_10028AE10(int a1, std::string *__str, std::string *a3, std::string *this)
{
  v5 = __str;
  if (__str == a3)
  {
    return __str;
  }

  v6 = a3;
  do
  {
    std::string::operator=(this, v5);
    std::string::operator=(this + 1, v5 + 1);
    std::string::operator=(this + 2, v5 + 2);
    std::string::operator=(this + 3, v5 + 3);
    std::string::operator=(this + 4, v5 + 4);
    std::string::operator=(this + 5, v5 + 5);
    sub_10016DC58(&this[6], &v5[6]);
    this = (this + 200);
    v5 = (v5 + 200);
  }

  while (v5 != v6);
  return v6;
}

void sub_10028AEBC(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x147AE147AE147AFLL)
  {
    operator new();
  }

  sub_100013D10();
}

uint64_t sub_10028AF18(uint64_t a1)
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

void *sub_10028AF98(void *a1)
{
  *a1 = off_101E36B78;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  return a1;
}

void sub_10028AFF0(void *a1)
{
  *a1 = off_101E36B78;
  v2 = a1[1];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[1];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  operator delete();
}

void sub_10028B0DC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = off_101E36B78;
  a2[1] = v2;
  if (v2)
  {
    dispatch_retain(v2);
    v4 = a2[1];
    if (v4)
    {

      dispatch_group_enter(v4);
    }
  }
}

void sub_10028B148(NSObject **a1)
{
  sub_10028B1D4(a1 + 1);

  operator delete(a1);
}

uint64_t sub_10028B188(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10028B1D4(NSObject **a1)
{
  v2 = *a1;
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *a1;
    if (*a1)
    {

      dispatch_release(v3);
    }
  }
}

uint64_t sub_10028B224(uint64_t a1)
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

void sub_10028B2C4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101E36C08;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_10028B328(void *a1)
{
  *a1 = off_101E36C58;
  v2 = a1[3];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[3];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  return a1;
}

void sub_10028B38C(void *a1)
{
  *a1 = off_101E36C58;
  v2 = a1[3];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = a1[3];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = a1[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete();
}

void sub_10028B4A0(void *a1, void *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  *a2 = off_101E36C58;
  a2[1] = v4;
  a2[2] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = a1[3];
  a2[3] = v5;
  if (v5)
  {
    dispatch_retain(v5);
    v6 = a2[3];
    if (v6)
    {

      dispatch_group_enter(v6);
    }
  }
}

void sub_10028B528(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = *(a1 + 24);
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = *(a1 + 16);
  if (v4)
  {

    sub_100004A34(v4);
  }
}

void sub_10028B584(void *__p)
{
  v2 = __p[3];
  if (v2)
  {
    dispatch_group_leave(v2);
    v3 = __p[3];
    if (v3)
    {
      dispatch_release(v3);
    }
  }

  v4 = __p[2];
  if (v4)
  {
    sub_100004A34(v4);
  }

  operator delete(__p);
}

void sub_10028B5DC(uint64_t a1, void *a2)
{
  v3 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];
  v7 = v3;
  v8 = v4;
  if (a2[2])
  {
    *(v4 + 16) = &v8;
    *a2 = v5;
    *v5 = 0;
    v5[1] = 0;
  }

  else
  {
    v7 = &v8;
    v3 = &v8;
  }

  v6 = *(a1 + 8);
  if (v6 != &v7)
  {
    sub_10028B6C8(v6, v3, &v8);
    v4 = v8;
  }

  sub_10028B908(&v7, v4);
}

uint64_t sub_10028B67C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t **sub_10028B6C8(uint64_t **result, void *a2, void *a3)
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

    v13 = result;
    v14 = v8;
    v15 = v8;
    if (v8)
    {
      v14 = sub_1000685CC(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          sub_10028B850((v8 + 4), (v9 + 4));
          v16 = 0;
          v10 = sub_1001355F4(v5, &v16, v15 + 4);
          sub_1000070DC(v5, v16, v10, v15);
          v15 = v14;
          if (v14)
          {
            v14 = sub_1000685CC(v14);
          }

          v11 = v9[1];
          if (v11)
          {
            do
            {
              a2 = v11;
              v11 = *v11;
            }

            while (v11);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v12 = *a2 == v9;
              v9 = a2;
            }

            while (!v12);
          }

          v8 = v15;
          if (v15)
          {
            v12 = a2 == a3;
          }

          else
          {
            v12 = 1;
          }

          v9 = a2;
        }

        while (!v12);
      }
    }

    result = sub_10028B8B0(&v13);
  }

  if (a2 != a3)
  {
    sub_10028B99C();
  }

  return result;
}

uint64_t sub_10028B850(uint64_t a1, uint64_t a2)
{
  std::string::operator=(a1, a2);
  *(a1 + 24) = *(a2 + 24);
  std::string::operator=((a1 + 32), (a2 + 32));
  std::string::operator=((a1 + 56), (a2 + 56));
  std::string::operator=((a1 + 80), (a2 + 80));
  *(a1 + 104) = *(a2 + 104);
  return a1;
}

uint64_t sub_10028B8B0(uint64_t a1)
{
  sub_10028B908(*a1, *(a1 + 16));
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      do
      {
        v2 = v3;
        v3 = *(v3 + 16);
      }

      while (v3);
      *(a1 + 8) = v2;
    }

    sub_10028B908(*a1, v2);
  }

  return a1;
}

void sub_10028B908(uint64_t a1, char *a2)
{
  if (a2)
  {
    sub_10028B908(a1, *a2);
    sub_10028B908(a1, *(a2 + 1));
    if (a2[135] < 0)
    {
      operator delete(*(a2 + 14));
    }

    if (a2[111] < 0)
    {
      operator delete(*(a2 + 11));
    }

    if (a2[87] < 0)
    {
      operator delete(*(a2 + 8));
    }

    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
    }

    operator delete(a2);
  }
}

void sub_10028B99C()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  sub_10028BA24();
}

void sub_10028BA00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_10028BC20(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028BA9C(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10028BC20(v3, v2);
  _Unwind_Resume(a1);
}

void *sub_10028BAB8(void *__dst, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    sub_100005F2C(__dst, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    __dst[2] = *(a2 + 2);
    *__dst = v4;
  }

  sub_10028BB30((__dst + 3), a2 + 24);
  return __dst;
}

void sub_10028BB14(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10028BB30(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  if (*(a2 + 31) < 0)
  {
    sub_100005F2C((a1 + 8), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v4 = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 8) = v4;
  }

  if (*(a2 + 55) < 0)
  {
    sub_100005F2C((a1 + 32), *(a2 + 32), *(a2 + 40));
  }

  else
  {
    v5 = *(a2 + 32);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 32) = v5;
  }

  if (*(a2 + 79) < 0)
  {
    sub_100005F2C((a1 + 56), *(a2 + 56), *(a2 + 64));
  }

  else
  {
    v6 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v6;
  }

  *(a1 + 80) = *(a2 + 80);
  return a1;
}

void sub_10028BBEC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 55) < 0)
  {
    operator delete(*(v1 + 32));
  }

  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028BC20(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 135) < 0)
    {
      operator delete(__p[14]);
    }

    if (*(__p + 111) < 0)
    {
      operator delete(__p[11]);
    }

    if (*(__p + 87) < 0)
    {
      operator delete(__p[8]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10028BCB4(uint64_t a1)
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

void *sub_10028BD34(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = v1[6];
    if (v2)
    {
      sub_100004A34(v2);
    }

    v3 = v1[4];
    if (v3)
    {
      std::__shared_weak_count::__release_weak(v3);
    }

    v4 = v1[1];
    if (v4)
    {
      sub_100004A34(v4);
    }

    operator delete();
  }

  return result;
}

void *sub_10028BDA0(uint64_t a1)
{
  v7 = a1;
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 16);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      v5 = v4;
      if (*(a1 + 24) && **(a1 + 40) == 1)
      {
        sub_100257534(v3, *a1);
        v8[0] = off_101E36CE8;
        v8[1] = v3;
        v8[3] = v8;
        sub_10025A0C4(v3, v8);
        sub_10002B644(v8);
      }

      sub_100004A34(v5);
    }
  }

  return sub_10028BD34(&v7);
}

void sub_10028BE84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_10002B644(&a10);
  sub_100004A34(v10);
  sub_10028BD34(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10028BF20(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E36CE8;
  a2[1] = v2;
  return result;
}

void sub_10028BF4C(uint64_t a1)
{
  v1 = *(a1 + 8);
  *(v1 + 150) = 1;
  sub_1002584E0(v1, v2);
  sub_100266930(v1, v2);
  v3 = v2;
  sub_1000087B4(&v3);
  sub_10025B320(v1);
}

void sub_10028BFAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_1000087B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028BFC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_10028C010(void *a1)
{
  *a1 = off_101E36D68;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10028C060(void *a1)
{
  *a1 = off_101E36D68;
  sub_10002B644((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10028C158(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_10028C178(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E36D68;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10009CF40(a2 + 32, a1 + 32);
}

void sub_10028C1E4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028C204(void *a1)
{
  sub_100287520(a1 + 8);

  operator delete(a1);
}

void sub_10028C240(void *a1, xpc_object_t *a2)
{
  object = *a2;
  *a2 = xpc_null_create();
  v4 = xpc::dyn_cast_or_default(&object, 0, v3);
  v5 = a1[3];
  if (v5)
  {
    v6 = a1[1];
    v7 = std::__shared_weak_count::lock(v5);
    if (v7 && a1[2])
    {
      v11 = v6;
      LOBYTE(v12) = v4;
      sub_10009CF40(&v13, (a1 + 4));
      v10[0] = 0;
      v10[1] = 0;
      sub_100004AA0(v10, (v6 + 8));
      operator new();
    }
  }

  else
  {
    v7 = 0;
  }

  ctu::OsLogContext::OsLogContext(&v11, kCtLoggingSystemName, "cp.tr.ctr");
  v8 = v12;
  ctu::OsLogContext::~OsLogContext(&v11);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  if (v7)
  {
    sub_100004A34(v7);
  }

  xpc_release(object);
}

void sub_10028C420(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, xpc_object_t object)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

uint64_t sub_10028C47C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_10028C4C8(uint64_t *a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = (*v1 + 960);
  sub_1002472DC(*v1 + 952, *v3);
  *(v2 + 952) = v3;
  *(v2 + 960) = 0u;
  sub_1000CFC30(v2 + 928, *(v2 + 936));
  *(v2 + 928) = v2 + 936;
  *(v2 + 936) = 0u;
  v4 = *(v2 + 40);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(v1 + 8);
    *buf = 16777472;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Carrier bundle update error: %hhu", buf, 5u);
  }

  v6 = *(v1 + 40);
  if (!v6)
  {
    sub_100022DB4();
  }

  (*(*v6 + 48))(v6);
  sub_10028C5E0(&v9);
  return sub_1000049E0(&v8);
}

void sub_10028C5C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_10028C5E0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_10028C5E0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_10002B644(v1 + 16);
    operator delete();
  }

  return result;
}

void *sub_10028C630(void *result, void *a2)
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

void sub_10028C890(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

void sub_10028C89C(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_10028C89C(a1, *a2);
    sub_10028C89C(a1, a2[1]);
    sub_10028C8F8((a2 + 4));

    operator delete(a2);
  }
}

void sub_10028C8F8(uint64_t a1)
{
  sub_100111F5C(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t sub_10028C948(uint64_t a1)
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

void *sub_10028C9CC(void *result, void *a2)
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

void sub_10028CC2C(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10028CC38(uint64_t a1, uint64_t a2)
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

uint64_t sub_10028CCD0(uint64_t a1, uint64_t a2)
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

void *sub_10028CD68(void *result, void *a2)
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

void sub_10028CFC8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_10004F058(a1);
}

uint64_t sub_10028CFD4(uint64_t a1)
{
  *a1 = off_101E36DE8;
  v4 = (a1 + 80);
  sub_1000087B4(&v4);
  v4 = (a1 + 56);
  sub_10027EE48(&v4);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10028D058(uint64_t a1)
{
  *a1 = off_101E36DE8;
  v3 = (a1 + 80);
  sub_1000087B4(&v3);
  v3 = (a1 + 56);
  sub_10027EE48(&v3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

uint64_t sub_10028D170(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E36DE8;
  result = sub_10028D694(a2 + 8, a1 + 8);
  *(a2 + 124) = 0;
  *(a2 + 121) = 0;
  return result;
}

void sub_10028D1C4(uint64_t a1)
{
  v3 = (a1 + 80);
  sub_1000087B4(&v3);
  v3 = (a1 + 56);
  sub_10027EE48(&v3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void sub_10028D228(uint64_t a1)
{
  v3 = (a1 + 80);
  sub_1000087B4(&v3);
  v3 = (a1 + 56);
  sub_10027EE48(&v3);
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(a1);
}

void sub_10028D294(uint64_t a1, char *a2)
{
  v3 = *(a1 + 24);
  if (!v3)
  {
    v7 = 0;
    goto LABEL_17;
  }

  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = std::__shared_weak_count::lock(v3);
  v7 = v6;
  if (!v6 || !*(a1 + 16))
  {
LABEL_17:
    ctu::OsLogContext::OsLogContext(v23, kCtLoggingSystemName, "cp.tr.ctr");
    v17 = *(&v23[0] + 1);
    ctu::OsLogContext::~OsLogContext(v23);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_101768474();
    }

    goto LABEL_19;
  }

  if (v4)
  {
    v8 = *(a1 + 56);
    v19 = v6;
    v20 = *(a1 + 64);
    if (v8 == v20)
    {
LABEL_11:
      v7 = v19;
      sub_10026BF38(v5, (a1 + 56));
      v11 = *(v5 + 328);
      v12 = *(v5 + 336);
      v13 = 126 - 2 * __clz(0xF0B7672A07A44C6BLL * (v12 - v11));
      if (v12 == v11)
      {
        v14 = 0;
      }

      else
      {
        v14 = v13;
      }

      sub_10028D7BC(v11, v12, v23, v14, 1);
      v15 = *(v5 + 328);
      v16 = *(v5 + 336);
      *(v5 + 352) = v15;
      if (v15 == v16)
      {
        if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
        {
          sub_101768E38();
        }

        if (*(v5 + 440))
        {
          sub_10025B4DC(v5 + 416, 0, 56);
        }

        sub_10028C948(v5 + 416);
      }

      else
      {
        sub_100254E74(v5);
      }
    }

    else
    {
      while (1)
      {
        bzero(v23, 0x430uLL);
        v24 = 4;
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0;
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0;
        v43 = 0;
        v42 = 0;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0;
        v49 = 0;
        v50 = 0;
        v48 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0;
        v55 = 0;
        v56 = 0;
        v54 = 0;
        v57 = 0;
        if (!sub_100256EF0(v5, (a1 + 32), v23, v8, (a1 + 80), (a1 + 104), (v5 + 824)))
        {
          break;
        }

        v58 = *(a1 + 120);
        dispatch_assert_queue_V2(*(v5 + 24));
        v9 = *(v5 + 336);
        if (v9 >= *(v5 + 344))
        {
          v10 = sub_10028470C(v5 + 328, v23);
        }

        else
        {
          v10 = sub_100284850(v9, v23) + 1072;
        }

        *(v5 + 336) = v10;
        sub_10027C3B4(v23);
        v8 += 10;
        if (v8 == v20)
        {
          goto LABEL_11;
        }
      }

      v18 = *(v5 + 40);
      v7 = v19;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        sub_100649738(v21);
        sub_101768DC4(v21, buf, v18);
      }

      sub_10026EC24(v5, v8 + 40);
      if (*(v5 + 440))
      {
        sub_10025B4DC(v5 + 416, 0, 51);
      }

      sub_10028C948(v5 + 416);
      sub_10027C3B4(v23);
    }

LABEL_19:
    if (!v7)
    {
      return;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(*(v5 + 40), OS_LOG_TYPE_ERROR))
  {
    sub_101768D90();
  }

  if (*(v5 + 440))
  {
    sub_10025B4DC(v5 + 416, 0, 56);
  }

  sub_10028C948(v5 + 416);
LABEL_20:
  sub_100004A34(v7);
}

void sub_10028D604(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  sub_10027C3B4(va);
  if (a3)
  {
    sub_100004A34(a3);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_10028D648(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028D694(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 16);
  *(a1 + 16) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  if (*(a2 + 47) < 0)
  {
    sub_100005F2C((a1 + 24), *(a2 + 24), *(a2 + 32));
  }

  else
  {
    v5 = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 24) = v5;
  }

  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  sub_10027EB58(a1 + 48, *(a2 + 48), *(a2 + 56), 0xCCCCCCCCCCCCCCCDLL * ((*(a2 + 56) - *(a2 + 48)) >> 5));
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  sub_10004EFD0(a1 + 72, *(a2 + 72), *(a2 + 80), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 80) - *(a2 + 72)) >> 3));
  v6 = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 96) = v6;
  return a1;
}

void sub_10028D778(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  v12 = *(v10 + 16);
  if (v12)
  {
    std::__shared_weak_count::__release_weak(v12);
  }

  _Unwind_Resume(exception_object);
}

__int128 *sub_10028D7BC(__int128 *result, __int128 *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
  v10 = (v8 - 67);
  for (i = 1 - a4; ; ++i)
  {
    v12 = a2 - v9;
    v13 = 0xF0B7672A07A44C6BLL * (a2 - v9);
    if (v13 > 2)
    {
      break;
    }

    if (v13 < 2)
    {
      return result;
    }

    if (v13 == 2)
    {
      v23 = a2 - 67;
      v24 = v9;
      result = sub_10031A0B8((a2 - 67), v9);
      if (result)
      {
        v21 = &v24;
        v22 = &v23;
        return sub_10028DBAC(v21, v22);
      }

      return result;
    }

LABEL_10:
    if (v12 <= 25727)
    {
      if (a5)
      {

        return sub_10028DE28(v9, a2);
      }

      else
      {

        return sub_10028DF58(v9, a2);
      }
    }

    if (i == 1)
    {
      if (v9 != a2)
      {

        return sub_10028E6CC(v9, a2, a2, a3);
      }

      return result;
    }

    v14 = v13 >> 1;
    v15 = &v9[67 * (v13 >> 1)];
    v16 = a2 - 67;
    if (v12 < 0x21801)
    {
      sub_10028DC44(v15, v9, v16);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_10028DC44(v9, v15, v16);
      v17 = &v9[67 * v14];
      sub_10028DC44(v9 + 67, v17 - 67, a2 - 134);
      sub_10028DC44(v9 + 134, v17 + 67, a2 - 201);
      sub_10028DC44(v17 - 67, v15, v17 + 67);
      sub_10028E634(v9, v15);
      if (a5)
      {
        goto LABEL_17;
      }
    }

    if ((sub_10031A0B8(v10, v9) & 1) == 0)
    {
      result = sub_10028E054(v9, a2);
      v8 = result;
      goto LABEL_24;
    }

LABEL_17:
    v18 = sub_10028E200(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = sub_10028E3AC(v9, v18);
    v8 = v18 + 67;
    result = sub_10028E3AC(v18 + 67, a2);
    if (!result)
    {
      a4 = -i;
      if (v20)
      {
        goto LABEL_2;
      }

LABEL_22:
      result = sub_10028D7BC(v9, v18, a3, -i, a5 & 1);
      v8 = v18 + 67;
LABEL_24:
      a5 = 0;
      a4 = -i;
      goto LABEL_2;
    }

    a2 = v18;
    if (v20)
    {
      return result;
    }
  }

  if (v13 == 3)
  {

    return sub_10028DC44(v9, v9 + 67, a2 - 67);
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {

      return sub_10028DCFC(v9, v9 + 67, v9 + 134, v9 + 201, a2 - 67);
    }

    goto LABEL_10;
  }

  v23 = a2 - 67;
  v24 = v9;
  v27 = v9 + 67;
  v28 = v9;
  v25 = a2 - 67;
  v26 = v9 + 134;
  sub_10028DC44(v9, v9 + 67, v9 + 134);
  result = sub_10031A0B8((a2 - 67), (v9 + 134));
  if (result)
  {
    sub_10028DBAC(&v26, &v25);
    result = sub_10031A0B8(v26, (v9 + 67));
    if (result)
    {
      sub_10028DBAC(&v27, &v26);
      result = sub_10031A0B8(v27, v9);
      if (result)
      {
        v21 = &v28;
        v22 = &v27;
        return sub_10028DBAC(v21, v22);
      }
    }
  }

  return result;
}

uint64_t sub_10028DBAC(__int128 **a1, __int128 **a2)
{
  v2 = *a1;
  v3 = *a2;
  bzero(v5, 0x430uLL);
  sub_100284850(v5, v2);
  sub_10026A694(v2, v3);
  sub_10026A694(v3, v5);
  return sub_10027C3B4(v5);
}

uint64_t sub_10028DC44(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v10 = a2;
  v11 = a1;
  v9 = a3;
  v5 = sub_10031A0B8(a2, a1);
  result = sub_10031A0B8(a3, a2);
  if (v5)
  {
    if (result)
    {
      v7 = &v11;
LABEL_9:
      v8 = &v9;
      goto LABEL_10;
    }

    sub_10028DBAC(&v11, &v10);
    if (sub_10031A0B8(v9, v10))
    {
      v7 = &v10;
      goto LABEL_9;
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    sub_10028DBAC(&v10, &v9);
    if (sub_10031A0B8(v10, v11))
    {
      v7 = &v11;
      v8 = &v10;
LABEL_10:
      sub_10028DBAC(v7, v8);
    }
  }

  return 1;
}

uint64_t sub_10028DCFC(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v14 = a2;
  v15 = a1;
  v12 = a4;
  v13 = a3;
  v11 = a5;
  v19 = a1;
  v17 = a3;
  v18 = a2;
  v16 = a4;
  sub_10028DC44(a1, a2, a3);
  if (sub_10031A0B8(a4, a3))
  {
    sub_10028DBAC(&v17, &v16);
    if (sub_10031A0B8(v17, a2))
    {
      sub_10028DBAC(&v18, &v17);
      if (sub_10031A0B8(v18, a1))
      {
        sub_10028DBAC(&v19, &v18);
      }
    }
  }

  result = sub_10031A0B8(a5, a4);
  if (result)
  {
    sub_10028DBAC(&v12, &v11);
    result = sub_10031A0B8(v12, a3);
    if (result)
    {
      sub_10028DBAC(&v13, &v12);
      result = sub_10031A0B8(v13, a2);
      if (result)
      {
        sub_10028DBAC(&v14, &v13);
        result = sub_10031A0B8(v14, a1);
        if (result)
        {
          return sub_10028DBAC(&v15, &v14);
        }
      }
    }
  }

  return result;
}

uint64_t sub_10028DE28(uint64_t result, __int128 *a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1072;
    if ((result + 1072) != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = sub_10031A0B8(v4, v7);
        if (result)
        {
          bzero(v11, 0x430uLL);
          sub_100284850(v11, v6);
          v8 = v5;
          while (1)
          {
            sub_10026A694(v3 + v8 + 1072, (v3 + v8));
            if (!v8)
            {
              break;
            }

            v9 = sub_10031A0B8(v11, v3 + v8 - 1072);
            v8 -= 1072;
            if ((v9 & 1) == 0)
            {
              v10 = v3 + v8 + 1072;
              goto LABEL_10;
            }
          }

          v10 = v3;
LABEL_10:
          sub_10026A694(v10, v11);
          result = sub_10027C3B4(v11);
        }

        v4 = (v6 + 67);
        v5 += 1072;
      }

      while (v6 + 67 != a2);
    }
  }

  return result;
}

uint64_t sub_10028DF58(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    v4 = result + 1072;
    while (v4 != a2)
    {
      v5 = v4;
      result = sub_10031A0B8(v4, v3);
      if (result)
      {
        bzero(v6, 0x430uLL);
        sub_100284850(v6, v5);
        do
        {
          sub_10026A694((v3 + 67), v3);
          v3 -= 67;
        }

        while ((sub_10031A0B8(v6, v3) & 1) != 0);
        sub_10026A694((v3 + 67), v6);
        result = sub_10027C3B4(v6);
      }

      v4 = (v5 + 67);
      v3 = v5;
    }
  }

  return result;
}

__int128 *sub_10028E054(__int128 *a1, __int128 *a2)
{
  v11 = a2;
  v12 = a1;
  bzero(v13, 0x430uLL);
  sub_100284850(v13, a1);
  if (sub_10031A0B8(v13, (a2 - 67)))
  {
    v4 = a1;
    do
    {
      v4 += 67;
      v12 = v4;
    }

    while ((sub_10031A0B8(v13, v4) & 1) == 0);
  }

  else
  {
    v5 = a1 + 67;
    do
    {
      v4 = v5;
      v12 = v5;
      if (v5 >= v11)
      {
        break;
      }

      v6 = sub_10031A0B8(v13, v5);
      v5 = v4 + 67;
    }

    while (!v6);
  }

  v7 = v11;
  if (v4 < v11)
  {
    do
    {
      v7 -= 67;
      v11 = v7;
    }

    while ((sub_10031A0B8(v13, v7) & 1) != 0);
    v4 = v12;
  }

  if (v4 < v7)
  {
    do
    {
      sub_10028DBAC(&v12, &v11);
      do
      {
        v12 += 67;
      }

      while (!sub_10031A0B8(v13, v12));
      do
      {
        v11 -= 67;
      }

      while ((sub_10031A0B8(v13, v11) & 1) != 0);
      v4 = v12;
    }

    while (v12 < v11);
  }

  v8 = v4 - 67;
  if (v8 != a1)
  {
    sub_10026A694(a1, v8);
  }

  sub_10026A694(v8, v13);
  v9 = v12;
  sub_10027C3B4(v13);
  return v9;
}

void sub_10028E1D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028E200(__int128 *a1, __int128 *a2)
{
  v11 = a2;
  bzero(v13, 0x430uLL);
  sub_100284850(v13, a1);
  v3 = 0;
  do
  {
    v12 = &a1[v3 + 67];
    v3 += 67;
  }

  while ((sub_10031A0B8(v12, v13) & 1) != 0);
  v4 = v11;
  if (v3 == 67)
  {
    v7 = a1 + 67;
    do
    {
      if (v7 >= v4)
      {
        break;
      }

      v4 -= 67;
      v11 = v4;
    }

    while ((sub_10031A0B8(v4, v13) & 1) == 0);
  }

  else
  {
    v5 = v11 - 67;
    do
    {
      v11 = v5;
      v6 = sub_10031A0B8(v5, v13);
      v5 -= 67;
    }

    while (!v6);
    v7 = v12;
  }

  v8 = v7;
  if (v7 < v11)
  {
    do
    {
      sub_10028DBAC(&v12, &v11);
      do
      {
        v12 += 67;
      }

      while ((sub_10031A0B8(v12, v13) & 1) != 0);
      do
      {
        v11 -= 67;
      }

      while (!sub_10031A0B8(v11, v13));
      v8 = v12;
    }

    while (v12 < v11);
  }

  v9 = (v8 - 67);
  if (v8 - 67 != a1)
  {
    sub_10026A694(a1, v8 - 67);
  }

  sub_10026A694(v9, v13);
  sub_10027C3B4(v13);
  return v9;
}

void sub_10028E388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028E3AC(__int128 *a1, __int128 *a2)
{
  v14 = a2;
  v15 = a1;
  v4 = 0xF0B7672A07A44C6BLL * (a2 - a1);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        sub_10028DC44(a1, a1 + 67, a2 - 67);
        return 1;
      case 4:
        v18 = a1 + 67;
        *&v19[0] = a1;
        v11 = (a2 - 67);
        v16 = a2 - 67;
        v17 = a1 + 134;
        sub_10028DC44(a1, a1 + 67, a1 + 134);
        if (!sub_10031A0B8(v11, (a1 + 134)))
        {
          return 1;
        }

        sub_10028DBAC(&v17, &v16);
        if (!sub_10031A0B8(v17, (a1 + 67)))
        {
          return 1;
        }

        sub_10028DBAC(&v18, &v17);
        if (!sub_10031A0B8(v18, a1))
        {
          return 1;
        }

        v5 = v19;
        v6 = &v18;
        goto LABEL_6;
      case 5:
        sub_10028DCFC(a1, a1 + 67, a1 + 134, a1 + 201, a2 - 67);
        return 1;
    }

LABEL_12:
    v7 = a1 + 134;
    sub_10028DC44(a1, a1 + 67, a1 + 134);
    v8 = a1 + 201;
    if (v8 != a2)
    {
      v9 = 0;
      while (1)
      {
        if (sub_10031A0B8(v8, v7))
        {
          bzero(v19, 0x430uLL);
          sub_100284850(v19, v8);
          do
          {
            v10 = v7;
            sub_10026A694((v7 + 67), v7);
            if (v7 == v15)
            {
              break;
            }

            v7 -= 67;
          }

          while ((sub_10031A0B8(v19, v10 - 1072) & 1) != 0);
          sub_10026A694(v10, v19);
          if (++v9 == 8)
          {
            v12 = v8 + 67 == v14;
            sub_10027C3B4(v19);
            return v12;
          }

          sub_10027C3B4(v19);
        }

        v7 = v8;
        v8 += 67;
        if (v8 == v14)
        {
          return 1;
        }
      }
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 != 2)
  {
    goto LABEL_12;
  }

  v14 = a2 - 67;
  if (sub_10031A0B8((a2 - 67), a1))
  {
    v5 = &v15;
    v6 = &v14;
LABEL_6:
    sub_10028DBAC(v5, v6);
  }

  return 1;
}

uint64_t sub_10028E634(__int128 *a1, __int128 *a2)
{
  bzero(v5, 0x430uLL);
  sub_100284850(v5, a1);
  sub_10026A694(a1, a2);
  sub_10026A694(a2, v5);
  return sub_10027C3B4(v5);
}

__int128 *sub_10028E6CC(__int128 *a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v18 = a1;
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = a2 - a1;
    v9 = 0xF0B7672A07A44C6BLL * (a2 - a1);
    if (a2 - a1 >= 1073)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[67 * v10];
      do
      {
        sub_10028E820(v7, a4, v9, v12);
        v12 -= 67;
        --v11;
      }

      while (v11);
    }

    v17 = v6;
    v13 = v6;
    if (v6 != a3)
    {
      do
      {
        if (sub_10031A0B8(v13, v18))
        {
          sub_10028DBAC(&v17, &v18);
          sub_10028E820(v18, a4, v9, v18);
        }

        v13 = v17 + 67;
        v17 = v13;
      }

      while (v13 != a3);
      v7 = v18;
      v8 = v6 - v18;
    }

    if (v8 >= 1073)
    {
      v14 = 0xF0B7672A07A44C6BLL * (v8 >> 4);
      do
      {
        sub_10028E9C8(v7, v6, a4, v14);
        v6 -= 67;
      }

      while (v14-- > 2);
      return v17;
    }

    return v13;
  }

  return a3;
}

uint64_t sub_10028E820(uint64_t result, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = result;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (0xF0B7672A07A44C6BLL * ((a4 - result) >> 4)))
    {
      v9 = (0xE16ECE540F4898D6 * ((a4 - result) >> 4)) | 1;
      v10 = (result + 1072 * v9);
      v11 = 0xE16ECE540F4898D6 * ((a4 - result) >> 4) + 2;
      if (v11 < a3 && sub_10031A0B8(result + 1072 * v9, (v10 + 67)))
      {
        v10 += 67;
        v9 = v11;
      }

      result = sub_10031A0B8(v10, v5);
      if ((result & 1) == 0)
      {
        bzero(v14, 0x430uLL);
        sub_100284850(v14, v5);
        do
        {
          v12 = v10;
          sub_10026A694(v5, v10);
          if (v7 < v9)
          {
            break;
          }

          v13 = (2 * v9) | 1;
          v10 = (v6 + 1072 * v13);
          v9 = 2 * v9 + 2;
          if (v9 >= a3)
          {
            v9 = v13;
          }

          else if (sub_10031A0B8(v6 + 1072 * v13, (v10 + 67)))
          {
            v10 += 67;
          }

          else
          {
            v9 = v13;
          }

          v5 = v12;
        }

        while (!sub_10031A0B8(v10, v14));
        sub_10026A694(v12, v14);
        return sub_10027C3B4(v14);
      }
    }
  }

  return result;
}

void sub_10028E9B4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028E9C8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v7 = result;
    bzero(v11, 0x430uLL);
    sub_100284850(v11, v7);
    v8 = sub_10028EAEC(v7, a3, a4);
    v9 = v8;
    v10 = (a2 - 1072);
    if (v8 == v10)
    {
      sub_10026A694(v8, v11);
    }

    else
    {
      sub_10026A694(v8, v10);
      sub_10026A694(v10, v11);
      sub_10028EB98(v7, (v9 + 67), a3, 0xF0B7672A07A44C6BLL * (v9 + 67 - v7));
    }

    return sub_10027C3B4(v11);
  }

  return result;
}

void sub_10028EAD8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

__int128 *sub_10028EAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = a1 + 1072 * v5;
    v8 = (v7 + 1072);
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 < a3)
    {
      v11 = (v7 + 2144);
      if (sub_10031A0B8(v7 + 1072, v7 + 2144))
      {
        v8 = v11;
        v9 = v10;
      }
    }

    sub_10026A694(a1, v8);
    a1 = v8;
    v5 = v9;
  }

  while (v9 <= v6);
  return v8;
}

uint64_t sub_10028EB98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = result;
    v5 = (a4 - 2) >> 1;
    v6 = (result + 1072 * v5);
    v7 = (a2 - 1072);
    result = sub_10031A0B8(v6, a2 - 1072);
    if (result)
    {
      bzero(v9, 0x430uLL);
      sub_100284850(v9, v7);
      do
      {
        v8 = v6;
        sub_10026A694(v7, v6);
        if (!v5)
        {
          break;
        }

        v5 = (v5 - 1) >> 1;
        v6 = (v4 + 1072 * v5);
        v7 = v8;
      }

      while ((sub_10031A0B8(v6, v9) & 1) != 0);
      sub_10026A694(v8, v9);
      return sub_10027C3B4(v9);
    }
  }

  return result;
}

void sub_10028EC90(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_10027C3B4(va);
  _Unwind_Resume(a1);
}

uint64_t sub_10028ED30(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028ED7C(uint64_t a1)
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

uint64_t sub_10028EDFC(uint64_t a1, void **a2)
{
  v3 = 0;
  result = *sub_100005C2C(a1, &v3, a2);
  if (!result)
  {
    sub_10028EEA0();
  }

  return result;
}

void sub_10028EF50(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_10028EF6C(v3, v2);
  _Unwind_Resume(a1);
}

void sub_10028EF6C(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 120) == 1 && *(__p + 119) < 0)
    {
      operator delete(__p[12]);
    }

    if (*(__p + 79) < 0)
    {
      operator delete(__p[7]);
    }

    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_10028F06C(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101E36EF8;
  a2[1] = v2;
  return result;
}

void sub_10028F098(uint64_t a1, uint64_t *a2)
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

    v5 = 136315650;
    v6 = "";
    v7 = 2080;
    v8 = "";
    v9 = 2080;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I %s%s%s", &v5, 0x20u);
  }
}

uint64_t sub_10028F164(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028F1B0(uint64_t a1)
{
  *a1 = off_101E36F78;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10028F20C(uint64_t a1)
{
  *a1 = off_101E36F78;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10028F32C(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10028F34C(char *result, uint64_t a2)
{
  *a2 = off_101E36F78;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10028F3D0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028F3F0(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10028F42C(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    v3 = *(a1 + 8);
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (*(a1 + 16))
      {
        v5 = *(v3 + 40);
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v6 = a1 + 32;
          if (*(a1 + 55) < 0)
          {
            v6 = *(a1 + 32);
          }

          *buf = 136315138;
          *&buf[4] = v6;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I send.tss.after.delete timer expired, sourceIccid: %s", buf, 0xCu);
        }

        *buf = v3;
        if (*(a1 + 55) < 0)
        {
          sub_100005F2C(&buf[8], *(a1 + 32), *(a1 + 40));
        }

        else
        {
          *&buf[8] = *(a1 + 32);
          v9 = *(a1 + 48);
        }

        v7[0] = 0;
        v7[1] = 0;
        sub_100004AA0(v7, (v3 + 8));
        operator new();
      }

      sub_100004A34(v4);
    }
  }
}

uint64_t sub_10028F64C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_10028F698(uint64_t a1)
{
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t *sub_10028F6EC(uint64_t **a1)
{
  v1 = *a1;
  v3 = a1;
  v4 = v1;
  sub_10025F1D0(*v1, (v1 + 1));
  sub_1000EF424(&v4);
  return sub_1000049E0(&v3);
}

void sub_10028F730(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_10028F74C(uint64_t a1)
{
  *a1 = off_101E36FF8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_10028F7A8(uint64_t a1)
{
  *a1 = off_101E36FF8;
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = *(a1 + 24);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_10028F8C8(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10028F8E8(char *result, uint64_t a2)
{
  *a2 = off_101E36FF8;
  *(a2 + 8) = *(result + 8);
  v2 = *(result + 3);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  if (result[55] < 0)
  {
    return sub_100005F2C((a2 + 32), *(result + 4), *(result + 5));
  }

  v3 = *(result + 2);
  *(a2 + 48) = *(result + 6);
  *(a2 + 32) = v3;
  return result;
}

void sub_10028F96C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10028F98C(void *a1)
{
  sub_10028F698(a1 + 8);

  operator delete(a1);
}

void sub_10028F9C8(void *a1, char *a2)
{
  v3 = a1[3];
  if (v3)
  {
    v4 = *a2;
    v5 = a1[1];
    v6 = std::__shared_weak_count::lock(v3);
    if (v6)
    {
      v7 = v6;
      if (a1[2] && (v4 & 1) == 0)
      {
        sub_1002773C4(v5, (a1 + 4));
      }

      sub_100004A34(v7);
    }
  }
}

uint64_t sub_10028FA5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

_UNKNOWN **sub_10028FB20(int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      sub_10028FC5C();
    }

    v7 = a2[1];
    if (*(v7 + 151) < 0)
    {
      operator delete(*(v7 + 128));
    }

    if (*(v7 + 112) == 1 && *(v7 + 111) < 0)
    {
      operator delete(*(v7 + 88));
    }

    if (*(v7 + 80) == 1 && *(v7 + 79) < 0)
    {
      operator delete(*(v7 + 56));
    }

    if (*(v7 + 48) == 1 && *(v7 + 47) < 0)
    {
      operator delete(*(v7 + 24));
    }

    v10 = v7;
    sub_10016C644(&v10);
    operator delete(v7);
    result = 0;
    goto LABEL_20;
  }

  if (a1 == 2)
  {
    result = 0;
    v9 = a2[1];
    *a3 = sub_10028FB20;
    a3[1] = v9;
LABEL_20:
    *a2 = 0;
    return result;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &unk_10183BBB0;
  }

  if (v6)
  {
    return a2[1];
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10028FCD4(uint64_t a1)
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

uint64_t *sub_10028FD58(uint64_t *a1)
{
  v1 = *a1;
  v21 = a1;
  v22 = v1;
  v2 = (v1 + 32);
  v3 = *v1;
  v4 = sub_10025CD10((*v1 + 328), (v1 + 32));
  if (v3[42] == v4)
  {
    v7 = v3[5];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    if (*(v1 + 55) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315394;
    *&buf[4] = v2;
    *&buf[12] = 2048;
    *&buf[14] = v3;
    v8 = "cannot find source iccid in tr.ctr : %s. drop tr.ind. Target Transfer Controller: %p";
    v9 = v7;
    v10 = 22;
    goto LABEL_31;
  }

  v5 = v4;
  v6 = *(v1 + 31);
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!*(v1 + 31))
    {
      goto LABEL_32;
    }

    goto LABEL_10;
  }

  if (*(v1 + 16))
  {
LABEL_10:
    v11 = (v1 + 8);
    v12 = (v4 + 672);
    if (v6 >= 0)
    {
      v13 = *(v1 + 31);
    }

    else
    {
      v13 = *(v1 + 16);
    }

    v14 = *(v4 + 695);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = *(v4 + 680);
    }

    if (v13 == v14)
    {
      v16 = (v6 >= 0 ? v1 + 8 : *v11);
      v17 = (v15 >= 0 ? v5 + 672 : *v12);
      if (!memcmp(v16, v17, v13))
      {
        goto LABEL_32;
      }
    }

    v18 = v3[5];
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_39;
    }

    if ((v6 & 0x80000000) != 0)
    {
      v11 = *v11;
    }

    if (v15 < 0)
    {
      v12 = *v12;
    }

    if (*(v1 + 55) < 0)
    {
      v2 = *v2;
    }

    *buf = 136315650;
    *&buf[4] = v11;
    *&buf[12] = 2080;
    *&buf[14] = v12;
    *&buf[22] = 2080;
    *&buf[24] = v2;
    v8 = "uuid mismatched : %s != %s, source iccid : %s. drop tr.ind";
    v9 = v18;
    v10 = 32;
LABEL_31:
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v8, buf, v10);
    goto LABEL_39;
  }

LABEL_32:
  v19 = v3[126];
  v3[126] = 0;
  if (v19)
  {
    (*(*v19 + 8))(v19);
  }

  if (*(v1 + 344) == 1)
  {
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
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    memset(buf, 0, sizeof(buf));
    sub_10027EF58(buf, (v1 + 56));
    sub_100931630(buf);
    sub_100319FE0(v5, buf);
    sub_100111F5C(buf);
  }

  *buf = 0;
  if (*(v1 + 352) - 1 <= 1)
  {
    buf[0] = *(v1 + 352);
    buf[1] = *(v1 + 353);
  }

  sub_10026E010(v3, v1 + 32, buf);
LABEL_39:
  sub_100290034(&v22);
  return sub_1000049E0(&v21);
}

void sub_100290008(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11)
{
  sub_100111F5C(&a11);
  sub_100290034(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_100290034(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    *(v1 + 352) = 0;
    if (*(v1 + 344) == 1)
    {
      sub_100111F5C(v1 + 56);
    }

    if (*(v1 + 55) < 0)
    {
      operator delete(*(v1 + 32));
    }

    if (*(v1 + 31) < 0)
    {
      operator delete(*(v1 + 8));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1002900B4(uint64_t *a1)
{
  v1 = *a1;
  v7 = a1;
  v8 = v1;
  v2 = *v1;
  v3 = sub_10025CD10((*v1 + 328), (v1 + 8));
  if (*(v2 + 336) != v3)
  {
    v4 = v3;
    sub_100319F10(v3, 0);
    sub_100319F28(v4, 70095);
  }

  v12 = 0;
  v11 = 0;
  sub_100254358(v2, v1 + 8, 11, 56, &v12, &v11);
  sub_10001021C(&v11);
  sub_100005978(&v12);
  if (*(v1 + 31) < 0)
  {
    sub_100005F2C(__p, *(v1 + 8), *(v1 + 16));
  }

  else
  {
    v5 = *(v1 + 8);
    v10 = *(v1 + 24);
    *__p = v5;
  }

  sub_100255D0C(v2, __p);
  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  sub_100254E74(v2);
  sub_1000EF424(&v8);
  return sub_1000049E0(&v7);
}

void sub_1002901B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, char a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  sub_1000EF424(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100290200(uint64_t a1)
{
  *a1 = off_101E37088;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  return a1;
}

void sub_100290270(uint64_t a1)
{
  *a1 = off_101E37088;
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    operator delete(*(a1 + 16));
  }

  operator delete();
}

void sub_1002903D8(_Unwind_Exception *a1)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

char *sub_10029041C(char *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  *a2 = off_101E37088;
  *(a2 + 8) = v4;
  if (result[39] < 0)
  {
    result = sub_100005F2C((a2 + 16), *(result + 2), *(result + 3));
  }

  else
  {
    v5 = *(result + 1);
    *(a2 + 32) = *(result + 4);
    *(a2 + 16) = v5;
  }

  if (v3[63] < 0)
  {
    result = sub_100005F2C((a2 + 40), *(v3 + 5), *(v3 + 6));
  }

  else
  {
    v6 = *(v3 + 40);
    *(a2 + 56) = *(v3 + 7);
    *(a2 + 40) = v6;
  }

  if (v3[87] < 0)
  {
    return sub_100005F2C((a2 + 64), *(v3 + 8), *(v3 + 9));
  }

  v7 = *(v3 + 4);
  *(a2 + 80) = *(v3 + 10);
  *(a2 + 64) = v7;
  return result;
}

void sub_1002904D8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 63) < 0)
  {
    operator delete(*(v1 + 40));
  }

  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

void sub_10029050C(uint64_t a1)
{
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  if (*(a1 + 63) < 0)
  {
    operator delete(*(a1 + 40));
  }

  if (*(a1 + 39) < 0)
  {
    v2 = *(a1 + 16);

    operator delete(v2);
  }
}

void sub_100290574(void **__p)
{
  if (*(__p + 87) < 0)
  {
    operator delete(__p[8]);
  }

  if (*(__p + 63) < 0)
  {
    operator delete(__p[5]);
  }

  if (*(__p + 39) < 0)
  {
    operator delete(__p[2]);
  }

  operator delete(__p);
}

const void **sub_1002905D8(uint64_t a1, unsigned __int8 *a2, const void **a3)
{
  v4 = *a2;
  v8 = *a3;
  *a3 = 0;
  if (v4 == 1)
  {
    ctu::OsLogContext::OsLogContext(&__p, kCtLoggingSystemName, "cp.tr.ctr");
    v5 = v10;
    ctu::OsLogContext::~OsLogContext(&__p);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_101768E6C();
    }
  }

  else
  {
    v6 = *(a1 + 8);
    __p = 0;
    v10 = 0;
    v11 = 0;
    sub_1009325F0((a1 + 16), &__p);
    sub_100264940(v6, (a1 + 64), a1 + 40, &__p);
    if (SHIBYTE(v11) < 0)
    {
      operator delete(__p);
    }
  }

  return sub_10001021C(&v8);
}

void sub_1002906A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  sub_10001021C(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1002906D4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *sub_100290720(void *a1)
{
  *a1 = off_101E37108;
  sub_1002854D4((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_100290770(void *a1)
{
  *a1 = off_101E37108;
  sub_1002854D4((a1 + 4));
  v2 = a1[3];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete();
}

void sub_100290868(_Unwind_Exception *a1)
{
  v3 = v1[3];
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  operator delete(v1);
  _Unwind_Resume(a1);
}

uint64_t sub_100290888(uint64_t a1, uint64_t a2)
{
  *a2 = off_101E37108;
  *(a2 + 8) = *(a1 + 8);
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return sub_10028CC38(a2 + 32, a1 + 32);
}

void sub_1002908F4(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100290914(void *a1)
{
  sub_100290EEC(a1 + 8);

  operator delete(a1);
}

void sub_100290950(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4 && a1[2])
    {
      sub_1002665D8(v3);
      sub_10026679C(v3);
      v5 = *(v3 + 168);
      v6 = *(v3 + 176);
      if (v6 - v5 < 1)
      {
        v7 = 0;
        v11 = 0;
      }

      else
      {
        v7 = 0xCF3CF3CF3CF3CF3DLL * ((v6 - v5) >> 5);
        while (1)
        {
          v8 = operator new(672 * v7, &std::nothrow);
          if (v8)
          {
            break;
          }

          v9 = v7 >> 1;
          v10 = v7 > 1;
          v7 >>= 1;
          if (!v10)
          {
            v11 = 0;
            v7 = v9;
            goto LABEL_15;
          }
        }

        v11 = v8;
      }

LABEL_15:
      sub_100290F38(v5, v6, 0xCF3CF3CF3CF3CF3DLL * ((v6 - v5) >> 5), v11, v7);
      if (v11)
      {
        operator delete(v11);
      }

      v33 = 0x400000000000000;
      *__p = *"18.4";
      v13 = sub_100927A9C(__p);
      if (SHIBYTE(v33) < 0)
      {
        operator delete(__p[0]);
      }

      v14 = *(v3 + 848);
      if (*(v14 + 47) < 0)
      {
        sub_100005F2C(__dst, *(v14 + 24), *(v14 + 32));
      }

      else
      {
        *__dst = *(v14 + 24);
        v31 = *(v14 + 40);
      }

      v15 = sub_100927A9C(__dst);
      if (SHIBYTE(v31) < 0)
      {
        operator delete(__dst[0]);
      }

      if (*(v3 + 240))
      {
        v16 = v15 >= v13;
      }

      else
      {
        v16 = 1;
      }

      v17 = !v16;
      v28 = 0;
      cf = 0;
      v27 = 0;
      sub_1009252B0((v3 + 168), &v27, v3 + 976, v17, &cf);
      if (v28)
      {
        sub_100004A34(v28);
      }

      if (*(v3 + 147) == 1)
      {
        v18 = *(v3 + 88);
        if (v18)
        {
          v19 = std::__shared_weak_count::lock(v18);
          if (v19)
          {
            v20 = v19;
            v21 = *(v3 + 80);
            if (v21)
            {
              if ((*(*v21 + 344))(*(v3 + 80), 1) != 2)
              {
                v26 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                if (sub_100932CD8((v3 + 40), &v26, 1))
                {
                  v22 = 2;
                }

                else
                {
                  v22 = 1;
                }

                (*(*v21 + 336))(v21, v22, 1);
                sub_100010250(&v26);
              }

              if ((*(*v21 + 344))(v21, 0) != 2)
              {
                v25 = cf;
                if (cf)
                {
                  CFRetain(cf);
                }

                if (sub_100932CD8((v3 + 40), &v25, 0))
                {
                  v23 = 2;
                }

                else
                {
                  v23 = 1;
                }

                (*(*v21 + 336))(v21, v23, 0);
                sub_100010250(&v25);
              }
            }

            sub_100004A34(v20);
          }
        }
      }

      v24 = cf;
      if (cf)
      {
        CFRetain(cf);
      }

      sub_100259554((a1 + 4), &v24, *(v3 + 161), 0);
      sub_100010250(&v24);
      sub_10027572C(v3);
    }
  }

  else
  {
    v4 = 0;
  }

  ctu::OsLogContext::OsLogContext(__p, kCtLoggingSystemName, "cp.tr.ctr");
  v12 = __p[1];
  ctu::OsLogContext::~OsLogContext(__p);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_101768474();
  }

  __p[0] = 0;
  sub_100259554((a1 + 4), __p, 0, 5);
  sub_100010250(__p);
  if (v4)
  {
    sub_100004A34(v4);
  }
}

void sub_100290D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, int a12, const void *a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, const void *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  sub_100010250(&a13);
  sub_100004A34(v32);
  sub_100010250(&a19);
  if (v33)
  {
    sub_100004A34(v33);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100290E20(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100290E6C(uint64_t a1, uint64_t a2)
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

void sub_100290EEC(uint64_t a1)
{
  sub_1002854D4(a1 + 24);
  v2 = *(a1 + 16);
  if (v2)
  {

    std::__shared_weak_count::__release_weak(v2);
  }
}

uint64_t sub_100290F38(uint64_t result, __int128 *a2, unint64_t a3, uint64_t a4, int64_t a5)
{
  v109 = a2;
  v110 = result;
  if (a3 < 2)
  {
    return result;
  }

  v5 = a2;
  v6 = result;
  if (a3 == 2)
  {
    v109 = a2 - 42;
    v7 = (result + 432);
    v8 = *(a2 - 217);
    if (v8 >= 0)
    {
      v9 = *(a2 - 217);
    }

    else
    {
      v9 = *(a2 - 29);
    }

    v10 = *(result + 455);
    v11 = v10;
    if ((v10 & 0x80u) != 0)
    {
      v10 = *(result + 440);
    }

    if (v9 == v10 && (v8 >= 0 ? (v12 = a2 - 15) : (v12 = *(a2 - 30)), v11 >= 0 ? (v13 = (v6 + 432)) : (v13 = *v7), !memcmp(v12, v13, v9)))
    {
      v101 = *(v5 - 649);
      if (v101 >= 0)
      {
        v102 = *(v5 - 649);
      }

      else
      {
        v102 = *(v5 - 83);
      }

      v103 = *(v6 + 23);
      v104 = v103;
      if ((v103 & 0x80u) != 0)
      {
        v103 = *(v6 + 8);
      }

      if (v102 == v103)
      {
        v105 = v101 >= 0 ? v5 - 42 : *(v5 - 84);
        v106 = v104 >= 0 ? v6 : *v6;
        result = memcmp(v105, v106, v102);
        if (!result)
        {
          if ((*(v5 - 382) & 1) != 0 || *(v6 + 290) != 1)
          {
            return result;
          }

          return sub_1002918E0(&v110, &v109);
        }
      }

      v14 = v5 - 42;
      v15 = v6;
    }

    else
    {
      v14 = v5 - 15;
      v15 = (v6 + 432);
    }

    result = sub_1000068BC(v14, v15);
    if (result <= 0)
    {
      return result;
    }

    return sub_1002918E0(&v110, &v109);
  }

  if (a3 <= 0)
  {
    if (result == a2)
    {
      return result;
    }

    v22 = result + 672;
    if ((result + 672) == a2)
    {
      return result;
    }

    v23 = 0;
    v24 = result;
    while (1)
    {
      v25 = v24;
      v24 = v22;
      v26 = (v25 + 1104);
      v27 = *(v25 + 1127);
      if (v27 >= 0)
      {
        v28 = *(v25 + 1127);
      }

      else
      {
        v28 = *(v25 + 1112);
      }

      v29 = *(v25 + 455);
      v30 = v29;
      if ((v29 & 0x80u) != 0)
      {
        v29 = *(v25 + 440);
      }

      if (v28 != v29)
      {
        break;
      }

      v31 = (v27 >= 0 ? v25 + 1104 : *v26);
      v32 = v30 >= 0 ? (v25 + 432) : *(v25 + 432);
      if (memcmp(v31, v32, v28))
      {
        break;
      }

      v75 = *(v25 + 695);
      if (v75 >= 0)
      {
        v76 = *(v25 + 695);
      }

      else
      {
        v76 = *(v25 + 680);
      }

      v77 = *(v25 + 23);
      v78 = v77;
      if ((v77 & 0x80u) != 0)
      {
        v77 = *(v25 + 8);
      }

      if (v76 != v77 || (v75 >= 0 ? (v79 = v24) : (v79 = *v24), v78 >= 0 ? (v80 = v25) : (v80 = *v25), result = memcmp(v79, v80, v76), result))
      {
        v33 = v24;
        v34 = v25;
LABEL_41:
        result = sub_1000068BC(v33, v34);
        if (result <= 0)
        {
          goto LABEL_95;
        }

        goto LABEL_42;
      }

      if ((*(v25 + 962) & 1) != 0 || *(v25 + 290) != 1)
      {
        goto LABEL_95;
      }

LABEL_42:
      v166 = 0;
      v35 = *v24;
      v112 = *(v24 + 16);
      v111 = v35;
      *(v24 + 8) = 0u;
      *v24 = 0;
      v113 = *(v25 + 696);
      v114 = *(v25 + 712);
      v36 = *(v25 + 720);
      *(v25 + 696) = 0u;
      *(v25 + 712) = 0u;
      v115 = v36;
      v116 = *(v25 + 736);
      *(v25 + 728) = 0u;
      v118 = *(v25 + 760);
      v117 = *(v25 + 744);
      *(v25 + 760) = 0;
      *(v25 + 744) = 0u;
      v37 = *(v25 + 768);
      v120 = *(v25 + 784);
      v119 = v37;
      *(v25 + 784) = 0;
      *(v25 + 768) = 0u;
      v38 = *(v25 + 792);
      v122 = *(v25 + 808);
      v121 = v38;
      *(v25 + 808) = 0;
      *(v25 + 792) = 0u;
      v39 = *(v25 + 816);
      v124 = *(v25 + 832);
      v123 = v39;
      *(v25 + 832) = 0;
      *(v25 + 816) = 0u;
      v40 = *(v25 + 840);
      v126 = *(v25 + 856);
      v125 = v40;
      *(v25 + 856) = 0;
      *(v25 + 840) = 0u;
      v41 = *(v25 + 864);
      v128 = *(v25 + 880);
      v127 = v41;
      *(v25 + 880) = 0;
      *(v25 + 864) = 0u;
      v42 = *(v25 + 888);
      v130 = *(v25 + 904);
      v129 = v42;
      *(v25 + 904) = 0;
      *(v25 + 888) = 0u;
      v43 = *(v25 + 912);
      v132 = *(v25 + 928);
      v131 = v43;
      *(v25 + 928) = 0;
      *(v25 + 912) = 0u;
      v44 = *(v25 + 936);
      v134 = *(v25 + 952);
      v133 = v44;
      *(v25 + 952) = 0;
      *(v25 + 936) = 0u;
      v45 = *(v25 + 960);
      v136 = *(v25 + 976);
      v135 = v45;
      v46 = *(v25 + 984);
      v138 = *(v25 + 1000);
      v137 = v46;
      *(v25 + 1000) = 0;
      *(v25 + 984) = 0u;
      v47 = *(v25 + 1008);
      v140 = *(v25 + 1024);
      v139 = v47;
      *(v25 + 1024) = 0;
      *(v25 + 1008) = 0u;
      v48 = *(v25 + 1032);
      v142 = *(v25 + 1048);
      v141 = v48;
      *(v25 + 1048) = 0;
      *(v25 + 1032) = 0u;
      v49 = *(v25 + 1056);
      v144 = *(v25 + 1072);
      v143 = v49;
      *(v25 + 1072) = 0;
      *(v25 + 1056) = 0u;
      v50 = *(v25 + 1080);
      v146 = *(v25 + 1096);
      v145 = v50;
      *(v25 + 1096) = 0;
      *(v25 + 1080) = 0u;
      v51 = *v26;
      v148 = *(v25 + 1120);
      v147 = v51;
      *(v25 + 1120) = 0;
      *v26 = 0u;
      v52 = *(v25 + 1128);
      v150 = *(v25 + 1144);
      v149 = v52;
      *(v25 + 1144) = 0;
      *(v25 + 1128) = 0u;
      v53 = *(v25 + 1152);
      v152 = *(v25 + 1168);
      v151 = v53;
      *(v25 + 1168) = 0;
      *(v25 + 1152) = 0u;
      v54 = *(v25 + 1176);
      v154 = *(v25 + 1192);
      v153 = v54;
      *(v25 + 1192) = 0;
      *(v25 + 1176) = 0u;
      v55 = *(v25 + 1200);
      v156 = *(v25 + 1216);
      v155 = v55;
      *(v25 + 1216) = 0;
      *(v25 + 1200) = 0u;
      v56 = *(v25 + 1224);
      v158 = *(v25 + 1240);
      v157 = v56;
      *(v25 + 1240) = 0;
      *(v25 + 1224) = 0u;
      v57 = *(v25 + 1248);
      v160 = *(v25 + 1264);
      v159 = v57;
      *(v25 + 1264) = 0;
      *(v25 + 1248) = 0u;
      v58 = *(v25 + 1272);
      v162 = *(v25 + 1288);
      v161 = v58;
      *(v25 + 1288) = 0;
      *(v25 + 1272) = 0u;
      v59 = *(v25 + 1296);
      v164 = *(v25 + 1312);
      v163 = v59;
      *(v25 + 1312) = 0;
      *(v25 + 1296) = 0u;
      v60 = *(v25 + 1320);
      LOBYTE(v166) = *(v25 + 1336);
      v165 = v60;
      sub_100281D90(v24, v25);
      if (v25 == v6)
      {
        v25 = v6;
        goto LABEL_94;
      }

      v61 = v23;
      while (1)
      {
        v62 = v6 + v61;
        if (v148 >= 0)
        {
          v63 = HIBYTE(v148);
        }

        else
        {
          v63 = *(&v147 + 1);
        }

        v64 = *(v62 - 217);
        v65 = v64;
        if ((v64 & 0x80u) != 0)
        {
          v64 = *(v62 - 232);
        }

        if (v63 != v64 || (v148 >= 0 ? (v66 = &v147) : (v66 = v147), v65 >= 0 ? (v67 = (v6 + v61 - 240)) : (v67 = *(v6 + v61 - 240)), memcmp(v66, v67, v63)))
        {
          v68 = &v147;
          v69 = (v6 + v61 - 240);
          goto LABEL_58;
        }

        if (v112 >= 0)
        {
          v70 = HIBYTE(v112);
        }

        else
        {
          v70 = *(&v111 + 1);
        }

        v71 = *(v6 + v61 - 649);
        v72 = *(v6 + v61 - 664);
        if (v71 >= 0)
        {
          v72 = *(v6 + v61 - 649);
        }

        if (v70 == v72)
        {
          v73 = v112 >= 0 ? &v111 : v111;
          v74 = v71 >= 0 ? (v6 + v61 - 672) : *(v6 + v61 - 672);
          if (!memcmp(v73, v74, v70))
          {
            break;
          }
        }

        v68 = &v111;
        v69 = (v6 + v61 - 672);
LABEL_58:
        if (sub_1000068BC(v68, v69) <= 0)
        {
          goto LABEL_93;
        }

LABEL_59:
        v25 -= 672;
        sub_100281D90(v6 + v61, (v6 + v61 - 672));
        v61 -= 672;
        if (!v61)
        {
          v25 = v6;
          goto LABEL_93;
        }
      }

      if ((BYTE2(v135) & 1) == 0)
      {
        if (*(v6 + v61 - 382) != 1)
        {
          goto LABEL_93;
        }

        goto LABEL_59;
      }

      v25 = v6 + v61;
LABEL_93:
      v5 = a2;
LABEL_94:
      sub_100281D90(v25, &v111);
      result = sub_10027DF50(&v111);
LABEL_95:
      v22 = v24 + 672;
      v23 += 672;
      if ((v24 + 672) == v5)
      {
        return result;
      }
    }

    v33 = (v25 + 1104);
    v34 = (v25 + 432);
    goto LABEL_41;
  }

  v18 = a4;
  v19 = a3 >> 1;
  v20 = (result + 672 * (a3 >> 1));
  if (a3 > a5)
  {
    sub_100290F38(result, result + 672 * (a3 >> 1), a3 >> 1, a4, a5);
    v21 = a3 - v19;
    sub_100290F38(v20, v5, v21, v18, a5);

    return sub_1002922B4(v6, v20, v5, v19, v21, v18, a5);
  }

  v108 = 0;
  *&v111 = a4;
  *(&v111 + 1) = &v108;
  sub_100291C14(result, (result + 672 * (a3 >> 1)), a3 >> 1, a4);
  v108 = a3 >> 1;
  v81 = a3 - v19;
  v82 = v18 + 672 * v19;
  sub_100291C14(v6 + 672 * (a3 >> 1), v5, v81, v82);
  v108 = a3;
  v83 = v18 + 672 * a3;
  v84 = v82;
  while (v84 != v83)
  {
    v85 = *(v84 + 455);
    if (v85 >= 0)
    {
      v86 = *(v84 + 455);
    }

    else
    {
      v86 = *(v84 + 440);
    }

    v87 = *(v18 + 455);
    v88 = v87;
    if ((v87 & 0x80u) != 0)
    {
      v87 = *(v18 + 440);
    }

    if (v86 != v87 || (v85 >= 0 ? (v89 = (v84 + 432)) : (v89 = *(v84 + 432)), v88 >= 0 ? (v90 = (v18 + 432)) : (v90 = *(v18 + 432)), memcmp(v89, v90, v86)))
    {
      v91 = (v84 + 432);
      v92 = (v18 + 432);
      goto LABEL_117;
    }

    v93 = *(v84 + 23);
    if (v93 >= 0)
    {
      v94 = *(v84 + 23);
    }

    else
    {
      v94 = *(v84 + 8);
    }

    v95 = *(v18 + 23);
    v96 = v95;
    if ((v95 & 0x80u) != 0)
    {
      v95 = *(v18 + 8);
    }

    if (v94 != v95 || (v93 >= 0 ? (v97 = v84) : (v97 = *v84), v96 >= 0 ? (v98 = v18) : (v98 = *v18), memcmp(v97, v98, v94)))
    {
      v91 = v84;
      v92 = v18;
LABEL_117:
      if (sub_1000068BC(v91, v92) <= 0)
      {
        goto LABEL_135;
      }

      goto LABEL_118;
    }

    if ((*(v84 + 290) & 1) != 0 || *(v18 + 290) != 1)
    {
LABEL_135:
      sub_100281D90(v6, v18);
      v18 += 672;
      goto LABEL_136;
    }

LABEL_118:
    sub_100281D90(v6, v84);
    v84 += 672;
LABEL_136:
    v6 += 672;
    if (v18 == v82)
    {
      while (v84 != v83)
      {
        sub_100281D90(v6, v84);
        v84 += 672;
        v6 += 672;
      }

      goto LABEL_143;
    }
  }

  while (v18 != v82)
  {
    sub_100281D90(v6, v18);
    v18 += 672;
    v6 += 672;
  }

LABEL_143:
  result = v111;
  if (v111)
  {
    v99 = *(&v111 + 1);
    if (**(&v111 + 1))
    {
      v100 = 0;
      do
      {
        ++v100;
        result = sub_10027DF50(result) + 672;
      }

      while (v100 < *v99);
    }
  }

  return result;
}