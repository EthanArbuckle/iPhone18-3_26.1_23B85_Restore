void sub_100001010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_alloc_init(ASXListenerDelegate);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];
  exit(1);
}

std::logic_error *sub_100001640(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100001674(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 23) < 0)
  {
    sub_1000019BC(__dst, *a1, *(a1 + 8));
  }

  else
  {
    *__dst = *a1;
    v31 = *(a1 + 16);
  }

  if (sub_100001A60(__dst))
  {
    if (*(a2 + 23) < 0)
    {
      sub_1000019BC(__p, *a2, *(a2 + 8));
    }

    else
    {
      *__p = *a2;
      v29 = *(a2 + 16);
    }

    v4 = !sub_100001A60(__p);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    v4 = 1;
  }

  if (SHIBYTE(v31) < 0)
  {
    operator delete(__dst[0]);
    if (v4)
    {
      goto LABEL_13;
    }
  }

  else if (v4)
  {
LABEL_13:
    sub_100001AD0(&std::cerr, "Invalid version string\n", 23);
    return 0;
  }

  v6 = std::string::find(a1, 46, 0);
  v7 = std::string::find(a1, 46, v6 + 1);
  v8 = std::string::find(a2, 46, 0);
  v9 = std::string::find(a2, 46, v8 + 1);
  std::string::basic_string(&v27, a1, 0, v6, &v32);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = &v27;
  }

  else
  {
    v10 = v27.__r_.__value_.__r.__words[0];
  }

  v11 = strtoul(v10, 0, 10);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v12 = v11 << 25;
  std::string::basic_string(&v27, a1, v6 + 1, v7 + ~v6, &v32);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &v27;
  }

  else
  {
    v13 = v27.__r_.__value_.__r.__words[0];
  }

  v14 = strtoul(v13, 0, 10);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v15 = v12 + (v14 << 20);
  std::string::basic_string(&v27, a1, v7 + 1, 0xFFFFFFFFFFFFFFFFLL, &v32);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v16 = &v27;
  }

  else
  {
    v16 = v27.__r_.__value_.__r.__words[0];
  }

  v17 = strtoul(v16, 0, 10);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v18 = v15 + (v17 << 15);
  std::string::basic_string(&v27, a2, 0, v8, &v32);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = &v27;
  }

  else
  {
    v19 = v27.__r_.__value_.__r.__words[0];
  }

  v20 = strtoul(v19, 0, 10);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v21 = v18 + (v20 << 10);
  std::string::basic_string(&v27, a2, v8 + 1, v9 + ~v8, &v32);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v22 = &v27;
  }

  else
  {
    v22 = v27.__r_.__value_.__r.__words[0];
  }

  v23 = strtoul(v22, 0, 10);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  v24 = v21 + 32 * v23;
  std::string::basic_string(&v27, a2, v9 + 1, 0xFFFFFFFFFFFFFFFFLL, &v32);
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = &v27;
  }

  else
  {
    v25 = v27.__r_.__value_.__r.__words[0];
  }

  v26 = strtoul(v25, 0, 10);
  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  return (v24 + v26) ^ 0x80000000;
}

void sub_1000019A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1000019BC(_BYTE *__dst, void *__src, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_100001DF8();
  }

  __dst[23] = a3;
  v3 = a3 + 1;

  return memmove(__dst, __src, v3);
}

BOOL sub_100001A60(const char *a1)
{
  v5 = -1;
  v6 = -1;
  v4 = -1;
  if (a1[23] < 0)
  {
    a1 = *a1;
  }

  v1 = sscanf(a1, "%d.%d.%d", &v6, &v5, &v4);
  return (v6 | v5 | v4) >= 0 && v1 == 3;
}

void *sub_100001AD0(void *a1, uint64_t a2, uint64_t a3)
{
  std::ostream::sentry::sentry();
  if (v20 == 1)
  {
    v6 = a1 + *(*a1 - 24);
    v7 = *(v6 + 5);
    v8 = *(v6 + 2);
    v9 = *(v6 + 36);
    if (v9 == -1)
    {
      std::ios_base::getloc((a1 + *(*a1 - 24)));
      v10 = std::locale::use_facet(&__b, &std::ctype<char>::id);
      v9 = (v10->__vftable[2].~facet_0)(v10, 32);
      std::locale::~locale(&__b);
      *(v6 + 36) = v9;
    }

    v11 = a2 + a3;
    if ((v8 & 0xB0) == 0x20)
    {
      v12 = a2 + a3;
    }

    else
    {
      v12 = a2;
    }

    if (!v7)
    {
      goto LABEL_27;
    }

    v13 = *(v6 + 3);
    v14 = v13 <= a3;
    v15 = v13 - a3;
    v16 = v14 ? 0 : v15;
    if (v12 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v12 - a2) != v12 - a2)
    {
      goto LABEL_27;
    }

    if (v16 >= 1)
    {
      if (v16 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100001DF8();
      }

      if (v16 >= 0x17)
      {
        operator new();
      }

      v22 = v16;
      memset(&__b, v9, v16);
      *(&__b.__locale_ + v16) = 0;
      if (v22 >= 0)
      {
        p_b = &__b;
      }

      else
      {
        p_b = __b.__locale_;
      }

      v18 = (*(*v7 + 96))(v7, p_b, v16);
      if (v22 < 0)
      {
        operator delete(__b.__locale_);
      }

      if (v18 != v16)
      {
        goto LABEL_27;
      }
    }

    if (v11 - v12 < 1 || (*(*v7 + 96))(v7, v12, v11 - v12) == v11 - v12)
    {
      *(v6 + 3) = 0;
    }

    else
    {
LABEL_27:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
    }
  }

  std::ostream::sentry::~sentry();
  return a1;
}

void sub_100001D78(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v17 + *(*v17 - 24)));
  __cxa_end_catch();
  JUMPOUT(0x100001D4CLL);
}

void sub_100001E10(const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_100001E6C(exception, a1);
}

std::logic_error *sub_100001E6C(std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  return result;
}

uint64_t sub_100001EB4(uint64_t a1)
{
  *(a1 + 160) = 0;
  *a1 = v3;
  *(a1 + *(v3 - 24)) = v2;
  v4 = (a1 + *(*a1 - 24));
  std::ios_base::init(v4, (a1 + 8));
  v4[1].__vftable = 0;
  v4[1].__fmtflags_ = -1;
  std::locale::locale((a1 + 16));
  *(a1 + 72) = 0;
  v5 = a1 + 72;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 104) = 16;
  *(a1 + 96) = a1 + 72;
  std::string::resize((a1 + 72), 0x16uLL, 0);
  v6 = *(a1 + 95);
  if (v6 < 0)
  {
    v6 = *(a1 + 80);
  }

  *(a1 + 48) = v5;
  *(a1 + 56) = v5;
  *(a1 + 64) = v5 + v6;
  return a1;
}

void sub_100002080(_Unwind_Exception *a1)
{
  if (*(v1 + 95) < 0)
  {
    operator delete(*v3);
  }

  *(v1 + 8) = v2;
  std::locale::~locale((v1 + 16));
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_1000020C4(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 36);
  *(result + 8) = *(a2 + 12);
  v3 = *(a2 + 40) | (*(a2 + 44) << 32);
  v4 = *(a2 + 32);
  v5 = (*(a2 + 28) >> 27) & 0xF;
  v6 = &dword_100012BB0;
  v7 = 7;
  while (*v6 != v5)
  {
    v6 += 2;
    if (!--v7)
    {
      goto LABEL_6;
    }
  }

  if (v6[1] >> 7 > 0x7C)
  {
    goto LABEL_17;
  }

LABEL_6:
  v8 = &dword_100012BB0;
  v9 = 7;
  while (*v8 != v5)
  {
    v8 += 2;
    if (!--v9)
    {
      goto LABEL_17;
    }
  }

  if (v8[1])
  {
    v10 = &dword_100012BB0;
    v11 = 7;
    while (*v10 != v5)
    {
      v10 += 2;
      if (!--v11)
      {
        v12 = 0;
        goto LABEL_16;
      }
    }

    v12 = v10[1];
LABEL_16:
    v3 *= 0x3E80 / v12;
  }

LABEL_17:
  v13 = &dword_100012BB0;
  v14 = 7;
  while (*v13 != v5)
  {
    v13 += 2;
    if (!--v14)
    {
      v15 = 0;
      goto LABEL_22;
    }
  }

  v15 = v13[1];
LABEL_22:
  *(result + 20) = 0;
  *(result + 12) = 0;
  *result = 0xFACADE990BE5E519;
  v16 = &dword_100012BE8;
  v17 = 4;
  while (v16[1] != v15)
  {
    v16 += 2;
    if (!--v17)
    {
      v18 = 252706816;
      goto LABEL_27;
    }
  }

  v18 = ((*v16 & 0xF) << 16) | 0xF100000;
LABEL_27:
  *(result + 24) = v18;
  *(result + 12) = *(a2 + 32);
  *(result + 16) = *(a2 + 36);
  *(result + 20) = v3;
  *(result + 24) = v18 & 0xFFF0000 | WORD2(v3);
  *(result + 24) = v18 & 0xFF0000 | WORD2(v3) | ((*(a2 + 44) >> 19) << 24);
  *(result + 12) = v4;
  *(result + 16) = v2;
  return result;
}

float sub_100002240(int a1, unsigned int a2)
{
  v2 = &dword_100012BE8;
  v3 = 4;
  while (*v2 != (HIWORD(a2) & 0xF))
  {
    v2 += 2;
    if (!--v3)
    {
      v4 = 0.0;
      return (a1 | (a2 << 32)) / v4;
    }
  }

  v4 = v2[1];
  return (a1 | (a2 << 32)) / v4;
}

uint64_t sub_100002290(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = &dword_100012BE8;
  v4 = 4;
  while (*v3 != (HIWORD(v2) & 0xF))
  {
    v3 += 2;
    if (!--v4)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  v5 = v3[1];
LABEL_6:
  v6 = (v5 * (a2 + 45) * 0xDF3B645A1CAC0831) >> 64;
  v7 = (*(result + 20) | (*(result + 24) << 32)) + (v6 >> 4) + (v6 >> 63);
  *(result + 20) += (v6 >> 4) + (v6 >> 63);
  *(result + 24) = v2 & 0xFFFF0000 | WORD2(v7);
  return result;
}

void sub_10000230C(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
  v6 = a2 - v5;
  if (a2 <= v5)
  {
    if (a2 < v5)
    {
      v11 = v3 + 24 * a2;
      if (v4 != v11)
      {
        v12 = a1[1];
        do
        {
          v14 = *(v12 - 24);
          v12 -= 24;
          v13 = v14;
          if (v14)
          {
            *(v4 - 16) = v13;
            operator delete(v13);
          }

          v4 = v12;
        }

        while (v12 != v11);
      }

      a1[1] = v11;
    }
  }

  else
  {
    v7 = a1[2];
    if (0xAAAAAAAAAAAAAAABLL * ((v7 - v4) >> 3) < v6)
    {
      if (a2 <= 0xAAAAAAAAAAAAAAALL)
      {
        v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v3) >> 3);
        v9 = 2 * v8;
        if (2 * v8 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x555555555555555)
        {
          v10 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        sub_1000024FC();
      }

      sub_1000024E4();
    }

    bzero(a1[1], 24 * ((24 * v6 - 24) / 0x18) + 24);
    a1[1] = v4 + 24 * ((24 * v6 - 24) / 0x18) + 24;
  }
}

void sub_1000024FC()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void sub_100002534(uint64_t a1)
{
  sub_10000256C(a1);

  operator delete();
}

uint64_t sub_10000256C(uint64_t a1)
{
  *a1 = off_100038380;
  vDSP_destroy_fftsetup(*(a1 + 8));
  if (*(a1 + 16))
  {
    operator delete[]();
  }

  if (*(a1 + 24))
  {
    operator delete[]();
  }

  return a1;
}

void sub_1000025EC(uint64_t a1, DSPComplex *__C, float *a3, uint64_t a4)
{
  vDSP_ctoz(__C, 2, (a1 + 16), 1, 0x400uLL);
  vDSP_fft_zrip(*(a1 + 8), (a1 + 16), 1, 0xBuLL, 1);
  v7 = 0;
  v8 = *(a1 + 24);
  *(*(a1 + 16) + 4096) = *v8;
  v8[1024] = 0;
  *v8 = 0;
  v9 = (a4 + 4);
  do
  {
    v10 = *(*(a1 + 24) + 4 * v7);
    *(v9 - 1) = *(*(a1 + 16) + 4 * v7);
    *v9 = v10;
    ++v7;
    v9 += 2;
  }

  while (v7 != 1025);

  sub_1000026A0(a1, a3);
}

void sub_1000026A0(const DSPSplitComplex *a1, float *__C)
{
  vDSP_zvmags(a1 + 1, 1, __C, 1, 0x401uLL);
  __B = 0.0000019073;
  vDSP_vsmul(__C, 1, &__B, __C, 1, 0x401uLL);
}

void sub_100002704(uint64_t a1, DSPComplex *__C, float *a3)
{
  vDSP_ctoz(__C, 2, (a1 + 16), 1, 0x400uLL);
  vDSP_fft_zrip(*(a1 + 8), (a1 + 16), 1, 0xBuLL, 1);
  v5 = *(a1 + 24);
  *(*(a1 + 16) + 4096) = *v5;
  v5[1024] = 0;
  *v5 = 0;

  sub_1000026A0(a1, a3);
}

void sub_100003A04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (*(v41 - 97) < 0)
  {
    operator delete(*(v41 - 120));
  }

  if (a24 < 0)
  {
    operator delete(a19);
  }

  sub_100011DC4(v39 + 37);
  sub_100011E58(v39 + 25);
  sub_100007674(v39 + 20);
  v43 = v39[16];
  if (v43)
  {
    v39[17] = v43;
    operator delete(v43);
  }

  v42 = *v40;
  if (*v40)
  {
    v39[14] = v42;
    operator delete(v42);
  }

  sub_100004BF4((v39 + 1));
  operator delete();
}

void sub_100003D24(_Unwind_Exception *a1)
{
  __cxa_end_catch();

  _Unwind_Resume(a1);
}

void sub_100004180(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000419C(uint64_t result)
{
  if (*(result + 24))
  {
    sub_10000419C();
    operator delete();
  }

  if (*(result + 8) == 1)
  {
    if (*(result + 16))
    {
      operator delete[]();
    }
  }

  return result;
}

uint64_t sub_100004208(unsigned int *a1, uint64_t a2)
{
  v10 = a2;
  if (a1)
  {
    v2 = *a1;
    v3 = &v10;
    do
    {
LABEL_3:
      v4 = v3;
      v5 = *v3;
      if (!*v3)
      {
        break;
      }

      v3 = (v5 + 6);
    }

    while (*v5 <= v2);
    v6 = a1;
    while (1)
    {
      v7 = v6;
      v6 = *(v6 + 3);
      if (!v6)
      {
        break;
      }

      v8 = *v6;
      if (*v6 != v2)
      {
        *(v7 + 3) = v5;
        v3 = (v7 + 6);
        *v4 = a1;
        v2 = v8;
        a1 = v6;
        goto LABEL_3;
      }
    }

    *(v7 + 3) = v5;
    *v4 = a1;
    return v10;
  }

  return a2;
}

uint64_t sub_100004334(uint64_t a1, unsigned int a2)
{
  if (a1)
  {
    v2 = a1;
    do
    {
      if (!((*v2 ^ a2) >> 16))
      {
        operator new();
      }

      v2 = *(v2 + 24);
    }

    while (v2);
  }

  return 0;
}

void sub_1000043CC(_DWORD *a1, uint64_t a2)
{
  if (*a1 == 0x40000000)
  {
    v2 = a1[1];
    if (a2 == v2 || (a2 & 7) == 0 && (a2 - v2) < 8)
    {
      operator new();
    }

    exception = __cxa_allocate_exception(0x20uLL);
    *&v4.__val_ = 112;
    v4.__cat_ = &off_10003C950;
    sub_10000C55C(exception, &v4);
  }

  else
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v4.__val_ = 111;
    v4.__cat_ = &off_10003C950;
    sub_10000C55C(exception, &v4);
  }
}

uint64_t sub_1000045CC(int *a1, uint64_t a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 4) = 0x40000000;
  }

  if (!a1)
  {
    v5 = 24;
    if (!a2)
    {
      return v5;
    }

    goto LABEL_21;
  }

  v4 = 0;
  v5 = 24;
  v6 = a2;
  do
  {
    v7 = *v3;
    v8 = v3[1];
    v9 = *v3;
    if (*v3 != v4 && v9 != 0)
    {
      if (a2)
      {
        v6 = a2 + v5;
        *v6 = 0;
        *(v6 + 8) = 0;
        *(v6 + 16) = 0;
        *(v6 + 4) = v7;
        v7 = *v3;
        v9 = *v3;
      }

      v5 = (v5 + 24);
      v4 = v7;
    }

    if (v9)
    {
      v11 = v8 + 3;
      v12 = v11 & 0xFFFFFFFC;
      if (a2)
      {
        if (v7 == 1610874935)
        {
          v12 = sub_10000C674(v3[1], *(v3 + 2), a2 + v5);
        }

        else
        {
          memcpy((a2 + v5), *(v3 + 2), v11 & 0xFFFFFFFC);
        }

        *(v6 + 8) = v12;
      }

      v5 = (v12 + v5);
    }

    v3 = *(v3 + 3);
  }

  while (v3);
  if (a2)
  {
LABEL_21:
    *(a2 + 8) = v5;
  }

  return v5;
}

uint64_t sub_1000046D4(int *a1, _DWORD *a2)
{
  v3 = a1;
  if (a2)
  {
    *a2 = 0x40000000;
  }

  if (a1)
  {
    v4 = 0;
    v5 = 8;
    v6 = a2;
    while (1)
    {
      v8 = *v3;
      v7 = v3[1];
      if (*v3 != v4 && *v3 != 0)
      {
        break;
      }

      if (*v3)
      {
        goto LABEL_15;
      }

LABEL_21:
      v3 = *(v3 + 3);
      if (!v3)
      {
        if (a2)
        {
          goto LABEL_23;
        }

        return v5;
      }
    }

    if (a2)
    {
      v6 = (a2 + v5);
      *v6 = v8;
      v6[1] = 0;
    }

    LODWORD(v5) = v5 + 8;
    v4 = v8;
LABEL_15:
    v10 = (v7 + 3) & 0xFFFFFFFC;
    if (a2)
    {
      v11 = *(v3 + 2);
      if (v8 == 1610874935)
      {
        v10 = sub_10000C674(v7, v11, a2 + v5);
      }

      else
      {
        memcpy(a2 + v5, v11, (v7 + 3) & 0xFFFFFFFC);
      }

      v6[1] = v10;
    }

    v5 = (v10 + v5);
    goto LABEL_21;
  }

  v5 = 8;
  if (a2)
  {
LABEL_23:
    a2[1] = v5;
  }

  return v5;
}

_BYTE *sub_1000047C4@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  switch(a1)
  {
    case 500:
      v2 = "Unknown Error";
      break;
    case 501:
      v2 = "Can't checkpoint a fatsig stream that has already been checkpointed. Must call rewind() before.";
      break;
    case 502:
      v2 = "Can't rewind() a fatsig stream that hasn't been checkpointed. Must call checkpoint() before.";
      break;
    case 503:
      v2 = "Can't checkpoint a fft stream that has already been checkpointed. Must call rewind() before.";
      break;
    case 504:
      v2 = "Can't rewind() a fft stream that hasn't been checkpointed. Must call checkpoint() before.";
      break;
    case 505:
      v2 = "Unkonwn pipeline error - could not construct pipeline";
      break;
    case 506:
      v2 = "Unallocated buffer for vizualize received";
      break;
    case 507:
      v2 = "Invalid last_n value";
      break;
    case 508:
      v2 = "Error checkpointing the ring buffer";
      break;
    case 509:
      v2 = "Error rewinding the ring buffer";
      break;
    case 510:
      v2 = "Error writing to the ring buffer";
      break;
    case 511:
      v2 = "Error getting frame from ring buffer";
      break;
    case 512:
      v2 = "Error - Aligned Buffer is not actually aligned";
      break;
    case 513:
      v2 = "Error - count flowed into fft stream not equal to SHZ_SIGX_FFT_STEPSIZE";
      break;
    case 514:
      v2 = "Error - sample count after resample less than SHZ_SIGX_FFT_STEPSIZE";
      break;
    case 515:
      v2 = "Error - internal sample rate is not 16k";
      break;
    case 516:
      v2 = "Error - resampling given too many samples";
      break;
    case 517:
      v2 = "Error - resample function not set correctly";
      break;
    default:
      if (a1)
      {
        v2 = "unknown";
      }

      else
      {
        v2 = "Success";
      }

      break;
  }

  return sub_100004930(a2, v2);
}

