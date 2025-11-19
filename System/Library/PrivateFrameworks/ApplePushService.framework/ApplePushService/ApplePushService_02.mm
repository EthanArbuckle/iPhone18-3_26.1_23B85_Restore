void sub_10002F868(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    sub_1001089A8(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_10002F888(void *a1)
{
  sub_10002CDEC(a1);

  operator delete();
}

uint64_t sub_10002F8C0(uint64_t a1)
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

uint64_t sub_10002F940(uint64_t a1)
{
  sub_10002F97C(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void sub_10002F97C(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 39) < 0)
      {
        operator delete(v2[2]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void sub_10002F9C8(void *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a1[1];
  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      *(*a1 + 8 * i) = 0;
    }

    v8 = a1[2];
    a1[2] = 0;
    a1[3] = 0;
    if (v8)
    {
      v9 = a2 == a3;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      v10 = v8;
    }

    else
    {
      do
      {
        std::string::operator=((v8 + 16), (v4 + 2));
        v10 = *v8;
        sub_10002FAC4(a1, v8);
        v4 = *v4;
        if (v10)
        {
          v11 = v4 == a3;
        }

        else
        {
          v11 = 1;
        }

        v8 = v10;
      }

      while (!v11);
    }

    sub_10002F97C(a1, v10);
  }

  if (v4 != a3)
  {
    sub_10003002C();
  }
}

void sub_10002FA94(void *a1)
{
  __cxa_begin_catch(a1);
  sub_10002F97C(v1, v2);
  __cxa_rethrow();
}

uint64_t sub_10002FAC4(void *a1, uint64_t a2)
{
  v4 = sub_10001A5B0(a1, a2 + 16);
  *(a2 + 8) = v4;
  v5 = sub_10002FB18(a1, v4, (a2 + 16));
  sub_10002FC90(a1, a2, v5);
  return a2;
}

const void **sub_10002FB18(uint64_t a1, unint64_t a2, const void **a3)
{
  v6 = *(a1 + 8);
  v7 = (*(a1 + 24) + 1);
  v8 = *(a1 + 32);
  if (!v6 || (v8 * v6) < v7)
  {
    v9 = 1;
    if (v6 >= 3)
    {
      v9 = (v6 & (v6 - 1)) != 0;
    }

    v10 = v9 | (2 * v6);
    v11 = vcvtps_u32_f32(v7 / v8);
    if (v10 <= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = v10;
    }

    sub_10002FD78(a1, v12);
    v6 = *(a1 + 8);
  }

  v13 = vcnt_s8(v6);
  v13.i16[0] = vaddlv_u8(v13);
  v14 = v13.u32[0];
  if (v13.u32[0] > 1uLL)
  {
    v15 = a2;
    if (v6 <= a2)
    {
      v15 = a2 % v6;
    }
  }

  else
  {
    v15 = (v6 - 1) & a2;
  }

  v16 = *(*a1 + 8 * v15);
  if (v16)
  {
    v17 = *v16;
    if (*v16)
    {
      v18 = 0;
      do
      {
        v19 = v17[1];
        if (v14 > 1)
        {
          v20 = v17[1];
          if (v19 >= v6)
          {
            v20 = v19 % v6;
          }
        }

        else
        {
          v20 = v19 & (v6 - 1);
        }

        if (v20 != v15)
        {
          break;
        }

        v21 = v19 == a2 && sub_10001A998(a1, v17 + 2, a3);
        if ((v18 & (v21 != (v18 & 1))) != 0)
        {
          break;
        }

        v18 |= v21 != (v18 & 1);
        v16 = *v16;
        v17 = *v16;
      }

      while (*v16);
    }
  }

  return v16;
}

void *sub_10002FC90(void *result, void *a2, void *a3)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  if (!a3)
  {
    *a2 = result[2];
    result[2] = a2;
    *(*result + 8 * v4) = result + 2;
    if (!*a2)
    {
      goto LABEL_19;
    }

    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

LABEL_18:
    *(*result + 8 * v6) = a2;
    goto LABEL_19;
  }

  *a2 = *a3;
  *a3 = a2;
  if (*a2)
  {
    v6 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v6 >= *&v3)
      {
        v6 %= *&v3;
      }
    }

    else
    {
      v6 &= *&v3 - 1;
    }

    if (v6 != v4)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  ++result[3];
  return result;
}

void sub_10002FD78(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      sub_10002FE68(a1, prime);
    }
  }
}

void sub_10002FE68(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_100023634();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void sub_100030068(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_100030150(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100030134(_Unwind_Exception *a1)
{
  *v2 = 0;
  sub_100030150(v3, v1);
  _Unwind_Resume(a1);
}

void sub_100030150(uint64_t a1, void **__p)
{
  if (*(a1 + 8) == 1)
  {
    if (*(__p + 39) < 0)
    {
      operator delete(__p[2]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

uint64_t sub_1000301B4(uint64_t a1, uint64_t a2)
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

void *sub_10003024C(void *result, void *a2)
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

void sub_1000304A4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000231E8(a1);
}

void sub_1000304B0(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      sub_100016C08();
    }

    v9 = v4 - v6;
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

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t sub_1000305E8()
{
  qword_1001C0400 = 0;
  __cxa_atexit(sub_10002F068, qword_1001C03E8, &_mh_execute_header);
  xmmword_1001C0408 = 0u;
  unk_1001C0418 = 0u;
  dword_1001C0428 = 1065353216;

  return __cxa_atexit(sub_10002F06C, &xmmword_1001C0408, &_mh_execute_header);
}

uint64_t sub_10003066C(uint64_t result)
{
  *result = -1;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  return result;
}

uint64_t sub_100030680(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v4 = *(a1 + 1);
    v5 = *(a1 + 2);
    if (v5 - v4 == *(a2 + 2) - *(a2 + 1))
    {
      if (v5 == v4)
      {
        return 1;
      }

      v6 = 0;
      v7 = 0;
      while (1)
      {
        v8 = *(a2 + 1);
        if (*(v4 + v6) != *(v8 + v6) || *(v4 + v6 + 16) != *(v8 + v6 + 16))
        {
          break;
        }

        if (*(v4 + v6 + 16))
        {
          v11 = 0;
          v12 = 0;
          if (!sub_100019940((v4 + v6 + 8), &v12) || (sub_100019940((*(a2 + 1) + v6 + 8), &v11) & 1) == 0)
          {
            sub_100017D14(&v11);
            sub_100017D14(&v12);
            return 0;
          }

          v9 = CFEqual(v12, v11);
          sub_100017D14(&v11);
          sub_100017D14(&v12);
          if (!v9)
          {
            return 0;
          }
        }

        else
        {
          result = CFEqual(*(v4 + v6 + 8), *(v8 + v6 + 8));
          if (!result)
          {
            return result;
          }
        }

        ++v7;
        v4 = *(a1 + 1);
        v6 += 24;
        if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2) - v4) >> 3) <= v7)
        {
          return 1;
        }
      }
    }
  }

  return 0;
}

void sub_1000307D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, const void *a10)
{
  sub_100017D14(&a9);
  sub_100017D14(&a10);
  _Unwind_Resume(a1);
}

uint64_t sub_1000307F0(unsigned __int8 *a1, void *a2, uint64_t a3)
{
  sub_1000231FC(a2, "command ", 8);
  v6 = *a1;
  v7 = std::ostream::operator<<();
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v16, &std::ctype<char>::id);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v16);
  std::ostream::put();
  result = std::ostream::flush();
  if (*(a1 + 2) != *(a1 + 1))
  {
    v10 = 0;
    v11 = 0;
    do
    {
      sub_1000231FC(a2, "  [", 3);
      v12 = *(*(a1 + 1) + v10);
      v13 = std::ostream::operator<<();
      sub_1000231FC(v13, "] ", 2);
      v14 = *(a1 + 1) + v10;
      if (*(v14 + 16) == 1)
      {
        v16.__locale_ = 0;
        if (sub_100019940((v14 + 8), &v16.__locale_))
        {
          sub_100023058(a2, &v16.__locale_);
        }

        else
        {
          sub_1000231FC(a2, "[invalid bplist]", 16);
        }

        sub_100017D14(&v16.__locale_);
      }

      else
      {
        sub_100022B8C((v14 + 8), a2, a3);
      }

      std::ios_base::getloc((a2 + *(*a2 - 24)));
      v15 = std::locale::use_facet(&v16, &std::ctype<char>::id);
      (v15->__vftable[2].~facet_0)(v15, 10);
      std::locale::~locale(&v16);
      std::ostream::put();
      result = std::ostream::flush();
      ++v11;
      v10 += 24;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 2) - *(a1 + 1)) >> 3) > v11);
  }

  return result;
}

void sub_100030A8C(void *a1)
{
  *a1 = off_100186CD0;
  a1[1] = 0;
  operator new();
}

uint64_t sub_100030B48(uint64_t a1, char a2, const void **a3, char a4)
{
  v5 = *a3;
  if (*a3)
  {
    v7 = *(a1 + 8);
    v9 = *a3;
    *a3 = 0;
    v10[0] = a2;
    v11 = v5;
    CFRetain(v5);
    v12 = a4;
    sub_100030BE8((v7 + 8), v10);
    sub_100017D14(&v11);
    sub_100017D14(&v9);
  }

  return a1;
}

void sub_100030BC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9)
{
  sub_100017D14((v9 + 8));
  sub_100017D14(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_100030BE8(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = sub_100031028(a1, a2);
  }

  else
  {
    sub_100030FC8(a1, a2);
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t sub_100030C28(uint64_t a1, char a2, const UInt8 *a3, CFIndex a4)
{
  sub_100019910(&v7, a3, a4);
  sub_100030B48(a1, a2, &v7, 0);
  sub_100017D14(&v7);
  return a1;
}

void sub_100030C84(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100030C98(uint64_t a1, char a2, const UInt8 *a3)
{
  sub_1000228AC(&v6, a3);
  sub_100030B48(a1, a2, &v6, 0);
  sub_100017D14(&v6);
  return a1;
}

void sub_100030CF0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100030D04(uint64_t a1, char a2, uint64_t a3)
{
  sub_100022970(&v6, a3);
  sub_100030B48(a1, a2, &v6, 0);
  sub_100017D14(&v6);
  return a1;
}

void sub_100030D5C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100030D70(uint64_t a1, char a2, int a3)
{
  sub_1000229E4(&v6, a3);
  sub_100030B48(a1, a2, &v6, 0);
  sub_100017D14(&v6);
  return a1;
}

void sub_100030DC8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100030DDC(uint64_t a1, char a2, const UInt8 *a3, CFIndex a4)
{
  sub_100019910(&v7, a3, a4);
  sub_100030B48(a1, a2, &v7, 1);
  sub_100017D14(&v7);
  return a1;
}

void sub_100030E38(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100017D14(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100030ED8@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 8);
  *(result + 8) = 0;
  *a2 = v2;
  return result;
}

uint64_t *sub_100030EE8(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 8);
    sub_100030F40(&v3);
    operator delete();
  }

  return result;
}

void sub_100030F40(void ***a1)
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
        v6 = v4 - 3;
        sub_100017D14(v4 - 2);
        v4 = v6;
      }

      while (v6 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

CFTypeRef sub_100030FC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  *v4 = *a2;
  result = *(a2 + 8);
  *(v4 + 8) = result;
  if (result)
  {
    result = CFRetain(result);
  }

  *(v4 + 16) = *(a2 + 16);
  *(a1 + 8) = v4 + 24;
  return result;
}

uint64_t sub_100031028(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    sub_100016C08();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    sub_100031174(a1, v6);
  }

  v7 = 24 * v2;
  v17 = 0;
  v18 = v7;
  v19 = v7;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 8) = v8;
  v9 = v7;
  v10 = v7;
  if (v8)
  {
    CFRetain(v8);
    v9 = v18;
    v10 = v19;
  }

  *(v7 + 16) = *(a2 + 16);
  *&v19 = v10 + 24;
  v11 = a1[1];
  v12 = v9 + *a1 - v11;
  sub_1000311CC(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  sub_10003128C(&v17);
  return v16;
}

void sub_100031160(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_10003128C(va);
  _Unwind_Resume(a1);
}

void sub_100031174(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  sub_100023634();
}

void sub_1000311CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    do
    {
      v8 = v6 + v7;
      v9 = a4 + v7;
      *v9 = *(v6 + v7);
      v10 = *(v6 + v7 + 8);
      *(v9 + 8) = v10;
      if (v10)
      {
        CFRetain(v10);
      }

      *(v9 + 16) = *(v8 + 16);
      v7 += 24;
    }

    while (v8 + 24 != a3);
    while (v6 != a3)
    {
      sub_100017D14((v6 + 8));
      v6 += 24;
    }
  }
}

void sub_100031260(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = -v2;
    v5 = (v1 + v2 - 16);
    do
    {
      v5 = sub_100017D14(v5) - 3;
      v4 += 24;
    }

    while (v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10003128C(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 24;
    sub_100017D14((i - 16));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100031CC4(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = [v7 first];
  v19 = [v8 copy];

  v9 = [v7 second];
  v10 = [v9 copy];

  v11 = +[NSDate date];
  v12 = [v7 second];

  if (!v12)
  {
    v13 = v11;

    v10 = v13;
  }

  [v11 timeIntervalSinceDate:v10];
  if (v14 <= 86400.0)
  {
    [v11 timeIntervalSinceDate:v19];
    if (v15 <= 86400.0)
    {
      v17 = v19;
    }

    else
    {
      v16 = [NSDate dateWithTimeInterval:v11 sinceDate:-86400.0];

      v17 = v16;
    }

    v19 = v17;
    [v10 timeIntervalSinceDate:v17];
    *(*(*(a1 + 40) + 8) + 24) = v18 + *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    *a4 = 1;
    *(*(*(a1 + 32) + 8) + 24) = a3;
  }
}

id sub_10003206C()
{
  if (qword_1001BF6D8 != -1)
  {
    sub_100108CE8();
  }

  v1 = qword_1001BF6D0;

  return v1;
}

void sub_100032188(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1001BF6D0;
  qword_1001BF6D0 = v1;

  [qword_1001BF6D0 setDateStyle:2];
  v3 = qword_1001BF6D0;

  [v3 setTimeStyle:2];
}

uint64_t sub_100032588(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_48;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_48:
        *(a1 + 8) = v29;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v33 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_44:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_100033AD0(id a1)
{
  qword_1001BF6E0 = [NSSet setWithArray:&off_100197C50];

  _objc_release_x1();
}

void sub_100033ECC(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _performEvictionSweep];
}

void sub_100034298(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = [v5 evictionDate];
  v7 = [v6 compare:*(a1 + 32)];

  if (v7 == -1)
  {
    v8 = +[APSTTLCollection suppressedTTRTopics];
    if (!v8)
    {
      goto LABEL_6;
    }

    v9 = [v5 topic];
    if (!v9)
    {
      goto LABEL_6;
    }

    v10 = v9;
    v11 = [v5 topic];
    v12 = [v8 containsObject:v11];

    if (v12)
    {
      [*(a1 + 40) addObject:v15];
    }

    else
    {
LABEL_6:
      [*(a1 + 48) addObject:v15];
      v13 = *(a1 + 56);
      v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v5 itemState]);
      [v13 addObject:v14];
    }
  }
}

void *sub_100034468(void *result, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  *a2 = 0;
  *result = &off_100186DE8;
  result[1] = v3;
  result[2] = a3;
  return result;
}

void *sub_100034494(void *a1)
{
  v2 = a1[1];
  *a1 = &off_100186DE8;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

void sub_100034504(uint64_t a1, uint64_t *a2)
{
  memset(v14, 0, 24);
  v3 = (*(*a1 + 24))(a1, v14);
  v4 = *a2;
  v5 = *(a2 + *(*a2 - 24) + 8);
  if (v3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = v14[0];
      sub_1000231FC(a2, "  [", 3);
      v9 = std::ostream::operator<<();
      v10 = sub_1000231FC(v9, "]: ", 3);
      v11 = sub_10003519C(v10, v8 + v6);
      std::ios_base::getloc((v11 + *(*v11 - 24)));
      v12 = std::locale::use_facet(&v15, &std::ctype<char>::id);
      (v12->__vftable[2].~facet_0)(v12, 10);
      std::locale::~locale(&v15);
      std::ostream::put();
      std::ostream::flush();
      ++v7;
      v6 += 24;
    }

    while (v3 != v7);
    v4 = *a2;
  }

  std::ios_base::getloc((a2 + *(v4 - 24)));
  v13 = std::locale::use_facet(&v15, &std::ctype<char>::id);
  (v13->__vftable[2].~facet_0)(v13, 10);
  std::locale::~locale(&v15);
  std::ostream::put();
  std::ostream::flush();
  *(a2 + *(*a2 - 24) + 8) = v5;
  v15.__locale_ = v14;
  sub_10003478C(&v15);
}

void sub_100034724(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char *a13, std::locale a14)
{
  a13 = &a10;
  sub_10003478C(&a13);
  _Unwind_Resume(a1);
}

void sub_10003478C(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1000272D4(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100034BF8(void *a1, unsigned __int8 **a2, uint64_t *a3, uint64_t a4)
{
  v8 = a1 + 3;
  v9 = a1 + *(*a1 - 24);
  v10 = *(v9 + 2);
  *(v9 + 2) = v10 & 0xFFFFFFB5 | 8;
  v17 = 48;
  sub_100034DB8(a1, &v17);
  sub_1000231FC(a1, "( ", 2);
  v11 = *a2;
  if (*a3 <= *a2)
  {
LABEL_4:
    result = sub_1000231FC(a1, ")", 1);
  }

  else
  {
    while (v11 < &(*a2)[a4])
    {
      *(v8 + *(*a1 - 24)) = 2;
      v12 = *v11++;
      std::ostream::operator<<();
      sub_1000231FC(a1, " ", 1);
      if (v11 >= *a3)
      {
        goto LABEL_4;
      }
    }

    sub_1000231FC(a1, "... ", 4);
    sub_1000231FC(a1, ")", 1);
    v14 = sub_1000231FC(a1, " sz=", 4);
    *(v14 + *(*v14 - 24) + 8) = *(v14 + *(*v14 - 24) + 8) & 0xFFFFFFB5 | 2;
    v15 = *a3;
    v16 = *a2;
    result = std::ostream::operator<<();
  }

  *(a1 + *(*a1 - 24) + 8) = v10;
  return result;
}

void *sub_100034DB8(void *a1, char *a2)
{
  v3 = a1 + *(*a1 - 24);
  v4 = *a2;
  if (*(v3 + 36) == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v5 = std::locale::use_facet(&v8, &std::ctype<char>::id);
    v6 = (v5->__vftable[2].~facet_0)(v5, 32);
    std::locale::~locale(&v8);
    *(v3 + 36) = v6;
  }

  *(v3 + 36) = v4;
  return a1;
}

void *sub_100034E80(void *result, uint64_t *a2, void *a3)
{
  v3 = result;
  v5 = result + 3;
  v4 = *result;
  v6 = *(result + *(*result - 24) + 8);
  v7 = *a3 - *a2;
  if (v7 >= 1)
  {
    v26 = *(result + *(*result - 24) + 8);
    v8 = 0;
    v9 = 0;
    v27 = *a3 - *a2;
    v28 = result + 1;
    do
    {
      v10 = *a2;
      v30 = v9 + 16;
      if (v7 >= v9 + 16)
      {
        v11 = v9 + 16;
      }

      else
      {
        v11 = v7;
      }

      v12 = *v3;
      *(v28 + *(*v3 - 24)) = *(v28 + *(*v3 - 24)) & 0xFFFFFFB5 | 8;
      v13 = (v10 + v9);
      v31 = v11;
      v14 = (v11 + v10);
      *(v5 + *(v12 - 24)) = 8;
      v32 = 48;
      sub_100034DB8(v3, &v32);
      v15 = std::ostream::operator<<();
      sub_1000231FC(v15, "   ", 3);
      if ((v10 + v9) <= 0xFFFFFFFFFFFFFFEFLL)
      {
        v16 = v9 + v8;
        v17 = v13;
        do
        {
          if (v17 >= v14)
          {
            v19 = v3;
            v20 = "   ";
            v21 = 3;
          }

          else
          {
            *(v5 + *(*v3 - 24)) = 2;
            v18 = *v17;
            v19 = std::ostream::operator<<();
            v20 = " ";
            v21 = 1;
          }

          sub_1000231FC(v19, v20, v21);
          if (v17 > v13 && (v16 & 0x8000000000000007) == 7)
          {
            sub_1000231FC(v3, " ", 1);
          }

          ++v17;
          ++v16;
        }

        while (v17 < v13 + 16);
      }

      sub_1000231FC(v3, " |", 2);
      if (v9 != v31)
      {
        do
        {
          v23 = *v13++;
          v22 = v23;
          if ((v23 - 127) < 0xFFFFFFA1)
          {
            v22 = 46;
          }

          v33 = v22;
          sub_1000231FC(v3, &v33, 1);
        }

        while (v13 != v14);
      }

      v24 = sub_1000231FC(v3, "|", 1);
      std::ios_base::getloc((v24 + *(*v24 - 24)));
      v25 = std::locale::use_facet(&v34, &std::ctype<char>::id);
      (v25->__vftable[2].~facet_0)(v25, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      result = std::ostream::flush();
      v8 -= 16;
      v9 += 16;
      v7 = v27;
    }

    while (v30 < v27);
    v4 = *v3;
    v6 = v26;
  }

  *(v3 + *(v4 - 24) + 8) = v6;
  return result;
}

void *sub_10003519C(void *a1, uint64_t a2)
{
  v3 = *a2;
  v5 = *(a2 + 8);
  v6 = v3;
  sub_100034BF8(a1, &v6, &v5, 64);
  return a1;
}

uint64_t sub_1000351E0()
{
  if (qword_1001BF6F8 != -1)
  {
    sub_100108D10();
  }

  return byte_1001BF6F0;
}

void sub_100036208(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 168));
  _Unwind_Resume(a1);
}

void sub_100036240(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _processPotentialIdentityChanged];
    WeakRetained = v2;
  }
}

