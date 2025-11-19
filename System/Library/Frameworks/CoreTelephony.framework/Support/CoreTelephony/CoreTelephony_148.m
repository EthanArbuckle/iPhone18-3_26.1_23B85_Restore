void sub_1012D8A1C(uint64_t a1)
{
  memset(&v12, 0, sizeof(v12));
  sub_100B47BF4(*(a1 + 80), &v12);
  v2 = sub_10005D028();
  std::operator+<char>();
  v3 = (a1 + 56);
  sub_1002D5BC4(v2, &__p, (a1 + 56));
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v4 = sub_10005D028();
  std::operator+<char>();
  v5 = sub_10005D0D8(v4, &__p, (a1 + 48));
  if (v16 < 0)
  {
    operator delete(__p);
  }

  v6 = *a1;
  v7 = os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    v8 = *(a1 + 48);
    if (*(a1 + 79) < 0)
    {
      v3 = *v3;
    }

    LODWORD(__p) = 67109378;
    HIDWORD(__p) = v8;
    v14 = 2080;
    v15 = v3;
    v9 = "#I Retrieved call forwarding status %d, with ICCID %s from CSI Data";
    v10 = v6;
    v11 = 18;
  }

  else
  {
    if (!v7)
    {
      goto LABEL_13;
    }

    LOWORD(__p) = 0;
    v9 = "#I No saved call forwarding status in CSI Data";
    v10 = v6;
    v11 = 2;
  }

  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &__p, v11);
LABEL_13:
  if (SHIBYTE(v12.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v12.__r_.__value_.__l.__data_);
  }
}

void sub_1012D8BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012D8BFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 8);
  }

  v6 = *(a1 + 79);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a1 + 64);
  }

  if (v5 != v6 || (v4 >= 0 ? (v8 = a2) : (v8 = *a2), v7 >= 0 ? (v9 = (a1 + 56)) : (v9 = *(a1 + 56)), result = memcmp(v8, v9, v5), result))
  {
    v11 = *a1;
    if (os_log_type_enabled(*a1, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I ICCID has changed, erasing the call forward setting saved data", v12, 2u);
    }

    *(a1 + 48) = 0;
    sub_1012D83D4(a1, a2);
    return 1;
  }

  return result;
}

void sub_1012D8CD4(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1012D8D6C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1012D8D80(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012D8D80(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1012D7DA4(v2);
    operator delete();
  }

  return a1;
}

void sub_1012D8DCC(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012D8E04(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1012D7DA4(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1012D8E48(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1012D8E88(uint64_t a1, void *a2)
{
  if (a2)
  {
    sub_1012D8E88(a1, *a2);
    sub_1012D8E88(a1, a2[1]);
    v4 = 40;
    do
    {
      if (SHIBYTE(a2[v4 + 3]) < 0)
      {
        operator delete(a2[v4 + 1]);
      }

      v4 -= 5;
    }

    while (v4 * 8);

    operator delete(a2);
  }
}

uint64_t *sub_1012D8EFC(uint64_t a1, int a2)
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
      v4 = *(v2 + 32);
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

void sub_1012D9030(void *a1, uint64_t a2)
{
  *a1 = a2;
  v2 = a2;
  operator new();
}

void sub_1012D90C8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1012D90DC(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012D90DC(uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    sub_1012D8638(v2);
    operator delete();
  }

  return a1;
}

void sub_1012D9128(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012D9160(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    sub_1012D8638(result);

    operator delete();
  }

  return result;
}

uint64_t sub_1012D91A4(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void sub_1012D91E4(uint64_t a1, uint64_t a2, int a3)
{
  v4 = "sig.moots.?";
  if (a3 == 2)
  {
    v4 = "sig.moots.2";
  }

  if (a3 == 1)
  {
    v5 = "sig.moots.1";
  }

  else
  {
    v5 = v4;
  }

  ctu::OsLogContext::OsLogContext(v12, kCtLoggingSystemName, v5);
  SignalStrengthModel::SignalStrengthModel();
  ctu::OsLogContext::~OsLogContext(v12);
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *a1 = off_101F28FD0;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 128) = 0xC033000000000000;
  *(a1 + 144) = 0xC061400000000000;
  *(a1 + 160) = 0xC05A800000000000;
  *(a1 + 176) = 0xC061400000000000;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = off_101F29118;
  *(a1 + 240) = 0x3FE0000000000000;
  __asm { FMOV            V1.2D, #-19.0 }

  *(a1 + 224) = _Q1;
  *(a1 + 256) = 0;
  *(a1 + 248) = off_101F29118;
  *(a1 + 264) = 0xC061400000000000;
  *(a1 + 272) = xmmword_101948900;
  v11 = 0.09375;
  if (*(a1 + 61))
  {
    v11 = 0.5;
  }

  *(a1 + 296) = 0;
  *(a1 + 288) = off_101F29118;
  *(a1 + 320) = v11;
  *(a1 + 304) = vdupq_n_s64(0xC05A800000000000);
  *(a1 + 336) = 0;
  *(a1 + 328) = off_101F29118;
  *(a1 + 344) = 0xC033000000000000;
  *(a1 + 352) = xmmword_101948910;
  *(a1 + 400) = 0;
  operator new();
}

void sub_1012D949C(_Unwind_Exception *a1)
{
  sub_10006DCAC(v1 + 568, *v5);
  sub_10006DCAC(v1 + 544, *v4);
  sub_10006DCAC(v1 + 520, *v3);
  sub_10006DCAC(v1 + 496, *v2);
  sub_1012DAF8C(v1 + 448);
  sub_1012DAF8C(v1 + 408);
  sub_1012DAF8C(v1 + 368);
  v7 = *(v1 + 15);
  if (v7)
  {
    std::__shared_weak_count::__release_weak(v7);
  }

  SignalStrengthModel::~SignalStrengthModel(v1);
  _Unwind_Resume(a1);
}

void sub_1012D9530(uint64_t a1)
{
  *a1 = off_101F28FD0;
  sub_10006DCAC(a1 + 656, *(a1 + 664));
  sub_10006DCAC(a1 + 632, *(a1 + 640));
  sub_10006DCAC(a1 + 568, *(a1 + 576));
  sub_10006DCAC(a1 + 544, *(a1 + 552));
  sub_10006DCAC(a1 + 520, *(a1 + 528));
  sub_10006DCAC(a1 + 496, *(a1 + 504));
  sub_1012DAF8C(a1 + 448);
  sub_1012DAF8C(a1 + 408);
  sub_1012DAF8C(a1 + 368);
  v2 = *(a1 + 120);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthModel::~SignalStrengthModel(a1);
}

uint64_t *sub_1012D95F4(uint64_t a1)
{
  sub_1012D9968(*(a1 + 24), *(a1 + 32), a1);
  sub_1012D9C04(a1);
  sub_1012D9C84(a1);
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 520, &v3)[5] = 0xC059000000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 520, &v3)[5] = 0xC057C00000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 520, &v3)[5] = 0xC055400000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 520, &v3)[5] = 0xC052C00000000000;
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC02E000000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC02A000000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC026000000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 496, &v3)[5] = 0xC022000000000000;
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 544, &v3)[5] = 0xC05A400000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 544, &v3)[5] = 0xC056800000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 544, &v3)[5] = 0xC052C00000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 544, &v3)[5] = 0xC050400000000000;
  v3 = 1;
  v4 = &v3;
  sub_1012DBE88(a1 + 568, &v3)[5] = 0x4018000000000000;
  v3 = 2;
  v4 = &v3;
  sub_1012DBE88(a1 + 568, &v3)[5] = 0x402E000000000000;
  v3 = 3;
  v4 = &v3;
  sub_1012DBE88(a1 + 568, &v3)[5] = 0x4034000000000000;
  v3 = 4;
  v4 = &v3;
  sub_1012DBE88(a1 + 568, &v3)[5] = 0x403E000000000000;
  LODWORD(v4) = 2;
  sub_10009DE18(a1 + 608, &v4, 2, 8);
  LODWORD(v4) = 3;
  sub_10009DE18(a1 + 608, &v4, 2, 5);
  LODWORD(v4) = 4;
  sub_10009DE18(a1 + 608, &v4, 2, 5);
  LODWORD(v4) = 5;
  return sub_10009DE18(a1 + 608, &v4, 2, 8);
}

void sub_1012D9968(_BYTE *a1, std::__shared_weak_count *a2, uint64_t a3)
{
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v14 = 0uLL;
  v6 = *(a3 + 128);
  v7 = 1.0;
  if (*(a3 + 488) == 1 && v6 >= -8.0 && *(a3 + 160) >= -70.0)
  {
    v12 = 0;
    v11 = v6 + 9.0;
    sub_1012DAFC8(&v12, &v11);
    v7 = v12;
    if (v12 < 1.0)
    {
      v7 = 1.0;
    }
  }

  v14 = *&v7;
  v13 = 1;
  sub_10009E794(a1, 0x100000001, &v13);
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v14 = 0uLL;
  v9 = 1.0;
  if (*(a3 + 488) == 1 && *(a3 + 128) >= -8.0)
  {
    v10 = *(a3 + 160);
    if (v10 >= -70.0)
    {
      v12 = 0;
      v11 = v10 + 71.0;
      sub_1012DAFC8(&v12, &v11);
      v9 = v12;
      if (v12 < 1.0)
      {
        v9 = 1.0;
      }
    }
  }

  v14 = *&v9;
  v13 = 1;
  sub_10009E794(a1, 1, &v13);
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = 0;
  v14 = 0uLL;
  sub_10009E794(a1, 0x200000001, &v13);
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = xmmword_101948920;
  v13 = 1;
  sub_10009E794(a1, 0x500000001, &v13);
  if (a2)
  {
    atomic_fetch_add_explicit(&a2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = xmmword_101948920;
  v13 = 1;
  sub_10009E794(a1, 0x600000001, &v13);
  if (a2)
  {
    sub_100004A34(a2);
    sub_100004A34(a2);
    sub_100004A34(a2);
    sub_100004A34(a2);
    sub_100004A34(a2);
  }
}

void sub_1012D9B9C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v1);
    sub_100004A34(v1);
    sub_100004A34(v1);
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012D9C04(uint64_t a1)
{
  v2 = 0xC061400000000000;
  v3 = 2;
  v4 = &v2;
  v5 = a1 + 368;
  sub_1012DBFB4((a1 + 368), 2, 2, &v3);
  v2 = 0xC05A800000000000;
  v3 = 2;
  v4 = &v2;
  v5 = a1 + 408;
  sub_1012DBFB4((a1 + 408), 2, 2, &v3);
}

void sub_1012D9C84(uint64_t a1)
{
  if (*(a1 + 16) >= 2u)
  {
    v2 = *(a1 + 8);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I resetStepUpTrend", buf, 2u);
    }
  }

  v3 = 0;
  *buf = 2;
  v5 = &v3;
  v6 = a1 + 448;
  sub_1012DBFB4((a1 + 448), 2, 2, buf);
}

uint64_t sub_1012D9D18(uint64_t a1, uint64_t a2, double a3)
{
  if (a2 != 1)
  {
    if (*(a1 + 16) >= 3u)
    {
      v6 = *(a1 + 8);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        asString();
        v7 = v13 >= 0 ? &__p : __p;
        *buf = 136315394;
        v15 = v7;
        v16 = 2048;
        v17 = a3;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Input rejected of wrong type: %s = %f", buf, 0x16u);
        if (v13 < 0)
        {
          operator delete(__p);
        }
      }
    }

    return 0;
  }

  v4 = 0;
  if (SHIDWORD(a2) > 4)
  {
    if (HIDWORD(a2) == 5)
    {
      v10 = -138.0;
      if (a3 >= -138.0 && a3 <= -21.0)
      {
        v10 = a3;
      }

      *(a1 + 176) = v10;
      v4 = 1;
      *(a1 + 184) = 1;
    }

    else if (HIDWORD(a2) == 6)
    {
      v4 = 0;
      if (a3 < 48.0 && a3 >= 0.0)
      {
        *(a1 + 192) = a3;
        v4 = 1;
        *(a1 + 200) = 1;
      }
    }
  }

  else
  {
    if (HIDWORD(a2))
    {
      if (HIDWORD(a2) != 1)
      {
        return v4;
      }

      if (a3 < 0.0)
      {
        v5 = -31.5;
        if (a3 >= -31.5)
        {
          v5 = a3;
        }

        *(a1 + 128) = v5;
        v4 = 1;
        *(a1 + 136) = 1;
        return v4;
      }

      return 0;
    }

    if (a3 >= -35.0)
    {
      return 0;
    }

    v8 = -138.0;
    if (a3 >= -138.0)
    {
      v8 = a3;
    }

    *(a1 + 144) = v8;
    v4 = 1;
    *(a1 + 152) = 1;
  }

  return v4;
}

void sub_1012D9EFC(uint64_t a1, int a2)
{
  v2 = *(a1 + 489);
  if (v2 != a2)
  {
    v5 = *(a1 + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 136315394;
      v7 = CSIBOOLAsString(v2);
      v8 = 2080;
      v9 = CSIBOOLAsString(a2);
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Step up going from %s to %s", &v6, 0x16u);
    }

    *(a1 + 489) = a2;
  }
}

uint64_t sub_1012D9FDC(void *a1, double *a2, uint64_t a3)
{
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    return 5;
  }

  while (1)
  {
    v12 = *(v4 + 8);
    v11 = *(v4 + 5);
    (*(a3 + 16))(a3, &v11, &v12);
    if (*a2 < v11)
    {
      break;
    }

    v7 = v4[1];
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
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
    if (v8 == v3)
    {
      return 5;
    }
  }

  return v12;
}

void sub_1012DA0A4(uint64_t a1, double *a2, unsigned int *a3)
{
  v4 = *(a1 + 32);
  v5 = *a3;
  if (*a3 >= 2)
  {
    v6 = 0.5;
    if (v5 < *(v4 + 592))
    {
      v6 = -0.5;
    }

    *a2 = *a2 + v6;
  }

  if (*(v4 + 16) >= 0x14u)
  {
    v7 = *(v4 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = *(v4 + 592);
      v10 = 134218496;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I in = %f, bars = %u / %u", &v10, 0x18u);
    }
  }
}

void sub_1012DA1A0(uint64_t a1, double *a2, unsigned int *a3)
{
  v4 = *(a1 + 32);
  v5 = *a3;
  if (*a3 >= 2)
  {
    v6 = 2.0;
    if (v5 < *(v4 + 596))
    {
      v6 = -2.0;
    }

    *a2 = *a2 + v6;
  }

  if (*(v4 + 16) >= 0x14u)
  {
    v7 = *(v4 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = *(v4 + 596);
      v10 = 134218496;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I in = %f, bars = %u / %u", &v10, 0x18u);
    }
  }
}

void sub_1012DA29C(uint64_t a1, double *a2, unsigned int *a3)
{
  v4 = *(a1 + 32);
  v5 = *a3;
  if (*a3 >= 2)
  {
    v6 = 2.0;
    if (v5 < *(v4 + 600))
    {
      v6 = -2.0;
    }

    *a2 = *a2 + v6;
  }

  if (*(v4 + 16) >= 0x14u)
  {
    v7 = *(v4 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = *(v4 + 600);
      v10 = 134218496;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I in = %f, bars = %u / %u", &v10, 0x18u);
    }
  }
}

void sub_1012DA398(uint64_t a1, double *a2, unsigned int *a3)
{
  v4 = *(a1 + 32);
  v5 = *a3;
  if (*a3 >= 2)
  {
    v6 = -0.5;
    if (v5 > *(v4 + 604))
    {
      v6 = 0.5;
    }

    *a2 = *a2 + v6;
  }

  if (*(v4 + 16) >= 0x14u)
  {
    v7 = *(v4 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *a2;
      v9 = *(v4 + 604);
      v10 = 134218496;
      v11 = v8;
      v12 = 1024;
      v13 = v5;
      v14 = 1024;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#I in = %f, bars = %u / %u", &v10, 0x18u);
    }
  }
}

void sub_1012DA49C(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I reset", v5, 2u);
  }

  SignalStrengthModel::reset(a1, a2);
  sub_1012D9EFC(a1, 0);
  *(a1 + 490) = 0;
  sub_1012D9C04(a1);
  sub_1012D9C84(a1);
  *(a1 + 128) = 0xC033000000000000;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0xC061400000000000;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0xC05A800000000000;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0xC061400000000000;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 200) = 0;
  *(a1 + 232) = *(a1 + 224);
  *(a1 + 220) = *(a1 + 216);
  *(a1 + 272) = *(a1 + 264);
  *(a1 + 260) = *(a1 + 256);
  *(a1 + 312) = *(a1 + 304);
  *(a1 + 300) = *(a1 + 296);
  *(a1 + 352) = *(a1 + 344);
  *(a1 + 340) = *(a1 + 336);
  *(a1 + 592) = 0x100000001;
  sub_10071FEE4((a1 + 608), a2);
  sub_1012D9968(*(a1 + 24), *(a1 + 32), a1);
}

double sub_1012DA5D4(uint64_t a1)
{
  result = *(a1 + 16);
  *(a1 + 24) = result;
  *(a1 + 12) = *(a1 + 8);
  return result;
}

void sub_1012DA5F0(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012DA714(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    sub_100004A34(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012DA750(uint64_t result, double *a2, _DWORD *a3)
{
  if (*(result + 12) == *(result + 8))
  {
    v3 = *a2;
  }

  else
  {
    v3 = (1.0 - *(result + 32)) * *(result + 24) + *(result + 32) * *a2;
  }

  *(result + 24) = v3;
  *(result + 12) = *a3;
  return result;
}

uint64_t sub_1012DA790(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::logic_error::logic_error(&v3, "circular_buffer");
    sub_1012DA848(&v3);
  }

  if (a2)
  {

    operator new();
  }

  return 0;
}

void sub_1012DA848(const std::logic_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1012DA8A4(exception, a1);
}

uint64_t sub_1012DA8A4(uint64_t a1, const std::logic_error *a2)
{
  *a1 = &off_101E25E78;
  std::logic_error::logic_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_101F291C0;
  *(a1 + 8) = off_101F291F0;
  *(a1 + 24) = off_101F29218;
  return a1;
}

uint64_t sub_1012DA950(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));
  std::length_error::~length_error((a1 + 8));
  return a1;
}