_BYTE *sub_100004930(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_100001DF8();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

void sub_1000049F4(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_100004A30(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_100004A6C(uint64_t a1, std::error_code *this)
{
  std::error_code::message(&v5, this);
  std::runtime_error::runtime_error(a1, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  *a1 = &off_100038420;
  *(a1 + 16) = *this;
  return a1;
}

void sub_100004AE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100004B04(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    sub_10000419C(result);
    operator delete();
  }

  *a1 = 0;
  return result;
}

void sub_100004B48(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  if (v2 != *a1)
  {
    v4 = a1[1];
    do
    {
      v6 = *(v4 - 24);
      v4 -= 24;
      v5 = v6;
      if (v6)
      {
        *(v2 - 16) = v5;
        operator delete(v5);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  a1[1] = v3;
}

void sub_100004BA0(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_100004B48(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t sub_100004BF4(uint64_t a1)
{
  sub_100004B04(a1);
  v3 = (a1 + 40);
  sub_100004BA0(&v3);
  return a1;
}

uint64_t *sub_100004C34(uint64_t *result)
{
  v1 = *result;
  v2 = result[1];
  if (v2 - *result >= 9)
  {
    v3 = result;
    v4 = 1;
    do
    {
      v5 = (v1 + 8 * v4);
      v6 = v4 - 1;
      v7 = v1 + 8 * (v4 - 1);
      if (*v7 == *v5 && *(v7 + 4) == v5[2] && *(v7 + 6) == v5[3])
      {
        v8 = v5 - 4;
        v9 = v2 - v5;
        if (v2 != v5)
        {
          result = memmove(v5 - 4, v5, v2 - v5);
          v1 = *v3;
        }

        v2 = (v8 + v9);
        v3[1] = v8 + v9;
        v4 = v6;
      }

      else if (*v5 < *v7)
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *&v11.__val_ = 200;
        v11.__cat_ = &off_10003C950;
        sub_10000C55C(exception, &v11);
      }

      ++v4;
    }

    while (v4 < (v2 - v1) >> 3);
  }

  return result;
}

void *sub_100004D54(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_1000024E4();
  }

  return result;
}

void sub_100004DDC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

int8x16_t sub_100004DF8(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *), uint64_t a4, char a5)
{
LABEL_1:
  v9 = a2 - 1;
  v106 = a2 - 3;
  v107 = a2 - 2;
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = a2 - v10;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      break;
    }

    switch(v11)
    {
      case 3uLL:
        v63 = (*a3)(v10 + 1, v10);
        v64 = (*a3)(a2 - 1, v10 + 1);
        if (v63)
        {
          v62 = *v10;
          if (v64)
          {
LABEL_108:
            *v10 = *v9;
          }

          else
          {
            *v10 = v10[1];
            v10[1] = v62;
            if (!(*a3)(a2 - 1, v10 + 1))
            {
              return result;
            }

            v62 = v10[1];
            v10[1] = *v9;
          }

          *v9 = v62;
          return result;
        }

        if (!v64)
        {
          return result;
        }

        v100 = v10[1];
        v10[1] = *v9;
        *v9 = v100;
        goto LABEL_182;
      case 4uLL:
        v65 = (*a3)(v10 + 1, v10);
        v66 = (*a3)(v10 + 2, v10 + 1);
        if (v65)
        {
          v67 = *v10;
          if (v66)
          {
            *v10 = v10[2];
            v10[2] = v67;
          }

          else
          {
            *v10 = v10[1];
            v10[1] = v67;
            if ((*a3)(v10 + 2, v10 + 1))
            {
              *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
            }
          }
        }

        else if (v66)
        {
          *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
          if ((*a3)(v10 + 1, v10))
          {
            *v10 = vextq_s8(*v10, *v10, 8uLL);
          }
        }

        if (!(*a3)(a2 - 1, v10 + 2))
        {
          return result;
        }

        v105 = v10[2];
        v10[2] = *v9;
        *v9 = v105;
        if (!(*a3)(v10 + 2, v10 + 1))
        {
          return result;
        }

        *(v10 + 1) = vextq_s8(*(v10 + 1), *(v10 + 1), 8uLL);
LABEL_182:
        if ((*a3)(v10 + 1, v10))
        {
          result = vextq_s8(*v10, *v10, 8uLL);
          *v10 = result;
        }

        return result;
      case 5uLL:

        sub_100006DA4(v10, v10 + 1, v10 + 2, v10 + 3, a2 - 1, a3);
        return result;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v68 = v10 + 1;
      v70 = v10 == a2 || v68 == a2;
      if (a5)
      {
        if (!v70)
        {
          v71 = 0;
          v72 = v10;
          do
          {
            v73 = v72;
            v72 = v68;
            if ((*a3)(v68, v73))
            {
              v111 = *v72;
              v74 = v71;
              while (1)
              {
                *(v10 + v74 + 8) = *(v10 + v74);
                if (!v74)
                {
                  break;
                }

                v74 -= 8;
                if (((*a3)(&v111, (v10 + v74)) & 1) == 0)
                {
                  v75 = (v10 + v74 + 8);
                  goto LABEL_128;
                }
              }

              v75 = v10;
LABEL_128:
              *v75 = v111;
            }

            v68 = v72 + 1;
            v71 += 8;
          }

          while (v72 + 1 != a2);
        }
      }

      else if (!v70)
      {
        do
        {
          v101 = a1;
          a1 = v68;
          if ((*a3)(v68, v101))
          {
            v111 = *a1;
            v102 = a1;
            do
            {
              v103 = v102;
              v104 = *--v102;
              *v103 = v104;
            }

            while (((*a3)(&v111, v103 - 2) & 1) != 0);
            *v102 = v111;
          }

          v68 = a1 + 1;
        }

        while (a1 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v109 = a2;
        v76 = v12 >> 1;
        v77 = v12 >> 1;
        do
        {
          v78 = v77;
          if (v76 >= v77)
          {
            v79 = (2 * v77) | 1;
            v80 = &a1[v79];
            if (2 * v77 + 2 < v11 && (*a3)(&a1[v79], v80 + 1))
            {
              ++v80;
              v79 = 2 * v78 + 2;
            }

            v81 = &a1[v78];
            if (((*a3)(v80, v81) & 1) == 0)
            {
              v111 = *v81;
              do
              {
                v82 = v80;
                *v81 = *v80;
                if (v76 < v79)
                {
                  break;
                }

                v83 = (2 * v79) | 1;
                v80 = &a1[v83];
                v84 = 2 * v79 + 2;
                if (v84 < v11 && (*a3)(&a1[v83], v80 + 1))
                {
                  ++v80;
                  v83 = v84;
                }

                v81 = v82;
                v79 = v83;
              }

              while (!(*a3)(v80, &v111));
              *v82 = v111;
            }
          }

          v77 = v78 - 1;
        }

        while (v78);
        v85 = v109;
        do
        {
          v86 = v85;
          v87 = 0;
          v110 = *a1;
          v88 = a1;
          do
          {
            v89 = &v88[v87];
            v90 = v89 + 1;
            v91 = (2 * v87) | 1;
            v92 = 2 * v87 + 2;
            if (v92 < v11)
            {
              v93 = v89 + 2;
              if ((*a3)(v89 + 1, v89 + 2))
              {
                v90 = v93;
                v91 = v92;
              }
            }

            *v88 = *v90;
            v88 = v90;
            v87 = v91;
          }

          while (v91 <= ((v11 - 2) >> 1));
          v85 = v86 - 1;
          if (v90 == v86 - 1)
          {
            *v90 = v110;
          }

          else
          {
            *v90 = *v85;
            *v85 = v110;
            v94 = (v90 - a1 + 8) >> 3;
            v95 = v94 < 2;
            v96 = v94 - 2;
            if (!v95)
            {
              v97 = v96 >> 1;
              v98 = &a1[v96 >> 1];
              if ((*a3)(v98, v90))
              {
                v111 = *v90;
                do
                {
                  v99 = v98;
                  *v90 = *v98;
                  if (!v97)
                  {
                    break;
                  }

                  v97 = (v97 - 1) >> 1;
                  v98 = &a1[v97];
                  v90 = v99;
                }

                while (((*a3)(v98, &v111) & 1) != 0);
                *v99 = v111;
              }
            }
          }

          v95 = v11-- <= 2;
        }

        while (!v95);
      }

      return result;
    }

    v13 = &v10[v11 >> 1];
    v14 = *a3;
    if (v11 >= 0x81)
    {
      v15 = v14(&v10[v11 >> 1], v10);
      v16 = (*a3)(a2 - 1, &v10[v11 >> 1]);
      if (v15)
      {
        v17 = *v10;
        if (v16)
        {
          *v10 = *v9;
          goto LABEL_26;
        }

        *v10 = *v13;
        *v13 = v17;
        if ((*a3)(a2 - 1, &v10[v11 >> 1]))
        {
          v17 = *v13;
          *v13 = *v9;
LABEL_26:
          *v9 = v17;
        }
      }

      else if (v16)
      {
        v21 = *v13;
        *v13 = *v9;
        *v9 = v21;
        if ((*a3)(&v10[v11 >> 1], v10))
        {
          v22 = *v10;
          *v10 = *v13;
          *v13 = v22;
        }
      }

      v25 = v13 - 1;
      v26 = (*a3)(v13 - 1, a1 + 1);
      v27 = (*a3)(v107, v13 - 1);
      if (v26)
      {
        v28 = a1[1];
        if (v27)
        {
          v29 = a2 - 2;
          a1[1] = *v107;
          goto LABEL_38;
        }

        a1[1] = *v25;
        *v25 = v28;
        if ((*a3)(v107, v13 - 1))
        {
          v28 = *v25;
          v29 = a2 - 2;
          *v25 = *v107;
LABEL_38:
          *v29 = v28;
        }
      }

      else if (v27)
      {
        v30 = *v25;
        *v25 = *v107;
        *v107 = v30;
        if ((*a3)(v13 - 1, a1 + 1))
        {
          v31 = a1[1];
          a1[1] = *v25;
          *v25 = v31;
        }
      }

      v32 = (*a3)(v13 + 1, a1 + 2);
      v33 = (*a3)(v106, v13 + 1);
      if (v32)
      {
        v34 = a1[2];
        if (v33)
        {
          v35 = a2 - 3;
          a1[2] = *v106;
          goto LABEL_47;
        }

        a1[2] = v13[1];
        v13[1] = v34;
        if ((*a3)(v106, v13 + 1))
        {
          v34 = v13[1];
          v35 = a2 - 3;
          v13[1] = *v106;
LABEL_47:
          *v35 = v34;
        }
      }

      else if (v33)
      {
        v36 = v13[1];
        v13[1] = *v106;
        *v106 = v36;
        if ((*a3)(v13 + 1, a1 + 2))
        {
          v37 = a1[2];
          a1[2] = v13[1];
          v13[1] = v37;
        }
      }

      v38 = (*a3)(&a1[v11 >> 1], v13 - 1);
      v39 = (*a3)(v13 + 1, &a1[v11 >> 1]);
      if (v38)
      {
        v40 = *v25;
        if (v39)
        {
          v41 = *v13;
          *v25 = v13[1];
          v13[1] = v40;
LABEL_57:
          v45 = *a1;
          *a1 = v41;
          *v13 = v45;
          goto LABEL_58;
        }

        *v25 = *v13;
        *v13 = v40;
        v44 = (*a3)(v13 + 1, &a1[v11 >> 1]);
        v41 = *v13;
        if (!v44)
        {
          goto LABEL_57;
        }

        v43 = v13[1];
        *v13 = v43;
        v13[1] = v41;
      }

      else
      {
        v41 = *v13;
        if (!v39)
        {
          goto LABEL_57;
        }

        *v13 = v13[1];
        v13[1] = v41;
        v42 = (*a3)(&a1[v11 >> 1], v13 - 1);
        v41 = *v13;
        if (!v42)
        {
          goto LABEL_57;
        }

        v43 = *v25;
        *v25 = v41;
        *v13 = v43;
      }

      v41 = v43;
      goto LABEL_57;
    }

    v18 = v14(v10, &v10[v11 >> 1]);
    v19 = (*a3)(a2 - 1, v10);
    if ((v18 & 1) == 0)
    {
      if (v19)
      {
        v23 = *v10;
        *v10 = *v9;
        *v9 = v23;
        if ((*a3)(v10, &v10[v11 >> 1]))
        {
          v24 = *v13;
          *v13 = *v10;
          *v10 = v24;
        }
      }

      goto LABEL_58;
    }

    v20 = *v13;
    if (v19)
    {
      *v13 = *v9;
LABEL_35:
      *v9 = v20;
      goto LABEL_58;
    }

    *v13 = *v10;
    *v10 = v20;
    if ((*a3)(a2 - 1, v10))
    {
      v20 = *v10;
      *v10 = *v9;
      goto LABEL_35;
    }

LABEL_58:
    --a4;
    if (a5)
    {
      v46 = *a1;
LABEL_61:
      v111 = v46;
      v48 = a1;
      do
      {
        v49 = v48++;
      }

      while (((*a3)(v48, &v111) & 1) != 0);
      v50 = a2;
      if (v49 == a1)
      {
        v50 = a2;
        do
        {
          if (v48 >= v50)
          {
            break;
          }

          --v50;
        }

        while (((*a3)(v50, &v111) & 1) == 0);
      }

      else
      {
        do
        {
          --v50;
        }

        while (!(*a3)(v50, &v111));
      }

      if (v48 < v50)
      {
        v51 = v48;
        v52 = v50;
        do
        {
          v53 = *v51;
          *v51 = *v52;
          *v52 = v53;
          do
          {
            v49 = v51++;
          }

          while (((*a3)(v51, &v111) & 1) != 0);
          do
          {
            --v52;
          }

          while (!(*a3)(v52, &v111));
        }

        while (v51 < v52);
      }

      if (v49 != a1)
      {
        *a1 = *v49;
      }

      *v49 = v111;
      if (v48 < v50)
      {
        goto LABEL_80;
      }

      v54 = sub_100006F94(a1, v49, a3);
      v10 = v49 + 1;
      if (sub_100006F94(v49 + 1, a2, a3))
      {
        a2 = v49;
        if (!v54)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v54)
      {
LABEL_80:
        sub_100004DF8(a1, v49, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v49 + 1;
      }
    }

    else
    {
      v47 = (*a3)(a1 - 1, a1);
      v46 = *a1;
      if (v47)
      {
        goto LABEL_61;
      }

      v111 = *a1;
      if ((*a3)(&v111, a2 - 1))
      {
        v10 = a1;
        do
        {
          ++v10;
        }

        while (((*a3)(&v111, v10) & 1) == 0);
      }

      else
      {
        v55 = a1 + 1;
        do
        {
          v10 = v55;
          if (v55 >= a2)
          {
            break;
          }

          v56 = (*a3)(&v111, v55);
          v55 = v10 + 1;
        }

        while (!v56);
      }

      v57 = a2;
      if (v10 < a2)
      {
        v57 = a2;
        do
        {
          --v57;
        }

        while (((*a3)(&v111, v57) & 1) != 0);
      }

      while (v10 < v57)
      {
        v58 = *v10;
        *v10 = *v57;
        *v57 = v58;
        do
        {
          ++v10;
        }

        while (!(*a3)(&v111, v10));
        do
        {
          --v57;
        }

        while (((*a3)(&v111, v57) & 1) != 0);
      }

      v59 = v10 - 1;
      if (v10 - 1 != a1)
      {
        *a1 = *v59;
      }

      a5 = 0;
      *v59 = v111;
    }
  }

  if (v11 < 2)
  {
    return result;
  }

  if (v11 != 2)
  {
    goto LABEL_9;
  }

  if ((*a3)(a2 - 1, v10))
  {
    v62 = *v10;
    goto LABEL_108;
  }

  return result;
}

unint64_t sub_1000059A4(unint64_t result, int8x16_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = &a2[-1].i64[1];
  v9 = v7;
  while (1)
  {
    v7 = v9;
    v10 = (a2 - v9) >> 3;
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return result;
    }

    if (v10 == 2)
    {
      v138 = a2[-1].u32[2];
      v139 = v138 == v9->i32[0];
      v140 = v138 < v9->i32[0];
      if (v139)
      {
        v140 = a2[-1].u16[6] < v9->u16[2];
      }

      if (v140)
      {
        v141 = v9->i64[0];
        goto LABEL_195;
      }

      return result;
    }

LABEL_10:
    if (v10 <= 23)
    {
      v149 = &v9->u64[1];
      v151 = v9 == a2 || v149 == a2;
      if (a4)
      {
        if (!v151)
        {
          v152 = 0;
          v153 = v9;
          do
          {
            v154 = v153->u32[2];
            v155 = v153->i32[0];
            v156 = v153->u16[6];
            v157 = v153->u16[2];
            v153 = v149;
            v158 = v156 < v157;
            v139 = v154 == v155;
            v159 = v154 < v155;
            if (!v139)
            {
              v158 = v159;
            }

            if (v158)
            {
              v160 = v153->i64[0];
              v161 = HIDWORD(v153->i64[0]);
              v162 = v152;
              while (1)
              {
                v163 = &v9->i8[v162];
                *(&v9->i64[1] + v162) = *(v9->i64 + v162);
                if (!v162)
                {
                  break;
                }

                v164 = *(v163 - 2);
                v165 = *(v163 - 2) > v161;
                v139 = v164 == v160;
                v166 = v164 > v160;
                if (!v139)
                {
                  v165 = v166;
                }

                v162 -= 8;
                if (!v165)
                {
                  v167 = (&v9->i64[1] + v162);
                  goto LABEL_219;
                }
              }

              v167 = v9;
LABEL_219:
              *v167 = v160;
            }

            v149 = &v153->u64[1];
            v152 += 8;
          }

          while (&v153->u64[1] != a2);
        }
      }

      else if (!v151)
      {
        do
        {
          v205 = v7->u32[2];
          v206 = v7->i32[0];
          v207 = v7->u16[6];
          v208 = v7->u16[2];
          v7 = v149;
          v139 = v205 == v206;
          v209 = v205 < v206;
          if (v139)
          {
            v209 = v207 < v208;
          }

          if (v209)
          {
            v210 = v149->i64[0];
            v211 = HIDWORD(v149->i64[0]);
            do
            {
              v212 = v149;
              v213 = v149[-1].i64[1];
              v149 = (v149 - 8);
              *v212 = v213;
              v214 = *(v212 - 4);
              v215 = *(v212 - 6) > v211;
              v139 = v214 == v210;
              v216 = v214 > v210;
              if (!v139)
              {
                v215 = v216;
              }
            }

            while (v215);
            v149->i64[0] = v210;
          }

          v149 = &v7->u64[1];
        }

        while (&v7->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v9 != a2)
      {
        v168 = (v10 - 2) >> 1;
        v169 = v168;
        do
        {
          v170 = v169;
          if (v168 >= v169)
          {
            v171 = (2 * v169) | 1;
            v172 = v9 + 2 * v171;
            if (2 * v170 + 2 >= v10)
            {
              v173 = *v172;
            }

            else
            {
              v173 = v172[2];
              v174 = *(v172 + 2) < *(v172 + 6);
              result = *v172 < v173;
              if (*v172 != v173)
              {
                v174 = *v172 < v173;
              }

              if (v174)
              {
                v172 += 2;
                v171 = 2 * v170 + 2;
              }

              else
              {
                v173 = *v172;
              }
            }

            v175 = v9 + 2 * v170;
            v139 = v173 == *v175;
            v176 = v173 < *v175;
            if (v139)
            {
              v176 = *(v172 + 2) < *(v175 + 2);
            }

            if (!v176)
            {
              v177 = *v175;
              do
              {
                v178 = v175;
                v175 = v172;
                *v178 = *v172;
                if (v168 < v171)
                {
                  break;
                }

                v179 = (2 * v171) | 1;
                v172 = v9 + 2 * v179;
                v171 = 2 * v171 + 2;
                if (v171 >= v10)
                {
                  v180 = *v172;
                  v171 = v179;
                }

                else
                {
                  v180 = v172[2];
                  result = *v172;
                  v181 = *(v172 + 2) < *(v172 + 6);
                  if (result != v180)
                  {
                    v181 = result < v180;
                  }

                  if (v181)
                  {
                    v172 += 2;
                  }

                  else
                  {
                    v180 = *v172;
                    v171 = v179;
                  }
                }

                v182 = *(v172 + 2) < WORD2(v177);
                v139 = v180 == v177;
                v183 = v180 < v177;
                if (!v139)
                {
                  v182 = v183;
                }
              }

              while (!v182);
              *v175 = v177;
            }
          }

          v169 = v170 - 1;
        }

        while (v170);
        do
        {
          v184 = 0;
          v185 = v9->i64[0];
          v186 = v9;
          do
          {
            v187 = &v186[v184];
            v188 = (v187 + 1);
            v189 = (2 * v184) | 1;
            v184 = 2 * v184 + 2;
            if (v184 >= v10)
            {
              v184 = v189;
            }

            else
            {
              v191 = *(v187 + 4);
              v190 = (v187 + 2);
              v192 = v190[-1].u32[2];
              result = v190[-1].u16[6] < v190->u16[2];
              v193 = v192 < v191;
              if (v192 == v191)
              {
                v193 = v190[-1].u16[6] < v190->u16[2];
              }

              if (v193)
              {
                v188 = v190;
              }

              else
              {
                v184 = v189;
              }
            }

            *v186 = v188->i64[0];
            v186 = v188;
          }

          while (v184 <= (v10 - 2) / 2);
          a2 = (a2 - 8);
          if (v188 == a2)
          {
            v188->i64[0] = v185;
          }

          else
          {
            v188->i64[0] = a2->i64[0];
            a2->i64[0] = v185;
            v194 = (v188 - v9 + 8) >> 3;
            v195 = v194 < 2;
            v196 = v194 - 2;
            if (!v195)
            {
              v197 = v196 >> 1;
              v198 = (v9 + 8 * v197);
              v199 = v198->i32[0] < v188->i32[0];
              if (v198->i32[0] == v188->i32[0])
              {
                v199 = v198->u16[2] < v188->u16[2];
              }

              if (v199)
              {
                v200 = v188->i64[0];
                do
                {
                  v201 = v188;
                  v188 = v198;
                  *v201 = v198->i64[0];
                  if (!v197)
                  {
                    break;
                  }

                  v197 = (v197 - 1) >> 1;
                  v198 = (v9 + 8 * v197);
                  v202 = v198->u16[2] < WORD2(v200);
                  if (v198->i32[0] != v200)
                  {
                    v202 = v198->i32[0] < v200;
                  }
                }

                while (v202);
                v188->i64[0] = v200;
              }
            }
          }

          v195 = v10-- <= 2;
        }

        while (!v195);
      }

      return result;
    }

    v11 = &v9->i8[8 * (v10 >> 1)];
    v12 = a2[-1].u32[2];
    v13 = a2[-1].u16[6];
    if (v10 >= 0x81)
    {
      v14 = *v11;
      v15 = *(v11 + 2);
      v16 = *v11 < v9->i32[0];
      if (*v11 == v9->i32[0])
      {
        v16 = v15 < v9->u16[2];
      }

      v17 = v13 < v15;
      v139 = v12 == v14;
      v18 = v12 < v14;
      if (v139)
      {
        v19 = v17;
      }

      else
      {
        v19 = v18;
      }

      if (v16)
      {
        v20 = v9->i64[0];
        if (v19)
        {
          v9->i64[0] = *v8;
          goto LABEL_43;
        }

        v9->i64[0] = *v11;
        *v11 = v20;
        v34 = a2[-1].u32[2];
        v139 = v34 == v20;
        v35 = v34 < v20;
        if (v139)
        {
          v35 = a2[-1].u16[6] < WORD2(v20);
        }

        if (v35)
        {
          *v11 = *v8;
LABEL_43:
          *v8 = v20;
        }
      }

      else if (v19)
      {
        v28 = *v11;
        *v11 = *v8;
        *v8 = v28;
        v29 = *v11 < v9->i32[0];
        if (*v11 == v9->i32[0])
        {
          v29 = *(v11 + 2) < v9->u16[2];
        }

        if (v29)
        {
          v30 = v9->i64[0];
          v9->i64[0] = *v11;
          *v11 = v30;
        }
      }

      v36 = (v11 - 8);
      v37 = *(v11 - 2);
      v38 = v9->u32[2];
      v39 = *(v11 - 2);
      v40 = v39 < v9->u16[6];
      v139 = v37 == v38;
      v41 = v37 < v38;
      if (!v139)
      {
        v40 = v41;
      }

      v42 = a2[-1].u32[0];
      v43 = a2[-1].u16[2] < v39;
      v139 = v42 == v37;
      v44 = v42 < v37;
      if (v139)
      {
        v45 = v43;
      }

      else
      {
        v45 = v44;
      }

      if (v40)
      {
        v46 = v9->i64[1];
        if (v45)
        {
          v9->i64[1] = a2[-1].i64[0];
          goto LABEL_66;
        }

        v9->i64[1] = *v36;
        *v36 = v46;
        v53 = a2[-1].u32[0];
        v139 = v53 == v46;
        v54 = v53 < v46;
        if (v139)
        {
          v54 = a2[-1].u16[2] < WORD2(v46);
        }

        if (v54)
        {
          *v36 = a2[-1].i64[0];
LABEL_66:
          a2[-1].i64[0] = v46;
        }
      }

      else if (v45)
      {
        v47 = *v36;
        *v36 = a2[-1].i64[0];
        a2[-1].i64[0] = v47;
        v48 = v9->u32[2];
        v49 = *v36 < v48;
        if (*v36 == v48)
        {
          v49 = *(v11 - 2) < v9->u16[6];
        }

        if (v49)
        {
          v50 = v9->i64[1];
          v9->i64[1] = *v36;
          *v36 = v50;
        }
      }

      v55 = (v11 + 8);
      v56 = *(v11 + 2);
      v57 = v9[1].u32[0];
      v58 = *(v11 + 6);
      v59 = v58 < v9[1].u16[2];
      v139 = v56 == v57;
      v60 = v56 < v57;
      if (!v139)
      {
        v59 = v60;
      }

      v61 = a2[-2].u32[2];
      v62 = a2[-2].u16[6] < v58;
      v139 = v61 == v56;
      v63 = v61 < v56;
      if (v139)
      {
        v64 = v62;
      }

      else
      {
        v64 = v63;
      }

      if (v59)
      {
        v65 = v9[1].i64[0];
        if (v64)
        {
          v9[1].i64[0] = a2[-2].i64[1];
          goto LABEL_84;
        }

        v9[1].i64[0] = *v55;
        *v55 = v65;
        v70 = a2[-2].u32[2];
        v139 = v70 == v65;
        v71 = v70 < v65;
        if (v139)
        {
          v71 = a2[-2].u16[6] < WORD2(v65);
        }

        if (v71)
        {
          *v55 = a2[-2].i64[1];
LABEL_84:
          a2[-2].i64[1] = v65;
        }
      }

      else if (v64)
      {
        v66 = *v55;
        *v55 = a2[-2].i64[1];
        a2[-2].i64[1] = v66;
        v67 = v9[1].u32[0];
        v68 = *v55 < v67;
        if (*v55 == v67)
        {
          v68 = *(v11 + 6) < v9[1].u16[2];
        }

        if (v68)
        {
          v69 = v9[1].i64[0];
          v9[1].i64[0] = *v55;
          *v55 = v69;
        }
      }

      v72 = *v11;
      v73 = *v36;
      v74 = *(v11 + 2);
      v75 = *(v11 - 2);
      if (*v11 == *v36)
      {
        v76 = v74 < v75;
      }

      else
      {
        v76 = *v11 < *v36;
      }

      v77 = *v55;
      v78 = *(v11 + 6);
      v79 = v78 < v74;
      v139 = *v55 == v72;
      v80 = *v55 < v72;
      if (!v139)
      {
        v79 = v80;
      }

      if (v76)
      {
        v81 = *v36;
        if (v79)
        {
          *v36 = *v55;
          *v55 = v81;
          v81 = *v11;
        }

        else
        {
          *v36 = *v11;
          *v11 = v81;
          v84 = v78 < WORD2(v81);
          if (v77 != v81)
          {
            v84 = v77 < v81;
          }

          if (v84)
          {
            v85 = *v55;
            *v11 = *v55;
            *v55 = v81;
            v81 = v85;
          }
        }
      }

      else
      {
        v81 = *v11;
        if (v79)
        {
          v82 = *v55;
          *v11 = *v55;
          *v55 = v81;
          v83 = v75 > WORD2(v82);
          if (v73 != v82)
          {
            v83 = v73 > v82;
          }

          if (v83)
          {
            v81 = *v36;
            *v36 = v82;
            *v11 = v81;
          }

          else
          {
            v81 = v82;
          }
        }
      }

      v86 = v9->i64[0];
      v9->i64[0] = v81;
      *v11 = v86;
      goto LABEL_104;
    }

    v21 = v9->i32[0];
    v22 = v9->u16[2];
    v23 = v9->i32[0] < *v11;
    if (v9->i32[0] == *v11)
    {
      v23 = v22 < *(v11 + 2);
    }

    v24 = v13 < v22;
    v139 = v12 == v21;
    v25 = v12 < v21;
    if (v139)
    {
      v26 = v24;
    }

    else
    {
      v26 = v25;
    }

    if (!v23)
    {
      if (v26)
      {
        v31 = v9->i64[0];
        v9->i64[0] = *v8;
        *v8 = v31;
        v32 = v9->i32[0] < *v11;
        if (v9->i32[0] == *v11)
        {
          v32 = v9->u16[2] < *(v11 + 2);
        }

        if (v32)
        {
          v33 = *v11;
          *v11 = v9->i64[0];
          v9->i64[0] = v33;
        }
      }

      goto LABEL_104;
    }

    v27 = *v11;
    if (v26)
    {
      *v11 = *v8;
    }

    else
    {
      *v11 = v9->i64[0];
      v9->i64[0] = v27;
      v51 = a2[-1].u32[2];
      v139 = v51 == v27;
      v52 = v51 < v27;
      if (v139)
      {
        v52 = a2[-1].u16[6] < WORD2(v27);
      }

      if (!v52)
      {
        goto LABEL_104;
      }

      v9->i64[0] = *v8;
    }

    *v8 = v27;
LABEL_104:
    --a3;
    if (a4)
    {
      v87 = v9->i64[0];
LABEL_110:
      v91 = v9;
      do
      {
        v92 = v91;
        v93 = v91->u32[2];
        v91 = (v91 + 8);
        v94 = v93 < v87;
        if (v93 == v87)
        {
          v94 = v92->u16[6] < WORD2(v87);
        }
      }

      while (v94);
      v95 = a2;
      if (v92 == v9)
      {
        v95 = a2;
        do
        {
          if (v91 >= v95)
          {
            break;
          }

          v98 = v95[-1].u32[2];
          v95 = (v95 - 8);
          v99 = v98 < v87;
          if (v98 == v87)
          {
            v99 = v95->u16[2] < WORD2(v87);
          }
        }

        while (!v99);
      }

      else
      {
        do
        {
          v96 = v95[-1].u32[2];
          v95 = (v95 - 8);
          v97 = v96 < v87;
          if (v96 == v87)
          {
            v97 = v95->u16[2] < WORD2(v87);
          }
        }

        while (!v97);
      }

      if (v91 < v95)
      {
        v100 = v91;
        v101 = v95;
        do
        {
          v102 = v100->i64[0];
          v100->i64[0] = v101->i64[0];
          v101->i64[0] = v102;
          do
          {
            v92 = v100;
            v103 = v100->u32[2];
            v100 = (v100 + 8);
            v104 = v103 < v87;
            if (v103 == v87)
            {
              v104 = v92->u16[6] < WORD2(v87);
            }
          }

          while (v104);
          do
          {
            v105 = v101[-1].u32[2];
            v101 = (v101 - 8);
            v106 = v105 < v87;
            if (v105 == v87)
            {
              v106 = v101->u16[2] < WORD2(v87);
            }
          }

          while (!v106);
        }

        while (v100 < v101);
      }

      if (v92 != v9)
      {
        v9->i64[0] = v92->i64[0];
      }

      v92->i64[0] = v87;
      if (v91 < v95)
      {
        goto LABEL_139;
      }

      v107 = sub_100006998(v9, v92);
      v9 = &v92->u64[1];
      result = sub_100006998(&v92->u64[1], a2);
      if (result)
      {
        a2 = v92;
        if (!v107)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v107)
      {
LABEL_139:
        result = sub_1000059A4(v7, v92, a3, a4 & 1);
        a4 = 0;
        v9 = &v92->u64[1];
      }
    }

    else
    {
      v88 = v9[-1].u32[2];
      v139 = v88 == v9->i32[0];
      v89 = v88 < v9->i32[0];
      if (v139)
      {
        v90 = v9[-1].u16[6] < v9->u16[2];
      }

      else
      {
        v90 = v89;
      }

      v87 = v9->i64[0];
      if (v90)
      {
        goto LABEL_110;
      }

      v108 = a2[-1].u32[2];
      v109 = a2[-1].u16[6] > WORD2(v87);
      v139 = v108 == v87;
      v110 = v108 > v87;
      if (!v139)
      {
        v109 = v110;
      }

      if (v109)
      {
        do
        {
          v111 = v9->u32[2];
          v9 = (v9 + 8);
          v112 = v111 > v87;
          if (v111 == v87)
          {
            v112 = v9->u16[2] > WORD2(v87);
          }
        }

        while (!v112);
      }

      else
      {
        v113 = &v9->u64[1];
        do
        {
          v9 = v113;
          if (v113 >= a2)
          {
            break;
          }

          v114 = v113->i32[0];
          v115 = v9->u16[2] > WORD2(v87);
          v139 = v114 == v87;
          v116 = v114 > v87;
          if (!v139)
          {
            v115 = v116;
          }

          v113 = &v9->u64[1];
        }

        while (!v115);
      }

      v117 = a2;
      if (v9 < a2)
      {
        v117 = a2;
        do
        {
          v118 = v117[-1].u32[2];
          v117 = (v117 - 8);
          v119 = v118 > v87;
          if (v118 == v87)
          {
            v119 = v117->u16[2] > WORD2(v87);
          }
        }

        while (v119);
      }

      while (v9 < v117)
      {
        v120 = v9->i64[0];
        v9->i64[0] = v117->i64[0];
        v117->i64[0] = v120;
        do
        {
          v121 = v9->u32[2];
          v9 = (v9 + 8);
          v122 = v121 > v87;
          if (v121 == v87)
          {
            v122 = v9->u16[2] > WORD2(v87);
          }
        }

        while (!v122);
        do
        {
          v123 = v117[-1].u32[2];
          v117 = (v117 - 8);
          v124 = v123 > v87;
          if (v123 == v87)
          {
            v124 = v117->u16[2] > WORD2(v87);
          }
        }

        while (v124);
      }

      v125 = &v9[-1].i64[1];
      if (&v9[-1].u64[1] != v7)
      {
        v7->i64[0] = *v125;
      }

      a4 = 0;
      *v125 = v87;
    }
  }

  if (v10 != 3)
  {
    if (v10 == 4)
    {

      return sub_1000067DC(v9->i64, &v9->u32[2], v9[1].i64, &a2[-1].i64[1]);
    }

    if (v10 == 5)
    {
      result = sub_1000067DC(v9->i64, &v9->u32[2], v9[1].i64, &v9[1].i64[1]);
      v126 = a2[-1].u32[2];
      v127 = v9[1].u32[2];
      v139 = v126 == v127;
      v128 = v126 < v127;
      if (v139)
      {
        v128 = a2[-1].u16[6] < v9[1].u16[6];
      }

      if (v128)
      {
        v129 = v9[1].i64[1];
        v9[1].i64[1] = *v8;
        *v8 = v129;
        LODWORD(v129) = v9[1].i32[2];
        v130 = v9[1].u32[0];
        v139 = v129 == v130;
        v131 = v129 < v130;
        if (v139)
        {
          v131 = v9[1].u16[6] < v9[1].u16[2];
        }

        if (v131)
        {
          v133 = v9[1].i64[0];
          v132 = v9[1].i64[1];
          v9[1].i64[0] = v132;
          v9[1].i64[1] = v133;
          LODWORD(v133) = v9->i32[2];
          v139 = v133 == v132;
          v134 = v133 > v132;
          if (v139)
          {
            v134 = v9->u16[6] > WORD2(v132);
          }

          if (v134)
          {
            v135 = v9->i64[1];
            v9->i64[1] = v132;
            v9[1].i64[0] = v135;
            v136 = v9->u16[2] > WORD2(v132);
            if (v9->i32[0] != v132)
            {
              v136 = v9->i32[0] > v132;
            }

            if (v136)
            {
              v137 = v9->i64[0];
              v9->i64[0] = v132;
              v9->i64[1] = v137;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v142 = v9->u32[2];
  v143 = v9->u16[6];
  v144 = v143 < v9->u16[2];
  if (v142 != v9->i32[0])
  {
    v144 = v142 < v9->i32[0];
  }

  v145 = a2[-1].u32[2];
  v146 = a2[-1].u16[6] < v143;
  v139 = v145 == v142;
  v147 = v145 < v142;
  if (v139)
  {
    v148 = v146;
  }

  else
  {
    v148 = v147;
  }

  if (v144)
  {
    v141 = v9->i64[0];
    if (v148)
    {
LABEL_195:
      v9->i64[0] = *v8;
    }

    else
    {
      v9->i64[0] = v9->i64[1];
      v9->i64[1] = v141;
      v217 = a2[-1].u32[2];
      v139 = v217 == v141;
      v218 = v217 < v141;
      if (v139)
      {
        v218 = a2[-1].u16[6] < WORD2(v141);
      }

      if (!v218)
      {
        return result;
      }

      v9->i64[1] = *v8;
    }

    *v8 = v141;
    return result;
  }

  if (v148)
  {
    v203 = v9->i64[1];
    v9->i64[1] = *v8;
    *v8 = v203;
    LODWORD(v203) = v9->i32[2];
    v139 = v203 == v9->i32[0];
    v204 = v203 < v9->i32[0];
    if (v139)
    {
      v204 = v9->u16[6] < v9->u16[2];
    }

    if (v204)
    {
      *v9 = vextq_s8(*v9, *v9, 8uLL);
    }
  }

  return result;
}

uint64_t *sub_1000067DC(uint64_t *result, unsigned int *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a2;
  v5 = *(a2 + 2);
  v6 = v5 < *(result + 2);
  if (*a2 != *result)
  {
    v6 = *a2 < *result;
  }

  v7 = *(a3 + 2);
  v8 = v7 < v5;
  v9 = *a3 == v4;
  v10 = *a3 < v4;
  if (!v9)
  {
    v8 = v10;
  }

  if (v6)
  {
    v11 = *result;
    if (v8)
    {
      *result = *a3;
      *a3 = v11;
      v7 = WORD2(v11);
    }

    else
    {
      *result = *a2;
      *a2 = v11;
      v7 = *(a3 + 2);
      v15 = *a3 < v11;
      if (*a3 == v11)
      {
        v15 = v7 < WORD2(v11);
      }

      if (v15)
      {
        *a2 = *a3;
        *a3 = v11;
        v7 = WORD2(v11);
      }
    }
  }

  else if (v8)
  {
    v12 = *a2;
    *a2 = *a3;
    *a3 = v12;
    v13 = *a2 < *result;
    if (*a2 == *result)
    {
      v13 = *(a2 + 2) < *(result + 2);
    }

    if (v13)
    {
      v14 = *result;
      *result = *a2;
      *a2 = v14;
      v7 = *(a3 + 2);
    }

    else
    {
      v7 = WORD2(v12);
    }
  }

  v16 = *(a4 + 2) < v7;
  if (*a4 != *a3)
  {
    v16 = *a4 < *a3;
  }

  if (v16)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    v18 = *a3 < *a2;
    if (*a3 == *a2)
    {
      v18 = *(a3 + 2) < *(a2 + 2);
    }

    if (v18)
    {
      v19 = *a2;
      *a2 = *a3;
      *a3 = v19;
      v20 = *a2 < *result;
      if (*a2 == *result)
      {
        v20 = *(a2 + 2) < *(result + 2);
      }

      if (v20)
      {
        v21 = *result;
        *result = *a2;
        *a2 = v21;
      }
    }
  }

  return result;
}

BOOL sub_100006998(int8x16_t *a1, int8x16_t *a2)
{
  v4 = (a2 - a1) >> 3;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v21 = a1->u32[2];
        v22 = a1->u16[6];
        v23 = v22 < a1->u16[2];
        if (v21 != a1->i32[0])
        {
          v23 = v21 < a1->i32[0];
        }

        v24 = a2[-1].u32[2];
        v25 = a2[-1].u16[6] < v22;
        v6 = v24 == v21;
        v26 = v24 < v21;
        if (v6)
        {
          v27 = v25;
        }

        else
        {
          v27 = v26;
        }

        if (!v23)
        {
          if (v27)
          {
            v39 = a1->i64[1];
            a1->i64[1] = a2[-1].i64[1];
            a2[-1].i64[1] = v39;
            LODWORD(v39) = a1->i32[2];
            v6 = v39 == a1->i32[0];
            v40 = v39 < a1->i32[0];
            if (v6)
            {
              v40 = a1->u16[6] < a1->u16[2];
            }

            if (v40)
            {
              *a1 = vextq_s8(*a1, *a1, 8uLL);
            }
          }

          return 1;
        }

        v8 = a1->i64[0];
        if (!v27)
        {
          a1->i64[0] = a1->i64[1];
          a1->i64[1] = v8;
          v46 = a2[-1].u32[2];
          v6 = v46 == v8;
          v47 = v46 < v8;
          if (v6)
          {
            v47 = a2[-1].u16[6] < WORD2(v8);
          }

          if (!v47)
          {
            return 1;
          }

          a1->i64[1] = a2[-1].i64[1];
          goto LABEL_32;
        }

LABEL_31:
        a1->i64[0] = a2[-1].i64[1];
LABEL_32:
        a2[-1].i64[1] = v8;
        return 1;
      case 4:
        sub_1000067DC(a1->i64, &a1->u32[2], a1[1].i64, &a2[-1].i64[1]);
        return 1;
      case 5:
        sub_1000067DC(a1->i64, &a1->u32[2], a1[1].i64, &a1[1].i64[1]);
        v9 = a2[-1].u32[2];
        v10 = a1[1].u32[2];
        v6 = v9 == v10;
        v11 = v9 < v10;
        if (v6)
        {
          v11 = a2[-1].u16[6] < a1[1].u16[6];
        }

        if (v11)
        {
          v12 = a1[1].i64[1];
          a1[1].i64[1] = a2[-1].i64[1];
          a2[-1].i64[1] = v12;
          LODWORD(v12) = a1[1].i32[2];
          v13 = a1[1].u32[0];
          v6 = v12 == v13;
          v14 = v12 < v13;
          if (v6)
          {
            v14 = a1[1].u16[6] < a1[1].u16[2];
          }

          if (v14)
          {
            v16 = a1[1].i64[0];
            v15 = a1[1].i64[1];
            a1[1].i64[0] = v15;
            a1[1].i64[1] = v16;
            LODWORD(v16) = a1->i32[2];
            v6 = v16 == v15;
            v17 = v16 > v15;
            if (v6)
            {
              v17 = a1->u16[6] > WORD2(v15);
            }

            if (v17)
            {
              v18 = a1->i64[1];
              a1->i64[1] = v15;
              a1[1].i64[0] = v18;
              v19 = a1->u16[2] > WORD2(v15);
              if (a1->i32[0] != v15)
              {
                v19 = a1->i32[0] > v15;
              }

              if (v19)
              {
                v20 = a1->i64[0];
                a1->i64[0] = v15;
                a1->i64[1] = v20;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = a2[-1].u32[2];
      v6 = v5 == a1->i32[0];
      v7 = v5 < a1->i32[0];
      if (v6)
      {
        v7 = a2[-1].u16[6] < a1->u16[2];
      }

      if (!v7)
      {
        return 1;
      }

      v8 = a1->i64[0];
      goto LABEL_31;
    }
  }

  v28 = a1 + 1;
  v29 = a1[1].u32[0];
  v30 = a1->u32[2];
  v31 = a1->i32[0];
  v32 = a1->u16[6];
  v33 = a1->u16[2];
  v34 = v30 < a1->i32[0];
  if (v30 == a1->i32[0])
  {
    v34 = v32 < v33;
  }

  v35 = a1[1].u16[2];
  v36 = v35 < v32;
  v6 = v29 == v30;
  v37 = v29 < v30;
  if (v6)
  {
    v37 = v36;
  }

  if (v34)
  {
    v38 = a1->i64[0];
    if (v37)
    {
      a1->i64[0] = a1[1].i64[0];
LABEL_59:
      a1[1].i64[0] = v38;
      goto LABEL_60;
    }

    a1->i64[0] = a1->i64[1];
    a1->i64[1] = v38;
    v6 = v29 == v38;
    v48 = v29 < v38;
    if (v6)
    {
      v48 = v35 < WORD2(v38);
    }

    if (v48)
    {
      a1->i64[1] = a1[1].i64[0];
      goto LABEL_59;
    }
  }

  else if (v37)
  {
    v42 = a1->i64[1];
    v41 = a1[1].i64[0];
    a1->i64[1] = v41;
    a1[1].i64[0] = v42;
    v43 = v33 > WORD2(v41);
    v6 = v31 == v41;
    v44 = v31 > v41;
    if (v6)
    {
      v44 = v43;
    }

    if (v44)
    {
      v45 = a1->i64[0];
      a1->i64[0] = v41;
      a1->i64[1] = v45;
    }
  }

LABEL_60:
  v49 = (a1 + 24);
  if (&a1[1].u64[1] == a2)
  {
    return 1;
  }

  v50 = 0;
  v51 = 0;
  while (1)
  {
    v52 = v28->i32[0];
    v53 = v49->u16[2] < v28->u16[2];
    if (v49->i32[0] != v52)
    {
      v53 = v49->i32[0] < v52;
    }

    if (v53)
    {
      v54 = v49->i64[0];
      v55 = HIDWORD(v49->i64[0]);
      v56 = v50;
      while (1)
      {
        v57 = &a1->i8[v56];
        *(&a1[1].i64[1] + v56) = *(a1[1].i64 + v56);
        if (v56 == -16)
        {
          break;
        }

        v58 = *(v57 + 2);
        v59 = *(v57 + 6) > v55;
        v6 = v58 == v54;
        v60 = v58 > v54;
        if (!v6)
        {
          v59 = v60;
        }

        v56 -= 8;
        if (!v59)
        {
          v61 = (&a1[1].i64[1] + v56);
          goto LABEL_72;
        }
      }

      v61 = a1;
LABEL_72:
      *v61 = v54;
      if (++v51 == 8)
      {
        return &v49->u64[1] == a2;
      }
    }

    v28 = v49;
    v50 += 8;
    v49 = (v49 + 8);
    if (v49 == a2)
    {
      return 1;
    }
  }
}

uint64_t sub_100006DA4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t (**a6)(uint64_t *, uint64_t *))
{
  v12 = (*a6)(a2, a1);
  v13 = (*a6)(a3, a2);
  if (v12)
  {
    v14 = *a1;
    if (v13)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v14;
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v14;
    if ((*a6)(a3, a2))
    {
      v14 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v13)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    if ((*a6)(a2, a1))
    {
      v16 = *a1;
      *a1 = *a2;
      *a2 = v16;
    }
  }

LABEL_10:
  if ((*a6)(a4, a3))
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    if ((*a6)(a3, a2))
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      if ((*a6)(a2, a1))
      {
        v19 = *a1;
        *a1 = *a2;
        *a2 = v19;
      }
    }
  }

  result = (*a6)(a5, a4);
  if (result)
  {
    v21 = *a4;
    *a4 = *a5;
    *a5 = v21;
    result = (*a6)(a4, a3);
    if (result)
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      result = (*a6)(a3, a2);
      if (result)
      {
        v23 = *a2;
        *a2 = *a3;
        *a3 = v23;
        result = (*a6)(a2, a1);
        if (result)
        {
          v24 = *a1;
          *a1 = *a2;
          *a2 = v24;
        }
      }
    }
  }

  return result;
}

BOOL sub_100006F94(uint64_t *a1, uint64_t *a2, uint64_t (**a3)(uint64_t *, uint64_t *))
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        v9 = a2 - 1;
        v10 = (*a3)(a1 + 1, a1);
        v11 = (*a3)(v9, a1 + 1);
        if (v10)
        {
          v12 = *a1;
          if (v11)
          {
            *a1 = *v9;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v12;
            if (!(*a3)(v9, a1 + 1))
            {
              return 1;
            }

            v12 = a1[1];
            a1[1] = *v9;
          }

          *v9 = v12;
          return 1;
        }

        if (!v11)
        {
          return 1;
        }

        v21 = a1[1];
        a1[1] = *v9;
        *v9 = v21;
        break;
      case 4:
        v17 = a2 - 1;
        v18 = (*a3)(a1 + 1, a1);
        v19 = (*a3)(a1 + 2, a1 + 1);
        if (v18)
        {
          v20 = *a1;
          if (v19)
          {
            *a1 = a1[2];
            a1[2] = v20;
          }

          else
          {
            *a1 = a1[1];
            a1[1] = v20;
            if ((*a3)(a1 + 2, a1 + 1))
            {
              *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
            }
          }
        }

        else if (v19)
        {
          *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
          if ((*a3)(a1 + 1, a1))
          {
            *a1 = vextq_s8(*a1, *a1, 8uLL);
          }
        }

        if (!(*a3)(v17, a1 + 2))
        {
          return 1;
        }

        v28 = a1[2];
        a1[2] = *v17;
        *v17 = v28;
        if (!(*a3)(a1 + 2, a1 + 1))
        {
          return 1;
        }

        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
        break;
      case 5:
        sub_100006DA4(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
      default:
        goto LABEL_13;
    }

    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }

    return 1;
  }

  if (v6 < 2)
  {
    return 1;
  }

  if (v6 == 2)
  {
    v7 = a2 - 1;
    if ((*a3)(a2 - 1, a1))
    {
      v8 = *a1;
      *a1 = *v7;
      *v7 = v8;
    }

    return 1;
  }

LABEL_13:
  v13 = a1 + 2;
  v14 = (*a3)(a1 + 1, a1);
  v15 = (*a3)(a1 + 2, a1 + 1);
  if (v14)
  {
    v16 = *a1;
    if (v15)
    {
      *a1 = a1[2];
      a1[2] = v16;
    }

    else
    {
      *a1 = a1[1];
      a1[1] = v16;
      if ((*a3)(a1 + 2, a1 + 1))
      {
        *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
      }
    }
  }

  else if (v15)
  {
    *(a1 + 1) = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
    if ((*a3)(a1 + 1, a1))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  v24 = 0;
  while (1)
  {
    if ((*a3)(v22, v13))
    {
      v30 = *v22;
      v25 = v23;
      while (1)
      {
        v26 = a1 + v25;
        *(a1 + v25 + 24) = *(a1 + v25 + 16);
        if (v25 == -16)
        {
          break;
        }

        v25 -= 8;
        if (((*a3)(&v30, (v26 + 8)) & 1) == 0)
        {
          v27 = (a1 + v25 + 24);
          goto LABEL_40;
        }
      }

      v27 = a1;
LABEL_40:
      *v27 = v30;
      if (++v24 == 8)
      {
        return v22 + 1 == a2;
      }
    }

    v13 = v22;
    v23 += 8;
    if (++v22 == a2)
    {
      return 1;
    }
  }
}

BOOL sub_10000733C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 6);
  v3 = *(a2 + 6);
  v4 = v2 == v3;
  v5 = v2 > v3;
  if (v4)
  {
    return *(a1 + 4) > *(a2 + 4);
  }

  else
  {
    return v5;
  }
}

void sub_100007364(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  sub_1000024FC();
}

double sub_1000073AC(uint64_t a1)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 1;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 20) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xF10000000000000;
  result = -3.12151834e283;
  *(a1 + 12) = 0xFACADE990BE5E519;
  *(a1 + 88) = 1;
  *(a1 + 84) = 0;
  *(a1 + 80) = 0;
  *(a1 + 72) = 0;
  return result;
}

uint64_t sub_1000073F0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000746C(result, a4);
  }

  return result;
}