void sub_1000371A4(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"AudioAccessory"))
    {
      v3 = 1;
    }

    else
    {
      v3 = CFEqual(v2, @"AppleTV") != 0;
    }

    byte_1001BF708 = v3;

    CFRelease(v2);
  }
}

void sub_1000391C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100039200(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 isPowerEfficientToUse] && objc_msgSend(v5, "linkQuality") == -2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_100039274(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 isPowerEfficientToUse] && objc_msgSend(v5, "linkQuality") == -2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_10003D7B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose((v41 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_10003D838(void *a1, void *a2, _BYTE *a3)
{
  v3 = a2;
  v5 = a2;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v6 = *(a1[4] + 272);
  v7 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v41;
    v39 = v3;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v41 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(a1[4] + 272) objectForKey:*(*(&v40 + 1) + 8 * i)];
        v12 = [v5 identifier];
        v13 = [v11 needsToConnectOnInterface:v12];

        if (v13)
        {
          if (*(*(a1[5] + 8) + 40))
          {
            goto LABEL_28;
          }

          v14 = [v11 lastPresence];
          [v14 timeIntervalSinceNow];
          v16 = fabs(v15);

          if (v16 <= 240.0)
          {
            objc_storeStrong((*(a1[6] + 8) + 40), v3);
            objc_storeStrong((*(a1[5] + 8) + 40), v11);
            goto LABEL_28;
          }

          v28 = +[APSLog shouldReduceLogging];
          v29 = +[APSLog courier];
          v30 = v29;
          if (v28)
          {
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              v31 = a1[4];
              v32 = [v11 publicToken];
              *buf = 138412802;
              v45 = v31;
              v3 = v39;
              v46 = 2112;
              v47 = v32;
              v48 = 2048;
              v49 = v16;
              v33 = v30;
              v34 = OS_LOG_TYPE_DEBUG;
              goto LABEL_26;
            }
          }

          else if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v36 = a1[4];
            v32 = [v11 publicToken];
            *buf = 138412802;
            v45 = v36;
            v3 = v39;
            v46 = 2112;
            v47 = v32;
            v48 = 2048;
            v49 = v16;
            v33 = v30;
            v34 = OS_LOG_TYPE_DEFAULT;
LABEL_26:
            _os_log_impl(&_mh_execute_header, v33, v34, "%@: Cannot send client connect message with token '%@' presence age %f because it is too old. Instead, tell the client to retry by sending a expired nonce message", buf, 0x20u);
          }

          [v11 handleExpiredNonceWithServerTime:0 shouldRollToken:0];
          goto LABEL_28;
        }

        v17 = [v5 identifier];
        v18 = [v11 needsToDisconnectOnInterface:v17];

        if (!v18)
        {
          v20 = [v5 identifier];
          v21 = [v11 isConnectedOnInterface:v20];

          if (!v21)
          {
            goto LABEL_28;
          }

          v22 = +[APSLog shouldReduceLogging];
          v23 = +[APSLog courier];
          v24 = v23;
          if (v22)
          {
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
            {
              v25 = a1[4];
              *buf = 138412546;
              v45 = v25;
              v46 = 2112;
              v47 = v11;
              v26 = v24;
              v27 = OS_LOG_TYPE_DEBUG;
              goto LABEL_22;
            }
          }

          else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v35 = a1[4];
            *buf = 138412546;
            v45 = v35;
            v46 = 2112;
            v47 = v11;
            v26 = v24;
            v27 = OS_LOG_TYPE_DEFAULT;
LABEL_22:
            _os_log_impl(&_mh_execute_header, v26, v27, "%@: Client device may think its disconnected, sending a note that its connected.  Client %@", buf, 0x16u);
          }

          [v11 noteIsConnected];
          goto LABEL_28;
        }

        v19 = *(a1[7] + 8);
        if (!*(v19 + 40))
        {
          *(v19 + 40) = v11;
          v37 = v11;

          objc_storeStrong((*(a1[6] + 8) + 40), v3);
          *a3 = 1;
          goto LABEL_30;
        }

LABEL_28:
      }

      v8 = [v6 countByEnumeratingWithState:&v40 objects:v50 count:16];
    }

    while (v8);
  }

LABEL_30:
}

void sub_10003E6A4(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) preferredProtocolConnection];
  v4 = [v12 isEqual:v3];

  v5 = [*(a1 + 40) filterVersionStateMachine];
  v6 = [v12 identifier];
  v7 = [v5 everSentFilterOn:v6];

  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) preferredProtocolConnection];
  v10 = [v9 identifier];
  v11 = [v8 stateOnInterface:v10];

  if ((v4 & 1) == 0 && (v7 & 1) == 0 && v11 == 2)
  {
    [*(a1 + 32) _sendClientFilter:*(a1 + 40) onProtocolConnection:v12];
  }
}

void sub_10003E7A4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v7 = v3;
  v5 = [v3 identifier];
  v6 = [v4 stateOnInterface:v5];

  if (v6 == 2)
  {
    [*(a1 + 40) _sendClientFilter:*(a1 + 32) onProtocolConnection:v7];
  }
}

void sub_10003EB9C(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [v5 generationMatches:*(a1 + 72)];
  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog courier];
  v9 = v8;
  if (!v6)
  {
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a1 + 32);
        v17 = *(a1 + 40);
        v26 = 138412546;
        v27 = v16;
        v28 = 2112;
        v29 = v17;
        v18 = v9;
        v19 = OS_LOG_TYPE_DEBUG;
LABEL_14:
        _os_log_impl(&_mh_execute_header, v18, v19, "%@: ignoring a proxied push ack response that is no longer relevant. (generation) %@", &v26, 0x16u);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = *(a1 + 40);
      v26 = 138412546;
      v27 = v24;
      v28 = 2112;
      v29 = v25;
      v18 = v9;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = [*(a1 + 48) integerValue];
      v13 = *(a1 + 56);
      v26 = 138413058;
      v27 = v10;
      v28 = 2112;
      v29 = v11;
      v30 = 2048;
      v31 = v12;
      v32 = 2112;
      v33 = v13;
      v14 = v9;
      v15 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v14, v15, "%@: Sending %@ proxied acknowledgement message with response %ld and messageId %@", &v26, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(a1 + 32);
    v21 = *(a1 + 40);
    v22 = [*(a1 + 48) integerValue];
    v23 = *(a1 + 56);
    v26 = 138413058;
    v27 = v20;
    v28 = 2112;
    v29 = v21;
    v30 = 2048;
    v31 = v22;
    v32 = 2112;
    v33 = v23;
    v14 = v9;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  [v5 sendMessageAcknowledgeMessageWithResponse:objc_msgSend(*(a1 + 48) messageId:"integerValue") generation:*(a1 + 56) token:{*(a1 + 72), *(a1 + 64)}];
LABEL_16:
  *a3 = 1;
}

id sub_10003F534(uint64_t a1)
{
  v2 = [*(a1 + 32) preferredProtocolConnection];
  if (v2)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = [*(a1 + 56) unsignedIntegerValue];
    v6 = [*(a1 + 64) unsignedIntValue];
    v7 = *(a1 + 72);
    v8 = [*(a1 + 80) unsignedIntegerValue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10003F65C;
    v11[3] = &unk_100187078;
    v11[4] = *(a1 + 32);
    v12 = v2;
    [v12 sendTokenGenerateMessageWithTopicHash:v3 baseToken:v4 appId:v5 expirationTTL:v6 vapidPublicKeyHash:v7 type:v8 withCompletion:v11];
  }

  v9 = [v2 identifier];

  return v9;
}

void sub_10003F66C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APSLog shouldReduceLogging];
  v8 = +[APSLog courier];
  v9 = v8;
  if (v7)
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    *v22 = 138413570;
    *&v22[4] = v10;
    *&v22[12] = 2112;
    *&v22[14] = v5;
    *&v22[22] = 2112;
    v23 = v6;
    *v24 = 2112;
    *&v24[2] = v11;
    *&v24[10] = 2112;
    *&v24[12] = v12;
    *&v24[20] = 2112;
    *&v24[22] = v13;
    v14 = v9;
    v15 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = *(a1 + 48);
    v19 = *(a1 + 56);
    *v22 = 138413570;
    *&v22[4] = v16;
    *&v22[12] = 2112;
    *&v22[14] = v5;
    *&v22[22] = 2112;
    v23 = v6;
    *v24 = 2112;
    *&v24[2] = v17;
    *&v24[10] = 2112;
    *&v24[12] = v18;
    *&v24[20] = 2112;
    *&v24[22] = v19;
    v14 = v9;
    v15 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, v14, v15, "%@ Received response %@ and error %@ for token request for %@ topic %@ appId %@", v22, 0x3Eu);
LABEL_7:

  v20 = [v5 objectForKey:@"APSProtocolAppTokenGenerateResponseToken"];
  if (!v20)
  {
    v21 = +[APSLog courier];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
    {
      sub_100108D38(a1, v21);
    }
  }

  [*(a1 + 40) handleAppTokenGenerateResponse:v5 error:{v6, *v22, *&v22[16], v23, *v24, *&v24[16]}];
}

void sub_10003FB70(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) stateByInterfaceIdentifier];
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];
  v7 = [v6 unsignedIntegerValue];

  if (v7 != 2)
  {
    v8 = +[APSLog shouldReduceLogging];
    v9 = +[APSLog courier];
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v11 = *(a1 + 40);
        v12 = [v3 identifier];
        v16 = 138412802;
        v17 = v11;
        v18 = 2048;
        v19 = v12;
        v20 = 2048;
        v21 = v7;
        v13 = v10;
        v14 = OS_LOG_TYPE_DEBUG;
LABEL_8:
        _os_log_impl(&_mh_execute_header, v13, v14, "%@ Received a pubsub channel list and client isnt connected on interface %ld.  Client State: %ld", &v16, 0x20u);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 40);
      v12 = [v3 identifier];
      v16 = 138412802;
      v17 = v15;
      v18 = 2048;
      v19 = v12;
      v20 = 2048;
      v21 = v7;
      v13 = v10;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  [*(a1 + 40) _sendProxyChannelList:*(a1 + 48) onConnectionType:{objc_msgSend(v3, "connectionType")}];
LABEL_10:
}

void sub_10003FFA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10003FFC0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v13 = a2;
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([v13 count] && objc_msgSend(v7, "length") && objc_msgSend(v8, "length"))
    {
      [WeakRetained setCertificates:v13];
      [WeakRetained setNonce:v7];
      [WeakRetained setSignature:v8];
      v10 = objc_alloc_init(NSDate);
      [WeakRetained setLastNonceRefresh:v10];

      v11 = 1;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, v11);
    }
  }
}

void sub_1000402F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (!a2 || !v5)
  {
    v20 = *(a1 + 48);
    v21 = +[NSMutableArray array];
    (*(v20 + 16))(v20, v21, 0, 0);

    goto LABEL_19;
  }

  v7 = +[NSMutableArray array];
  [v7 addObjectsFromArray:v6];
  v8 = [*(a1 + 32) clientIdentityProvider];
  v9 = *(a1 + 40);
  v25 = 0;
  v26 = 0;
  v10 = [v8 generateNonceAndSignatureWithPublicKey:0 privateKey:a2 dataToSign:0 time:v9 useIDSNonceVersion:0 nonceOut:&v26 signatureOut:&v25];
  v11 = v26;
  v12 = v25;

  v13 = +[APSLog shouldReduceLogging];
  v14 = +[APSLog courier];
  v15 = v14;
  if (v13)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v16 = @"NO";
      v17 = *(a1 + 32);
      if (v10)
      {
        v16 = @"YES";
      }

      *buf = 138412546;
      v28 = v17;
      v29 = 2112;
      v30 = v16;
      v18 = v15;
      v19 = OS_LOG_TYPE_DEBUG;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v18, v19, "%@ generate nonce and sig success? %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"NO";
    v23 = *(a1 + 32);
    if (v10)
    {
      v22 = @"YES";
    }

    *buf = 138412546;
    v28 = v23;
    v29 = 2112;
    v30 = v22;
    v18 = v15;
    v19 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_13;
  }

  if ((v10 & 1) == 0)
  {
    [*(a1 + 32) _deleteClientIdentityRequestingReplacement];
  }

  v24 = *(a1 + 48);
  if (v24)
  {
    (*(v24 + 16))(v24, v7, v11, v12);
  }

LABEL_19:
}

void sub_1000406EC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APSLog shouldReduceLogging];
  v5 = +[APSLog courier];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 32);
      v11 = 138412290;
      v12 = v7;
      v8 = v6;
      v9 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v8, v9, "%@ - systemDidLock and we're connected via noncellular, sending inactive ping to the server", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = *(a1 + 32);
    v11 = 138412290;
    v12 = v10;
    v8 = v6;
    v9 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [v3 sendSetActiveState:0 forInterval:0];
}

id sub_100040A24(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isPowerEfficientToUse];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

id sub_100040A68(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 isPowerEfficientToUse];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void sub_1000414B8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100041554;
  v6[3] = &unk_1001870A0;
  v6[4] = v4;
  v7 = v3;
  v5 = v3;
  [v4 enumerateConnectedProtocolConnectionsOfType:2 block:v6];
}

id sub_100041554(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) _sendOutgoingMessage:*(a1 + 40) onProtocolConnection:a2];
  *a3 = 1;
  return result;
}

void sub_100041598(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 424);
  v3 = [a2 identifier];
  [v2 handleConnectionClosedOnInterface:v3];
}

void sub_1000416E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    v3 = +[APSLog shouldReduceLogging];
    v4 = +[APSLog courier];
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v6 = *(a1 + 32);
        *buf = 138412290;
        v12 = v6;
        v7 = v5;
        v8 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v7, v8, "%@: Failed to preload identity.", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 138412290;
      v12 = v9;
      v7 = v5;
      v8 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }

    return;
  }

  v10 = [*(a1 + 32) delegate];
  [v10 courierIdentityBecameAvailable:*(a1 + 32)];
}

void sub_100045B94(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) stateForProtocolConnection:?];
  if ([v5 filterMode] == 2 || (objc_msgSend(*(a1 + 32), "filterVersionStateMachine"), v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "everHadAckOn:", v7), v7, v6, (v8 & 1) == 0))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }
}

void sub_100045DFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100045E14(uint64_t a1, void *a2, _BYTE *a3)
{
  v9 = a2;
  v5 = [*(a1 + 32) identifier];
  v6 = [v9 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 40) stateForProtocolConnection:v9];
    *(*(*(a1 + 48) + 8) + 24) = [v8 filterMode] == 2;

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

void sub_100046038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100046050(uint64_t a1, void *a2, _BYTE *a3)
{
  v10 = a2;
  v5 = [*(a1 + 32) identifier];
  v6 = [v10 identifier];
  v7 = [v5 isEqualToString:v6];

  if ((v7 & 1) == 0)
  {
    v8 = *(a1 + 40);
    v9 = [v10 identifier];
    *(*(*(a1 + 48) + 8) + 24) = [v8 filterModeOnInterface:v9] == 2;

    if (*(*(*(a1 + 48) + 8) + 24) == 1)
    {
      *a3 = 1;
    }
  }
}

void sub_100046594(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [*(a1 + 32) filterVersionStateMachine];
  v4 = [v6 identifier];
  v5 = [v3 isOutOfDateOn:v4];

  if (v5)
  {
    [*(a1 + 32) _sendFilterMessageOnProtocolConnection:v6 withReason:7];
  }
}

uint64_t sub_10004662C(uint64_t a1)
{
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog courier];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      v11 = 138412290;
      v12 = v5;
      v6 = v4;
      v7 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v6, v7, "%@: Identity provider has processed server bag update, user courier finished processing config", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v11 = 138412290;
    v12 = v8;
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), v9);
}

uint64_t sub_1000468E4(uint64_t a1, uint64_t a2)
{
  v4 = +[APSLog shouldReduceLogging];
  v5 = +[APSLog courier];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = @"NO";
      v8 = *(a1 + 32);
      if (a2)
      {
        v7 = @"YES";
      }

      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v7;
      v9 = v6;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, v10, "%@ underlying identity provider has identity to connect? %@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = @"NO";
    v12 = *(a1 + 32);
    if (a2)
    {
      v11 = @"YES";
    }

    v15 = 138412546;
    v16 = v12;
    v17 = 2112;
    v18 = v11;
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_10;
  }

  return (*(*(a1 + 40) + 16))(*(a1 + 40), a2, v13);
}

void sub_100048694(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32) != v3)
  {
    v5 = [v3 identifier];
    v6 = [*(a1 + 32) identifier];
    v7 = [v5 isEqualToString:v6];

    if ((v7 & 1) == 0)
    {
      v8 = +[APSLog shouldReduceLogging];
      v9 = +[APSLog courier];
      v10 = v9;
      if (v8)
      {
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = *(a1 + 32);
          v11 = *(a1 + 40);
          v17 = 138412802;
          v18 = v11;
          v19 = 2112;
          v20 = v12;
          v21 = 2112;
          v22 = v4;
          v13 = v10;
          v14 = OS_LOG_TYPE_DEBUG;
LABEL_8:
          _os_log_impl(&_mh_execute_header, v13, v14, "%@: Got connect message for new interface %@, disconnecting from old interface %@", &v17, 0x20u);
        }
      }

      else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v15 = *(a1 + 40);
        v17 = 138412802;
        v18 = v15;
        v19 = 2112;
        v20 = v16;
        v21 = 2112;
        v22 = v4;
        v13 = v10;
        v14 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_8;
      }

      [v4 disconnectWithReason:7];
    }
  }
}