void sub_1012DAB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100102904(&a9);
  sub_100102904(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1012DABE0(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1012DAE50(exception, a1);
}

void sub_1012DAC3C(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));
  std::length_error::~length_error((a1 + 8));

  operator delete();
}

void sub_1012DACB0(uint64_t a1)
{
  *(a1 + 16) = &off_101E25ED0;
  sub_100102904((a1 + 24));

  std::length_error::~length_error(a1);
}

void sub_1012DAD0C(uint64_t a1)
{
  *(a1 + 16) = &off_101E25ED0;
  sub_100102904((a1 + 24));
  std::length_error::~length_error(a1);

  operator delete();
}

void sub_1012DAD84(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 2);
  sub_100102904(a1 + 1);

  std::length_error::~length_error(v1);
}

void sub_1012DADDC(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 2);
  sub_100102904(a1 + 1);
  std::length_error::~length_error(v1);

  operator delete();
}

uint64_t sub_1012DAE50(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E25E78;
  std::logic_error::logic_error((a1 + 8), (a2 + 8));
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_101E25ED0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_101F291C0;
  *(a1 + 8) = off_101F291F0;
  *(a1 + 24) = off_101F29218;
  return a1;
}

void sub_1012DAF8C(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *a1;
  v6 = v3 - v2;
  v7 = (v3 - v5) >> 3;
  if (v4 < v6 >> 3)
  {
    v7 = 0;
  }

  *(a1 + 16) = v2 + 8 * (v4 - v7);
  if (v5)
  {
    operator delete(v5);
  }
}

_DWORD *sub_1012DAFC8(_DWORD *result, double *a2)
{
  v2 = *a2;
  if ((*a2 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    sub_1012DB078("boost::math::round<%1%>(%1%)", "Value %1% can not be represented in the target integer type.");
  }

  v3 = 0.0;
  if (fabs(v2) >= 0.5)
  {
    if (v2 <= 0.0)
    {
      v3 = floor(v2);
      v4 = v2 - v3;
      v5 = 1.0;
    }

    else
    {
      v3 = ceil(v2);
      v4 = v3 - v2;
      v5 = -1.0;
    }

    v6 = v3 + v5;
    if (v4 > 0.5)
    {
      v3 = v6;
    }
  }

  *result = v3;
  return result;
}

void sub_1012DB078(char *a1, char *a2)
{
  v2 = "Unknown function operating on type %1%";
  if (a1)
  {
    v2 = a1;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = "Cause unknown: error caused by bad argument with value %1%";
  }

  memset(&v27, 0, sizeof(v27));
  sub_10000501C(&v27, v2);
  memset(&v26, 0, sizeof(v26));
  sub_10000501C(&v26, v3);
  memset(&v25, 0, sizeof(v25));
  sub_10000501C(&v25, "Error in function ");
  v4 = 0;
  v5 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
  v6 = SHIBYTE(v27.__r_.__value_.__r.__words[2]) >> 63;
  size = v27.__r_.__value_.__l.__size_;
  v7 = v27.__r_.__value_.__r.__words[0];
  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = &v27;
  }

  else
  {
    v9 = v27.__r_.__value_.__r.__words[0];
  }

  if ((v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v10 = SHIBYTE(v27.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v10 = v27.__r_.__value_.__l.__size_;
  }

  do
  {
    v11 = v10 - v4;
    if ((v10 - v4) < 3)
    {
      break;
    }

    v12 = v9 + v10;
    v13 = v9 + v4;
    while (1)
    {
      v14 = memchr(v13, 37, v11 - 2);
      if (!v14)
      {
        goto LABEL_30;
      }

      if (*v14 == 12581 && v14[2] == 37)
      {
        break;
      }

      v13 = v14 + 1;
      v11 = v12 - v13;
      if (v12 - v13 < 3)
      {
        goto LABEL_30;
      }
    }

    if (v14 == v12)
    {
      break;
    }

    v16 = v14 - v9;
    if (v16 == -1)
    {
      break;
    }

    std::string::replace(&v27, v16, 3uLL, "double", 6uLL);
    v4 = v16 + 6;
    v5 = HIBYTE(v27.__r_.__value_.__r.__words[2]);
    v6 = SHIBYTE(v27.__r_.__value_.__r.__words[2]) >> 63;
    size = v27.__r_.__value_.__l.__size_;
    v7 = v27.__r_.__value_.__r.__words[0];
    v9 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v27 : v27.__r_.__value_.__r.__words[0];
    v10 = (v27.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(v27.__r_.__value_.__r.__words[2]) : v27.__r_.__value_.__l.__size_;
  }

  while (v10 >= v4);
LABEL_30:
  if (v6)
  {
    v17 = v7;
  }

  else
  {
    v17 = &v27;
  }

  if (v6)
  {
    v18 = size;
  }

  else
  {
    v18 = v5;
  }

  std::string::append(&v25, v17, v18);
  std::string::append(&v25, ": ", 2uLL);
  v23[0] = 0;
  v23[1] = 0;
  v24 = 0;
  sub_1012DB458(v23);
  if (v24 >= 0)
  {
    v19 = v23;
  }

  else
  {
    v19 = v23[0];
  }

  sub_1012DB318(&v26, "%1%", v19);
  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v20 = &v26;
  }

  else
  {
    v20 = v26.__r_.__value_.__r.__words[0];
  }

  if ((v26.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v21 = HIBYTE(v26.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v21 = v26.__r_.__value_.__l.__size_;
  }

  std::string::append(&v25, v20, v21);
  v22.__vftable = 0;
  v22.__imp_.__imp_ = 0;
  std::runtime_error::runtime_error(&v22, &v25);
  v22.__vftable = &off_101F29238;
  sub_1012DB708(&v22);
}

void sub_1012DB298(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::runtime_error a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012DB318(std::string *a1, char *__s, const char *a3)
{
  v6 = strlen(__s);
  result = strlen(a3);
  v8 = result;
  v9 = 0;
  v10 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
  if (v10 >= 0)
  {
    v11 = a1;
  }

  else
  {
    v11 = a1->__r_.__value_.__r.__words[0];
  }

  if (v10 >= 0)
  {
    size = HIBYTE(a1->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a1->__r_.__value_.__l.__size_;
  }

  v13 = v6;
  while (!v13)
  {
LABEL_18:
    if (v9 != -1)
    {
      v19 = strlen(a3);
      std::string::replace(a1, v9, v6, a3, v19);
      v9 += v8;
      v20 = SHIBYTE(a1->__r_.__value_.__r.__words[2]);
      v11 = v20 >= 0 ? a1 : a1->__r_.__value_.__r.__words[0];
      size = v20 >= 0 ? HIBYTE(a1->__r_.__value_.__r.__words[2]) : a1->__r_.__value_.__l.__size_;
      result = strlen(__s);
      v13 = result;
      if (size >= v9)
      {
        continue;
      }
    }

    return result;
  }

  v14 = size - v9;
  if ((size - v9) >= v13)
  {
    v15 = v11 + size;
    result = v11 + v9;
    v16 = *__s;
    do
    {
      v17 = v14 - v13;
      if (v17 == -1)
      {
        break;
      }

      result = memchr(result, v16, v17 + 1);
      if (!result)
      {
        break;
      }

      v18 = result;
      result = memcmp(result, __s, v13);
      if (!result)
      {
        if (v18 == v15)
        {
          return result;
        }

        v9 = v18 - v11;
        goto LABEL_18;
      }

      result = v18 + 1;
      v14 = v15 - (v18 + 1);
    }

    while (v14 >= v13);
  }

  return result;
}

uint64_t sub_1012DB458@<X0>(_BYTE *a1@<X8>)
{
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  *__p = 0u;
  v13 = 0u;
  v10 = 0u;
  *__src = 0u;
  v8 = 0u;
  v9 = 0u;
  v7 = 0u;
  sub_10000C320(&v7);
  *(&v8 + *(v8 - 24) + 16) = 17;
  std::ostream::operator<<();
  if ((BYTE8(v14) & 0x10) != 0)
  {
    v3 = v14;
    if (v14 < __src[1])
    {
      *&v14 = __src[1];
      v3 = __src[1];
    }

    v4 = __src[0];
  }

  else
  {
    if ((BYTE8(v14) & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    v4 = *(&v9 + 1);
    v3 = *(&v10 + 1);
  }

  v2 = v3 - v4;
  if ((v3 - v4) >= 0x7FFFFFFFFFFFFFF8)
  {
    sub_1000A2378();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, v4, v2);
  }

LABEL_14:
  a1[v2] = 0;
  *&v8 = v5;
  if (SHIBYTE(v13) < 0)
  {
    operator delete(__p[1]);
  }

  std::locale::~locale(&v9);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1012DB6E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void sub_1012DB708(const std::runtime_error *a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1012DB7A0(exception, a1);
}

void sub_1012DB768(std::runtime_error *a1)
{
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

uint64_t sub_1012DB7A0(uint64_t a1, const std::runtime_error *a2)
{
  *a1 = &off_101E25E78;
  std::runtime_error::runtime_error((a1 + 8), a2);
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = -1;
  *a1 = &off_101F292C0;
  *(a1 + 8) = off_101F292F0;
  *(a1 + 24) = off_101F29318;
  return a1;
}

uint64_t sub_1012DB84C(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));
  return a1;
}

void sub_1012DBA70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_100102904(&a9);
  sub_100102904(&a10);
  (*(*v10 + 24))(v10);
  _Unwind_Resume(a1);
}

void sub_1012DBADC(uint64_t a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  sub_1012DBD4C(exception, a1);
}

void sub_1012DBB38(uint64_t a1)
{
  *(a1 + 24) = &off_101E25ED0;
  sub_100102904((a1 + 32));
  std::runtime_error::~runtime_error((a1 + 8));

  operator delete();
}

void sub_1012DBBAC(uint64_t a1)
{
  *(a1 + 16) = &off_101E25ED0;
  sub_100102904((a1 + 24));

  std::runtime_error::~runtime_error(a1);
}

void sub_1012DBC08(uint64_t a1)
{
  *(a1 + 16) = &off_101E25ED0;
  sub_100102904((a1 + 24));
  std::runtime_error::~runtime_error(a1);

  operator delete();
}

void sub_1012DBC80(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 2);
  sub_100102904(a1 + 1);

  std::runtime_error::~runtime_error(v1);
}

void sub_1012DBCD8(void *a1)
{
  *a1 = &off_101E25ED0;
  v1 = (a1 - 2);
  sub_100102904(a1 + 1);
  std::runtime_error::~runtime_error(v1);

  operator delete();
}

uint64_t sub_1012DBD4C(uint64_t a1, uint64_t a2)
{
  *a1 = &off_101E25E78;
  std::runtime_error::runtime_error((a1 + 8), (a2 + 8));
  *(a1 + 8) = &off_101F29238;
  v4 = *(a2 + 32);
  *(a1 + 24) = &off_101E25ED0;
  *(a1 + 32) = v4;
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  *a1 = &off_101F292C0;
  *(a1 + 8) = off_101F292F0;
  *(a1 + 24) = off_101F29318;
  return a1;
}

uint64_t *sub_1012DBE88(uint64_t a1, unsigned int *a2)
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

void *sub_1012DBF5C(void *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = result[4];
  if (v4 == (v3 - *result) >> 3)
  {
    if (v3 != v2)
    {
      v5 = result[3];
      *v5 = *a2;
      v6 = v5 + 1;
      if (v6 != v3)
      {
        v2 = v6;
      }

      result[2] = v2;
      result[3] = v2;
    }
  }

  else
  {
    v7 = result[3];
    *v7 = *a2;
    v8 = v7 + 1;
    if (v8 != v3)
    {
      v2 = v8;
    }

    result[3] = v2;
    result[4] = v4 + 1;
  }

  return result;
}

void sub_1012DBFB4(uint64_t *a1, int64_t a2, int64_t a3, uint64_t *a4)
{
  v8 = *a1;
  if (a2 == (a1[1] - *a1) >> 3)
  {
    v9 = *a4;
    if (*a4)
    {
      v10 = 0;
      v11 = *a4[1];
      v12 = vdupq_n_s64(v9 - 1);
      do
      {
        v13 = vmovn_s64(vcgeq_u64(v12, vorrq_s8(vdupq_n_s64(v10), xmmword_1017DF6E0)));
        if (v13.i8[0])
        {
          *(v8 + 8 * v10) = v11;
        }

        if (v13.i8[4])
        {
          *(v8 + 8 * v10 + 8) = v11;
        }

        v10 += 2;
      }

      while (((v9 + 1) & 0xFFFFFFFFFFFFFFFELL) != v10);
    }
  }

  else
  {
    v14 = sub_1012DA790(a1, a2);
    v8 = v14;
    v15 = *a4;
    if (*a4)
    {
      v16 = 0;
      v17 = *a4[1];
      v18 = (v15 + 1) & 0xFFFFFFFFFFFFFFFELL;
      v19 = vdupq_n_s64(v15 - 1);
      v20 = (v14 + 8);
      do
      {
        v21 = vmovn_s64(vcgeq_u64(v19, vorrq_s8(vdupq_n_s64(v16), xmmword_1017DF6E0)));
        if (v21.i8[0])
        {
          *(v20 - 1) = v17;
        }

        if (v21.i8[4])
        {
          *v20 = v17;
        }

        v16 += 2;
        v20 += 2;
      }

      while (v18 != v16);
    }

    sub_1012DAF8C(a1);
    *a1 = v8;
    a1[1] = v8 + 8 * a2;
  }

  if (a2 <= a3)
  {
    v22 = a2;
  }

  else
  {
    v22 = 0;
  }

  a1[2] = v8;
  a1[3] = v8 + 8 * (a3 - v22);
  a1[4] = a3;
}

void *sub_1012DC108(void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  sub_1012DC160(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t sub_1012DC160(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = sub_1012DC1E8(v5, v5 + 1, v4 + 8);
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

uint64_t sub_1012DC1E8(void *a1, uint64_t *a2, unsigned int *a3)
{
  v5 = 0;
  v6 = 0;
  v3 = *sub_1012DC284(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t *sub_1012DC284(void *a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
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

void sub_1012DC430(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012DC468(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void SignalStrengthController::create(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012DCFA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  ctu::OsLogLogger::~OsLogLogger(va);
  sub_1000C0544(v6);
  ctu::OsLogContext::~OsLogContext(va1);
  if (v5)
  {
    dispatch_release(v5);
  }

  JUMPOUT(0x1012DCEF0);
}

const char *sub_1012DCFE4(int a1)
{
  v1 = "sig.?";
  if (a1 == 2)
  {
    v1 = "sig.2";
  }

  if (a1 == 1)
  {
    return "sig.1";
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1012DD010(uint64_t a1)
{
  sub_10006DCAC(a1 + 32, *(a1 + 40));

  return sub_1012E159C(a1);
}

void sub_1012DD050(uint64_t a1, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
    dispatch_group_enter(object);
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012DD150(uint64_t a1)
{
  *a1 = off_101F293B0;
  v2 = (a1 + 8);
  *(a1 + 8) = off_101F29420;
  v3 = (a1 + 16);
  *(a1 + 16) = off_101F29448;
  sub_1012DD348(a1);
  v4 = *(a1 + 440);
  if (v4)
  {
    dispatch_release(v4);
  }

  v5 = *(a1 + 432);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 416);
  if (v6)
  {
    sub_100004A34(v6);
  }

  sub_1000FEFCC((a1 + 384));
  v7 = *(a1 + 376);
  *(a1 + 376) = 0;
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  sub_100D92208(*(a1 + 360));
  sub_10004C4EC(a1 + 328, *(a1 + 336));
  sub_10032D3A4(a1 + 296, *(a1 + 304));
  sub_10004EC58(a1 + 272, *(a1 + 280));
  sub_10006DCAC(a1 + 224, *(a1 + 232));
  sub_10006DCAC(a1 + 200, *(a1 + 208));
  sub_10006DCAC(a1 + 176, *(a1 + 184));
  sub_10006DCAC(a1 + 152, *(a1 + 160));
  sub_1012E159C(a1 + 120);
  v8 = *(a1 + 112);
  if (v8)
  {
    sub_100004A34(v8);
  }

  v9 = *(a1 + 88);
  *(a1 + 88) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 80);
  if (v10)
  {
    sub_100004A34(v10);
  }

  v11 = *(a1 + 64);
  *(a1 + 64) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  ctu::OsLogLogger::~OsLogLogger((a1 + 56));
  sub_1000C0544((a1 + 24));
  SignalStrengthModelDelegateInterface::~SignalStrengthModelDelegateInterface(v3);
  LinkQualityMetricModelDelegateInterface::~LinkQualityMetricModelDelegateInterface(v2);

  SignalStrengthInterface::~SignalStrengthInterface(a1);
}

uint64_t sub_1012DD348(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = CSIBOOLAsString(*(a1 + 376) != 0);
    v5 = 136315138;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Stopping timer (has timer=%s)", &v5, 0xCu);
  }

  result = *(a1 + 376);
  *(a1 + 376) = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_1012DD438(uint64_t a1)
{
  sub_1012DD150(a1);

  operator delete();
}

void sub_1012DD470(uint64_t a1)
{
  sub_1012DD150(a1 - 8);

  operator delete();
}

void sub_1012DD4AC(uint64_t a1)
{
  sub_1012DD150(a1 - 16);

  operator delete();
}

uint64_t sub_1012DD4E8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 296);
  v3 = (result + 304);
  if (v2 != (result + 304))
  {
    v4 = result;
    v5 = (a2 + 8);
    while (1)
    {
      v6 = *v5;
      if (!*v5)
      {
        break;
      }

      v7 = *(v2 + 8);
      v8 = v5;
      do
      {
        if (*(v6 + 32) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 32) < v7));
      }

      while (v6);
      if (v8 == v5 || v7 < *(v8 + 8))
      {
        goto LABEL_19;
      }

      result = rest::operator==();
      if ((result & 1) == 0)
      {
        v16 = *(v2 + 8);
        v17 = *(*(**(v4 + 64) + 16))(*(v4 + 64), v16);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          v18 = asString();
          *buf = 136315138;
          v22 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Received Operator Bundle setup: %s", buf, 0xCu);
        }

        result = sub_10000BA08(*(v4 + 360), v16);
        v19 = *(*result + 8);
        v20 = *(*result + 16);
        while (v19 != v20)
        {
          result = (*(**(v19 + 8) + 88))(*(v19 + 8));
          v19 += 24;
        }
      }

LABEL_11:
      v9 = v2[1];
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
          v10 = v2[2];
          v11 = *v10 == v2;
          v2 = v10;
        }

        while (!v11);
      }

      v2 = v10;
      if (v10 == v3)
      {
        return result;
      }
    }

    v7 = *(v2 + 8);
LABEL_19:
    v12 = *(*(**(v4 + 64) + 16))(*(v4 + 64), v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = asString();
      *buf = 136315138;
      v22 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I Received Operator Bundle setup: %s", buf, 0xCu);
    }

    result = sub_10000BA08(*(v4 + 360), v7);
    v14 = *(*result + 8);
    v15 = *(*result + 16);
    while (v14 != v15)
    {
      result = (*(**(v14 + 8) + 88))(*(v14 + 8));
      v14 += 24;
    }

    goto LABEL_11;
  }

  return result;
}

void sub_1012DD790(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v6 = (*(**(a1 + 64) + 16))(*(a1 + 64));
  v7 = *sub_10000BA08(*(a1 + 360), a2);
  v8 = sub_10000BA08(*(a1 + 360), a2);
  if (a3 > 0xA)
  {
    v9 = 1;
  }

  else
  {
    v9 = dword_10194B40C[a3];
  }

  v10 = *v8;
  v11 = sub_10000BA08(*(a1 + 360), a2);
  v12 = *(*v11 + 8);
  v13 = *(*v11 + 16);
  if (v12 != v13)
  {
    while (*v12 != v9)
    {
      v12 += 6;
      if (v12 == v13)
      {
        goto LABEL_14;
      }
    }
  }

  if (v12 == v13)
  {
LABEL_14:
    v16 = 0;
    v15 = 0;
    goto LABEL_15;
  }

  v14 = *v12;
  v16 = *(v12 + 1);
  v15 = *(v12 + 2);
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v14)
  {
LABEL_15:
    v17 = v16 != 0;
    if (!v15)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  v17 = 1;
  if (v15)
  {
LABEL_16:
    sub_100004A34(v15);
  }

LABEL_17:
  if (v17)
  {
    v18 = v9;
  }

  else
  {
    v18 = 1;
  }

  v19 = *(v7 + 8);
  v20 = *(v7 + 16);
  if (v19 != v20)
  {
    while (*v19 != v18)
    {
      v19 += 6;
      if (v19 == v20)
      {
        goto LABEL_27;
      }
    }
  }

  if (v19 == v20)
  {
LABEL_27:
    v21 = 0;
    v23 = 0;
    v22 = 0;
  }

  else
  {
    v21 = *v19;
    v23 = *(v19 + 1);
    v22 = *(v19 + 2);
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  if (v21 == *(v10 + 32) && v23 == *(v10 + 40))
  {
    v27 = *v6;
    if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 136315138;
      v29 = asString();
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "#I Ignoring RAT change %s", &v28, 0xCu);
    }
  }

  else
  {
    sub_1012DD348(a1);
    *(v10 + 32) = v21;
    if (v22)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v24 = *(v10 + 48);
    *(v10 + 40) = v23;
    *(v10 + 48) = v22;
    if (v24)
    {
      sub_100004A34(v24);
      v23 = *(v10 + 40);
    }

    SignalStrengthModel::setForceNotificationOnNextHeartbeat(v23, 1);
    v25 = *v6;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = (*(**(v10 + 40) + 16))(*(v10 + 40));
      v28 = 136315138;
      v29 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "#I Selected model: %s", &v28, 0xCu);
    }

    if (isSet())
    {
      sub_10000B904(a1, a2, 1);
      sub_1012DE174(a1);
      sub_1012DDBB4(a1, a2);
    }
  }

  if (v22)
  {
    sub_100004A34(v22);
  }
}

void sub_1012DDAA0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012DDAC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_10002D1D0(&v10, a1, a2);
  v6 = v10;
  if (v10)
  {
    *(v10 + 56) = 0;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    while (v7 != v8)
    {
      (*(**(v7 + 8) + 40))(*(v7 + 8), a3);
      v7 += 24;
    }

    sub_1000765F8(a1, a2);
  }

  v9 = v11;
  if (v11)
  {

    sub_100004A34(v9);
  }
}

void sub_1012DDB98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012DDBB4(uint64_t a1, uint64_t a2)
{
  v4 = *(*(**(a1 + 64) + 16))(*(a1 + 64));
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Polling for latest values", v6, 2u);
  }

  return (*(**(a1 + 408) + 40))(*(a1 + 408), a2);
}

void sub_1012DDC78(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 352);
  v4 = (a1 + 360);
  if (v3 != (a1 + 360))
  {
    v5 = (a2 + 8);
    v6 = (a1 + 184);
    do
    {
      v7 = *(v3 + 8);
      v8 = (*(**(a1 + 64) + 16))(*(a1 + 64), v7);
      v9 = v8;
        ;
      }

      v11 = *v6;
      if (!*v6)
      {
        goto LABEL_12;
      }

      v12 = a1 + 184;
      do
      {
        if (*(v11 + 28) >= v7)
        {
          v12 = v11;
        }

        v11 = *(v11 + 8 * (*(v11 + 28) < v7));
      }

      while (v11);
      if (v12 != v6 && *(v12 + 28) <= v7)
      {
        v13 = *(v12 + 32);
      }

      else
      {
LABEL_12:
        v13 = 11;
      }

      v14 = *v8;
      if (os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT))
      {
        v15 = asString();
        v16 = asString();
        *buf = 136315394;
        v43 = v15;
        v44 = 2080;
        v45 = v16;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Handling RAT changed from %s to %s", buf, 0x16u);
      }

      sub_1012DD790(a1, v7, v13);
      v17 = *(*sub_10000BA08(*(a1 + 360), v7) + 40);
      if (*(v17 + 16) != v13)
      {
        *(v17 + 16) = v13;
        SignalStrengthModel::setImmediateMode(v17);
        v18 = *v9;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Resetting state due to RAT change", buf, 2u);
        }

        sub_1012DDAC0(a1, v7, 0);
        sub_1012DDBB4(a1, v7);
      }

      v19 = isSet();
      v20 = *v4;
      if (*v4)
      {
        v21 = v19;
        v22 = v4;
        do
        {
          if (*(v20 + 32) >= v7)
          {
            v22 = v20;
          }

          v20 = *(v20 + 8 * (*(v20 + 32) < v7));
        }

        while (v20);
        if (v22 != v4 && *(v22 + 8) <= v7)
        {
          v23 = v22[5];
          v24 = *(v23 + 80);
          v25 = *(v23 + 88);
          if (v25)
          {
            atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (v24)
          {
            (*(*v24 + 56))(v24, v21);
          }

          if (v25)
          {
            sub_100004A34(v25);
          }
        }

        v26 = *v4;
        if (*v4)
        {
          v27 = v4;
          do
          {
            if (*(v26 + 32) >= v7)
            {
              v27 = v26;
            }

            v26 = *(v26 + 8 * (*(v26 + 32) < v7));
          }

          while (v26);
          if (v27 != v4 && *(v27 + 8) <= v7)
          {
            v28 = v27[5];
            v29 = *(v28 + 96);
            v30 = *(v28 + 104);
            if (v30)
            {
              atomic_fetch_add_explicit(&v30->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v29)
            {
              (*(*v29 + 56))(v29, v21);
            }

            if (v30)
            {
              sub_100004A34(v30);
            }
          }

          v31 = *v4;
          if (*v4)
          {
            v32 = v4;
            do
            {
              if (*(v31 + 32) >= v7)
              {
                v32 = v31;
              }

              v31 = *(v31 + 8 * (*(v31 + 32) < v7));
            }

            while (v31);
            if (v32 != v4 && *(v32 + 8) <= v7)
            {
              v33 = v32[5];
              v34 = *(v33 + 112);
              v35 = *(v33 + 120);
              if (v35)
              {
                atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v34)
              {
                (*(*v34 + 56))(v34, v21);
              }

              if (v35)
              {
                sub_100004A34(v35);
              }
            }
          }
        }
      }

      v36 = v3[1];
      if (v36)
      {
        do
        {
          v37 = v36;
          v36 = *v36;
        }

        while (v36);
      }

      else
      {
        do
        {
          v37 = v3[2];
          v38 = *v37 == v3;
          v3 = v37;
        }

        while (!v38);
      }

      v3 = v37;
    }

    while (v37 != v4);
  }

  v39 = *(a1 + 176);
  if (v39 != (a1 + 184))
  {
    while ((isSet() & 1) == 0)
    {
      v40 = v39[1];
      if (v40)
      {
        do
        {
          v41 = v40;
          v40 = *v40;
        }

        while (v40);
      }

      else
      {
        do
        {
          v41 = v39[2];
          v38 = *v41 == v39;
          v39 = v41;
        }

        while (!v38);
      }

      v39 = v41;
      if (v41 == (a1 + 184))
      {
        return;
      }
    }

    if (!*(a1 + 376))
    {

      sub_1012DE174(a1);
    }
  }
}