void sub_100007450(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000746C(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    sub_100007364(a2);
  }

  sub_1000024E4();
}

void sub_1000074AC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  sub_1000024FC();
}

void *sub_100007674(void *result)
{
  v1 = result[4];
  if (v1)
  {
    v2 = *(v1 + 8);
    if (v2)
    {
      *(v1 + 16) = v2;
      operator delete(v2);
    }

    operator delete();
  }

  if (*result)
  {
    operator delete[]();
  }

  return result;
}

void *sub_1000076E4(void *result)
{
  if (result[3] != -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v3.__val_ = 501;
    v3.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v3);
    goto LABEL_6;
  }

  result[3] = result[2];
  v1 = result[4];
  if (*(v1 + 44) != -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v3.__val_ = 508;
    v3.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v3);
LABEL_6:
  }

  *(v1 + 44) = *(v1 + 40);
  return result;
}

void *sub_1000077B8(void *result)
{
  v1 = result[3];
  if (v1 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v26.__val_ = 502;
    v26.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v26);
    goto LABEL_35;
  }

  v2 = result;
  v3 = result[4];
  v4 = *(v3 + 44);
  if (v4 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v26.__val_ = 509;
    v26.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v26);
LABEL_35:
  }

  *(v3 + 40) = v4;
  *(v3 + 44) = -1;
  if (v1 >= 7)
  {
    v5 = 7;
  }

  else
  {
    v5 = v1;
  }

  if (v1 >= 7)
  {
    v6 = v1 - 7;
  }

  else
  {
    v6 = 0;
  }

  result[2] = v6;
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      result = sub_1000079C4(v2[4], i - v5 + 1);
      v8 = 0;
      v10 = v2[1];
      v9 = v2[2];
      v11 = (4 * v9) & 0xFFF | (v9 << 12);
      v12 = v10 + v11;
      do
      {
        *(v12 + 4 * v8) = *(result + v8);
        ++v8;
      }

      while (v8 != 1025);
      v13 = (v10 + v11 + 4);
      v14 = *(v10 + v11);
      v15 = 1023;
      v16 = v13;
      do
      {
        v17 = *v13;
        if (v14 <= *v13)
        {
          v14 = *v13;
        }

        v18 = v16[1];
        ++v16;
        v19 = v18;
        if (v14 <= v18)
        {
          v14 = v19;
        }

        *(v13 - 1) = v14;
        v13 = v16;
        v14 = v17;
        --v15;
      }

      while (v15);
      v20 = 0;
      v21 = v10 + 4100 * (v9 - 1);
      v22 = v10 + 4100 * (v9 - 3);
      v23 = v10 + 4100 * (v9 - 6);
      do
      {
        if (i)
        {
          v24 = *(v21 + 4 * v20);
          if (v24 <= *(v12 + 4 * v20))
          {
            v24 = *(v12 + 4 * v20);
          }

          *(v21 + 4 * v20) = v24;
          if (i >= 3)
          {
            if (*(v22 + 4 * v20) > v24)
            {
              v24 = *(v22 + 4 * v20);
            }

            *(v22 + 4 * v20) = v24;
            if (i >= 6)
            {
              if (*(v23 + 4 * v20) > v24)
              {
                v24 = *(v23 + 4 * v20);
              }

              *(v23 + 4 * v20) = v24;
            }
          }
        }

        ++v20;
      }

      while (v20 != 1025);
      v2[2] = v9 + 1;
    }
  }

  v2[3] = -1;
  return result;
}