void sub_10004882C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained didConnectOrDisconnectTokenForCourier:*(a1 + 32) onProtocolConnection:*(a1 + 40)];
}

void sub_10004AF34(uint64_t a1)
{
  v2 = +[APSLog shouldReduceLogging];
  v3 = +[APSLog courier];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 80);
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      v8 = *(a1 + 64);
      *v33 = 138413058;
      *&v33[4] = v6;
      *&v33[12] = 2048;
      *&v33[14] = v5;
      *&v33[22] = 2112;
      v34 = v7;
      *v35 = 2048;
      *&v35[2] = v8;
      v9 = v4;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, "%@: Sending acknowledgement message with response %ld and messageId %@ (%lu)", v33, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 80);
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v14 = *(a1 + 64);
    *v33 = 138413058;
    *&v33[4] = v12;
    *&v33[12] = 2048;
    *&v33[14] = v11;
    *&v33[22] = 2112;
    v34 = v13;
    *v35 = 2048;
    *&v35[2] = v14;
    v9 = v4;
    v10 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_6;
  }

  [*(a1 + 48) sendMessageAcknowledgeMessageWithResponse:*(a1 + 80) messageId:*(a1 + 40) generation:*(a1 + 72) token:0];
  if ([*(a1 + 56) isTracingEnabled])
  {
    v15 = [*(a1 + 56) tracingUUID];

    if (v15)
    {
      v16 = *(*(a1 + 32) + 456);
      v17 = [*(a1 + 56) tracingUUID];
      v18 = [*(a1 + 56) topic];
      [v16 addItem:v17 withInitialState:3 withTopic:v18];

      LODWORD(v17) = +[APSLog shouldReduceLogging];
      v19 = +[APSLog courier];
      v20 = v19;
      if (v17)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
        {
          v21 = *(a1 + 32);
          v22 = *(v21 + 456);
          v23 = [*(a1 + 56) tracingUUID];
          v24 = [NSNumber numberWithUnsignedInt:3];
          v25 = [*(a1 + 56) topic];
          *v33 = 138413314;
          *&v33[4] = v21;
          *&v33[12] = 2112;
          *&v33[14] = v22;
          *&v33[22] = 2112;
          v34 = v23;
          *v35 = 2112;
          *&v35[2] = v24;
          *&v35[10] = 2112;
          *&v35[12] = v25;
          v26 = v20;
          v27 = OS_LOG_TYPE_DEBUG;
LABEL_14:
          _os_log_impl(&_mh_execute_header, v26, v27, "%@ Added tracing enabled message into collection. {Collection:%@; UUID:%@; State:%@; topic:%@}", v33, 0x34u);
        }
      }

      else if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v28 = *(a1 + 32);
        v29 = *(v28 + 456);
        v23 = [*(a1 + 56) tracingUUID];
        v24 = [NSNumber numberWithUnsignedInt:3];
        v25 = [*(a1 + 56) topic];
        *v33 = 138413314;
        *&v33[4] = v28;
        *&v33[12] = 2112;
        *&v33[14] = v29;
        *&v33[22] = 2112;
        v34 = v23;
        *v35 = 2112;
        *&v35[2] = v24;
        *&v35[10] = 2112;
        *&v35[12] = v25;
        v26 = v20;
        v27 = OS_LOG_TYPE_DEFAULT;
        goto LABEL_14;
      }
    }
  }

  v30 = [APSLog PUSHTRACE:*v33];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = *(a1 + 32);
    v32 = [*(a1 + 56) tracingUUID];
    *v33 = 138412546;
    *&v33[4] = v31;
    *&v33[12] = 2112;
    *&v33[14] = v32;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "%@: Sending Push ACK. UUID: %@", v33, 0x16u);
  }
}

id sub_10004B304(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = *(v3 + 16);
  v5 = a2;
  v4(v3);
  [*(a1 + 32) setGuid:v5];

  v7 = *(a1 + 32);
  v6 = *(a1 + 40);

  return [v6 _notifyForIncomingMessage:v7];
}

void sub_10004B554(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v2 = objc_begin_catch(exception_object);

    v3 = +[APSLog courier];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_1001095E4();
    }

    objc_end_catch();
    JUMPOUT(0x10004B50CLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_10004BFB4(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = [v10 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqualToString:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [*(a1 + 40) filterVersionStateMachine];
    v7 = [v10 identifier];
    v8 = [*(a1 + 32) identifier];
    v9 = [v6 hasStaleStateOn:v7 comparedTo:v8];

    if (v9)
    {
      [*(a1 + 40) logStateWithReason:@"DroppedInterfaceFilter"];
      [*(a1 + 40) _sendFilterMessageOnProtocolConnection:v10 withReason:8];
    }
  }
}

void sub_10004C0B4(id a1, APSOutgoingMessage *a2, APSOutgoingMessageOriginator *a3)
{
  v4 = a3;
  v5 = a2;
  [(APSOutgoingMessage *)v5 setCancelled:1];
  v6 = APSError();
  [(APSOutgoingMessageOriginator *)v4 handleResult:v6 forSendingOutgoingMessage:v5];
}

void sub_10004C4A0(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [v4 connectionType];
  if (v3 != [*(a1 + 32) connectionType])
  {
    [*(a1 + 40) _sendFilterMessageOnProtocolConnection:v4 withReason:1];
  }
}

void sub_10004C830(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) stateForProtocolConnection:*(a1 + 40)];
  [v4 setUserState:1];

  if ((a2 & 1) == 0)
  {
    v20 = +[APSLog shouldReduceLogging];
    v21 = +[APSLog courier];
    v22 = v21;
    if (v20)
    {
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v23 = *(a1 + 32);
        *buf = 138412290;
        v47 = v23;
        v24 = v22;
        v25 = OS_LOG_TYPE_DEBUG;
LABEL_16:
        _os_log_impl(&_mh_execute_header, v24, v25, "%@ Refreshing cert/nonce/sig failed, not sending a presence", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      *buf = 138412290;
      v47 = v26;
      v24 = v22;
      v25 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_16;
    }

    [*(a1 + 40) disconnectWithReason:14];
    return;
  }

  if ([*(a1 + 32) locallyDisabledFilterOptimization])
  {
    v5 = 0;
  }

  else
  {
    v5 = 0x2000;
  }

  v6 = [*(a1 + 32) clientIdentityProvider];
  v7 = [v6 flagsForPresence];

  v8 = [*(a1 + 32) clientIdentityProvider];
  v9 = [v8 supportsFetchingVMHostCerts];

  if (!v9)
  {
    v41 = v5;
    v12 = 0;
    goto LABEL_19;
  }

  v10 = [*(a1 + 32) clientIdentityProvider];
  v11 = [*(a1 + 32) nonce];
  v45 = 0;
  v12 = [v10 fetchVMHostCertsAndSignData:v11 error:&v45];
  v13 = v45;

  if (!v13)
  {
    v41 = v5;
LABEL_19:
    v27 = objc_alloc_init(NSDate);
    [*(a1 + 32) setLastPresence:v27];

    v38 = *(a1 + 48);
    v39 = *(a1 + 40);
    v28 = *(a1 + 56);
    v42 = v12;
    v40 = v7;
    if (v28 == 1)
    {
      v29 = [*(a1 + 32) certificates];
      if (*(a1 + 56))
      {
        v30 = [*(a1 + 32) nonce];
        if (*(a1 + 56))
        {
          v31 = [*(a1 + 32) signature];
          if ((*(a1 + 56) & 1) == 0)
          {
            v12 = 0;
          }

          v37 = 1;
        }

        else
        {
          v37 = 0;
          v12 = 0;
          v31 = 0;
        }

        v32 = 1;
        goto LABEL_34;
      }

      v30 = 0;
      v37 = 0;
      v32 = 0;
    }

    else
    {
      v30 = 0;
      v37 = 0;
      v32 = 0;
      v29 = 0;
    }

    v12 = 0;
    v31 = 0;
LABEL_34:
    v34 = [*(a1 + 32) clientIdentityProvider];
    v35 = [v34 errorsSinceLastSuccessfulServerPresence];
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_10004CCAC;
    v43[3] = &unk_100187078;
    v36 = *(a1 + 40);
    v43[4] = *(a1 + 32);
    v44 = v36;
    [v39 sendConnectMessageWithToken:v38 presenceFlags:v40 | v41 certificates:v29 nonce:v30 signature:v31 hostCertificateInfo:v12 connectionErrors:v35 withCompletion:v43];

    if (v37)
    {
    }

    v12 = v42;
    if (v32)
    {
    }

    if (v28)
    {
    }

    goto LABEL_41;
  }

  v14 = +[APSLog shouldReduceLogging];
  v15 = +[APSLog courier];
  v16 = v15;
  if (v14)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v17 = *(a1 + 32);
      *buf = 138412546;
      v47 = v17;
      v48 = 2112;
      v49 = v13;
      v18 = v16;
      v19 = OS_LOG_TYPE_DEBUG;
LABEL_30:
      _os_log_impl(&_mh_execute_header, v18, v19, "%@ Host identity signing failed!: %@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 32);
    *buf = 138412546;
    v47 = v33;
    v48 = 2112;
    v49 = v13;
    v18 = v16;
    v19 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_30;
  }

  [*(a1 + 40) disconnectWithReason:14];
LABEL_41:
}

void sub_10004CD98(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setReason:2];
  [*(a1 + 40) _sendFilterMessageOnProtocolConnection:v4 withChange:*(a1 + 32)];
}

void sub_10004D524(id *a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  context = objc_autoreleasePoolPush();
  v19 = objc_autoreleasePoolPush();
  v67 = v13;
  v68 = [a1[4] _topicsByHashFromTopicStateDictionary:v13];
  v70 = [a1[4] _topicsByHashFromTopicStateDictionary:v14];
  v72 = [a1[4] _topicsByHashFromTopicStateDictionary:v15];
  v73 = [a1[4] _topicsByHashFromTopicStateDictionary:v16];
  v74 = [a1[4] _topicsByHashFromTopicStateDictionary:v17];
  objc_autoreleasePoolPop(v19);
  v20 = [a1[4] filterVersionStateMachine];
  v21 = [a1[5] identifier];
  v77 = 0;
  v22 = [v20 versionToSendFor:v21 error:&v77];
  v23 = v77;

  if (v23)
  {
    v24 = +[APSLog shouldReduceLogging];
    v25 = +[APSLog courier];
    v26 = v25;
    if (v24)
    {
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v79 = v23;
        v27 = v26;
        v28 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&_mh_execute_header, v27, v28, "Error fetching filter version; disconnecting {versionError: %@}", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = v23;
      v27 = v26;
      v28 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }

    [a1[5] disconnectWithReason:6];
    goto LABEL_25;
  }

  v63 = v22;
  v65 = v18;
  v29 = +[APSLog courierOversized];
  v64 = v17;
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v59 = a1[4];
    v30 = [a1[6] reason];
    v61 = v15;
    v62 = v14;
    v60 = v16;
    if (v30 > 8)
    {
      v58 = 0;
    }

    else
    {
      v58 = off_100187468[v30];
    }

    v31 = [a1[6] triggeringTopic];
    v32 = [a1[7] debugDescription];
    v57 = a1[5];
    v33 = APSPrettyPrintCollection();
    v34 = APSPrettyPrintCollection();
    v35 = APSPrettyPrintCollection();
    v36 = APSPrettyPrintCollection();
    v37 = APSPrettyPrintCollection();
    *buf = 138414850;
    v79 = v59;
    v80 = 2048;
    v81 = v63;
    v82 = 2112;
    v83 = v58;
    v84 = 2112;
    v85 = v31;
    v86 = 2112;
    v87 = v32;
    v88 = 2114;
    v89 = v57;
    v90 = 2112;
    v91 = v33;
    v92 = 2112;
    v93 = v34;
    v94 = 2112;
    v95 = v35;
    v96 = 2112;
    v97 = v36;
    v98 = 2112;
    v99 = v37;
    _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%@: Sending filter message for version: %llu reason %@ triggeringTopic %@ with token %@ on interface %{public}@ with enabled topics = %@, opportunistic topics = %@, non-waking topics = %@, paused topics = %@, ignored topics = %@", buf, 0x70u);

    v15 = v61;
    v14 = v62;
    v16 = v60;
    v17 = v64;
  }

  v38 = [a1[5] isConnected];
  v39 = a1[4];
  if (v38)
  {
    v40 = [v39 filterVersionStateMachine];
    v41 = [a1[5] identifier];
    v42 = [v40 everSentFilterOn:v41];

    if ((v42 & 1) == 0)
    {
      ++*(a1[4] + 24);
      [*(a1[4] + 27) hold];
    }

    v43 = [a1[4] expectsResponseForFilterMessageOnProtocolConnection:a1[5]];
    if (_os_feature_enabled_impl() && [a1[5] interfaceConstraint] == 1)
    {
      v44 = [a1[4] _ultraConstrainedTopicsFromTopicDictionary:v68];

      v69 = [a1[4] _ultraConstrainedTopicsFromTopicDictionary:v70];

      v71 = [a1[4] _ultraConstrainedTopicsFromTopicDictionary:v72];

      [a1[4] _ultraConstrainedTopicsFromTopicDictionary:v73];
      v46 = v45 = v15;

      [a1[4] _ultraConstrainedTopicsFromTopicDictionary:v74];
      v48 = v47 = v16;

      v73 = v46;
      v74 = v48;
      v16 = v47;
      v15 = v45;
      v49 = v71;
      v70 = v69;
      v72 = v49;
      v68 = v44;
    }

    v17 = v64;
    v50 = a1[7];
    v75[0] = _NSConcreteStackBlock;
    v75[1] = 3221225472;
    v75[2] = sub_10004DC24;
    v75[3] = &unk_100187078;
    v51 = a1[5];
    v75[4] = a1[4];
    v76 = v51;
    LOBYTE(v56) = v43;
    [v76 sendFilterMessageWithEnabledTopicsByHash:v68 ignoredTopicsByHash:v70 opportunisticTopicsByHash:v72 nonWakingTopicsByHash:v73 pausedTopicsByHash:v74 saltsByTopic:v65 token:v50 version:v63 expectsResponse:v56 withCompletion:v75];
    if ((v43 & 1) == 0)
    {
      v52 = [a1[4] filterVersionStateMachine];
      v53 = [a1[5] identifier];
      [v52 noteAckedWithVersion:v63 on:v53];
    }

    v54 = [a1[4] filterVersionStateMachine];
    v55 = [a1[5] identifier];
    [v54 noteSentWithVersion:v63 on:v55];

    [a1[4] logStateWithReason:0];
    [a1[4] setHasFilterChanged:0];
    +[APSMetricLogger filterSent:connectionType:](APSMetricLogger, "filterSent:connectionType:", a1[6], [a1[5] connectionType]);
  }

  else
  {
    [v39 logStateWithReason:0];
  }

  v18 = v65;
LABEL_25:

  objc_autoreleasePoolPop(context);
}

id sub_10004EA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return [*(*(a1 + 32) + 416) handleErrorSendingOutgoingMessage:*(a1 + 40) error:a3];
  }

  else
  {
    return [*(a1 + 32) _handleOutgoingMessageAcknowledgment:a2 onProtocolConnection:*(a1 + 48)];
  }
}

void sub_10004EBBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va1, a8);
  va_start(va, a8);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  _Block_object_dispose((v8 - 64), 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_10004EBF4(uint64_t a1, void *a2)
{
  v6 = a2;
  if (![v6 connectionType])
  {
    v5 = 32;
    v4 = v6;
    goto LABEL_6;
  }

  v3 = [v6 connectionType] == 1;
  v4 = v6;
  if (v3)
  {
    v5 = 40;
LABEL_6:
    *(*(*(a1 + v5) + 8) + 24) = 1;
  }
}

Class sub_10004F100(uint64_t a1)
{
  v3[0] = 0;
  if (!qword_1001BF738)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_10004F22C;
    v3[4] = &unk_1001863D0;
    v3[5] = v3;
    v4 = off_100187450;
    v5 = 0;
    qword_1001BF738 = _sl_dlopen();
  }

  if (!qword_1001BF738)
  {
    sub_100109740(v3);
  }

  if (v3[0])
  {
    free(v3[0]);
  }

  result = objc_getClass("SafetyAlerts");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    sub_1001096C4();
  }

  qword_1001BF730 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10004F22C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001BF738 = result;
  return result;
}

void sub_10004F618(uint64_t a1, uint64_t a2)
{
  v2 = [*(a1 + 32) stateForProtocolConnection:a2];
  [v2 setTrackingState:0];
}

void sub_10004FF6C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

void sub_10004FF88(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  state = xpc_activity_get_state(v3);
  if (state == 2)
  {
    v10 = +[APSLog courier];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"YES";
      if (!v3)
      {
        v11 = @"NO";
      }

      *buf = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Got called to checkpoint app token cleanup run state with non null activity %@", buf, 0xCu);
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000501E0;
    block[3] = &unk_100186D90;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }

  else if (!state)
  {
    v6 = +[APSLog courier];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Told to check in for app token cleanup activity", buf, 2u);
    }

    v7 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_string(v7, XPC_ACTIVITY_PRIORITY, XPC_ACTIVITY_PRIORITY_MAINTENANCE);
    xpc_dictionary_set_BOOL(v7, XPC_ACTIVITY_ALLOW_BATTERY, 0);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_GRACE_PERIOD, XPC_ACTIVITY_INTERVAL_4_HOURS);
    xpc_dictionary_set_int64(v7, XPC_ACTIVITY_INTERVAL, 43200);
    v8 = xpc_activity_copy_criteria(v3);
    v9 = v8;
    if (!v8 || !xpc_equal(v8, v7))
    {
      xpc_activity_set_criteria(v3, v7);
    }
  }
}

void sub_100050D84(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [a1[5] publicToken];
    [a1[4] setBaseToken:v4];

    [a1[5] saveToken:v3 forInfo:a1[4] connection:a1[6]];
    v5 = +[APSLog courier];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a1[4];
      v6 = a1[5];
      v8 = 138412802;
      v9 = v6;
      v10 = 2112;
      v11 = v3;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@ handleReceivedToken: %@ forInfo %@", &v8, 0x20u);
    }

    [a1[6] handleReceivedToken:v3 forInfo:a1[4]];
  }
}

id sub_100050EA0(id *a1, void *a2)
{
  v4 = a1 + 4;
  v5 = [a1[4] type];
  v6 = [v4[1] topicManager];
  v7 = *(v4[1] + 38);
  v8 = [*v4 topic];
  v9 = [v4[1] courierUser];
  v10 = [v7 createTopicHashForTopic:v8 user:v9 shouldSalt:0];
  v11 = [v6 hasTopicHash:v10 includeRecentlyRemoved:0];

  if (v5 != 2 || !v11)
  {
    v16 = *(a1[5] + 38);
    v17 = [a1[4] topic];
    v18 = [a1[5] courierUser];
    v13 = [v16 createTopicHashForTopic:v17 user:v18 shouldSalt:v5 == 2];

    v19 = [a1[4] vapidPublicKey];

    if (v19)
    {
      v20 = [*v4 vapidPublicKey];
      v19 = sub_1000883A0(v20);

      v21 = v19 == 0;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v21 = 0;
      if (!v13)
      {
        goto LABEL_15;
      }
    }

    if (!v21)
    {
      v22 = [*v4 identifier];

      if (v22)
      {
        v23 = [a1[5] userAppIDManager];
        v24 = [*(a1[5] + 2) name];
        v25 = [a1[4] topic];
        v26 = [a1[4] identifier];
        v27 = [v23 loadOrCreateAppIdForEnvironmentName:v24 topic:v25 identifier:v26];

        if (!v27)
        {
          v41 = +[APSLog courier];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_FAULT))
          {
            sub_100109848(v4, v41);
          }

          if (a2)
          {
            APSError();
            *a2 = v15 = 0;
          }

          else
          {
            v15 = 0;
          }

          goto LABEL_30;
        }

        v28 = [v27 unsignedShortValue];
      }

      else
      {
        v28 = 0;
      }

      v30 = [*v4 expirationDate];
      if (v30)
      {
        v31 = [*v4 expirationDate];
        [v31 timeIntervalSinceNow];
        v33 = v32;
      }

      else
      {
        v33 = 0;
      }

      v35 = +[APSLog courier];
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = a1[5];
        v37 = [a1[4] identifier];
        *buf = 138412802;
        v51 = v36;
        v52 = 1024;
        v53 = v28;
        v54 = 2112;
        v55 = v37;
        _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "%@ generated appId %d for identifier %@", buf, 0x1Cu);
      }

      v29 = [a1[5] preferredProtocolConnection];
      if (v29)
      {
        v38 = [a1[6] publicToken];
        v39 = [a1[4] type];
        v44 = _NSConcreteStackBlock;
        v45 = 3221225472;
        v46 = sub_100051414;
        v47 = &unk_100187078;
        v48 = a1[5];
        v29 = v29;
        v49 = v29;
        [v29 sendTokenGenerateMessageWithTopicHash:v13 baseToken:v38 appId:v28 expirationTTL:v33 vapidPublicKeyHash:v19 type:v39 withCompletion:&v44];
      }