void sub_1012DE14C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012DE174(uint64_t a1)
{
  v2 = *(a1 + 352);
  v3 = (a1 + 360);
  v4 = 1000;
  if (v2 != (a1 + 360))
  {
    do
    {
      v5 = sub_10000BA08(*v3, *(v2 + 8));
      v6 = (*(**(*v5 + 40) + 32))(*(*v5 + 40));
      if (v6 < v4)
      {
        v4 = v6;
      }

      v7 = v2[1];
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
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
    }

    while (v8 != v3);
  }

  v10 = *(a1 + 56);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    *&buf[4] = v4;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Heartbeat interval %lld ms", buf, 0xCu);
  }

  *buf = 0uLL;
  Registry::getTimerService(buf, *(a1 + 72));
  v11 = *buf;
  sub_10000501C(__p, "signal strength heartbeat");
  v12 = *(a1 + 40);
  object = v12;
  if (v12)
  {
    dispatch_retain(v12);
  }

  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 0x40000000;
  aBlock[2] = sub_10000A608;
  aBlock[3] = &unk_101F29468;
  aBlock[4] = a1;
  v17 = _Block_copy(aBlock);
  sub_100E7CA80(v11, __p, 0, 1000 * v4, &object, &v17);
  v13 = v21;
  v21 = 0;
  v14 = *(a1 + 376);
  *(a1 + 376) = v13;
  if (v14)
  {
    (*(*v14 + 8))(v14);
    v15 = v21;
    v21 = 0;
    if (v15)
    {
      (*(*v15 + 8))(v15);
    }
  }

  if (v17)
  {
    _Block_release(v17);
  }

  if (object)
  {
    dispatch_release(object);
  }

  if (v20 < 0)
  {
    operator delete(__p[0]);
  }

  if (*&buf[8])
  {
    sub_100004A34(*&buf[8]);
  }
}

void sub_1012DE3EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *aBlock, dispatch_object_t object, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012DE454(uint64_t a1, int a2)
{
  v4 = **a1;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = CSIBOOLAsString(*(a1 + 58));
    v6 = 136315394;
    v7 = v5;
    v8 = 2080;
    v9 = CSIBOOLAsString(a2);
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I In progress is changing from %s to %s", &v6, 0x16u);
  }

  *(a1 + 58) = a2;
}

void sub_1012DE524(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[6] = a5;
  aBlock = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 0x40000000;
  v9[2] = sub_1012E4368;
  v9[3] = &unk_101F29820;
  v9[4] = a2;
  v9[5] = a4;
  aBlock = _Block_copy(v9);
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = std::__shared_weak_count::lock(v6);
    if (v7)
    {
      v8 = v7;
      sub_10070F24C(v11, &aBlock, *(a2 + 16));
      sub_10070F294(v12, v11);
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012DE740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, char a19)
{
  if (!a2)
  {
    _Unwind_Resume(exception_object);
  }

  sub_10004F058(exception_object);
}

void sub_1012DE7E8(uint64_t a1)
{
  v1 = *(a1 + 352);
  v2 = (a1 + 360);
  if (v1 != (a1 + 360))
  {
    do
    {
      v4 = v1[5];
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      while (v5 != v6)
      {
        SignalStrengthModel::setImmediateMode(*(v5 + 8));
        v5 += 24;
      }

      sub_1000765F8(a1, *(v1 + 8));
      v7 = v1[1];
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
          v8 = v1[2];
          v9 = *v8 == v1;
          v1 = v8;
        }

        while (!v9);
      }

      v1 = v8;
    }

    while (v8 != v2);
  }
}

void sub_1012DE8A4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v13[0] = 67109120;
    v13[1] = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Setting verbosity to %u", v13, 8u);
  }

  v5 = *(a1 + 352);
  v6 = (a1 + 360);
  if (v5 != v6)
  {
    do
    {
      v7 = v5[5];
      v8 = *(v7 + 8);
      v9 = *(v7 + 16);
      while (v8 != v9)
      {
        (*(**(v8 + 8) + 96))(*(v8 + 8), a2);
        v8 += 24;
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

    while (v11 != v6);
  }
}

void sub_1012DE9E4(uint64_t a1)
{
  v2 = *(a1 + 152);
  v3 = (a1 + 160);
  if (v2 != (a1 + 160))
  {
    do
    {
      v4 = *(*(**(a1 + 64) + 16))(*(a1 + 64), *(v2 + 7));
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(v2 + 8);
        *buf = 67109120;
        LODWORD(v30) = v5;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Signal bars: %d", buf, 8u);
      }

      v6 = v2[1];
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
          v7 = v2[2];
          v8 = *v7 == v2;
          v2 = v7;
        }

        while (!v8);
      }

      v2 = v7;
    }

    while (v7 != v3);
  }

  v9 = *(a1 + 56);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CSIBOOLAsString(*(a1 + 268));
    *buf = 136315138;
    v30 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Cellular data setting = %s", buf, 0xCu);
  }

  v11 = *(a1 + 352);
  if (v11 != (a1 + 360))
  {
    do
    {
      v12 = v11[5];
      v13 = **v12;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CSIBOOLAsString(*(v12 + 56));
        *buf = 136315138;
        v30 = v14;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I fLastHeartBeatAccepted = %s", buf, 0xCu);
        v13 = **v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v15 = CSIBOOLAsString(*(v12 + 58));
        *buf = 136315138;
        v30 = v15;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I fInProgress = %s", buf, 0xCu);
        v13 = **v12;
      }

      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v16 = CSIBOOLAsString(*(v12 + 57));
        *buf = 136315138;
        v30 = v16;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I fRunning = %s", buf, 0xCu);
      }

      if (*(v12 + 32))
      {
        v17 = *v12;
      }

      else
      {
        v17 = *v12;
        if (!*(v12 + 40))
        {
          v28 = *v17;
          if (!os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_25;
          }

          *buf = 0;
          v20 = v28;
          v21 = "#I No active model";
          v22 = 2;
          goto LABEL_24;
        }
      }

      v18 = *v17;
      if (os_log_type_enabled(*v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = (*(**(v12 + 40) + 16))(*(v12 + 40));
        *buf = 136315138;
        v30 = v19;
        v20 = v18;
        v21 = "#I Selected model: %s";
        v22 = 12;
LABEL_24:
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, v22);
      }

LABEL_25:
      v23 = *(v12 + 80);
      if (v23)
      {
        (*(*v23 + 64))(v23);
      }

      v24 = *(v12 + 96);
      if (v24)
      {
        (*(*v24 + 64))(v24);
      }

      v25 = *(v12 + 112);
      if (v25)
      {
        (*(*v25 + 64))(v25);
      }

      v26 = v11[1];
      if (v26)
      {
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26);
      }

      else
      {
        do
        {
          v27 = v11[2];
          v8 = *v27 == v11;
          v11 = v27;
        }

        while (!v8);
      }

      v11 = v27;
    }

    while (v27 != (a1 + 360));
  }
}