uint64_t sub_1000079C4(int *a1, int a2)
{
  if (a1[10] <= 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v5.__val_ = 510;
    v5.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v5);
  }

  v2 = a2 - 1;

  return sub_100007A60(a1, v2);
}

uint64_t sub_100007A60(int *a1, int a2)
{
  if (a2 > 0 || (v2 = a1[1], 2 - v2 > a2))
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v5.__val_ = 511;
    v5.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v5);
  }

  return *(a1 + 4) + 4 * *a1 * ((a1[10] + a2) & (v2 - 1));
}

void sub_100007B18(uint64_t a1, void *a2)
{
  v3 = a1;
  v4 = *(a1 + 32);
  ++v4[10];
  v5 = sub_1000079C4(v4, 0);
  v6 = 0;
  v8 = *(v3 + 8);
  v7 = *(v3 + 16);
  v9 = (4 * v7) & 0xFFF | (v7 << 12);
  v10 = v8 + v9;
  do
  {
    *(v10 + 4 * v6) = *(v5 + 4 * v6);
    ++v6;
  }

  while (v6 != 1025);
  v11 = (v8 + v9 + 4);
  v12 = *(v8 + v9);
  v13 = 1023;
  v14 = v11;
  do
  {
    v15 = *v11;
    if (v12 <= *v11)
    {
      v12 = *v11;
    }

    v16 = v14[1];
    ++v14;
    v17 = v16;
    if (v12 <= v16)
    {
      v12 = v17;
    }

    *(v11 - 1) = v12;
    v11 = v14;
    v12 = v15;
    --v13;
  }

  while (v13);
  v18 = v8 + 4100 * (v7 - 1);
  v19 = v8 + 4100 * (v7 - 3);
  v20 = v8 + 4100 * (v7 - 6);
  do
  {
    v21 = *(v18 + 4 * v13);
    if (v21 <= *(v10 + 4 * v13))
    {
      v21 = *(v10 + 4 * v13);
    }

    *(v18 + 4 * v13) = v21;
    if (*(v19 + 4 * v13) > v21)
    {
      v21 = *(v19 + 4 * v13);
    }

    *(v19 + 4 * v13) = v21;
    if (*(v20 + 4 * v13) > v21)
    {
      v21 = *(v20 + 4 * v13);
    }

    *(v20 + 4 * v13++) = v21;
  }

  while (v13 != 1025);
  if (v7 >= 45)
  {
    v81 = sub_1000079C4(*(v3 + 32), -45);
    v82[2] = v81;
    v80 = sub_1000079C4(*(v3 + 32), -47);
    v82[0] = v80;
    v79 = sub_1000079C4(*(v3 + 32), -46);
    v82[1] = v79;
    v78 = sub_1000079C4(*(v3 + 32), -44);
    v82[3] = v78;
    v83 = sub_1000079C4(*(v3 + 32), -43);
    v22 = *(v3 + 8) + 4100 * (*(v3 + 16) - 48);
    v77 = v83;
    v23 = &v84[6] + 12;
    v24 = (v22 + 24);
    v25 = v22 + 48;
    v26 = 10;
    v75 = vdupq_n_s64(2uLL);
    v71 = v22;
    v72 = v3;
    v76 = vdupq_n_s64(5uLL);
    while (1)
    {
      v27 = *(v81 + 4 * v26);
      if (v27 >= 0.015625 && v27 >= *(v22 + 4 * (v26 - 1)))
      {
        v28 = 0;
        v29 = v22 + 4 * v26;
        v30 = *(v29 - 12);
        if (v30 <= *(v29 + 4))
        {
          v30 = *(v29 + 4);
        }

        v31 = v24;
        do
        {
          if (v30 <= *(v25 + 4 * v28))
          {
            v30 = *(v25 + 4 * v28);
          }

          v32 = *v31;
          v31 -= 3;
          v33 = v32;
          if (v30 <= v32)
          {
            v30 = v33;
          }

          v28 += 3;
        }

        while (v28 < 7);
        if (v27 > v30)
        {
          v34 = 0;
          v35 = *(v3 + 16);
          v36 = *(v3 + 8) + 4 * (v26 - 1);
          if (v30 <= *(v36 + 4100 * (v35 - 52)))
          {
            v30 = *(v36 + 4100 * (v35 - 52));
          }

          if (v30 <= *(v36 + 4100 * (v35 - 44)))
          {
            v30 = *(v36 + 4100 * (v35 - 44));
          }

          v37 = v35 - 55;
          v38 = v35 - 41;
          do
          {
            if (v30 <= *(v36 + 4100 * (v38 + v34)))
            {
              v30 = *(v36 + 4100 * (v38 + v34));
            }

            if (v30 <= *(v36 + 4100 * v37))
            {
              v30 = *(v36 + 4100 * v37);
            }

            v34 += 7;
            v37 -= 7;
          }

          while (v34 < 0x26);
          if (v27 > v30)
          {
            break;
          }
        }
      }

LABEL_67:
      ++v26;
      ++v24;
      v25 += 4;
      if (v26 == 1015)
      {
        v7 = *(v3 + 16);
        goto LABEL_69;
      }
    }

    v73 = v24;
    v74 = v35 - 45;
    v39 = fmaxf(*(v81 + 4 * v26), 0.015625);
    memset(v84, 0, sizeof(v84));
    v40 = 0;
    v41 = (logf(v39) + 4.1589) * 1477.3;
    v42 = v26 + 2;
    while (1)
    {
      v43 = v84 + v40 + 2;
      *v43 = v41 - ((logf(fmaxf(*(v80 + 4 * (v42 - v40)), 0.015625)) + 4.1589) * 1477.3);
      *(&v84[1] + v40 + 3) = v41 - ((logf(fmaxf(*(v79 + 4 * (v42 - v40)), 0.015625)) + 4.1589) * 1477.3);
      *(&v84[3] + v40) = v41 - ((logf(fmaxf(*(v81 + 4 * (v42 - v40)), 0.015625)) + 4.1589) * 1477.3);
      *(&v84[4] + v40 + 1) = v41 - ((logf(fmaxf(*(v78 + 4 * (v42 - v40)), 0.015625)) + 4.1589) * 1477.3);
      v44 = logf(fmaxf(*(v77 + 4 * (v42 - v40)), 0.015625));
      v45 = &v84[5] + v40 + 2;
      *v45 = v41 - ((v44 + 4.1589) * 1477.3);
      v46 = 6;
      v47 = v23;
      v48 = xmmword_100012B80;
      do
      {
        if (vmovn_s64(vcgtq_u64(v76, v48)).u8[0])
        {
          *v47 = 0;
        }

        if (vmovn_s64(vcgtq_u64(vdupq_n_s64(5uLL), *&v48)).i32[1])
        {
          v47[5] = 0;
        }

        v48 = vaddq_s64(v48, v75);
        v47 += 10;
        v46 -= 2;
      }

      while (v46);
      if ((v40 & 3) != 0)
      {
        if ((v40 & 5) != 1)
        {
          goto LABEL_53;
        }
      }

      else
      {
        *v45 = 0.0;
        *v43 = 0.0;
        v45 = &v84[4] + v40 + 1;
        v43 = &v84[1] + v40 + 3;
      }

      *v45 = 0.0;
      *v43 = 0.0;
LABEL_53:
      ++v40;
      v23 += 4;
      if (v40 == 5)
      {
        sub_10000C9F0(v74, v26, v82, v84, v84 + 2, v84 + 3, v86, &v85);
        v49 = a2[1];
        v50 = a2[2];
        if (v49 >= v50)
        {
          v59 = 0x4EC4EC4EC4EC4EC5 * ((v49 - *a2) >> 4);
          v60 = v59 + 1;
          v23 = &v84[6] + 12;
          if ((v59 + 1) > 0x13B13B13B13B13BLL)
          {
            sub_1000024E4();
          }

          v61 = 0x4EC4EC4EC4EC4EC5 * ((v50 - *a2) >> 4);
          if (2 * v61 > v60)
          {
            v60 = 2 * v61;
          }

          if (v61 >= 0x9D89D89D89D89DLL)
          {
            v62 = 0x13B13B13B13B13BLL;
          }

          else
          {
            v62 = v60;
          }

          v86[4] = a2;
          if (v62)
          {
            sub_1000081E4(v62);
          }

          v63 = *(&v84[2] + 8);
          v64 = 208 * v59;
          *(v64 + 56) = *(&v84[3] + 8);
          v65 = *(&v84[5] + 8);
          *(v64 + 72) = *(&v84[4] + 8);
          *(v64 + 88) = v65;
          v66 = *(&v84[1] + 8);
          *(v64 + 8) = *(v84 + 8);
          *(v64 + 24) = v66;
          *(v64 + 40) = v63;
          v67 = *(&v84[10] + 12);
          *(v64 + 188) = *(&v84[11] + 12);
          *(v64 + 172) = v67;
          v68 = *(&v84[8] + 12);
          *(v64 + 156) = *(&v84[9] + 12);
          *(v64 + 140) = v68;
          v69 = *(&v84[6] + 12);
          *(v64 + 124) = *(&v84[7] + 12);
          v86[0] = 0;
          v86[1] = (208 * v59);
          v70 = DWORD1(v84[0]);
          *v64 = v84[0];
          *(v64 + 4) = v70;
          *(v64 + 104) = DWORD2(v84[6]);
          *(v64 + 204) = HIDWORD(v84[12]);
          *(v64 + 108) = v69;
          v86[2] = (208 * v59 + 208);
          v86[3] = 0;
          sub_100008240(a2, v86);
          v58 = a2[1];
          if (v86[0])
          {
            operator delete(v86[0]);
          }
        }

        else
        {
          v51 = *(&v84[2] + 8);
          *(v49 + 56) = *(&v84[3] + 8);
          v52 = *(&v84[5] + 8);
          *(v49 + 72) = *(&v84[4] + 8);
          *(v49 + 88) = v52;
          v53 = *(&v84[1] + 8);
          *(v49 + 8) = *(v84 + 8);
          *(v49 + 24) = v53;
          *(v49 + 40) = v51;
          v23 = &v84[6] + 12;
          v54 = *(&v84[10] + 12);
          *(v49 + 188) = *(&v84[11] + 12);
          *(v49 + 172) = v54;
          v55 = *(&v84[8] + 12);
          *(v49 + 156) = *(&v84[9] + 12);
          *(v49 + 140) = v55;
          v56 = *(&v84[6] + 12);
          *(v49 + 124) = *(&v84[7] + 12);
          v57 = DWORD1(v84[0]);
          *v49 = v84[0];
          *(v49 + 4) = v57;
          *(v49 + 104) = DWORD2(v84[6]);
          *(v49 + 204) = HIDWORD(v84[12]);
          v58 = v49 + 208;
          *(v49 + 108) = v56;
        }

        v24 = v73;
        a2[1] = v58;
        v22 = v71;
        v3 = v72;
        goto LABEL_67;
      }
    }
  }

LABEL_69:
  *(v3 + 16) = v7 + 1;
}

void sub_1000081E4(unint64_t a1)
{
  if (a1 < 0x13B13B13B13B13CLL)
  {
    operator new();
  }

  sub_1000024FC();
}

uint64_t *sub_100008240(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = a2[1] + *result - v3;
    do
    {
      v6 = *(v2 + 4);
      *v5 = *v2;
      *(v5 + 4) = v6;
      v7 = *(v2 + 8);
      v8 = *(v2 + 24);
      *(v5 + 40) = *(v2 + 40);
      *(v5 + 24) = v8;
      *(v5 + 8) = v7;
      v9 = *(v2 + 56);
      v10 = *(v2 + 72);
      v11 = *(v2 + 88);
      *(v5 + 104) = *(v2 + 104);
      *(v5 + 88) = v11;
      *(v5 + 72) = v10;
      *(v5 + 56) = v9;
      v12 = *(v2 + 172);
      v13 = *(v2 + 188);
      v14 = *(v2 + 204);
      *(v5 + 156) = *(v2 + 156);
      *(v5 + 204) = v14;
      *(v5 + 188) = v13;
      *(v5 + 172) = v12;
      v15 = *(v2 + 108);
      v16 = *(v2 + 124);
      *(v5 + 140) = *(v2 + 140);
      *(v5 + 124) = v16;
      *(v5 + 108) = v15;
      v2 += 208;
      v5 += 208;
    }

    while (v2 != v3);
    v2 = *result;
  }

  a2[1] = v4;
  *result = v4;
  result[1] = v2;
  a2[1] = v2;
  v17 = result[1];
  result[1] = a2[2];
  a2[2] = v17;
  v18 = result[2];
  result[2] = a2[3];
  a2[3] = v18;
  *a2 = a2[1];
  return result;
}

void sub_100008320(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  ++v4[10];
  v5 = sub_1000079C4(v4, 0);
  v6 = 0;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = (4 * v7) & 0xFFF | (v7 << 12);
  v10 = v8 + v9;
  do
  {
    *(v10 + 4 * v6) = *(v5 + 4 * v6);
    ++v6;
  }

  while (v6 != 1025);
  v11 = (v8 + v9 + 4);
  v12 = *(v8 + v9);
  v13 = 1023;
  v14 = v11;
  do
  {
    v15 = *v11;
    if (v12 <= *v11)
    {
      v12 = *v11;
    }

    v16 = v14[1];
    ++v14;
    v17 = v16;
    if (v12 <= v16)
    {
      v12 = v17;
    }

    *(v11 - 1) = v12;
    v11 = v14;
    v12 = v15;
    --v13;
  }

  while (v13);
  v18 = v8 + 4100 * (v7 - 1);
  v19 = v8 + 4100 * (v7 - 3);
  v20 = v8 + 4100 * (v7 - 6);
  do
  {
    v21 = *(v18 + 4 * v13);
    if (v21 <= *(v10 + 4 * v13))
    {
      v21 = *(v10 + 4 * v13);
    }

    *(v18 + 4 * v13) = v21;
    if (*(v19 + 4 * v13) > v21)
    {
      v21 = *(v19 + 4 * v13);
    }

    *(v19 + 4 * v13) = v21;
    if (*(v20 + 4 * v13) > v21)
    {
      v21 = *(v20 + 4 * v13);
    }

    *(v20 + 4 * v13++) = v21;
  }

  while (v13 != 1025);
  if (v7 >= 45)
  {
    v22 = sub_1000079C4(*(a1 + 32), -45);
    v48[2] = v22;
    v48[0] = sub_1000079C4(*(a1 + 32), -47);
    v48[1] = sub_1000079C4(*(a1 + 32), -46);
    v48[3] = sub_1000079C4(*(a1 + 32), -44);
    v23 = sub_1000079C4(*(a1 + 32), -43);
    v24 = *(a1 + 8) + 4100 * (*(a1 + 16) - 48);
    v48[4] = v23;
    v25 = (v24 + 24);
    v26 = v24 + 48;
    for (i = 10; i != 1015; ++i)
    {
      v28 = *(v22 + 4 * i);
      if (v28 >= 0.015625 && v28 >= *(v24 + 4 * (i - 1)))
      {
        v29 = 0;
        v30 = v24 + 4 * i;
        v31 = *(v30 - 12);
        if (v31 <= *(v30 + 4))
        {
          v31 = *(v30 + 4);
        }

        v32 = v25;
        do
        {
          if (v31 <= *(v26 + 4 * v29))
          {
            v31 = *(v26 + 4 * v29);
          }

          v33 = *v32;
          v32 -= 3;
          v34 = v33;
          if (v31 <= v33)
          {
            v31 = v34;
          }

          v29 += 3;
        }

        while (v29 < 7);
        if (v28 > v31)
        {
          v35 = 0;
          v36 = *(a1 + 16);
          v37 = *(a1 + 8) + 4 * (i - 1);
          if (v31 <= *(v37 + 4100 * (v36 - 52)))
          {
            v31 = *(v37 + 4100 * (v36 - 52));
          }

          if (v31 <= *(v37 + 4100 * (v36 - 44)))
          {
            v31 = *(v37 + 4100 * (v36 - 44));
          }

          v38 = v36 - 55;
          v39 = v36 - 41;
          do
          {
            if (v31 <= *(v37 + 4100 * (v39 + v35)))
            {
              v31 = *(v37 + 4100 * (v39 + v35));
            }

            if (v31 <= *(v37 + 4100 * v38))
            {
              v31 = *(v37 + 4100 * v38);
            }

            v35 += 7;
            v38 -= 7;
          }

          while (v35 < 0x26);
          if (v28 > v31)
          {
            memset(v49, 0, 12);
            sub_10000C9F0(v36 - 45, i, v48, v49, v49 + 2, v49 + 3, &v49[1] + 1, &v49[1]);
            v41 = a2[1];
            v40 = a2[2];
            if (v41 >= v40)
            {
              v43 = 0xAAAAAAAAAAAAAAABLL * ((v41 - *a2) >> 2);
              v44 = v43 + 1;
              if (v43 + 1 > 0x1555555555555555)
              {
                sub_1000024E4();
              }

              v45 = 0xAAAAAAAAAAAAAAABLL * ((v40 - *a2) >> 2);
              if (2 * v45 > v44)
              {
                v44 = 2 * v45;
              }

              if (v45 >= 0xAAAAAAAAAAAAAAALL)
              {
                v46 = 0x1555555555555555;
              }

              else
              {
                v46 = v44;
              }

              __p[4] = a2;
              if (v46)
              {
                sub_1000086F8(v46);
              }

              v47 = 12 * v43;
              __p[0] = 0;
              __p[1] = v47;
              *v47 = v49[0];
              *(v47 + 4) = *(v49 + 4);
              __p[2] = (12 * v43 + 12);
              __p[3] = 0;
              sub_100008750(a2, __p);
              v42 = a2[1];
              if (__p[0])
              {
                operator delete(__p[0]);
              }
            }

            else
            {
              *v41 = v49[0];
              *(v41 + 4) = *(v49 + 4);
              v42 = v41 + 12;
            }

            a2[1] = v42;
          }
        }
      }

      ++v25;
      v26 += 4;
    }

    v7 = *(a1 + 16);
  }

  *(a1 + 16) = v7 + 1;
}

void sub_1000086F8(unint64_t a1)
{
  if (a1 < 0x1555555555555556)
  {
    operator new();
  }

  sub_1000024FC();
}

uint64_t *sub_100008750(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      *v6 = *v5;
      *(v6 + 4) = *(v5 + 4);
      v5 += 12;
      v6 += 12;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v7 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v7;
  v8 = result[1];
  result[1] = a2[2];
  a2[2] = v8;
  v9 = result[2];
  result[2] = a2[3];
  a2[3] = v9;
  *a2 = a2[1];
  return result;
}