LABEL_29:
      v15 = [v29 identifier];

LABEL_30:
      goto LABEL_31;
    }

LABEL_15:
    if (a2)
    {
      if (v5 == 2)
      {
        APSURLTokenError();
        *a2 = v29 = 0;
        goto LABEL_29;
      }

      v34 = [*v4 topic];
      [*v4 identifier];
      v43 = v42 = v34;
      *a2 = APSError();
    }

    v29 = 0;
    goto LABEL_29;
  }

  v12 = +[APSLog courier];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    sub_100109910(v4, v12);
  }

  v13 = APSURLTokenError();
  [a1[6] handleReceivedTokenError:v13 forInfo:a1[4]];
  if (a2)
  {
    v14 = v13;
    v15 = 0;
    *a2 = v13;
  }

  else
  {
    v15 = 0;
  }

LABEL_31:

  return v15;
}

void sub_100051424(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APSLog courier];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = [*(a1 + 40) topic];
    v10 = [*(a1 + 40) identifier];
    v18 = 138413314;
    v19 = v8;
    v20 = 2112;
    v21 = v5;
    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Received response %@ and error %@ for token request for topic %@ identifier %@", &v18, 0x34u);
  }

  v11 = [v5 objectForKey:@"APSProtocolAppTokenGenerateResponse"];
  v12 = [v5 objectForKey:@"APSProtocolAppTokenGenerateResponseToken"];
  if (v11)
  {
    v13 = [v5 objectForKey:@"APSProtocolAppTokenGenerateResponseTopicHash"];
    v14 = [v5 objectForKey:@"APSProtocolAppTokenGenerateResponseAppId"];
    if (!v14)
    {
      v14 = [NSNumber numberWithInt:0];
    }

    v15 = [v11 intValue];
    if (v15 <= 1)
    {
      if (!v15)
      {
        if ([v14 intValue] < 0x10000 && v13 && v12)
        {
          (*(*(a1 + 56) + 16))();
LABEL_31:

          goto LABEL_32;
        }

        v16 = +[APSLog courier];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100109A5C(v5, v16);
        }

LABEL_30:

        goto LABEL_31;
      }

      if (v15 == 1)
      {
        v16 = +[APSLog courier];
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_100109A28();
        }

        goto LABEL_30;
      }
    }

    else
    {
      switch(v15)
      {
        case 2:
          v16 = +[APSLog courier];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1001099F4();
          }

          goto LABEL_30;
        case 4:
          v16 = +[APSLog courier];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_1001099C0();
          }

          goto LABEL_30;
        case 5:
          v16 = +[APSLog courier];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            sub_10010998C();
          }

          goto LABEL_30;
      }
    }

    v16 = +[APSLog courier];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      sub_100109AD4();
    }

    goto LABEL_30;
  }

  v13 = +[APSLog courier];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    sub_100109B08();
  }

LABEL_32:

  if (!v12)
  {
    v17 = +[APSLog courier];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      sub_100109B48(a1, v17);
    }

    [*(a1 + 48) handleReceivedTokenError:v6 forInfo:*(a1 + 40)];
  }
}

void sub_100051FD0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

APSProcessModeUserTracker *sub_100051FF8()
{
  v0 = [APSProcessModeUserTracker alloc];
  v1 = +[APSMultiUserMode sharedInstance];
  v2 = [(APSProcessModeUserTracker *)v0 initWithMultiUserMode:v1];

  return v2;
}

void sub_1000522B4(id a1, NSString *a2, BOOL a3, BOOL a4, NSNumber *a5, NSNumber *a6)
{
  v7 = a4;
  v8 = a3;
  v9 = a5;
  v10 = a6;
  v11 = +[APSLog telemetry];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    v14 = 138413058;
    if (v8)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    v15 = v13;
    v16 = 2112;
    if (v7)
    {
      v12 = @"YES";
    }

    v17 = v12;
    v18 = 2112;
    v19 = v9;
    v20 = 2112;
    v21 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Reporting wake-to-live metric {connectedOnWake: %@, everConnected: %@, timeToFullyConnect: %@, timeToLastFromStorage: %@}", &v14, 0x2Au);
  }
}

uint64_t sub_100052E80(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        break;
      }

      if (v13 == 1)
      {
        v22 = 0;
        v23 = 0;
        v24 = 0;
        *(a1 + 32) |= 4u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v25 = [a2 position] + 1;
          if (v25 >= [a2 position] && (v26 = objc_msgSend(a2, "position") + 1, v26 <= objc_msgSend(a2, "length")))
          {
            v27 = [a2 data];
            [v27 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v24 |= (v38[0] & 0x7F) << v22;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v22 += 7;
          v11 = v23++ >= 9;
          if (v11)
          {
            v28 = 0;
            goto LABEL_61;
          }
        }

        if ([a2 hasError])
        {
          v28 = 0;
        }

        else
        {
          v28 = v24;
        }

LABEL_61:
        v35 = 28;
LABEL_66:
        *(a1 + v35) = v28;
        goto LABEL_67;
      }

      if (v13 != 2)
      {
        goto LABEL_34;
      }

      v14 = objc_alloc_init(PSAppChannelSubscriptions);
      [a1 addAppChannelSubscriptions:v14];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !sub_100076F70(v14, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_67:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (v13 == 3)
    {
      v29 = 0;
      v30 = 0;
      v31 = 0;
      *(a1 + 32) |= 2u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v32 = [a2 position] + 1;
        if (v32 >= [a2 position] && (v33 = objc_msgSend(a2, "position") + 1, v33 <= objc_msgSend(a2, "length")))
        {
          v34 = [a2 data];
          [v34 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v31 |= (v38[0] & 0x7F) << v29;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v29 += 7;
        v11 = v30++ >= 9;
        if (v11)
        {
          v28 = 0;
          goto LABEL_65;
        }
      }

      if ([a2 hasError])
      {
        v28 = 0;
      }

      else
      {
        v28 = v31;
      }

LABEL_65:
      v35 = 24;
      goto LABEL_66;
    }

    if (v13 == 4)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      *(a1 + 32) |= 1u;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v18 = [a2 position] + 1;
        if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
        {
          v20 = [a2 data];
          [v20 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v17 |= (v38[0] & 0x7F) << v15;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v15 += 7;
        v11 = v16++ >= 9;
        if (v11)
        {
          v21 = 0;
          goto LABEL_57;
        }
      }

      if ([a2 hasError])
      {
        v21 = 0;
      }

      else
      {
        v21 = v17;
      }

LABEL_57:
      *(a1 + 8) = v21;
      goto LABEL_67;
    }

LABEL_34:
    if ((PBReaderSkipValueWithTag() & 1) == 0)
    {
      return 0;
    }

    goto LABEL_67;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000545EC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v32 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v32 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v32 & 0x7F) << v5;
        if ((v32 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 28) |= 1u;
        while (1)
        {
          v34 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v34 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v34 & 0x7F) << v23;
          if ((v34 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_48;
          }
        }

        v29 = [a2 hasError] ? 0 : v25;
LABEL_48:
        *(a1 + 8) = v29;
      }

      else if (v13 == 2)
      {
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 28) |= 2u;
        while (1)
        {
          v33 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v33 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v33 & 0x7F) << v16;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_44;
          }
        }

        v22 = [a2 hasError] ? 0 : v18;
LABEL_44:
        *(a1 + 24) = v22;
      }

      else if (v13 == 1)
      {
        v14 = PBReaderReadData();
        v15 = *(a1 + 16);
        *(a1 + 16) = v14;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v31 = [a2 position];
    }

    while (v31 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100054E24(uint64_t a1)
{
  v1 = 3;
  if (a1 == 1)
  {
    v1 = 1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100054E3C()
{
  v0 = qword_1001C0430;
  qword_1001C0430 = &off_100197BB0;

  v1 = qword_1001C0438;
  qword_1001C0438 = &off_100197BD8;

  v2 = qword_1001C0440;
  qword_1001C0440 = &off_100197C00;

  v3 = qword_1001C0448;
  qword_1001C0448 = &off_100197C28;

  qword_1001BF740 = objc_alloc_init(APSWakeStateManager);

  return _objc_release_x1();
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  _set_user_dir_suffix();
  v1 = objc_autoreleasePoolPush();
  v2 = objc_alloc_init(APSDaemon);
  objc_autoreleasePoolPop(v1);
  if (v2)
  {
    v3 = +[NSRunLoop currentRunLoop];
    [v3 run];
  }

  objc_autoreleasePoolPop(v0);
  return 0;
}

void sub_10005A0C8(uint64_t a1)
{
  v2 = +[APSLog daemon];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) object];
    v4 = [v3 _connectionsDebuggingState];
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Printing all couriers and connection servers in response to USR1 signal: %@", &v5, 0xCu);
  }
}

void sub_10005A1A8(id a1, OS_xpc_object *a2)
{
  v2 = +[APSLog daemon];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Received waking signal from IDS.", v3, 2u);
  }
}

void sub_10005A8F0(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 updateSafeToSendFilterForce:0];
}

void sub_10005BFF4(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = +[APSLog daemon];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting connection %@ on peer: %@", &v7, 0x16u);
  }

  xpc_connection_set_context(v5, v4);
}

void sub_10005D114(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 _performPeriodicSignal];
}

void sub_1000604EC(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x3E0], 8);
  _Block_object_dispose(&STACK[0x400], 8);
  _Unwind_Resume(a1);
}

BOOL sub_1000605AC(uint64_t a1)
{
  v1 = *(*(a1 + 72) + 8);
  v2 = *(v1 + 24);
  *(v1 + 24) = v2 + 1;
  v3 = *(a1 + 88);
  if (v2 >= v3)
  {
    v5 = *(*(a1 + 80) + 8);
    if ((*(v5 + 24) & 1) == 0)
    {
      *(v5 + 24) = 1;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(*(*(a1 + 72) + 8) + 24) - 1;
        v7 = *(a1 + 32);
        v8 = [*(a1 + 40) count];
        v9 = [*(a1 + 48) count];
        v10 = [*(a1 + 56) count];
        v11 = [*(a1 + 64) count];
        v13 = 134219266;
        v14 = v6;
        v15 = 2112;
        v16 = v7;
        v17 = 2048;
        v18 = v8;
        v19 = 2048;
        v20 = v9;
        v21 = 2048;
        v22 = v10;
        v23 = 2048;
        v24 = v11;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Stopped indexing hashes at index %lu {token: %@, enabledHashes.count: %lu, ignoredHashes.count: %lu, opportunisticHashes.count: %lu, pausedHashes.count: %lu}", &v13, 0x3Eu);
      }
    }
  }

  return v2 < v3;
}

void sub_100060710(uint64_t a1, void *a2, unsigned __int8 a3, void *a4)
{
  v10 = a2;
  v7 = a4;
  if ([v10 length] > 0x1F)
  {
    [v7 addObject:v10];
  }

  else
  {
    v8 = (*(*(a1 + 48) + 16))();
    v9 = [*(a1 + 32) sharedEncoder];
    [v9 appendItem:a3 data:v10 isIndexable:v8];

    [*(a1 + 40) appendItem:a3 data:v10];
    [*(*(a1 + 32) + 16) addDataWithAttributeId:a3 data:v10 isIndexable:v8];
  }
}

void sub_1000607F8(uint64_t a1, void *a2, unsigned __int8 a3)
{
  v5 = *(a1 + 48);
  v6 = *(v5 + 16);
  v9 = a2;
  v7 = v6(v5);
  v8 = [*(a1 + 32) sharedEncoder];
  [v8 appendItem:a3 data:v9 isIndexable:v7];

  [*(a1 + 40) appendItem:a3 data:v9];
  [*(*(a1 + 32) + 16) addDataWithAttributeId:a3 data:v9 isIndexable:v7];
}

void sub_100065A4C(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = v2;
  if (v2)
  {
    objc_sync_enter(v2);
    --v3[34];
    objc_sync_exit(v3);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100065BE8;
  v9[3] = &unk_100187B20;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = *(a1 + 56);
  v12 = *(a1 + 48);
  v4 = objc_retainBlock(v9);
  v5 = v4;
  if (*(a1 + 57) == 1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100065DE8;
    block[3] = &unk_100187B48;
    v8 = v4;
    v6 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(&_dispatch_main_q, v6);
  }

  else
  {
    (v4[2])(v4);
  }
}

void sub_100065BE8(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  v3 = [(atomic_ullong *)v2 connection];
  if (v3)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    (*(*(a1 + 40) + 16))();
    v5 = *(a1 + 56);
    v6 = +[APSLog connectionServer];
    v7 = v6;
    if (v5 == 1)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
      {
        sub_100109F14();
      }

      if (*(a1 + 48))
      {
        handler[0] = _NSConcreteStackBlock;
        handler[1] = 3221225472;
        handler[2] = sub_100065DD8;
        handler[3] = &unk_100187AF8;
        v10 = *(a1 + 48);
        xpc_connection_send_message_with_reply(v3, v4, &_dispatch_main_q, handler);
      }

      else
      {
        xpc_connection_send_message(v3, v4);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v12 = v2;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Dispatching low priority message on server: %@", buf, 0xCu);
      }

      xpc_connection_send_notification();
    }

    atomic_fetch_add(v2 + 23, 1uLL);
    +[NSDate timeIntervalSinceReferenceDate];
    v2[24] = v8;
  }
}

id sub_100066840(uint64_t a1, void *a2, void *a3)
{
  v23 = a2;
  v4 = a3;
  v25 = objc_alloc_init(NSMutableDictionary);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = v4;
  v26 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v26)
  {
    v24 = *v29;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v28 + 1) + 8 * i);
        v7 = [obj objectForKeyedSubscript:v6];
        v34[0] = @"total";
        v8 = [v7 total];
        v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v8 count]);
        v35[0] = v9;
        v34[1] = @"prevHour";
        v10 = [v7 total];
        v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v10 sumOfBucketType:0]);
        v35[1] = v11;
        v34[2] = @"prevDay";
        v12 = [v7 total];
        v13 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 sumOfBucketType:1]);
        v35[2] = v13;
        v14 = [NSDictionary dictionaryWithObjects:v35 forKeys:v34 count:3];
        [v25 setObject:v14 forKeyedSubscript:v6];
      }

      v26 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v26);
  }

  v32[0] = @"lastMsg";
  v15 = [v23 total];
  [v15 lastMessageTime];
  v16 = [APSDatePrinter dateStringFromInterval:?];
  v33[0] = v16;
  v32[1] = @"prevHour";
  v17 = [v23 total];
  v18 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v17 sumOfBucketType:0]);
  v33[1] = v18;
  v32[2] = @"prevDay";
  v19 = [v23 total];
  v20 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v19 sumOfBucketType:1]);
  v32[3] = @"byTopic";
  v33[2] = v20;
  v33[3] = v25;
  v21 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:4];

  return v21;
}

void sub_100066EB0(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v5 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v4 = *(a1 + 32);
  APSInsertBoolsToXPCDictionary();
}

void sub_100066F34(uint64_t a1)
{
  v2 = sub_1000C6578(*(a1 + 40), 0x3A98u);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100066FC8;
  v3[3] = &unk_100187BB8;
  v4 = v2;
  v3[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, v3);
}

void sub_100066FC8(uint64_t a1)
{
  v2 = (a1 + 40);
  v3 = *(a1 + 40);
  v4 = +[APSLog connectionServer];
  WeakRetained = v4;
  if (!v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, WeakRetained, OS_LOG_TYPE_DEFAULT, "Successfully pinged client", &v17, 2u);
    }

    goto LABEL_10;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10010A0B4(a1, v2, WeakRetained);
  }

  if (*v2 == 268435460)
  {
    v6 = +[APSLog connectionServer];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      v17 = 138412290;
      v18 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ ping client timed out", &v17, 0xCu);
    }

    v8 = *(a1 + 32);
    v9 = +[NSSet set];
    v10 = +[NSSet set];
    v11 = +[NSSet set];
    v12 = +[NSSet set];
    [v8 setEnabledTopics:v9 ignoredTopics:v10 opportunisticTopics:v11 nonWakingTopics:v12];

    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
    [WeakRetained connectionWasClosed:*(a1 + 32)];
LABEL_10:

    return;
  }

  if ((*(*(a1 + 32) + 283) & 1) == 0)
  {
    v13 = +[APSLog connectionServer];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v17 = 138412290;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%@: Forcing a fresh mach port", &v17, 0xCu);
    }

    v15 = *(a1 + 32);
    v16 = v15[8];
    if (v16)
    {
      mach_port_deallocate(mach_task_self_, v16);
      *(*(a1 + 32) + 32) = 0;
      v15 = *(a1 + 32);
    }

    [v15 _initiateConnectionIfNecessary];
  }
}

void sub_100067234(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = +[NSSet set];
  v4 = +[NSSet set];
  v5 = +[NSSet set];
  v6 = +[NSSet set];
  [v2 setEnabledTopics:v3 ignoredTopics:v4 opportunisticTopics:v5 nonWakingTopics:v6];

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  [WeakRetained connectionWasClosed:*(a1 + 32)];
}

void sub_100067464(uint64_t a1, void *a2)
{
  v3 = a2;
  [APSXPCMessageTypeKey UTF8String];
  APSInsertIntsToXPCDictionary();
  v5 = *(a1 + 32);
  v4 = (a1 + 32);
  v6 = [v5 dictionaryRepresentation];
  v7 = APSCreateXPCObjectFromDictionary();

  if (v7)
  {
    xpc_dictionary_set_value(v3, "message", v7);
  }

  else
  {
    v8 = +[APSLog connectionServer];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10010A158(v4, v8);
    }
  }
}

void sub_100067698(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v4 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) code];
  v10 = *(a1 + 48);
  v9 = v6;
  APSInsertIntsToXPCDictionary();
  v7 = *(a1 + 56);
  APSInsertNSUIntegersToXPCDictionary();
  v8 = [*(a1 + 32) localizedDescription];
  APSInsertNSStringsToXPCDictionary();
}

void sub_100067D98(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v4 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v5 = [*(a1 + 32) dictionaryRepresentation];
  value = APSCreateXPCObjectFromDictionary();

  xpc_dictionary_set_value(v4, "info", value);
  v6 = [NSKeyedArchiver archivedDataWithRootObject:*(a1 + 40) requiringSecureCoding:1 error:0];
  APSInsertDatasToXPCDictionary();
}

void sub_100068138(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v7 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v4 = [*(a1 + 32) identifier];
  v6 = [*(a1 + 32) topic];
  APSInsertNSStringsToXPCDictionary();

  v5 = *(a1 + 40);
  APSInsertDatasToXPCDictionary();
}