void sub_1012DEE18(uint64_t a1, int a2)
{
  v2 = *(a1 + 256);
  if (v2 != a2)
  {
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = CSIBOOLAsString(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Airplane mode is now %s", &v13, 0xCu);
    }

    v5 = *(a1 + 352);
    if (v5 != (a1 + 360))
    {
      do
      {
        v6 = v5[5];
        v7 = v6[10];
        if (v7)
        {
          (*(*v7 + 48))(v7, *(a1 + 256));
          v6 = v5[5];
        }

        v8 = v6[12];
        if (v8)
        {
          (*(*v8 + 48))(v8, *(a1 + 256));
          v6 = v5[5];
        }

        v9 = v6[14];
        if (v9)
        {
          (*(*v9 + 48))(v9, *(a1 + 256));
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

      while (v11 != (a1 + 360));
    }
  }
}

void sub_1012DEFB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 264);
  if ((BYTE4(a2) & 1) != v2)
  {
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315138;
      v14 = CSIBOOLAsString(v2);
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Radio in reset is now: %s", &v13, 0xCu);
    }

    v5 = *(a1 + 352);
    if (v5 != (a1 + 360))
    {
      do
      {
        v6 = v5[5];
        v7 = v6[10];
        if (v7)
        {
          (*(*v7 + 32))(v7, *(a1 + 264));
          v6 = v5[5];
        }

        v8 = v6[12];
        if (v8)
        {
          (*(*v8 + 32))(v8, *(a1 + 264));
          v6 = v5[5];
        }

        v9 = v6[14];
        if (v9)
        {
          (*(*v9 + 32))(v9, *(a1 + 264));
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

      while (v11 != (a1 + 360));
    }
  }
}

void sub_1012DF15C(uint64_t a1, int a2)
{
  if (*(a1 + 268) != a2)
  {
    v4 = *(a1 + 56);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CSIBOOLAsString(a2);
      v6 = CSIBOOLAsString(*(a1 + 268));
      v15 = 136315394;
      v16 = v5;
      v17 = 2080;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Cellular data setting changed from %s to %s", &v15, 0x16u);
    }

    v7 = *(a1 + 352);
    if (v7 != (a1 + 360))
    {
      do
      {
        v8 = v7[5];
        v9 = v8[10];
        if (v9)
        {
          (*(*v9 + 40))(v9, *(a1 + 268));
          v8 = v7[5];
        }

        v10 = v8[12];
        if (v10)
        {
          (*(*v10 + 40))(v10, *(a1 + 268));
          v8 = v7[5];
        }

        v11 = v8[14];
        if (v11)
        {
          (*(*v11 + 40))(v11, *(a1 + 268));
        }

        v12 = v7[1];
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
            v13 = v7[2];
            v14 = *v13 == v7;
            v7 = v13;
          }

          while (!v14);
        }

        v7 = v13;
      }

      while (v13 != (a1 + 360));
    }
  }
}

uint64_t sub_1012DF318(uint64_t result, uint64_t a2)
{
  v2 = *(result + 200);
  v3 = (result + 208);
  if (v2 != (result + 208))
  {
    v4 = result;
    v5 = (a2 + 8);
    do
    {
      v6 = *v5;
      v7 = *(v2 + 7);
      if (!*v5)
      {
        goto LABEL_10;
      }

      v8 = v5;
      do
      {
        if (*(v6 + 28) >= v7)
        {
          v8 = v6;
        }

        v6 = *(v6 + 8 * (*(v6 + 28) < v7));
      }

      while (v6);
      if (v8 != v5 && v7 >= *(v8 + 7))
      {
        v9 = *(v2 + 32);
        if (*(v8 + 32) != v9)
        {
          result = subscriber::isValidSimSlot();
          if (result)
          {
            v16 = *v5;
            if (!*v5)
            {
              goto LABEL_18;
            }

            v11 = v5;
            do
            {
              if (*(v16 + 28) >= v7)
              {
                v11 = v16;
              }

              v16 = *(v16 + 8 * (*(v16 + 28) < v7));
            }

            while (v16);
LABEL_16:
            if (v11 != v5 && *(v11 + 7) <= v7)
            {
              v12 = *(v11 + 32);
            }

            else
            {
LABEL_18:
              v12 = 0;
            }

            result = sub_1012E01DC(v4, v7, v12 & 1, v9);
          }
        }
      }

      else
      {
LABEL_10:
        v9 = *(v2 + 32);
        result = subscriber::isValidSimSlot();
        if (result)
        {
          v10 = *v5;
          if (*v5)
          {
            v11 = v5;
            do
            {
              if (*(v10 + 28) >= v7)
              {
                v11 = v10;
              }

              v10 = *(v10 + 8 * (*(v10 + 28) < v7));
            }

            while (v10);
            goto LABEL_16;
          }

          goto LABEL_18;
        }
      }

      v13 = v2[1];
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
          v14 = v2[2];
          v15 = *v14 == v2;
          v2 = v14;
        }

        while (!v15);
      }

      v2 = v14;
    }

    while (v14 != v3);
  }

  return result;
}

void sub_1012DF488(uint64_t a1, void *a2)
{
  v4 = *a2;
  if (a2[2] == *(a1 + 344))
  {
    v5 = a2 + 1;
    if (v4 == a2 + 1)
    {
      return;
    }

    v6 = *(a1 + 328);
    while (*(v4 + 8) == *(v6 + 8) && rest::operator==())
    {
      v7 = v4[1];
      v8 = v4;
      if (v7)
      {
        do
        {
          v4 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v4 = v8[2];
          v33 = *v4 == v8;
          v8 = v4;
        }

        while (!v33);
      }

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
          v33 = *v10 == v6;
          v6 = v10;
        }

        while (!v33);
      }

      v6 = v10;
      if (v4 == v5)
      {
        return;
      }
    }

    v4 = *a2;
  }

  v56[0] = 0;
  v56[1] = 0;
  v55 = v56;
  if (v4 != a2 + 1)
  {
    do
    {
      v11 = *(v4 + 109);
      *buf = v4 + 4;
      *(sub_100051AD8(&v55, v4 + 8) + 32) = v11;
      v12 = v4[1];
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
          v13 = v4[2];
          v33 = *v13 == v4;
          v4 = v13;
        }

        while (!v33);
      }

      v4 = v13;
    }

    while (v13 != a2 + 1);
  }

  v54[0] = 0;
  v54[1] = 0;
  v53 = v54;
  v14 = *(a1 + 328);
  if (v14 != (a1 + 336))
  {
    do
    {
      v15 = *(v14 + 109);
      *buf = v14 + 4;
      *(sub_100051AD8(&v53, v14 + 8) + 32) = v15;
      v16 = v14[1];
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
          v17 = v14[2];
          v33 = *v17 == v14;
          v14 = v17;
        }

        while (!v33);
      }

      v14 = v17;
    }

    while (v17 != (a1 + 336));
    v18 = v53;
    if (v53 != v54)
    {
      while (1)
      {
        v19 = v56[0];
        v20 = *(v18 + 7);
        if (!v56[0])
        {
          break;
        }

        v21 = v56;
        do
        {
          if (*(v19 + 7) >= v20)
          {
            v21 = v19;
          }

          v19 = v19[*(v19 + 7) < v20];
        }

        while (v19);
        if (v21 == v56 || v20 < *(v21 + 7))
        {
          break;
        }

        v22 = *(v18 + 32);
        if (*(v21 + 32) != v22)
        {
          goto LABEL_42;
        }

LABEL_81:
        v51 = v18[1];
        if (v51)
        {
          do
          {
            v52 = v51;
            v51 = *v51;
          }

          while (v51);
        }

        else
        {
          do
          {
            v52 = v18[2];
            v33 = *v52 == v18;
            v18 = v52;
          }

          while (!v33);
        }

        v18 = v52;
        if (v52 == v54)
        {
          goto LABEL_87;
        }
      }

      LOBYTE(v22) = *(v18 + 32);
LABEL_42:
      v23 = *(*(**(a1 + 64) + 16))(*(a1 + 64), *(v18 + 7));
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = CSIBOOLAsString(v22 & 1);
        *buf = 136315138;
        *&buf[4] = v24;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "#I isSatelliteNetwork changed to %s", buf, 0xCu);
      }

      v25 = sub_10000BA08(*(a1 + 360), v20);
      v26 = *(*v25 + 8);
      v27 = *(*v25 + 16);
      while (v26 != v27)
      {
        v28 = *(v26 + 8);
        SignalStrengthModel::setForceNotificationOnNextHeartbeat(v28, 1);
        if (v22)
        {
          SignalStrengthModel::setImmediateMode(v28);
          *(v28 + 40) = 0;
          v29 = *(v28 + 48) | 8;
        }

        else
        {
          v29 = *(v28 + 48) & 0xFFFFFFFFFFFFFFF7;
        }

        *(v28 + 48) = v29;
        v26 += 24;
      }

      sub_1000765F8(a1, v20);
      v30 = (*(**(a1 + 64) + 16))(*(a1 + 64), v20);
      sub_10002D1D0(&v59, a1, v20);
      v31 = v59;
      if (v59)
      {
        v32 = *(v59 + 40);
        if (*(v59 + 32))
        {
          v33 = 0;
        }

        else
        {
          v33 = v32 == 0;
        }

        if (!v33)
        {
          v34 = (*(*v32 + 48))(v32);
          v35 = *v30;
          v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
          if (v36)
          {
            v37 = (*(**(v31 + 40) + 16))(*(v31 + 40));
            *v62 = 67109378;
            *&v62[4] = v34;
            LOWORD(v63[0]) = 2080;
            *(v63 + 2) = v37;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "#I Computed base bars of %u from model %s", v62, 0x12u);
          }

          v38 = capabilities::ct::signalStrengthDisplayMaxValue(v36);
          if (HIDWORD(v38))
          {
            __assert_rtn("getSignalStrengthInfo_sync", "SignalStrengthController.cpp", 953, "capabilities::ct::signalStrengthDisplayMaxValue() <= std::numeric_limits<uint32_t>::max()");
          }

          v39 = capabilities::ct::signalStrengthDisplayMaxValue(v38);
          if (v34 >= v39)
          {
            v40 = v39;
          }

          else
          {
            v40 = v34;
          }

          v57 = __PAIR64__(v40, v34);
          v58 = v39;
          if (capabilities::ct::supportsVoiceCall(v39))
          {
            ServiceMap = Registry::getServiceMap(*(a1 + 72));
            v42 = ServiceMap;
            if (v43 < 0)
            {
              v44 = (v43 & 0x7FFFFFFFFFFFFFFFLL);
              v45 = 5381;
              do
              {
                v43 = v45;
                v46 = *v44++;
                v45 = (33 * v45) ^ v46;
              }

              while (v46);
            }

            std::mutex::lock(ServiceMap);
            *v62 = v43;
            v47 = sub_100009510(&v42[1].__m_.__sig, v62);
            if (v47 && (v48 = v47[4]) != 0)
            {
              atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
              std::mutex::unlock(v42);
              atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
              sub_100004A34(v48);
            }

            else
            {
              std::mutex::unlock(v42);
            }

            operator new();
          }

          (*(**(a1 + 424) + 32))(*(a1 + 424), v20, &v57);
          sub_1012E06AC(a1, v20, &v57);
          goto LABEL_79;
        }

        v50 = *v30;
        if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          *v62 = 0;
          _os_log_error_impl(&_mh_execute_header, v50, OS_LOG_TYPE_ERROR, "Could not find model", v62, 2u);
        }
      }

      else
      {
        v49 = *v30;
        if (os_log_type_enabled(*v30, OS_LOG_TYPE_ERROR))
        {
          *v62 = 0;
          _os_log_error_impl(&_mh_execute_header, v49, OS_LOG_TYPE_ERROR, "Could not find state", v62, 2u);
        }
      }

      v63[0] = 0;
      *v62 = 0;
      (*(**(a1 + 424) + 32))(*(a1 + 424), v20, v62);
      sub_1012E06AC(a1, v20, v62);
LABEL_79:
      if (v60)
      {
        sub_100004A34(v60);
      }

      goto LABEL_81;
    }
  }

LABEL_87:
  sub_10006DCAC(&v53, v54[0]);
  sub_10006DCAC(&v55, v56[0]);
}

void sub_1012DFD38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15, uint64_t a16, uint64_t a17, char a18, void *a19, uint64_t a20, char a21, void *a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, char a28)
{
  sub_10000FF50(v30 - 128);
  sub_1012E785C(&a28);
  sub_100004A34(v28);
  if ((a15 & 1) == 0)
  {
    sub_100004A34(v29);
  }

  if (a27)
  {
    sub_100004A34(a27);
  }

  sub_10006DCAC(&a18, a19);
  sub_10006DCAC(&a21, a22);
  _Unwind_Resume(a1);
}

void sub_1012DFDFC(uint64_t a1, uint64_t a2)
{
  v11[0] = a1;
  v11[1] = a2;
  v2 = *(a1 + 272);
  v3 = (a1 + 280);
  if (v2 != (a1 + 280))
  {
    v4 = (a2 + 8);
    while (1)
    {
      v5 = *v4;
      if (!*v4)
      {
        break;
      }

      v6 = *(v2 + 8);
      v7 = v4;
      do
      {
        if (*(v5 + 32) >= v6)
        {
          v7 = v5;
        }

        v5 = *(v5 + 8 * (*(v5 + 32) < v6));
      }

      while (v5);
      if (v7 == v4 || v6 < *(v7 + 8))
      {
        goto LABEL_12;
      }

      if ((rest::operator==() & 1) == 0)
      {
        break;
      }

LABEL_13:
      v8 = v2[1];
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
          v9 = v2[2];
          v10 = *v9 == v2;
          v2 = v9;
        }

        while (!v10);
      }

      v2 = v9;
      if (v9 == v3)
      {
        return;
      }
    }

    v6 = *(v2 + 8);
LABEL_12:
    sub_1012E6A80(v11, v6, (v2 + 5));
    goto LABEL_13;
  }
}

void sub_1012DFED4(uint64_t a1, int a2)
{
  if (*(a1 + 96) == a2)
  {
    return;
  }

  v3 = (*(**(a1 + 64) + 16))(*(a1 + 64));
  v4 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v12) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I Current data SIM has changed evaluating data LQM", &v12, 2u);
  }

  v5 = *(a1 + 360);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = *(a1 + 96);
  v7 = a1 + 360;
  do
  {
    if (*(v5 + 32) >= v6)
    {
      v7 = v5;
    }

    v5 = *(v5 + 8 * (*(v5 + 32) < v6));
  }

  while (v5);
  if (v7 == a1 + 360 || *(v7 + 32) > v6)
  {
    goto LABEL_11;
  }

  v10 = *(v7 + 40);
  v11 = *(v10 + 112);
  v8 = *(v10 + 120);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    if (!v11)
    {
      goto LABEL_12;
    }

    v12 = v11;
    v13 = v8;
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_22:
    sub_1012E0CB8(a1, &v12);
  }

  if (v11)
  {
    v12 = *(v10 + 112);
    v13 = 0;
    goto LABEL_22;
  }

LABEL_11:
  v8 = 0;
LABEL_12:
  v9 = *v3;
  if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v12) = 0;
    _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Unable to retrieve model when updating data LQM", &v12, 2u);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }
}

void sub_1012E005C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012E007C(uint64_t a1)
{
  v2 = *(a1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315138;
    v18 = asString();
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Received carplay connected: %s", &v17, 0xCu);
  }

  v3 = *(a1 + 352);
  if (v3 != (a1 + 360))
  {
    while (1)
    {
      v4 = v3[5];
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      if (v5 != v6)
      {
        break;
      }

LABEL_12:
      sub_1000765F8(a1, *(v3 + 8));
      v14 = v3[1];
      if (v14)
      {
        do
        {
          v15 = v14;
          v14 = *v14;
        }

        while (v14);
      }

      else
      {
        do
        {
          v15 = v3[2];
          v16 = *v15 == v3;
          v3 = v15;
        }

        while (!v16);
      }

      v3 = v15;
      if (v15 == (a1 + 360))
      {
        return;
      }
    }

    v7 = *(a1 + 248);
    while (1)
    {
      v8 = *(v5 + 8);
      if (v7)
      {
        v10 = *(v8 + 48);
        v9 = (v8 + 48);
        v11 = v10 & 0xFFFFFFFFFFFFFFFDLL;
      }

      else
      {
        v12 = *(v8 + 48);
        v9 = (v8 + 48);
        v11 = v12 & 0xFFFFFFFFFFFFFFFDLL;
        if (*(a1 + 252) != 2)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v13 = 2;
LABEL_11:
      *v9 = v13 | v11;
      v5 += 24;
      if (v5 == v6)
      {
        goto LABEL_12;
      }
    }
  }
}

uint64_t sub_1012E01DC(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v8 = (*(**(a1 + 64) + 16))(*(a1 + 64));
  v9 = *v8;
  v10 = os_log_type_enabled(*v8, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v22 = 136315394;
    v23 = CSIBOOLAsString(a3);
    v24 = 2080;
    v25 = CSIBOOLAsString(a4);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I CS attached is changing from %s to %s", &v22, 0x16u);
  }

  if (a4 && (a3 & 1) == 0 && capabilities::ct::supportsVoiceCall(v10))
  {
    v11 = *(a1 + 184);
    if (!v11)
    {
      goto LABEL_13;
    }

    v12 = a1 + 184;
    do
    {
      if (*(v11 + 28) >= a2)
      {
        v12 = v11;
      }

      v11 = *(v11 + 8 * (*(v11 + 28) < a2));
    }

    while (v11);
    if (v12 != a1 + 184 && *(v12 + 28) <= a2)
    {
      v13 = *(v12 + 32) != 10;
    }

    else
    {
LABEL_13:
      v13 = 1;
    }

    v14 = *v8;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = CSIBOOLAsString(v13);
      v22 = 136315138;
      v23 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "#I Resetting model state since device became CS attached. Clear system state: %s", &v22, 0xCu);
    }

    sub_1012DDAC0(a1, a2, v13);
  }

  v16 = sub_10000BA08(*(a1 + 360), a2);
  v17 = *(*v16 + 8);
  v18 = *(*v16 + 16);
  while (v17 != v18)
  {
    v19 = *(v17 + 8);
    SignalStrengthModel::setForceNotificationOnNextHeartbeat(v19, 1);
    if (a4)
    {
      SignalStrengthModel::setImmediateMode(v19);
      *(v19 + 40) = 0;
      v20 = *(v19 + 48) | 1;
    }

    else
    {
      v20 = *(v19 + 48) & 0xFFFFFFFFFFFFFFFELL;
    }

    *(v19 + 48) = v20;
    v17 += 24;
  }

  sub_1000765F8(a1, a2);
  return sub_1012DDBB4(a1, a2);
}