void sub_1000087CC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  ++v4[10];
  v5 = sub_1000079C4(v4, 0);
  v6 = 0;
  v8 = *(a1 + 8);
  v7 = *(a1 + 16);
  v9 = (4 * v7) & 0xFFF | (v7 << 12);
  v10 = v8 + v9;
  do
  {
    *(v10 + 4 * v6) = *(v5 + 4 * v6);
    ++v6;
  }

  while (v6 != 1025);
  v11 = (v8 + v9 + 4);
  v12 = *(v8 + v9);
  v13 = 1023;
  v14 = v11;
  do
  {
    v15 = *v11;
    if (v12 <= *v11)
    {
      v12 = *v11;
    }

    v16 = v14[1];
    ++v14;
    v17 = v16;
    if (v12 <= v16)
    {
      v12 = v17;
    }

    *(v11 - 1) = v12;
    v11 = v14;
    v12 = v15;
    --v13;
  }

  while (v13);
  v18 = v8 + 4100 * (v7 - 1);
  v19 = v8 + 4100 * (v7 - 3);
  v20 = v8 + 4100 * (v7 - 6);
  do
  {
    v21 = *(v18 + 4 * v13);
    if (v21 <= *(v10 + 4 * v13))
    {
      v21 = *(v10 + 4 * v13);
    }

    *(v18 + 4 * v13) = v21;
    if (*(v19 + 4 * v13) > v21)
    {
      v21 = *(v19 + 4 * v13);
    }

    *(v19 + 4 * v13) = v21;
    if (*(v20 + 4 * v13) > v21)
    {
      v21 = *(v20 + 4 * v13);
    }

    *(v20 + 4 * v13++) = v21;
  }

  while (v13 != 1025);
  if (v7 >= 45)
  {
    v22 = sub_1000079C4(*(a1 + 32), -45);
    v50[2] = v22;
    v50[0] = sub_1000079C4(*(a1 + 32), -47);
    v50[1] = sub_1000079C4(*(a1 + 32), -46);
    v50[3] = sub_1000079C4(*(a1 + 32), -44);
    v23 = sub_1000079C4(*(a1 + 32), -43);
    v24 = *(a1 + 8) + 4100 * (*(a1 + 16) - 48);
    v50[4] = v23;
    v25 = (v24 + 24);
    v26 = v24 + 48;
    for (i = 10; i != 1015; ++i)
    {
      v28 = *(v22 + 4 * i);
      if (v28 >= 0.015625 && v28 >= *(v24 + 4 * (i - 1)))
      {
        v29 = 0;
        v30 = v24 + 4 * i;
        v31 = *(v30 - 12);
        if (v31 <= *(v30 + 4))
        {
          v31 = *(v30 + 4);
        }

        v32 = v25;
        do
        {
          if (v31 <= *(v26 + 4 * v29))
          {
            v31 = *(v26 + 4 * v29);
          }

          v33 = *v32;
          v32 -= 3;
          v34 = v33;
          if (v31 <= v33)
          {
            v31 = v34;
          }

          v29 += 3;
        }

        while (v29 < 7);
        if (v28 > v31)
        {
          v35 = 0;
          v36 = *(a1 + 16);
          v37 = *(a1 + 8) + 4 * (i - 1);
          if (v31 <= *(v37 + 4100 * (v36 - 52)))
          {
            v31 = *(v37 + 4100 * (v36 - 52));
          }

          if (v31 <= *(v37 + 4100 * (v36 - 44)))
          {
            v31 = *(v37 + 4100 * (v36 - 44));
          }

          v38 = v36 - 55;
          v39 = v36 - 41;
          do
          {
            if (v31 <= *(v37 + 4100 * (v39 + v35)))
            {
              v31 = *(v37 + 4100 * (v39 + v35));
            }

            if (v31 <= *(v37 + 4100 * v38))
            {
              v31 = *(v37 + 4100 * v38);
            }

            v35 += 7;
            v38 -= 7;
          }

          while (v35 < 0x26);
          if (v28 > v31)
          {
            v51 = 0;
            sub_10000C9F0(v36 - 45, i, v50, &v51, &v51 + 2, &v51 + 3, &v53, &v52);
            v41 = *(a2 + 8);
            v40 = *(a2 + 16);
            if (v41 >= v40)
            {
              v43 = (v41 - *a2) >> 3;
              if ((v43 + 1) >> 61)
              {
                sub_1000024E4();
              }

              v44 = v40 - *a2;
              v45 = v44 >> 2;
              if (v44 >> 2 <= (v43 + 1))
              {
                v45 = v43 + 1;
              }

              if (v44 >= 0x7FFFFFFFFFFFFFF8)
              {
                v46 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v46 = v45;
              }

              if (v46)
              {
                sub_100007364(v46);
              }

              *(8 * v43) = v51;
              v42 = 8 * v43 + 8;
              v47 = *(a2 + 8) - *a2;
              v48 = (8 * v43 - v47);
              memcpy(v48, *a2, v47);
              v49 = *a2;
              *a2 = v48;
              *(a2 + 8) = v42;
              *(a2 + 16) = 0;
              if (v49)
              {
                operator delete(v49);
              }
            }

            else
            {
              *v41 = v51;
              v42 = (v41 + 1);
            }

            *(a2 + 8) = v42;
          }
        }
      }

      ++v25;
      v26 += 4;
    }

    v7 = *(a1 + 16);
  }

  *(a1 + 16) = v7 + 1;
}

void sub_100008B80(int *a1, int *a2)
{
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  memset(&v39[16], 0, 37);
  v2 = a2 - a1;
  if (a2 == a1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v44[0].__val_ = 101;
    v44[0].__cat_ = &off_10003C950;
    sub_10000C55C(exception, v44);
  }

  else if (v2 <= 0x2B)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v44[0].__val_ = 105;
    v44[0].__cat_ = &off_10003C950;
    sub_10000C55C(exception, v44);
  }

  else
  {
    v4 = *a1;
    if (*a1 == 199615769)
    {
      sub_10000230C(&v39[28], 1uLL);
      *v39 = *a1;
      *&v39[12] = *(a1 + 3);
      if (*a1 == 199615769)
      {
        if (*&v39[4] == crc32(dword_10003C958, a1 + 8, v2 - 8) || *&v39[4] == -87368039)
        {
          sub_100001EB4(v44);
          v7 = (v2 - 28);
          if (v7 < 0x10)
          {
            v37 = __cxa_allocate_exception(0x20uLL);
            v47.__r_.__value_.__r.__words[0] = 131;
            v47.__r_.__value_.__l.__size_ = &off_10003C950;
            sub_10000C55C(v37, &v47);
          }

          v8 = 0;
          v9 = a1 + 7;
          do
          {
            LOBYTE(v46.__val_) = *(v9 + v8);
            sub_100001AD0(v44, &v46, 1);
            ++v8;
          }

          while (v8 != 16);
          if (v7 == 16)
          {
            v10 = 16;
LABEL_48:
            if (v10 == v7)
            {
              operator new[]();
            }
          }

          else
          {
            v17 = 0;
            v10 = 16;
            v18 = 16;
            while (1)
            {
              v19 = v9 + v10;
              v20 = *v19;
              v38 = v18;
              if (v20 == 255)
              {
                v20 = v19[1] | (v19[2] << 8) | (v19[3] << 16) | (v19[4] << 24);
                v21 = 5;
              }

              else
              {
                v21 = 1;
              }

              v17 += v20;
              LOBYTE(v46.__val_) = v17;
              sub_100001AD0(v44, &v46, 1);
              LOBYTE(v46.__val_) = BYTE1(v17);
              sub_100001AD0(v44, &v46, 1);
              LOBYTE(v46.__val_) = BYTE2(v17);
              sub_100001AD0(v44, &v46, 1);
              LOBYTE(v46.__val_) = HIBYTE(v17);
              sub_100001AD0(v44, &v46, 1);
              v22 = v21 + v10;
              LOBYTE(v46.__val_) = *(v9 + v22);
              sub_100001AD0(v44, &v46, 1);
              LOBYTE(v46.__val_) = *(v9 + v22 + 1);
              sub_100001AD0(v44, &v46, 1);
              LOBYTE(v46.__val_) = *(v9 + v22 + 2);
              sub_100001AD0(v44, &v46, 1);
              LOBYTE(v46.__val_) = *(v9 + v22 + 3);
              sub_100001AD0(v44, &v46, 1);
              v23 = v22 + 4;
              if (v23 > v7)
              {
                break;
              }

              v24 = v7;
              v25 = 0;
              v26 = 0;
              v27 = 0;
              v45 = 0;
              v28 = v9 + v23;
              do
              {
                v29 = sub_10000C5F4(v25, v26, &v45, &v46);
                v30 = 0.0;
                if (v29)
                {
                  v31 = (v28 + v27);
                  v30 = (vcvts_n_f32_u32(*v31, 0x10uLL) * 131070.0) + -65536.0;
                  v32 = (vcvts_n_f32_u32(v31[1], 0x10uLL) * 6.2832) + -3.1416;
                  v27 += 4;
                }

                else
                {
                  v32 = 0.0;
                }

                flt_10003C95C[5 * v25 + v26] = v30;
                flt_10003C9C0[5 * v25 + v26] = v32;
                v33 = v26 == 4;
                if (v26 == 4)
                {
                  v26 = 0;
                }

                else
                {
                  ++v26;
                }

                if (v33)
                {
                  ++v25;
                }
              }

              while (v25 < 5);
              std::ostream::write();
              v9 = a1 + 7;
              v7 = v24;
              std::ostream::write();
              v10 = v27 + v23;
              v18 = v38 + 208;
              if (v10 >= v24)
              {
                goto LABEL_48;
              }
            }
          }

          v34 = __cxa_allocate_exception(0x10uLL);
          std::runtime_error::runtime_error(v34, "Sumo decoding read more bytes than expected! Can't unpack this sig.");
        }

        sub_100001AD0(&std::cerr, "WRONG CRC!!\n", 12);
        exception = __cxa_allocate_exception(0x20uLL);
        *&v44[0].__val_ = 107;
        v44[0].__cat_ = &off_10003C950;
        sub_10000C55C(exception, v44);
      }

      else
      {
        exception = __cxa_allocate_exception(0x20uLL);
        *&v44[0].__val_ = 103;
        v44[0].__cat_ = &off_10003C950;
        sub_10000C55C(exception, v44);
      }
    }

    else
    {
      if (v4 != -889313920)
      {
        if (v2 >= 0xB0)
        {
          v11 = a1[5];
          v12 = v2 - 32 == v11 || v2 - 32 - ((v2 / 0x8001) & 0x1FFFFFFFFFFE0) == v11;
          v13 = v12 && v2 - 32 >= v4;
          v14 = !v13 || v4 == 0;
          if (!v14 && (a1[6] ^ v11) == 0x789ABC13)
          {
            v15 = a1[5];
            operator new[]();
          }
        }

        v16 = __cxa_allocate_exception(0x20uLL);
        v47.__r_.__value_.__r.__words[0] = 108;
        v47.__r_.__value_.__l.__size_ = &off_10003C950;
        sub_10000C55C(v16, &v47);
      }

      sub_10000230C(&v39[28], 1uLL);
      v5 = *(a1 + 1);
      v44[0] = *a1;
      v44[1] = v5;
      v44[2] = *(a1 + 2);
      if (v2 - 48 != LODWORD(v44[0].__cat_))
      {
LABEL_54:
        v36 = __cxa_allocate_exception(0x20uLL);
        v47.__r_.__value_.__r.__words[0] = 106;
        v47.__r_.__value_.__l.__size_ = &off_10003C950;
        sub_10000C55C(v36, &v47);
      }

      if (v44[0].__val_ == -889313920)
      {
        v6 = crc32(dword_10003C958, a1 + 8, v2 - 8);
        if (*(&v44[0].__val_ + 1) == v6 || *(&v44[0].__val_ + 1) == -87368039)
        {
          operator new[]();
        }

        goto LABEL_54;
      }

      exception = __cxa_allocate_exception(0x20uLL);
      *&v46.__val_ = 103;
      v46.__cat_ = &off_10003C950;
      sub_10000C55C(exception, &v46);
    }
  }
}

void sub_10000AC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  sub_100004BF4(&a13);
  _Unwind_Resume(a1);
}

void sub_10000AD7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  JUMPOUT(0x10000AE44);
}

void sub_10000AE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27)
{
  if (a27)
  {
    JUMPOUT(0x10000AE14);
  }

  JUMPOUT(0x10000AE44);
}

void sub_10000AE1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  sub_10000C8D0(&a27);
  std::ios::~ios();
  JUMPOUT(0x10000AE44);
}

void sub_10000AE3C(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, const std::error_code a25)
{
  if (a2 == 2)
  {
    v26 = __cxa_begin_catch(a1);
    *(v25 - 144) = 0;
    *(v25 - 136) = 0;
    *(v25 - 128) = 0;
    sub_100004B04(&a13);
    v28 = a18;
    v27 = a19;
    if (a19 != a18)
    {
      v29 = a19;
      do
      {
        v31 = *(v29 - 24);
        v29 -= 24;
        v30 = v31;
        if (v31)
        {
          *(v27 - 16) = v30;
          operator delete(v30);
        }

        v27 = v29;
      }

      while (v29 != v28);
    }

    a19 = v28;
    exception = __cxa_allocate_exception(0x20uLL);
    sub_10000C33C(exception, v26 + 1, (v25 - 144));
  }

  if (a2 == 1)
  {
    v33 = __cxa_begin_catch(a1);
    v34 = (*(*v33 + 16))(v33);
    sub_100004930((v25 - 144), v34);
    sub_100004B04(&a13);
    v36 = a18;
    v35 = a19;
    if (a19 != a18)
    {
      v37 = a19;
      do
      {
        v39 = *(v37 - 24);
        v37 -= 24;
        v38 = v39;
        if (v39)
        {
          *(v35 - 16) = v38;
          operator delete(v38);
        }

        v35 = v37;
      }

      while (v37 != v36);
    }

    a19 = v36;
    v40 = __cxa_allocate_exception(0x20uLL);
    *&a25.__val_ = 100;
    a25.__cat_ = &off_10003C950;
    sub_10000C33C(v40, &a25, (v25 - 144));
  }

  *(v25 - 144) = a10;
  sub_100004BA0((v25 - 144));
  JUMPOUT(0x10000B018);
}

void sub_10000AF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (*(v10 - 121) < 0)
  {
    operator delete(*(v10 - 144));
  }

  __cxa_end_catch();
  *(v10 - 144) = a10;
  sub_100004BA0((v10 - 144));
  JUMPOUT(0x10000B018);
}

void sub_10000AFF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __cxa_free_exception(v5);
  sub_100004BF4(va);
  _Unwind_Resume(a1);
}

void sub_10000B020(uint64_t *a1, unint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (v4 - *a1) >> 3;
  if (a2 <= v5)
  {
    if (a2 >= v5)
    {
      return;
    }

    v11 = v3 + 8 * a2;
  }

  else
  {
    v6 = a2 - v5;
    v7 = a1[2];
    if (v6 > (v7 - v4) >> 3)
    {
      if (!(a2 >> 61))
      {
        v8 = v7 - v3;
        v9 = v8 >> 2;
        if (v8 >> 2 <= a2)
        {
          v9 = a2;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFF8)
        {
          v10 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        sub_100007364(v10);
      }

      sub_1000024E4();
    }

    bzero(a1[1], 8 * v6);
    v11 = v4 + 8 * v6;
  }

  a1[1] = v11;
}

void *sub_10000B120(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 2)
  {
    v2 = result[1] - *result;
    sub_1000074AC(a2);
  }

  return result;
}

double sub_10000B1AC(uint64_t a1)
{
  bzero(*a1, 0x20CuLL);
  v2 = *(a1 + 8);
  if ((v2 & 0xF) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v5.__val_ = 512;
    v5.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v5);
  }

  result = 0.0;
  v2[30] = 0u;
  v2[31] = 0u;
  v2[28] = 0u;
  v2[29] = 0u;
  v2[26] = 0u;
  v2[27] = 0u;
  v2[24] = 0u;
  v2[25] = 0u;
  v2[22] = 0u;
  v2[23] = 0u;
  v2[20] = 0u;
  v2[21] = 0u;
  v2[18] = 0u;
  v2[19] = 0u;
  v2[16] = 0u;
  v2[17] = 0u;
  v2[14] = 0u;
  v2[15] = 0u;
  v2[12] = 0u;
  v2[13] = 0u;
  v2[10] = 0u;
  v2[11] = 0u;
  v2[8] = 0u;
  v2[9] = 0u;
  v2[6] = 0u;
  v2[7] = 0u;
  v2[4] = 0u;
  v2[5] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  *v2 = 0u;
  v2[1] = 0u;
  return result;
}

void sub_10000B288(uint64_t a1)
{
  bzero(*a1, 0x80CuLL);
  v2 = *(a1 + 8);
  if ((v2 & 0xF) != 0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v4.__val_ = 512;
    v4.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v4);
  }

  bzero(v2, 0x800uLL);
}

void sub_10000B334(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v22 = v4;
    v23 = v5;
    v9 = 0;
    v10 = a3;
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    do
    {
      v13 = *(a2 + 4 * v9);
      v14 = *(a1 + 80);
      v15 = (v14 + 4 * v11);
      v15[256] = v13;
      *v15 = v13;
      v16 = v12 + 1;
      *(a1 + 48) = v12 + 1;
      if (!v12)
      {
        v17 = 0;
        v18 = v14 + 4 * (v11 - 127);
        v19 = 0.0;
        do
        {
          v20 = vmulq_f32(*(v18 + v17 * 16), xmmword_100014C80[v17]);
          v19 = (((v19 + v20.f32[0]) + v20.f32[1]) + v20.f32[2]) + v20.f32[3];
          ++v17;
        }

        while (v17 != 32);
        v21 = v19;
        sub_10000B444(a4, &v21);
        v16 = *(a1 + 48);
      }

      if (v16 >= 3)
      {
        v16 = 0;
        *(a1 + 48) = 0;
      }

      v11 = *(a1 + 40) + 1;
      *(a1 + 40) = v11;
      ++v9;
      v12 = v16;
    }

    while (v9 != v10);
  }
}

void sub_10000B444(uint64_t a1, _DWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      sub_1000024E4();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      sub_1000074AC(v11);
    }

    v12 = (4 * (v8 >> 2));
    *v12 = *a2;
    v6 = v12 + 1;
    memcpy(0, v7, v8);
    v13 = *a1;
    *a1 = 0;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void sub_10000B51C(uint64_t a1, _DWORD *a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v6 = a3;
    do
    {
      sub_10000B444(a4, a2++);
      --v6;
    }

    while (v6);
  }
}

void sub_10000B570(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v20 = v4;
    v21 = v5;
    v9 = 0;
    v10 = a3;
    v11 = *(a1 + 40);
    do
    {
      v12 = *(a2 + 4 * v9);
      v13 = *(a1 + 80);
      v14 = (v13 + 4 * v11);
      v14[256] = v12;
      *v14 = v12;
      if ((v11 & 1) == 0)
      {
        v15 = 0;
        v16 = v13 + 4 * (v11 - 95);
        v17 = 0.0;
        do
        {
          v18 = vmulq_f32(*(v16 + v15 * 16), xmmword_100014EE0[v15]);
          v17 = (((v17 + v18.f32[0]) + v18.f32[1]) + v18.f32[2]) + v18.f32[3];
          ++v15;
        }

        while (v15 != 24);
        v19 = v17;
        sub_10000B444(a4, &v19);
        v11 = *(a1 + 40);
      }

      *(a1 + 40) = ++v11;
      ++v9;
    }

    while (v9 != v10);
  }
}

void sub_10000B65C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 >= 1)
  {
    v28 = v4;
    v29 = v5;
    v9 = 0;
    v10 = a3;
    v11 = *(a1 + 44);
    do
    {
      v12 = *(a2 + 4 * v9);
      v13 = *(a1 + 64);
      v14 = (v13 + 4 * (v11 & 0x3F));
      v14[64] = v12;
      *v14 = v12;
      if ((v11 & 1) == 0)
      {
        v15 = 0;
        v16 = v13 + 4 * ((v11 + 41) & 0x3F);
        v17 = 0.0;
        do
        {
          v18 = vmulq_f32(*(v16 + v15 * 16), xmmword_100014E80[v15]);
          v17 = (((v17 + v18.f32[0]) + v18.f32[1]) + v18.f32[2]) + v18.f32[3];
          ++v15;
        }

        while (v15 != 6);
        v19 = *(a1 + 48);
        v20 = *(a1 + 52);
        v21 = *(a1 + 40);
        v22 = (*(a1 + 80) + 4 * v21);
        v22[256] = v17;
        *v22 = v17;
        if (v20 - v19 <= 319)
        {
          do
          {
            v23 = 0;
            v24 = &unk_100015060 + 384 * (v19 - v20) + 122496;
            v25 = 0.0;
            do
            {
              v26 = vmulq_f32(*(*(a1 + 80) + 4 * (*(a1 + 40) - 95) + v23), *&v24[v23]);
              v25 = (((v25 + v26.f32[0]) + v26.f32[1]) + v26.f32[2]) + v26.f32[3];
              v23 += 16;
            }

            while (v23 != 384);
            v27 = v25;
            sub_10000B444(a4, &v27);
            v19 = *(a1 + 48);
            v20 = *(a1 + 52) + 441;
            *(a1 + 52) = v20;
          }

          while (v20 - v19 < 320);
          v21 = *(a1 + 40);
          v11 = *(a1 + 44);
        }

        *(a1 + 48) = v19 + 320;
        *(a1 + 40) = v21 + 1;
      }

      *(a1 + 44) = ++v11;
      ++v9;
    }

    while (v9 != v10);
  }
}

void sub_10000B804(void *a1)
{
  a1[2] = 0;
  a1[3] = 0;
  a1[4] = 0;
  operator new[]();
}

void sub_10000B9AC(_Unwind_Exception *a1)
{
  __cxa_free_exception(v3);
  if (*(v1 + 72))
  {
    operator delete[]();
  }

  if (*(v2 + 40))
  {
    operator delete[]();
  }

  v5 = *v2;
  if (*v2)
  {
    *(v1 + 24) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void sub_10000BA20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1 + 16;
  *(a1 + 24) = *(a1 + 16);
  v7 = *a1;
  v8 = *(a1 + 8);
  v9 = (a1 + (v8 >> 1));
  if (v8)
  {
    v7 = *(*v9 + v7);
  }

  v7(v9, a2, a3, v6);
  v10 = *(a4 + 8);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);

  sub_10000BA98(a4, v10, v11, v12, (v12 - v11) >> 2);
}

void sub_10000BA98(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 2)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 2);
    if (v12 >> 62)
    {
      sub_1000024E4();
    }

    v13 = v9 - v11;
    if (v13 >> 1 > v12)
    {
      v12 = v13 >> 1;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v14 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v12;
    }

    v15 = (__dst - v11) >> 2;
    if (v14)
    {
      sub_1000074AC(v14);
    }

    v32 = 4 * v15;
    v33 = 4 * a5;
    v34 = (4 * v15);
    do
    {
      v35 = *v6++;
      *v34++ = v35;
      v33 -= 4;
    }

    while (v33);
    memcpy((v32 + 4 * a5), __dst, *(a1 + 8) - __dst);
    v36 = *a1;
    v37 = v32 + 4 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v38 = (__dst - v36);
    v39 = (v32 - (__dst - v36));
    memcpy(v39, v36, v38);
    v40 = *a1;
    *a1 = v39;
    *(a1 + 8) = v37;
    *(a1 + 16) = 0;
    if (v40)
    {

      operator delete(v40);
    }

    return;
  }

  v16 = v10 - __dst;
  v17 = (v10 - __dst) >> 2;
  if (v17 >= a5)
  {
    v28 = &__dst[4 * a5];
    v29 = &v10[-4 * a5];
    v30 = *(a1 + 8);
    while (v29 < v10)
    {
      v31 = *v29;
      v29 += 4;
      *v30++ = v31;
    }

    *(a1 + 8) = v30;
    if (v10 != v28)
    {
      memmove(&__dst[4 * a5], __dst, v10 - v28);
    }

    v27 = 4 * a5;
    v25 = __dst;
    v26 = v6;
    goto LABEL_29;
  }

  v19 = a4 - &__src[v16];
  if (a4 != &__src[v16])
  {
    memmove(*(a1 + 8), &__src[v16], a4 - &__src[v16]);
  }

  v20 = &v10[v19];
  *(a1 + 8) = &v10[v19];
  if (v17 >= 1)
  {
    v21 = &__dst[4 * a5];
    v22 = &v10[v19];
    if (&v20[-4 * a5] < v10)
    {
      v23 = &__dst[a4];
      v24 = &__dst[a4 + -4 * a5];
      do
      {
        *(v23 - v6) = *(v24 - v6);
        v24 += 4;
        v23 += 4;
      }

      while (v24 - v6 < v10);
      v22 = (v23 - v6);
    }

    *(a1 + 8) = v22;
    if (v20 != v21)
    {
      memmove(&__dst[4 * a5], __dst, v20 - v21);
    }

    if (v10 != __dst)
    {
      v25 = __dst;
      v26 = v6;
      v27 = v10 - __dst;
LABEL_29:

      memmove(v25, v26, v27);
    }
  }
}