void sub_10006820C(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v4 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v5 = [*(a1 + 32) dictionaryRepresentation];
  value = APSCreateXPCObjectFromDictionary();

  xpc_dictionary_set_value(v4, "info", value);
  v6 = *(a1 + 40);
  APSInsertDatasToXPCDictionary();
}

void sub_1000682D0(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v4 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v5 = [*(a1 + 32) dictionaryRepresentation];
  value = APSCreateXPCObjectFromDictionary();

  xpc_dictionary_set_value(v4, "info", value);
  v6 = [*(a1 + 40) dictionaryRepresentation];
  v7 = APSCreateXPCObjectFromDictionary();

  xpc_dictionary_set_value(v4, "token", v7);
}

void sub_100068BEC(uint64_t a1, void *a2)
{
  v4 = a2;
  [APSXPCMessageTypeKey UTF8String];
  APSInsertIntsToXPCDictionary();
  if (*(a1 + 32))
  {
    v3 = *(a1 + 32);
    APSInsertDatasToXPCDictionary();
  }
}

void sub_100068C70(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 object];
  [v4 handlePublicTokenDeliveryReply:v3];
}

void sub_100069368(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v6 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v4 = *(a1 + 32);
  APSInsertIntsToXPCDictionary();
  v5 = *(a1 + 40);
  APSInsertIntsToXPCDictionary();
}

void sub_100069538(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v6 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v4 = *(a1 + 32);
  APSInsertIntsToXPCDictionary();
  v5 = *(a1 + 40);
  APSInsertIntsToXPCDictionary();
}

void sub_10006972C(uint64_t a1, void *a2)
{
  v3 = APSXPCMessageTypeKey;
  v6 = a2;
  [v3 UTF8String];
  APSInsertIntsToXPCDictionary();
  v4 = *(a1 + 32);
  APSInsertNSStringsToXPCDictionary();
  v5 = *(a1 + 40);
  APSInsertNSArraysToXPCDictionary();
}

int64_t sub_10006C7CC(id a1, APSPushRecord *a2, APSPushRecord *a3)
{
  v4 = a3;
  v5 = [(APSPushRecord *)a2 timestamp];
  v6 = [(APSPushRecord *)v4 timestamp];

  v7 = [v5 compare:v6];
  return v7;
}

void sub_10006FAA0(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  [v1 clear];
}

void sub_10007027C(id a1)
{
  v3 = [NSString stringWithFormat:@"%@-lastpowerassertionlinger", APSBundleIdentifier];
  v1 = [[APSNoOpPowerAssertion alloc] initWithName:v3 category:212 holdDuration:1.0];
  v2 = qword_1001BF748;
  qword_1001BF748 = v1;
}

uint64_t sub_100070654@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 8) = a2;
  v3 = *(result + 8);
  return result;
}

const __CFString *sub_100070660(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"unknown";
  }

  else
  {
    return off_100187DD8[a1];
  }
}

void sub_1000716AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_1000716C4(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 unsignedIntegerValue];
  if (result == 2)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

void sub_100072538(id a1, NSDictionary *a2, NSMutableSet *a3)
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(NSDictionary *)a2 allValues];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v11 + 1) + 8 * v9) topicName];
        [(NSMutableSet *)v4 addObject:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

void sub_100072658(void *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = a1[8];
  v10 = a1[4];
  v11 = *(v9 + 16);
  v17 = a5;
  v12 = a4;
  v13 = a3;
  v11(v9, a2, v10);
  v14 = a1[5];
  (*(a1[8] + 16))();

  v15 = a1[6];
  (*(a1[8] + 16))();

  v16 = a1[7];
  (*(a1[8] + 16))();
}

void sub_10007273C(void *a1, void *a2)
{
  v3 = a2;
  [v3 removeTopics:a1[4] connectionServer:0 filter:1];
  [v3 removeTopics:a1[5] connectionServer:0 filter:3];
  [v3 removeTopics:a1[6] connectionServer:0 filter:2];
  [v3 removeTopics:a1[7] connectionServer:0 filter:4];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10007287C;
  v6[3] = &unk_100187D90;
  v7 = v3;
  v4 = v3;
  v5 = objc_retainBlock(v6);
  (v5[2])(v5, 1, a1[8]);
  (v5[2])(v5, 3, a1[9]);
  (v5[2])(v5, 2, a1[10]);
  (v5[2])(v5, 4, a1[11]);
}

void sub_10007287C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = +[NSMutableDictionary dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v15 = a1;
    v10 = 0;
    v11 = *v17;
    do
    {
      v12 = 0;
      v13 = v10;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v16 + 1) + 8 * v12);
        v10 = [APSTopicAttributes topicAttributesWithFilter:a2 darkWakeEnabled:0 pushWakeEnabled:0 criticalWakeEnabled:0 ultraConstrainedEnabled:0];

        [v6 setObject:v10 forKey:v14];
        v12 = v12 + 1;
        v13 = v10;
      }

      while (v9 != v12);
      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);

    a1 = v15;
  }

  [*(a1 + 32) addTopicsAndAttributes:v6 connectionServer:0];
}

void sub_1000744BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id sub_100074660(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*a1 + 24))(a1, &v8);
  if (v9 != v8)
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc_init(NSMutableData);
      v5 = *(v8 + 24 * v3);
      if ((*(v8 + 24 * v3 + 8) - v5) >= 2)
      {
        v6 = 1;
        do
        {
          [v4 appendBytes:v5 + v6++ length:1];
          v5 = *(v8 + 24 * v3);
        }

        while (*(v8 + 24 * v3 + 8) - v5 > v6);
      }

      [v2 addObject:v4];

      ++v3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) > v3);
  }

  v11 = &v8;
  sub_10003478C(&v11);

  return v2;
}

void sub_1000747AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10003478C(&a12);

  _Unwind_Resume(a1);
}

id sub_10007480C(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*a1 + 24))(a1, &v8);
  if (v9 != v8)
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc_init(NSMutableData);
      v5 = *(v8 + 24 * v3);
      if ((*(v8 + 24 * v3 + 8) - v5) >= 2)
      {
        v6 = 1;
        do
        {
          [v4 appendBytes:v5 + v6++ length:1];
          v5 = *(v8 + 24 * v3);
        }

        while (*(v8 + 24 * v3 + 8) - v5 > v6);
      }

      [v2 addObject:v4];

      ++v3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) > v3);
  }

  v11 = &v8;
  sub_10003478C(&v11);

  return v2;
}

void sub_100074958(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10003478C(&a12);

  _Unwind_Resume(a1);
}

void sub_100074DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  sub_100075734(&a9);

  _Unwind_Resume(a1);
}

uint64_t sub_100074E2C(uint64_t a1, unsigned int a2)
{
  *(a1 + 24) = a2;
  v2 = *(a1 + 8);
  v3 = [NSNumber numberWithUnsignedInteger:?];
  [v2 setObject:v3 forKey:@"APSProtocolCommand"];

  return 1;
}

id sub_100074F24(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*a1 + 24))(a1, &v8);
  if (v9 != v8)
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc_init(NSMutableData);
      v5 = *(v8 + 24 * v3);
      if ((*(v8 + 24 * v3 + 8) - v5) >= 2)
      {
        v6 = 1;
        do
        {
          [v4 appendBytes:v5 + v6++ length:1];
          v5 = *(v8 + 24 * v3);
        }

        while (*(v8 + 24 * v3 + 8) - v5 > v6);
      }

      [v2 addObject:v4];

      ++v3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) > v3);
  }

  v11 = &v8;
  sub_10003478C(&v11);

  return v2;
}

void sub_100075070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10003478C(&a12);

  _Unwind_Resume(a1);
}

id sub_1000750D0(uint64_t a1)
{
  v2 = +[NSMutableArray array];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  (*(*a1 + 24))(a1, &v8);
  if (v9 != v8)
  {
    v3 = 0;
    do
    {
      v4 = objc_alloc_init(NSMutableData);
      v5 = *(v8 + 24 * v3);
      if ((*(v8 + 24 * v3 + 8) - v5) >= 2)
      {
        v6 = 1;
        do
        {
          [v4 appendBytes:v5 + v6++ length:1];
          v5 = *(v8 + 24 * v3);
        }

        while (*(v8 + 24 * v3 + 8) - v5 > v6);
      }

      [v2 addObject:v4];

      ++v3;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v9 - v8) >> 3) > v3);
  }

  v11 = &v8;
  sub_10003478C(&v11);

  return v2;
}

void sub_10007521C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12)
{
  a12 = &a9;
  sub_10003478C(&a12);

  _Unwind_Resume(a1);
}

void *sub_1000754A8(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  a1[1] = v6;
  a1[2] = 0;
  *a1 = off_100187E38;
  v7 = v6;
  v8 = a1[2];
  a1[2] = v5;

  return a1;
}

uint64_t sub_10007551C(uint64_t a1, unsigned int a2)
{
  v4 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
  [*(a1 + 16) setSerialItemInParameters:*(a1 + 8) commandID:*(a1 + 24) itemID:a2 itemData:v4];

  return 1;
}

uint64_t sub_100075588(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a3 + 23) >= 0)
  {
    v5 = a3;
  }

  else
  {
    v5 = *a3;
  }

  v6 = [NSData dataWithBytes:v5 length:strlen(v5)];
  [*(a1 + 16) setSerialItemInParameters:*(a1 + 8) commandID:*(a1 + 24) itemID:a2 itemData:v6];

  return 1;
}

uint64_t sub_100075648(uint64_t a1, unsigned int a2, char a3)
{
  v7 = a3;
  v5 = [NSData dataWithBytes:&v7 length:1];
  [*(a1 + 16) setSerialItemInParameters:*(a1 + 8) commandID:*(a1 + 24) itemID:a2 itemData:v5];

  return 1;
}

uint64_t sub_1000756C8(uint64_t a1, unsigned int a2)
{
  v4 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
  [*(a1 + 16) setSerialItemInParameters:*(a1 + 8) commandID:*(a1 + 24) itemID:a2 itemData:v4];

  return 1;
}

uint64_t sub_100075734(uint64_t a1)
{
  v2 = *(a1 + 8);
  *a1 = off_100187E38;
  *(a1 + 8) = 0;

  v3 = *(a1 + 16);
  *(a1 + 16) = 0;

  return a1;
}

uint64_t sub_100075798(uint64_t a1, const void **a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 24 * a3;
    do
    {
      sub_100075814(a1, a2);
      a2 += 3;
      v5 -= 24;
    }

    while (v5);
  }

  return a1;
}

const void **sub_100075814(void *a1, const void **a2)
{
  v4 = sub_10001A5B0(a1, a2);
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
    sub_100075A74();
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

  if (!sub_10001A998(a1, v11 + 2, a2))
  {
    goto LABEL_17;
  }

  return v11;
}

void sub_100075A50(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **__p, uint64_t a11)
{
  if (__p)
  {
    sub_100030150(&a11, __p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100075B10(_Unwind_Exception *a1)
{
  *v1 = 0;
  sub_100030150(v3, v2);
  _Unwind_Resume(a1);
}

void sub_100076784(id a1)
{
  v1 = +[APSMultiUserMode sharedInstance];
  v2 = [v1 isMultiUser];

  v3 = [[APSMultiUserFS alloc] initWithIsMultiUserMode:v2];
  v4 = qword_1001BF790;
  qword_1001BF790 = v3;

  _objc_release_x1(v3, v4);
}

uint64_t sub_100076F70(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18 & 0x7F) << v5;
        if ((v18 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 2)
      {
        if (v13 == 3)
        {
          v14 = objc_alloc_init(PSChannelUnsubscription);
          [a1 addUnsubscriptionChannels:v14];
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_10008ED0C(v14, a2))
          {
LABEL_37:

            return 0;
          }

LABEL_33:
          PBReaderRecallMark();
LABEL_34:

          goto LABEL_35;
        }

        if (v13 == 4)
        {
          v14 = objc_alloc_init(PSAttribute);
          [a1 addAttributes:v14];
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_1000BB17C(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      else
      {
        if (v13 == 1)
        {
          v15 = PBReaderReadString();
          v14 = a1[1];
          a1[1] = v15;
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          v14 = objc_alloc_init(PSChannelSubscription);
          [a1 addSubscriptionChannels:v14];
          v18 = 0;
          v19 = 0;
          if (!PBReaderPlaceMark() || !sub_100083484(v14, a2))
          {
            goto LABEL_37;
          }

          goto LABEL_33;
        }
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_35:
      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000780C8(uint64_t a1)
{
  v2 = [*(a1 + 48) _onQueue_configurationForEnvironment:*(a1 + 32) connectionType:*(a1 + 56)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1(v2, v4);
}

void sub_1000782D4(uint64_t a1)
{
  v2 = [*(a1 + 48) _onQueue_configurationForEnvironment:*(a1 + 32) connectionType:*(a1 + 56)];
  if (!v2)
  {
    v5 = [[APSConfiguration alloc] initWithEnvironment:*(a1 + 32) connectionType:*(a1 + 56)];
    v3 = sub_100012D68(*(a1 + 56));
    v4 = [*(a1 + 32) name];
    [v3 setObject:v5 forKey:v4];

    v2 = v5;
  }

  v6 = v2;
  [v2 addCompletionBlock:*(a1 + 40)];
}

void sub_10007850C(uint64_t a1)
{
  v2 = sub_100012D68(*(a1 + 40));
  v3 = [*(a1 + 32) name];
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    v6 = sub_100012D68(*(a1 + 40));
    v5 = [*(a1 + 32) name];
    [v6 removeObjectForKey:v5];
  }
}

void sub_1000789A0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_100012D24();
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_100078AB8;
  v17 = &unk_100187F18;
  v18 = v9;
  v19 = *(a1 + 32);
  v20 = v8;
  v21 = v7;
  v11 = v7;
  v12 = v8;
  v13 = v9;
  dispatch_async(v10, &v14);

  [*(a1 + 40) finishTasksAndInvalidate];
}

void sub_100078AB8(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) _failWithError:?];
  }

  v2 = *(a1 + 48);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = *(a1 + 48);
    if (v3 && *(a1 + 56))
    {
      v4 = *(a1 + 40);
      v5 = [v4[7] host];
      v6 = *(a1 + 56);
      v8 = v5;
      [v4 _finishLoadWithResponse:v3 urlHost:? data:?];
    }

    else
    {
      v7 = *(a1 + 40);
      v8 = APSError();
      [v7 _failWithError:?];
    }
  }
}

void *sub_100078CAC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableArray);
    v4 = *(a1 + 32);
    v5 = *(v4 + 64);
    *(v4 + 64) = v3;

    v2 = *(*(a1 + 32) + 64);
  }

  v6 = [*(a1 + 40) copy];
  [v2 addObject:v6];

  result = *(a1 + 32);
  v8 = result[5];
  if (!v8)
  {
    if (*(result + 48) != 1)
    {
      return result;
    }

    v8 = 0;
  }

  return [result _callCompletionBlocksWithError:v8];
}

void sub_100078EC0(uint64_t a1)
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 40);
        v8 = *(a1 + 48);
        (*(*(*(&v9 + 1) + 8 * v6) + 16))(*(*(&v9 + 1) + 8 * v6));
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

id sub_10007906C(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
  v2 = sub_100012D68(*(*(a1 + 32) + 72));
  [v2 removeObjectForKey:*(*(a1 + 32) + 8)];

  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v3 _callCompletionBlocksWithError:v4];
}

void sub_1000792D4(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(*(a1 + 32) + 72);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v9 = 138412802;
    v10 = v4;
    v11 = 2112;
    v12 = v2;
    v13 = 2048;
    v14 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ APS server bag expired for environment %@ on interface %ld", &v9, 0x20u);
  }

  v5 = [APSEnvironment environmentForName:v2];
  v6 = [APSConfiguration _onQueue_configurationForEnvironment:v5 connectionType:v3];
  if (!v6)
  {
    v6 = [[APSConfiguration alloc] initWithEnvironment:v5 connectionType:v3];
    v7 = sub_100012D68(v3);
    v8 = [v5 name];
    [v7 setObject:v6 forKey:v8];

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412802;
      v10 = v6;
      v11 = 2048;
      v12 = v3;
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Created new config for interface %ld environment %@", &v9, 0x20u);
    }
  }
}

void sub_1000799F0(uint64_t a1)
{
  dispatch_source_cancel(*(*(a1 + 32) + 80));
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  *(v2 + 80) = 0;
}

void sub_100079B2C(id a1)
{
  v1 = +[NSMutableDictionary dictionary];
  v2 = qword_1001BF798;
  qword_1001BF798 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100079B6C(id a1)
{
  v1 = dispatch_queue_create("com.apple.apsd.APSConfigurationQueue", 0);
  v2 = qword_1001BF7A8;
  qword_1001BF7A8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100079BAC(id a1)
{
  v1 = MGCopyAnswer();
  v2 = qword_1001BF7B8;
  qword_1001BF7B8 = v1;

  v3 = MGCopyAnswer();
  v4 = qword_1001BF7C0;
  qword_1001BF7C0 = v3;

  v5 = MGCopyAnswer();
  v6 = qword_1001BF7C8;
  qword_1001BF7C8 = v5;

  _objc_release_x1(v5, v6);
}

void sub_100079C2C(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = MGGetBoolAnswer();
    v4 = @"NO";
    if (v3)
    {
      v4 = @"YES";
    }

    v5 = 138412546;
    v6 = v2;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Notified of _lockdownIdentityChange, adjusting connection. (Is hacktivated? %@)", &v5, 0x16u);
  }

  [v2 _processPotentialIdentityChanged];
}

uint64_t sub_10007A3F4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2 && !a4)
  {
    [a3 count];
  }

  v5 = *(*(a1 + 32) + 16);

  return v5();
}

void sub_10007A618(uint64_t a1, const void *a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = [*(a1 + 32) debugOverrides];
  v10 = [v9 forceInvalidBAACert];

  if (v10)
  {
    v24 = NSDebugDescriptionErrorKey;
    v25 = @"Force BAA cert failure default set";
    v11 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    v12 = [NSError errorWithDomain:@"APSClientIdentityProviderErrorDomain" code:0 userInfo:v11];

    v8 = v12;
  }

  if (a2 && !v8 && [v7 count] == 2)
  {
    v13 = +[APSLog courier];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v22) = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider obtained BAA certs!", &v22, 2u);
    }

    v14 = +[NSMutableArray array];
    if ([v7 count])
    {
      v15 = 0;
      do
      {
        v16 = [v7 objectAtIndexedSubscript:v15];

        v17 = SecCertificateCopyData(v16);
        [v14 addObject:v17];

        ++v15;
      }

      while (v15 < [v7 count]);
    }

    v18 = *(a1 + 40);
    if (v18)
    {
      (*(v18 + 16))(v18, a2, v14, 0);
    }

    CFRelease(a2);
LABEL_22:

    goto LABEL_23;
  }

  v19 = +[APSLog courier];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412290;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider failed to obtain a BAA cert, error: %@", &v22, 0xCu);
  }

  if (a2)
  {
    CFRelease(a2);
  }

  if (*(a1 + 40))
  {
    v20 = +[NSMutableDictionary dictionary];
    v14 = v20;
    if (v8)
    {
      [v20 setObject:v8 forKeyedSubscript:NSUnderlyingErrorKey];
    }

    v21 = [NSError errorWithDomain:@"APSClientIdentityProviderErrorDomain" code:-10001 userInfo:v14];
    (*(*(a1 + 40) + 16))();

    goto LABEL_22;
  }

LABEL_23:
}