void sub_1012E041C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E050C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (*a3 && *(v3 + 16) && *(v3 + 48))
  {
    operator new();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t sub_1012E06AC(uint64_t a1, int a2, uint64_t *a3)
{
  v3 = *(a1 + 160);
  v8[0] = 1;
  v8[1] = a1 + 120;
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 7);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      break;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }

  v6 = *a3;
  *(v4 + 10) = *(a3 + 2);
  v4[4] = v6;
  return sub_1012E7FE8(v8);
}

void sub_1012E07A8(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  sub_1012E8050(&v5, a2);
  v3 = *(a1 + 32);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E08D8(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012E08E8(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1012E8050(&v7, a3);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E0A2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012E0A3C(uint64_t a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  sub_1012E8408(&v7, a3);
  v4 = *(a1 + 32);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E0B80(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012E0B90(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v6 = a2;
  v5[0] = a1;
  v5[1] = &v6;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 0x40000000;
  v7[2] = sub_1012E86A8;
  v7[3] = &unk_101F2A218;
  v7[4] = a1 + 24;
  v7[5] = v5;
  v8 = v7;
  v4 = a1 + 40;
  v3 = *(a1 + 40);
  if (*(v4 + 8))
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1012E8724;
    v12 = &unk_101F2A258;
    v13 = a3;
    v14 = &v8;
    dispatch_async_and_wait(v3, &block);
  }

  else
  {
    *a3 = 0;
    a3[1] = 0;
    block = _NSConcreteStackBlock;
    v10 = 0x40000000;
    v11 = sub_1012E86BC;
    v12 = &unk_101F2A238;
    v13 = a3;
    v14 = &v8;
    dispatch_sync(v3, &block);
  }
}

void sub_1012E0CB8(uint64_t a1, uint64_t a2)
{
  v4 = (*(**a2 + 88))();
  v5 = (*(**(a1 + 64) + 16))(*(a1 + 64), v4);
  (*(**a2 + 72))();
  v6 = *v5;
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    *&buf[4] = asString();
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "#I Data LQM is being updated to: %s", buf, 0xCu);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    v8 = std::__shared_weak_count::lock(v7);
    if (v8)
    {
      p_shared_weak_owners = &v8->__shared_weak_owners_;
      atomic_fetch_add_explicit(&v8->__shared_weak_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v8);
      atomic_fetch_add_explicit(p_shared_weak_owners, 1uLL, memory_order_relaxed);
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E0E84(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

void sub_1012E0E90(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    if (std::__shared_weak_count::lock(v3))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E0FB4(uint64_t a1, uint64_t a2)
{
  v3 = (*(**a2 + 72))();
  v4 = (*(**(a1 + 64) + 16))(*(a1 + 64), v3);
  sub_10002D1D0(&v27, a1, v3);
  v5 = v27;
  if (!v27)
  {
    v23 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Could not find state", buf, 2u);
    }

    goto LABEL_21;
  }

  v6 = *(v27 + 40);
  if (*(v27 + 32))
  {
    v7 = 0;
  }

  else
  {
    v7 = v6 == 0;
  }

  if (v7)
  {
    v24 = *v4;
    if (os_log_type_enabled(*v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "Could not find model", buf, 2u);
    }

LABEL_21:
    *&buf[8] = 0;
    *buf = 0;
    (*(**(a1 + 424) + 32))(*(a1 + 424), v3, buf);
    sub_1012E06AC(a1, v3, buf);
    goto LABEL_28;
  }

  v8 = (*(*v6 + 48))(v6);
  v9 = *v4;
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v10)
  {
    v11 = (*(**(v5 + 40) + 16))(*(v5 + 40));
    *buf = 67109378;
    *&buf[4] = v8;
    *&buf[8] = 2080;
    *&buf[10] = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "#I Computed base bars of %u from model %s", buf, 0x12u);
  }

  v12 = capabilities::ct::signalStrengthDisplayMaxValue(v10);
  if (HIDWORD(v12))
  {
    __assert_rtn("getSignalStrengthInfo_sync", "SignalStrengthController.cpp", 953, "capabilities::ct::signalStrengthDisplayMaxValue() <= std::numeric_limits<uint32_t>::max()");
  }

  v13 = capabilities::ct::signalStrengthDisplayMaxValue(v12);
  if (v8 >= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = v8;
  }

  v25 = __PAIR64__(v14, v8);
  v26 = v13;
  if (capabilities::ct::supportsVoiceCall(v13))
  {
    ServiceMap = Registry::getServiceMap(*(a1 + 72));
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
    *buf = v17;
    v21 = sub_100009510(&v16[1].__m_.__sig, buf);
    if (v21 && (v22 = v21[4]) != 0)
    {
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v16);
      atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v22);
    }

    else
    {
      std::mutex::unlock(v16);
    }

    operator new();
  }

  (*(**(a1 + 424) + 32))(*(a1 + 424), v3, &v25);
  sub_1012E06AC(a1, v3, &v25);
LABEL_28:
  if (v28)
  {
    sub_100004A34(v28);
  }
}

void sub_1012E1504(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, std::__shared_weak_count *a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  sub_10000FF50(va1);
  sub_1012E785C(va);
  sub_100004A34(v6);
  if ((v7 & 1) == 0)
  {
    sub_100004A34(v5);
  }

  if (a5)
  {
    sub_100004A34(a5);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012E159C(uint64_t a1)
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

void sub_1012E161C(uint64_t *a1)
{
  v2 = *a1;
  for (i = a1[1]; i != v2; i -= 24)
  {
    v4 = *(i - 8);
    if (v4)
    {
      sub_100004A34(v4);
    }
  }

  a1[1] = v2;
}

void sub_1012E1668(void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    sub_1012E161C(v2);
    v3 = **a1;

    operator delete(v3);
  }
}

void sub_1012E16C0(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t sub_1012E1714(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012E1754(uint64_t result)
{
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

void sub_1012E1780(ServiceManager::Service *this)
{
  *this = off_101F295E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);
}

void sub_1012E17DC(ServiceManager::Service *this)
{
  *this = off_101F295E0;
  v2 = *(this + 2);
  if (v2)
  {
    sub_100004A34(v2);
  }

  ServiceManager::Service::~Service(this);

  operator delete();
}

uint64_t sub_1012E185C@<X0>(void *a1@<X8>)
{
  v2 = 3;
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  return sub_1000FF040(a1, &v2, &vars0, 1);
}

void sub_1012E18A0(uint64_t a1, dispatch_object_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *a2;
  if (*a2)
  {
    dispatch_retain(*a2);
    dispatch_group_enter(v3);
    sub_1012DD050(v2, v3);
  }

  v4 = *(a1 + 8);

  sub_1012DD050(v4, 0);
}

void sub_1012E1940(uint64_t a1)
{
  v1 = *(*(a1 + 8) + 32);
  if (v1)
  {
    if (std::__shared_weak_count::lock(v1))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E1A20(uint64_t a1, int a2, ServiceStage *this)
{
  v3 = *(a1 + 8);
  ServiceStage::holdOffStage(&group[1], this);
  v4 = *(v3 + 32);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

uint64_t *sub_1012E1B58(void **a1)
{
  v1 = *a1;
  v8 = a1;
  v9 = v1;
  v2 = *v1;
  v3 = *(*v1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Shutting down", buf, 2u);
  }

  v4 = *(v2 + 408);
  v5 = v1[1];
  *buf = v5;
  if (v5)
  {
    dispatch_retain(v5);
    dispatch_group_enter(v5);
  }

  (*(*v4 + 32))(v4, buf);
  if (*buf)
  {
    dispatch_group_leave(*buf);
    if (*buf)
    {
      dispatch_release(*buf);
    }
  }

  for (i = *(v2 + 392); i != v2 + 384; i = *(i + 8))
  {
    sub_1001039A0((i + 16));
  }

  sub_1000FEFCC((v2 + 384));
  ctu::RestModule::disconnect((v2 + 104));
  sub_1000FF844(&v9);
  return sub_1000049E0(&v8);
}

void sub_1012E1C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, dispatch_group_t group)
{
  sub_1000FF844(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t sub_1012E1CB0(uint64_t a1)
{
  v1 = **(a1 + 40);
  result = subscriber::makeSimSlotRange();
  v3 = v7;
  if (v7 != v8)
  {
    do
    {
      result = v9(*v3);
      if (result)
      {
        break;
      }

      ++v3;
    }

    while (v3 != v8);
    if (v3 != v8)
    {
      v4 = (*(**(v1 + 64) + 16))(*(v1 + 64), *v3);
      capabilities::ct::getSignalStrengthPersonality(v4);
      v5 = *v4;
      if (os_log_type_enabled(*v4, OS_LOG_TYPE_DEFAULT))
      {
        capabilities::ct::asString();
        v6 = __p;
        if (v11 < 0)
        {
          v6 = __p[0];
        }

        buf = 136315138;
        *buf_4 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "#I Creating models with personality %s", &buf, 0xCu);
        if (v11 < 0)
        {
          operator delete(__p[0]);
        }
      }

      operator new();
    }
  }

  return result;
}

void sub_1012E2294(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F296C0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012E22E8(uint64_t a1)
{
  v2 = *(a1 + 144);
  if (v2)
  {
    sub_100004A34(v2);
  }

  v3 = *(a1 + 128);
  if (v3)
  {
    sub_100004A34(v3);
  }

  v4 = *(a1 + 112);
  if (v4)
  {
    sub_100004A34(v4);
  }

  v5 = *(a1 + 96);
  if (v5)
  {
    sub_100004A34(v5);
  }

  v6 = *(a1 + 72);
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = (a1 + 32);
  sub_1012E1668(&v7);
}

void sub_1012E2360(void *a1)
{
  v1 = *a1;
  v5 = a1;
  v6 = v1;
  v2 = *v1;
  v3 = *(*v1 + 56);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "#I Bootstrapping", buf, 2u);
  }

  v4 = *(v2 + 32);
  if (v4)
  {
    if (std::__shared_weak_count::lock(v4))
    {
      operator new();
    }
  }

  sub_100013CC4();
}

void sub_1012E37F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    sub_1001018AC(&a33);
    operator delete();
  }

  _Unwind_Resume(exception_object);
}

void sub_1012E3810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, int a47, __int16 a48, char a49, char a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, char a56)
{
  sub_1000062D4(&a56);
  if (a50 < 0)
  {
    operator delete(__p);
  }

  sub_100004A34(a10);
  sub_1000FF844(&a12);
  sub_1000049E0(&a11);
  _Unwind_Resume(a1);
}

void sub_1012E38C8(uint64_t a1, std::__shared_weak_count *a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100083940((v2 | 8));
  sub_100004A34(a2);
  sub_1000FF844(va1);
  sub_1000049E0(va);
  JUMPOUT(0x1012E3B4CLL);
}

void sub_1012E38DC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    (*(*v2 + 8))(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1012E391C(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, atomic_uint *a44)
{
  if (a2)
  {
    __cxa_end_catch();
    sub_10004A724(&a44);
    JUMPOUT(0x1012E3B60);
  }

  _Unwind_Resume(a1);
}

void sub_1012E3930(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __cxa_begin_catch(a1);
    sub_1012E49D8(v2);
    __cxa_rethrow();
  }

  _Unwind_Resume(a1);
}

void sub_1012E3950(_Unwind_Exception *a1, int a2)
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

void sub_1012E396C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1012E3974);
  }

  _Unwind_Resume(a1);
}

void sub_1012E3990(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1012E3998);
  }

  _Unwind_Resume(a1);
}

void sub_1012E39D8(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1012E3B68);
}

void sub_1012E39E4(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, char a53)
{
  if (a2)
  {
    sub_100101814(&a53);
    if (a33)
    {
      (*(*a33 + 8))(a33);
    }

    std::__shared_weak_count::__release_weak(v53);
    JUMPOUT(0x1012E3B68);
  }

  _Unwind_Resume(a1);
}

void sub_1012E3A68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, xpc_object_t object, dispatch_group_t group)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  xpc_release(object);
  object = 0;
  if (group)
  {
    dispatch_group_leave(group);
    if (group)
    {
      dispatch_release(group);
    }
  }

  sub_100004A34(a10);
  sub_1000FF844(&a12);
  sub_1000049E0(&a11);
  JUMPOUT(0x1012E3B4CLL);
}

void sub_1012E3AA8(uint64_t a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  sub_100004A34(v2);
  sub_1000FF844(va1);
  sub_1000049E0(va);
  JUMPOUT(0x1012E3B4CLL);
}

void sub_1012E3AB4(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1012E3B78);
}

void sub_1012E3ACC(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, char a31, uint64_t a32, void (**a33)(void, void, uint64_t), uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, void (**a48)(void, void, uint64_t), uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, void **a53)
{
  if (a2)
  {
    sub_1012E5170(&a53);
    sub_1012E5170(&a33);
    sub_1012E51C0(&a31);
    sub_1012E51C0(&a29);
    sub_1012E5170(&a48);
    a53 = &a45;
    sub_1001018AC(&a53);
    JUMPOUT(0x1012E3B70);
  }

  _Unwind_Resume(a1);
}

void sub_1012E3B14(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  sub_1000FFEDC(&a53);
  sub_1012E4730(&a45);
  sub_1012E51C0(&a27);
  sub_10004F058(a1);
}

void sub_1012E3B44(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44)
{
  if (!a2)
  {
    JUMPOUT(0x1012E3B4CLL);
  }

  sub_10004A724(&a44);
  JUMPOUT(0x1012E3B60);
}

void sub_1012E3BA0(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F29710;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012E3C1C(SignalStrengthDriverDelegateInterface *this)
{
  *this = off_101F297E0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthDriverDelegateInterface::~SignalStrengthDriverDelegateInterface(this);
}

void sub_1012E3C78(SignalStrengthDriverDelegateInterface *this)
{
  *this = off_101F297E0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthDriverDelegateInterface::~SignalStrengthDriverDelegateInterface(this);

  operator delete();
}

void sub_1012E3CE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 32);
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

void sub_1012E3E34(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 32);
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

void sub_1012E3F7C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = std::__shared_weak_count::lock(v2);
    if (v3)
    {
      v4 = *(a1 + 8);
      if (v4)
      {
        v5 = *(v4 + 32);
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

void sub_1012E40C4(SignalStrengthDriverDelegateInterface *this)
{
  *this = off_101F297E0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthDriverDelegateInterface::~SignalStrengthDriverDelegateInterface(this);
}

void sub_1012E4120(SignalStrengthDriverDelegateInterface *this)
{
  *this = off_101F297E0;
  v2 = *(this + 2);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  SignalStrengthDriverDelegateInterface::~SignalStrengthDriverDelegateInterface(this);

  operator delete();
}

void sub_1012E4190(uint64_t **a1)
{
  v1 = **a1;
  v2 = *(v1 + 56);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "#I Starting", buf, 2u);
  }

  (*(**(v1 + 408) + 24))(*(v1 + 408));
  subscriber::makeSimSlotRange();
  v3 = *buf;
  v4 = v13;
  if (*buf != v13)
  {
    v5 = v14;
    do
    {
      if (v5(*v3))
      {
        break;
      }

      ++v3;
    }

    while (v3 != v4);
    v6 = v13;
    while (v3 != v6)
    {
      v7 = *v3;
      v10 = 0;
      v11 = 0;
      sub_10002D1D0(&v10, v1, v7);
      if (v10)
      {
        v8 = *(v10 + 8);
        v9 = *(v10 + 16);
        while (v8 != v9)
        {
          (*(**(v8 + 8) + 80))(*(v8 + 8));
          v8 += 24;
        }
      }

      if (v11)
      {
        sub_100004A34(v11);
      }

      do
      {
        ++v3;
      }

      while (v3 != v4 && (v5(*v3) & 1) == 0);
    }
  }

  operator delete();
}

uint64_t sub_1012E4368(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 24);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

void *sub_1012E43B4(void *a1)
{
  *a1 = off_101F29850;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void sub_1012E4400(void *a1)
{
  *a1 = off_101F29850;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  operator delete();
}

void sub_1012E446C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::lock(v1);
  }

  operator new();
}

void sub_1012E451C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    sub_100004A34(v1);
  }

  _Unwind_Resume(exception_object);
}

void *sub_1012E45C0(void *a1)
{
  *a1 = off_101F298A0;
  v2 = a1[2];
  if (v2)
  {
    sub_100004A34(v2);
  }

  return a1;
}

void sub_1012E460C(void *a1)
{
  *a1 = off_101F298A0;
  v1 = a1[2];
  if (v1)
  {
    sub_100004A34(v1);
  }

  operator delete();
}