void sub_10000BD04(void *a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a1[1])
  {
    v4 = (a1[1] & 1 | *a1) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v15.__val_ = 517;
    v15.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v15);
  }

  v7 = a3;
  if (a3 >= 1)
  {
    do
    {
      v11 = 0;
      if (v7 >= 0x40)
      {
        v12 = 64;
      }

      else
      {
        v12 = v7;
      }

      do
      {
        *(&v15.__val_ + v11) = *(a2 + 2 * v11);
        ++v11;
      }

      while (v12 != v11);
      sub_10000BA20(a1, &v15, v12, a4);
      a2 += 2 * v12;
      v13 = __OFSUB__(v7, v12);
      v7 -= v12;
    }

    while (!((v7 < 0) ^ v13 | (v7 == 0)));
  }
}

void sub_10000BE58(void *a1, char *__src, int a3, uint64_t a4)
{
  if (a1[1])
  {
    v4 = (a1[1] & 1 | *a1) == 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = v4;
  if (*a1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (!v6)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&__dst[0].__val_ = 517;
    __dst[0].__cat_ = &off_10003C948;
    sub_100004A6C(exception, __dst);
  }

  v7 = a3;
  if (a3 >= 1)
  {
    do
    {
      if (v7 >= 0x40)
      {
        v11 = 64;
      }

      else
      {
        v11 = v7;
      }

      memcpy(__dst, __src, (4 * v11));
      sub_10000BA20(a1, __dst, v11, a4);
      __src += 4 * v11;
      v12 = __OFSUB__(v7, v11);
      v7 -= v11;
    }

    while (!((v7 < 0) ^ v12 | (v7 == 0)));
  }
}

_BYTE *sub_10000BF9C@<X0>(int a1@<W1>, _BYTE *a2@<X8>)
{
  if (a1 > 199)
  {
    if (a1 <= 299)
    {
      if (a1 <= 201)
      {
        if (a1 == 200)
        {
          v2 = "Invalid - Out of order peaks";
        }

        else
        {
          v2 = "Invalid - Peaks not sorted by time";
        }

        return sub_100004930(a2, v2);
      }

      if (a1 == 202)
      {
        v2 = "Invalid - Duplicate peak found";
        return sub_100004930(a2, v2);
      }

      if (a1 == 203)
      {
        v2 = "Invalid - Sig header length less than last peak time";
        return sub_100004930(a2, v2);
      }
    }

    else
    {
      if (a1 <= 301)
      {
        if (a1 == 300)
        {
          v2 = "Invalid - No audio in signature";
        }

        else
        {
          v2 = "Invalid - No peaks in signature";
        }

        return sub_100004930(a2, v2);
      }

      switch(a1)
      {
        case 302:
          v2 = "Invalid - Sig header has 0 length";
          return sub_100004930(a2, v2);
        case 303:
          v2 = "Invalid - First peak and last peak less than 0.5 seconds apart";
          return sub_100004930(a2, v2);
        case 400:
          v2 = "Invalid - Peak Density is too high";
          return sub_100004930(a2, v2);
      }
    }

LABEL_51:
    v2 = "unknown";
    return sub_100004930(a2, v2);
  }

  switch(a1)
  {
    case 100:
      v2 = "Unknown Error";
      break;
    case 101:
      v2 = "Invalid - Zero byte sig";
      break;
    case 102:
      v2 = "Invalid - Could not parse binary sig data";
      break;
    case 103:
      v2 = "Invalid - Magic key doesn't match expected";
      break;
    case 104:
      v2 = "Invalid - Sumo sig info block has the wrong size";
      break;
    case 105:
      v2 = "Invalid - Sig smaller than smallest possible sig";
      break;
    case 106:
      v2 = "Invalid - Unable to dump legacy sig";
      break;
    case 107:
      v2 = "Invalid - Unable to dump sumo sig";
      break;
    case 108:
      v2 = "Invalid - Unable to dump banded sig";
      break;
    case 109:
      v2 = "Invalid - Number of Bands not equal between rv and bands";
      break;
    case 110:
      v2 = "Invalid - Wrong number of bands.";
      break;
    case 111:
      v2 = "Invalid - Size in start header not found";
      break;
    case 112:
      v2 = "Invalid - Fp data header pkt size incorrect";
      break;
    case 113:
      v2 = "Invalid - Leftover bytes smaller than EXT_HEADER_TYPE";
      break;
    case 114:
      v2 = "Invalid - Malformed header chain";
      break;
    case 115:
      v2 = "Invalid - no header to extract sumo peaks from";
      break;
    case 116:
      v2 = "Invalid - Can only extract sumo peaks from a sumo signature";
      break;
    case 117:
      v2 = "Invalid - no header to extract fat peaks from";
      break;
    case 118:
      v2 = "Invalid - Can only extract fat peaks from a sumo/fat signature";
      break;
    case 119:
      v2 = "Invalid - Unpacked sig has no header to extract peaks from";
      break;
    case 120:
      v2 = "Invalid - Payload type of fat/sumo doesn't match sig header";
      break;
    case 121:
      v2 = "Invalid - Unknown header error";
      break;
    case 122:
      v2 = "Invalid - Legacy sig info missing";
      break;
    case 123:
      v2 = "Invalid - Legacy sig info size mismatch";
      break;
    case 124:
      v2 = "Invalid - Error decompressing signature, could not get header of each band";
      break;
    case 125:
      v2 = "Invalid - Could not get ancient sig fp data header";
      break;
    case 126:
      v2 = "Error when reducing density of the signature";
      break;
    case 127:
      v2 = "Error when calculating freq curvature: non positive value";
      break;
    case 128:
      v2 = "Error when calculating time curvature: negative value";
      break;
    case 129:
      v2 = "Error when filling sumo patch: patch size must be 5";
      break;
    case 130:
      v2 = "Error when filling sumo patch: invalid position into patch";
      break;
    case 131:
      v2 = "Error when decoding sumo peaks: sumo peak too small";
      break;
    default:
      if (a1)
      {
        goto LABEL_51;
      }

      v2 = "Success";
      break;
  }

  return sub_100004930(a2, v2);
}

void sub_10000C2C8(std::error_category *a1)
{
  std::error_category::~error_category(a1);

  operator delete();
}

void sub_10000C304(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_10000C33C(uint64_t a1, const std::error_code *a2, const void **a3)
{
  sub_100004930(&__p, &unk_100034F0F);
  v6 = *(a3 + 23);
  if (v6 >= 0)
  {
    v7 = *(a3 + 23);
  }

  else
  {
    v7 = a3[1];
  }

  if (v7)
  {
    if (v7 + 1 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100001DF8();
    }

    if (v7 + 1 > 0x16)
    {
      operator new();
    }

    memset(&v15, 0, sizeof(v15));
    *(&v15.__r_.__value_.__s + 23) = v7 + 1;
    if ((v6 & 0x80u) == 0)
    {
      v8 = a3;
    }

    else
    {
      v8 = *a3;
    }

    memmove(&v15, v8, v7);
    *(&v15.__r_.__value_.__l.__data_ + v7) = 32;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    __p = v15;
  }

  std::error_code::message(&v15, a2);
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

  v11 = std::string::insert(&v15, 0, p_p, size);
  v12 = *&v11->__r_.__value_.__l.__data_;
  v14.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
  *&v14.__r_.__value_.__l.__data_ = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v15.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::runtime_error::runtime_error(a1, &v14);
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }

  *a1 = &off_1000384A8;
  *(a1 + 16) = *a2;
  return a1;
}

void sub_10000C510(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000C55C(uint64_t a1, std::error_code *this)
{
  std::error_code::message(&v5, this);
  std::runtime_error::runtime_error(a1, &v5);
  if (SHIBYTE(v5.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v5.__r_.__value_.__l.__data_);
  }

  *a1 = &off_1000384A8;
  *(a1 + 16) = *this;
  return a1;
}

void sub_10000C5D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10000C5F4(unint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  if (a1 == 2 && a2 == 2 || (a1 & 0xFFFFFFFFFFFFFFFBLL) == 0 && a2 != 2 || a1 != 2 && (a2 & 0xFFFFFFFFFFFFFFFBLL) == 0)
  {
    return 0;
  }

  *a3 = a1;
  *a4 = a2;
  if (a1 == 2)
  {
    v5 = a2 - 1;
    if (a2 <= 1)
    {
      v5 = a2 + 1;
    }

    *a4 = v5;
  }

  else
  {
    v6 = *a3;
    if (a1 > 1)
    {
      v7 = v6 - 1;
    }

    else
    {
      v7 = v6 + 1;
    }

    *a3 = v7;
  }

  return 1;
}

uint64_t sub_10000C674(unsigned int a1, uint64_t a2, uint64_t a3)
{
  if (a1 < 0xD0)
  {
    return 0;
  }

  v4 = 0;
  v5 = 0;
  LODWORD(v3) = 0;
  v24 = a1 / 0xD0uLL;
  v6 = (a2 + 108);
  v25 = a2;
  do
  {
    v7 = (a2 + 208 * v4);
    v8 = *v7;
    if (v5 > v8)
    {
      sub_100001AD0(&std::cerr, "\nError: time must be greater or equal than previous_time.\n", 58);
      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "time must be greater or equal than previous_time.");
    }

    v9 = a3 + v3;
    v10 = v8 - v5;
    v28 = v3;
    if (v10 > 0xFE)
    {
      *(v9 + 1) = v10;
      v11 = 5;
      LOBYTE(v10) = -1;
    }

    else
    {
      v11 = 1;
    }

    v12 = 0;
    v13 = 0;
    *v9 = v10;
    v14 = v11;
    v15 = (v9 + v11);
    *v15 = *(v7 + 2);
    v15[1] = *(v7 + 3);
    v27 = v14 + 4;
    v16 = v9 + v14 + 4;
    v17 = v6;
    do
    {
      v18 = 0;
      v19 = v17;
      do
      {
        v30 = 0;
        if (sub_10000C5F4(v12, v18, &v30, &v29))
        {
          v20 = (v16 + v13);
          *v20 = fmaxf(fminf(((*(v19 - 25) + 65536.0) * 0.0000076294) * 65536.0, 65535.0), 0.0);
          v20[1] = fmaxf(fminf(((*v19 + 3.1416) / 6.2832) * 65536.0, 65535.0), 0.0);
          v21 = 4;
        }

        else
        {
          v21 = 0;
        }

        v13 += v21;
        ++v18;
        ++v19;
      }

      while (v18 != 5);
      ++v12;
      v17 += 5;
    }

    while (v12 != 5);
    v3 = v13 + v27 + v28;
    v5 = *v7;
    ++v4;
    v6 += 52;
    a2 = v25;
  }

  while (v4 != v24);
  return v3;
}

uint64_t sub_10000C8D0(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  std::locale::~locale((a1 + 16));

  return std::ostream::~ostream();
}

float sub_10000C9F0(int a1, unsigned int a2, void *a3, _DWORD *a4, _WORD *a5, _WORD *a6, _WORD *a7, _WORD *a8)
{
  v13 = a2;
  v15 = a3[2];
  v16 = fmaxf(*(v15 + 4 * a2), 0.015625);
  v17 = fmaxf(*(v15 + 4 * (a2 + 1)), 0.015625);
  v18 = fmaxf(*(a3[1] + 4 * a2), 0.015625);
  v19 = fmaxf(*(a3[3] + 4 * a2), 0.015625);
  v20 = (logf(fmaxf(*(v15 + 4 * (a2 - 1)), 0.015625)) + 4.1589) * 1477.3;
  v21 = (logf(v16) + 4.1589) * 1477.3;
  v22 = (logf(v17) + 4.1589) * 1477.3;
  v23 = logf(v18);
  v24 = logf(v19);
  v25 = -((v20 + v22) - (v21 * 2.0));
  if (v25 <= 0.0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v29.__val_ = 127;
    v29.__cat_ = &off_10003C950;
    sub_10000C55C(exception, &v29);
    goto LABEL_6;
  }

  v26 = -((((v23 + 4.1589) * 1477.3) + ((v24 + 4.1589) * 1477.3)) - (v21 * 2.0));
  if (v26 < 0.0)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v29.__val_ = 128;
    v29.__cat_ = &off_10003C950;
    sub_10000C55C(exception, &v29);
LABEL_6:
  }

  *a4 = a1;
  *a6 = v21;
  *a5 = (((v22 - v20) * 32.0) / v25) + (v13 << 6);
  result = v26 + v26;
  *a7 = v25;
  *a8 = result;
  return result;
}

void sub_10000CBEC(unint64_t a1)
{
  if (a1 < 0x3333333333333334)
  {
    operator new();
  }

  sub_1000024FC();
}

uint64_t sub_10000CD5C(uint64_t *a1, unint64_t a2, int a3, unint64_t a4)
{
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_10000230C(&v33, a4);
  sub_10000D138(a1, &v33, a2, a3, v7);
  v36 = 0;
  if (0xAAAAAAAAAAAAAAABLL * (v34 - v33) - 5 >= 0xFFFFFFFFFFFFFFFELL && v34 != v33)
  {
    v9 = 0;
    v11 = *v33;
    v10 = v33[1];
    v12 = v10 - *v33;
    if (v10 != *v33)
    {
      v32 = *v33;
      if (v12 >> 2)
      {
        if ((v12 >> 2) < 0x3333333333333334)
        {
          sub_10000CBEC(v12 >> 2);
        }

        sub_1000024E4();
      }

      v13 = 0;
      v14 = 0;
      v15 = v12 >> 3;
      v16 = 0;
      v31 = v15;
      do
      {
        v17 = v13;
        v18 = (v11 + 8 * v14);
        v13 = *v18;
        v19 = *v18 - v17;
        if (*v18 - v17 >= 0xFF)
        {
          v21 = v13 >> 8;
          v22 = HIWORD(v13);
          v19 = -1;
          v20 = *v18;
          v23 = HIBYTE(v13);
        }

        else
        {
          v20 = *(v18 + 3);
          v21 = v20 >> 8;
          v22 = *(v18 + 2);
          v23 = v22 >> 8;
          ++v14;
        }

        v24 = v16 - v9;
        v25 = 0xCCCCCCCCCCCCCCCDLL * (v16 - v9);
        v26 = v25 + 1;
        if (v25 + 1 >= 0x3333333333333334)
        {
          sub_1000024E4();
        }

        if (0x6666666666666666 * v9 > v26)
        {
          v26 = 0x6666666666666666 * v9;
        }

        if ((0x3333333333333333 * v9) >= 0x1999999999999999)
        {
          v27 = 0x3333333333333333;
        }

        else
        {
          v27 = v26;
        }

        if (v27)
        {
          sub_10000CBEC(v27);
        }

        v28 = 5 * v25;
        *v28 = v19;
        *(v28 + 1) = v20;
        *(v28 + 2) = v21;
        *(v28 + 3) = v22;
        *(v28 + 4) = v23;
        v16 = 5 * v25 + 5;
        v29 = (v28 - v24);
        memcpy((v28 - v24), v9, v24);
        if (v9)
        {
          operator delete(v9);
        }

        v9 = v29;
        v11 = v32;
      }

      while (v14 < v31);
    }

    operator new[]();
  }

  v36 = &v33;
  sub_100004BA0(&v36);
  return 0;
}

void sub_10000D0F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, void **a16)
{
  a16 = &a13;
  sub_100004BA0(&a16);
  _Unwind_Resume(a1);
}

void sub_10000D138(uint64_t *a1, uint64_t *a2, unint64_t a3, int a4, float a5)
{
  v5 = -45;
  if (!a4)
  {
    v5 = 0;
  }

  v66 = v5;
  v6 = *a2;
  v7 = a2[1];
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3) - 3 >= 2)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v67.__val_ = 110;
    v67.__cat_ = &off_10003C950;
    sub_10000C55C(exception, &v67);
  }

  v10 = a1;
  if (v7 != v6)
  {
    v11 = 0;
    v12 = 0;
    do
    {
      v13 = v11;
      v14 = v11 >> 2;
      if (((v11 >> 2) + 1) >> 62)
      {
        sub_1000024E4();
      }

      if (v11 >> 2 != -1)
      {
        if (!(((v11 >> 2) + 1) >> 62))
        {
          operator new();
        }

        sub_1000024FC();
      }

      *(4 * v14) = 0;
      v11 = 4 * v14 + 4;
      memcpy(0, 0, v13);
      v10 = a1;
      ++v12;
      v6 = *a2;
      v7 = a2[1];
    }

    while (v12 < 0xAAAAAAAAAAAAAAABLL * ((v7 - *a2) >> 3));
  }

  v15 = *v10;
  v16 = v10[1];
  if (v16 != *v10)
  {
    v17 = 0;
    v18 = 0;
    do
    {
      v19 = (v15 + 8 * v17);
      v20 = *v19;
      v66 += 256;
      if (v66 > v20)
      {
        do
        {
          if (v18 > v20)
          {
            v62 = __cxa_allocate_exception(0x20uLL);
            *&v67.__val_ = 201;
            v67.__cat_ = &off_10003C950;
            sub_10000C55C(v62, &v67);
          }

          v21 = *a2;
          v22 = a2[1] - *a2;
          v23 = 0xAAAAAAAAAAAAAAABLL * (v22 >> 3);
          if (v23 - 3 >= 2)
          {
            v63 = __cxa_allocate_exception(0x10uLL);
            std::runtime_error::runtime_error(v63, "Wrong number of bands.");
          }

          v24 = 0;
          LOWORD(a5) = *(v19 + 2);
          a5 = (LODWORD(a5) * 7.8125) * 0.015625;
          while (a5 >= flt_100033060[v24])
          {
            if (++v24 > v23)
            {
              if (a5 != flt_100033060[0xEAAAAAAAAAAAAAABLL * (v22 >> 3)])
              {
                goto LABEL_44;
              }

              v25 = v21 + v22;
              v27 = *(v21 + v22 - 16);
              v26 = *(v21 + v22 - 8);
              if (v27 >= v26)
              {
                v28 = *(v25 - 24);
                v29 = (v27 - v28) >> 3;
                if (!((v29 + 1) >> 61))
                {
                  v30 = v26 - v28;
                  v31 = v30 >> 2;
                  if (v30 >> 2 <= (v29 + 1))
                  {
                    v31 = v29 + 1;
                  }

                  if (v30 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v32 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v32 = v31;
                  }

                  if (v32)
                  {
                    sub_100007364(v32);
                  }

                  goto LABEL_40;
                }

LABEL_67:
                sub_1000024E4();
              }

LABEL_31:
              *v27 = *v19;
              v34 = v27 + 1;
              goto LABEL_43;
            }
          }

          if (!v24)
          {
            goto LABEL_44;
          }

          v25 = v21 + 24 * v24;
          v27 = *(v25 - 16);
          v33 = *(v25 - 8);
          if (v27 < v33)
          {
            goto LABEL_31;
          }

          v35 = *(v25 - 24);
          v29 = (v27 - v35) >> 3;
          if ((v29 + 1) >> 61)
          {
            goto LABEL_67;
          }

          v36 = v33 - v35;
          v37 = v36 >> 2;
          if (v36 >> 2 <= (v29 + 1))
          {
            v37 = v29 + 1;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v32 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v32 = v37;
          }

          if (v32)
          {
            sub_100007364(v32);
          }

LABEL_40:
          v39 = v32;
          v38 = (v32 + 8 * v29);
          *v38 = *v19;
          v34 = v38 + 1;
          v40 = *(v25 - 24);
          v41 = *(v25 - 16) - v40;
          v42 = v38 - v41;
          memcpy(v38 - v41, v40, v41);
          v43 = *(v25 - 24);
          *(v25 - 24) = v42;
          *(v25 - 16) = v34;
          *(v25 - 8) = v39;
          if (v43)
          {
            operator delete(v43);
          }

          v10 = a1;
LABEL_43:
          *(v25 - 16) = v34;
LABEL_44:
          v15 = *v10;
          v16 = v10[1];
          v18 = *(*v10 + 8 * v17++);
          if (v17 >= (v16 - *v10) >> 3)
          {
            break;
          }

          v19 = (v15 + 8 * v17);
          v20 = *v19;
        }

        while (v66 > v20);
        v6 = *a2;
        v7 = a2[1];
      }

      if (v7 == v6)
      {
        v7 = v6;
      }

      else
      {
        v44 = 0;
        v45 = 0;
        do
        {
          v47 = *(v6 + v44);
          v46 = *(v6 + v44 + 8);
          v48 = v46 - v47;
          v49 = (v46 - v47) >> 3;
          v50 = *(4 * v45);
          v51 = v49 >= v50;
          v52 = v49 - v50;
          if (!v51)
          {
            v61 = __cxa_allocate_exception(0x20uLL);
            *&v67.__val_ = 126;
            v67.__cat_ = &off_10003C950;
            sub_10000C55C(v61, &v67);
          }

          if (a3 && v52 > a3)
          {
            v53 = (v47 + 8 * v50);
            v54 = 126 - 2 * __clz(v46 - v53);
            *&v67.__val_ = sub_10000733C;
            if (v46 == v53)
            {
              v55 = 0;
            }

            else
            {
              v55 = v54;
            }

            sub_100004DF8(v53, v46, &v67, v55, 1);
            sub_10000B020((*a2 + v44), *(4 * v45) + a3);
            v56 = (*a2 + v44);
            v57 = v56[1];
            v58 = *v56 + 8 * *(4 * v45);
            v59 = 126 - 2 * __clz((v57->i64 - v58) >> 3);
            if (v57 == v58)
            {
              v60 = 0;
            }

            else
            {
              v60 = v59;
            }

            sub_1000059A4(v58, v57, v60, 1);
            v6 = *a2;
            v7 = a2[1];
            v48 = *(*a2 + v44 + 8) - *(*a2 + v44);
          }

          *(4 * v45++) = v48 >> 3;
          v44 += 24;
        }

        while (v45 < 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3));
        v15 = *v10;
        v16 = v10[1];
      }
    }

    while (v17 < (v16 - v15) >> 3);
  }
}

void sub_10000D76C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      sub_1000024E4();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      sub_100007364(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void *sub_10000D83C(void *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      v2 = result[1] - *result;
      sub_100007364(a2);
    }

    sub_1000024E4();
  }

  return result;
}

uint64_t sub_10000D8E0(int *a1, unint64_t a2)
{
  if ((a2 & 3) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Checksum Alignment Error");
  }

  v2 = 0;
  if (a2)
  {
    v3 = a2 >> 2;
    do
    {
      v4 = *a1++;
      v2 = (v4 + v2);
      --v3;
    }

    while (v3);
  }

  return v2;
}

void sub_10000D970(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  operator new[]();
}

void sub_10000DB8C(_Unwind_Exception *exception_object)
{
  v3 = v1[13];
  v1[13] = 0;
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  if (v1[9])
  {
    operator delete[]();
  }

  if (v1[7])
  {
    operator delete[]();
  }

  if (v1[5])
  {
    operator delete[]();
  }

  _Unwind_Resume(exception_object);
}