uint64_t sub_10007B11C(uint64_t a1)
{
  v2 = +[APSLog courier];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "APSBAAClientIdentityProvider BAA certs may have refreshed, notifying all environments", v6, 2u);
  }

  v3 = [*(a1 + 32) baaIdentityRefreshedBlock];

  if (v3)
  {
    v4 = [*(a1 + 32) baaIdentityRefreshedBlock];
    v4[2]();
  }

  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void sub_10007BAF0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[APSLog stream];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    if (*(v8 + 42))
    {
      v9 = @"YES";
    }

    else
    {
      v9 = @"NO";
    }

    *buf = 138412802;
    v41 = v8;
    v42 = 2112;
    v43 = v5;
    v44 = 2112;
    v45 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "APSNWTCPStream %@ got config %@  -- opened? %@", buf, 0x20u);
  }

  if (*(*(a1 + 32) + 42) == 1)
  {
    if (!v5 || v6)
    {
      v19 = +[APSLog stream];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v6;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to load config bag: %@", buf, 0xCu);
      }

      if (+[APSSimulatorSupport isSimulator])
      {
        v20 = APSError();
        v22 = *(a1 + 32);
        v21 = (a1 + 32);
        [v22 close];
        WeakRetained = objc_loadWeakRetained((*v21 + 32));
        [WeakRetained tcpStream:*v21 errorOccured:v20 disconnectReason:29];
      }

      else
      {
        v24 = +[APSLog stream];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [*(*(a1 + 32) + 8) name];
          *buf = 138412290;
          v41 = v25;
          _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Using DNS TXT record lookup to determine load balance count for %@", buf, 0xCu);
        }

        [*(a1 + 32) _openWithTXTLookup];
      }
    }

    else if (+[APSSimulatorSupport isSimulator](APSSimulatorSupport, "isSimulator") && ([v5 simulatorConnectionEnabled], v10 = objc_claimAutoreleasedReturnValue(), v11 = v10 == 0, v10, v11))
    {
      v26 = +[APSLog stream];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = [v5 simulatorConnectionEnabled];
        v28 = @"YES";
        if (!v27)
        {
          v28 = @"NO";
        }

        *buf = 138412290;
        v41 = v28;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Simulator connection not enabled {simulatorConnectionEnabled:%@} - disconnecting", buf, 0xCu);
      }

      v30 = *(a1 + 32);
      v29 = (a1 + 32);
      [v30 close];
      v31 = objc_loadWeakRetained((*v29 + 32));
      v32 = *v29;
      v33 = APSError();
      [v31 tcpStream:v32 errorOccured:v33 disconnectReason:30];
    }

    else
    {
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_10007BFD0;
      v37[3] = &unk_100188020;
      v37[4] = *(a1 + 32);
      v38 = 0;
      v12 = v5;
      v39 = v12;
      v13 = objc_retainBlock(v37);
      v14 = [*(a1 + 32) delegate];

      if (v14)
      {
        v16 = *(a1 + 32);
        v15 = (a1 + 32);
        objc_initWeak(buf, v16);
        v17 = objc_loadWeakRetained((*v15 + 32));
        v18 = *v15;
        v34[0] = _NSConcreteStackBlock;
        v34[1] = 3221225472;
        v34[2] = sub_10007C244;
        v34[3] = &unk_100188070;
        objc_copyWeak(&v36, buf);
        v34[4] = *v15;
        v35 = v13;
        [v17 tcpStream:v18 receivedServerBag:v12 processedServerBagBlock:v34];

        objc_destroyWeak(&v36);
        objc_destroyWeak(buf);
      }

      else
      {
        (v13[2])(v13, 1);
      }
    }
  }
}

void sub_10007BFAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10007BFD0(uint64_t a1, char a2)
{
  v4 = +[APSLog stream];
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v5)
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v20 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: we have an identity available, connect to server!", buf, 0xCu);
    }

    v7 = [*(a1 + 48) nagleEnabled];
    WeakRetained = v7;
    if (v7)
    {
      *(*(a1 + 32) + 122) = [v7 BOOLValue];
      v9 = +[APSLog stream];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = @"NO";
        if (*(v10 + 122))
        {
          v11 = @"YES";
        }

        *buf = 138412546;
        v20 = v10;
        v21 = 2112;
        v22 = v11;
        v12 = "%@: nagleEnabled is %@ from config bag";
LABEL_16:
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v12, buf, 0x16u);
      }
    }

    else
    {
      v9 = +[APSLog stream];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 32);
        v17 = @"NO";
        if (*(v16 + 122))
        {
          v17 = @"YES";
        }

        *buf = 138412546;
        v20 = v16;
        v21 = 2112;
        v22 = v17;
        v12 = "%@: nagleEnabled is not available from config bag, default %@";
        goto LABEL_16;
      }
    }

    [*(a1 + 32) _connectToServerWithConfiguration:*(a1 + 48)];
    goto LABEL_18;
  }

  if (v5)
  {
    v13 = *(a1 + 32);
    *buf = 138412290;
    v20 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: told not to connect!", buf, 0xCu);
  }

  [*(a1 + 32) close];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 32));
  v14 = *(a1 + 32);
  v18 = *(a1 + 40);
  v15 = APSError();
  [WeakRetained tcpStream:v14 errorOccured:v15 disconnectReason:{14, v18}];

LABEL_18:
}

void sub_10007C244(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = +[APSLog stream];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    *buf = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%@: Delegates have processed server bag update, checking if stream should connect", buf, 0xCu);
  }

  v5 = objc_loadWeakRetained(WeakRetained + 4);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007C384;
  v7[3] = &unk_100188048;
  v6 = *(a1 + 32);
  v8 = *(a1 + 40);
  [v5 tcpStream:v6 shouldConnect:v7];
}

void sub_10007D11C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  objc_destroyWeak(&a31);
  objc_destroyWeak(&a39);
  objc_destroyWeak((v39 - 184));
  _Unwind_Resume(a1);
}

void sub_10007D1A4(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v23 = a1;
    v22 = [SecSessionInfo alloc];
    v5 = [WeakRetained offloadInfo];
    v6 = [v5 preShareKey];
    [WeakRetained offloadInfo];
    v7 = v24 = v3;
    v8 = [v7 preShareKeyID];
    v9 = [WeakRetained offloadInfo];
    v10 = [v9 ticketAgeAdd];
    v11 = [WeakRetained offloadInfo];
    v12 = [v11 ticketCreationTime];
    v13 = [WeakRetained offloadInfo];
    v14 = [v22 initWithPSK:v6 :v8 :v10 :v12 :{objc_msgSend(v13, "ticketLifeTime")}];

    v3 = v24;
    v15 = nw_tls_copy_sec_protocol_options(v24);
    sec_protocol_options_add_tls_application_protocol(v15, "apns-security-v3");
    v16 = [WeakRetained offloadInfo];
    if (v16 && (v17 = v16, v18 = _os_feature_enabled_impl(), v17, v18))
    {
      sec_protocol_options_add_tls_application_protocol(v15, "apns-pack-v1:1024:1024");
      v19 = "apns-pack-v1:small";
    }

    else
    {
      v19 = "apns-pack-v1";
    }

    sec_protocol_options_add_tls_application_protocol(v15, v19);
    if (v14)
    {
      sec_protocol_options_set_session_ticket_info();
    }

    v20 = [v23[4] offloadInfo];
    sec_protocol_options_append_tls_ciphersuite(v15, [v20 tlsCipher]);

    sec_protocol_options_set_min_tls_protocol_version(v15, tls_protocol_version_TLSv13);
    sec_protocol_options_set_tls_server_name(v15, [v23[5] UTF8String]);
    verify_block[0] = _NSConcreteStackBlock;
    verify_block[1] = 3221225472;
    verify_block[2] = sub_10007D4C8;
    verify_block[3] = &unk_1001880C0;
    objc_copyWeak(&v27, v23 + 6);
    v21 = &_dispatch_main_q;
    sec_protocol_options_set_verify_block(v15, verify_block, &_dispatch_main_q);

    objc_copyWeak(&v25, v23 + 6);
    sec_protocol_options_set_session_update_block();

    objc_destroyWeak(&v25);
    objc_destroyWeak(&v27);
  }
}

void sub_10007D4A4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  _Unwind_Resume(a1);
}

void sub_10007D4C8(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  trust = a3;
  v6 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v8 = sec_trust_copy_ref(trust);
    SecTrustSetPinningPolicyName();
    v6[2](v6, [WeakRetained isPeerTrustedForTrust:v8]);
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v6[2](v6, 0);
  }
}

void sub_10007D598(uint64_t a1, void *a2)
{
  v3 = a2;
  if (_os_feature_enabled_impl())
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    if (WeakRetained)
    {
      v5 = +[APSLog stream];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = WeakRetained;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@: Received session update.", buf, 0xCu);
      }

      negotiated_tls_ciphersuite = sec_protocol_metadata_get_negotiated_tls_ciphersuite(v3);
      v7 = sec_protocol_metadata_get_sec_session_ticket_info();
      v8 = v7;
      if (v7)
      {
        v24 = negotiated_tls_ciphersuite;
        v9 = [v7 psk];
        v10 = v9;
        if (v9)
        {
          v11 = dispatch_data_create([v9 bytes], objc_msgSend(v9, "length"), 0, 0);
        }

        else
        {
          v11 = 0;
        }

        v13 = [v8 psk_id];
        v14 = v13;
        if (v13)
        {
          v25 = dispatch_data_create([(APSConnectionOffloadInfo *)v13 bytes], [(APSConnectionOffloadInfo *)v13 length], 0, 0);
        }

        else
        {
          v25 = 0;
        }

        v15 = [v8 ticket_lifetime];
        v16 = [v8 ticket_creation_time];
        v17 = [v8 ticket_age_add];
        v18 = +[APSLog stream];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134218240;
          v27 = v10;
          v28 = 2048;
          v29 = v14;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "psk %p pskid %p", buf, 0x16u);
        }

        v19 = [APSConnectionOffloadInfo alloc];
        v20 = v15;
        v12 = v11;
        v21 = [(APSConnectionOffloadInfo *)v19 initWithTlsCipher:v24 ticketLifeTime:v20 ticketAgeAdd:v17 ticketCreationTime:v16 preShareKey:v11 preShareKeyID:v25];
        v22 = +[APSLog stream];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v27 = WeakRetained;
          v28 = 2112;
          v29 = v21;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%@: Sending offload info %@", buf, 0x16u);
        }

        v23 = [WeakRetained delegate];
        [v23 tcpStream:WeakRetained receivedOffloadInfo:v21];
      }

      else
      {
        v12 = +[APSLog stream];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          sub_10010B768();
        }
      }
    }
  }
}

void sub_10007D8E0(uint64_t a1, void *a2)
{
  if ((*(a1 + 40) & 1) == 0)
  {
    v3 = a2;
    v4 = +[APSLog stream];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v6 = WeakRetained;
      v7 = @"YES";
      if (*(a1 + 40))
      {
        v7 = @"NO";
      }

      v8 = 138412546;
      v9 = WeakRetained;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@ Set nw_tcp_options_set_no_delay = %@", &v8, 0x16u);
    }

    nw_tcp_options_set_no_delay(v3, 1);
  }
}

void sub_10007D9F4(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleState:a2 error:v7];
  }
}

void sub_10007DA60(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && a2)
  {
    v8 = WeakRetained;
    [WeakRetained close];
    v5 = objc_loadWeakRetained(v8 + 4);
    v6 = *(a1 + 32);
    v7 = APSError();
    [v5 tcpStream:v6 errorOccured:v7 disconnectReason:36];

    WeakRetained = v8;
  }
}

void sub_10007DB08(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && (a2 & 1) == 0)
  {
    v8 = WeakRetained;
    [WeakRetained close];
    v5 = objc_loadWeakRetained(v8 + 4);
    v6 = *(a1 + 32);
    v7 = APSError();
    [v5 tcpStream:v6 errorOccured:v7 disconnectReason:35];

    WeakRetained = v8;
  }
}

void sub_10007F0FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10007F114(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v8 = a3;
  if (v11)
  {
    objc_storeStrong((*(a1 + 32) + 128), a2);
  }

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v8;

  *a4 = 1;
}