uint64_t sub_1012E46E4(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  v3 = (a1[4] + (v2 >> 1) - 24);
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t sub_1012E4730(uint64_t a1)
{
  sub_1012E5170((a1 + 24));
  v3 = a1;
  sub_1001018AC(&v3);
  return a1;
}

void sub_1012E4774(uint64_t a1)
{
  sub_1012E4ABC(a1);

  operator delete();
}

uint64_t sub_1012E47AC(uint64_t a1)
{
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  v2 = sub_10004A4A8((a1 + 48));
  sub_100048D3C(v6, v2);
  if (*(a1 + 32))
  {
    for (i = *sub_1006CA5D0((a1 + 32)); i != *(sub_1006CA5D0((a1 + 32)) + 8); i += 6)
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

void sub_1012E48E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  sub_10004B040(v3 - 80);
  sub_1000FFEDC(va);
  _Unwind_Resume(a1);
}

uint64_t sub_1012E4928(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_100048C68(v1);
}

uint64_t sub_1012E4954(uint64_t a1)
{
  v1 = sub_10004ACA4((a1 + 48));

  return sub_10004A704(v1);
}

atomic_uint **sub_1012E4980@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
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

uint64_t sub_1012E49D8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1012E5170((result + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1012E4A4C(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    sub_1012E5170((v1 + 24));
    v2 = v1;
    sub_1001018AC(&v2);
    operator delete();
  }

  return result;
}

uint64_t sub_1012E4ABC(uint64_t a1)
{
  *a1 = off_101F29900;
  v2 = (a1 + 40);
  sub_10004A724((a1 + 56));
  sub_10004A724(v2);
  *a1 = off_101E263F8;
  sub_100083940((a1 + 16));
  return a1;
}

uint64_t sub_1012E4B4C(uint64_t a1)
{
  result = *(a1 + 16);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

NSObject **sub_1012E4B94(NSObject **a1, NSObject *a2, void *aBlock)
{
  *a1 = a2;
  if (aBlock)
  {
    v4 = _Block_copy(aBlock);
    a2 = *a1;
  }

  else
  {
    v4 = 0;
  }

  a1[1] = v4;
  dispatch_retain(a2);
  return a1;
}

uint64_t sub_1012E4BE4(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  v5 = result;
  if (a3 <= 1)
  {
    result = sub_1012E4B94(a2, *result, *(result + 8));
    if (a3 != 1)
    {
      return result;
    }

    v6 = v5;
    goto LABEL_10;
  }

  if (a3 != 3)
  {
    if (a3 != 2)
    {
LABEL_2:
      *(a2 + 8) = 0;
      return result;
    }

    v6 = a2;
LABEL_10:

    return sub_1012E51C0(v6);
  }

  result = *(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL;
  if (result == ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvjEEEEE" & 0x7FFFFFFFFFFFFFFFLL) || (result = strcmp(result, ("N3ctu12DispatchSlotIN8dispatch5blockIU13block_pointerFvjEEEEE" & 0x7FFFFFFFFFFFFFFFLL)), !result))
  {
    *a2 = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void sub_1012E4CBC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 && (v2 = _Block_copy(v1)) != 0 && (v3 = _Block_copy(v2), (v4 = v3) != 0))
  {
    v5 = _Block_copy(v3);
    v6 = v5;
    if (v5)
    {
      v7 = _Block_copy(v5);
      v8 = v7;
      if (v7)
      {
        v9 = _Block_copy(v7);
        v10 = v9;
        if (v9)
        {
          v11 = _Block_copy(v9);
          v12 = v11;
          if (v11)
          {
            v14 = _Block_copy(v11);
            _Block_release(v12);
          }

          else
          {
            v14 = 0;
          }

          _Block_release(v10);
        }

        else
        {
          v14 = 0;
        }

        _Block_release(v8);
      }

      else
      {
        v14 = 0;
      }

      v13 = off_101F29A48;
      _Block_release(v6);
    }

    else
    {
      v13 = off_101F29A48;
      v14 = 0;
    }

    _Block_release(v4);
  }

  else
  {
    v13 = off_101F29A48;
    v14 = 0;
  }

  operator new();
}

uint64_t sub_1012E4F48(uint64_t a1)
{
  sub_1006CA7CC(*(a1 + 32));
  v2 = *(a1 + 32);
  if (v2)
  {
    sub_1012E5170(v2);
    operator delete();
  }

  result = *(a1 + 40);
  if (result)
  {

    operator delete();
  }

  return result;
}

void sub_1012E4FCC(void **a1, _WORD *a2, unsigned int a3)
{
  if (a3 == 4)
  {
    goto LABEL_2;
  }

  if (a3 > 1)
  {
    if (a3 == 3)
    {
      v8 = (*(*a2 + 8) & 0x7FFFFFFFFFFFFFFFLL);
      if (v8 == ("N8dispatch5blockIU13block_pointerFvjEEE" & 0x7FFFFFFFFFFFFFFFLL) || !strcmp(v8, ("N8dispatch5blockIU13block_pointerFvjEEE" & 0x7FFFFFFFFFFFFFFFLL)))
      {
        *a2 = a1;
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      if (a3 != 2)
      {
LABEL_2:
        a2[4] = 0;
        return;
      }

      v7 = *a2;
      if (*a2)
      {
LABEL_9:
        _Block_release(v7);
      }
    }
  }

  else
  {
    v6 = *a1;
    if (*a1)
    {
      v6 = _Block_copy(v6);
    }

    *a2 = v6;
    if (a3 == 1)
    {
      v7 = *a1;
      if (*a1)
      {
        goto LABEL_9;
      }
    }
  }
}

uint64_t sub_1012E50B8(uint64_t result, uint64_t a2)
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

void sub_1012E514C(void *a1)
{
  __cxa_begin_catch(a1);
  *v1 = 0;
  __cxa_rethrow();
}

void (***sub_1012E5170(void (***a1)(void, void, uint64_t)))(void, void, uint64_t)
{
  v2 = *a1;
  if (*a1)
  {
    if ((v2 & 1) == 0)
    {
      v3 = *v2;
      if (v3)
      {
        v3(a1 + 1, a1 + 1, 2);
      }
    }

    *a1 = 0;
  }

  return a1;
}

uint64_t sub_1012E51C0(uint64_t a1)
{
  dispatch_release(*a1);
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  return a1;
}

__n128 sub_1012E5278(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29A78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012E52B0(void *a1)
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

uint64_t sub_1012E52F8(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E53C0(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29AF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012E53F8(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_1012E5490(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E5558(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29B78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012E5590(uint64_t a1)
{
  v2 = **(a1 + 8);
  read_rest_value();
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = (*(a1 + 16) + (v4 >> 1));
  if (v4)
  {
    v3 = *(*v5 + v3);
  }

  return v3(v5, v2);
}

uint64_t sub_1012E5614(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E56DC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29BF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012E5714(void *a1, xpc *this, BOOL a3)
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

uint64_t sub_1012E57AC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E5874(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29C78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012E58AC(void *a1, xpc_object_t *a2)
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

  sub_10011E228(v3, a2);
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

uint64_t sub_1012E5984(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E5A4C(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29CF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012E5A84(void *a1, xpc_object_t *a2)
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

  sub_10032CF1C(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10032D3A4(&v9, v10);
}

uint64_t sub_1012E5B5C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E5C24(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29D78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012E5C5C(void *a1, xpc_object_t *a2)
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

  sub_10011F248(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10004C4EC(&v9, v10);
}

uint64_t sub_1012E5D34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E5DFC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29DF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012E5E34(void *a1, xpc_object_t *a2)
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

  sub_100364288(v3, a2);
  v6 = a1[3];
  v7 = a1[4];
  v8 = (a1[2] + (v7 >> 1));
  if (v7)
  {
    v6 = *(*v8 + v6);
  }

  v6(v8, &v9);
  sub_10004EC58(&v9, v10);
}

uint64_t sub_1012E5F0C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E5FD4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29E78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012E600C(void *a1, xpc_object_t *a2)
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
  v11 = a1[4];
  v12 = (a1[2] + (v11 >> 1));
  if (v11)
  {
    v10 = *(*v12 + v10);
  }

  return v10(v12, v5);
}

uint64_t sub_1012E6104(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E61CC(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29EF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void sub_1012E6204(void *a1, xpc_object_t *a2)
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

uint64_t sub_1012E62DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E63A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29F78;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012E63DC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 sub_1012E64A4(uint64_t a1, uint64_t a2)
{
  *a2 = off_101F29FF8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t sub_1012E64DC(void *a1, xpc_object_t *a2)
{
  v4 = a1[1];
  type = xpc_get_type(*a2);
  if (type == &_xpc_type_string)
  {
    v13 = *v4;
    ctu::rest::detail::read_enum_string_value(&v13, a2, v6);
    *v4 = v13;
  }

  else if (type == &_xpc_type_BOOL || type == &_xpc_type_int64 || type == &_xpc_type_uint64)
  {
    *v4 = xpc::dyn_cast_or_default(a2, 0, v6);
  }

  v9 = a1[3];
  v10 = a1[4];
  v11 = (a1[2] + (v10 >> 1));
  if (v10)
  {
    v9 = *(*v11 + v9);
  }

  return v9(v11);
}

uint64_t sub_1012E65CC(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1012E6688(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = off_101F2A078;
  a2[1] = v2;
  return result;
}

void sub_1012E66B4(uint64_t a1, void *a2)
{
  v3 = xpc_array_create(0, 0);
  if (v3 || (v3 = xpc_null_create()) != 0)
  {
    if (xpc_get_type(v3) == &_xpc_type_array)
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
  v7 = *a2;
  v5 = a2 + 1;
  v6 = v7;
  if (v7 != v5)
  {
    do
    {
      v8 = xpc_dictionary_create(0, 0, 0);
      v9 = v8;
      if (v8)
      {
        v26 = v8;
      }

      else
      {
        v9 = xpc_null_create();
        v26 = v9;
        if (!v9)
        {
          v10 = xpc_null_create();
          v9 = 0;
          goto LABEL_15;
        }
      }

      if (xpc_get_type(v9) != &_xpc_type_dictionary)
      {
        v10 = xpc_null_create();
LABEL_15:
        v26 = v10;
        goto LABEL_16;
      }

      xpc_retain(v9);
LABEL_16:
      xpc_release(v9);
      v11 = *(v6 + 7);
      v12 = subscriber::asString();
      ctu::rest::detail::write_enum_string_value(&v24, v11, v12, v13);
      __p = &v26;
      v20 = "first";
      sub_10000F688(&__p, &v24, &object);
      xpc_release(object);
      object = 0;
      xpc_release(v24);
      v24 = 0;
      write_rest_value();
      __p = &v26;
      v20 = "second";
      sub_10000F688(&__p, &v22, &v23);
      xpc_release(v23);
      v23 = 0;
      xpc_release(v22);
      v22 = 0;
      v14 = v26;
      if (v26)
      {
        xpc_retain(v26);
      }

      else
      {
        v14 = xpc_null_create();
      }

      xpc_release(v26);
      xpc_array_append_value(v4, v14);
      xpc_release(v14);
      v15 = v6[1];
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
          v16 = v6[2];
          v17 = *v16 == v6;
          v6 = v16;
        }

        while (!v17);
      }

      v6 = v16;
    }

    while (v16 != v5);
  }

  if (v4)
  {
    xpc_retain(v4);
    v18 = v4;
  }

  else
  {
    v18 = xpc_null_create();
  }

  xpc_release(v4);
  sub_10000501C(&__p, "/cc/props/signal_strength_info");
  v26 = v18;
  if (v18)
  {
    xpc_retain(v18);
  }

  else
  {
    v26 = xpc_null_create();
  }

  ctu::RestModule::setProperty();
  xpc_release(v26);
  v26 = 0;
  if (v21 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v18);
}

void sub_1012E697C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, xpc_object_t object)
{
  xpc_release(object);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  xpc_release(v19);
  _Unwind_Resume(a1);
}

uint64_t sub_1012E6A34(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012E6A80(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v31 = 0;
  v32 = 0;
  v7 = sub_10002D1D0(&v31, v6, a2);
  v8 = v31;
  if (!v31)
  {
    goto LABEL_38;
  }

  v9 = *(v6 + 80);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v10 = a1[1];
  v13 = *(v10 + 8);
  v11 = v10 + 8;
  v12 = v13;
  if (!v13)
  {
    goto LABEL_12;
  }

  v14 = v11;
  do
  {
    if (*(v12 + 32) >= a2)
    {
      v14 = v12;
    }

    v12 = *(v12 + 8 * (*(v12 + 32) < a2));
  }

  while (v12);
  if (v14 != v11 && *(v14 + 32) <= a2 && (*(v14 + 64) & 1) != 0)
  {
    v29 = *(v14 + 40);
    v30 = *(v14 + 48);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v29 != v30)
    {
      while (*v29 != 14)
      {
        v7 = capabilities::ct::supports5G(v7);
        if (v7)
        {
          if ((*v29 & 0xFFFFFFFE) == 0x10)
          {
            break;
          }
        }

        if (++v29 == v30)
        {
          v29 = v30;
          break;
        }
      }
    }

    v15 = v29 != *(v14 + 48);
    if (v9)
    {
      sub_100004A34(v9);
    }
  }

  else
  {
LABEL_12:
    v15 = 0;
  }

  v16 = (*(**(v6 + 64) + 16))(*(v6 + 64), a2);
  v17 = v16;
  if (*(a3 + 24))
  {
    v19 = *a3;
    v20 = *(a3 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (v19 != v20)
    {
      while (*v19 != 14)
      {
        v16 = capabilities::ct::supports5G(v16);
        if (v16)
        {
          if ((*v19 & 0xFFFFFFFE) == 0x10)
          {
            break;
          }
        }

        if (++v19 == v20)
        {
          v19 = v20;
          break;
        }
      }
    }

    v21 = *(a3 + 8);
    v18 = v19 != v21;
    if (v9)
    {
      sub_100004A34(v9);
    }

    if (((v15 ^ (v19 != v21)) & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_27;
  }

  if (v15)
  {
    v18 = 0;
LABEL_27:
    v22 = *v17;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = CSIBOOLAsString(v15);
      v24 = CSIBOOLAsString(v18);
      *buf = 136315394;
      v34 = v23;
      v35 = 2080;
      v36 = v24;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "#I IMS voice support is changing from %s to %s", buf, 0x16u);
    }

    v25 = *(v8 + 8);
    v26 = *(v8 + 16);
    while (v25 != v26)
    {
      v27 = *(v25 + 8);
      SignalStrengthModel::setForceNotificationOnNextHeartbeat(v27, 1);
      if (v18)
      {
        SignalStrengthModel::setImmediateMode(v27);
        *(v27 + 40) = 0;
        v28 = *(v27 + 48) | 4;
      }

      else
      {
        v28 = *(v27 + 48) & 0xFFFFFFFFFFFFFFFBLL;
      }

      *(v27 + 48) = v28;
      v25 += 24;
    }

    sub_1000765F8(v6, a2);
  }

LABEL_36:
  if (v9)
  {
    sub_100004A34(v9);
  }

LABEL_38:
  if (v32)
  {
    sub_100004A34(v32);
  }
}

void sub_1012E6D78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  if (a10)
  {
    sub_100004A34(a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012E6DC0(uint64_t **a1)
{
  v1 = **a1;
  v13 = *a1;
  subscriber::makeSimSlotRange();
  v2 = v14;
  if (v14 != v15)
  {
    do
    {
      if (v16(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v15);
    while (v2 != v15)
    {
      v3 = *v2;
      v4 = *(v13 + 12);
      sub_10002D1D0(&v17, v1, *v2);
      v5 = v17;
      if (v17)
      {
        v6 = (*(**(v1 + 64) + 16))(*(v1 + 64), v3);
        v7 = *(v5 + 58);
        v8 = *v6;
        v9 = os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT);
        if (v7)
        {
          if (v9)
          {
            *buf = 67109120;
            LODWORD(v20) = v4;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleDriverState with %d", buf, 8u);
          }

          sub_1012DE454(v5, 0);
          v10 = **v5;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = CSIBOOLAsString(*(v5 + 57));
            v12 = CSIBOOLAsString(v4);
            *buf = 136315394;
            v20 = v11;
            v21 = 2080;
            v22 = v12;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "#I Running is changing from %s to %s", buf, 0x16u);
          }

          *(v5 + 57) = v4;
          sub_1000765F8(v1, v3);
        }

        else if (v9)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "#I handleDriverState ignored", buf, 2u);
        }
      }

      if (v18)
      {
        sub_100004A34(v18);
      }

      do
      {
        ++v2;
      }

      while (v2 != v15 && (v16(*v2) & 1) == 0);
    }
  }

  operator delete();
}

void sub_1012E7080(uint64_t **a1)
{
  if (*(*a1 + 3) <= 1u)
  {
    sub_10002D1D0(&v1, **a1, *(*a1 + 2));
    if (v1)
    {
      sub_1012DE454(v1, 0);
    }

    if (v2)
    {
      sub_100004A34(v2);
    }
  }

  operator delete();
}

void sub_1012E7110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  operator delete();
}

void sub_1012E713C(uint64_t **a1)
{
  v1 = **a1;
  subscriber::makeSimSlotRange();
  v2 = v3;
  if (v3 != v4)
  {
    do
    {
      if (v5(*v2))
      {
        break;
      }

      ++v2;
    }

    while (v2 != v4);
    while (v2 != v4)
    {
      sub_1012DDBB4(v1, *v2);
      do
      {
        ++v2;
      }

      while (v2 != v4 && (v5(*v2) & 1) == 0);
    }
  }

  operator delete();
}

void sub_1012E7260(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2A108;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

uint64_t *sub_1012E72C0(uint64_t *a1)
{
  v1 = *a1;
  v29 = a1;
  v30 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = (*(**(v2 + 64) + 16))(*(v2 + 64), v3);
  sub_10002D1D0(&v31, v2, v3);
  v7 = v31;
  if (!v31)
  {
    v26 = *v6;
    if (!os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
LABEL_24:
      *v5 = 0;
      *(v5 + 8) = 0;
      goto LABEL_25;
    }

    LOWORD(buf) = 0;
    v27 = "Could not find state";
LABEL_34:
    _os_log_error_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, v27, &buf, 2u);
    goto LABEL_24;
  }

  v8 = *(v31 + 40);
  if (*(v31 + 32))
  {
    v9 = 0;
  }

  else
  {
    v9 = v8 == 0;
  }

  if (v9)
  {
    v26 = *v6;
    if (!os_log_type_enabled(*v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    LOWORD(buf) = 0;
    v27 = "Could not find model";
    goto LABEL_34;
  }

  v10 = (*(*v8 + 48))(v8);
  v11 = *v6;
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    v13 = (*(**(v7 + 40) + 16))(*(v7 + 40));
    LODWORD(buf) = 67109378;
    HIDWORD(buf) = v10;
    buf_8 = 2080;
    buf_10 = v13;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I Computed base bars of %u from model %s", &buf, 0x12u);
  }

  v14 = capabilities::ct::signalStrengthDisplayMaxValue(v12);
  if (HIDWORD(v14))
  {
    __assert_rtn("getSignalStrengthInfo_sync", "SignalStrengthController.cpp", 953, "capabilities::ct::signalStrengthDisplayMaxValue() <= std::numeric_limits<uint32_t>::max()");
  }

  v15 = capabilities::ct::signalStrengthDisplayMaxValue(v14);
  v16 = v15;
  if (v10 >= v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = v10;
  }

  if (capabilities::ct::supportsVoiceCall(v15))
  {
    ServiceMap = Registry::getServiceMap(*(v2 + 72));
    v19 = ServiceMap;
    if ((v20 & 0x8000000000000000) != 0)
    {
      v21 = (v20 & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    std::mutex::lock(ServiceMap);
    buf = v20;
    v24 = sub_100009510(&v19[1].__m_.__sig, &buf);
    if (v24 && (v25 = v24[4]) != 0)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      std::mutex::unlock(v19);
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      sub_100004A34(v25);
    }

    else
    {
      std::mutex::unlock(v19);
    }

    operator new();
  }

  *v5 = v10;
  *(v5 + 4) = v17;
  *(v5 + 8) = v16;
LABEL_25:
  if (v32)
  {
    sub_100004A34(v32);
  }

  if (v4)
  {
    sub_100004A34(v4);
  }

  sub_1012E7808(&v30);
  return sub_1000049E0(&v29);
}

void sub_1012E7758(_Unwind_Exception *a1, std::__shared_weak_count *a2, uint64_t a3, ...)
{
  va_start(va3, a3);
  va_start(va2, a3);
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  va_copy(va2, va1);
  v8 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, std::__shared_weak_count *);
  va_copy(va3, va2);
  v12 = va_arg(va3, void);
  v14 = va_arg(va3, void);
  v15 = va_arg(va3, void);
  v16 = va_arg(va3, void);
  v17 = va_arg(va3, void);
  v18 = va_arg(va3, void);
  v19 = va_arg(va3, void);
  sub_10000FF50(va3);
  sub_1012E785C(va2);
  sub_100004A34(v3);
  if ((v4 & 1) == 0)
  {
    sub_100004A34(a2);
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  sub_1012E7808(va1);
  sub_1000049E0(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012E7808(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 24);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1012E785C(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    sub_100004A34(v3);
  }

  return a1;
}

void sub_1012E78B8(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2A158;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012E790C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void *sub_1012E7920(void *a1)
{
  *a1 = off_101F2A1A8;
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

  return a1;
}

void sub_1012E7978(void *a1)
{
  *a1 = off_101F2A1A8;
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

  operator delete();
}

uint64_t sub_1012E7A84(uint64_t result, uint64_t a2)
{
  *a2 = off_101F2A1A8;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012E7AEC(void *a1)
{
  sub_1012E7D10(a1 + 8);

  operator delete(a1);
}

void sub_1012E7B28(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[6])
      {
        v5 = a1[5];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v6 = *(v3 + 32);
        if (v6)
        {
          if (std::__shared_weak_count::lock(v6))
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

void sub_1012E7CB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012E7CC4(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2A208))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_1012E7D10(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    sub_100004A34(v3);
  }
}

uint64_t *sub_1012E7D60(uint64_t *a1)
{
  v1 = *a1;
  v23 = a1;
  v24 = v1;
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 12);
  v5 = *(v1 + 32);
  v6 = (*(**(*v1 + 64) + 16))(*(*v1 + 64), v3);
  v7 = capabilities::ct::signalStrengthDisplayMaxValue(v6);
  if (HIDWORD(v7))
  {
    __assert_rtn("getSignalStrengthInfo_sync", "SignalStrengthController.cpp", 904, "capabilities::ct::signalStrengthDisplayMaxValue() <= std::numeric_limits<uint32_t>::max()");
  }

  v8 = capabilities::ct::signalStrengthDisplayMaxValue(v7);
  if ((v4 & 1) != 0 || (*(v2 + 320) & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *(v2 + 336);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v2 + 336;
  do
  {
    if (*(v10 + 32) >= v3)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < v3));
  }

  while (v10);
  if (v11 != v2 + 336 && *(v11 + 32) <= v3 && (*(v11 + 109) & 1) != 0)
  {
LABEL_12:
    v12 = *v5;
    v13 = *(v1 + 16);
    v12[2] = *(v1 + 24);
    *v12 = v13;
  }

  else
  {
LABEL_13:
    v16 = *(v2 + 232);
    v15 = v2 + 232;
    v14 = v16;
    if (!v16)
    {
      goto LABEL_24;
    }

    v17 = v15;
    do
    {
      if (*(v14 + 28) >= v3)
      {
        v17 = v14;
      }

      v14 = *(v14 + 8 * (*(v14 + 28) < v3));
    }

    while (v14);
    if (v17 != v15 && *(v17 + 28) <= v3 && *(v17 + 32) == 1)
    {
      v18 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "#I Data-only attached, reporting zero bars", buf, 2u);
      }

      v19 = *v5;
      *v19 = 0;
      v19[2] = v9;
    }

    else
    {
LABEL_24:
      v20 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "#I Not CS attached, reporting one bar", buf, 2u);
      }

      v21 = *v5;
      *v21 = 1;
      v21[1] = v9 != 0;
      v21[2] = v9;
    }
  }

  sub_1012E7F94(&v24);
  return sub_1000049E0(&v23);
}

void sub_1012E7F78(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1012E7F94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012E7F94(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 40);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t sub_1012E7FE8(uint64_t a1)
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

uint64_t sub_1012E8050(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1012E80D0(uint64_t **a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 360);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = *(v2 + 96);
  v5 = v2 + 360;
  v6 = v2 + 360;
  do
  {
    if (*(v3 + 32) >= v4)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v4));
  }

  while (v3);
  if (v6 == v5 || *(v6 + 32) > v4)
  {
    goto LABEL_15;
  }

  v7 = *(v6 + 40);
  v9 = *(v7 + 112);
  v8 = *(v7 + 120);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    v10 = (*(*v9 + 72))(v9);
    sub_1012E8244(v1[4], v10);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (!v9)
  {
LABEL_15:
    sub_1012E8244(v1[4], -1);
  }

  sub_1012E81F4(&v13);
  return sub_1000049E0(&v12);
}

void sub_1012E81C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1012E81F4(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012E81F4(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100DF6B00(v1 + 8);
    operator delete();
  }

  return result;
}

uint64_t sub_1012E8244(uint64_t a1, int a2)
{
  v3 = a2;
  if (!a1)
  {
    sub_100022DB4();
  }

  return (*(*a1 + 48))(a1, &v3);
}

uint64_t *sub_1012E8294(uint64_t *a1)
{
  v1 = *a1;
  v12 = a1;
  v13 = v1;
  v2 = *v1;
  v3 = *(*v1 + 360);
  if (!v3)
  {
    goto LABEL_15;
  }

  v4 = *(v1 + 8);
  v5 = v2 + 360;
  v6 = v2 + 360;
  do
  {
    if (*(v3 + 32) >= v4)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v4));
  }

  while (v3);
  if (v6 == v5 || *(v6 + 32) > v4)
  {
    goto LABEL_15;
  }

  v7 = *(v6 + 40);
  v9 = *(v7 + 96);
  v8 = *(v7 + 104);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    v10 = (*(*v9 + 72))(v9);
    sub_1012E8244(*(v1 + 40), v10);
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (!v9)
  {
LABEL_15:
    sub_1012E8244(*(v1 + 40), -1);
  }

  sub_1012E83B8(&v13);
  return sub_1000049E0(&v12);
}

void sub_1012E8388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    sub_100004A34(v10);
  }

  sub_1012E83B8(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012E83B8(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100DF6B00(v1 + 16);
    operator delete();
  }

  return result;
}

uint64_t sub_1012E8408(uint64_t a1, uint64_t a2)
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

uint64_t *sub_1012E8488(uint64_t *a1)
{
  v1 = *a1;
  v13 = a1;
  v14 = v1;
  v2 = *v1;
  v3 = *(*v1 + 360);
  if (!v3)
  {
    goto LABEL_17;
  }

  v4 = *(v1 + 8);
  v5 = v2 + 360;
  v6 = v2 + 360;
  do
  {
    if (*(v3 + 32) >= v4)
    {
      v6 = v3;
    }

    v3 = *(v3 + 8 * (*(v3 + 32) < v4));
  }

  while (v3);
  if (v6 == v5 || *(v6 + 32) > v4)
  {
    goto LABEL_17;
  }

  v7 = *(v6 + 40);
  v9 = *(v7 + 80);
  v8 = *(v7 + 88);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v9)
  {
    (*(*v9 + 80))(__p, v9);
    v10 = *(v1 + 40);
    if (!v10)
    {
      sub_100022DB4();
    }

    (*(*v10 + 48))(v10, __p);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }

  if (v8)
  {
    sub_100004A34(v8);
  }

  if (!v9)
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v11 = *(v1 + 40);
    if (!v11)
    {
      sub_100022DB4();
    }

    (*(*v11 + 48))(v11, &v15);
    if (v15)
    {
      v16 = v15;
      operator delete(v15);
    }
  }

  sub_1012E8658(&v14);
  return sub_1000049E0(&v13);
}

void sub_1012E8600(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (v15)
  {
    sub_100004A34(v15);
  }

  sub_1012E8658(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012E8658(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    sub_100DF6E18(v1 + 16);
    operator delete();
  }

  return result;
}

void sub_1012E86BC(uint64_t a1)
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

void sub_1012E8724(uint64_t a1)
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

void sub_1012E878C(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(v2 + 360);
  if (v3)
  {
    v5 = *(v1 + 2);
    v4 = *(v1 + 3);
    v6 = v2 + 360;
    v7 = v2 + 360;
    do
    {
      if (*(v3 + 32) >= v5)
      {
        v7 = v3;
      }

      v3 = *(v3 + 8 * (*(v3 + 32) < v5));
    }

    while (v3);
    if (v7 != v6 && *(v7 + 32) <= v5)
    {
      v8 = *(v7 + 40);
      v9 = *(v8 + 96);
      v10 = *(v8 + 104);
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (v9)
      {
        (*(*v9 + 16))(v9, v4);
      }

      if (v10)
      {
        sub_100004A34(v10);
      }
    }
  }

  operator delete();
}

void sub_1012E8874()
{
  if (v0)
  {
    sub_100004A34(v0);
  }

  operator delete();
}

uint64_t *sub_1012E88A0(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1012E88F4(unsigned int *a1)
{
  v8 = a1;
  v10 = 0;
  v11 = 0;
  sub_10005B8C8(&v10);
  if (v10)
  {
    (*(*v10 + 392))(v10, *a1);
  }

  else
  {
    v3 = *(a1 + 2);
    if (v3)
    {
      v4 = std::__shared_weak_count::lock(v3);
      if (v4)
      {
        v5 = v4;
        v6 = *(a1 + 1);
        if (v6)
        {
          v7 = *(v6 + 56);
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Missing C2KRadioModule for sending LQM update!", buf, 2u);
          }
        }

        sub_100004A34(v5);
      }
    }
  }

  if (v11)
  {
    sub_100004A34(v11);
  }

  return sub_1012E88A0(&v8);
}

void sub_1012E89E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14)
{
  if (a14)
  {
    sub_100004A34(a14);
  }

  sub_1012E88A0(&a10);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012E8A08(uint64_t **a1)
{
  v1 = *a1;
  v6 = a1;
  v7 = v1;
  v2 = *v1;
  v4 = v1[1];
  v3 = (v1 + 1);
  if ((*(*v4 + 88))(v4) == *(v2 + 96))
  {
    sub_1012E0CB8(v2, v3);
  }

  sub_1000049E0(&v7);
  return sub_1000049E0(&v6);
}

void sub_1012E8A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1000049E0(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012E8AC4(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2A288;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1012E8B20(void *a1)
{
  *a1 = off_101F2A2D8;
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

  return a1;
}

void sub_1012E8B78(void *a1)
{
  *a1 = off_101F2A2D8;
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

  operator delete();
}

uint64_t sub_1012E8C84(uint64_t result, uint64_t a2)
{
  *a2 = off_101F2A2D8;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012E8CEC(void *a1)
{
  sub_1012E7D10(a1 + 8);

  operator delete(a1);
}

void sub_1012E8D28(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[6])
      {
        v5 = a1[5];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v6 = *(v3 + 32);
        if (v6)
        {
          if (std::__shared_weak_count::lock(v6))
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

void sub_1012E8EB4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012E8EC4(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1012E8F10(uint64_t **a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 12);
  v5 = v1[4];
  v6 = (*(**(*v1 + 64) + 16))(*(*v1 + 64), v3);
  v7 = capabilities::ct::signalStrengthDisplayMaxValue(v6);
  if (HIDWORD(v7))
  {
    __assert_rtn("getSignalStrengthInfo_sync", "SignalStrengthController.cpp", 904, "capabilities::ct::signalStrengthDisplayMaxValue() <= std::numeric_limits<uint32_t>::max()");
  }

  v8 = capabilities::ct::signalStrengthDisplayMaxValue(v7);
  if ((v4 & 1) != 0 || (*(v2 + 320) & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *(v2 + 336);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v2 + 336;
  do
  {
    if (*(v10 + 32) >= v3)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < v3));
  }

  while (v10);
  if (v11 != v2 + 336 && *(v11 + 32) <= v3 && (*(v11 + 109) & 1) != 0)
  {
LABEL_12:
    v12 = *v5;
    (*(**(*v5 + 424) + 32))(*(*v5 + 424), v5[2], v1 + 2);
    sub_1012E06AC(v12, v5[2], v1 + 2);
  }

  else
  {
LABEL_13:
    v15 = *(v2 + 232);
    v14 = v2 + 232;
    v13 = v15;
    if (!v15)
    {
      goto LABEL_24;
    }

    v16 = v14;
    do
    {
      if (*(v13 + 28) >= v3)
      {
        v16 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 28) < v3));
    }

    while (v13);
    if (v16 != v14 && *(v16 + 28) <= v3 && *(v16 + 32) == 1)
    {
      v17 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Data-only attached, reporting zero bars", buf, 2u);
      }

      *buf = 0;
      v25 = v9;
      v18 = *v5;
      (*(**(*v5 + 424) + 32))(*(*v5 + 424), v5[2], buf);
      sub_1012E06AC(v18, v5[2], buf);
    }

    else
    {
LABEL_24:
      v19 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Not CS attached, reporting one bar", buf, 2u);
      }

      *buf = 1;
      *&buf[4] = v9 != 0;
      v25 = v9;
      v20 = *v5;
      (*(**(*v5 + 424) + 32))(*(*v5 + 424), v5[2], buf);
      sub_1012E06AC(v20, v5[2], buf);
    }
  }

  sub_1012E7F94(&v23);
  return sub_1000049E0(&v22);
}

void sub_1012E91D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1012E7F94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012E9214(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2A358;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void *sub_1012E9270(void *a1)
{
  *a1 = off_101F2A3A8;
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

  return a1;
}

void sub_1012E92C8(void *a1)
{
  *a1 = off_101F2A3A8;
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

  operator delete();
}

uint64_t sub_1012E93D4(uint64_t result, uint64_t a2)
{
  *a2 = off_101F2A3A8;
  v2 = *(result + 8);
  *(a2 + 24) = *(result + 24);
  *(a2 + 8) = v2;
  v3 = *(result + 40);
  *(a2 + 32) = *(result + 32);
  *(a2 + 40) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v4 = *(result + 56);
  *(a2 + 48) = *(result + 48);
  *(a2 + 56) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void sub_1012E943C(void *a1)
{
  sub_1012E7D10(a1 + 8);

  operator delete(a1);
}

void sub_1012E9478(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    v3 = a1[1];
    v4 = std::__shared_weak_count::lock(v2);
    if (v4)
    {
      if (a1[6])
      {
        v5 = a1[5];
        if (v5)
        {
          atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
        }

        v6 = *(v3 + 32);
        if (v6)
        {
          if (std::__shared_weak_count::lock(v6))
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

void sub_1012E9604(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    sub_10004F058(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_1012E9614(uint64_t a1, uint64_t a2)
{
  if (sub_1000DF210(a2, &off_101F2A408))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t *sub_1012E9660(uint64_t **a1)
{
  v1 = *a1;
  v22 = a1;
  v23 = v1;
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 12);
  v5 = v1[4];
  v6 = (*(**(*v1 + 64) + 16))(*(*v1 + 64), v3);
  v7 = capabilities::ct::signalStrengthDisplayMaxValue(v6);
  if (HIDWORD(v7))
  {
    __assert_rtn("getSignalStrengthInfo_sync", "SignalStrengthController.cpp", 904, "capabilities::ct::signalStrengthDisplayMaxValue() <= std::numeric_limits<uint32_t>::max()");
  }

  v8 = capabilities::ct::signalStrengthDisplayMaxValue(v7);
  if ((v4 & 1) != 0 || (*(v2 + 320) & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = v8;
  v10 = *(v2 + 336);
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v2 + 336;
  do
  {
    if (*(v10 + 32) >= v3)
    {
      v11 = v10;
    }

    v10 = *(v10 + 8 * (*(v10 + 32) < v3));
  }

  while (v10);
  if (v11 != v2 + 336 && *(v11 + 32) <= v3 && (*(v11 + 109) & 1) != 0)
  {
LABEL_12:
    v12 = *v5;
    (*(**(*v5 + 424) + 32))(*(*v5 + 424), v5[2], v1 + 2);
    sub_1012E06AC(v12, v5[2], v1 + 2);
  }

  else
  {
LABEL_13:
    v15 = *(v2 + 232);
    v14 = v2 + 232;
    v13 = v15;
    if (!v15)
    {
      goto LABEL_24;
    }

    v16 = v14;
    do
    {
      if (*(v13 + 28) >= v3)
      {
        v16 = v13;
      }

      v13 = *(v13 + 8 * (*(v13 + 28) < v3));
    }

    while (v13);
    if (v16 != v14 && *(v16 + 28) <= v3 && *(v16 + 32) == 1)
    {
      v17 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#I Data-only attached, reporting zero bars", buf, 2u);
      }

      *buf = 0;
      v25 = v9;
      v18 = *v5;
      (*(**(*v5 + 424) + 32))(*(*v5 + 424), v5[2], buf);
      sub_1012E06AC(v18, v5[2], buf);
    }

    else
    {
LABEL_24:
      v19 = *v6;
      if (os_log_type_enabled(*v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "#I Not CS attached, reporting one bar", buf, 2u);
      }

      *buf = 1;
      *&buf[4] = v9 != 0;
      v25 = v9;
      v20 = *v5;
      (*(**(*v5 + 424) + 32))(*(*v5 + 424), v5[2], buf);
      sub_1012E06AC(v20, v5[2], buf);
    }
  }

  sub_1012E7F94(&v23);
  return sub_1000049E0(&v22);
}

void sub_1012E9928(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1012E7F94(&a10);
  sub_1000049E0(&a9);
  _Unwind_Resume(a1);
}

void sub_1012E9B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = SatMsg_IDSOffGridStateManagerObjC;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void sub_1012E9ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  objc_destroyWeak(va);

  objc_destroyWeak((v7 - 32));
  _Unwind_Resume(a1);
}

void sub_1012E9F14(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = sub_100032AC8(WeakRetained + 2);
    dispatch_assert_queue_V2(v9);

    if (!v6)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v12 = 0x4012000000;
      v13 = sub_1012EA1FC;
      v14 = sub_1012EA20C;
      v15 = &unk_101CF8E15;
      v16 = 0;
      v17 = 0;
      operator new();
    }

    v10 = sub_100032AC8(v8[1]);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v6;
      _os_log_error_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to fetchContactsOfType IDSOffGridContactTypeEmergency, error: %@", &buf, 0xCu);
    }

    *(v8 + 24) = 0;
  }
}

void sub_1012EA190(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, std::__shared_weak_count *a24)
{
  objc_destroyWeak((v28 + 40));

  _Block_object_dispose(&a17, 8);
  if (a24)
  {
    sub_100004A34(a24);
  }

  _Unwind_Resume(a1);
}

__n128 sub_1012EA1FC(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  return result;
}

void sub_1012EA20C(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    sub_100004A34(v1);
  }
}

void sub_1012EA21C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = sub_100032AC8(WeakRetained + 2);
    dispatch_assert_queue_V2(v9);

    v10 = v8[1];
    if (!v6)
    {
      v12 = sub_100032AC8(v10);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "#I IDS contacts initial fetch complete", buf, 2u);
      }

      [v8 addPrimaryContacts:v5 dst:*(*(a1 + 32) + 8) + 48];
      v13 = *(*(a1 + 32) + 8);
      v14 = *buf;
      memset(buf, 0, sizeof(buf));
      v15 = *(v13 + 56);
      *(v13 + 48) = v14;
      if (v15)
      {
        sub_100004A34(v15);
        if (*&buf[8])
        {
          sub_100004A34(*&buf[8]);
        }
      }

      [v8 setContacts:*(*(a1 + 32) + 8) + 48];
      v16 = v8;
      v17 = sub_100032AC8(v8 + 4);
      operator new();
    }

    v11 = sub_100032AC8(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v6;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to fetchContactsOfType IDSOffGridContactTypeFamily, error: %@", buf, 0xCu);
    }

    *(v8 + 24) = 0;
  }
}

void sub_1012EA44C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    sub_10004F058(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012EAD4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  _Unwind_Resume(a1);
}

void sub_1012EB288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_weak(a10);
  }

  sub_100004A34(v10);
  _Unwind_Resume(a1);
}

void sub_1012EB2B0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  sub_1012EB1A0();
}

void sub_1012EB31C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  _Unwind_Resume(exception_object);
}

id sub_1012EB334@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = *(a1 + 8);
  if (result)
  {
    return [result getContacts];
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_1012EB38C(uint64_t a1)
{

  operator delete();
}

id **sub_1012EB3D8(id *a1)
{
  v3 = a1;
  v1 = *a1;
  if ((v1[24] & 1) == 0)
  {
    [v1 doInitManagerAndFetch];
  }

  return sub_1000A51E4(&v3);
}

void sub_1012EB418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_1000A51E4(va);
  _Unwind_Resume(a1);
}

void sub_1012EB42C(id *a1)
{
  v4 = a1;
  v1 = *a1;
  v2 = *a1;
  v3 = sub_100032AC8(v1 + 2);
  operator new();
}

id **sub_1012EB4F0(id *a1)
{
  v2 = a1;
  *(*a1 + 24) = 0;
  return sub_1000A51E4(&v2);
}

uint64_t *sub_1012EB520(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      sub_100004A34(v2);
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1012EB57C(void *a1)
{
  v14 = a1;
  v2 = *a1;
  v3 = *(*a1 + 72);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
    v2 = *a1;
  }

  v5 = a1[1];
  v4 = a1[2];
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(v2 + 72);
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;
  if (v6)
  {
    sub_100004A34(v6);
  }

  v7 = *a1;
  v8 = *(*a1 + 48);
  if (v8)
  {
    v9 = std::__shared_weak_count::lock(v8);
    if (v9)
    {
      v10 = v9;
      v11 = *(v7 + 40);
      if (v11)
      {
        v12 = a1[2];
        v15 = a1[1];
        v16 = v12;
        if (v12)
        {
          atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        (*(*v11 + 8))(v11, &v15);
        if (v16)
        {
          sub_100004A34(v16);
        }
      }

      sub_100004A34(v10);
    }
  }

  if (v3)
  {
    sub_100004A34(v3);
  }

  return sub_1012EB520(&v14);
}

void sub_1012EB678(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100004A34(a12);
  }

  sub_100004A34(v13);
  if (v12)
  {
    sub_100004A34(v12);
  }

  sub_1012EB520(&a10);
  _Unwind_Resume(a1);
}

id **sub_1012EB6AC(id *a1)
{
  v6 = a1;
  [*a1 doInitManagerIfRequired];
  v2 = [*a1 fManager];

  if (v2)
  {
    v3 = *a1;
    v4 = [*a1 fManager];
    [v3 updateOffGridMode:{objc_msgSend(v4, "offGridMode")}];
  }

  return sub_1000A51E4(&v6);
}

void sub_1012EB728(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);

  sub_1000A51E4(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012EB748(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      std::__shared_weak_count::__release_weak(v2);
    }

    objc_destroyWeak(v1);
    operator delete();
  }

  return result;
}

uint64_t *sub_1012EB7A4(uint64_t a1)
{
  v14 = a1;
  WeakRetained = objc_loadWeakRetained(a1);
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = sub_100032AC8(*(WeakRetained + 1));
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 24);
      if (v5 > 2)
      {
        v6 = "???";
      }

      else
      {
        v6 = off_101F2A560[v5];
      }

      *buf = 136315138;
      v16 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "#I updateOffGridMode to %s", buf, 0xCu);
    }

    v7 = *(a1 + 24);
    if (v7 == 2)
    {
      v8 = 257;
    }

    else
    {
      v8 = 256;
    }

    v3[28] = v8;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = std::__shared_weak_count::lock(v9);
      if (v10)
      {
        v11 = v10;
        v12 = *(a1 + 8);
        if (v12)
        {
          (**v12)(v12, v7 == 2);
        }

        sub_100004A34(v11);
      }
    }
  }

  return sub_1012EB748(&v14);
}

void sub_1012EB8F8(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_100004A34(v3);

  sub_1012EB748(va);
  _Unwind_Resume(a1);
}

uint64_t *sub_1012EB928(uint64_t *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    if (*(v1 + 39) < 0)
    {
      operator delete(*(v1 + 16));
    }

    operator delete();
  }

  return result;
}

uint64_t *sub_1012EB988(uint64_t a1)
{
  [*a1 doInitManagerIfRequired];
  objc_initWeak(&location, *a1);
  v2 = objc_opt_new();
  v3 = (a1 + 16);
  v4 = a1 + 16;
  if (*(a1 + 39) < 0)
  {
    v4 = *v3;
  }

  v5 = [NSString stringWithUTF8String:v4];
  [v2 setEntryPointSource:v5];

  v6 = [*a1 fManager];
  v7 = *(a1 + 8);
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3321888768;
  v11[2] = sub_1012EBB5C;
  v11[3] = &unk_101F2A4E0;
  objc_copyWeak(&v12, &location);
  if (*(a1 + 39) < 0)
  {
    sub_100005F2C(&__p, *(a1 + 16), *(a1 + 24));
  }

  else
  {
    __p = *v3;
    v14 = *(a1 + 32);
  }

  if (v7)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  [v6 setOffGridMode:v8 options:v2 completion:v11];

  if (SHIBYTE(v14) < 0)
  {
    operator delete(__p);
  }

  objc_destroyWeak(&v12);

  objc_destroyWeak(&location);
  return sub_1012EB928(&v10);
}

void sub_1012EBAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  objc_destroyWeak((v22 + 32));

  objc_destroyWeak((v23 - 56));
  sub_1012EB928(&a9);
  _Unwind_Resume(a1);
}

void sub_1012EBB5C(uint64_t a1, unint64_t a2, unint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = WeakRetained[1];
    if (v7)
    {
      v11 = sub_100032AC8(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = (a1 + 40);
        if (*(a1 + 63) < 0)
        {
          v12 = *v12;
        }

        v16 = 136315394;
        v17 = v12;
        v18 = 2112;
        v19 = v7;
        _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to setOffGridMode for %s, error: %@", &v16, 0x16u);
      }
    }

    else
    {
      v11 = sub_100032AC8(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v13 = (a1 + 40);
        if (*(a1 + 63) < 0)
        {
          v13 = *v13;
        }

        if (a2 > 2)
        {
          v14 = "???";
        }

        else
        {
          v14 = off_101F2A560[a2];
        }

        if (a3 > 2)
        {
          v15 = "???";
        }

        else
        {
          v15 = off_101F2A578[a3];
        }

        v16 = 136315650;
        v17 = v13;
        v18 = 2080;
        v19 = v14;
        v20 = 2080;
        v21 = v15;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "#I setOffGridMode for %s returned: mode = %s, publishStatus = %s", &v16, 0x20u);
      }
    }
  }
}