float sub_10000DC40(void *a1)
{
  if (a1[12] != -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v6.__val_ = 503;
    v6.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v6);
  }

  v1 = 0;
  a1[12] = a1[11];
  v2 = a1[6];
  v3 = a1[8];
  do
  {
    result = *(v2 + 4 * (v1 & 0x7FF));
    *(v3 + 4 * (v1++ & 0x7FF)) = result;
  }

  while (v1 != 2051);
  return result;
}

void sub_10000DCF4(void *a1)
{
  v1 = a1[12];
  if (v1 == -1)
  {
    exception = __cxa_allocate_exception(0x20uLL);
    *&v7.__val_ = 504;
    v7.__cat_ = &off_10003C948;
    sub_100004A6C(exception, &v7);
  }

  v2 = 0;
  a1[11] = v1;
  v3 = a1[8];
  v4 = a1[6];
  do
  {
    *(v4 + 4 * (v2 & 0x7FF)) = *(v3 + 4 * (v2 & 0x7FF));
    ++v2;
  }

  while (v2 != 2051);
  a1[12] = -1;
  v5 = a1[7];

  bzero(v5, 0x200CuLL);
}

void sub_10000DDC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 48);
  v7 = *(a1 + 88);
  do
  {
    v8 = v7++ & 0x7FF;
    *(v6 + 4 * v8) = *(a2 + v5);
    v5 += 4;
  }

  while (v5 != 512);
  v9 = 0;
  *(a1 + 88) = v7;
  v10 = *(a1 + 80);
  do
  {
    *(v10 + 4 * v9) = *(v6 + 4 * ((v7 + v9) & 0x7FF));
    ++v9;
  }

  while (v9 != 2048);
  v11 = 0;
  v12 = *(a1 + 8560);
  do
  {
    *(v12 + v11 * 4) = *(v10 + v11 * 4) * *&dword_100012C5C[v11];
    ++v11;
  }

  while (v11 != 2048);
  (***(a1 + 104))(*(a1 + 104));
  for (i = 0; i != 1025; ++i)
  {
    v14 = *(a3 + 4 * i);
    if (v14 <= 1.0e-10)
    {
      v14 = 1.0e-10;
    }

    *(a3 + 4 * i) = v14;
  }

  v15 = *(a1 + 16);
  if (v15 && (*(a1 + 8568) & ~(-1 << *(a1 + 28))) == 0)
  {
    v16 = *(a1 + 32);
    v17 = *(a1 + 24);
    if (v17 <= 0xA)
    {
      v18 = 0;
      v19 = v15 + 4 * (((*(a1 + 36) - 1) & v16) << (10 - v17));
      do
      {
        v20 = 0;
        v21 = 0.0;
        do
        {
          v21 = v21 + (logf(*(a3 + 4 * v20++) + 1.0) * 1477.3);
        }

        while (1 << v17 != v20);
        *(v19 + 4 * v18++) = v21 >> v17;
        a3 += 4 * (1 << v17);
      }

      while (v18 != 0x401u >> v17);
      v16 = *(a1 + 32);
    }

    *(a1 + 32) = v16 + 1;
  }

  ++*(a1 + 8568);
}

uint64_t sub_10000DFBC(uint64_t a1)
{
  result = *a1;
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Can't write a sig without keeping the header.  When constructing the unpacked sig, make sure keepHeader is True!!");
    goto LABEL_13;
  }

  v3 = *(a1 + 8);
  switch(v3)
  {
    case 1:
      v6 = sub_100004334(result, 0x60020000u);
      if (v6)
      {
        sub_10000419C(v6);
        operator delete();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Can't write a fat sig without a fat fp data header.");
LABEL_13:
    case 2:
      v5 = sub_100004334(result, 0x60030000u);
      if (v5)
      {
        sub_10000419C(v5);
        operator delete();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Can't write a normal sig without a normal fp data header.");
      goto LABEL_13;
    case 4:
      v4 = sub_100004334(result, 0x60040000u);
      if (v4)
      {
        sub_10000419C(v4);
        operator delete();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Can't write a sumo sig without a sumo fp data header.");
      goto LABEL_13;
  }

  return result;
}

void sub_10000E614(char **a1, size_t a2)
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
      sub_1000024E4();
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

uint64_t sub_10000E754(uint64_t a1)
{
  *(a1 + 8880) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_100012B70;
  bzero(*(a1 + 160), 0x10040CuLL);
  v2 = *(a1 + 192);
  bzero(*(v2 + 8), 4 * *v2 * *(v2 + 4) + 12);
  *(v2 + 40) = 0;
  if (*(a1 + 8876) == 3)
  {
    *(a1 + 152) = *(a1 + 176) - 45;
  }

  *(a1 + 112) = *(a1 + 104);
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_10000B1AC(a1 + 256);
  sub_10000B288(a1 + 272);
  bzero(*(a1 + 336), 0x200CuLL);
  bzero(*(a1 + 368), 0x201CuLL);
  *(a1 + 384) = 0;
  *(a1 + 8864) = 0;
  v3 = *(a1 + 312);
  if (v3)
  {
    v4 = (10 - *(a1 + 320)) + 2;
    bzero(v3, *(a1 + 332) << (12 - *(a1 + 320)));
  }

  result = sub_100004B04((a1 + 8));
  *(a1 + 16) = *(a1 + 8888);
  return result;
}

void sub_10000E848(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  switch(a3)
  {
    case -1:
      v5 = *(a1 + 16);
      goto LABEL_13;
    case 2:
      v5 = 4;
      goto LABEL_7;
    case 1:
      v5 = 1;
LABEL_7:
      *(a1 + 16) = v5;
      goto LABEL_13;
  }

  *(a1 + 16) = 2;
  if (a3 == 5 || a3 == 3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 24;
  }

  *(a1 + 80) = v6;
  v5 = 2;
LABEL_13:
  v7 = *(a1 + 8888);
  if (v7 == v5)
  {
    v8 = *(a1 + 36) & 0xFFFFFF00;
    *(a1 + 32) = 0;
    *(a1 + 36) = v8;
    v9 = *(a1 + 8880);
    v10 = v9 + (*(a1 + 292) * 0.24);
    v11 = HIDWORD(v10);
    *(a1 + 40) = v10;
    v12 = *(a1 + 44);
    *(a1 + 44) = v11;
    v13 = *(a1 + 8876);
    switch(v13)
    {
      case 3:
        *(a1 + 40) = v9;
        *(a1 + 44) = v12 & 0xFF0000 | WORD2(v9);
        v38 = *(a1 + 152);
        if (v38 >= -44)
        {
          if (v38 >= 1)
          {
            v39 = *(a1 + 128);
            v40 = *(a1 + 136);
            while (v39 != v40)
            {
              *v39 -= v38;
              v39 += 52;
            }
          }

          sub_100002290(a1 + 20, v38);
        }

        v54 = *(a1 + 128);
        v55 = *(a1 + 136);
        sub_10000CC3C();
      case 2:
        v35 = *(a1 + 136) - *(a1 + 128);
        sub_10000F274(a1, (a1 + 128));
        v36 = *(a1 + 128);
        v37 = *(a1 + 136);
        sub_10000CC3C();
      case 1:
        sub_10000F274(a1, (a1 + 128));
        v14 = *(a1 + 128);
        v15 = *(a1 + 136);
        sub_10000CC3C();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    sub_100001640(exception, "Invalid signature type");
LABEL_84:
  }

  if (v5 == 1)
  {
    if (v7 != 4)
    {
      goto LABEL_82;
    }

    v71 = 0;
    v72 = 0;
    v70 = 0;
    sub_10000F15C(&v70, *(a1 + 128), *(a1 + 136), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 136) - *(a1 + 128)) >> 4));
    v23 = v70;
    v24 = v71;
    v25 = 0x4EC4EC4EC4EC4EC5 * ((v71 - v70) >> 4);
    sub_10000F48C(&__p, v25);
    if (v24 == v23)
    {
      if (!v23)
      {
        goto LABEL_54;
      }
    }

    else
    {
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      v27 = 10;
      v28 = v23;
      do
      {
        v29 = *(v28 + 2);
        v30 = *(v28 + 3);
        v31 = (2 * v30);
        v32 = v31 - ((v30 - v28[13]) + (v30 - v28[15]));
        v33 = v31 - ((v30 - v28[9]) + (v30 - v28[19]));
        v34 = __p + v27;
        *(v34 - 5) = *v28;
        *(v34 - 3) = v29;
        *(v34 - 2) = v30;
        *(v34 - 1) = (v33 + v33);
        *v34 = v32;
        v27 += 12;
        v28 += 52;
        --v26;
      }

      while (v26);
    }

    operator delete(v23);
LABEL_54:
    v48 = *(a1 + 36) & 0xFFFFFF00;
    *(a1 + 32) = 0;
    *(a1 + 36) = v48;
    v49 = *(a1 + 8880);
    v50 = v49 + (*(a1 + 292) * 0.24);
    v51 = HIDWORD(v50);
    *(a1 + 40) = v50;
    v52 = *(a1 + 44);
    *(a1 + 44) = v51;
    v53 = *(a1 + 8876);
    if (v53 != 3)
    {
      if (v53 != 2)
      {
        if (v53 == 1)
        {
          sub_10000F380(a1, &__p);
          sub_10000CCCC();
        }

        v69 = __cxa_allocate_exception(0x10uLL);
        std::logic_error::logic_error(v69, "Invalid signature type");
      }

      sub_10000F380(a1, &__p);
      sub_10000CCCC();
    }

    *(a1 + 40) = v49;
    *(a1 + 44) = v52 & 0xFF0000 | WORD2(v49);
    v61 = *(a1 + 152);
    if (v61 >= -44)
    {
      if (v61 >= 1)
      {
        v62 = __p;
        v63 = v77;
        while (v62 != v63)
        {
          *v62 -= v61;
          v62 += 3;
        }
      }

      sub_100002290(a1 + 20, v61);
    }

    sub_10000CCCC();
  }

  if (v5 != 2)
  {
LABEL_82:
    exception = __cxa_allocate_exception(0x10uLL);
    sub_100001640(exception, "Invalid combination of pipeline sig options and get signature sig options.");
    goto LABEL_84;
  }

  v74 = 0;
  v75 = 0;
  v73 = 0;
  sub_10000F15C(&v73, *(a1 + 128), *(a1 + 136), 0x4EC4EC4EC4EC4EC5 * ((*(a1 + 136) - *(a1 + 128)) >> 4));
  v16 = v73;
  v17 = v74;
  v18 = 0x4EC4EC4EC4EC4EC5 * ((v74 - v73) >> 4);
  sub_10000F684(&__p, v18);
  if (v17 == v16)
  {
    if (!v16)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v19 = 0;
    if (v18 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18;
    }

    v21 = v16;
    do
    {
      v22 = *v21;
      v21 += 26;
      *(__p + v19++) = v22;
    }

    while (v20 != v19);
  }

  operator delete(v16);
LABEL_43:
  v41 = *(a1 + 36) & 0xFFFFFF00;
  *(a1 + 32) = 0;
  *(a1 + 36) = v41;
  v42 = *(a1 + 8880);
  v43 = v42 + (*(a1 + 292) * 0.24);
  v44 = HIDWORD(v43);
  *(a1 + 40) = v43;
  v45 = *(a1 + 44);
  *(a1 + 44) = v44;
  if (v3 == -1)
  {
    v3 = *(a1 + 8892);
  }

  if ((v3 & 0xFFFFFFFE) == 4)
  {
    v46 = 3;
  }

  else
  {
    v46 = 4;
  }

  v47 = *(a1 + 8876);
  switch(v47)
  {
    case 3:
      *(a1 + 40) = v42;
      *(a1 + 44) = v45 & 0xFF0000 | WORD2(v42);
      v58 = *(a1 + 152);
      if (v58 >= -44)
      {
        if (v58 >= 1)
        {
          v59 = __p;
          v60 = v77;
          while (v59 != v60)
          {
            *v59 -= v58;
            v59 += 2;
          }
        }

        sub_100002290(a1 + 20, v58);
      }

      *(a1 + 8) = sub_10000CD5C(&__p, *(a1 + 80), 0, v46);
      v77 = __p;
      v64 = *(a1 + 152);
      *(a1 + 32) = v64;
      v65 = *(a1 + 36);
      *(a1 + 36) = BYTE4(v64);
      v66 = *(a1 + 176) - 45;
      *(a1 + 152) = v66;
      if (*(a1 + 16) == 4)
      {
        *(a1 + 32) = v66;
        *(a1 + 36) = v65 & 0xFFFFFF00 | BYTE4(v66);
      }

      break;
    case 2:
      v57 = __p;
      v56 = v77;
      sub_10000F578(a1, &__p);
      *(a1 + 8) = sub_10000CD5C(&__p, *(a1 + 80), 1, v46);
      if (__p + v56 - v57 != v77)
      {
        v77 = __p + v56 - v57;
      }

      break;
    case 1:
      sub_10000F578(a1, &__p);
      *(a1 + 8) = sub_10000CD5C(&__p, *(a1 + 80), 1, v46);
      break;
    default:
      v68 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v68, "Invalid signature type");
  }

  sub_10000DFBC(a1 + 8);
  sub_100004B04((a1 + 8));
  if (__p)
  {
    v77 = __p;
    operator delete(__p);
  }
}

void sub_10000F0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  __cxa_free_exception(v16);
  if (__p)
  {
    *v17 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_10000F15C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0x13B13B13B13B13CLL)
    {
      sub_1000081E4(a4);
    }

    sub_1000024E4();
  }
}

void sub_10000F258(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000F274(uint64_t a1, void *a2)
{
  sub_1000076E4((a1 + 160));
  sub_10000DC40((a1 + 296));
  v4 = -128;
  memset(v6, 0, sizeof(v6));
  do
  {
    v5 = sub_100007A60(*(a1 + 192), 0);
    sub_10000DDC4(a1 + 296, v6, v5);
    sub_100007B18(a1 + 160, a2);
    v4 += 128;
  }

  while (v4 >> 9 < 0xF);
  sub_1000077B8((a1 + 160));

  sub_10000DCF4((a1 + 296));
}

void sub_10000F380(uint64_t a1, void *a2)
{
  sub_1000076E4((a1 + 160));
  sub_10000DC40((a1 + 296));
  v4 = -128;
  memset(v6, 0, sizeof(v6));
  do
  {
    v5 = sub_100007A60(*(a1 + 192), 0);
    sub_10000DDC4(a1 + 296, v6, v5);
    sub_100008320(a1 + 160, a2);
    v4 += 128;
  }

  while (v4 >> 9 < 0xF);
  sub_1000077B8((a1 + 160));

  sub_10000DCF4((a1 + 296));
}

void *sub_10000F48C(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10000F528(result, a2);
  }

  return result;
}

void sub_10000F50C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000F528(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1555555555555556)
  {
    sub_1000086F8(a2);
  }

  sub_1000024E4();
}

void sub_10000F578(uint64_t a1, uint64_t a2)
{
  sub_1000076E4((a1 + 160));
  sub_10000DC40((a1 + 296));
  v4 = -128;
  memset(v6, 0, sizeof(v6));
  do
  {
    v5 = sub_100007A60(*(a1 + 192), 0);
    sub_10000DDC4(a1 + 296, v6, v5);
    sub_1000087CC(a1 + 160, a2);
    v4 += 128;
  }

  while (v4 >> 9 < 0xF);
  sub_1000077B8((a1 + 160));

  sub_10000DCF4((a1 + 296));
}

void *sub_10000F684(void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    sub_10000746C(result, a2);
  }

  return result;
}

void sub_10000F6E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000F6FC(uint64_t a1, char *a2, int a3)
{
  *(a1 + 8880) += a3;
  v6 = *(a1 + 292);
  v7 = *(a1 + 288);
  if (v6 == v7)
  {
    v8 = 128;
  }

  else
  {
    v9 = vcvtps_u32_f32((v6 / v7) * 128.0);
    if (v6 == 44100)
    {
      v8 = v9 + 1;
    }

    else
    {
      v8 = v9;
    }
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000F9A8(&v23, v10, v11, (v11 - v10) >> 2);
  sub_10000B120(&v23, 0x180uLL);
  v12 = &a2[4 * a3];
  for (i = &v12[-4 * v8]; a2 <= i; a2 += 4 * v8)
  {
    sub_10000BE58((a1 + 200), a2, v8, &v23);
    v14 = v23;
    sub_10000FA40(a1, v23);
    if (&v24[-v14] <= 0x1FF)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *&v22.__val_ = 514;
      v22.__cat_ = &off_10003C948;
      sub_100004A6C(exception, &v22);
    }

    v15 = &v24[-v14 - 512];
    if (v24 != (v14 + 512))
    {
      memmove(v14, (v14 + 512), &v24[-v14 - 512]);
    }

    v24 = (v14 + v15);
    if (v15 >= 0x201)
    {
      sub_10000FA40(a1, v14);
      v16 = v15 - 512;
      memmove(v14, (v14 + 512), v16);
      v24 = (v14 + v16);
    }
  }

  if (a2 >= v12)
  {
    v17 = v23;
    v18 = v24;
  }

  else
  {
    sub_10000BE58((a1 + 200), a2, (v12 - a2) >> 2, &v23);
    v17 = v23;
    v18 = v24;
    if (&v24[-v23] >= 0x1FD)
    {
      sub_10000FA40(a1, v23);
      v19 = &v18[-v17 - 512];
      if (v19)
      {
        memmove(v17, (v17 + 512), v19);
      }

      v18 = (v17 + v19);
    }
  }

  v20 = *(a1 + 104);
  *(a1 + 112) = v20;
  sub_10000BA98(a1 + 104, v20, v17, v18, &v18[-v17] >> 2);
  if (v17)
  {

    operator delete(v17);
  }
}

void sub_10000F970(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000F9A8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 62))
    {
      sub_1000074AC(a4);
    }

    sub_1000024E4();
  }
}

void sub_10000FA24(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000FA40(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007A60(*(a1 + 192), 0);
  sub_10000DDC4(a1 + 296, a2, v4);

  sub_100007B18(a1 + 160, (a1 + 128));
}

void sub_10000FA98(uint64_t a1, unint64_t a2, int a3)
{
  *(a1 + 8880) += a3;
  v6 = *(a1 + 292);
  v7 = *(a1 + 288);
  if (v6 == v7)
  {
    v8 = 128;
  }

  else
  {
    v9 = vcvtps_u32_f32((v6 / v7) * 128.0);
    if (v6 == 44100)
    {
      v8 = v9 + 1;
    }

    else
    {
      v8 = v9;
    }
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000F9A8(&v23, v10, v11, (v11 - v10) >> 2);
  sub_10000B120(&v23, 0x180uLL);
  v12 = a2 + 2 * a3;
  for (i = v12 - 2 * v8; a2 <= i; a2 += 2 * v8)
  {
    sub_10000BD04((a1 + 200), a2, v8, &v23);
    v14 = v23;
    sub_10000FA40(a1, v23);
    if (&v24[-v14] <= 0x1FF)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *&v22.__val_ = 514;
      v22.__cat_ = &off_10003C948;
      sub_100004A6C(exception, &v22);
    }

    v15 = &v24[-v14 - 512];
    if (v24 != (v14 + 512))
    {
      memmove(v14, (v14 + 512), &v24[-v14 - 512]);
    }

    v24 = (v14 + v15);
    if (v15 >= 0x201)
    {
      sub_10000FA40(a1, v14);
      v16 = v15 - 512;
      memmove(v14, (v14 + 512), v16);
      v24 = (v14 + v16);
    }
  }

  if (a2 >= v12)
  {
    v17 = v23;
    v18 = v24;
  }

  else
  {
    sub_10000BD04((a1 + 200), a2, (v12 - a2) >> 1, &v23);
    v17 = v23;
    v18 = v24;
    if (&v24[-v23] >= 0x1FD)
    {
      sub_10000FA40(a1, v23);
      v19 = &v18[-v17 - 512];
      if (v19)
      {
        memmove(v17, (v17 + 512), v19);
      }

      v18 = (v17 + v19);
    }
  }

  v20 = *(a1 + 104);
  *(a1 + 112) = v20;
  sub_10000BA98(a1 + 104, v20, v17, v18, &v18[-v17] >> 2);
  if (v17)
  {

    operator delete(v17);
  }
}

void sub_10000FD0C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10000FD44(uint64_t a1)
{
  sub_10000FD7C(a1);

  operator delete();
}

uint64_t sub_10000FD7C(uint64_t a1)
{
  *a1 = off_100038500;
  v2 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 368))
  {
    operator delete[]();
  }

  if (*(a1 + 352))
  {
    operator delete[]();
  }

  if (*(a1 + 336))
  {
    operator delete[]();
  }

  if (*(a1 + 272))
  {
    operator delete[]();
  }

  if (*(a1 + 256))
  {
    operator delete[]();
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    *(a1 + 224) = v3;
    operator delete(v3);
  }

  sub_100007674((a1 + 160));
  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  sub_100004B04((a1 + 8));
  v7 = (a1 + 48);
  sub_100004BA0(&v7);
  return a1;
}

uint64_t sub_10000FEB0(uint64_t a1)
{
  *(a1 + 8880) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_100012B70;
  bzero(*(a1 + 160), 0x10040CuLL);
  v2 = *(a1 + 192);
  bzero(*(v2 + 8), 4 * *v2 * *(v2 + 4) + 12);
  *(v2 + 40) = 0;
  if (*(a1 + 8876) == 3)
  {
    *(a1 + 152) = *(a1 + 176) - 45;
  }

  *(a1 + 112) = *(a1 + 104);
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_10000B1AC(a1 + 256);
  sub_10000B288(a1 + 272);
  bzero(*(a1 + 336), 0x200CuLL);
  bzero(*(a1 + 368), 0x201CuLL);
  *(a1 + 384) = 0;
  *(a1 + 8864) = 0;
  v3 = *(a1 + 312);
  if (v3)
  {
    v4 = (10 - *(a1 + 320)) + 2;
    bzero(v3, *(a1 + 332) << (12 - *(a1 + 320)));
  }

  result = sub_100004B04((a1 + 8));
  *(a1 + 16) = *(a1 + 8888);
  return result;
}

void sub_10000FFA4(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  switch(a3)
  {
    case -1:
      v5 = *(a1 + 16);
      goto LABEL_13;
    case 2:
      v5 = 4;
      goto LABEL_7;
    case 1:
      v5 = 1;
LABEL_7:
      *(a1 + 16) = v5;
      goto LABEL_13;
  }

  *(a1 + 16) = 2;
  if (a3 == 5 || a3 == 3)
  {
    v6 = 16;
  }

  else
  {
    v6 = 24;
  }

  *(a1 + 80) = v6;
  v5 = 2;
LABEL_13:
  v7 = *(a1 + 8888);
  if (v7 == v5)
  {

    sub_100010564(a1, (a1 + 128));
  }

  if (v5 == 1)
  {
    if (v7 == 4)
    {
      v36 = 0;
      v37 = 0;
      v35 = 0;
      sub_1000104E0(&v35, *(a1 + 128), *(a1 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 2));
      v15 = v35;
      v16 = v36;
      sub_10000F48C(&__p, 0xAAAAAAAAAAAAAAABLL * ((v36 - v35) >> 2));
      if (v16 == v15)
      {
        if (v16)
        {
          operator delete(v15);
        }

        sub_100010564(a1, &__p);
      }

      exception = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(exception, "Cannot convert fat peak to fat peak");
    }

LABEL_55:
    v32 = __cxa_allocate_exception(0x10uLL);
    sub_100001640(v32, "Invalid combination of pipeline sig options and get signature sig options.");
  }

  if (v5 != 2)
  {
    goto LABEL_55;
  }

  v39 = 0;
  v40 = 0;
  v38 = 0;
  sub_1000104E0(&v38, *(a1 + 128), *(a1 + 136), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 136) - *(a1 + 128)) >> 2));
  v8 = v38;
  v9 = v39;
  v10 = 0xAAAAAAAAAAAAAAABLL * ((v39 - v38) >> 2);
  sub_10000F684(&__p, v10);
  if (v9 == v8)
  {
    if (!v8)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v11 = 0;
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    v13 = v8;
    do
    {
      v14 = *v13;
      v13 = (v13 + 12);
      *(__p + v11++) = v14;
    }

    while (v12 != v11);
  }

  operator delete(v8);