uint64_t sub_10007FAB8(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v18[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v18 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v18[0] & 0x7F) << v5;
        if ((v18[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = objc_alloc_init(PSChannelResponse);
        [a1 addSubscriptionChannelResponse:v15];
        goto LABEL_23;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadString();
        v15 = a1[1];
        a1[1] = v14;
LABEL_26:

        goto LABEL_28;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_28:
      v16 = [a2 position];
      if (v16 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = objc_alloc_init(PSChannelResponse);
    [a1 addUnsubscriptionChannelResponse:v15];
LABEL_23:
    v18[0] = 0;
    v18[1] = 0;
    if (!PBReaderPlaceMark() || !sub_100032588(v15, a2))
    {

      return 0;
    }

    PBReaderRecallMark();
    goto LABEL_26;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000807B8(uint64_t a1, void *a2)
{
  v2 = a2;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 138412290;
    v4 = v2;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ Notified of _lockdownIdentityChange, adjusting connection", &v3, 0xCu);
  }

  [v2 _processPotentialIdentityChanged];
}

void sub_100080B00(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v12 = a3;
  v7 = a4;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    if (a2 && v12)
    {
      v10 = [v12 count];
      if (v7)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10 == 0;
      }

      v9 = !v11;
      v8 = *(a1 + 32);
    }

    (*(v8 + 16))(v8, v9);
  }
}

uint64_t sub_100080D60(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

const void *sub_100080DCC(void *a1)
{
  v2 = MAECopyLegacyDeviceIdentityWithError();
  v3 = 0;
  if (v3)
  {
    if (v2)
    {
      CFRelease(v2);
    }

    if (a1)
    {
      v4 = v3;
      v2 = 0;
      *a1 = v3;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_1000819A4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v22 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v22 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v22 & 0x7F) << v5;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = 0;
        v14 = 0;
        v15 = 0;
        *(a1 + 12) |= 1u;
        while (1)
        {
          v23 = 0;
          v16 = [a2 position] + 1;
          if (v16 >= [a2 position] && (v17 = objc_msgSend(a2, "position") + 1, v17 <= objc_msgSend(a2, "length")))
          {
            v18 = [a2 data];
            [v18 getBytes:&v23 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v15 |= (v23 & 0x7F) << v13;
          if ((v23 & 0x80) == 0)
          {
            break;
          }

          v13 += 7;
          v11 = v14++ >= 9;
          if (v11)
          {
            v19 = 0;
            goto LABEL_32;
          }
        }

        v19 = [a2 hasError] ? 0 : v15;
LABEL_32:
        *(a1 + 8) = v19;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v21 = [a2 position];
    }

    while (v21 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t APSDProtoHostCertificateInfoReadFrom(char *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v19 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v19 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v19 & 0x7F) << v5;
        if ((v19 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) == 3)
      {
        break;
      }

      if (v13 == 2)
      {
        v15 = PBReaderReadData();
        v16 = 16;
LABEL_24:
        v14 = *&a1[v16];
        *&a1[v16] = v15;
LABEL_25:

        goto LABEL_27;
      }

      if (v13 == 1)
      {
        v14 = PBReaderReadData();
        if (v14)
        {
          [a1 addCertificates:v14];
        }

        goto LABEL_25;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_27:
      v17 = [a2 position];
      if (v17 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v15 = PBReaderReadData();
    v16 = 24;
    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

__CFString *APSIncomingMessagePriorityString(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      v2 = @"low";

      break;
    case 10:
      v2 = @"high";

      break;
    case 5:
      v2 = @"medium";

      break;
    default:
      v2 = [NSString stringWithFormat:@"%d", a1];

      break;
  }

  return v2;
}

uint64_t sub_100083484(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v38[0] & 0x7F) << v5;
        if ((v38[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        [a1 clearOneofValuesForSubscriptionInfo];
        v23 = 0;
        v24 = 0;
        v25 = 0;
        *(a1 + 44) |= 4u;
        *(a1 + 40) = 1;
        *(a1 + 44) |= 1u;
        while (1)
        {
          LOBYTE(v38[0]) = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v38[0] & 0x7F) << v23;
          if ((v38[0] & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v20 = 0;
            goto LABEL_59;
          }
        }

        if ([a2 hasError])
        {
          v20 = 0;
        }

        else
        {
          v20 = v25;
        }

LABEL_59:
        v35 = 8;
        goto LABEL_65;
      }

      if (v13 != 3)
      {
        if (v13 == 4)
        {
          [a1 clearOneofValuesForSubscriptionInfo];
          v14 = 0;
          v15 = 0;
          v16 = 0;
          *(a1 + 44) |= 4u;
          *(a1 + 40) = 2;
          *(a1 + 44) |= 2u;
          while (1)
          {
            LOBYTE(v38[0]) = 0;
            v17 = [a2 position] + 1;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 1, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
            }

            else
            {
              [a2 _setError];
            }

            v16 |= (v38[0] & 0x7F) << v14;
            if ((v38[0] & 0x80) == 0)
            {
              break;
            }

            v14 += 7;
            v11 = v15++ >= 9;
            if (v11)
            {
              v20 = 0;
              goto LABEL_64;
            }
          }

          if ([a2 hasError])
          {
            v20 = 0;
          }

          else
          {
            v20 = v16;
          }

LABEL_64:
          v35 = 16;
LABEL_65:
          *(a1 + v35) = v20;
          goto LABEL_66;
        }

LABEL_54:
        if ((PBReaderSkipValueWithTag() & 1) == 0)
        {
          return 0;
        }

        goto LABEL_66;
      }

      v29 = objc_alloc_init(PSAttribute);
      [a1 addAttributes:v29];
      v38[0] = 0;
      v38[1] = 0;
      if (!PBReaderPlaceMark() || !sub_1000BB17C(v29, a2))
      {

        return 0;
      }

      PBReaderRecallMark();

LABEL_66:
      v36 = [a2 position];
      if (v36 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    if (!v13)
    {
      v30 = 0;
      while (1)
      {
        LOBYTE(v38[0]) = 0;
        v31 = [a2 position] + 1;
        if (v31 >= [a2 position] && (v32 = objc_msgSend(a2, "position") + 1, v32 <= objc_msgSend(a2, "length")))
        {
          v33 = [a2 data];
          [v33 getBytes:v38 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        if ((SLOBYTE(v38[0]) & 0x80000000) == 0)
        {
          break;
        }

        if (v30++ > 8)
        {
          goto LABEL_66;
        }
      }

      [a2 hasError];
      goto LABEL_66;
    }

    if (v13 == 1)
    {
      v21 = PBReaderReadData();
      v22 = *(a1 + 32);
      *(a1 + 32) = v21;

      goto LABEL_66;
    }

    goto LABEL_54;
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_100085CA4(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v24 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24 & 0x7F) << v5;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        v15 = 0;
        v16 = 0;
        v17 = 0;
        *(a1 + 24) |= 1u;
        while (1)
        {
          v25 = 0;
          v18 = [a2 position] + 1;
          if (v18 >= [a2 position] && (v19 = objc_msgSend(a2, "position") + 1, v19 <= objc_msgSend(a2, "length")))
          {
            v20 = [a2 data];
            [v20 getBytes:&v25 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v17 |= (v25 & 0x7F) << v15;
          if ((v25 & 0x80) == 0)
          {
            break;
          }

          v15 += 7;
          v11 = v16++ >= 9;
          if (v11)
          {
            v21 = 0;
            goto LABEL_34;
          }
        }

        v21 = [a2 hasError] ? 0 : v17;
LABEL_34:
        *(a1 + 8) = v21;
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 16);
        *(a1 + 16) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000873C0(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    return (*(*(result + 32) + 16))();
  }

  return result;
}

void sub_100087A20(void *a1, uint64_t a2, void *a3)
{
  v4 = a1;
  v5 = a3;
  APSGetTrackActivityPresence();
  [v4 trackActivityPresence];
  APSInsertBoolsToXPCDictionary();
}

void sub_100087AB0(void *a1)
{
  v4 = a1;
  v1 = APSGetXPCArrayFromDictionary();
  v2 = APSSafeArrayOfStrings();

  if (v2)
  {
    v3 = [NSSet setWithArray:v2];
    [v4 setPushWakeTopics:v3];
  }
}

void sub_100087B4C(void *a1)
{
  v2 = a1;
  v1 = APSGetXPCIntFromDictionary();
  [v2 setKeepAliveConfiguration:sub_100088620(v1)];
}

void sub_100087BB4(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "APSXPCRollBAACertEvent obtained refreshed certs", v2, 2u);
  }

  xpc_connection_send_message(*(a1 + 32), *(a1 + 40));
}

CFRunLoopSourceRef sub_100087C2C(uint64_t a1, int a2, CFIndex a3, uint64_t a4)
{
  pthread_once(&stru_1001BC260, sub_100087D3C);
  v8 = malloc_type_malloc(0x18uLL, 0x10A0040FC6C5850uLL);
  *v8 = a2;
  v8[1] = a1;
  v8[2] = a4;
  context.version = 1;
  context.info = v8;
  context.retain = 0;
  context.release = &_free;
  context.copyDescription = sub_100087D4C;
  context.equal = sub_100087D8C;
  context.hash = sub_100087DA0;
  context.schedule = sub_100087DA8;
  context.cancel = sub_100087DB0;
  v9 = CFRunLoopSourceCreate(0, a3, &context);
  if (!v9)
  {
    free(v8);
  }

  return v9;
}

uint64_t sub_100087DB0(mach_msg_header_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 8);
  msgh_id = a1->msgh_id;
  v8 = *(v6 + 8);
  v9 = __OFSUB__(msgh_id, v8);
  v10 = msgh_id - v8;
  if (v10 < 0 != v9 || msgh_id >= *(v6 + 12))
  {
    v12 = 0;
  }

  else
  {
    v11 = v6 + 32;
    v12 = *(v11 + 40 * v10 + 8);
    if (v12)
    {
      v13 = 0;
      v14 = *(v11 + 40 * v10 + 32);
      goto LABEL_7;
    }
  }

  v13 = 1;
  v14 = 36;
LABEL_7:
  v15 = malloc_type_malloc(v14, 0x10000408AA14F5FuLL);
  if (v15)
  {
    v16 = v15;
    msgh_remote_port = a1->msgh_remote_port;
    v15->msgh_bits = a1->msgh_bits & 0x1F;
    v15->msgh_size = 36;
    *&v15->msgh_remote_port = msgh_remote_port;
    v15->msgh_id = a1->msgh_id + 100;
    if (v13)
    {
      *&v15[1].msgh_bits = NDR_record;
      v15[1].msgh_remote_port = -303;
    }

    else
    {
      v18 = *(a4 + 16);
      if (v18)
      {
        pthread_setspecific(qword_1001BF7E0, v18);
        v12(a1, v16);
        pthread_setspecific(qword_1001BF7E0, 0);
      }

      else
      {
        v12(a1, v15);
      }
    }

    msgh_bits = v16->msgh_bits;
    if ((v16->msgh_bits & 0x80000000) == 0)
    {
      v20 = v16[1].msgh_remote_port;
      if (v20 == -305)
      {
LABEL_31:
        free(v16);
        return 0;
      }

      if (v20 && (a1->msgh_bits & 0x80000000) != 0)
      {
        a1->msgh_remote_port = 0;
        mach_msg_destroy(a1);
        msgh_bits = v16->msgh_bits;
      }
    }

    if (v16->msgh_remote_port)
    {
      if ((msgh_bits & 0x1F) == 0x12)
      {
        v21 = 1;
      }

      else
      {
        v21 = 17;
      }

      v22 = mach_msg(v16, v21, v16->msgh_size, 0, 0, 0, 0);
      if ((v22 - 268435459) >= 2 && v22 != 0)
      {
        v24 = __stderrp;
        v25 = mach_error_string(v22);
        fprintf(v24, "<CFRunLoopSource MIG Server> mach_msg send error in reply: %s\n", v25);
        goto LABEL_31;
      }

      if ((v22 - 268435459) > 1)
      {
        goto LABEL_31;
      }

      msgh_bits = v16->msgh_bits;
    }

    if ((msgh_bits & 0x80000000) != 0)
    {
      mach_msg_destroy(v16);
    }

    goto LABEL_31;
  }

  return 0;
}

uint64_t sub_100087FA4(__CFRunLoopSource *a1)
{
  memset(&context.info, 0, 64);
  context.version = 1;
  CFRunLoopSourceGetContext(a1, &context);
  return *context.info;
}

uint64_t sub_100087FF0(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    if ([v4 count])
    {
      if (v5)
      {
        v6 = 0;
        goto LABEL_10;
      }

LABEL_9:
      v6 = [v3 count] == 0;
      goto LABEL_10;
    }

LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v3 isEqualToArray:v4];
LABEL_10:

  return v6;
}

uint64_t sub_100088088(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    if ([v4 count])
    {
      if (v5)
      {
        v6 = 0;
        goto LABEL_10;
      }

LABEL_9:
      v6 = [v3 count] == 0;
      goto LABEL_10;
    }

LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v3 isEqualToDictionary:v4];
LABEL_10:

  return v6;
}

uint64_t sub_100088120(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (v3 == v4)
  {
    goto LABEL_8;
  }

  if (!v3)
  {
    if ([v4 length])
    {
      if (v5)
      {
        v6 = 0;
        goto LABEL_10;
      }

LABEL_9:
      v6 = [v3 length] == 0;
      goto LABEL_10;
    }

LABEL_8:
    v6 = 1;
    goto LABEL_10;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  v6 = [v3 isEqualToData:v4];
LABEL_10:

  return v6;
}

uint64_t sub_1000881B8(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = sub_100003E14(v7, v8);
  if ((v9 & 1) == 0)
  {
    if (v7)
    {
      if (v8)
      {
LABEL_4:
        v10 = [v7 mutableCopy];
        *a4 = v10;
        [v10 minusSet:v8];
        v11 = [v8 mutableCopy];
        *a3 = v11;
        [v11 minusSet:v7];
        goto LABEL_5;
      }
    }

    else
    {
      v7 = [NSMutableSet setWithCapacity:0];
      if (v8)
      {
        goto LABEL_4;
      }
    }

    v8 = [NSMutableSet setWithCapacity:0];
    goto LABEL_4;
  }

LABEL_5:

  return v9 ^ 1u;
}

__CFString *sub_1000882BC(void *a1)
{
  v1 = [a1 code];
  if (v1 + 9886 > 0x56)
  {
    return 0;
  }

  else
  {
    return off_100188328[v1 + 9886];
  }
}

id sub_1000882F8(void *a1)
{
  v1 = [a1 base64EncodedStringWithOptions:0];
  v2 = [v1 stringByReplacingOccurrencesOfString:@"+" withString:@"-"];

  v3 = [v2 stringByReplacingOccurrencesOfString:@"/" withString:@"_"];

  v4 = [v3 stringByReplacingOccurrencesOfString:@"=" withString:&stru_10018F6A0];

  return v4;
}

id sub_1000883A0(void *a1)
{
  v1 = a1;
  v2 = [v1 bytes];
  v3 = [v1 length];

  CC_SHA256(v2, v3, md);
  v4 = [[NSData alloc] initWithBytes:md length:32];

  return v4;
}

id sub_100088454(void *a1, id *a2)
{
  v3 = [a1 dataUsingEncoding:4];
  if (a2 && [*a2 length])
  {
    v4 = *a2;
  }

  else
  {
    arc4random_buf(&__buf, 8uLL);
    v5 = [NSData dataWithBytes:&__buf length:8];
    v4 = v5;
    if (a2)
    {
      v6 = v5;
      *a2 = v4;
    }
  }

  memset(&__buf, 0, sizeof(__buf));
  CC_SHA256_Init(&__buf);
  CC_SHA256_Update(&__buf, [v3 bytes], objc_msgSend(v3, "length"));
  CC_SHA256_Update(&__buf, [v4 bytes], objc_msgSend(v4, "length"));
  CC_SHA256_Final(v9, &__buf);
  v7 = [NSData dataWithBytes:v9 length:32];

  return v7;
}

void sub_1000885C4(id a1)
{
  v2 = 0;
  v1 = 4;
  if (!sysctlbyname("kern.hv_vmm_present", &v2, &v1, 0, 0))
  {
    byte_1001BF7E8 = v2 != 0;
  }
}

uint64_t sub_100088AD0(void *a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v16) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v16 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v16 & 0x7F) << v5;
        if ((v16 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      if ((v12 >> 3) == 2)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = objc_alloc_init(PSAppChannelUpdates);
        [a1 addAppChannelUpdates:v13];
        v16 = 0;
        v17 = 0;
        if (!PBReaderPlaceMark() || !sub_10001CD3C(v13, a2))
        {
          goto LABEL_28;
        }

LABEL_24:
        PBReaderRecallMark();

        goto LABEL_26;
      }

      if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

LABEL_26:
      v14 = [a2 position];
      if (v14 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    v13 = objc_alloc_init(PSSubscriptionUpdate);
    [a1 addSubscriptionUpdates:v13];
    v16 = 0;
    v17 = 0;
    if (!PBReaderPlaceMark() || !sub_1000819A4(v13, a2))
    {
LABEL_28:

      return 0;
    }

    goto LABEL_24;
  }

  return [a2 hasError] ^ 1;
}

void sub_1000894E0(id a1)
{
  v1 = dispatch_queue_create("APS-IDSSendQueue", 0);
  v2 = qword_1001BF7F8;
  qword_1001BF7F8 = v1;

  _objc_release_x1(v1, v2);
}

void sub_10008962C(uint64_t a1)
{
  v2 = [objc_alloc(*(a1 + 40)) initWithService:@"com.apple.private.alloy.pushproxy"];
  v3 = [v2 linkedDevicesWithRelationship:3];
  objc_storeStrong((*(a1 + 32) + 8), v2);
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ created IDSService", &v5, 0xCu);
  }

  [*(a1 + 32) _onQueue_checkNearbyDevices:v3];
  [v2 addDelegate:*(a1 + 32) queue:&_dispatch_main_q];
}

void sub_100089C78(uint64_t a1)
{
  v2 = [*(a1 + 32) _recipientDevice];
  if (v2)
  {
    if (qword_1001BF810 != -1)
    {
      sub_10010C168();
    }

    if (qword_1001BF820 != -1)
    {
      sub_10010C17C();
    }

    if (qword_1001BF830 != -1)
    {
      sub_10010C190();
    }

    if (qword_1001BF840 != -1)
    {
      sub_10010C1A4();
    }

    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = v3;
    if (qword_1001BF818)
    {
      [v3 setObject:&__kCFBooleanTrue forKey:?];
    }

    if (qword_1001BF828)
    {
      [v4 setObject:&__kCFBooleanTrue forKey:?];
    }

    if (qword_1001BF838)
    {
      [v4 setObject:&__kCFBooleanFalse forKey:?];
    }

    v5 = *(*(a1 + 32) + 8);
    v6 = *(a1 + 48);
    v7 = [NSSet setWithObject:qword_1001BF808];
    v22 = 0;
    v23 = 0;
    v8 = [v5 sendData:v6 toDestinations:v7 priority:300 options:v4 identifier:&v23 error:&v22];
    v9 = v23;
    v10 = v22;

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 56);
      v13 = @"NO";
      v14 = *(v11 + 8);
      if (v8)
      {
        v13 = @"YES";
      }

      *buf = 138413570;
      v25 = v11;
      v26 = 2112;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v9;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v14;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ sent data command %@ success %@ with identifier %@  error %@ on service %@", buf, 0x3Eu);
    }

    if ([*(a1 + 56) isEqual:&off_100197860])
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10008A1D4;
      block[3] = &unk_1001864D8;
      block[4] = *(a1 + 32);
      v21 = v9;
      dispatch_async(&_dispatch_main_q, block);
    }

    if (v9)
    {
      v15 = v8;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == 1 && *(a1 + 64))
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_10008A1E0;
      v17[3] = &unk_100186330;
      v17[4] = *(a1 + 32);
      v18 = *(a1 + 64);
      v19 = v9;
      dispatch_async(&_dispatch_main_q, v17);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Couldn't find recipient IDSDevice when asked to send -- queuing message.", buf, 2u);
    }

    v9 = [*(a1 + 32) deviceNotFoundMessageQueue];
    objc_sync_enter(v9);
    v16 = [*(a1 + 32) deviceNotFoundMessageQueue];
    [v16 addObject:*(a1 + 40)];

    [*(a1 + 32) _scheduleDeviceNotFoundTimer];
    objc_sync_exit(v9);
  }
}

void sub_10008A094(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1001BF808, v2);
}

void sub_10008A0E4(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1001BF818, v2);
}

void sub_10008A134(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1001BF828, v2);
}

void sub_10008A184(id a1)
{
  v1 = CUTWeakLinkSymbol();
  if (v1)
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  objc_storeStrong(&qword_1001BF838, v2);
}

void sub_10008A1E0(void *a1)
{
  v2 = *(a1[4] + 48);
  if (!v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    v4 = a1[4];
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;

    v2 = *(a1[4] + 48);
  }

  [v2 setObject:a1[5] forKey:a1[6]];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = a1[5];
    v6 = a1[6];
    v8 = a1[4];
    v9 = 138412802;
    v10 = v8;
    v11 = 2112;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ mapping guid %@ with %@", &v9, 0x20u);
  }
}

void sub_10008C638(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10008C65C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportProxyMessages];
}

void sub_10008E240(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(a1 + 32);
    v3 = @"NO";
    if (*(v2 + 32))
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    if (*(a1 + 40))
    {
      v3 = @"YES";
    }

    *buf = 138412802;
    v27 = v2;
    v28 = 2112;
    v29 = v4;
    v30 = 2112;
    v31 = v3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ isNearby changed from %@ to %@", buf, 0x20u);
  }

  v5 = [*(a1 + 32) canUseProxy];
  v6 = *(a1 + 40);
  v7 = *(a1 + 32);
  if (v6 != *(v7 + 32))
  {
    v8 = v5;
    *(v7 + 32) = v6;
    [*(a1 + 32) _assertWiFiIfPossible];
    v9 = *(a1 + 32);
    if (v9[32] == 1)
    {
      [v9 _startPowerLoggingMessages];
      [*(a1 + 32) _sendDaemonAliveMessage];
    }

    else
    {
      [v9 _stopPowerLoggingMessages];
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = *(*(a1 + 32) + 24);
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(a1 + 32) + 24) objectForKey:{*(*(&v21 + 1) + 8 * i), v21}];
          [v15 proxyManager:*(a1 + 32) isNearbyChanged:*(a1 + 40)];
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v16 = [*(a1 + 32) canUseProxy];
    if (v8 != v16)
    {
      v17 = v16;
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        v18 = @"NO";
        v19 = *(a1 + 32);
        if (v17)
        {
          v18 = @"YES";
        }

        *buf = 138412546;
        v27 = v19;
        v28 = 2112;
        v29 = v18;
        _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "%@ canUseProxy changed to %@", buf, 0x16u);
      }

      WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
      [WeakRetained proxyManager:*(a1 + 32) canUseProxyChanged:v17];
    }
  }
}

void sub_10008E5A4(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) linkedDevicesWithRelationship:3];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10008E660;
  v5[3] = &unk_100188728;
  v3 = *(a1 + 40);
  v6 = v2;
  v7 = v3;
  v4 = v2;
  dispatch_async(&_dispatch_main_q, v5);
}

id sub_10008E7A8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _checkNearbyDevices:v4];
  [*(a1 + 32) _updateTimerIfNecessaryWithDevices:v4];

  v5 = *(a1 + 32);

  return [v5 _flushDeviceNotFoundMessageQueue];
}

void sub_10008E8F0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 _checkNearbyDevices:v4];
  [*(a1 + 32) _updateTimerIfNecessaryWithDevices:v4];
}

void sub_10008EA08(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10008EA9C;
  block[3] = &unk_100186D90;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

uint64_t sub_10008ED0C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v17 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v17 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v17 & 0x7F) << v5;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadData();
        v14 = *(a1 + 8);
        *(a1 + 8) = v13;
      }

      else
      {
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }
      }

      v16 = [a2 position];
    }

    while (v16 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

void sub_10008F0F4(id a1)
{
  v1 = [[NSMutableDictionary alloc] initWithCapacity:4];
  v2 = qword_1001BF848;
  qword_1001BF848 = v1;

  _objc_release_x1(v1, v2);
}

id sub_100096D20(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  if (dlopen("/System/Library/PrivateFrameworks/IDSFoundation.framework/IDSFoundation", 16))
  {
    sub_100015D6C(v4, v3);
  }

  else
  {
    [v4 description];
  }
  v5 = ;

  return v5;
}

uint64_t sub_100096DAC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_1001BF860 = result;
  return result;
}

void *sub_100096E20(uint64_t a1)
{
  v4 = 0;
  v2 = sub_100016014();
  if (!v2)
  {
    sub_10010C564(&v4);
  }

  result = dlsym(v2, "IDSShouldUseRestrictedLoggingForService");
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1001BF868 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100096EE8(id a1)
{
  if (sub_10000712C())
  {
    v1 = objc_alloc_init(APSDiagnostic);
    v2 = qword_1001BF870;
    qword_1001BF870 = v1;

    _objc_release_x1(v1, v2);
  }
}

void sub_100097064(uint64_t a1)
{
  v11[0] = @"Push Problem Detected";
  v10[0] = kCFUserNotificationAlertHeaderKey;
  v10[1] = kCFUserNotificationAlertMessageKey;
  v2 = [NSString stringWithFormat:@"A problem has been detected with CloudKit Push Ack"];
  v11[1] = v2;
  v11[2] = @"File a radar";
  v10[2] = kCFUserNotificationDefaultButtonTitleKey;
  v10[3] = kCFUserNotificationAlternateButtonTitleKey;
  v11[3] = @"Not now";
  v3 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:4];

  error = 0;
  v4 = CFUserNotificationCreate(0, 0.0, 3uLL, &error, v3);
  if (v4)
  {
    v5 = v4;
    *responseFlags = 0;
    CFUserNotificationReceiveResponse(v4, 86400.0, responseFlags);
    if ((responseFlags[0] & 3) == 0)
    {
      v6 = +[LSApplicationWorkspace defaultWorkspace];
      [v6 openURL:*(a1 + 32) configuration:0 completionHandler:0];
    }

    CFRelease(v5);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [NSNumber numberWithInt:error];
    *responseFlags = 138412290;
    *&responseFlags[4] = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Failed to create notification error %@", responseFlags, 0xCu);
  }
}

uint64_t sub_10009864C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSData dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1(v4, v6);
}

uint64_t sub_1000986A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSData dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1(v4, v6);
}

uint64_t sub_1000986FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSData dataWithBytes:a2 length:a3];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  return _objc_release_x1(v4, v6);
}

void sub_1000987EC(id a1)
{
  v1 = objc_alloc_init(APSIdentityUtilities);
  v2 = qword_1001BF888;
  qword_1001BF888 = v1;

  _objc_release_x1(v1, v2);
}

void sub_1000988F0(id a1)
{
  v1 = objc_alloc_init(APSMessageStore);
  v2 = qword_1001BF898;
  qword_1001BF898 = v1;

  _objc_release_x1(v1, v2);
}

void sub_100098988(id a1)
{
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    v12 = 0;
    v1 = &v12;
    v2 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v1 = buf;
    v2 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v2, "APSMessageStore - Performing initial database housekeeping", v1, 2u);
LABEL_7:
  if (+[APSLog shouldReduceLogging])
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_13;
    }

    v10 = 0;
    v3 = &v10;
    v4 = OS_LOG_TYPE_DEBUG;
  }

  else
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_13;
    }

    *v9 = 0;
    v3 = v9;
    v4 = OS_LOG_TYPE_DEFAULT;
  }

  _os_log_impl(&_mh_execute_header, &_os_log_default, v4, "APSMessageStore -   => Setting cache size", v3, 2u);