char *sub_1012EBD30(char *result, uint64_t a2)
{
  if (*(a2 + 63) < 0)
  {
    return sub_100005F2C(result + 40, *(a2 + 40), *(a2 + 48));
  }

  v2 = *(a2 + 40);
  *(result + 7) = *(a2 + 56);
  *(result + 40) = v2;
  return result;
}

void sub_1012EBD80(std::__shared_weak_count *a1)
{
  a1->__vftable = off_101F2A520;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_1012EBDFC(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  operator new();
}

void sub_1012EC024(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12)
{
  if (a12)
  {
    (*(*a12 + 8))(a12);
  }

  if (a11)
  {
    sub_100004A34(a11);
  }

  sub_100004A34(v12);
  _Unwind_Resume(a1);
}

void sub_1012EC100(void *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X2>, void *a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  v8 = (*(*a1 + 144))(a1);
  sub_10064C264(v8, &v24);
  if (v24)
  {
    v21 = v24;
    v22 = v25;
    v23 = 0;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10064CE74(&v21, a2, a3, &v23) >> 32;
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v9)
    {
      v12 = a1[1];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v26 = 0uLL;
        v27 = 0;
        ctu::cf::assign();
        v20 = v27;
        *v19 = v26;
        v13 = SHIBYTE(v27);
        v14 = v26;
        v26 = 0uLL;
        v27 = 0;
        ctu::cf::assign();
        v15 = v19;
        if (v13 < 0)
        {
          v15 = v14;
        }

        *__p = v26;
        v18 = v27;
        v16 = __p;
        if (v27 < 0)
        {
          v16 = v26;
        }

        *buf = 136315650;
        v29 = v15;
        v30 = 2080;
        v31 = v16;
        v32 = 1024;
        v33 = v9;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not read %s from %s using mobile helper. Error: %d", buf, 0x1Cu);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = v23;
    }

    *a4 = v10;
  }

  else
  {
    v11 = a1[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }

    *a4 = 0;
  }

  if (v25)
  {
    sub_100004A34(v25);
  }
}