LABEL_33:
  v17 = *(a1 + 36) & 0xFFFFFF00;
  *(a1 + 32) = 0;
  *(a1 + 36) = v17;
  v18 = *(a1 + 8880);
  v19 = v18 + (*(a1 + 292) * 0.24);
  v20 = HIDWORD(v19);
  *(a1 + 40) = v19;
  v21 = *(a1 + 44);
  *(a1 + 44) = v20;
  if (v3 == -1)
  {
    v3 = *(a1 + 8892);
  }

  if ((v3 & 0xFFFFFFFE) == 4)
  {
    v22 = 3;
  }

  else
  {
    v22 = 4;
  }

  v23 = *(a1 + 8876);
  switch(v23)
  {
    case 3:
      *(a1 + 40) = v18;
      *(a1 + 44) = v21 & 0xFF0000 | WORD2(v18);
      v26 = *(a1 + 152);
      if (v26 >= -44)
      {
        if (v26 >= 1)
        {
          v27 = __p;
          v28 = v42;
          while (v27 != v28)
          {
            *v27 -= v26;
            v27 += 2;
          }
        }

        sub_100002290(a1 + 20, v26);
      }

      *(a1 + 8) = sub_10000CD5C(&__p, *(a1 + 80), 0, v22);
      v42 = __p;
      v29 = *(a1 + 152);
      *(a1 + 32) = v29;
      v30 = *(a1 + 36);
      *(a1 + 36) = BYTE4(v29);
      v31 = *(a1 + 176) - 45;
      *(a1 + 152) = v31;
      if (*(a1 + 16) == 4)
      {
        *(a1 + 32) = v31;
        *(a1 + 36) = v30 & 0xFFFFFF00 | BYTE4(v31);
      }

      break;
    case 2:
      v25 = __p;
      v24 = v42;
      sub_10000F578(a1, &__p);
      *(a1 + 8) = sub_10000CD5C(&__p, *(a1 + 80), 1, v22);
      if (__p + v24 - v25 != v42)
      {
        v42 = __p + v24 - v25;
      }

      break;
    case 1:
      sub_10000F578(a1, &__p);
      *(a1 + 8) = sub_10000CD5C(&__p, *(a1 + 80), 1, v22);
      break;
    default:
      v34 = __cxa_allocate_exception(0x10uLL);
      std::logic_error::logic_error(v34, "Invalid signature type");
  }

  sub_10000DFBC(a1 + 8);
  sub_100004B04((a1 + 8));
  if (__p)
  {
    v42 = __p;
    operator delete(__p);
  }
}

void sub_100010440(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  __cxa_free_exception(v17);
  if (__p)
  {
    *v18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1000104E0(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_10000F528(result, a4);
  }

  return result;
}

void sub_100010548(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100010564(uint64_t a1, void *a2)
{
  v3 = *(a1 + 36) & 0xFFFFFF00;
  *(a1 + 32) = 0;
  *(a1 + 36) = v3;
  v4 = *(a1 + 8880);
  v5 = v4 + (*(a1 + 292) * 0.24);
  v6 = HIDWORD(v5);
  *(a1 + 40) = v5;
  v7 = *(a1 + 44);
  *(a1 + 44) = v6;
  v8 = *(a1 + 8876);
  if (v8 != 3)
  {
    if (v8 != 2)
    {
      if (v8 == 1)
      {
        sub_10000F380(a1, a2);
        v9 = *a2;
        v10 = a2[1];
        sub_10000CCCC();
      }

      exception = __cxa_allocate_exception(0x10uLL);
      sub_100001640(exception, "Invalid signature type");
    }

    v11 = a2[1] - *a2;
    sub_10000F380(a1, a2);
    v12 = *a2;
    v13 = a2[1];
    sub_10000CCCC();
  }

  *(a1 + 40) = v4;
  *(a1 + 44) = v7 & 0xFF0000 | WORD2(v4);
  v14 = *(a1 + 152);
  if (v14 >= -44)
  {
    if (v14 >= 1)
    {
      v15 = *a2;
      v16 = a2[1];
      while (v15 != v16)
      {
        *v15 -= v14;
        v15 += 3;
      }
    }

    sub_100002290(a1 + 20, v14);
  }

  v17 = *a2;
  v18 = a2[1];
  sub_10000CCCC();
}

void sub_100010770(uint64_t a1, char *a2, int a3)
{
  *(a1 + 8880) += a3;
  v6 = *(a1 + 292);
  v7 = *(a1 + 288);
  if (v6 == v7)
  {
    v8 = 128;
  }

  else
  {
    v9 = vcvtps_u32_f32((v6 / v7) * 128.0);
    if (v6 == 44100)
    {
      v8 = v9 + 1;
    }

    else
    {
      v8 = v9;
    }
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000F9A8(&v23, v10, v11, (v11 - v10) >> 2);
  sub_10000B120(&v23, 0x180uLL);
  v12 = &a2[4 * a3];
  for (i = &v12[-4 * v8]; a2 <= i; a2 += 4 * v8)
  {
    sub_10000BE58((a1 + 200), a2, v8, &v23);
    v14 = v23;
    sub_100010A1C(a1, v23);
    if (&v24[-v14] <= 0x1FF)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *&v22.__val_ = 514;
      v22.__cat_ = &off_10003C948;
      sub_100004A6C(exception, &v22);
    }

    v15 = &v24[-v14 - 512];
    if (v24 != (v14 + 512))
    {
      memmove(v14, (v14 + 512), &v24[-v14 - 512]);
    }

    v24 = (v14 + v15);
    if (v15 >= 0x201)
    {
      sub_100010A1C(a1, v14);
      v16 = v15 - 512;
      memmove(v14, (v14 + 512), v16);
      v24 = (v14 + v16);
    }
  }

  if (a2 >= v12)
  {
    v17 = v23;
    v18 = v24;
  }

  else
  {
    sub_10000BE58((a1 + 200), a2, (v12 - a2) >> 2, &v23);
    v17 = v23;
    v18 = v24;
    if (&v24[-v23] >= 0x1FD)
    {
      sub_100010A1C(a1, v23);
      v19 = &v18[-v17 - 512];
      if (v19)
      {
        memmove(v17, (v17 + 512), v19);
      }

      v18 = (v17 + v19);
    }
  }

  v20 = *(a1 + 104);
  *(a1 + 112) = v20;
  sub_10000BA98(a1 + 104, v20, v17, v18, &v18[-v17] >> 2);
  if (v17)
  {

    operator delete(v17);
  }
}

void sub_1000109E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100010A1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007A60(*(a1 + 192), 0);
  sub_10000DDC4(a1 + 296, a2, v4);

  sub_100008320(a1 + 160, (a1 + 128));
}

void sub_100010A74(uint64_t a1, unint64_t a2, int a3)
{
  *(a1 + 8880) += a3;
  v6 = *(a1 + 292);
  v7 = *(a1 + 288);
  if (v6 == v7)
  {
    v8 = 128;
  }

  else
  {
    v9 = vcvtps_u32_f32((v6 / v7) * 128.0);
    if (v6 == 44100)
    {
      v8 = v9 + 1;
    }

    else
    {
      v8 = v9;
    }
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000F9A8(&v23, v10, v11, (v11 - v10) >> 2);
  sub_10000B120(&v23, 0x180uLL);
  v12 = a2 + 2 * a3;
  for (i = v12 - 2 * v8; a2 <= i; a2 += 2 * v8)
  {
    sub_10000BD04((a1 + 200), a2, v8, &v23);
    v14 = v23;
    sub_100010A1C(a1, v23);
    if (&v24[-v14] <= 0x1FF)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *&v22.__val_ = 514;
      v22.__cat_ = &off_10003C948;
      sub_100004A6C(exception, &v22);
    }

    v15 = &v24[-v14 - 512];
    if (v24 != (v14 + 512))
    {
      memmove(v14, (v14 + 512), &v24[-v14 - 512]);
    }

    v24 = (v14 + v15);
    if (v15 >= 0x201)
    {
      sub_100010A1C(a1, v14);
      v16 = v15 - 512;
      memmove(v14, (v14 + 512), v16);
      v24 = (v14 + v16);
    }
  }

  if (a2 >= v12)
  {
    v17 = v23;
    v18 = v24;
  }

  else
  {
    sub_10000BD04((a1 + 200), a2, (v12 - a2) >> 1, &v23);
    v17 = v23;
    v18 = v24;
    if (&v24[-v23] >= 0x1FD)
    {
      sub_100010A1C(a1, v23);
      v19 = &v18[-v17 - 512];
      if (v19)
      {
        memmove(v17, (v17 + 512), v19);
      }

      v18 = (v17 + v19);
    }
  }

  v20 = *(a1 + 104);
  *(a1 + 112) = v20;
  sub_10000BA98(a1 + 104, v20, v17, v18, &v18[-v17] >> 2);
  if (v17)
  {

    operator delete(v17);
  }
}

void sub_100010CE8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100010D20(uint64_t a1)
{
  sub_100010D58(a1);

  operator delete();
}

uint64_t sub_100010D58(uint64_t a1)
{
  *a1 = off_100038548;
  v2 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 368))
  {
    operator delete[]();
  }

  if (*(a1 + 352))
  {
    operator delete[]();
  }

  if (*(a1 + 336))
  {
    operator delete[]();
  }

  if (*(a1 + 272))
  {
    operator delete[]();
  }

  if (*(a1 + 256))
  {
    operator delete[]();
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    *(a1 + 224) = v3;
    operator delete(v3);
  }

  sub_100007674((a1 + 160));
  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  sub_100004B04((a1 + 8));
  v7 = (a1 + 48);
  sub_100004BA0(&v7);
  return a1;
}

uint64_t sub_100010E8C(uint64_t a1)
{
  *(a1 + 8880) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = xmmword_100012B70;
  bzero(*(a1 + 160), 0x10040CuLL);
  v2 = *(a1 + 192);
  bzero(*(v2 + 8), 4 * *v2 * *(v2 + 4) + 12);
  *(v2 + 40) = 0;
  if (*(a1 + 8876) == 3)
  {
    *(a1 + 152) = *(a1 + 176) - 45;
  }

  *(a1 + 112) = *(a1 + 104);
  *(a1 + 136) = *(a1 + 128);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  sub_10000B1AC(a1 + 256);
  sub_10000B288(a1 + 272);
  bzero(*(a1 + 336), 0x200CuLL);
  bzero(*(a1 + 368), 0x201CuLL);
  *(a1 + 384) = 0;
  *(a1 + 8864) = 0;
  v3 = *(a1 + 312);
  if (v3)
  {
    v4 = (10 - *(a1 + 320)) + 2;
    bzero(v3, *(a1 + 332) << (12 - *(a1 + 320)));
  }

  result = sub_100004B04((a1 + 8));
  *(a1 + 16) = *(a1 + 8888);
  return result;
}

void sub_100010F80(uint64_t a1, uint64_t a2, int a3)
{
  switch(a3)
  {
    case 2:
      v6 = 4;
      goto LABEL_7;
    case 1:
      v6 = 1;
LABEL_7:
      *(a1 + 16) = v6;
      break;
    case -1:
      v6 = *(a1 + 16);
      break;
    default:
      *(a1 + 16) = 2;
      if (a3 == 5 || a3 == 3)
      {
        v7 = 16;
      }

      else
      {
        v7 = 24;
      }

      *(a1 + 80) = v7;
      v6 = 2;
      break;
  }

  v8 = *(a1 + 8888);
  if (v8 == v6)
  {

    sub_100011468(a1, (a1 + 128), a2, a3);
    return;
  }

  if (v6 == 1)
  {
    if (v8 == 4)
    {
      v29 = 0;
      v30 = 0;
      v28 = 0;
      sub_1000073F0(&v28, *(a1 + 128), *(a1 + 136), (*(a1 + 136) - *(a1 + 128)) >> 3);
      v14 = v28;
      v15 = v29;
      sub_10000F48C(&__p, (v29 - v28) >> 3);
      if (v15 == v14)
      {
        if (v15)
        {
          operator delete(v14);
        }

        v16 = *(a1 + 36) & 0xFFFFFF00;
        *(a1 + 32) = 0;
        *(a1 + 36) = v16;
        v17 = *(a1 + 8880);
        v18 = v17 + (*(a1 + 292) * 0.24);
        v19 = HIDWORD(v18);
        *(a1 + 40) = v18;
        v20 = *(a1 + 44);
        *(a1 + 44) = v19;
        v21 = *(a1 + 8876);
        if (v21 != 3)
        {
          if (v21 != 2)
          {
            if (v21 == 1)
            {
              sub_10000F380(a1, &__p);
              sub_10000CCCC();
            }

            exception = __cxa_allocate_exception(0x10uLL);
            std::logic_error::logic_error(exception, "Invalid signature type");
          }

          sub_10000F380(a1, &__p);
          sub_10000CCCC();
        }

        *(a1 + 40) = v17;
        *(a1 + 44) = v20 & 0xFF0000 | WORD2(v17);
        v22 = *(a1 + 152);
        if (v22 >= -44)
        {
          if (v22 >= 1)
          {
            v23 = __p;
            v24 = v35;
            while (v23 != v24)
            {
              *v23 -= v22;
              v23 += 3;
            }
          }

          sub_100002290(a1 + 20, v22);
        }

        sub_10000CCCC();
      }

      v26 = __cxa_allocate_exception(0x10uLL);
      std::runtime_error::runtime_error(v26, "Cannot convert normal peak to fat peak");
    }

LABEL_47:
    v25 = __cxa_allocate_exception(0x10uLL);
    sub_100001640(v25, "Invalid combination of pipeline sig options and get signature sig options.");
  }

  if (v6 != 2)
  {
    goto LABEL_47;
  }

  v32 = 0;
  v33 = 0;
  v31 = 0;
  sub_1000073F0(&v31, *(a1 + 128), *(a1 + 136), (*(a1 + 136) - *(a1 + 128)) >> 3);
  v9 = v31;
  v10 = v32;
  v11 = v32 - v31;
  sub_10000F684(&__p, v11);
  if (v10 != v9)
  {
    v12 = 0;
    if (v11 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v11;
    }

    do
    {
      *(__p + v12) = v9[v12];
      ++v12;
    }

    while (v13 != v12);
    goto LABEL_34;
  }

  if (v9)
  {
LABEL_34:
    operator delete(v9);
  }

  sub_100011468(a1, &__p, a2, a3);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

void sub_1000113C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17)
{
  __cxa_free_exception(v17);
  if (__p)
  {
    *v18 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100011468(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v6 = *(a1 + 36) & 0xFFFFFF00;
  *(a1 + 32) = 0;
  *(a1 + 36) = v6;
  v7 = *(a1 + 8880);
  v8 = v7 + (*(a1 + 292) * 0.24);
  v9 = HIDWORD(v8);
  *(a1 + 40) = v8;
  v10 = *(a1 + 44);
  *(a1 + 44) = v9;
  if (a4 == -1)
  {
    a4 = *(a1 + 8892);
  }

  if ((a4 & 0xFFFFFFFE) == 4)
  {
    v11 = 3;
  }

  else
  {
    v11 = 4;
  }

  v12 = *(a1 + 8876);
  switch(v12)
  {
    case 3:
      *(a1 + 40) = v7;
      *(a1 + 44) = v10 & 0xFF0000 | WORD2(v7);
      v16 = *(a1 + 152);
      if (v16 >= -44)
      {
        if (v16 >= 1)
        {
          v17 = *a2;
          v18 = a2[1];
          while (v17 != v18)
          {
            *v17 -= v16;
            v17 += 2;
          }
        }

        sub_100002290(a1 + 20, v16);
      }

      *(a1 + 8) = sub_10000CD5C(a2, *(a1 + 80), 0, v11);
      a2[1] = *a2;
      v19 = *(a1 + 152);
      *(a1 + 32) = v19;
      v20 = *(a1 + 36);
      *(a1 + 36) = BYTE4(v19);
      v21 = *(a1 + 176) - 45;
      *(a1 + 152) = v21;
      if (*(a1 + 16) == 4)
      {
        *(a1 + 32) = v21;
        *(a1 + 36) = v20 & 0xFFFFFF00 | BYTE4(v21);
      }

      break;
    case 2:
      v13 = a2[1] - *a2;
      sub_10000F578(a1, a2);
      *(a1 + 8) = sub_10000CD5C(a2, *(a1 + 80), 1, v11);
      v14 = v13 + *a2;
      if (v14 != a2[1])
      {
        v15 = a2[1];
        a2[1] = v14;
      }

      break;
    case 1:
      sub_10000F578(a1, a2);
      *(a1 + 8) = sub_10000CD5C(a2, *(a1 + 80), 1, v11);
      break;
    default:
      exception = __cxa_allocate_exception(0x10uLL);
      sub_100001640(exception, "Invalid signature type");
  }

  sub_10000DFBC(a1 + 8);

  return sub_100004B04((a1 + 8));
}

void sub_1000116B0(uint64_t a1, char *a2, int a3)
{
  *(a1 + 8880) += a3;
  v6 = *(a1 + 292);
  v7 = *(a1 + 288);
  if (v6 == v7)
  {
    v8 = 128;
  }

  else
  {
    v9 = vcvtps_u32_f32((v6 / v7) * 128.0);
    if (v6 == 44100)
    {
      v8 = v9 + 1;
    }

    else
    {
      v8 = v9;
    }
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000F9A8(&v23, v10, v11, (v11 - v10) >> 2);
  sub_10000B120(&v23, 0x180uLL);
  v12 = &a2[4 * a3];
  for (i = &v12[-4 * v8]; a2 <= i; a2 += 4 * v8)
  {
    sub_10000BE58((a1 + 200), a2, v8, &v23);
    v14 = v23;
    sub_10001195C(a1, v23);
    if (&v24[-v14] <= 0x1FF)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *&v22.__val_ = 514;
      v22.__cat_ = &off_10003C948;
      sub_100004A6C(exception, &v22);
    }

    v15 = &v24[-v14 - 512];
    if (v24 != (v14 + 512))
    {
      memmove(v14, (v14 + 512), &v24[-v14 - 512]);
    }

    v24 = (v14 + v15);
    if (v15 >= 0x201)
    {
      sub_10001195C(a1, v14);
      v16 = v15 - 512;
      memmove(v14, (v14 + 512), v16);
      v24 = (v14 + v16);
    }
  }

  if (a2 >= v12)
  {
    v17 = v23;
    v18 = v24;
  }

  else
  {
    sub_10000BE58((a1 + 200), a2, (v12 - a2) >> 2, &v23);
    v17 = v23;
    v18 = v24;
    if (&v24[-v23] >= 0x1FD)
    {
      sub_10001195C(a1, v23);
      v19 = &v18[-v17 - 512];
      if (v19)
      {
        memmove(v17, (v17 + 512), v19);
      }

      v18 = (v17 + v19);
    }
  }

  v20 = *(a1 + 104);
  *(a1 + 112) = v20;
  sub_10000BA98(a1 + 104, v20, v17, v18, &v18[-v17] >> 2);
  if (v17)
  {

    operator delete(v17);
  }
}

void sub_100011924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_10001195C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007A60(*(a1 + 192), 0);
  sub_10000DDC4(a1 + 296, a2, v4);

  sub_1000087CC(a1 + 160, a1 + 128);
}

void sub_1000119B4(uint64_t a1, unint64_t a2, int a3)
{
  *(a1 + 8880) += a3;
  v6 = *(a1 + 292);
  v7 = *(a1 + 288);
  if (v6 == v7)
  {
    v8 = 128;
  }

  else
  {
    v9 = vcvtps_u32_f32((v6 / v7) * 128.0);
    if (v6 == 44100)
    {
      v8 = v9 + 1;
    }

    else
    {
      v8 = v9;
    }
  }

  v10 = *(a1 + 104);
  v11 = *(a1 + 112);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  sub_10000F9A8(&v23, v10, v11, (v11 - v10) >> 2);
  sub_10000B120(&v23, 0x180uLL);
  v12 = a2 + 2 * a3;
  for (i = v12 - 2 * v8; a2 <= i; a2 += 2 * v8)
  {
    sub_10000BD04((a1 + 200), a2, v8, &v23);
    v14 = v23;
    sub_10001195C(a1, v23);
    if (&v24[-v14] <= 0x1FF)
    {
      exception = __cxa_allocate_exception(0x20uLL);
      *&v22.__val_ = 514;
      v22.__cat_ = &off_10003C948;
      sub_100004A6C(exception, &v22);
    }

    v15 = &v24[-v14 - 512];
    if (v24 != (v14 + 512))
    {
      memmove(v14, (v14 + 512), &v24[-v14 - 512]);
    }

    v24 = (v14 + v15);
    if (v15 >= 0x201)
    {
      sub_10001195C(a1, v14);
      v16 = v15 - 512;
      memmove(v14, (v14 + 512), v16);
      v24 = (v14 + v16);
    }
  }

  if (a2 >= v12)
  {
    v17 = v23;
    v18 = v24;
  }

  else
  {
    sub_10000BD04((a1 + 200), a2, (v12 - a2) >> 1, &v23);
    v17 = v23;
    v18 = v24;
    if (&v24[-v23] >= 0x1FD)
    {
      sub_10001195C(a1, v23);
      v19 = &v18[-v17 - 512];
      if (v19)
      {
        memmove(v17, (v17 + 512), v19);
      }

      v18 = (v17 + v19);
    }
  }

  v20 = *(a1 + 104);
  *(a1 + 112) = v20;
  sub_10000BA98(a1 + 104, v20, v17, v18, &v18[-v17] >> 2);
  if (v17)
  {

    operator delete(v17);
  }
}

void sub_100011C28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_100011C60(uint64_t a1)
{
  sub_100011C98(a1);

  operator delete();
}

uint64_t sub_100011C98(uint64_t a1)
{
  *a1 = off_100038590;
  v2 = *(a1 + 400);
  *(a1 + 400) = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (*(a1 + 368))
  {
    operator delete[]();
  }

  if (*(a1 + 352))
  {
    operator delete[]();
  }

  if (*(a1 + 336))
  {
    operator delete[]();
  }

  if (*(a1 + 272))
  {
    operator delete[]();
  }

  if (*(a1 + 256))
  {
    operator delete[]();
  }

  v3 = *(a1 + 216);
  if (v3)
  {
    *(a1 + 224) = v3;
    operator delete(v3);
  }

  sub_100007674((a1 + 160));
  v4 = *(a1 + 128);
  if (v4)
  {
    *(a1 + 136) = v4;
    operator delete(v4);
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    *(a1 + 112) = v5;
    operator delete(v5);
  }

  sub_100004B04((a1 + 8));
  v7 = (a1 + 48);
  sub_100004BA0(&v7);
  return a1;
}

void *sub_100011DC4(void *a1)
{
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  if (a1[9])
  {
    operator delete[]();
  }

  if (a1[7])
  {
    operator delete[]();
  }

  if (a1[5])
  {
    operator delete[]();
  }

  return a1;
}

void *sub_100011E58(void *a1)
{
  if (a1[9])
  {
    operator delete[]();
  }

  if (a1[7])
  {
    operator delete[]();
  }

  v2 = a1[2];
  if (v2)
  {
    a1[3] = v2;
    operator delete(v2);
  }

  return a1;
}

uLong sub_100011EBC()
{
  result = crc32(0, 0, 0);
  dword_10003C958 = result;
  return result;
}

uLong sub_100011F30()
{
  result = crc32(0, 0, 0);
  dword_10003CA24 = result;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}