LABEL_13:
  sub_1000B3278(3);
  if (+[APSLog shouldReduceLogging])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v8 = 0;
      v5 = &v8;
      v6 = OS_LOG_TYPE_DEBUG;
LABEL_18:
      _os_log_impl(&_mh_execute_header, &_os_log_default, v6, "APSMessageStore -   => Invalidating caches", v5, 2u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0;
    v5 = &v7;
    v6 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_18;
  }

  sub_100013FD0();
}

void sub_100098BC4(uint64_t a1)
{
  sub_1000B2EA8();
  *(*(a1 + 32) + 8) = 0;
  v2 = *(*(a1 + 32) + 9);
  v3 = +[APSLog shouldReduceLogging];
  if (v2 == 1)
  {
    if (v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v11 = 0;
        v4 = &v11;
        v5 = OS_LOG_TYPE_DEBUG;
LABEL_10:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v5, "APSMessageStore - Reopening database", v4, 2u);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v4 = buf;
      v5 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_10;
    }

    [*(a1 + 32) openDatabase];
    goto LABEL_15;
  }

  if (!v3)
  {
    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v8 = 0;
    v6 = &v8;
    v7 = OS_LOG_TYPE_DEFAULT;
LABEL_14:
    _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "APSMessageStore - Leaving database closed", v6, 2u);
    goto LABEL_15;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v9 = 0;
    v6 = &v9;
    v7 = OS_LOG_TYPE_DEBUG;
    goto LABEL_14;
  }

LABEL_15:
  *(*(a1 + 32) + 9) = 0;
}

id sub_100098D9C(id result)
{
  v1 = *(result + 4);
  if (*(v1 + 8) == 1)
  {
    *(v1 + 9) = 0;
    return [*(result + 4) __closeDatabase];
  }

  return result;
}

id sub_100098E30(id result)
{
  v1 = *(result + 4);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 4) performBlock:&stru_1001888D8];
  }

  return result;
}

void sub_100098EF4(uint64_t a1)
{
  sub_1000145A0();
  (*(*(a1 + 40) + 16))();
  sub_100013FD0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100098F90;
  block[3] = &unk_100186D90;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_10009903C(uint64_t a1)
{
  sub_1000145A0();
  (*(*(a1 + 40) + 16))();
  sub_100013FD0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000990D8;
  block[3] = &unk_100186D90;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100099184(uint64_t a1)
{
  sub_1000145A0();
  (*(*(a1 + 40) + 16))();
  sub_100013FD0();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100099220;
  block[3] = &unk_100186D90;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void sub_100099444(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = APSEncodeDictionary();

  if (v3)
  {
    if ([*(a1 + 32) priority] == 1)
    {
      v4 = *(a1 + 40);
      v5 = [*(a1 + 32) topic];
      v6 = *(a1 + 48);
      v7 = [*(a1 + 32) token];
      v21 = v7;
      v8 = [NSArray arrayWithObjects:&v21 count:1];
      [v4 _onQueueDeleteLowPriorityIncomingMessagesForTopic:v5 environment:v6 pushTokens:v8];
    }

    v20 = *(a1 + 56);
    v19 = [*(a1 + 32) token];
    v18 = [*(a1 + 32) topic];
    v17 = [*(a1 + 48) name];
    v16 = [*(a1 + 32) correlationIdentifier];
    v15 = [*(a1 + 32) wasFromStorage];
    v9 = [*(a1 + 32) wasLastMessageFromStorage];
    v10 = [*(a1 + 32) identifier];
    v11 = [*(a1 + 32) priority];
    v12 = [*(a1 + 32) timestamp];
    [v12 timeIntervalSinceReferenceDate];
    v14 = sub_100016210(0, v20, v19, v18, v17, v16, v3, v15, v9, v10, v11, v13, [*(a1 + 32) isTracingEnabled], objc_msgSend(*(a1 + 32), "tracingUUID"), objc_msgSend(*(a1 + 32), "pushType"), objc_msgSend(*(a1 + 32), "pushFlags"));

    if (v14)
    {
      CFRelease(v14);
    }
  }
}

void sub_100099AA4(uint64_t a1)
{
  v2 = [NSDate dateWithTimeIntervalSinceNow:-2592000.0];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  v5 = [*(a1 + 32) name];

  sub_1000B63E8(v5, 1, v4);
}

void sub_100099C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100099C74(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = sub_1000B6580(1, [*(a1 + 40) name], *(*(&v8 + 1) + 8 * v6));
        [*(*(*(a1 + 48) + 8) + 40) addObjectsFromArray:v7];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

void sub_10009A3F4(uint64_t a1)
{
  v2 = sub_100014258(*(a1 + 64), *(a1 + 32), [*(a1 + 40) name]);
  v3 = [*(a1 + 48) _onQueueIncomingMessagesFromRecords:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_10009A694(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = APSEncodeDictionary();

  if (!v3)
  {
    if (+[APSLog shouldReduceLogging])
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v15 = OS_LOG_TYPE_DEBUG;
    }

    else
    {
      if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_16;
      }

      *buf = 0;
      v15 = OS_LOG_TYPE_DEFAULT;
    }

    _os_log_impl(&_mh_execute_header, &_os_log_default, v15, "Dropping message - no payload data", buf, 2u);
    goto LABEL_16;
  }

  v17 = *(a1 + 40);
  v16 = [*(a1 + 32) topic];
  v4 = [*(a1 + 48) name];
  v5 = [*(a1 + 32) wasSent];
  v6 = [*(a1 + 32) messageID];
  v7 = [*(a1 + 32) identifier];
  v8 = [*(a1 + 32) priority];
  v9 = [*(a1 + 32) payloadFormat];
  v10 = [*(a1 + 32) timeout];
  v11 = [*(a1 + 32) timestamp];
  [v11 timeIntervalSinceReferenceDate];
  v13 = sub_1000B495C(0, v17, 0, v16, v4, v3, v5, v6, v7, v8, v9, v10, v12);

  if (v13)
  {
    if (+[APSLog shouldReduceLogging])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v19 = v13;
        v14 = OS_LOG_TYPE_DEBUG;
LABEL_11:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v14, "Got message record %p", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v19 = v13;
      v14 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_11;
    }

    CFRelease(v13);
  }

LABEL_16:
}

void sub_10009AC88(uint64_t a1)
{
  v2 = (a1 + 32);
  v3 = sub_1000B53F0(*(a1 + 32));
  if (v3)
  {
    v4 = v3;
    sub_1000B5610(v3, *(a1 + 40));

    CFRelease(v4);
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_10010C60C(v2);
  }
}

void sub_10009AEA4(uint64_t a1)
{
  v2 = [*(a1 + 32) channelID];
  v3 = [*(a1 + 32) channelTopic];
  v4 = [*(a1 + 32) environment];
  v5 = [*(a1 + 32) tokenName];
  v6 = sub_1000217B4(0, v2, v3, v4, v5, [*(a1 + 32) checkpoint]);

  if (v6)
  {
    if (+[APSLog shouldReduceLogging])
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
      {
        v8 = 134217984;
        v9 = v6;
        v7 = OS_LOG_TYPE_DEBUG;
LABEL_7:
        _os_log_impl(&_mh_execute_header, &_os_log_default, v7, "Got channel record %p", &v8, 0xCu);
      }
    }

    else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = v6;
      v7 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }

    CFRelease(v6);
  }
}

void sub_10009B6F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009B718(uint64_t a1)
{
  v2 = sub_100021E24(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
  v3 = [*(a1 + 64) _onQueueSubscribedChannelsForRecord:v2];
  v4 = *(*(a1 + 72) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_10009BAE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009BB04(uint64_t a1)
{
  v2 = sub_1000220A4(*(a1 + 32), *(a1 + 40), *(a1 + 48));
  v3 = [*(a1 + 56) _onQueueSubscribedChannelsForRecords:v2];
  v4 = *(*(a1 + 64) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_10009BDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10009BDD4(uint64_t a1)
{
  v2 = sub_100022260(*(a1 + 32), *(a1 + 40));
  v3 = [*(a1 + 48) _onQueueSubscribedChannelsForRecords:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (v2)
  {

    CFRelease(v2);
  }
}

void sub_10009C030(uint64_t a1)
{
  v2 = sub_10002240C();
  v3 = [*(a1 + 32) _onQueueSubscribedChannelsForRecords:v2];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (v2)
  {

    CFRelease(v2);
  }
}

id sub_1000A0700(uint64_t a1)
{
  v2 = +[APSLog courier];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "PSK delay has been lifted.", v4, 2u);
  }

  return [*(a1 + 32) setIsDelayingPSKRequests:0];
}

void sub_1000A0B44(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"AudioAccessory"))
    {
      v3 = 1;
    }

    else
    {
      v3 = CFEqual(v2, @"AppleTV") != 0;
    }

    byte_1001BF8A0 = v3;

    CFRelease(v2);
  }
}

void sub_1000A10AC(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 192) keepAliveV2SupportedOnInterface:0];
  v3 = [*(*(a1 + 32) + 200) BOOLValueFromPushBundleForKey:APSForceKeepAliveV1Key error:0];
  if (v2 == v3)
  {
    v4 = v3;
    [*(*(a1 + 32) + 192) setKeepAliveV2Supported:v3 ^ 1 onInterface:0];
    v5 = [*(a1 + 32) copyOperatorName];
    v6 = +[APSLog courier];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = @"in";
      if (v4)
      {
        v7 = @"out of";
      }

      v8 = 138412546;
      v9 = v5;
      v10 = 2112;
      v11 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@ opts %@ Keep Alive 2.0", &v8, 0x16u);
    }

    [*(a1 + 32) _performKeepAliveOnInterface:0 shortInterval:0 withAction:2];
  }
}

id sub_1000A54E8(void *a1, void *a2)
{
  result = [a2 protocolConnection:a1[4] receivedOfflinePresencekWithParameters:a1[5]];
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_1000A5524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Core Telephony acknowledged keep alive event with error %@", &v6, 0x16u);
  }
}

void sub_1000A55F4(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 shouldHandleIncomingPush:*(a1 + 32) forProtocolConnection:*(a1 + 40)])
  {
    [v5 protocolConnection:*(a1 + 40) receivedMessageWithParameters:*(a1 + 32) generation:*(a1 + 56) isWaking:*(a1 + 64)];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1000A5670(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 shouldHandleIncomingPush:a1[4] forProtocolConnection:a1[5]])
  {
    [v5 protocolConnection:a1[5] receivedPubSubChannelListWithParameters:a1[4]];
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

void sub_1000A56E4(void *a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 shouldHandleIncomingPush:a1[4] forProtocolConnection:a1[5]])
  {
    [v5 protocolConnection:a1[5] receivedPubSubChannelUpdateWithParameters:a1[4]];
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }
}

id sub_1000A5758(void *a1, void *a2)
{
  result = [a2 protocolConnection:a1[4] receivedPresenceTrackingRequestWithParameters:a1[5]];
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

id sub_1000A5794(void *a1, void *a2)
{
  result = [a2 protocolConnection:a1[4] receivedFilterUpdateWithParameters:a1[5]];
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

void sub_1000A764C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[APSLog courier];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v5;
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%@: Core Telephony acknowledged keep alive event with error %@", &v6, 0x16u);
  }
}

id sub_1000A9AAC(uint64_t a1)
{
  v2 = [*(a1 + 32) courierConnection];
  [v2 sendTokenGenerateMessageWithTopicHash:*(a1 + 40) baseToken:*(a1 + 48) appId:*(a1 + 84) expirationTTL:*(a1 + 80) vapidPublicKeyHash:*(a1 + 56) type:*(a1 + 64) onInterface:*(a1 + 72)];

  v3 = *(a1 + 72);

  return sub_1000067F8(v3);
}

id sub_1000AA140(uint64_t a1)
{
  v2 = [*(a1 + 32) courierConnection];
  [v2 sendFilterMessageWithEnabledHashes:*(a1 + 40) ignoredHashes:*(a1 + 48) opportunisticHashes:*(a1 + 56) nonWakingHashes:*(a1 + 64) pausedHashes:*(a1 + 72) token:*(a1 + 80) version:*(a1 + 88) onInterface:*(a1 + 96)];

  v3 = *(a1 + 96);

  return sub_1000067F8(v3);
}

id sub_1000AA34C(uint64_t a1)
{
  v2 = [*(a1 + 32) courierConnection];
  LOBYTE(v5) = *(a1 + 108);
  [v2 sendConnectMessageWithToken:*(a1 + 40) state:*(a1 + 96) presenceFlags:*(a1 + 100) interface:*(a1 + 80) activeInterval:*(a1 + 104) metadata:*(a1 + 48) certificates:*(a1 + 56) nonce:*(a1 + 64) signature:*(a1 + 72) redirectCount:v5 onInterface:*(a1 + 88)];

  v3 = *(a1 + 88);

  return sub_1000067F8(v3);
}

id sub_1000AA5D4(uint64_t a1)
{
  v2 = [*(a1 + 32) courierConnection];
  LOBYTE(v5) = *(a1 + 144);
  [v2 sendConnectMessageWithToken:*(a1 + 40) interface:*(a1 + 96) activeInterval:*(a1 + 136) presenceFlags:*(a1 + 140) metadata:*(a1 + 48) certificates:*(a1 + 56) nonce:*(a1 + 104) signature:*(a1 + 112) hostCertificateInfo:*(a1 + 120) redirectCount:*(a1 + 64) tcpHandshakeTimeMilliseconds:*(a1 + 72) dnsResolveTimeMilliseconds:*(a1 + 80) tlsHandshakeTimeMilliseconds:v5 consecutiveConnectionFailureReason:*(a1 + 88) onInterface:*(a1 + 128) numberOfPSKToRequest:{objc_msgSend(*(a1 + 32), "numberOfPSKsToRequestOnInterface:", *(a1 + 96))}];

  v3 = *(a1 + 128);

  return sub_1000067F8(v3);
}

id sub_1000AA87C(uint64_t a1)
{
  v2 = [*(a1 + 32) courierConnection];
  LOBYTE(v5) = *(a1 + 104);
  [v2 sendConnectMessageWithToken:*(a1 + 40) state:*(a1 + 96) presenceFlags:*(a1 + 100) metadata:*(a1 + 48) certificates:*(a1 + 56) nonce:*(a1 + 64) signature:*(a1 + 72) hostCertificateInfo:*(a1 + 80) redirectCount:v5 onInterface:*(a1 + 88)];

  v3 = *(a1 + 88);

  return sub_1000067F8(v3);
}

void sub_1000AF41C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 environment];
  v6 = [*(a1 + 32) preferredProtocolConnection];
  v23 = +[APSConfiguration configurationForEnvironment:connectionType:](APSConfiguration, "configurationForEnvironment:connectionType:", v5, [v6 connectionType]);

  v7 = [v23 pubSubRetryAttemptsCount];
  v8 = [v7 unsignedIntegerValue];
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = 3;
  }

  v10 = [APSPubSubRequest alloc];
  v12 = *(a1 + 40);
  v11 = *(a1 + 48);
  v13 = [*(a1 + 32) _getNextMessageID];
  v14 = [*(a1 + 40) firstObject];
  v15 = [v14 tokenName];
  v16 = -[APSPubSubRequest initWithSubscriptionChannels:unsubscriptionChannels:messageID:userName:token:subscriptionType:connectionType:retryCount:](v10, "initWithSubscriptionChannels:unsubscriptionChannels:messageID:userName:token:subscriptionType:connectionType:retryCount:", v12, v11, v13, v15, *(a1 + 56), 0, [v4 connectionType], v9);

  v17 = [v4 connectionType];
  if (v17 == 2)
  {
    [(APSPubSubRequest *)v16 setRetryCount:0];
  }

  v18 = [*(a1 + 32) subscriptionRequests];

  if (!v18)
  {
    v19 = +[NSMutableArray array];
    [*(a1 + 32) setSubscriptionRequests:v19];
  }

  if (v16)
  {
    v20 = [*(a1 + 32) subscriptionRequests];
    [v20 addObject:v16];
  }

  v21 = [(APSPubSubRequest *)v16 messageID];
  v22 = [v21 unsignedIntValue];

  [*(a1 + 32) _writePubSubMessagetoConnection:v16 messageID:v22 token:*(a1 + 56) connectionType:{-[APSPubSubRequest connectionType](v16, "connectionType")}];
  [*(a1 + 32) _retryRequestAfterDelay:v16];
}

void sub_1000AF9F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, id a19)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a19);
  _Unwind_Resume(a1);
}

void sub_1000AFA2C(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = objc_loadWeakRetained(a1 + 7);
  if (v3 && WeakRetained)
  {
    v4 = [a1[4] subscriptionRequests];
    [v4 addObject:a1[5]];

    v5 = [a1[5] messageID];
    v6 = [v5 unsignedIntValue];

    v7 = +[APSLog pubSub];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v11 = 138412546;
      v12 = v8;
      v13 = 2048;
      v14 = [v8 retryCount];
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Retrying pubsub request %@ Retries left: %lu", &v11, 0x16u);
    }

    v9 = a1[5];
    v10 = [v9 token];
    [v3 _writePubSubMessagetoConnection:v9 messageID:v6 token:v10 connectionType:{objc_msgSend(a1[5], "connectionType")}];

    [v3 _retryRequestAfterDelay:WeakRetained];
  }
}

void sub_1000AFF94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  if ([v3 subscriptionType] == 1)
  {
    v18 = 0;
    v5 = 2;
    goto LABEL_11;
  }

  v6 = [*(a1 + 32) subscriptionChannels];
  if (v6 && (v7 = v6, [*(a1 + 32) unsubscriptionChannels], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v11 = [*(a1 + 32) subscriptionChannels];
    v5 = 1;
  }

  else
  {
    v9 = [*(a1 + 32) unsubscriptionChannels];
    if (!v9 || (v10 = v9, [*(a1 + 32) subscriptionChannels], v5 = objc_claimAutoreleasedReturnValue(), v5, v10, v5))
    {
      v18 = 0;
      v5 = 1;
      goto LABEL_11;
    }

    v11 = [*(a1 + 32) unsubscriptionChannels];
  }

  v12 = [v11 firstObject];
  v18 = [v12 channelTopic];

LABEL_11:
  v13 = +[NSMutableDictionary dictionary];
  [v13 setObject:v18 forKeyedSubscript:@"Topic"];
  v14 = [*(a1 + 40) environment];
  v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v14 environmentType]);
  [v13 setObject:v15 forKeyedSubscript:@"Environment"];

  v16 = [NSNumber numberWithInteger:v5];
  [v13 setObject:v16 forKeyedSubscript:@"MessageType"];

  v17 = [NSNumber numberWithInteger:*(a1 + 64)];
  [v13 setObject:v17 forKeyedSubscript:@"ConnectionType"];

  APSPubSubPowerLog();
  [v4 sendPubSubChannelListWithMetadata:*(a1 + 48) baseToken:*(a1 + 56) messageID:*(a1 + 72)];
}

void sub_1000B0DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000B0DFC(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) _getCurrentTokens];
  v7 = v6;
  if (*(a1 + 40))
  {
    if (([v6 containsObject:?] & 1) == 0)
    {
      v8 = [*(a1 + 32) _findConnectedClientWithToken:*(a1 + 40) onProtocolConnection:v5];
      if (v8)
      {
        v9 = v8;
        v10 = +[APSLog pubSub];
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(a1 + 32);
          v12 = *(a1 + 40);
          v13 = 138413058;
          v14 = v11;
          v15 = 2112;
          v16 = v9;
          v17 = 2112;
          v18 = v12;
          v19 = 2112;
          v20 = v7;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ incoming pubsub response is for a proxy client %@ baseToken %@ publicTokens %@", &v13, 0x2Au);
        }

        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a3 = 1;
      }
    }
  }
}