void sub_1012EC348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1012EC3AC(void *a1, const __CFString *a2, const __CFString *a3, const void *a4)
{
  v24 = 0;
  v25 = 0;
  v8 = (*(*a1 + 144))(a1);
  sub_10064C264(v8, &v24);
  if (v24)
  {
    v22 = v24;
    v23 = v25;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10064C564(&v22, a2, a3, a4) >> 32;
    if (v23)
    {
      sub_100004A34(v23);
    }

    if (!v9)
    {
      v10 = 1;
      goto LABEL_12;
    }

    v12 = a1[1];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v26 = 0uLL;
      v27 = 0;
      ctu::cf::assign();
      v21 = v27;
      *v20 = v26;
      v14 = SHIBYTE(v27);
      v15 = v26;
      v26 = 0uLL;
      v27 = 0;
      ctu::cf::assign();
      v16 = v20;
      if (v14 < 0)
      {
        v16 = v15;
      }

      *__p = v26;
      v19 = v27;
      v17 = __p;
      if (v27 < 0)
      {
        v17 = v26;
      }

      *buf = 136315650;
      v29 = v16;
      v30 = 2080;
      v31 = v17;
      v32 = 1024;
      v33 = v9;
      _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not set %s in %s using mobile helper %d", buf, 0x1Cu);
      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v21) < 0)
      {
        operator delete(v20[0]);
      }
    }
  }

  else
  {
    v11 = a1[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }
  }

  v10 = 0;
LABEL_12:
  if (v25)
  {
    sub_100004A34(v25);
  }

  return v10;
}

void sub_1012EC5E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, std::__shared_weak_count *a19, void *__p, uint64_t a21, int a22, __int16 a23, char a24, char a25)
{
  if (a25 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (a19)
  {
    sub_100004A34(a19);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012EC648(void *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X2>, void *a4@<X8>)
{
  v24 = 0;
  v25 = 0;
  v8 = (*(*a1 + 144))(a1);
  sub_10064C264(v8, &v24);
  if (v24)
  {
    v21 = v24;
    v22 = v25;
    v23 = 0;
    if (v25)
    {
      atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = sub_10064D454(&v21, a2, a3, &v23) >> 32;
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v9)
    {
      v12 = a1[1];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v26 = 0uLL;
        v27 = 0;
        ctu::cf::assign();
        v20 = v27;
        *v19 = v26;
        v13 = SHIBYTE(v27);
        v14 = v26;
        v26 = 0uLL;
        v27 = 0;
        ctu::cf::assign();
        v15 = v19;
        if (v13 < 0)
        {
          v15 = v14;
        }

        *__p = v26;
        v18 = v27;
        v16 = __p;
        if (v27 < 0)
        {
          v16 = v26;
        }

        *buf = 136315650;
        v29 = v15;
        v30 = 2080;
        v31 = v16;
        v32 = 1024;
        v33 = v9;
        _os_log_error_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Could not read %s from app %s using mobile helper. Error: %d", buf, 0x1Cu);
        if (SHIBYTE(v18) < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v20) < 0)
        {
          operator delete(v19[0]);
        }
      }

      v10 = 0;
    }

    else
    {
      v10 = v23;
    }

    *a4 = v10;
  }

  else
  {
    v11 = a1[1];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "cannot create client", buf, 2u);
    }

    *a4 = 0;
  }

  if (v25)
  {
    sub_100004A34(v25);
  }
}

void sub_1012EC890(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, std::__shared_weak_count *a21, void *__p, uint64_t a23, int a24, __int16 a25, char a26, char a27)
{
  if (a27 < 0)
  {
    operator delete(__p);
  }

  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (a21)
  {
    sub_100004A34(a21);
  }

  _Unwind_Resume(exception_object);
}

void sub_1012EC8F4(void *a1@<X0>, uint64_t a2@<X1>, CFTypeRef *a3@<X8>)
{
  v23 = 0;
  v24 = 0;
  v6 = (*(*a1 + 144))(a1);
  sub_10064C264(v6, &v23);
  v7 = v23;
  if (v23)
  {
    *a3 = 0;
    v21 = v7;
    v22 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    *&buf = 0;
    *(&buf + 1) = a3;
    v8 = sub_10064F9F8(&v21, a2, &buf);
    v9 = v8;
    v10 = HIDWORD(v8);
    sub_1012EEB58(&buf);
    if (v22)
    {
      sub_100004A34(v22);
    }

    if (v10)
    {
      v15 = a1[1];
      if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      LODWORD(buf) = 67109376;
      DWORD1(buf) = v9;
      WORD4(buf) = 1024;
      *(&buf + 10) = v10;
      v16 = "Could not load plist as dictionary through mobile helper: domain=%d error=%d";
      v17 = v15;
      v18 = 14;
    }

    else if (*a3)
    {
      v11 = CFGetTypeID(*a3);
      TypeID = CFDictionaryGetTypeID();
      v13 = a1[1];
      if (v11 == TypeID)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "#I Loaded preference file through mobile helper successfully", &buf, 2u);
        }

        goto LABEL_21;
      }

      if (!os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      v20 = CFGetTypeID(*a3);
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v20;
      v16 = "Loaded plist through mobile helper, but it wasn't a dictionary: %lu";
      v17 = v13;
      v18 = 12;
    }

    else
    {
      v19 = a1[1];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_21;
      }

      LOWORD(buf) = 0;
      v16 = "Loaded plist as dictionary through mobile helper, but the result was not set";
      v17 = v19;
      v18 = 2;
    }

    _os_log_error_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, v16, &buf, v18);
    goto LABEL_21;
  }

  v14 = a1[1];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "cannot create client", &buf, 2u);
  }

  *a3 = 0;
LABEL_21:
  if (v24)
  {
    sub_100004A34(v24);
  }
}